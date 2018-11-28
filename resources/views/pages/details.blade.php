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
			<h2>Título Post</h2>
			<div class="info">
				<i class="fa  fa-user "></i>
				<span>Mariana</span>
				<i class="fa fa-calendar-o"></i>
				<span>22-11-2018</span>
			</div>
			<div class="">
				<img src="http://fncit.com.br/blog/wp-content/uploads/2017/10/banner-post-blog.jpg" alt="Banner" >
			</div>
			<p>
				Lorem ipsum nisi curabitur pharetra dolor cubilia imperdiet, aliquam nulla sed faucibus ad praesent adipiscing libero, bibendum primis pellentesque dolor per hendrerit. turpis conubia mattis porta sem aenean feugiat semper tempor phasellus, vel vehicula felis scelerisque quam tortor dui curae dapibus, platea dapibus fusce porta lectus eros iaculis tellus. cubilia mollis aptent vulputate rhoncus risus aptent tortor rhoncus facilisis, class amet ad bibendum platea sagittis luctus purus, hac felis curabitur sociosqu nam nibh vestibulum orci. fringilla vestibulum aenean platea proin ornare fringilla molestie iaculis luctus, donec varius in aptent consequat euismod vulputate. 

				Lorem ipsum nisi curabitur pharetra dolor cubilia imperdiet, aliquam nulla sed faucibus ad praesent adipiscing libero, bibendum primis pellentesque dolor per hendrerit. turpis conubia mattis porta sem aenean feugiat semper tempor phasellus, vel vehicula felis scelerisque quam tortor dui curae dapibus, platea dapibus fusce porta lectus eros iaculis tellus. cubilia mollis aptent vulputate rhoncus risus aptent tortor rhoncus facilisis, class amet ad bibendum platea sagittis luctus purus, hac felis curabitur sociosqu nam nibh vestibulum orci. fringilla vestibulum aenean platea proin ornare fringilla molestie iaculis luctus, donec varius in aptent consequat euismod vulputate. 
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

