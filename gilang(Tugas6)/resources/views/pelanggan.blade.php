@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Pelanggan :</p>
	<form action="/pelanggan/cari" method="GET">
		<input type="text" name="cari" placeholder="Cari Pelanggann .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>
		
	<br/>
                <a href="/pelanggan/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Pelanggan</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                    <tr>
                                      <th scope="col">ID</th>
                                      <th scope="col">Nama Pelanggan</th>
                                      <th scope="col">Alamat Pelanggan</th>
                                      <th scope="col">No Pelanggan</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($pelanggan as $p)
                            <tr>
                                <td>{{ $p->pelanggan_id }}</td>
                                <td>{{ $p->pelanggan_nama }}</td>
                                <td>{{ $p->pelanggan_alamat }}</td>
                                <td>{{ $p->pelanggan_telpon }}</td>
                                <td>
                                    <a href="/pelanggan/edit/{{ $p->pelanggan_id }}" class="btn btn-warning">Edit</a>
                                    <a href="/pelanggan/hapus/{{ $p->pelanggan_id }}" class="btn btn-danger">Hapus</a>
                                </td>
                            </tr>
                            @endforeach
                                  </tbody>
                            </table>
                            <br/>
	                Halaman : {{ $pelanggan->currentPage() }} <br/>
	            Jumlah Data : {{ $pelanggan->total() }} <br/>
	       Data Per Halaman : {{ $pelanggan->perPage() }} <br/>
 
 
	           {{ $pelanggan->links() }}
                        
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