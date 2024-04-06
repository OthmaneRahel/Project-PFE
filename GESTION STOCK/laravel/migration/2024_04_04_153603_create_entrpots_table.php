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
        Schema::create('entrepots', function (Blueprint $table) {
            $table->id('idE');
            $table->integer('code');
            $table->string('nom');
            $table->string('telephone');
            $table->string('email');
            $table->string('adresse');
            $table->string('type');
            $table->bigInteger('Ref')->unsigned();
            $table->foreign('Ref')->references('Ref')->on('depences');
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
        Schema::dropIfExists('entrpots');
    }
};
