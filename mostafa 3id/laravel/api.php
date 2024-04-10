<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ControllerStage ;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*---------------------------------------------------------------------------------------*/
// Add
Route::post('/c', [ControllerStage::class, 'AjouterClient']);
Route::post('/r', [ControllerStage::class, 'AjouterResponsable']);
Route::post('/f', [ControllerStage::class, 'AjouterFornisseur']);
Route::post('/v', [ControllerStage::class, 'AjouterVendeur']);

// Afficher
Route::get('/r', [ControllerStage::class, 'listerResponsables']);
Route::get('/v', [ControllerStage::class, 'listerVendeurs']);
Route::get('/c', [ControllerStage::class, 'listerClients']);
Route::get('/f', [ControllerStage::class, 'listerFournisseurs']);
Route::get('/listeE', [ControllerStage::class, 'listerEntrepots']);

// Delete
Route::delete('/supprimerClient/{id}', [ControllerStage::class, 'supprimerClient']);
Route::delete('/supprimerFornisseur/{id}', [ControllerStage::class, 'supprimerFornisseur']);
Route::delete('/supprimerResponsable/{id}', [ControllerStage::class, 'supprimerResponsable']);
Route::delete('/supprimerVendeur/{id}', [ControllerStage::class, 'supprimerVendeur']);

// Update
Route::put('/c/{id}', [ControllerStage::class, 'ModifierClient']);
Route::put('/f/{id}', [ControllerStage::class, 'ModifierFornisseur']);
Route::put('/r/{id}', [ControllerStage::class, 'ModifierResponsable']);
Route::put('/v/{id}', [ControllerStage::class, 'ModifierVendeur']);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});