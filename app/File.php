<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    protected $table = 'arquivos';
    public $timestamps = false;

    protected $fillable = [
        'nm_arquivo', 'arquivo', 'tipo', 'id_post','tamanho', 'favorite'
    ];

}
