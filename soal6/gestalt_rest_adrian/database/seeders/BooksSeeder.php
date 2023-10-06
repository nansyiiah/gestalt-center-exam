<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BooksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        \App\Models\BukuModels::create([
            
                'Id' => 1,
                'Title' => 'Her World',
                'Author' => 'Singapura',
                'Price_rent' => 1000,
                'Book_category' => 'MAGAZINE',
        ]);
        \App\Models\BukuModels::create([

                'Id' => 2,
                'Title' => 'Baccarat',
                'Author' => 'Hongkong',
                'Price_rent' => 59000,
                'Book_category' => 'MAGAZINE',

        ]);
        \App\Models\BukuModels::create([

                'Id' => 3,
                'Title' => 'Naruto',
                'Author' => 'Masashi Kishimoto',
                'Price_rent' => 5000,
                'Book_category' => 'MANGA',

        ]);
        \App\Models\BukuModels::create([
            
                'Id' => 4,
                'Title' => 'Ayat-ayat Cinta',
                'Author' => 'Habiburrahman El Shirazy',
                'Price_rent' => 3000,
                'Book_category' => 'NOVEL',
            
        ]);
                \App\Models\BukuModels::create([
            
                'Id' => 5,
                'Title' => 'Bumi Manusia',
                'Author' => 'Pramoedya Ananta Toer',
                'Price_rent' => 4500,
                'Book_category' => 'NOVEL',
            
        ]);
    }
}
