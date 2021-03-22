<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;


class LoginController extends Controller
{
    function index()
    {
      $data = Session::get('token');

        if(strlen($data) > 50){
            return redirect('profile');
        }else{
            return view('login');
        }
    }

    function isAuth(Request $req)
    {
      $validated = $req->validate([
        'email' => 'required|email',
        'password' => 'required|min:5'
      ]);

        $email = $req->input('email');
        $pass = $req->input('password');

        $request = Request::create('/api/login', 'POST',[
            'email'=>$email,
            'password'=>$pass
            ]);
      
        $response = Route::dispatch($request);
        $response = json_decode($response->content(), true);

        $first = array_key_first($response);
        
        if($first == 'token'){
            $token = $response['token'];
            Session::put('token',$token); 
            return redirect('profile');
            
        }else{
          return 'Unauthorize';
        } 
    }

    function logout()
    {
      Session::flush();
      return redirect('login');
    }
}
