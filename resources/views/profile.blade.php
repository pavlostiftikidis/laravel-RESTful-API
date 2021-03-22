@include('partials/header')

<div class="container">
<h1>Profile</h1>
<hr>
<h4>User token: </h4>
    <div class="profile">
        
        <p>{{$token}}</p>
    </div>
</div>

@include('partials/footer')