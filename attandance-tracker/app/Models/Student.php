<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
    's_first_name',
    's_last_name',
    'dob'
    ];
    public function subjects()
    {
        return $this->belongsToMany(Subject::class,'enrolled', 'student', 'subject');
    }
}
