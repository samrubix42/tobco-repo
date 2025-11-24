<!DOCTYPE html>
<html lang="en">
   <head>
      <!--  Title -->
      <title>{{env('config.APP_NAME')}}</title>
      <!--  Required Meta Tag -->
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="handheldfriendly" content="true" />
      <meta name="MobileOptimized" content="width" />
      <meta name="description" content="Mordenize" />
      <meta name="author" content="" />
      <meta name="keywords" content="Mordenize" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="csrf-token" content="{{ csrf_token() }}">
      <!--  Favicon -->
      <link rel="shortcut icon" type="image/png" href="https://demos.adminmart.com/premium/bootstrap/modernize-bootstrap/package/dist/images/logos/favicon.ico" />
      <!-- Core Css -->
      <link  id="themeColors"  rel="stylesheet" href="{{asset('public/backend/dist/css/style.min.css')}}" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   </head>
   <body>
      <!-- Preloader -->
      <div class="preloader">
         <img src="https://demos.adminmart.com/premium/bootstrap/modernize-bootstrap/package/dist/images/logos/favicon.ico" alt="loader" class="lds-ripple img-fluid" />
      </div>
      <!-- Preloader -->
      <div class="preloader">
         <img src="https://demos.adminmart.com/premium/bootstrap/modernize-bootstrap/package/dist/images/logos/favicon.ico" alt="loader" class="lds-ripple img-fluid" />
      </div>
      <!--  Body Wrapper -->
      <div class="main">
         @yield('content')
      </div>
      <!--  Import Js Files -->
      <script src="{{asset('public/backend/dist/libs/jquery/dist/jquery.min.js')}}"></script>
      <script src="{{asset('public/backend/dist/libs/simplebar/dist/simplebar.min.js')}}"></script>
      <script src="{{asset('public/backend/dist/libs/bootstrap/dist/js/bootstrap.bundle.min.js')}}"></script>
      <!--  core files -->
      <script src="{{asset('public/backend/dist/js/app.min.js')}}"></script>
      <script src="{{asset('public/backend/dist/js/app.init.js')}}"></script>
      <script src="{{asset('public/backend/dist/js/app-style-switcher.js')}}"></script>
      <script src="{{asset('public/backend/dist/js/sidebarmenu.js')}}"></script>
      <script src="{{asset('public/backend/dist/js/custom.js')}}"></script>
   </body>
</html>