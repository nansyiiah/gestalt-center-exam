<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
Use App\Models\RentalModels;

class CustomerModels extends Model
{
    use HasFactory;
    public $table = 'customer';

    protected $fillable = [
        'Name',
        'identity_card_number',
        'address',
    ];

    protected $primaryKey = 'Id'; // Nama kolom primary key (jika berbeda)

    public $timestamps = false; // Tidak menggunakan kolom created_at dan updated_at

    // Definisi aturan validasi jika diperlukan
    public static $rules = [
        'Name' => 'required|max:100',
        'identity_card_number' => 'required|max:50',
        'address' => 'max:50',
    ];

    public function rentals()
    {
        return $this->hasMany(RentalModels::class, 'Customer_id');
    }
}
