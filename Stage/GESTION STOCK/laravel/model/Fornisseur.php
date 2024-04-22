<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fornisseur extends Model
{
    protected $table = 'fornisseur';
    protected $primaryKey = 'idF';
    protected $fillable = ['nom', 'type','tele','devise','idE','status'];
    public function Entrepot(){
        return $this->belongsTo(Entrepot::class,'idE','idE');
    }
    use HasFactory;
}
