@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                   Edit Transaksi
                </div>
                <div class="card-body">
                    <a href="/transaksi" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    @foreach($transaksi as $tr)
                    <form method="post" action="/transaksi/update">
 
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label>ID Transaksi</label>
                            <input  type="text" name="transaksi_id" class="form-control" value="{{ $tr->transaksi_id }}">
                        </div>
                        <div class="form-group">
                            <label>ID Pelanggan</label>
                            <input  type="text" name="pelanggan_id" class="form-control" value="{{ $tr->pelanggan_id }}">
                        </div>
 
 
                        <div class="form-group">
                            <label>Sopir ID</label>
                            <input type="text" name="sopir_id" value="{{ $tr->sopir_id }}"class="form-control" placeholder="Masukan Alamat Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Tanggal Dimulai</label>
                            <input name="transaksi_tglmulai" class="form-control"value="{{ $tr->transaksi_tglmulai }}" placeholder="Masukan No Telephone Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Tanggal Selesai</label>
                            <input name="transaksi_tglselesai" class="form-control" value="{{ $tr->transaksi_tglselesai }}"placeholder="Masukan No KTP Sopir"></input>
                        </div>

                        <div class="form-group">
                            <label>Transaksi Hari</label>
                            <input name="transaksi_hari" class="form-control" value="{{ $tr->transaksi_hari }}"placeholder="Masukan No SIM Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Tanggal Overtime</label>
                            <input name="transaksi_tglovertime" class="form-control"value="{{ $tr->transaksi_tglovertime }}" placeholder="Masukan Nama Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Total</label>
                            <input name="transaksi_total" class="form-control"value="{{ $tr->transaksi_total }}" placeholder="Masukan Nama Sopir"></input>
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Status</label>
                            <input name="transaksi_status" class="form-control"value="{{ $tr->transaksi_status }}" placeholder="Masukan Nama Sopir"></input>
 
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