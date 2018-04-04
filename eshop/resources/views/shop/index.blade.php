@extends('layouts.master')

@section ('title')
	Eshop
@endsection

@section('content')
  @if(Session::has('success'))
    <div class="row">
      <div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
        <div id="charge-message" class="alert alter-success">
          {{Session::get('success')}}
        </div>
      </div>
    </div>
    @endif
	@foreach($products-> chunk(3) as $productChunk)   
	    <div class="row">
      	@foreach($productChunk as $product)

            <div class="col-sm-6 col-md-4 " style=" border-style: solid; border-width: 1px; margin-bottom: 20px; ">
             	<div class="thumbnail" >
             		<img src="{{ $product->imagePath }}" alt="..." class="img-responsive" style="width: 60%; height: 220px;">
                
                <div class="caption">
                    <h4 >{{ $product->title }}</h4>
                    <p class="description">{{ $product->description }}</p>
                    <div class="clearfix">
                    <span class="pull-left price">Taka {{ $product->price }}</span>
                    <a href="{{route('product.addToCart', ['id'=> $product->id])}}" type="button" class="btn btn-success pull-right" role="button">Add to cart</a>
                </div>
                </div>
            </div>
            </div>

       @endforeach
</div>
@endforeach
@endsection

