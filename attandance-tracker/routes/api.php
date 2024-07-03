<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\SubjectController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\AttendacneController;


Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::post('/subject/store', [SubjectController::class, 'store']);

Route::get('/subject', [SubjectController::class, 'index']);

Route::post('/student/store',[StudentController::class,'index']);

Route::post('/attn/mark',[AttendacneController::class,'markAttendance']);

Route::post('/attn/list',[AttendacneController::class,'getStudentsByDateRange']);

Route::get('/student/get/{subjectId}',[StudentController::class,'getStudentListBySubject']);