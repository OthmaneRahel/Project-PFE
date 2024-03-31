<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table = 'Contact';
    protected $primaryKey = 'idC';
    protected $fillable = ['Nom', 'Prenom','adresseEmail','NomDemande','demande'];
    use HasFactory;
}
