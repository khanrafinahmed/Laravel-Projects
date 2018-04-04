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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/post', 'PostController@post')->middleware('auth');
Route::get('/profile', 'ProfileController@profile')->middleware('auth');
Route::get('/category', 'CategoryController@category')->middleware('auth');
Route::post('/addCategory', 'CategoryController@addCategory');
Route::post('/addProfile', 'ProfileController@addProfile');
Route::post('/addPost', 'PostController@addPost');
Route::get('/view/{id}', 'PostController@view');
Route::get('/edit/{id}', 'PostController@edit');
Route::post('/editPost/{id}', 'PostController@editPost');
Route::get('/delete/{id}', 'PostController@deletePost');
Route::get('/category/{id}', 'PostController@category');

