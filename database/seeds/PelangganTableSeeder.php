<?php

use Illuminate\Database\Seeder;

class PelangganTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('pelanggan')->insert([
            'pelanggan_nama' => 'aidho',
            'pelanggan_alamat' => 'asemtiga',
            'pelanggan_telpon' => '08765467899'
        ]);
    }
}
