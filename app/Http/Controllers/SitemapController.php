<?php

namespace App\Http\Controllers;


use App\Models\Page;
use App\Models\Project;
use Illuminate\Http\Request;

class SitemapController extends Controller
{
    public function index(Request $r)
    {

        $posts = Project::orderBy('id','desc')->get();
        $pages = Page::orderBy('id','desc')->get();

        return response()->view('sitemap', compact('posts', 'pages'))
            ->header('Content-Type', 'text/xml');

    }
}
