<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('countries', function (Blueprint $table) {
            $table->string( 'countryCode')->primary();
            $table->string( 'name');
            $table->string( 'official_name_ar');
            $table->string( 'official_name_en')->nullable();
            $table->string( 'zipcode')->nullable();
            $table->string( 'ISO3166Alpha2')->nullable();
            $table->string( 'ISO3166Numeric')->nullable();
            $table->string( 'ArabicFormal')->nullable();
            $table->softDeletes();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('countries');
    }
}
