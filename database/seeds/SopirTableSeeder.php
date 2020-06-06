<?php

use Illuminate\Database\Seeder;
class SopirTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('sopir')->insert([
            'sopir_alamat' => 'jakarta',
            'sopir_nama' => 'edo',
            'sopir_telpon' => '0987655678',
            'sopir_ktp' => '098765446',
            'sopir_sim' => '098765678',
            'sopir_status' => 'jalan'
        ]);
    }
}
