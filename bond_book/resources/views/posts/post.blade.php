@extends('layouts.app')
<style type="text/css">


.card-header
{
    text-align: center;
}

.postavatar{
    max-width: 420px;
     height: : 120px;
}


</style>


@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

             
            <div class="card">
                <div class="card-header">View Post</div>
                <div class="card-body">
                  <div class="col-md-4">
                    <ul> 
                        @if(count($categories)>0)
                            @foreach($categories->all() as $category)
                            <li class="list-group-item"><a href='{{url("category/($category->id)")}}'>
                                {{$category->category}}</a></li>
                            @endforeach
                        @else
                            <p>No Category Found</p>
                        @endif

                    </ul>
                  </div>

                  <div class= "col-md-8">
                        @if(count($posts)>0)
                            @foreach($posts->all() as $post)
                            <h4>{{$post->post_title}}</h4>
                            <img src="{{$post->post_image}}" class="postavatar" alt="">
                            <p>{{ $post->post_body}}</p>

                             
                            <ul class="nav nav-pills">
                                
                                 <li role="presentation">
                                    <a href='{{url("/edit/{$post->id}")}}'>
                                        <span class="fa fa-pencil-square-o "> Edit   </span>
                                    </a>
                                </li>
                                 <li role="presentation">
                                    <a href='{{url("/delete/{$post->id}")}}'>
                                        <span class="fa fa-trash"> Delete</span>
                                    </a>
                                </li>
                            </ul>


                            
                            @endforeach
                        @else
                            <p>No post Available</p>                      
                        @endif     


                        </div>


                        </div>
                </div>
            </div>
        </div>
    </div>
@endsection



