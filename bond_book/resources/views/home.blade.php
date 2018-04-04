@extends('layouts.app')
<style type="text/css">
.avatar{
    max-width: 180px;
     max-height: : 120px;
}

.postavatar{
    max-width: 420px;
     height: : 120px;
}

.card-header
{
    text-align: center;
}

</style>


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

              @if(count($errors)>0)
                    @foreach($errors->all() as $error)
                        <div class="alert alter-danger">{{$error}}</div>
                    @endforeach
                @endif    


                 @if (session('response'))
                        <div class="alert alert-success">
                            {{ session('response') }}
                        </div>
                    @endif
            <div class="card">
                <div class="card-header">Dashboard</div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                        <div class= "col-md-4">
                            <img src="{{ $profile-> profile_pic}}" class="avatar" alt="">
                            <p class="lead">{{ $profile->name }}</p>
                            <p class="lead">{{ $profile->designation }}</p>
                        </div>
                        <div class= "col-md-8">
                        @if(count($posts)>0)
                            @foreach($posts->all() as $post)
                            <h4>{{$post->post_title}}</h4>
                            <img src="{{$post->post_image}}" class="postavatar" alt="">
                            <p>{{ substr($post->post_body,0,150)}}</p>

                            <ul class="nav nav-pills">
                                <li role="presentation">
                                    <a href='{{url("/view/{$post->id}")}}'>
                                        <span class="fa fa-eye"> View </span>
                                    </a>
                                </li>

                                @if(Auth::id()==1)
                                 <li role="presentation">
                                    <a href='{{url("/edit/{$post->id}")}}'>
                                        <span class="fa fa-pencil-square-o"> Edit </span>
                                    </a>
                                </li>
                                 <li role="presentation">
                                    <a href='{{url("/delete/{$post->id}")}}'>
                                        <span class="fa fa-trash"> Delete</span>
                                    </a>
                                </li>

                                @endif

                            </ul>

                            <cite style="float:left;">Posted on:{{date('M j, Y H:i', strtotime($post->updated_at))}}</cite>


                            <hr/>
                            @endforeach
                        @else
                            <p>No post Available</p>                      
                        @endif   

                        {{$posts->links()}}  


                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection



