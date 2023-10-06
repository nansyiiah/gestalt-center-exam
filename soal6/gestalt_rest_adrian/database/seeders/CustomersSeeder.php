<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CustomersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        \App\Models\CustomerModels::create([
            
                'Id' => 1,
                'Name' => 'Adrian',
                'identity_card_number' => '123',
                'address' => 'aw',

        ]);
                \App\Models\CustomerModels::create([

                'Id' => 2,
                'Name' => 'Kurniawan',
                'identity_card_number' => '321',
                'address' => 'wa',

        ]);
                \App\Models\CustomerModels::create([

                'Id' => 3,
                'Name' => 'Adrian Kurniawan',
                'identity_card_number' => '456',
                'address' => 'www',
            
        ]);
    }
}
