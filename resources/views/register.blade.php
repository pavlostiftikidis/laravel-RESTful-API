<?php
use \App\Http\Controllers\RegisterController;
use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;
?>
@include('partials/header')

<div class="container">

<div class="row">

<form action="submitRegister" method="POST">
  @csrf
  <h3>Register User</h3>
  <hr>
  <div class="form-group">
    <label for="exampleInputName">Name</label>
    <input type="text" name="name" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
    @if ($errors->has('name'))
      <span class="text-danger">{{ $errors->first('name') }}</span>
    @endif
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
    @if ($errors->has('email'))
      <span class="text-danger">{{ $errors->first('email') }}</span>
    @endif
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
    @if ($errors->has('password'))
      <span class="text-danger">{{ $errors->first('password') }}</span>
    @endif
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>



@include('partials/footer')