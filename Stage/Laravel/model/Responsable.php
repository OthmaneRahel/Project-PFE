<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Responsable extends Model
{
    protected $table = 'responsable';
    protected $primaryKey = 'idR';
    protected $fillable = ['nom', 'adresse','tele','affectation_magasin','login','mdp'];
    use HasFactory;
}
