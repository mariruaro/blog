<?php

namespace App\Http\Controllers;

use App\Post;
use App\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages/post');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $inputs = $request->all();
        
        if ($request->hasFile('documents')) 
        { 
            $files = $request->file('documents'); 
 
            foreach ($files as $file) {
 
                /*$filename = $file->getClientOriginalName(); 
 
                $extension = $file->getClientOriginalExtension(); 

                $filename = $file->store('documents');*/

                $tmpFilePath = '/uploads/users/';
                $tmpFileName = $file->getClientOriginalName();
                $file = $file->move(public_path() . $tmpFilePath, $tmpFileName);
                $path = $tmpFilePath . $tmpFileName;
                return response()->json(array('path'=> $path, 'file_name'=>$tmpFileName), 200);
                echo "Upload Successfully"; 
            }
        }
        
        $id = Auth::user()->id;
        $name = Auth::user()->name;
        $post = new Post;
        $post->titulo =  $inputs['titulo'];
        $post->conteudo = $inputs['conteudo'];
        
        $post->nome_usuario = $name;
        $post->id_usuario = $id;

        $post->save();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}
