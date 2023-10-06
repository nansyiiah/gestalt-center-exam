<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        \App\Models\RentalModels::create([
            
                'Id' => 1,
                'Customer_id' => 1,
                'Book_id' => 3,
                'Date_Rent' => '2023-10-01',
                'Date_Return' => '2023-10-03',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 2,
                'Customer_id' => 1,
                'Book_id' => 4,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 3,
                'Customer_id' => 1,
                'Book_id' => 2,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',
   
        ]);
                \App\Models\RentalModels::create([

                'Id' => 4,
                'Customer_id' => 1,
                'Book_id' => 3,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 5,
                'Customer_id' => 1,
                'Book_id' => 1,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 6,
                'Customer_id' => 1,
                'Book_id' => 2,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 7,
                'Customer_id' => 1,
                'Book_id' => 2,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 8,
                'Customer_id' => 1,
                'Book_id' => 2,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 9,
                'Customer_id' => 1,
                'Book_id' => 1,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 10,
                'Customer_id' => 1,
                'Book_id' => 4,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([
 
                'Id' => 11,
                'Customer_id' => 3,
                'Book_id' => 4,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 12,
                'Customer_id' => 2,
                'Book_id' => 1,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',

        ]);
                \App\Models\RentalModels::create([

                'Id' => 13,
                'Customer_id' => 3,
                'Book_id' => 1,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',


        ]);
                \App\Models\RentalModels::create([

                'Id' => 14,
                'Customer_id' => 1,
                'Book_id' => 2,
                'Date_Rent' => '2023-10-08',
                'Date_Return' => '2023-10-09',
 
        ]);
    }
}
