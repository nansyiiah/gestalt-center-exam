<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CustomerModels;
use App\Models\RentalModels;
class CustomerController extends Controller
{
    public function index()
    {
        // Mengambil data customer yang telah melakukan rental buku lebih dari 10 kali
        $customerData = CustomerModels::has('rentals', '>', 10)->get();
        $data = CustomerModels::all();
        // Mengembalikan data customer dalam bentuk respons JSON
        return response()->json(["all_customers" => $data, "customers_10"=>$customerData]);
    }
}
