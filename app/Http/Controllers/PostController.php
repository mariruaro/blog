<?php

namespace App\Http\Controllers;

use App\Post;
use App\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\UploadedFile;


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
        $tempFiles = $inputs['arquivo'];
        
        $id = Auth::user()->id;
        $name = Auth::user()->name;
        $post = new Post;
        $post->titulo =  $inputs['titulo'];
        $post->conteudo = $inputs['conteudo'];
        
        $post->nome_usuario = $name;
        $post->id_usuario = $id;

        $post->save();

        $id = $post->id;

        if ($request->hasFile('favorite')) {
            $validation = $request->validate([
                'favorite' => 'required|image|max:2048',
                // for multiple file uploads
                // 'photo.*' => 'required|file|image|mimes:jpeg,png,gif,webp|max:2048'
            ]);
            $file      = $validation['favorite']; // get the validated file
            $extension = $file->getClientOriginalExtension();
            $name = $file->getClientOriginalName();
            $filename  = time() . $name;
            $size = $file->getClientSize();
            $path = $file->storeAs('photos', $filename);
            
            $img = new File;
            $img->arquivo =  $path;
            $img->nm_arquivo =  $filename;
            $img->tipo =  $extension;
            $img->tamanho =  $size;
            $img->id_post =  $id;
            $img->favorite = true;
            $img->save();
        }



        if ($request->hasFile('arquivo')) {

            foreach ($tempFiles as $file) {
            
           
                $extension = $file->getClientOriginalExtension();
                $name = $file->getClientOriginalName();
                $filename  = time() . $name;
                $size = $file->getClientSize();
                $path = $file->storeAs('photos', $filename);
                
                $img = new File;
                $img->arquivo =  $path;
                $img->nm_arquivo =  $filename;
                $img->tipo =  $extension;
                $img->tamanho =  $size;
                $img->id_post =  $id;
                $img->save();

            }

        }

        return response()->json([
            "status" => "200",
            "success" => true,
            "redirect" => true,
            'title' => 'Sucesso!',
            "message" => 'Post Inluído'
        ]);
       
        
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
