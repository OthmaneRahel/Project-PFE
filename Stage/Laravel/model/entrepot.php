<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class entrepot extends Model
{
    protected $table = 'entrepot_crate';
    protected $primaryKey = 'code';
    protected $fillable = ['nom', 'adresse','type'];
    use HasFactory;
}
