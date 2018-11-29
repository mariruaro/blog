<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DetailsController extends Controller
{
      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
    	
    	$post = DB::table('post')->where('id', $id)->get()[0];
        $arquivo = DB::table('arquivos')->where('id_post', $post->id)->get();
    	
        return view('pages/details', compact('post'), ['arquivo' => $arquivo] );
    }
}
