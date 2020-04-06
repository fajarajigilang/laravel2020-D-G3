<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


class SopirController extends Controller
{
       public function sopir()
       {
           $sopir = DB::table('sopir')->paginate(10);;
           return view('sopir',['sopir' => $sopir]);
       }

       public function tambah()
       {
           return view('sopir_tambah');
       }

       public function store(Request $request)
       {
        DB::table('sopir')->insert([
               'sopir_alamat' => $request->sopir_alamat,
               'sopir_nama' => $request->sopir_nama,
               'sopir_telpon' => $request->sopir_telpon,
               'sopir_ktp' => $request->sopir_ktp,
               'sopir_sim' => $request->sopir_sim,
               'sopir_status' => $request->sopir_status
           ]);
    
    
           return redirect('/sopir');
       }

       public function edit($sopir_id)
        {
	
	$sopir = DB::table('sopir')->where('sopir_id',$sopir_id)->get();
	// passing data pegawai yang didapat ke view edit.blade.php
	return view('sopir_edit',['sopir' => $sopir]);
 
        }

        public function update(Request $request)
{
	// update data pegawai
	DB::table('sopir')->where('sopir_id',$request->sopir_id)->update([
		'sopir_alamat' => $request->sopir_alamat,
               'sopir_nama' => $request->sopir_nama,
               'sopir_telpon' => $request->sopir_telpon,
               'sopir_ktp' => $request->sopir_ktp,
               'sopir_sim' => $request->sopir_sim,
               'sopir_status' => $request->sopir_status
	]);
	// alihkan halaman ke halaman pegawai
	return redirect('/sopir');
}

public function hapus($sopir_id)
{
	// menghapus data pegawai berdasarkan id yang dipilih
	DB::table('sopir')->where('sopir_id',$sopir_id)->delete();
		
	// alihkan halaman ke halaman pegawai
	return redirect('/sopir');
}

public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$sopir = DB::table('sopir')
		->where('sopir_nama','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data pegawai ke view index
		return view('sopir',['sopir' => $sopir]);
 
	}
       
}