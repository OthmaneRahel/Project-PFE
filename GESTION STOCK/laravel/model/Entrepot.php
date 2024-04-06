<?php

namespace App\Models\ModelsStage;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Entrepot extends Model
{
    protected $table = 'entrepots';
    protected $primaryKey = 'code';
    public $timestamps = true;
    protected $fillable = ['nom', 'telephone','email','adresse','type','Ref'];
    public function depences(){
        return $this->belongsTo(Depences::class,'Ref','Ref');
    }
    public function Client(){
        return $this->hasMany(Client::class,'idE','idE');
    }
    public function Fornisseur(){
        return $this->hasMany(Fornisseur::class,'idE','idE');
    }
    public function Vendeur(){
        return $this->hasMany(Vendeur::class,'idE','idE');
    }   
     public function Respnsable(){
        return $this->hasMany(Respnsable::class,'idE','idE');
    }
    use HasFactory;
}
