<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

class RegisterController extends Controller
{
    function index()
    {
        $data = Session::get('token');

        if($data){
            return redirect('profile');
        }else{
            return view('register');
        }
    }

    function registerUser(Request $req)
    {
        $validated = $req->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:5'
          ]);
    
        $name = $req->input('name');
        $email = $req->input('email');
        $pass = $req->input('password');
        
        $request = Request::create('/api/register', 'POST',[
            'name' =>$name,
            'email'=>$email,
            'password'=>$pass
            ]);
        
        $response = Route::dispatch($request);
        $response = json_decode($response->content(), true);
   
        if($response != NULL){
            $token = $response['token'];
            Session::put('token',$token);
            return view("profile", ['token' => $token]);
        }else{
            return 'Some errors';
        } 
    }
}
