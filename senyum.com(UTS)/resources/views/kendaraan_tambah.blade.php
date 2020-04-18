@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    TAMBAH KENDARAAN
                </div>
                <div class="card-body">
                    <a href="/kendaraan" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    
                    <form method="post" action="/kendaraan/store">
 
                        {{ csrf_field() }}

 
                        <div class="form-group">
                            <label>Platnomor</label>
                            <input name="kendaraan_platnomor" class="form-control" placeholder="Masukan Tarif Perhari"></input>
 
                             @if($errors->has('kendaraan_platnomor'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_platnomor')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Merk</label>
                            <input name="kendaraan_merk" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('kendaraan_merk'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_merk')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Tipe</label>
                            <input name="kendaraan_tipe" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('kendaraan_tipe'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_tipe')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Tahun</label>
                            <input name="kendaraan_tahunrakit" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('kendaraan_tahunrakit'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_tahunrakit')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Seat</label>
                            <input name="kendaraan_seat" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('kendaraan_seat'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_seat')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Foto</label>
                            <input name="kendaraan_foto" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('kendaraan_foto'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_foto')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Fasilitas</label>
                            <input name="kendaraan_fasilitas" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('kendaraan_fasilitas'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_fasilitas')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Status</label>
                            <input name="kendaraan_status" class="form-control" placeholder="Masukan Tarif Overtime"></input>
 
                             @if($errors->has('kendaraan_status'))
                                <div class="text-danger">
                                    {{ $errors->first('kendaraan_status')}}
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