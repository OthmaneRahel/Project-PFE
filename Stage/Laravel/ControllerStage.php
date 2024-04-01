<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Models\ModelsStage\Entrepot;
use Illuminate\Http\Request;

class ControllerStage extends Controller
{
    // public function login(Request $request){
    //     $email = $request->email;
    //     $password = $request->password;
    //     $verb = ['name'=>$email , 'password'=>$password];

    //     if(Auth::attempt($verb)){
    //         return response()->json(['message'=>'bien login','logs'=>$verb],200);
    //     }else{
    //         return response()->json(['message'=>'non login','logs'=>$verb],200);
    //     }
    // }
    public function AfficherListEntrepots(){
        $ListEntrepots = Entrepot::all();
        return $ListEntrepots;
    }
    public function SupprimerEntrpot ($id){
        $listEnt = Entrepot::destroy($id);
        if($listEnt){
            return response()->json(['message'=>'Votre Entrepot a ete bien supprime' , 'entrepot' => $listEnt],200);
        }else{
            return response()->json('Votre Entrepot est n\'est pas supprimé',400);
        }
    }
    public function ModifierEntrepot(Request $request , $id){
        $entSpe = Entrepot::find($id);
        $nom = $request->nom;
        $adresse = $request->adresse;
        $type = $request->type;
        $entSpe-> update([
            'nom'=> $nom,
            'adresse'=> $adresse,
            'type' => $type
        ]);

        return response()->json('Votre entrepot a ete bien modifier',200);
    }
}

