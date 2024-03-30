<?php

namespace App\Models\ModelsPFE;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VoyagesDispo extends Model
{
    protected $table = 'reservation_voyage_dispo';
    protected $primaryKey = 'idReserVyg';
    public $timestamps = true;
    protected $fillable = [
        'agenceVyg','date_debut','date_fin','prixV','formule','idC'
    ];
    public function voyages(){
        return $this->hasMany(Voyages::class,'idReserVyg','idReserVyg');
    }
    public function commentsVoyages(){
        return $this->belongsTo(CommentsVyg::class,'idC','idC');    
    }
    use HasFactory;
}
