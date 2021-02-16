<?php

namespace App\Http\Controllers;

use App\Models\FormRequest;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $newRequests = FormRequest::new ()->orderBy('created_at')->count();
        return view('admin.home', compact('newRequests'));
    }
}
