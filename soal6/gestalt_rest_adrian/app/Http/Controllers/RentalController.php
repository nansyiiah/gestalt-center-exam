<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RentalModels;

class RentalController extends Controller
{
    public function index()
    {
        $data = RentalModels::with('book', 'customer')->get();
        return response()->json(["data" => $data]);
    }
    public function getCustomerId($id)
    {
        $data = RentalModels::where('Customer_id', $id)->with('book')->get();
        return response()->json(["data" => $data]);
    }
}
