@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Sopir
                </div>
                <div class="card-body">
                    <a href="/sopir" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    @foreach($kendaraan as $k)
                    <form method="post" action="/kendaraan/update">
 
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>Kendaraan ID</label>
                            <input  type="text" name="kendaraan_id" class="form-control" value="{{ $k->kendaraan_id }}">
                        </div>
                        <div class="form-group">
                            <label>Kendaraan Platnomor</label>
                            <input  type="text" name="kendaraan_platnomor" class="form-control" value="{{ $k->kendaraan_platnomor }}">
                        </div>
 
 
                        <div class="form-group">
                            <label>Kendaraan Merk</label>
                            <input type="text" name="kendaraan_merk" value="{{ $k->kendaraan_merk }}"class="form-control" placeholder="Masukan Alamat Sopir"></input>
                        </div>
 
                        <div class="form-group">
                            <label>Kendaraan Tipe</label>
                            <input name="kendaraan_tipe" class="form-control" value="{{ $k->kendaraan_tipe }}"placeholder="Masukan Nama Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Tahun Rakit</label>
                            <input name="kendaraan_tahunrakit" class="form-control"value="{{ $k->kendaraan_tahunrakit }}" placeholder="Masukan No Telephone Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Seat</label>
                            <input name="kendaraan_seat" class="form-control" value="{{ $k->kendaraan_seat }}"placeholder="Masukan No KTP Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Photo</label>
                            <input name="kendaraan_foto" class="form-control" value="{{ $k->kendaraan_foto }}"placeholder="Masukan No SIM Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>Kendaraan Fasilitas</label>
                            <input name="kendaraan_fasilitas" class="form-control"value="{{ $k->kendaraan_fasilitas }}" placeholder="Masukan Nama Sopir"></input>
 
                        </div>
                        <div class="form-group">
                            <label>Kendaraan Status</label>
                            <input name="kendaraan_status" class="form-control"value="{{ $k->kendaraan_status }}" placeholder="Masukan Nama Sopir"></input>
 
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