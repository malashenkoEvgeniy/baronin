<?php

namespace App\Http\Controllers\Admin;

use App\Models\DesignImage;
use App\Models\Page;
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
        $req = request()->only('url', 'page_id');

        $file = $this->storeFile(request()->file('url'), $this->storePath);
        $req['url'] = $file['path'];

        $img = DesignImage::create($req);

        return redirect()->back()->with('success', 'Запись успешно обновлена');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $page = Page::find($id)->images()->get();

        return view('admin.photo.show' , compact('page', 'id'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //dd($id);


        $image = DesignImage::find($id);

        $this -> deleteFile($image->url);
        $image->delete();
        return redirect(route('photo.index'))->with('success', 'Запись успешно удалена');
    }
}
