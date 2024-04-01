<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vendeur extends Model
{
    protected $table = 'vendeur';
    protected $primaryKey = 'idV';
    protected $fillable = ['nom', 'adresse','tele','affecttation_magasin'];
    use HasFactory;
}
