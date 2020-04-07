@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Transaksi :</p>
	<form action="/transaksi/cari" method="GET">
		<input type="text" name="cari" placeholder="Cari Transaksi .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>
		
	<br/>
                <a href="/transaksi/tambah" class="btn btn-primary">Tambah</a>
                <div class="row">
                    <div class="col-16">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Transaksi</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                    <tr>
                                      <th scope="col">ID Transaksi</th>
                                      <th scope="col">ID Pelanggan</th>
                                      <th scope="col">ID Sopir</th>
                                      
                                      <th scope="col">Transaksi TGL Mulai</th>
                                      <th scope="col">Transaksi TGL Selesai</th>
                                      <th scope="col">Transaksi Hari</th>
                                      <th scope="col">Transaksi TGL Overtime</th>
                                      <th scope="col">  Transaksi Hari Overtime</th>
                                      <th scope="col">Transaksi Total</th>
                                      <th scope="col">Transaksi Status</th>
                                      <th scope="col">Opsi</th>

                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($transaksi as $tr)
	                                	<tr>
		                                	<td>{{ $tr->transaksi_id }}</td>
			                                <td>{{ $tr->pelanggan_id }}</td>
			                                <td>{{ $tr->sopir_id }}</td>
                                      <td>{{ $tr->transaksi_tglmulai }}</td>
                                      <td>{{ $tr->transaksi_tglselesai }}</td>
                                      <td>{{ $tr->transaksi_hari }}</td>
                                      <td>{{ $tr->transaksi_tglovertime }}</td>
                                      <td>{{ $tr->transaksi_hariovertime }}</td>
                                      <td>{{ $tr->transaksi_total }}</td>
                                      <td>{{ $tr->transaksi_status }}</td>
		                                	<td>
			                              	<a href="/transaksi/edit/{{ $tr->transaksi_id }}"class="btn btn-warning">Edit</a>
			                                	<a href="/transaksi/hapus/{{ $tr->transaksi_id }}" class="btn btn-danger">Hapus</a>
		                                    	</td>
		                                      </tr>
	                                     	@endforeach
                                  </tbody>
                            </table>
                            <br/>
	                Halaman : {{ $transaksi->currentPage() }} <br/>
	            Jumlah Data : {{ $transaksi->total() }} <br/>
	       Data Per Halaman : {{ $transaksi->perPage() }} <br/>
 
 
	           {{ $transaksi->links() }}
                        </div>
                        
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
@endsection