<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fornisseur extends Model
{
    protected $table = 'fornisseur';
    protected $primaryKey = 'idF';
    protected $fillable = ['nom', 'adresse','tele','devise'];
    use HasFactory;
}
