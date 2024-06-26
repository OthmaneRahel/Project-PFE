<?php

namespace App\Models\ModelsPFE;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentsVol extends Model
{
    protected $table = 'commentaires_vol';
    protected $primaryKey = 'idV';
    public $timestamps = true;
    protected $fillable = [
        'nom','comments'
    ];
    use HasFactory;
}
