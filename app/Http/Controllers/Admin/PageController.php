<?php

namespace App\Http\Controllers\Admin;

use App\Models\DesignImage;
use App\Models\Page;
use Illuminate\Http\Request;

class PageController extends BaseController
{

    protected $storePath = '/uploads/pages/';
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

        $pages = $this->getMenu();
        return view('admin.pages.index', compact('pages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
//        $pages = $this->getMenu();
        $pages = Page::all();

        return view('admin.pages.create', compact('pages'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $req = request()->only('url', 'banner', 'image', 'sort_order', 'on_main_page', 'parent_id');
        $reqTranslation = request()->except('url', 'banner', 'image', 'sort_order', 'on_main_page', 'parent_id');

        if (isset($req['on_main_page']) && $req['on_main_page'] === 'on') {
            $req['on_main_page'] = true;
        } else {
            $req['on_main_page'] = false;
        }

        if (request()->file('banner') !== null) {
            $file = $this->storeFile(request()->file('banner'), $this->storePath);
            $req['banner'] = $file['path'];
        }

        if (request()->file('image') !== null) {
            $file = $this->storeFile(request()->file('image'), $this->storePath);
            $req['image'] = $file['path'];
        }

        $page = $this->storeWithTranslation(new Page, $req, $reqTranslation);

        return redirect()->route('pages.index')->with('success', 'Запись успешно создана');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page = Page::find($id);
        $pages = Page::all();

        $prices = null;
        if ($page->id == 6) {
            $prices = $page->price()->get();
        }
        $photo = DesignImage::where('page_id', $page->id)
        ->orderBy('order_by', 'asc')
        ->get();
        return view('admin.pages.edit', compact('pages', 'page', 'prices', 'photo'));
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
        //dd($request);
        $page = Page::find($id);
        $req = request()->only('url', 'banner', 'image', 'sort_order', 'on_main_page', 'parent_id');
        $reqTranslation = request()->except('url', 'banner', 'image', 'sort_order', 'on_main_page', 'parent_id');

        if (isset($req['on_main_page']) && $req['on_main_page'] === 'on') {
            $req['on_main_page'] = true;
        } else {
            $req['on_main_page'] = false;
        }

        if (request()->file('banner') !== null) {
            $this->deleteFile($page->banner);
            $file = $this->storeFile(request()->file('banner'), $this->storePath);
            $req['banner'] = $file['path'];
        }

        if (request()->file('image') !== null) {
            $this->deleteFile($page->image);
            $file = $this->storeFile(request()->file('image'), $this->storePath);
            $req['image'] = $file['path'];
        }

        $page->update($req);

        $page = $this->updateTranslation($page, $reqTranslation, $request);

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
        $page = Page::find($id);
        $subPages = $page->children()->get();
        foreach ($subPages as $child) {
            $child->parent_id = null;
            $child->save();
        }
        $this->deleteFile($page->banner);
        $this->deleteFile($page->image);
        $page->delete();
        return redirect()->route('pages.index')->with('success', 'Запись успешно удалена');
    }
}
