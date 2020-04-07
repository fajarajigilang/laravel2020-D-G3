@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    TAMBAH TARIF
                </div>
                <div class="card-body">
                    <a href="/tarif" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    
                    <form method="post" action="/tarif/store">
 
                        {{ csrf_field() }}
 
                        <div class="form-group">
                            <label>Kendaraan ID</label>
                            <input type="text" name="kendaraan_id" class="form-control" placeholder="Masukan Kendaraan Id">
 
                            @if($errors->has('kendaraan_id'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_id')}}
                                </div>
                            @endif
 
                        </div>
 
                        <div class="form-group">
                            <label>Tarif Perhari</label>
                            <input name="tarif_perhari" class="form-control" placeholder="Masukan Tarif Perhari"></input>
 
                             @if($errors->has('tarif_perhari'))
                                <div class="text-danger">
                                    {{ $errors->first('tarif_perhari')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Tarif Overtime</label>
                            <input name="tarif_overtime" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('tarif_overtime'))
                                <div class="text-danger">
                                    {{ $errors->first('tarif_overtime')}}
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