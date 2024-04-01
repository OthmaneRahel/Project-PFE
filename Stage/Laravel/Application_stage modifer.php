<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\entrepot;
use App\Models\Produit;
use App\Models\Client;
use App\Models\Vendeur;
use App\Models\Responsable;
use App\Models\Fornniseur;

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
    public function listerClient()
    {
        $client = Client::all();
        return $client ;
    }
    public function listerFornisseur()
    {
        $fornisseur = Fornisseur::all();
        return $fornisseur ;
    }
    public function listerResponsable()
    {
        $Responsable = Responsable::all();
        return $Responsable ;
    }
    public function listerVendeur()
    {
        $Vendeur = Vendeur::all();
        return $Vendeur ;
    }
    public function ajouterClient(Request $request)
    {
        $client=Client::create([
            'idC'=>$request->idC,
            'nom'=>$request->nom,
            'adresse'=>$request->adresse,
            'tele'=>$request->tele,
            'solde_intial'=>$request->solde_intial,
            'login'=>$request->login,
            'mdp'=>$request->mdp,
        ]);
        return response()->json(['message'=>'votre Client a ete ajouter','client'=>$client],201);
    }
    public function ajouterResponsable(Request $request)
    {
        $responsable=Responsable::create([
            'idR'=>$request->idR,
            'nom'=>$request->nom,
            'adresse'=>$request->adresse,
            'tele'=>$request->tele,
            'login'=>$request->login,
            'mdp'=>$request->mdp,
            'affectation_magasin'=>$request->affectation_magasin,
        ]);
        return response()->json(['message'=>'votre responsable a ete ajouter','responsable'=>$responsable],201);
    }
    public function ajouterFornisseur(Request $request)
    {
        $fornisseur=Fornisseur::create([
            'idF'=>$request->idF,
            'nom'=>$request->nom,
            'adresse'=>$request->adresse,
            'tele'=>$request->tele,
            'devise'=>$request->devise,
        ]);
        return response()->json(['message'=>'votre Fornisseur a ete ajouter','fornisseur'=>$fornisseur],201);
    }
    public function ajouterVendeur(Request $request)
    {
        $Vendeur=Vendeur::create([
            'idV'=>$request->idV,
            'nom'=>$request->nom,
            'adresse'=>$request->adresse,
            'tele'=>$request->tele,
            'affectation_magasin'=>$request->affectation_magasin,
        ]);
        return response()->json(['message'=>'votre Vendeur a ete ajouter','vendeur'=>$Vendeur],201);
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
        $client->adresse = $request->input('adresse');
        $client->tele = $request->input('tele');
        $client->solde_intial = $request->input('solde_intial');
        $client->login = $request->input('login');
        $client->mdp = $request->input('mdp');
        $client->save();
        return response()->json(['message' => 'Client modifié'], 200);
    }
    public function ModifierResponsable(Request $request, $id) {
        $Responsable = Responsable::find($id);
        if (!$Responsable) {
            return response()->json(['message' => 'Responsable non trouvé'], 404);
        }
        $Responsable->nom = $request->input('nom');
        $Responsable->adresse = $request->input('adresse');
        $Responsable->tele = $request->input('tele');
        $Responsable->affectation_magasin = $request->input('affectation_magasin');
        $Responsable->login = $request->input('login');
        $Responsable->mdp = $request->input('mdp');
        $Responsable->save();
        return response()->json(['message' => 'Responsable modifié'], 200);
    }
    public function ModifierFornisseur(Request $request, $id) {
        $Fornisseur = Fornisseur::find($id);
        if (!$Fornisseur) {
            return response()->json(['message' => 'Fornisseur non trouvé'], 404);
        }
        $Fornisseur->nom = $request->input('nom');
        $Fornisseur->adresse = $request->input('adresse');
        $Fornisseur->tele = $request->input('tele');
        $Fornisseur->devise = $request->input('devise');

        return response()->json(['message' => 'Fornisseur modifié'], 200);
    }
    public function ModifierVendeur(Request $request, $id) {
        $Vendeur = Vendeur::find($id);
        if (!$Vendeur) {
            return response()->json(['message' => 'Vendeur non trouvé'], 404);
        }
        $Vendeur->nom = $request->input('nom');
        $Vendeur->adresse = $request->input('adresse');
        $Vendeur->tele = $request->input('tele');
        $Vendeur->affectation_magasin = $request->input('affectation_magasin');
        $Vendeur->save();
        return response()->json(['message' => 'Vendeur modifié'], 200);
    }
}
