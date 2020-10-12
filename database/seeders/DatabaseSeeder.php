<?php

namespace Database\Seeders;

use App\Models\Country;
use App\Models\FeildType;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
//        $this->call(\CountryTableSeeder::class);
        User::create([
            'name' => "admin" ,
            'email' => "a@a.com",
            'password' => bcrypt('123123123'),
        ]);
        $data = [
            ['type' => 'text'] ,
            ['type' => 'email'] ,
            ['type' => 'date'] ,
            ['type' => 'gender'] ,
            ['type' => 'country'] ,
            ['type' => 'image'] ,
        ];

        FeildType::insert($data);
        echo "hello" ;
        $json = File::get("database/seeders/World-countries-ar.json");

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
