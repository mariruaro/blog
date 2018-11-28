<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'post';
    public $timestamps = false;

    protected $fillable = [
        'titulo', 'conteudo', 'id_usuario', 'nome_usuario'
    ];

}
