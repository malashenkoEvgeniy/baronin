<?php

namespace App\Http\Controllers\Admin;

use App\Models\ProjectImage;
use Illuminate\Http\Request;

class ProjectImageController extends BaseController
{
    protected $storePath = '/uploads/projects/';
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('admin.project_images.create', ['project_id' => $request->id]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $req = request()->only('images', 'project_id');

        if (request()->file('images') !== null) {
            foreach (request()->file('images') as $item) {
                $file = $this->storeFile($item, $this->storePath);
                ProjectImage::create(['image' => $file['path'], 'project_id' => $req['project_id']]);
            }
        }

        return redirect()->route('projects.edit', $req['project_id'])->with('success', 'Изображения успешно созданы');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $image = ProjectImage::find($id);
        $this->deleteFile($image->image);
        $image->delete();
        return redirect()->route('projects.edit', $image->project_id)->with('success', 'Изображение успешно удалено');
    }
}
