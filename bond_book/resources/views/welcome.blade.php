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
          </div>
    </div>
</div>
@endsection



