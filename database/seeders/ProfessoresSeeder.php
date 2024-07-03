<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class ProfessoresSeeder extends Seeder
{
    
    public function run(): void
    {
        DB::table('professores')->insert([
            ['id' => 1,  'nome' =>'Professor 1', 'login' => 'Professor 1', 'senha' => bcrypt('prof_1')],
            ['id' => 2,  'nome' =>'Professor 2', 'login' => 'Professor 2', 'senha' => bcrypt('prof_2')],
            ['id' => 3,  'nome' =>'Profeesor 3', 'login' => 'Profeesor 3', 'senha' => bcrypt('prof_3')],
        ]);
    }
}
