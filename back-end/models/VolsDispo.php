<?php

namespace App\Models\ModelsPFE;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VolsDispo extends Model
{
    protected $table = 'reservation_vol_dispo';
    protected $primaryKey = 'idReserVol';
    public $timestamps = true;
    protected $fillable = [
        'agenceVyg','date_debut','date_fin','prixV','formule','idV'
    ];
    public function vols(){
        return $this->hasMany(Vols::class,'idReserVyg','idReserVyg');
    }
    public function commentsVoyages(){
        return $this->belongsTo(CommentsVyg::class,'idV','idV');    
    }
    use HasFactory;
}
