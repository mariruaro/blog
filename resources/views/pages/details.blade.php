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
			@foreach ($arquivo as $img)
				@if ($img->id_post == $post->id && $img->favorite == true)
					<img src="{{ url("storage/{$img->arquivo}") }}" alt="Banner" >
				@endif
			@endforeach 
			<p>
				{!!$post->conteudo!!}
			<p>

			<div class="row">
				@foreach ($arquivo as $file)
					<a class="btn btn-app" href="{{ url("storage/{$file->arquivo}") }}">
		            	<i class="fa fa-save" title="{{$file->nm_arquivo}}"></i> 
		            	<span>Salvar</span>
		          	</a>
	          	@endforeach 
          	</div>
    	</div>
	</div>


 
@stop

