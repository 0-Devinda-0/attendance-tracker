<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AttendacneController extends Controller
{
    public function markAttendance(Request $request){
        $studentIds = $request->input('students');
        $subjectId = $request->input('subject_id');
        //$teacherId = $request->input('teacherId');
        $teacherId = 1;
        foreach($studentIds as $studentId){
            DB::table('attendance')->insert([
                'student'=> $studentId,
                'subject'=> $subjectId,
                'marked_by' => $teacherId,
                'created_at' => Carbon::now()
            ]);
        }
        return response()->json('Attendenc marked',200);
    }

    
    public function getStudentsByDateRange(Request $request)
{
    // Validate input
    $request->validate([
        'start_date' => 'required|date',
        'end_date' => 'required|date|after_or_equal:start_date',
    ]);

    $startDate = Carbon::parse($request->input('start_date'))->startOfDay();
    $endDate = Carbon::parse($request->input('end_date'))->endOfDay();

    //get students from attendance table within the date range
    $students = DB::table('attendance')
        ->select('students.id', 'students.s_first_name')
        ->join('students', 'attendance.student', '=', 'students.id')
        ->whereBetween('attendance.created_at', [$startDate, $endDate])
        ->distinct()
        ->get();

    return response()->json(['students' => $students], 200);
}
}
