<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

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
        var_dump("Funcionou");
        console.log("ENTROU");
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
        else 
        {
            echo '<div class="alert alert-warning"><strong>Warning!</strong> Sorry Only Upload png , jpg , doc</div>'; 
            return response()->json(false, 200);
        }

        $post = new Post;
        $post->titulo = $request->titulo;
        $post->conteudo = $request->conteudo;
        $post->data = null;
        $psot->data_alteracao = null;
        $post->id_usuario = null;

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
