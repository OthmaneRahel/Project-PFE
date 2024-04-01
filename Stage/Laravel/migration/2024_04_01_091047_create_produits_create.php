<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('produits_create', function (Blueprint $table) {
            $table->id('code');
            $table->string('nom');
            $table->string('image');
            $table->string('marque');
            $table->string('categorie');
            $table->float('prix');
            $table->string('unite');
            $table->float('quantite');
            $table->float('AlertQuantite');
            $table->float('cout');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('produits_create');
    }
};
