<?php

namespace App\Http\Controllers; 

use Illuminate\Http\Request; 

class HomeController extends Controller {
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
    public function index(Request $request) 
    {
        if ($request->hasFile('documents')) 
        { 
            $files = $request->file('documents'); 
 
            foreach ($files as $file) {
 
                $filename = $file->getClientOriginalName(); 
 
                $extension = $file->getClientOriginalExtension(); 

                $filename = $photo->store('documents');

                echo "Upload Successfully"; 
            }
        }
        else 
        {
            echo '<div class="alert alert-warning"><strong>Warning!</strong> Sorry Only Upload png , jpg , doc</div>'; 
        }
    }
}