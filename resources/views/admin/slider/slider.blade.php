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
                                             <form id="slider-form" enctype="multipart/form-data">
                                                <div class="row">
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Title</label>
                                                      <input type="text" class="form-control" id="title" name="title" placeholder="Title"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Sub Title</label>
                                                      <input type="text" class="form-control" id="subtitle" name="subtitle" placeholder="Sub Title"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Content</label>
                                                      <input type="text" class="form-control" id="content" name="content" placeholder="Content"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Price</label>
                                                      <input type="text" class="form-control" id="price" name="price" placeholder="Price"/>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">URL</label>
                                                      <input type="text" class="form-control" id="url" name="url" placeholder="URL"/>
                                                   </div>
                                                    <div class="col-md-12 mb-3">
                                                      <label for="title">Upload Image</label>
                                                      <input type="file" class="form-control" id="image" name="image"/>
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
                           <th>Title</th>
                           <th>Image</th>
                           <th>Sub Title</th>
                           <th>Price</th>
                           <th>URL</th>
                           <th>Content</th>
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
<div
   class="modal fade"
   id="bs-example-modal-lg1"
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
                        <form id="edit-slider-form" enctype="multipart/form-data">
                           <div class="row">
                              <div class="col-md-12 mb-3">
                                 <label for="title">Title</label>
                                 <input type="text" class="form-control" id="editTitle" name="title" placeholder="Title"/>
                                 <input type="hidden" name="id" id="id" value=""/>
                              </div>
                              <div class="col-md-12 mb-3">
                                  <label for="title">Sub Title</label>
                                  <input type="text" class="form-control" id="editsubtitle" name="subtitle" placeholder="Sub Title"/>
                               </div>
                               <div class="col-md-12 mb-3">
                                  <label for="title">Content</label>
                                  <input type="text" class="form-control" id="editcontent" name="content" placeholder="Content"/>
                               </div>
                               <div class="col-md-12 mb-3">
                                  <label for="title">Price</label>
                                  <input type="text" class="form-control" id="editprice" name="price" placeholder="Price"/>
                               </div>
                               <div class="col-md-12 mb-3">
                                  <label for="title">URL</label>
                                  <input type="text" class="form-control" id="editurl" name="url" placeholder="URL"/>
                               </div>
                                 <div class="col-md-12 mb-3">
                                 <label for="title">Upload Image</label>
                                 <img id="editImage" class="img-thumbnail mb-3"/><br>
                                 <input type="file" class="form-control" id="image" name="image"/>
                              </div>
                           </div>
                           <button class="btn btn-info rounded-pill px-4 mt-3" id="update-button">
                           Edit {{$page_title}}
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
   function getSlider()
   {
      var table = $('#file_export_1').DataTable({
         serverSide: true,
         ajax: {
               url: '{{url("admin/get-slider")}}',
               type: 'GET',
               
         },
         columns: [
            { data: 'id', name: 'id', class:'d-none' },
            { data: 'title', name: 'title' },
            { data: 'image', name: 'image' },
            { data: 'subtitle', name: 'subtitle' },
            { data: 'price', name: 'price' },
            { data: 'url', name: 'url' },
            { data: 'content', name: 'content' },
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
      getSlider();
   });

   
   $(document).ready(function() {
     $('#slider-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = new FormData(this);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/add-slider")}}',
             data: formData,
             cache: false,
            contentType: false,
            processData: false,
             success: function(response) {
                 if (response.status == 'success') {
                     $('#bs-example-modal-lg').modal('hide');
                      $('.swal2-title').html(response.status);
                      $('.swal2-msg').html(response.msg);
                      $('.success').attr('style', 'display:block');
                 } else {
                     $('#bs-example-modal-lg').modal('hide');
                      $('.swal2-title').html(response.status);
                      $('.swal2-msg').html(response.msg);
                      $('.failed').attr('style', 'display:block');
                 }
             },
             error: function() {
                  $('#bs-example-modal-lg').modal('hide');
                   $('.swal2-title').html(response.status);
                   $('.swal2-msg').html(response.msg);
                   $('.failed').attr('style', 'display:block');
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
   var Imagedata = [];
   Imagedata.push($tr.find('img').attr('src'));
   console.log(data);
   $('#id').val(data[0]);
   $('#editTitle').val(data[1]);
   $('#editsubtitle').val(data[3]);
   $('#editcontent').val(data[6]);
   $('#editprice').val(data[4]);
   $('#editurl').val(data[5]);
   $('#editImage').attr("src",Imagedata[0]);
   });
   // End of getting data in modal

   $('#update-button').click(function() {
         event.preventDefault();
         var formData = new FormData(document.getElementById("edit-slider-form"));;
         $.ajaxSetup({
            headers: {
               'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
         });
         $.ajax({
            method: 'POST',
            url: '{{url("/admin/add-slider")}}',
            data: formData,
            contentType: false,
            processData: false,
            success: function(response) {
               if (response.status == 'success') {
                     $('#bs-example-modal-lg1').modal('hide');
                     $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.success').attr('style', 'display:block');
                  
               } else {
                     $('#bs-example-modal-lg1').modal('hide');
                     $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.failed').attr('style', 'display:block');
               }
            },
            error: function() {
               $('#bs-example-modal-lg1').modal('hide');
               $('.swal2-title').html(response.status);
               $('.swal2-msg').html(response.msg);
               $('.failed').attr('style', 'display:block');
            }
         });
   });
</script>
@endsection