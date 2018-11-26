@extends('adminlte::page')

@section('title', 'AdminLTE')

@section('content_header')
    <h1>Novo Post</h1>
@stop

@section('content')
    <div id="postForm" class="row">
    	<div class="col-md-8 centered">
    		<div class="box box-purple">
		    	<form>
					<meta name="csrf-token" content="{{ csrf_token() }}">
		    		<div class="box-body">
			    		<div class="form-group">
			              	<label>Título</label>
			              	<input type="text" class="form-control" placeholder="Título ...">
			            </div>
			            <div class="form-group">
		                  	<label for="exampleInputFile">Arquivos</label>
		                  	<input type="file" id="documents" name="documents" class="file">

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

	<script
		src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous">
	</script>

	<script>
		$("#postForm").submit(function(event) {
			event.preventDefault();
			
			var formData = new FormData($('this')[0]);
			//var formData = new FormData();
			//formData.append('file', $('input[type=file]')[0].files[0]);

			$.ajax({
				url: 'http://localhost:8000/post/create',
				type: 'POST',
				data: formData,
				headers: {
					'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				},
				success: function(data) {
					alert(data)
				},
				cache: false,
				contentType: false,
				processData: false,
				xhr: function() { // Custom XMLHttpRequest
					var myXhr = $.ajaxSettings.xhr();
					if (myXhr.upload) { // Avalia se tem suporte a propriedade upload
						myXhr.upload.addEventListener('progress', function() {
							/* faz alguma coisa durante o progresso do upload */
						}, false);
					}
					return myXhr;
				}
			});
		});
	</script>
 
@stop

