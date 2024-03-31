<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HajOmra extends Model
{
    protected $table = 'HajOmra';
    protected $primaryKey = 'id';
    protected $fillable = ['nom', 'image','date_depart','date_arrivee','prix','description'];
    use HasFactory;
}
