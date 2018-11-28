@extends('adminlte::page')

@section('title', 'Post')

@section('content_header')
    <h1>Novo Post</h1>
@stop

@section('content')
    <div id="postForm" class="row">
    	<div class="col-md-8 centered">
    		<div class="box box-purple">
		    	<form  id="postCreate" name="post-form" autocomplete="off" action="/post/create" method="post" enctype="multipart/form-data">
					<meta name="csrf-token" content="{{ csrf_token() }}">
		    		<div class="box-body">
			    		<div class="form-group">
			              	<label>Título</label>
			              	<input type="text" class="form-control" name="titulo" id="titulo" placeholder="Título ..." required="true">
			            </div>
			            <div class="form-group">
		                  	<label for="exampleInputFile">Arquivos</label>
		                  	<input type="file" id="exampleInputFile" name="arquivo"  multiple>

                  			<p class="help-block">Fomatos jpg, png e pdf.</p>
                		</div>
			    		<textarea id="editor" name="conteudo" required="true"></textarea>
			    		
		    		</div>
		    		<div class="box-footer">
	                	<button type="submit" class="btn btn-purple pull-right">Salvar</button>
	              </div>
				</form>
			</div>
		</div>
	</div>

    <script src="https://cdn.ckeditor.com/ckeditor5/11.1.1/classic/ckeditor.js"></script>

	<script
		src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous">
	</script>

	<script>
		$(document).ready(function() {
		    ClassicEditor
		        .create( document.querySelector( '#editor' ) )
		        .catch( error => {
		            console.error( error );
	        } );

		    $('#postCreate').on('submit', function (e) {
		        e.preventDefault();
		        
		        var data = new FormData(this);

		        var self = $(this)
		      
		        $.ajax({
		            url: $(this).attr('action'),
		            type: 'POST',
		            headers: {
		                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		            },
		            data: data,
		            cache: false,
		            contentType: false,
		            processData: false,
		            xhr: function() {  // Custom XMLHttpRequest
		                var myXhr = $.ajaxSettings.xhr();
		                if (myXhr.upload) { // Avalia se tem suporte a propriedade upload
		                    myXhr.upload.addEventListener('progress', function () {
		                        /* faz alguma coisa durante o progresso do upload */
		                    }, false);
		                }
		                return myXhr;
		            },
		            
		        });
		    });
		});
		
	</script>
 
@stop

