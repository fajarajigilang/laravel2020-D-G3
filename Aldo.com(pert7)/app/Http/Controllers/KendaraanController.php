<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class KendaraanController extends Controller
{
       public function kendaraan()
       {
        $kendaraan = DB::table('kendaraan')->paginate(10);
 
    	// mengirim data pegawai ke view index
    	return view('kendaraan',['kendaraan' => $kendaraan]);

       }
       
       public function tambah()
       {
 
	      // memanggil view tambah
	      return view('kendaraan_tambah');
 
        }

        public function store(Request $request)
        {
	// insert data ke table pegawai
	DB::table('kendaraan')->insert([
		'kendaraan_id' => $request->kendaraan_id,
		'kendaraan_platnomor' => $request->kendaraan_platnomor,
        'kendaraan_merk' => $request->kendaraan_merk,
        'kendaraan_tipe' => $request->kendaraan_tipe,
        'kendaraan_tahunrakit' => $request->kendaraan_tahunrakit,
        'kendaraan_seat' => $request->kendaraan_seat,
        'kendaraan_foto' => $request->kendaraan_foto,
        'kendaraan_fasilitas' => $request->kendaraan_fasilitas,
        'kendaraan_status' => $request->kendaraan_status
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/kendaraan');
 
         }
public function edit($kendaraan_id)
{
	// mengambil data pegawai berdasarkan id yang dipilih
	$kendaraan = DB::table('kendaraan')->where('kendaraan_id',$kendaraan_id)->get();
	// passing data pegawai yang didapat ke view edit.blade.php
	return view('kendaraan_edit',['kendaraan' => $kendaraan]);
 
}

public function update(Request $request)
{
	// update data pegawai
	DB::table('kendaraan')->where('kendaraan_id',$request->kendaraan_id)->update([
		'pelanggan_id' => $request->pelanggan_id,
		'sopir_id' => $request->sopir_id,
        'transaksi_tglmulai' => $request->transaksi_tglmulai,
        'transaksi_tglselesai' => $request->transaksi_tglselesai,
        'transaksi_hari' => $request->transaksi_hari,
        'transaksi_tglovertime' => $request->transaksi_tglovertime,
        'transaksi_hariovertime' => $request->transaksi_hariovertime,
        'transaksi_total' => $request->transaksi_total,
        'transaksi_status' => $request->transaksi_status
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/kendaraan');
}

public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$kendaraan = DB::table('kendaraan')
		->where('kendaraan_merk','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data pegawai ke view index
		return view('kendaraan',['kendaraan' => $kendaraan]);
 
	}


      

    

       
}