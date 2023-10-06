<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BukuModels;

class BukuController extends Controller
{
    public function index()
    {
        $data = BukuModels::all();
        $data_buku_not_rented = BukuModels::notRented()->get();
        return response()->json(["buku" => $data, 'buku_tidak_pernah_dirental' => $data_buku_not_rented]);
    }
    public function harga_buku()
    {
        $data = BukuModels::where('Price_rent', '>', 2000)->where('Price_rent', '<', 6000)->get();
        return response()->json(['harga_buku_diantara_2000_6000' => $data]);
    }
}
