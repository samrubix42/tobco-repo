@extends('admin.layouts.main-layout')
@section('content')  
@php
$coupon_type = array('Flat Rate', 'Percentage');
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
                                             <form id="coupon-form" enctype="multipart/form-data">
                                                <div class="row">
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Coupon Title</label>
                                                      <input type="text" class="form-control" id="title" name="title" placeholder="Title"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Coupon Code</label>
                                                      <input type="text" class="form-control" id="code" name="code" placeholder="Code"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Coupon Type</label>
                                                      <select class="form-control coupon_type" name="coupon_type" id="coupon_type">
                                                          <option>--Select Coupon Type--</option>
                                                          @foreach($coupon_type as $ctype)
                                                            <option value="{{$ctype}}">{{$ctype}}</option>
                                                          @endforeach
                                                      </select>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                       <div class="form-group" id="hide">
                                                           <label class="rate">Flat Rate Value</label>
                                                           <input type="number" name="value" id="value" class="form-control value" placeholder="Value" required="">
                                                        </div>
                                                    </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Min. Purchase Amount</label>
                                                      <input type="numbre" class="form-control" id="min_amount" name="min_amount" placeholder="Min. Purchase Amount"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <div class="form-group">
                                                       <label>Coupon Validity</label><br>
                                                        <input type="radio" id="coupon_validity" class="coupon_validity" name="coupon_validity" value="Always">
                                                        <label for="coupon_validity">Always</label><br>
                                                        <input type="radio" id="particular_date" class="coupon_validity" name="coupon_validity" value="Particular Date">
                                                        <label for="particular_date">Particular Date</label><br>
                                                        <div class="date">
                                                            <input type="date" name="particular_date" class="form-control part" id="part" disabled="disabled">
                                                        </div>
                                                        <input type="radio" id="between_dates" class="coupon_validity" name="coupon_validity" value="Between Dates">
                                                        <label for="between_dates">Between Dates</label><br>
                                                        <div class="row">
                                                            <div class="col-md-5">
                                                                <input type="date" name="from_date" class="form-control from_date" id="from_date" disabled="disabled">
                                                            </div>
                                                            <div class="col-md-2">
                                                                <p>To</p>
                                                            </div>
                                                            <div class="col-md-5">
                                                                <input type="date" name="to_date" class="form-control to_date" id="to_date" disabled="disabled">
                                                            </div>
                                                            
                                                        </div>
                                                       
                                                    </div>
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
                     id="file_export_1"
                     class="table border table-striped table-bordered display text-nowrap"
                     >
                     <thead>
                        <!-- start row -->
                        <tr>
                           <th class="d-none">ID</th>
                           <th>Coupon Title</th>
                           <th>Coupon Code</th>
                           <th>Coupon Value</th>
                           <th>Coupon Type</th>
                           <th>Coupon Validity</th>
                           <th>Min. Amount</th>
                           <th>Particular Date</th>
                           <th>From Date</th>
                           <th>To Date</th>
                           <th>Created At</th>
                           <th>Action</th>
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
<div class="modal fade" id="bs-example-modal-lg1" tabindex="-1"
        role="dialog" aria-labelledby="exampleModalLongTitle"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Edit {{$page_title}}</h5>
                    <button
                     type="button"
                     class="btn-close"
                     data-bs-dismiss="modal"
                     aria-label="Close"
                     ></button>
                </div>
                <div class="modal-body">
                <form id="edit-coupon-form" enctype="multipart/form-data">
                     <div class="row">
                        <div class="col-md-12 mb-3">
                           <label for="title">Title</label>
                           <input type="text" class="form-control" id="editTitle" name="title" placeholder="Title"/>
                           <input type="hidden" name="id" id="id" value="" />
                        </div>
                         <div class="col-md-12 mb-3">
                           <label for="title">Coupon Code</label>
                           <input type="text" class="form-control" id="editCode" name="code" placeholder="Coupon Code"/>
                        </div>
                         <div class="col-md-12 mb-3">
                           <label for="title">Coupon Type</label>
                           <select class="form-control coupon_type" id="editCouponType" name="coupon_type">
                               
                           </select>
                        </div>
                        <div class="col-md-12 mb-3">
                           <div class="form-group" id="hide">
                               <label class="rate">Flat Rate Value</label>
                               <input type="text" name="value" id="editValue" class="form-control value" placeholder="Value" required="">
                            </div>
                        </div>
                        <div class="col-md-12 mb-3">
                           <label for="title">Min. Purchase Amount</label>
                           <input type="text" class="form-control" id="editminAMt" name="min_amount" placeholder="Min. Purchase Amount"/>
                        </div>
                        <div class="col-md-12 mb-3">
                          <div class="form-group">
                           <label>Coupon Validity</label><br>
                            <input type="radio" id="coupon_validity" class="coupon_validity editAlwaysCouponValidity" name="coupon_validity" value="Always">
                            <label for="coupon_validity">Always</label><br>
                            <input type="radio" id="particular_date" class="coupon_validity editParticularCouponValidity" name="coupon_validity" value="Particular Date">
                            <label for="particular_date">Particular Date</label><br>
                            <div class="date">
                                <input type="date" name="particular_date" class="form-control part editParticularDate" id="part" disabled="disabled">
                            </div>
                            <input type="radio" id="between_dates" class="coupon_validity editBetweenCouponValidity" name="coupon_validity" value="Between Dates">
                            <label for="between_dates">Between Dates</label><br>
                            <div class="row">
                                <div class="col-md-5">
                                    <input type="date" name="from_date" class="form-control from_date editFromDate" id="from_date" disabled="disabled">
                                </div>
                                <div class="col-md-2">
                                    <p>To</p>
                                </div>
                                <div class="col-md-5">
                                    <input type="date" name="to_date" class="form-control to_date editToDate" id="to_date" disabled="disabled">
                                </div>
                                
                            </div>
                           
                        </div>
                       </div>
                     </div>
                     <button class="btn btn-info rounded-pill px-4 mt-3">
                     Update {{$page_title}}
                     </button>
                  </form>
                </div>
            </div>
        </div>
    </div>
    <script>
    $('#hide').addClass('d-none');
    $('.coupon_type').change(function()
    {
        var coupon_type = $('.coupon_type').val();
        if(coupon_type == 'Flat Rate')
        {
            $('#hide').removeClass('d-none');
            $('.rate').html('Flat Rate Value');
        }else if(coupon_type == 'Percentage')
        {
            $('#hide').removeClass('d-none');
            $('.rate').html('Percentage Value');
        }else
        {
            $('#hide').addClass('d-none');
        }
    });
    $('.coupon_validity').click(function()
    {
        
        var coupon_validity = $('input[name="coupon_validity"]:checked').val();
        if(coupon_validity == 'Particular Date')
        {
            $('.part').removeAttr('disabled', 'disabled');
            $('.part').attr('required', 'required');
        }else if(coupon_validity == 'Between Dates')
        {
            $('.part').attr('disabled', 'disabled');
            $('.part').removeAttr('required', 'required');
            $('.from_date').removeAttr('disabled', 'disabled');
            $('.from_date').attr('required', 'required');
            $('.to_date').removeAttr('disabled', 'disabled');
            $('.to_date').attr('required', 'required');
        }else
        {
            $('.part').attr('disabled', 'disabled');
            $('.part').removeAttr('required', 'required');
            $('.from_date').attr('disabled', 'disabled');
            $('.from_date').removeAttr('required', 'required');
            $('.to_date').attr('disabled', 'disabled');
            $('.to_date').removeAttr('required', 'required');
        }
    });
