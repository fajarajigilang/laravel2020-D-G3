@extends('layouts.template')
@section('container')
<div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    TAMBAH TRANSAKSI
                </div>
                <div class="card-body">
                    <a href="/transaksi" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    
                    <form method="post" action="/transaksi/store">
 
                        {{ csrf_field() }}
 
                        <div class="form-group">
                            <label>Pelanggan ID</label>
                            <input type="text" name="pelanggan_id" class="form-control" placeholder="Masukan Pelanggan ID">
 
                            @if($errors->has('pelanggan_id'))
                                <div class="text-danger">
                                    {{ $errors->first('pelanggan_id')}}
                                </div>
                            @endif
 
                        </div>
 
                        <div class="form-group">
                            <label>Sopir ID</label>
                            <input name="sopir_id" class="form-control" placeholder="Masukan Sopir ID"></textarea>
 
                             @if($errors->has('sopir_id'))
                                <div class="text-danger">
                                    {{ $errors->first('sopir_id')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Tanggal Di Mulai</label>
                            <input name="transaksi_tglmulai" class="form-control" placeholder="Masukan Transaksi Tanggal Dimulai"></input>
 
                             @if($errors->has('transaksi_tglmulai'))
                                <div class="text-danger">
                                    {{ $errors->first('transaksi_tglmulai')}}
                                </div>
                            @endif
 
                        </div>
                        <div class="form-group">
                            <label>Transaksi Tanggal Selesai</label>
                            <input name="transaksi_tglselesai" class="form-control" placeholder="Masukan Transaksi Tanggal Selesai"></input>
 
                             @if($errors->has('transaksi_tglselesai'))
                                <div class="text-danger">
                                    {{ $errors->first('transaksi_tglselesai')}}
                                </div>
                            @endif
 
                        </div>
                        <div class="form-group">
                            <label>Transaksi Hari</label>
                            <input name="transaksi_hari" class="form-control" placeholder="Masukan Transaksi Hari"></input>
 
                             @if($errors->has('transaksi_hari'))
                                <div class="text-danger">
                                    {{ $errors->first('transaksi_hari')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Tanggal Overtime</label>
                            <input name="transaksi_tglovertime" class="form-control" placeholder="Masukan Transaksi Tanggal Overtime"></input>
 
                             @if($errors->has('transaksi_tglovertime'))
                                <div class="text-danger">
                                    {{ $errors->first('transaksi_tglovertime')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Hari Overtime</label>
                            <input name="transaksi_hariovertime" class="form-control" placeholder="Masukan Transaksi Hari Overtime"></input>
 
                             @if($errors->has('transaksi_hariovertime'))
                                <div class="text-danger">
                                    {{ $errors->first('transaksi_hariovertime')}}
                                </div>
                            @endif
 
                        </div>
                        <div class="form-group">
                            <label>Transaksi Total</label>
                            <input name="transaksi_total" class="form-control" placeholder="Masukan Transaksi Total"></input>
 
                             @if($errors->has('transaksi_total'))
                                <div class="text-danger">
                                    {{ $errors->first('transaksi_total')}}
                                </div>
                            @endif
 
                        </div>

                        <div class="form-group">
                            <label>Transaksi Status</label>
                            <input name="transaksi_status" class="form-control" placeholder="Masukan Transaksi Tanggal Overtime"></input>
 
                             @if($errors->has('transaksi_status'))
                                <div class="text-danger">
                                    {{ $errors->first('transaksi_status')}}
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