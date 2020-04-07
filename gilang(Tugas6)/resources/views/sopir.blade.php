@extends('layouts.template')
@section('container')

<div class="container-fluid">

                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="col-md-6 col-lg-5 col-xlg-3">
                <p>Cari Data Sopir :</p>
	<form action="/sopir/cari" method="GET">
		<input type="text" name="cari" placeholder="Cari Sopir .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>
		
	<br/>
                    </div>
                    </div>
                <a href="/sopir/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Sopir</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                    <tr>
                                      <th scope="col">ID</th>
                                      <th scope="col">Alamat Sopir</th>
                                      <th scope="col">Nama Sopir</th>
                                      <th scope="col">No Sopir</th>
                                      <th scope="col">KTP Sopir</th>
                                      <th scope="col">SIM Sopir</th>
                                      <th scope="col">Status Sopir</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($sopir as $s)
                            <tr>
                                <td>{{ $s->sopir_id }}</td>
                                <td>{{ $s->sopir_alamat }}</td>
                                <td>{{ $s->sopir_nama }}</td>
                                <td>{{ $s->sopir_telpon }}</td>
                                <td>{{ $s->sopir_ktp }}</td>
                                <td>{{ $s->sopir_sim }}</td>
                                <td>{{ $s->sopir_status }}</td>
                                <td>
                                    <a href="/sopir/edit/{{ $s->sopir_id }}" class="btn btn-warning">Edit</a>
                                    <a href="/sopir/hapus/{{ $s->sopir_id }}" class="btn btn-danger">Hapus</a>
                                </td>
                            </tr>
                            @endforeach
                                  </tbody>
                            </table>

                            <br/>
	             Halaman : {{ $sopir->currentPage() }} <br/>
	         Jumlah Data : {{ $sopir->total() }} <br/>
	    Data Per Halaman : {{ $sopir->perPage() }} <br/>
 
 
	{{ $sopir->links() }}
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