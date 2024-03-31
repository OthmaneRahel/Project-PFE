<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    protected $table = 'Reservation';
    protected $primaryKey = 'idR';
    protected $fillable = ['idclient', 'nomvreChambre','nombreAdulte','nombreEnfants','nombreBebe','total','date_debut','date_fin'];
    use HasFactory;
    public function Clients()
    {
        return $this->belongsTo(Clients::class, 'idclient',          'idclient');
		                             
    }
}
