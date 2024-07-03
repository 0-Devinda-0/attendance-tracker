<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EnrolledTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $enrollments = [];
        $totalStudents = 50;
        $totalSubjects = 5;
        $now = Carbon::now();

        for ($i = 1; $i <= $totalStudents; $i++) {
            
            $enrollments[] = [
                'student' => $i,
                'subject' => ($i - 1) % $totalSubjects + 1,
                'created_at' => $now,
                'updated_at' => $now,
            ];
        }

        DB::table('enrolled')->insert($enrollments);
    }
}
