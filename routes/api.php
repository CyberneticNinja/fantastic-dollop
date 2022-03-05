<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanyController;
use App\Models\User;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

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
Route::post('register',[LoginController::class,'store']);

Route::group(['middleware' => ['auth:sanctum']],function() {
    Route::get('company',[CompanyController::class,'index']);
    Route::get('company/{company}',[CompanyController::class,'show']);
    Route::put('company/{company}',[CompanyController::class,'update']);
    Route::post('company',[CompanyController::class,'store']);
    Route::delete('company/{company}',[CompanyController::class,'destroy']);
});

Route::post('/login', function (Request $request) {

    $request->validate([
        'email' => 'required|email',
        'password' => 'required',
        'device_name' => 'required',
    ]);
 
    $user = User::where('email', $request->email)->first();

 
    if (! $user || ! Hash::check($request->password, $user->password)) {
        throw ValidationException::withMessages([
            'email' => ['The provided credentials are incorrect.'],
        ]);
    }
 
    // return $user->createToken($request->device_name)->plainTextToken;
});