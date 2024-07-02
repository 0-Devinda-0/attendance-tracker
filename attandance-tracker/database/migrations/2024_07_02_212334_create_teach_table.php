<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('teach', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('teach'); //id of the teacher
            $table->unsignedBigInteger('subject');
            $table->timestamps();

            $table->foreign('teach')->references('id')->on('teachers');
            $table->foreign('subject')->references('id')->on('subjects');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('teach');
    }
};
