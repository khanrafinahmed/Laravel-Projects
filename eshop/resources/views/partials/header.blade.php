
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="{{route('product.index')}}">Eshop</a>

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>

  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">

    <ul class="navbar-nav ml-auto">

      <li class="nav-item float-right">

        <a class="nav-link" href="{{route('product.shoppingCart')}}"><i class="fa fa-cart-plus" aria-hidden="true"> Shopping Cart</i>


        <span clss="badge">{{Session::has('cart')?Session::get('cart')->totalQty : ''}} </span>

         <span class="sr-only">current</span></a>

      </li>
      <li class="dropdown">

        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

          <i class="fa fa-user" aria-hidden="true"></i> User Account

        </a>

        <ul class="dropdown-menu">
          @if (Auth::check())
              <li><a href="{{route('user.profile')}}">User Profile</a></li>   
               <li><a href="{{route('user.logout')}}">Log Out </a></li>
          @else
          <li><a href="{{route('user.signup')}}"> Register</a></li>
          <li><a href="{{route('user.signin')}}">Log In</a></li>
          @endif
         
        

        </ul>

      </li>
    </ul>
  </div>
</nav>