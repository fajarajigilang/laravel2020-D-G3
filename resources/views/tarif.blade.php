@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Tarif :</p>
	<form action="/tarif/cari" method="GET">
		<input type="text" name="cari" placeholder="Cari Tarif .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>
		
	<br/>
                <a href="/tarif/tambah" class="btn btn-primary">Tambah</a>
                <br>
                <br>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title m-b-0">Tarif</h5>
                            </div>
                            <table class="table">
                                  <thead class="thead-dark">
                                    <tr>
                                      <th scope="col">Tarif ID</th>
                                      <th scope="col">Kendaraan ID</th>
                                      <th scope="col">Tarif Perhari</th>
                                      <th scope="col">Tarif Overtime</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($tarif as $t)
		                               <tr>
			                               <td>{{ $t->tarif_id }}</td>
			                               <td>{{ $t->kendaraan_id }}</td>
			                              <td>{{ $t->tarif_perhari }}</td>
		                              	<td>{{ $t->tarif_overtime }}</td>
			                              <td>
				                            <a href="/tarif/edit/{{ $t->tarif_id }}"class="btn btn-warning">Edit</a>
				                           <a href="/tarif/hapus/{{ $t->tarif_id }}"class="btn btn-danger">Hapus</a>
			                              </td>
		                               </tr>
		                                @endforeach
                                   
                                  </tbody>
                            </table>
                            <br/>
	                Halaman : {{ $tarif->currentPage() }} <br/>
	            Jumlah Data : {{ $tarif->total() }} <br/>
	       Data Per Halaman : {{ $tarif->perPage() }} <br/>
 
 
	           {{ $tarif->links() }}
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