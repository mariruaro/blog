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
    return view('auth/login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/post', 'PostController@index')->name('post');
Route::post('post/create', 'PostController@create')->name('post_create');

Route::get('/search', 'SearchController@index')->name('search');
Route::get('/search/date', 'SearchController@date')->name('search');
Route::get('/details/{id}', 'DetailsController@index')->name('details');
Route::get('/my-posts', 'MyController@index')->name('my');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/post', 'PostController@index')->name('post');
Route::get('/search', 'SearchController@index')->name('search');
Route::get('/search/date', 'SearchController@date')->name('search');
Route::get('/details/{id}', 'DetailsController@index')->name('details');
