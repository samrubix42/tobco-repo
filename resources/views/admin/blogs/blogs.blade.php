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
                     <a href="{{url('admin/add-blogs')}}" class="btn btn-primary  py-8 mb-4 rounded-2" style="float:right">Add {{$page_title}}</a>
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
                           <th>Title</th>
                           <th>Slug</th>
                           <th>Image</th>
                           <th>Meta Details</th>
                           <th>Created At</th>
                           <th>Action</th>
                        </tr>
                        <!-- end row -->
                     </thead>
                     <tbody>
                        <!-- start row -->
                        @foreach($blogs as $s)
                        <tr>
                           <td>{{$s->title}}</td>
                           <td>{{$s->slug}}</td>
                           <td>Meta Title : {{$s->meta_title}}<br>Meta Keyword : {{$s->meta_keyword}}<br>Meta Description : {{$s->meta_description}}</td>
                           <td><img src="{{url('uploads/thumbnail/'.$s->image)}}" class="img-thumbnail"/></td>
                           <td>{{date('d F, Y', strtotime($s->created_at))}}</td>
                           <td><a href="{{url('admin/add-blogs/'.$s->id)}}" class="btn btn-primary  py-8 mb-4 rounded-2"><i class="fa fa-edit"></i></a>
                           <a href="{{url('admin/delete/'.base64_encode($s->id).'/'.base64_encode('blogs'))}}" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>
                            </td>

                        </tr>
                        @endforeach
                        <!-- end row -->
                     </tbody>
                     <tfoot>
                        <!-- start row -->
                        <tr>
                           <th>Title</th>
                           <th>Slug</th>
                           <th>Meta Details</th>
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
@endsection