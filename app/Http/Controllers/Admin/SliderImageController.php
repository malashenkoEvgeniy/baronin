<?php

namespace App\Http\Controllers\Admin;

use App\Models\SliderImage;
use Illuminate\Http\Request;

class SliderImageController extends BaseController
{
    protected $storePath = '/uploads/slider/';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $images = SliderImage::where(['is_video'=>0])->get();
        $videos = SliderImage::where(['is_video'=>1])->get();

        return view('admin.slider_images.index', compact('images', 'videos') );

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.slider_images.create' );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $req = request()->only('url');

        if (request()->file('url')->extension() == 'mp4'){
            $req['is_video'] = 1;
        }else{
            $req['is_video'] = 0;
        }

        $file = $this->storeFile(request()->file('url'), $this->storePath);
        $req['url'] = $file['path'];

        $img = SliderImage::create($req);

        return redirect(route('slider_images.index'))->with('success', 'Запись успешно удалена');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $image = SliderImage::destroy($id);
        return redirect(route('slider_images.index'))->with('success', 'Запись успешно удалена');
    }
}
