<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="{!! asset('assets/vendor/images/icons/favicon.ico') !!}"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/vendor/bootstrap/css/bootstrap.min.css') !!}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css') !!}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/vendor/animate/animate.css') !!}">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/vendor/css-hamburgers/hamburgers.min.css') !!}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/vendor/animsition/css/animsition.min.css') !!}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/vendor/select2/select2.min.css') !!}">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/vendor/daterangepicker/daterangepicker.css') !!}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/css/util.css') !!}">
	<link rel="stylesheet" type="text/css" href="{!! asset('assets/css/main.css') !!}">
<!--===============================================================================================-->
<style>
    .nav-link::after {
      content:'';
      display:block;
      width:0;
      height:2px;
      background:green;
      transition:width .3s;
    }

    .nav-link:hover::after {
      width:100%;
      transition:width .3s;
    }

    .btn {
      border:1px solid #3498db;
      background-color:orange;
      transition:0.8s;

    }

    .btn:hover {
      background-color:green;
    }

    .btn::before {
      content:"";
      position:absolute;
      left:0;
      width:100%;
      height:0;
      background:green;
      z-index:-1;
      transition:0.8s;
      border-radius:0 0 50% 50%;
    }
</style>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Tabassam.com') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-warning navbar-laravel">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Tabassam.com') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        <li class="nav-item active">
        <a class="nav-link" href="{{url('/')}}">Home</a>
      </li>
      <a class="nav-link active" href="{{url('/menu')}}">Menu</a>
      </li>
      <a class="nav-link active" href="{{url('/about')}}">About</a>
      </li>
      <a class="nav-link active" href="{{url('/profile')}}">Profile</a>
      </li>
                        @guest
                            <li class="nav-item">
                                <a class="nav-link active" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>
        @yield('container')
        <main class="py-4">
            @yield('content')
        </main>
    </div>
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   
    <!--===============================================================================================-->
	<script src="{!! asset('assets/vendor/jquery/jquery-3.2.1.min.js') !!}"></script>
<!--===============================================================================================-->
	<script src="{!! asset('assets/vendor/vendor/animsition/js/animsition.min.js') !!}"></script>
<!--===============================================================================================-->
	<script src="{!! asset('assets/vendor/bootstrap/js/popper.js') !!}"></script>
	<script src="{!! asset('assets/vendor/bootstrap/js/bootstrap.min.js') !!}"></script>
<!--===============================================================================================-->
	<script src="{!! asset('assets/vendor/select2/select2.min.js') !!}"></script>
<!--===============================================================================================-->
	<script src="{!! asset('assets/vendor/daterangepicker/moment.min.js') !!}"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="{!! asset('assets/vendor/countdowntime/countdowntime.js') !!}"></script>
<!--===============================================================================================-->
	<script src="{!! asset('assets/js/main.js') !!}"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>