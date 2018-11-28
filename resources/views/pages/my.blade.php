@extends('adminlte::page')

@section('title', 'Meus Posts')

@section('content_header')
    <h1>Meus Posts</h1>
@stop

@section('content')
    <div id="my" class="row">
    	@foreach ($posts as $post)
	    	<div class="col-md-8 centered post">
				<a>
					<h2>{{$post->titulo}}</h2>
				</a>
				<div class="info">
					<i class="fa  fa-user "></i>
					<span>{{$post->nome_usuario}}</span>
					<i class="fa fa-calendar-o"></i>
					<span>{{$post->data}}</span>
				</div>
				<img src="http://fncit.com.br/blog/wp-content/uploads/2017/10/banner-post-blog.jpg" alt="Banner" >
				<p>
					{{$post->conteudo}}
				<p>
				<a type="button" class="btn btn-more">Leia Mais</a>
	    	</div>
    	@endforeach  

	</div>


 
@stop

