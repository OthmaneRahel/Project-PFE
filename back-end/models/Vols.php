<?php

namespace App\Models\ModelsPFE;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vols extends Model
{
    protected $table = 'vol';
    protected $primaryKey = 'idVol';
    public $timestamps = true;
    protected $fillable = [
        'nomVille','image','prix','date_depart','date_arrivee','description','idReserVol'
    ];
    public function voldispo(){
        return $this->belongsTo(VolsDispo::class,'idReserVol','idReserVol');
    }
    use HasFactory;
}
