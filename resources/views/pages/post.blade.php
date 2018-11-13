@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <h1>Novo Post</h1>
@stop

@section('content')
    <div id="post" class="row">
    	<div class="col-md-8 centered">
    		<div class="box box-purple">
		    	<form>
		    		<div class="box-body">
			    		<div class="form-group">
			              	<label>Título</label>
			              	<input type="text" class="form-control" placeholder="Título ...">
			            </div>
			            <div class="form-group">
		                  	<label for="exampleInputFile">Arquivos</label>
		                  	<input type="file" id="exampleInputFile">

                  			<p class="help-block">Example block-level help text here.</p>
                		</div>
			    		<textarea name="content" id="editor"></textarea>
		    		</div>
		    		<div class="box-footer">
	                	<button type="submit" class="btn btn-purple pull-right">Salvar</button>
	              </div>
				</form>
			</div>
		</div>
	</div>


    <script src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script>
    <script>
	    ClassicEditor
	        .create( document.querySelector( '#editor' ) )
	        .catch( error => {
	            console.error( error );
	        } );
	</script>
 
@stop

