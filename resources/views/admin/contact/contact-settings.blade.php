@extends('admin.layouts.main-layout')
@section('content')  
<div class="container-fluid">
   <div class="card bg-light-info shadow-none position-relative overflow-hidden">
      <div class="card-body px-4 py-3">
         <div class="row align-items-center">
            <div class="col-9">
               <h4 class="fw-semibold mb-8">{{$page_title}}</h4>
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item"><a class="text-muted " href="{{url('/')}}">Dashboard</a></li>
                     <li class="breadcrumb-item" aria-current="page">{{$page_title}}</li>
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
      <div class="col-lg-12 d-flex align-items-stretch">
         <div class="card w-100">
         <div id="message"></div>

            <form id="contact-form" enctype="multipart/form-data">
               <div class="card-body border-top">
                  <h5>{{'Cart Settings'}}</h5>
                  <div class="row">
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Maximum Amount for Free Shipping</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              placeholder="Maximum Amount for Free Shipping"
                              name="max_amount"
                              id="max_amount"
                              value="{{$data->max_amount}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Shipping Charges</label
                              >
                           <input
                              type="tel"
                              class="form-control"
                              id="shipping_charges"
                              name="shipping_charges"
                              placeholder="Shipping Charges"
                              value="{{$data->shipping_charges}}"
                              />
                        </div>
                     </div>
                 </div>
                  <h5>{{$page_title}}</h5>
                  <div class="row">
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Address</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              placeholder="Address"
                              name="address"
                              id="address"
                              value="{{$data->address}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Phone No.</label
                              >
                           <input
                              type="tel"
                              class="form-control"
                              id="phone"
                              name="phone"
                              placeholder="Phone"
                              value="{{$data->phone}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Email</label
                              >
                           <input
                              type="email"
                              class="form-control"
                              id="email"
                              name="email"
                              placeholder="Phone"
                              value="{{$data->email}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Email(For Mail)</label
                              >
                           <input
                              type="email"
                              class="form-control"
                              id="adminemail"
                              name="adminemail"
                              placeholder="Email (For Mail)"
                              value="{{$data->adminemail}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Upload Logo</label
                              ><br>
                              @if($data->logo)
                              <img src="{{url('public/uploads/'.$data->logo)}}" style="width:100px" class="img-thumbnail"/>
                              @endif
                           <input
                              type="file"
                              class="form-control"
                              id="logo"
                              name="logo"
                              />
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-sm-12 col-md-12">
                        <div class="mb-3">
                           <label
                              for="inputEmail3"
                              class="control-label col-form-label"
                              >Business Hours</label
                              >
                           <textarea class="form-control" name="hours" id="hours">{{$data->hours}}</textarea>
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-12">
                        <div class="mb-3">
                           <label
                              for="inputEmail3"
                              class="control-label col-form-label"
                              >Map Link</label
                              >
                           <textarea class="form-control" name="map" id="map">{{$data->map}}</textarea>
                           <input type="hidden" name="id"  value="1" id="id" /> 
                        </div>
                     </div>
                     <div class="col-md-12">
                        {!!$data->map!!}
                     </div>
                     <div class="p-3 border-top">
                        <div class="action-form">
                           <div class="text-left">
                              <button
                                 type="submit"
                                 class="btn btn-info rounded-pill px-4 waves-effect waves-light"
                                 >
                              Save
                              </button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
</div>
<script>
   $(document).ready(function() {
     $('#contact-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = new FormData(this);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url('/')}}/admin/contact-settings',
             data: formData,
             cache: false,
            contentType: false,
            processData: false,
             success: function(response) {
                 if (response.status == 'success') {
                    $('#message').html('<div class="alert alert-success">Data Added Successfully</div>');
                     setTimeout(function() {$('#message').fadeOut(400);}, 2000);
                     setTimeout(function() {location.reload(true);}, 1000);
                     
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