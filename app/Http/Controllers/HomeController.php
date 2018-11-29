<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = DB::table('post')->orderBy('data', 'desc')->paginate(5);
        $header = DB::table('arquivos')->where('favorite', true)->get();

        return view('home', ['posts' => $posts], ['header' => $header]);
    }

    
}
