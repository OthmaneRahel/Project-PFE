<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\entrepot;
use App\Models\Produit;

class Application_stage extends Controller
{
    public function lister()
    {
        $entrepot = entrepot::all();
        return $entrepot ;
    }
    public function listerP()
    {
        $produits = Produit::all();
        return $produits ;
    }
}
