<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\SubjectController;
use App\Http\Controllers\StudentController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::post('/subject/store', [SubjectController::class, 'store']);

Route::post('/student/store',[StudentController::class,'store']);