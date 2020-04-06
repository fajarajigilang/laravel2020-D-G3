@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    TAMBAH PELANGGAN
                </div>
                <div class="card-body">
                    <a href="/pelanggan" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    
                    <form method="post" action="/pelanggan/store">
 
                        {{ csrf_field() }}
 
                        
                        <div class="form-group">
                            <label>Nama Pelanggan</label>
                            <input name="pelanggan_nama" class="form-control" placeholder="Masukan Tarif Perhari"></input>
 
                             @if($errors->has('pelanggan_nama'))
                                <div class="text-danger">
                                    {{ $errors->first('pelanggan_nama')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Alamat Pelanggan</label>
                            <input name="pelanggan_alamat" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('pelanggan_alamat'))
                                <div class="text-danger">
                                    {{ $errors->first('pelanggan_alamat')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>No Telpon Pelanggan</label>
                            <input name="pelanggan_telpon" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('pelanggan_telpon'))
                                <div class="text-danger">
                                    {{ $errors->first('pelanggan_telpon')}}
                                </div>
                            @endif
 
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>
 
                    </form>
 
                </div>
            </div>
        </div>
@endsection