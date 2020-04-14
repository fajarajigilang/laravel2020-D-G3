@extends('layouts.template')
@section('container')
<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <p>Cari Data Kendaraan :</p>
	<form action="/kendaraan/cari" method="GET">
		<input type="text" name="cari" placeholder="Cari Kendaraan .." value="{{ old('cari') }}">
		<input type="submit" value="CARI">
	</form>
		
	<br/>
                <a href="/kendaraan/tambah" class="btn btn-primary">Tambah</a>
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
                                      <th scope="col">Kendaraan ID</th>
                                      <th scope="col">Platnomor</th>
                                      <th scope="col">Merk</th>
                                      <th scope="col">Tipe</th>
                                      <th scope="col">Tahun</th>
                                      <th scope="col">Seat</th>
                                      <th scope="col">Foto</th>
                                      <th scope="col">Fasilits</th>
                                      <th scope="col">Status</th>
                                      <th scope="col">Opsi</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                  @foreach($kendaraan as $k)
		                               <tr>
			                               <td>{{ $k->kendaraan_id }}</td>
			                               <td>{{ $k->kendaraan_platnomor }}</td>
			                              <td>{{ $k->kendaraan_merk }}</td>
		                              	<td>{{ $k->kendaraan_tipe }}</td>
                                    <td>{{ $k->kendaraan_tahunrakit }}</td>
                                    <td>{{ $k->kendaraan_seat }}</td>
                                    <td>{{ $k->kendaraan_foto }}</td>
                                    <td>{{ $k->kendaraan_fasilitas }}</td>
                                    <td>{{ $k->kendaraan_status }}</td>
			                              <td>
				                            <a href="/kendaraan/edit/{{ $k->kendaraan_id }}"class="btn btn-warning">Edit</a>
				                           <a href="/kendaraan/hapus/{{ $k->kendaraan_id }}"class="btn btn-danger">Hapus</a>
			                              </td>
		                               </tr>
		                                @endforeach
                                   
                                  </tbody>
                            </table>
                            <br/>
	                Halaman : {{ $kendaraan->currentPage() }} <br/>
	            Jumlah Data : {{ $kendaraan->total() }} <br/>
	       Data Per Halaman : {{ $kendaraan->perPage() }} <br/>
 
 
	           {{ $kendaraan->links() }}
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

































