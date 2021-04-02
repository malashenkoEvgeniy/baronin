<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Portfolio;
use App\Models\Project;
use App\Models\ProjectImage;

class PortfolioController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page = Portfolio::first();

        $projects = $page->project()->orderBy('position')->paginate(8);

        $seo = (object) [
            'title' => $page->translate()->seo_title,
            'description' => $page->translate()->seo_description,
            'keywords' => $page->translate()->seo_keywords,
        ];

        $breadcrumbs = (object) [
            'current' => strip_tags($page->translate()->title),
            'parent' => null,
        ];

        return view('frontend.projects', compact('page', 'seo', 'breadcrumbs', 'projects'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($url)
    {
        $page = Project::where('url', $url)->first();

        if ($page === null) {
            abort(404);
        }

        $images = ProjectImage::where('project_id', $page->id)
            ->orderBy('order_by', 'asc')
            ->get();

        $seo = (object) [
            'title' => $page->translate()->seo_title,
            'description' => $page->translate()->seo_description,
            'keywords' => $page->translate()->seo_keywords,
        ];

        $portfolio = $page->portfolio()->first();
        $portfolio->url = 'projects';
        $breadcrumbs = (object) [
            'current' => strip_tags($page->translate()->title),
            'parent' => [$portfolio],
        ];

        $previous = Project::where('position', '<', $page->position)->get()->last();
        $next = Project::where('position', '>', $page->position)->first();

        return view('frontend.project', compact('page', 'images', 'seo', 'breadcrumbs', 'next', 'previous'));
    }
}
