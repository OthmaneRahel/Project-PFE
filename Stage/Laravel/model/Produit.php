<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produit extends Model
{
    protected $table = 'produits_create';
    protected $primaryKey = 'code';
    protected $fillable = ['nom', 'image','marque','categorie','prix','unite','quantite','AlertQuantite','cout'];
    use HasFactory;
}
