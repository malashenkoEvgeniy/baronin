<?php

namespace App\Http\Controllers\Admin;

use App\Models\DesignImage;
use App\Models\Page;
use App\Models\Project;
use App\Models\ProjectImage;
use App\Models\SliderImage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PhotoController extends BaseController
{
    protected $storePath = '/uploads/image/';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return 'hg';
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $id = request()->id;
         return view('admin.photo.create' , compact('id'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $req = request()->only('url', 'page_id', 'order_by');
        foreach (request()->file('url') as $item) {
            $file = $this->storeFileForResize($item, $this->storePath);
            $r=count(DesignImage::where('page_id',$req['page_id'])->get());
            DesignImage::create(['url' => $file['path'], 'page_id' => $req['page_id'], 'order_by'=>$r+1]);
        }

        return redirect()->route('pages.edit', ['id'=>$req['page_id']])->with('success', 'Запись успешно обновлена');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $page = DesignImage::where('page_id', $id)
            ->orderBy('order_by', 'asc')
            ->get();

        return view('admin.photo.show' , compact('page', 'id'));
    }

    public function up($id)
    {

        $img = DesignImage::find($id);
        $img->order_by --;
        $img->update();
        return redirect()->route('photo.show', $img->page_id);
    }


    public function updatePhoto()
    {

        $req =  request()->except('_method', '_token');
        foreach($req as $k=>$v){

            $i = explode('-', $k)[1];
            $img = Project::where('id',$i)->first();
            $img->order_by = $v;
            $img->save();
        }

        return redirect()->back()->with('success', 'Запись успешно обновлена');
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $image = DesignImage::find($id);

        $this -> deleteFile($image->url);
        $copyImage = ProjectImage::where('image', $image->url)->get();
        foreach ($copyImage as $item){
            $item->delete();
        }
        $image->delete();
        return redirect()->back()->with('success', 'Запись успешно обновлена');
    }
}
