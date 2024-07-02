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
        Schema::create('attendace', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('marked_by'); //id of marked teacher
            $table->unsignedBigInteger('student');
            $table->unsignedBigInteger('subject');
            $table->timestamps();

            $table->foreign('marked_by')->references('id')->on('teachers');
            $table->foreign('student')->references('id')->on('students');
            $table->foreign('subject')->references('id')->on('subjects');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('attendace');
    }
};
