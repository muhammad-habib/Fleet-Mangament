<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
//
//Route::middleware('auth:api')->get('/user', function (Request $request) {
//
//    return $request->user();
//});


Route::get('/user', function () {
    dd(\Illuminate\Support\Facades\Auth::user());
})->middleware('jwt.auth:api');


Route::get('/', function()
{
    $user = \App\User::query()->find(1);
    dd($user->createToken('Personal')->accessToken);
});
