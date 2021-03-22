<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ProfileController extends Controller
{
    function index()
    {
        $data = Session::get('token');

        if($data){
            return view("profile", ['token' => $data]); 
        }else{
            return redirect('login');
        }
        
    }
}
