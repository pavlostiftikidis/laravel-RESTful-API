<?php
use Illuminate\Support\Facades\Session;
?>
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">


        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <style>
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            line-height: 60px;
            background-color: #f5f5f5;
        }

        form {
          float: none;
          margin: 20vh auto;
        }

        .profile{
          border: 1px solid black;
          padding: 30px;
          background-color: beige;
          width: 100%;
          overflow: auto;
        }
        </style>
        
    </head>
    <body>

    <header>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
    @if ( session()->get('token') )
    <li class="nav-item">
        <a class="nav-link" href="/logout">Logout</a>
      </li>
    @else
      <li class="nav-item">
        <a class="nav-link" href="/login">Login</a>
      </li>    
      <li class="nav-item">
        <a class="nav-link" href="/register">Register</a>
      </li>
      @endif
      
    </ul>
  </div>
</nav>
</header>
    
    
