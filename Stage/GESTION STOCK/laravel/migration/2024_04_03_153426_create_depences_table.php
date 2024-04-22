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
        Schema::create('depences', function (Blueprint $table) {
            $table->id('Ref');
            $table->bigInteger('code_categorie')->unsigned();
            $table->foreign('code_categorie')->references('code_categorie')->on('categorie_depences');
            $table->float('Montant');
            $table->string('Note');
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
        Schema::dropIfExists('depences');
    }
};
