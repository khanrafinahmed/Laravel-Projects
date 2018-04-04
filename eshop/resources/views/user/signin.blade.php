@extends('layouts.master')

@section('content')
    <h3>Sign In</h3>
    <form method="POST" action="/signin">

 

 

    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
        
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>

  
    <button type="submit" class="btn btn-info">Sign In</button>
   {{ csrf_field() }}
   
    </form>
    <p> Don't have an account? <a href="{{route('user.signup')}}"> Sign Up instead </a> </p>

     
@endsection