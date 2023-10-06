<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RentalModels extends Model
{
    use HasFactory;
    public $table = 'rent';

    protected $fillable = [
        'Customer_id',
        'Book_id',
        'Date_Rent',
        'Date_Return',
    ];

    // Definisi relasi dengan tabel Customer
    public function customer()
    {
        return $this->belongsTo(CustomerModels::class, 'Customer_id', 'id');
    }

    // Definisi relasi dengan tabel Book
    public function book()
    {
        return $this->belongsTo(BukuModels::class, 'Book_id');
    }
}
