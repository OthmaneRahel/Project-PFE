<?php

namespace App\Models\ModelsStage;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategorieDepences extends Model
{
    protected $table = 'categorie_depences';
    protected $primaryKey = 'code_categorie';
    public $timestamps = true;
    protected $fillable = ['nom'];
    public function depences(){
        return $this->hasMany(Depences::class,'Ref','Ref');
    }
    use HasFactory;
}
