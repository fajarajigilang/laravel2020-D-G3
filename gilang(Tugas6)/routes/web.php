<?php



Auth::routes();
Route::get('/transaksi', 'TransaksiController@transaksi');
Route::get('/transaksi/tambah','TransaksiController@tambah');
Route::post('/transaksi/store','TransaksiController@store');
Route::get('/transaksi/edit/{transaksi_id}','TransaksiController@edit');
Route::post('/transaksi/update','TransaksiController@update');
Route::get('/transaksi/cari','TransaksiController@cari');
Route::get('/pelanggan', 'PelangganController@pelanggan');
Route::get('/pelanggan/tambah','PelangganController@tambah');
Route::post('/pelanggan/store','PelangganController@store');
Route::get('/pelanggan/cari','PelangganController@cari');
Route::get('/tarif', 'TarifController@tarif');
Route::get('/tarif/tambah','TarifController@tambah');
Route::post('/tarif/store','TarifController@store');
Route::get('/tarif/edit/{id}','TarifController@edit');
Route::post('/tarif/update','TarifController@update');
Route::get('/tarif/hapus/{id}','TarifController@hapus');
Route::get('/tarif/cari','TarifController@cari');
Route::get('/sopir', 'SopirController@sopir');
Route::get('/sopir/tambah', 'SopirController@tambah');
Route::post('/sopir/store', 'SopirController@store');
Route::get('/sopir/edit/{sopir_id}','SopirController@edit');
Route::post('/sopir/update','SopirController@update');
Route::get('/sopir/hapus/{id}','SopirController@hapus');
Route::get('/sopir/cari','SopirController@cari');
Route::get('/kendaraan', 'KendaraanController@kendaraan');
Route::get('/kendaraan/tambah','KendaraanController@tambah');
Route::post('/kendaraan/store','KendaraanController@store');
Route::get('/kendaraan/edit/{kendaraan_id}','KendaraanController@edit');
Route::post('/kendaraan/update','KendaraanController@update');
Route::get('/kendaraan/cari','KendaraanController@cari');
Route::get('/dashboard', 'DashboardController@dashboard');
Route::get('/', 'HomeAwalController@homeawal');
Route::get('/menu', 'HomeAwalController@menu');
Route::get('/about', 'HomeAwalController@about');
Route::get('/profile', 'HomeAwalController@profile');
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/admin', function(){
    return view('admin');
})->name('adminpage');
Route::get('admin-login','Auth\AdminLoginController@showLoginForm');
Route::post('admin-login', ['as' => 'admin-login', 'uses' => 'Auth\AdminLoginController@login']);
Route::get('admin-register','Auth\AdminLoginController@showRegisterPage');
Route::post('admin-register', 'Auth\AdminLoginController@register')->name('admin.register');
