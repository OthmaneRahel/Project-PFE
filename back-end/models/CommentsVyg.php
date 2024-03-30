<?php

namespace App\Models\ModelsPFE;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentsVyg extends Model
{
    protected $table = 'commentaires_voyages';
    protected $primaryKey = 'idC';
    public $timestamps = true;
    protected $fillable = [
        'nom','comments'
    ];
    use HasFactory;
}
