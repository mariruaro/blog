@extends('adminlte::page')

@section('title', 'Pesquisa')

@section('content_header')
     <div class="back-row">
    	<a href="javascript:history.back()">
    		<span>&#8678;</span>
    	</a>
    	<h1>Resultado Pesquisa '{{$filter}}'</h1>
    </div>
@stop

@section('content')
    <div id="search" class="row">
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
				<p>
					{!!$post->conteudo!!}
				<p>
				<a type="button" class="btn btn-more" href="{{ url('/details', [$post->id]) }}">Leia Mais</a>
	    	</div>
    	@endforeach  
	</div>
 
@stop

