<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateRentsTable extends Migration
{
    public function up()
    {
        Schema::create('rent', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('Customer_id')->unsigned()->nullable();
            $table->bigInteger('Book_id')->unsigned()->nullable();
            $table->date('Date_Rent');
            $table->date('Date_Return')->nullable();
            $table->timestamps();
            
            $table->foreign('Customer_id')->references('id')->on('customer');
            $table->foreign('Book_id')->references('id')->on('buku');
            
        });
        DB::statement('ALTER TABLE rent ADD CONSTRAINT date_return_check CHECK (Date_Return > Date_Rent)');
    }

    public function down()
    {
        Schema::dropIfExists('rent');
    }
}

