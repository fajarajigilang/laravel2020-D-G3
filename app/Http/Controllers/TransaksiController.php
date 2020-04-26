<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class TransaksiController extends Controller
{
       public function transaksi()
       {
          // mengambil data dari table pegawai
    	$transaksi = DB::table('transaksi')->paginate(10);
 
    	// mengirim data pegawai ke view index
    	return view('transaksi',['transaksi' => $transaksi]);

       }
       
       public function tambah()
       {
 
	      // memanggil view tambah
	      return view('transaksi_tambah');
 
        }

        public function store(Request $request)
        {
	// insert data ke table pegawai
	DB::table('transaksi')->insert([
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
	return redirect('/transaksi');
 
         }
public function edit($transaksi_id)
{
	// mengambil data pegawai berdasarkan id yang dipilih
	$transaksi = DB::table('transaksi')->where('transaksi_id',$transaksi_id)->get();
	// passing data pegawai yang didapat ke view edit.blade.php
	return view('transaksi_edit',['transaksi' => $transaksi]);
 
}

public function update(Request $request)
{
	// update data pegawai
	DB::table('transaksi')->where('transaksi_id',$request->transaksi_id)->update([
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
	return redirect('/transaksi');
}

public function hapus($transaksi_id)
{
	// menghapus data pegawai berdasarkan id yang dipilih
	DB::table('transaksi')->where('transaksi_id',$transaksi_id)->delete();
		
	// alihkan halaman ke halaman pegawai
	return redirect('/transaksi');
}

public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$transaksi = DB::table('transaksi')
		->where('transaksi_tglselesai','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data pegawai ke view index
		return view('transaksi',['transaksi' => $transaksi]);
 
	}
}