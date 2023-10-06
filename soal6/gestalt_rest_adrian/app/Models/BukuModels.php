<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
Use App\Models\RentalModels;

class BukuModels extends Model
{
    use HasFactory;
    public $table = 'buku';

    protected $fillable = [
        'Title',
        'author',
        'Price_rent',
        'Book_category',
    ];

    protected $casts = [
        'Price_rent' => 'decimal:2', // Tipe data Price_rent
    ];

    public function scopeManga($query)
    {
        return $query->where('Book_category', 'MANGA');
    }

    public function scopeNovel($query)
    {
        return $query->where('Book_category', 'NOVEL');
    }

    public function scopeMagazine($query)
    {
        return $query->where('Book_category', 'MAGAZINE');
    }
    public function rents()
    {
        return $this->hasMany(RentalModels::class, 'Book_id');
    }
    public function scopeNotRented($query)
    {
        return $query->whereDoesntHave('rents');
    }


}
