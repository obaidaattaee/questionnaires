<?php

use Illuminate\Database\Seeder;
use App\Models\Country;

class CountryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        echo "hello" ;
        // factory(\App\Models\Country::class,20)->create();
        $json = File::get("database/seeders/World-countries-ar.json");
        echo "hello" ;
        $data = json_decode($json);
        foreach ($data as $obj) {
            if($obj->countryCode != null){
                Country::create([
                    "name" => $obj->name,
                    "official_name_ar" => $obj->official_name_ar,
                    "official_name_en" => $obj->official_name_en,
                    "zipcode" => $obj->zipcode,
                    "ISO3166Alpha2" => $obj->ISO3166Alpha2,
                    "ISO3166Numeric" => $obj->ISO3166Numeric,
                    "ArabicFormal" => $obj->ArabicFormal,
                    "countryCode" => $obj->countryCode
                ]);
            }
        }
    }
}
