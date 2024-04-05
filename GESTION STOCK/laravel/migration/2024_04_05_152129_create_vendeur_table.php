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
        Schema::create('vendeur', function (Blueprint $table) {
            $table->id('idV');
            $table->string('login');
            $table->string('password');
            $table->string('nom');
            $table->string('status');
            $table->integer('tele');
            $table->bigInteger('idE')->unsigned();;
            $table->foreign('idE')->references('idE')->on('entrepots')->onDelete('cascade');
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
        Schema::dropIfExists('vendeur');
    }
};
