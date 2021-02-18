<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Contact;
use App\Models\DesignImage;
use App\Models\MainPage;
use App\Models\Page;
use App\Models\Portfolio;
use App\Models\Price;
use App\Models\SliderImage;
use App\Models\TablePrice;
use App\Models\TableServices;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;

class PageController extends BaseController
{
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
        $page = MainPage::first();

        $seo = (object) [
            'title' => $page->translate()->seo_title,
            'description' => $page->translate()->seo_description,
            'keywords' => $page->translate()->seo_keywords,
        ];

        $catalogPages = Page::onMainPage()->paginate(4);
        $slider = SliderImage::orderby('is_video', 'desc')->get();

        return view('frontend.home', compact('page', 'seo', 'catalogPages', 'slider' ));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($url)
    {
        $page = Page::where('url', $url)->first();
        $page->images = $page->images()->get();
        $page->childrens= $page->children()->get();


        if ($page === null) {
            abort(404);
        }

        $seo = (object) [
            'title' => $page->translate()->seo_title,
            'description' => $page->translate()->seo_description,
            'keywords' => $page->translate()->seo_keywords,
        ];

        $breadcrumbs = (object) [
            'current' => strip_tags($page->translate()->title),
            'parent' => $this->findParents($page),
        ];
        if ($page->id == 7) {
            $links = $page->children()->get();

            $catalogPages = DB::table('design_images')->where(['page_id'=>$page->id])->paginate(6);
            return view('frontend.page', compact('page', 'seo', 'breadcrumbs', 'links', 'catalogPages'));
        }


        if ($page->id == 3 or $page->parent_id == 3) {
            $links = $page->where(['parent_id'=>3])->get();
            $images = DB::table('design_images')->where(['page_id'=>$page->id])->paginate(6);


            return view('frontend.page', compact('page', 'seo', 'breadcrumbs', 'links', 'images'));
        }

        if ($page->id == 1) {
            $links = $page->where(['parent_id'=>7])->get();

            $portfolio = Portfolio::all();
            return view('frontend.page', compact('page', 'seo', 'breadcrumbs', 'links', 'portfolio'));
        }



        return view('frontend.page', compact('page', 'seo', 'breadcrumbs'));
    }

    public function contacts()
    {
        $page = Contact::first();
        $seo = (object) [
            'title' => $page->translate()->seo_title,
            'description' => $page->translate()->seo_description,
            'keywords' => $page->translate()->seo_keywords,
        ];

        $breadcrumbs = (object) [
            'current' => strip_tags($page->translate()->title),
            'parent' => null,
        ];
        return view('frontend.contacts', compact('page', 'seo', 'breadcrumbs'));
    }

    public function price()
    {

        $page = Page::find(6);
        $seo = (object) [
            'title' => $page->translate()->seo_title,
            'description' => $page->translate()->seo_description,
            'keywords' => $page->translate()->seo_keywords,
        ];

        $breadcrumbs = (object) [
            'current' => strip_tags($page->translate()->title),
            'parent' => null,
        ];

        $prices = $page->price()->get();
        $services = TableServices::orderBy('order_by')->get();

        foreach ($services as $service){
            $service->prices = $service->prices()->get();
        }

        return view('frontend.price', compact('page', 'seo', 'breadcrumbs', 'prices', 'services'));
    }

    public function findParents($page)
    {
        $parents = collect([]);

        $parent = $page->parent()->first();

        while ($parent !== null) {
            $parents->push($parent);
            $parent = $parent->parent()->first();
        }

        return $parents;
    }

}
