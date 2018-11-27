<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'post';

    protected $fillable = [
        'titulo', 'conteudo', 'data', 'data_alteracao', 'id_usuario'
    ];

}
