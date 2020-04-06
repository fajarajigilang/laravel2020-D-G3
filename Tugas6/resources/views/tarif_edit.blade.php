@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Sopir
                </div>
                <div class="card-body">
                    <a href="/tarif" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    @foreach($tarif as $t)
                    <form method="post" action="/tarif/update">
 
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>ID Tarif</label>
                            <input  type="text" name="tarif_id" class="form-control" value="{{ $t->tarif_id }}">
                        </div>

                        <div class="form-group">
                            <label>ID Kendaraan</label>
                            <input  type="text" name="kendaraan_id" class="form-control" value="{{ $t->kendaraan_id }}">
                        </div>
 
 
                        <div class="form-group">
                            <label>Tarif Perhari</label>
                            <input type="text" name="tarif_perhari" value="{{ $t->tarif_perhari }}"class="form-control" placeholder="Masukan Alamat Sopir"></input>
                        </div>
 
                        <div class="form-group">
                            <label>Tarif Overtime</label>
                            <input name="tarif_overtime" class="form-control" value="{{ $t->tarif_overtime }}"placeholder="Masukan Nama Sopir"></input>
                        </div>
 
                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>
 
                    </form>
                    @endforeach
                </div>
            </div>
        </div>
@endsection