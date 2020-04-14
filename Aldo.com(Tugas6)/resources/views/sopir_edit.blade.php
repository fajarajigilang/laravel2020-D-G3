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
                    @foreach($sopir as $s)
                    <form method="post" action="/sopir/update">
 
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>ID Sopir</label>
                            <input  type="text" name="sopir_id" class="form-control" value="{{ $s->sopir_id }}">
                        </div>
 
 
                        <div class="form-group">
                            <label>Alamat Sopir</label>
                            <input type="text" name="sopir_alamat" value="{{ $s->sopir_alamat }}"class="form-control" placeholder="Masukan Alamat Sopir"></input>
                        </div>
 
                        <div class="form-group">
                            <label>Nama Sopir</label>
                            <input name="sopir_nama" class="form-control" value="{{ $s->sopir_nama }}"placeholder="Masukan Nama Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>No Sopir</label>
                            <input name="sopir_telpon" class="form-control"value="{{ $s->sopir_telpon }}" placeholder="Masukan No Telephone Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>KTP Sopir</label>
                            <input name="sopir_ktp" class="form-control" value="{{ $s->sopir_ktp }}"placeholder="Masukan No KTP Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>SIM Sopir</label>
                            <input name="sopir_sim" class="form-control" value="{{ $s->sopir_sim }}"placeholder="Masukan No SIM Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>Status Sopir</label>
                            <input name="sopir_status" class="form-control"value="{{ $s->sopir_status }}" placeholder="Masukan Nama Sopir"></input>
 
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