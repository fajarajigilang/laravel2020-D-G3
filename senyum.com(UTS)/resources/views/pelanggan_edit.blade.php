@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Pelanggan
                </div>
                <div class="card-body">
                    <a href="/pelanggan" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    @foreach($pelanggan as $p)
                    <form method="post" action="/sopir/update">
 
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>ID Pelanggan</label>
                            <input  type="text" name="pelanggan_id" class="form-control" value="{{ $p->pelanggan_id }}">
                        </div>
 
 
                        <div class="form-group">
                            <label>Alamat Pelanggan</label>
                            <input type="text" name="pelanggan_alamat" value="{{ $p->pelanggan_alamat }}"class="form-control" placeholder="Masukan Alamat Pelanggan"></input>
                        </div>
 
                        <div class="form-group">
                            <label>Telepon Pelanggan</label>
                            <input name="pelanggan_telpon" class="form-control" value="{{ $p->pelanggan_telpon }}"placeholder="Masukan No Telpon Pelanggan"></input>
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