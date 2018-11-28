<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
    	$inputs = $request->all();
    	$filter =  $inputs['text'];
    	$posts = DB::table('post')->where('titulo','LIKE','%'.$filter."%")->orWhere('conteudo','LIKE','%'.$filter."%")->get();
    	
        return view('pages/search', compact('posts', 'filter'));
    }
}
