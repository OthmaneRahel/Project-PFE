<?php

namespace App\Models\ModelsPFE;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Voyages extends Model
{
    protected $table = 'voyage';
    protected $primaryKey = 'idVoyage';
    public $timestamps = true;
    protected $fillable = [
        'nomVille','image','prix','date_depart','date_arrivee','description','idReserVyg'
    ];

    public function voyagesdispo(){
        return $this->belongsTo(VoyagesDispo::class,'idReserVyg','idReserVyg');
    }
    use HasFactory;
}
