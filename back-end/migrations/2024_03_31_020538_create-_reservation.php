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
        Schema::create('Reservation', function (Blueprint $table) {
            $table->id('idR');
            $table->bigInteger('idclient')->unsigned();
            $table->foreign('idclient')->references('idclient')->on('client');
            $table->integer('nombreChambre');
            $table->integer('nombreAdulte');
            $table->integer('nombreEnfants');
            $table->integer('nombreBebe');
            $table->float('total');
            $table->date('date_debut');
            $table->date('date_fin');
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
        //
    }
};
