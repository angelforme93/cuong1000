<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('index','FEContro@index');

Route::get('sp_danhmuc/{id}','FEContro@sp_danhmuc');

Route::post('search','FEContro@search');

Route::get('chitietsp/{id}','FEContro@chitietsp');

Route::post('search/{id}','FEContro@insertCm');

Route::get('giohang','FEContro@giohang');

Route::get('themgiohang/{id}','FEContro@themgiohang');



Route::get('xoatoangio','FEContro@xoatoangio');

Route::get('xoagiohang','FEContro@xoagiohang');

Route::get('suagiohang','FEContro@suagiohang');

Route::post('xacnhan','FEContro@xacnhan');

Route::get('chitietgiohang','FEContro@chitietgiohang');

