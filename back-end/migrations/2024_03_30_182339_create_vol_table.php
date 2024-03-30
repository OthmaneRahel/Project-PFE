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
        Schema::create('vol', function (Blueprint $table) {
            $table->id('idVol');
            $table->string('nomVille');
            $table->string('image');
            $table->integer('prix');
            $table->date('date_depart');
            $table->date('date_arrivee');
            $table->string('description');
            $table->bigInteger('idReserVol')->unsigned();
            $table->foreign('idReserVol')->references('idReserVol')->on('reservation_vol_dispo');
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
        Schema::dropIfExists('vol');
    }
};
