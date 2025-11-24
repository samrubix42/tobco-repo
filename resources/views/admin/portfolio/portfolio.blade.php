@extends('admin.layouts.main-layout')
@section('content')   
@php 
$category = array('Websites', 'UI Design Gallery', 'Logo and Branding', 'App Design')
@endphp
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
                     <button class="btn btn-primary  py-8 mb-4 rounded-2" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg" style="float:right">Add {{$page_title}}</button>
                     <div
                        class="modal fade"
                        id="bs-example-modal-lg"
                        tabindex="-1"
                        aria-labelledby="bs-example-modal-lg"
                        aria-hidden="true"
                        >
                        <div class="modal-dialog modal-l">
                           <div class="modal-content">
                              <div
                                 class="modal-header d-flex align-items-center"
                                 >
                                 <h4 class="modal-title" id="myLargeModalLabel">
                                    Add {{$page_title}}
                                 </h4>
                                 <button
                                    type="button"
                                    class="btn-close"
                                    data-bs-dismiss="modal"
                                    aria-label="Close"
                                    ></button>
                              </div>
                              <hr>
                              <div class="modal-body">
                                 <div class="row">
                                    <div class="col-12">
                                       <div class="">
                                          <div class="">
                                            <div id="message"></div>
                                             <form id="portfolio-form" enctype="multipart/form-data">
                                                <div class="row">
                                                    <div class="col-md-12 mb-3">
                                                      <label for="title">Category</label>
                                                      <select class="form-control" name="category" id="category">
                                                        <option value="">--Select Category--</option>
                                                        @foreach($category as $key => $c)
                                                        <option value="{{$key}}">{{$c}}</option>
                                                        @endforeach
                                                      </select>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Title</label>
                                                      <input type="text" class="form-control" id="title" name="title" placeholder="Title"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="subheading">Technology</label>
                                                      <input type="text" class="form-control" id="technology" name="technology" placeholder="Technology"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="subheading">URL</label>
                                                      <input type="text" class="form-control" id="url" name="url" placeholder="URL"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="subheading">Upload Image</label>
                                                         <input type="file" class="form-control" id="image"
                                                            placeholder="Image" name="image" required />
                                                   </div>
                                                </div>
                                                <button class="btn btn-info rounded-pill px-4 mt-3">
                                                Add {{$page_title}}
                                                </button>
                                             </form>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                     </div>
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
                           <th>Category</th>
                           <th>Title</th>
                           <th>Technology</th>
                           <th>URL</th>
                           <th>Image</th>
                           <th>Created At</th>
                           <th>Action</th>
                        </tr>
                        <!-- end row -->
                     </thead>
                     <tbody>
                        <!-- start row -->
                        @foreach($portfolio as $p)
                        <tr>
                           <td>@foreach($category as $key => $c)@if($key == $p->category){{$c}}@endif @endforeach</td>
                           <td>{{$p->title}}</td>
                           <td>{{$p->technology}}</td>
                           <td>{{$p->url}}</td>
                           <td><img src="{{url('public//public/uploads/thumbnail/'.$p->image)}}" style="width:100px" class="img-thumbnail"/></td>
                           <td>{{date('d F, Y', strtotime($p->created_at))}}</td>
                           <td><button class="btn btn-primary  py-8 mb-4 rounded-2" data-bs-toggle="modal" data-bs-target="#bs-example-modal-lg{{$p->id}}"><i class="fa fa-edit"></i></button>
                           <a href="{{url('admin/delete/'.base64_encode($p->id).'/'.base64_encode('portfolio'))}}" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>
                           <div
                        class="modal fade"
                        id="bs-example-modal-lg{{$p->id}}"
                        tabindex="-1"
                        aria-labelledby="bs-example-modal-lg{{$p->id}}"
                        aria-hidden="true"
                        >
                        <div class="modal-dialog modal-l">
                           <div class="modal-content">
                              <div
                                 class="modal-header d-flex align-items-center"
                                 >
                                 <h4 class="modal-title" id="myLargeModalLabel">
                                    Edit {{$page_title}}
                                 </h4>
                                 <button
                                    type="button"
                                    class="btn-close"
                                    data-bs-dismiss="modal"
                                    aria-label="Close"
                                    ></button>
                              </div>
                              <hr>
                              <div class="modal-body">
                                 <div class="row">
                                    <div class="col-12">
                                       <div class="">
                                          <div class="">
                                            <div id="message"></div>
                                             <form id="edit-portfolio-form{{$p->id}}" data-item-id="{{ $p->id }}" enctype="multipart/form-data">
                                                <div class="row">
                                                <div class="col-md-12 mb-3">
                                                      <label for="title">Category</label>
                                                      <select class="form-control" name="category" id="category">
                                                        <option value="">--Select Category--</option>
                                                        @foreach($category as $key => $c)
                                                        <option value="{{$key}}" <?= $key == $p->category ? 'selected' : ''?>>{{$c}}</option>
                                                        @endforeach
                                                      </select>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <input type="hidden" name="id" id="id" value="{{$p->id}}" />
                                                      <label for="title">Title</label>
                                                      <input type="text" class="form-control" id="title" value="{{$p->title}}" name="title" placeholder="Title"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="subheading">Technology</label>
                                                      <input type="text" class="form-control" id="technology" name="technology" value="{{$p->technology}}" placeholder="Technology"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label>URL</label>
                                                      <input type="text" class="form-control" id="url" name="url" value="{{$p->url}}" />
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="subheading">Upload Image</label><br>
                                                      @if($p->image)
                                                      <img src="{{url('public/uploads/thumbnail/'.$p->image)}}" class="img-thumbnail"/>
                                                      @endif
                                                         <input type="file" class="form-control" id="image"
                                                            placeholder="Image" name="image" />
                                                   </div>
                                                </div>
                                                <button id="update-button{{$p->id}}" type="button" class="btn btn-info rounded-pill px-4 mt-3">
                                                Add {{$page_title}}
                                                </button>
                                             </form>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                     </div>
                     <script>
                        $('#update-button{{$p->id}}').click(function() {
                            event.preventDefault();
                            var formData = new FormData(document.getElementById("edit-portfolio-form{{$p->id}}"));;
                            $.ajaxSetup({
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                }
                            });
                            $.ajax({
                                method: 'POST',
                                url: '{{url("/admin/add-portfolio")}}',
                                data: formData,
                                contentType: false,
                                processData: false,
                                success: function(response) {
                                    if (response.status == 'success') {
                                        $('#message').html('<div class="alert alert-success">Portfolio Added Successfully</div>');
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
                    </script>
                            </td>

                        </tr>
                        @endforeach
                        <!-- end row -->
                     </tbody>
                     <tfoot>
                        <!-- start row -->
                        <tr>
                           <th>Category</th>
                           <th>Title</th>
                           <th>Technology</th>
                           <th>URL</th>
                           <th>Image</th>
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
     $('#portfolio-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = new FormData(this);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/add-portfolio")}}',
             data: formData,
             cache: false,
            contentType: false,
            processData: false,
             success: function(response) {
                 if (response.status == 'success') {
                    $('#message').html('<div class="alert alert-success">Portfolio Added Successfully</div>');
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