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
               </div>
               <div class="table-responsive">
                  <table
                     id="file_export_1"
                     class="table border table-striped table-bordered display text-nowrap"
                     >
                     <thead>
                        <!-- start row -->
                        <tr>
                           <th>Order ID</th>
                           <th>Customer</th>
                           <th>Payment</th>
                           <th>Payment Status</th>
                           <th>Created At</th>
                           <th>Action</th>
                        </tr>
                        <!-- end row -->
                     </thead>
                    
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
function getOrders() {
    var table = $('#file_export_1').DataTable({
        processing: true,
        serverSide: true,
        destroy: true, // allows re-initialization without errors
        ajax: {
            url: '{{ url("admin/get-orders") }}',
            type: 'GET',
            data: function (d) {
                d._token = '{{ csrf_token() }}'; // add CSRF for Laravel
            }
        },
        columns: [
            { data: 'order_id', name: 'order_id' },
            { data: 'customer', name: 'customer' },
            { data: 'payment', name: 'payment' },
            { data: 'payment_status', name: 'payment_status' },
            { data: 'date', name: 'created_at' },
            { data: 'action', name: 'action', orderable: false, searchable: false },
        ],
        deferRender: true,
        search: {
            caseInsensitive: true
        },
        dom: '<"row"<"col-md-6"l><"col-md-6"f>>rt<"bottom"<"col-md-6"i><"col-md-6"p>>',
        lengthMenu: [5, 10, 25, 50, 100],
        order: [[4, 'desc']], // order by date desc by default
    });
}

// Initialize DataTable
$(document).ready(function() {
    getOrders();
});
</script>

@endsection