</script>
<script>
   function getCoupon()
   {
      var table = $('#file_export_1').DataTable({
         serverSide: true,
         ajax: {
               url: '{{url("admin/get-coupon")}}',
               type: 'GET',
               
         },
         columns: [
            { data: 'id', name: 'id', class:'d-none' },
            { data: 'title', name: 'title' },
            { data: 'code', name: 'code' },
            { data: 'value', name: 'value' },
            { data: 'coupon_type', name: 'coupon_type' },
            { data: 'coupon_validity', name: 'coupon_validity' },
            { data: 'min_amount', name: 'min_amount' },
            { data: 'particular_date', name: 'particular_date' },
            { data: 'from_date', name: 'from_date' },
            { data: 'to_date', name: 'to_date' },
            { data: 'date', name: 'created_at' },
            { data: 'action', name: 'action' },

               // Add more columns as needed
         ],
         deferRender: false,
         search: {
         caseInsensitive: false,
         },
         dom: '<"row"<"col-md-6"l><"col-md-6"f>>rt<"bottom"<"col-md-6"i><"col-md-6"p>>',
         lengthMenu: [5, 10, 25, 50, 100], // Customize the available entries per page
      });
      
   }
   // Get Data
   $(document).ready(function() {
      getCoupon();
   });
   //Insert Data
   $(document).ready(function() {
     $('#coupon-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = new FormData(this);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/add-coupon")}}',
             data: formData,
             cache: false,
             contentType: false,
             processData: false,
             success: async function(response) {
                 if (response.status == 'success') {
                     $('#bs-example-modal-lg').modal('hide');
                     await $('.swal2-title').html(response.status);
                     await $('.swal2-msg').html(response.msg);
                     await $('.success').attr('style', 'display:block');
                 } else {
                     $('#bs-example-modal-lg').modal('hide');
                     
                     await $('.swal2-title').html(response.status);
                     await $('.swal2-msg').html(response.msg);
                     await $('.failed').attr('style', 'display:block');
                 }
             },
             error: async function() {
                 $('#bs-example-modal-lg').modal('hide');
                 
                 await $('.swal2-title').html(response.status);
                 await $('.swal2-msg').html(response.msg);
                 await $('.failed').attr('style', 'display:block');
             }
         });
     });
     
   });
   // getting data in modal
   $('body').on('click', '.editbtn', function() {

         $('#bs-example-modal-lg1').modal('show');
         $tr =$(this).closest('tr');
         var data= $tr.children("td").map(function(){
            return $(this).text();
         }).get();
         console.log(data[3]);
         
         if(data[4] == 'Flat Rate'){
             var flat = 'selected';
             $('.rate').text('Flat Rate Value');
         }else{
             var percentage = 'selected';
              $('.rate').text('Percentage Value');
         }
         
         if(data[5] == 'Always'){
             var always = 'checked';
         }else if(data[5] == 'Particular Date'){
             var particular = 'checked';
             $('.editParticularDate').removeAttr('disabled');
         }else{
             var between = 'checked';
             $('.editFromDate').removeAttr('disabled');
             $('.editToDate').removeAttr('disabled');
         }
         console.log('@@@@@@@@@@@',moment(data[7]).format('DD-MM-YYYY'));
         $('#id').val(data[0]);
         $('#editTitle').val(data[1]);
         $('#editCode').val(data[2]);
         $('#editCouponType').html('<option value="Flat Rate" '+ flat +'>Flat Rate</option><option value="Percentage" '+ percentage +' >Percentage</option>');
         $('#editValue').val(data[3]);
         $('#editminAMt').val(data[6]);
         $('.editAlwaysCouponValidity').attr('checked', always);
         $('.editParticularCouponValidity').attr('checked', particular);
         $('.editBetweenCouponValidity').attr('checked', between);
         $('#editminAMt').val(data[6]);
         $('.editParticularDate').val(moment(data[7]).format('YYYY-MM-DD'));
         $('.editFromDate').val(moment(data[8]).format('YYYY-MM-DD'));
         $('.editToDate').val(moment(data[9]).format('YYYY-MM-DD'));
      });
   // End of getting data in modal

   //Update Data
   $(document).ready(function() {
     $('#edit-coupon-form').on('submit', function(event) {
         event.preventDefault();
         var formData = new FormData(this);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/add-coupon")}}',
             data: formData,
             cache: false,
             contentType: false,
             processData: false,
             success: async function(response) {
                 if (response.status == 'success') {
                     $('#bs-example-modal-lg').modal('hide');
                     await $('.swal2-title').html(response.status);
                     await $('.swal2-msg').html(response.msg);
                     await $('.success').attr('style', 'display:block');
                 } else {
                     $('#bs-example-modal-lg').modal('hide');
                     
                     await $('.swal2-title').html(response.status);
                     await $('.swal2-msg').html(response.msg);
                     await $('.failed').attr('style', 'display:block');
                 }
             },
             error: async function() {
                 $('#bs-example-modal-lg').modal('hide');
                 
                 await $('.swal2-title').html(response.status);
                 await $('.swal2-msg').html(response.msg);
                 await $('.failed').attr('style', 'display:block');
             }
         });
     });
     
   });
  </script>
@endsection