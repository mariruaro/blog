@extends('adminlte::page')

@section('title', 'Home')

@section('content_header')
    <h1>BLOG</h1>
@stop

@section('content')
    <div id="home" class="row ">
    	<div class="form-group pull-right">
    		<label>Filtro Data</label>
           	<form id="search-date" name="search-date" autocomplete="off" action="/search/date" method="get" enctype="multipart/form-data"> 
	            <label>Data Inicial:</label>
	            <div class="input-group ">
	              	<input type="date" class="form-control" name="initial">
	            </div>
	            <label>Data Final:</label>
	            <div class="input-group date">
	              	<input type="date" class="form-control" name="final">
	            </div>
	            <button type="submit" class="btn btn-purple pull-right filter-btn">Filtrar</button>
            </form>
      	</div>
    	@foreach ($posts as $post)
	    	<div class="col-md-8 centered post">
				<a href="{{ url('/details', [$post->id]) }}">
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
					{!!$post->conteudo!!}
				<p>
				<a type="button" class="btn btn-more" href="{{ url('/details', [$post->id]) }}">Leia Mais</a>
	    	</div>
    	@endforeach 
    	<div class="row text-center">
    		<?php echo $posts->render(); ?> 
		</div>  
    </div>
    
@stop
