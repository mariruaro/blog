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
    	$posts = DB::table('post')->where('titulo','LIKE','%'.$filter."%")->orWhere('conteudo','LIKE','%'.$filter."%")->orderBy('data', 'desc')->get();
    	
        return view('pages/search', compact('posts', 'filter'));
    }

 	public function date(Request $request)
    {
    	$inputs = $request->all();
    	$from =  $inputs['initial'];
    	$to =  $inputs['final'];
    	$posts = DB::table('post')->whereBetween('data', [$from, $to])->orderBy('data', 'desc')->get();
    	$filter =  $from .' - '. $to;
        return view('pages/search', compact('posts', 'filter'));
    }
}
