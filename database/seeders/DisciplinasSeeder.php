<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class DisciplinasSeeder extends Seeder
{
    
    public function run(): void
    {
        DB::table('disciplinas')->insert([
            ['nome' => 'Disciplina 1', 'professor_id' => 1],
            ['nome' => 'Disciplina 2', 'professor_id' => 2],
            ['nome' => 'Disciplina 3', 'professor_id' => 3],
            ['nome' => 'Disciplina 4', 'professor_id' => 1],
        ]);
    }
}
