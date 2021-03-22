<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\ProfileController;


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

// Route::get('/', function () {
//     return view('login');
// });

Route::get('/', [LoginController::class, 'index']);
Route::get('login', [LoginController::class, 'index']);
Route::get('profile', [ProfileController::class, 'index']);
Route::get('register', [RegisterController::class, 'index']);
Route::get('logout', [LoginController::class, 'logout']);

Route::post("submit", [LoginController::class, 'isAuth']);
Route::post("submitRegister", [RegisterController::class, 'registerUser']);
