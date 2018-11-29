<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class MyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$id = Auth::user()->id;
    	$posts = DB::table('post')->where('id_usuario', $id)->orderBy('data', 'desc')->paginate(5);
        $header = DB::table('arquivos')->where('favorite', true)->get();

        return view('pages/my', ['posts' => $posts], ['header' => $header]);
   
    }
}
