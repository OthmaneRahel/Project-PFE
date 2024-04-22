<?php

namespace App\Models\ModelsStage;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Depences extends Model
{
    protected $table = 'depences';
    protected $primaryKey = 'Ref';
    public $timestamps = true;
    protected $fillable = ['code_categorie', 'Montant','Note'];
    public function entrepots(){
        return $this->hasMany(Entrepot::class,'Ref','Ref');
    }
    public function categorieDepences(){
        return $this->belongsTo(CategorieDepences::class,'code_categorie','code_categorie');
    }
    use HasFactory;
}
