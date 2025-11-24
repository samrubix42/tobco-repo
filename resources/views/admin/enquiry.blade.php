@extends('admin.layouts.main-layout')
@section('content')   
<!--  Header End -->
<div class="container-fluid">
   <div class="card bg-light-info shadow-none position-relative overflow-hidden">
      <div class="card-body px-4 py-3">
         <div class="row align-items-center">
            <div class="col-9">
               <h4 class="fw-semibold mb-8">Manage {{$page_title}}</h4>
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item"><a class="text-muted " href="{{url('admin/dashboard')}}">Dashboard</a></li>
                     <li class="breadcrumb-item" aria-current="page">Manage {{$page_title}}</li>
                  </ol>
               </nav>
            </div>
            <div class="col-3">
               <div class="text-center mb-n5">  
                  <img src="{{asset('backend')}}/dist/images/breadcrumb/ChatBc.png" alt="" class="img-fluid mb-n4">
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-12">
         <!-- ---------------------
            start File export
            ---------------- -->
         <div class="card">
            <div class="card-body">
               <div class="mb-2 row">
                  <div class="col-md-6">
                     <h5 class="mb-0">Manage {{$page_title}}</h5>
                  </div>
                  <div class="col-md-6">
                  </div>
               </div>
               <div class="table-responsive">
                  <table
                     id="file_export"
                     class="table border table-striped table-bordered display text-nowrap"
                     >
                     <thead>
                        <!-- start row -->
                        <tr>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Phone</th>
                            <th>Subject</th>
                            <th>Message</th>
                           <th>Created At</th>
                           <th>Action</th>
                        </tr>
                        <!-- end row -->
                     </thead>
                     <tbody>
                        <!-- start row -->
                        @foreach($enquiry as $t)
                        <tr>
                           <td>{{$t->name}}</td>
                           <td>{{$t->email}}</td>
                           <td>{{$t->phone}}</td>
                           <td>{{$t->subject}}</td>
                           <td>{{$t->messages}}</td>
                           <td>{{date('d F, Y', strtotime($t->created_at))}}</td>
                           <td>
                           <a href="{{url('admin/delete/'.base64_encode($t->id).'/'.base64_encode('enquiry'))}}" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>
                            </td>

                        </tr>
                        @endforeach
                        <!-- end row -->
                     </tbody>
                     <tfoot>
                        <!-- start row -->
                        <tr>
                           <th>Name</th>
                           <th>Email</th>
                           <th>Phone</th>
                            <th>Subject</th>
                            <th>Message</th>
                           <th>Created At</th>
                           <th>Action</th>
                        </tr>
                        <!-- end row -->
                     </tfoot>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
</div>
<script>
   $(document).ready(function() {
     $('#testimonial-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = new FormData(this);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/add-testimonials")}}',
             data: formData,
             cache: false,
            contentType: false,
            processData: false,
             success: function(response) {
                 if (response.status == 'success') {
                    $('#message').html('<div class="alert alert-success">Testimonials Added Successfully</div>');
                     setTimeout(function() {$('#message').fadeOut(400);}, 3000);
                     location.reload(true);
                 } else {

                     $('#message').html('<div class="alert alert-danger">Something Went wrong. Please try again</div>');
                     setTimeout(function() {$('#message').fadeOut(400);}, 3000);
                 }
             },
             error: function() {
                 $('#message').html('<div class="alert alert-danger">Something Went wrong. Please try again</div>');
                 setTimeout(function() {$('#message').fadeOut(400);}, 3000);
             }
         });
     });
   });
</script>
@endsection