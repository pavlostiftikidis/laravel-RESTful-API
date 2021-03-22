<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Company;

class CompanyController extends Controller
{
    public function index()
    {
        // fetch data by user_id
        //$posts = auth()->user()->companies;

        $posts = Company::all();
 
        return response()->json([
            'success' => true,
            'data' => $posts
        ]);
    }    

}
