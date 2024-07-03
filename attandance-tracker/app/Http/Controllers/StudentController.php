<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\Subject;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    
    public function getStudentListBySubject($subjectId){
        
       

        $students = Student::whereHas('subjects', function ($query) use ($subjectId) {
            $query->where('subjects.id', $subjectId);
        })->get();

         //hides unnessasary fields
        $students->makeHidden(['created_at', 'updated_at','dob']);

        return response()->json(['students' => $students]);
    
    }
    
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $studentsCount = DB::table('students')->where('id',1);
        //return $studentsCount;
        return response()->json($studentsCount);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Student::create([
            'subject_name' => $request->subname,
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
