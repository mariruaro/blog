@extends('adminlte::page')

@section('title', 'Detalhes')

@section('content_header')
    <div class="back-row">
    	<a href="javascript:history.back()">
    		<span>&#8678;</span>
    	</a>
    	<h1>Detalhes</h1>
    </div>
@stop

@section('content')
    <div id="details" class="row">
		<div class="col-md-8 centered">
			<h2>{{$post->titulo}}</h2>
			<div class="info">
				<i class="fa  fa-user "></i>
				<span>{{$post->nome_usuario}}</span>
				<i class="fa fa-calendar-o"></i>
				<span>{{$post->data}}</span>
			</div>
			<div class="">
				<img src="http://fncit.com.br/blog/wp-content/uploads/2017/10/banner-post-blog.jpg" alt="Banner" >
			</div>
			<p>
				{!!$post->conteudo!!}
			<p>

			<div class="row">
				<a class="btn btn-app">
	            	<i class="fa fa-save" title="nome do arquivo"></i> 
	            	<span>Salvar</span>
	          	</a>
          	</div>
    	</div>
	</div>


 
@stop

