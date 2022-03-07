<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CompanyContactController;
use App\Models\User;
use App\Http\Controllers\AuthenticationController;
use Illuminate\Support\Facades\Hash;
// use Illuminate\Validation\ValidationException;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//register an account
Route::post('register',[AuthenticationController::class,'store']);

//return personal token
Route::post('makeToken',[AuthenticationController::class,'makeToken']);

Route::group(['middleware' => ['auth:sanctum']],function() {
    Route::get('company',[CompanyController::class,'index']);
    Route::get('company/{company}',[CompanyController::class,'show']);
    Route::put('company/{company}',[CompanyController::class,'update']);
    Route::post('company',[CompanyController::class,'store']);
    Route::delete('company/{company}',[CompanyController::class,'destroy']);

    Route::get('contact',[ContactController::class,'index']);
    Route::get('contact/{contact}',[ContactController::class,'show']);
    Route::put('company/{company}',[ContactController::class,'update']);
    Route::post('contact',[ContactController::class,'store']);
    Route::delete('contact/{contact}',[ContactController::class,'destroy']);

    Route::get('company-contacts',[CompanyContactController::class,'index']);
    Route::get('company-contacts/{id}',[CompanyContactController::class,'show']);
    Route::put('company-contacts/{id}',[CompanyContactController::class,'update']);
    Route::post('company-contacts',[CompanyContactController::class,'store']);
    Route::delete('company-contacts/{id}',[CompanyContactController::class,'destroy']);

    Route::delete('deleteToken',[AuthenticationController::class,'destroy']);
});