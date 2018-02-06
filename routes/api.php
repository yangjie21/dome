<?php


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('login', 'Api\AuthenticateController@login');
Route::post('register', 'Api\AuthenticateController@register');
Route::post('verify_code', 'Api\UserController@verify_code');
Route::group(['middleware' => 'auth:api'], function(){
	Route::post('details', 'Api\UserController@details');
	Route::post('qiniuyunToken', 'Api\QiniuController@qiniuyunToken');
    Route::post('logout', 'Api\AuthenticateController@logout');
});
Route::get('test', function(){
	return ['1', '2','3'];
});