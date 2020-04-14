<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class TarifController extends Controller
{
       public function tarif()
       {
          
        // mengambil data dari table pegawai
    	$tarif = DB::table('tarif')->paginate(10);
 
    	// mengirim data pegawai ke view index
    	return view('tarif',['tarif' => $tarif]);
       
       }

       public function tambah()
{
 
	// memanggil view tambah
	return view('tarif_tambah');
 
}

public function store(Request $request)
{
	// insert data ke table pegawai
	DB::table('tarif')->insert([
		'kendaraan_id' => $request->kendaraan_id,
		'tarif_perhari' => $request->tarif_perhari,
		'tarif_overtime' => $request->tarif_overtime
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/tarif');
 
}

      
public function edit($tarif_id)
{
	// mengambil data pegawai berdasarkan id yang dipilih
	$tarif = DB::table('tarif')->where('tarif_id',$tarif_id)->get();
	// passing data pegawai yang didapat ke view edit.blade.php
	return view('tarif_edit',['tarif' => $tarif]);
 
}
    
public function update(Request $request)
{
	// update data pegawai
	DB::table('tarif')->where('tarif_id',$request->tarif_id)->update([
		'kendaraan_id' => $request->kendaraan_id,
		'tarif_perhari' => $request->tarif_perhari,
		'tarif_overtime' => $request->tarif_overtime
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/tarif');
}
       
public function hapus($tarif_id)
{
	// menghapus data pegawai berdasarkan id yang dipilih
	DB::table('tarif')->where('tarif_id',$tarif_id)->delete();
		
	// alihkan halaman ke halaman pegawai
	return redirect('/tarif');
}

public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$tarif = DB::table('tarif')
		->where('tarif_perhari','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data pegawai ke view index
		return view('tarif',['tarif' => $tarif]);
 
	}
}