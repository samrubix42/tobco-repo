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
                     <a href="{{url('admin/add-product')}}" class="btn btn-primary  py-8 mb-4 rounded-2" style="float:right">Add {{$page_title}}</a>
                  </div>
               </div>
               <div class="table-responsive">
                  <table
                     id="file_export_1"
                     class="table border table-striped table-bordered display text-nowrap"
                     >
                     <thead>
                        <!-- start row -->
                        <tr>
                           <th>Action</th>
                           <th>Category</th>
                           <th>Title</th>
                           <th>Slug</th>
                           <th>Image</th>
                           <th>Meta Details</th>
                           <th>Created At</th>
                           
                        </tr>
                        <!-- end row -->
                     </thead>
                     <tbody>
                     </tbody>
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
function getProducts()
   {
      var table = $('#file_export_1').DataTable({
         serverSide: true,
         ajax: {
               url: '{{url("admin/get-products")}}',
               type: 'GET',
               
         },
         columns: [
            { data: 'action', name: 'action' },
            { data: 'category', name: 'category' },
            { data: 'title', name: 'title' },
            { data: 'slug', name: 'slug' },
            { data: 'image', name: 'image' },
            { data: 'meta', name: 'meta details' },
            { data: 'date', name: 'created_at' },
            

               // Add more columns as needed
         ],
         deferRender: false,
         search: {
         caseInsensitive: false,
         },
         dom: '<"row"<"col-md-6"l><"col-md-6"f>>rt<"bottom"<"col-md-6"i><"col-md-6"p>>',
         lengthMenu: [10, 25, 50, 100], // Customize the available entries per page
      });
      
   }
   // Get Data
   $(document).ready(function() {
      getProducts();
   });

</script>
@endsection