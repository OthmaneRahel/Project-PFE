<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $table = 'client';
    protected $primaryKey = 'idC';
    protected $fillable = ['nom', 'adresse','tele','solde_intial','login','mdp'];
    use HasFactory;
}
