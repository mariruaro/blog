@extends('adminlte::page')

@section('title', 'Meus Posts')

@section('content_header')
    <h1>Meus Posts</h1>
@stop

@section('content')
    <div id="my" class="row">
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
				@foreach ($header as $img)
					@if ($img->id_post == $post->id)
						<img src="{{ url("storage/{$img->arquivo}") }}" alt="Banner" >
					@endif
				@endforeach 
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

