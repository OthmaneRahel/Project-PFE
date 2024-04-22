<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;
use App\Models\Vendeur;
use App\Models\Responsable;
use App\Models\Fornisseur;
use App\Models\Entrepots;

class ControllerStage extends Controller
{
    public function listerEntrepots()
    {
        $entrepots = Entrepots::all();
        return $entrepots;
    }

    public function listerClients()
    {
        $clients = Client::all();
        return $clients;
    }

    public function listerFournisseurs()
    {
        $fournisseurs = Fornisseur::all();
        return $fournisseurs;
    }

    public function listerResponsables()
    {
        $responsables = Responsable::all();
        return $responsables;
    }

    public function listerVendeurs()
    {
        $vendeurs = Vendeur::all();
        return $vendeurs;
    }
    public function AjouterClient(Request $request)
    {
        $client=Client::create([
            'nom'=>$request->nom,
            'status'=>$request->status,
            'tele'=>$request->tele,
            'solde_intail'=>$request->solde_intail,
            'login'=>$request->login,
            'password'=>$request->password,
            'idE'=>$request->idE,
        ]);
        return response()->json(['message'=>'votre Client a ete ajouter','client'=>$client],201);
    }
    public function AjouterResponsable(Request $request)
    {
        $responsable=Responsable::create([
            'nom'=>$request->nom,
            'status'=>$request->status,
            'tele'=>$request->tele,
            'login'=>$request->login,
            'password'=>$request->password,
            'idE'=>$request->idE,
        ]);
        return response()->json(['message'=>'votre responsable a ete ajouter','responsable'=>$responsable],201);
    }
    public function AjouterFornisseur(Request $request)
    {
        $fornisseur=Fornisseur::create([
            'nom'=>$request->nom,
            'status'=>$request->status,
            'tele'=>$request->tele,
            'type'=>$request->type,
            'devise'=>$request->devise,
            'idE'=>$request->idE,
        ]);
        return response()->json(['message'=>'votre Fornisseur a ete ajouter','fornisseur'=>$fornisseur],201);
    }
    public function AjouterVendeur(Request $request)
    {
        $vendeur = Vendeur::create([
            'nom' => $request->nom,
            'status' => $request->status,
            'tele' => $request->tele,
            'login' => $request->login,
            'password' => $request->password,
            'idE' => $request->idE,
        ]);
        return response()->json(['message' => 'Votre Vendeur a été ajouté', 'vendeur' => $vendeur], 201);
    }
    public function supprimerClient($id)
    {
        $client = Client::destroy($id);
        if($client) {
             return response()->json("le Client id=$id est bien supprime", 200);
        }else{
            return response()->json("Error le Client id=$id n'pas supprime", 400);
        }
    }
    public function supprimerResponsable($id)
    {
        $res = Responsable::destroy($id);
        if($res) {
             return response()->json("le Responsable id=$id est bien supprime", 200);
        }else{
            return response()->json("Error le Responbale id=$id n'pas supprime", 400);
        }
    }
    public function supprimerFornisseur($id)
    {
        $for = Fornisseur::destroy($id);
        if($for) {
             return response()->json("le Fornisseur id=$id est bien supprime", 200);
        }else{
            return response()->json("Error le Fornisseur id=$id n'pas supprime", 400);
        }
    }
    public function supprimerVendeur($id)
    {
        $ven = Vendeur::destroy($id);
        if($ven) {
             return response()->json("le Vendeur id=$id est bien supprime", 200);
        }else{
            return response()->json("Error le Vendeur id=$id n'pas supprime", 400);
        }
    }
    public function ModifierClient(Request $request, $id) {
        $client = Client::find($id);
        if (!$client) {
            return response()->json(['message' => 'Client non trouvé'], 404);
        }
        $client->nom = $request->input('nom');
        $client->status = $request->input('status');
        $client->tele = $request->input('tele');
        $client->solde_intail = $request->input('solde_intail');
        $client->login = $request->input('login');
        $client->password = $request->input('password');
        $client->idE = $request->input('idE');
        $client->save();
        return response()->json(['message' => 'Client modifié'], 200);
    }
    
    public function ModifierResponsable(Request $request, $id) {
        $Responsable = Responsable::find($id);
        if (!$Responsable) {
            return response()->json(['message' => 'Responsable non trouvé'], 404);
        }
        $Responsable->nom = $request->input('nom');
        $Responsable->status = $request->input('status');
        $Responsable->tele = $request->input('tele');
        $Responsable->login = $request->input('login');
        $Responsable->password = $request->input('password');
        $Responsable->idE = $request->input('idE');
        $Responsable->save();
        return response()->json(['message' => 'Responsable modifié'], 200);
    }
    public function ModifierFornisseur(Request $request, $id) {
        $Fornisseur = Fornisseur::find($id);
        if (!$Fornisseur) {
            return response()->json(['message' => 'Fornisseur non trouvé'], 404);
        }
        $Fornisseur->nom = $request->input('nom');
        $Fornisseur->status = $request->input('status');
        $Fornisseur->tele = $request->input('tele');
        $Fornisseur->type = $request->input('type');
        $Fornisseur->idE = $request->input('idE');
        $Fornisseur->devise = $request->input('devise');

        return response()->json(['message' => 'Fornisseur modifié'], 200);
    }
    public function ModifierVendeur(Request $request, $id)
    {
        $vendeur = Vendeur::find($id);
        if (!$vendeur) {
            return response()->json(['message' => 'Vendeur non trouvé'], 404);
        }
        $vendeur->nom = $request->input('nom');
        $vendeur->status = $request->input('status');
        $vendeur->tele = $request->input('tele');
        $vendeur->login = $request->input('login');
        $vendeur->password = $request->input('password');
        $vendeur->idE = $request->input('idE');
        $vendeur->save();
        return response()->json(['message' => 'Vendeur modifié'], 200);
    }
}
