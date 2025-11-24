@extends('admin.layouts.login-layouts')
@section('content')  
@php
$contact = DB::table('contact_settings')->get()->first();
@endphp
<div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed">
   <div class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
      <div class="d-flex align-items-center justify-content-center w-100">
         <div class="row justify-content-center w-100">
            <div class="col-md-8 col-lg-6 col-xxl-3">
               <div class="card mb-0">
                  <div class="card-body">
                     <a href="{{url('/admin/login')}}" class="text-nowrap logo-img text-center d-block mb-5 w-100">
                     <img src="{{url('uploads/'.$contact->logo)}}" width="180" alt="">
                     </a>
                     <div id="message"></div>
                     <form id="login-form" method="POST">
                        <div class="mb-3">
                           <label for="exampleInputEmail1" class="form-label">Username</label>
                           <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" required>
                        </div>
                        <div class="mb-4">
                           <label for="exampleInputPassword1" class="form-label">Password</label>
                           <input type="password" class="form-control" name="password" id="exampleInputPassword1" required>
                        </div>
                        <!--<div class="d-flex align-items-center justify-content-between mb-4">-->
                        <!--   <div class="form-check">-->
                        <!--      <input class="form-check-input primary" type="checkbox" value="" id="flexCheckChecked" checked>-->
                        <!--      <label class="form-check-label text-dark" for="flexCheckChecked">-->
                        <!--      Remeber this Device-->
                        <!--      </label>-->
                        <!--   </div>-->
                        <!--   <a class="text-primary fw-medium" href="authentication-forgot-password.html">Forgot Password ?</a>-->
                        <!--</div>-->
                        <input type="submit" class="btn btn-primary w-100 py-8 mb-4 rounded-2" value="Sign In">
                        <!--<div class="d-flex align-items-center justify-content-center">-->
                        <!--   <p class="fs-4 mb-0 fw-medium">New to Modernize?</p>-->
                        <!--   <a class="text-primary fw-medium ms-2" href="authentication-register.html">Create an account</a>-->
                        <!--</div>-->
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<script>
   $(document).ready(function() {
     $('#login-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = $(this).serialize();
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/login")}}',
             data: formData,
             success: function(response) {
                 if (response.success) {
                   window.location.href = "{{url('admin/dashboard')}}";
                 } else {
                     $('#message').html('<div class="alert alert-danger">Invalid Credentials</div>');
                     setTimeout(function() {$('#message').fadeOut(400);}, 3000);
                 }
             },
             error: function() {
                 $('#message').html('<div class="alert alert-danger">Invalid Credentials</div>');
                 setTimeout(function() {$('#message').fadeOut(400);}, 3000);
             }
         });
     });
   });
</script>
@endsection