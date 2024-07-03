<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subject;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // get all subjecst in the table
        $subjects = Subject::all();

        //hides unnessasary fields
        $subjects->makeHidden(['created_at', 'updated_at']);
        return response()->json(['subjects' => $subjects]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Subject::create([
            'subject_name' => $request->subname,
        ]);
    }

}
