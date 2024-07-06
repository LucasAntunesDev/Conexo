<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class JogosSeeder extends Seeder {
       /**
        * Run the database seeds.
        */
       public function run(): void {
              DB::table('jogos')->insert([
                     ['id' => 1, 'nome' => 'Jogo 1', 'grupo_1_id' => 35, 'grupo_2_id' => 10, 'grupo_3_id' =>  15, 'grupo_4_id' => 28, 'grupo_1_palavras' => 'Frequência,Tom,Volume,Timbre', 'grupo_2_palavras' =>  'Orégano,Coentro,Tomilho,Sálvia', 'grupo_3_palavras' =>  'Batom,Gloss,Tint,Bálsamo', 'grupo_4_palavras' =>  'Newton-John,Palito,Rodrigo,Benson', 'data' => '2024-07-03', 'created_at' => '2024-07-03 13:43:10', 'updated_at' =>  '2024-07-03 13:43:10'],

                     ['id' => 4, 'nome' => 'Jogo 2', 'grupo_1_id' => 39, 'grupo_2_id' => 14, 'grupo_3_id' =>  49, 'grupo_4_id' => 33, 'grupo_1_palavras' => 'Espiãs,Marias,Patetas,Porquinhos', 'grupo_2_palavras' =>  'Bloco,Agenda,Planner,Diário',  'grupo_3_palavras' => 'Gama,Beta,Alfa,Lambda', 'grupo_4_palavras' =>  'Irritação,Alergia,Coceira,Inflamação', 'data' => '2024-07-03', 'created_at' => '2024-07-03 14:15:29', 'updated_at' =>  '2024-07-03 14:15:29'],
              ]);
       }
}
