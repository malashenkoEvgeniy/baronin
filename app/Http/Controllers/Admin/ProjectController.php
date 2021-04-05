<?php

namespace App\Http\Controllers\Admin;

use App\Models\Page;
use App\Models\Portfolio;
use App\Models\Project;
use App\Models\ProjectImage;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;

class ProjectController extends BaseController
{
    protected $storePath = '/uploads/projects/';
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects = Project::orderBy('id','desc')->get();
        return view('admin.projects.index', compact('projects'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.projects.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $page = Portfolio::first();

        $req = request()->only('portfolio_id', 'image', 'url', 'position');
        $reqTranslation = request()->except('portfolio_id', 'image', 'url', 'position');
        $req['portfolio_id'] = $page->id;
        if (request()->file('image') !== null) {
            $file = $this->storeFileForResize(request()->file('image'), $this->storePath);
           $req['image'] = $file['path'];
        }

        $page = $this->storeWithTranslation(new Project, $req, $reqTranslation);

        return redirect()->route('projects.index')->with('success', 'Запись успешно создана');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $project = Project::find($id);
        $project->images = ProjectImage::where('project_id', $id)
            ->orderBy('order_by', 'asc')
            ->get();
        $services = Page::where('parent_id', '!=', null)->get();


        return view('admin.projects.edit', compact('project', 'services'));
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $project = Project::find($id);
        $req = request()->only('portfolio_id', 'image', 'url', 'position');
        $reqTranslation = request()->except('portfolio_id', 'image', 'url', 'position');

        if (request()->file('image') !== null) {
            $this->deleteFile($project->image);
            $file = $this->storeFile(request()->file('image'), $this->storePath);
            $req['image'] = $file['path'];
        }

        $project->update($req);

        $project = $this->updateTranslation($project, $reqTranslation, $request);

        return redirect()->back()->with('success', 'Запись успешно обновлена');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $page = Project::find($id);
        $this->deleteFile($page->image);
        $images = ProjectImage::where('project_id', $page->id)->get();
        foreach ($images as $item) {
            $this->deleteFile($item->image);
        }
        ProjectImage::destroy($images->pluck('id'));
        $page->delete();
        return redirect()->route('projects.index')->with('success', 'Запись успешно удалена');
    }
}
