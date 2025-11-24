@extends('admin.layouts.main-layout')
@section('content')
@php
$TMCEAPI = env('TINYMC_API_KEY') ?: 'no-api-key';
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
                        aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                           <div class="modal-content">
                              <div
                                 class="modal-header d-flex align-items-center">
                                 <h4 class="modal-title" id="myLargeModalLabel">
                                    Add {{$page_title}}
                                 </h4>
                                 <button
                                    type="button"
                                    class="btn-close"
                                    data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                              </div>
                              <hr>
                              <div class="modal-body">
                                 <div class="row">
                                    <div class="col-12">
                                       <div class="">
                                          <div class="">
                                             <div id="message"></div>
                                             <form id="category-form" enctype="multipart/form-data">
                                                <div class="row">
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Title</label>
                                                      <input type="text" class="form-control" id="title" name="title" placeholder="Title" />
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="title">Upload Image</label>
                                                      <input type="file" class="form-control" id="image" name="image" />
                                                   </div>
                                                   <div class="col-md-6 mb-3">
                                                      <label for="slug">Slug</label>
                                                      <input type="text" class="form-control" id="slug" name="slug" placeholder="slug" />
                                                   </div>
                                                   <div class="col-md-6 mb-3">
                                                      <label for="meta_title">Meta Title</label>
                                                      <input type="text" class="form-control" id="meta_title" name="meta_title" placeholder="meta title" />
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="meta_keyword">Meta Keywords</label>
                                                      <input type="text" class="form-control" id="meta_keyword" name="meta_keyword" placeholder="keywords, comma separated" />
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="meta_description">Meta Description</label>
                                                      <textarea id="meta_description" name="meta_description" class="form-control" rows="3"></textarea>
                                                   </div>
                                                   <div class="col-md-12 mb-3">
                                                      <label for="page_content">Page Content</label>
                                                      <textarea id="page_content" name="page_content" class="form-control tinymce" rows="6"></textarea>
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
                     class="table border table-striped table-bordered display text-nowrap">
                     <thead>
                        <!-- start row -->
                        <tr>
                           <th class="d-none">ID</th>
                           <th>Title</th>
                           <th>Slug</th>
                           <th>Image</th>
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
   <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Edit {{$page_title}}</h5>
            <button
               type="button"
               class="btn-close"
               data-bs-dismiss="modal"
               aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <form id="edit-category-form" enctype="multipart/form-data">
               <div class="row">
                  <div class="col-md-12 mb-3">
                     <label for="title">Title</label>
                     <input type="text" class="form-control" id="editTitle" name="title" placeholder="Title" />
                  </div>
                  <div class="col-md-12 mb-3">
                     <label for="title">Upload Image</label><br>
                     <img id="editImage" class="img-thumbnail" /><br>
                     <input type="file" class="form-control" name="image" />
                     <input type="hidden" name="id" id="id" value="" />
                  </div>
                  <div class="col-md-6 mb-3">
                     <label for="editSlug">Slug</label>
                     <input type="text" class="form-control" id="editSlug" name="slug" placeholder="slug" />
                  </div>
                  <div class="col-md-6 mb-3">
                     <label for="editMetaTitle">Meta Title</label>
                     <input type="text" class="form-control" id="editMetaTitle" name="meta_title" placeholder="meta title" />
                  </div>
                  <div class="col-md-12 mb-3">
                     <label for="editMetaKeyword">Meta Keywords</label>
                     <input type="text" class="form-control" id="editMetaKeyword" name="meta_keyword" placeholder="keywords, comma separated" />
                  </div>
                  <div class="col-md-12 mb-3">
                     <label for="editMetaDescription">Meta Description</label>
                     <textarea id="editMetaDescription" name="meta_description" class="form-control" rows="3"></textarea>
                  </div>
                  <div class="col-md-12 mb-3">
                     <label for="page_content">Page Content</label>
                     <textarea id="editPageContent" name="page_content" class="form-control tinymce" rows="6"></textarea>
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
   function getCategory() {
      var table = $('#file_export_1').DataTable({
         serverSide: true,
         ajax: {
            url: '{{url("admin/get-category")}}',
            type: 'GET',

         },
         columns: [{
               data: 'id',
               name: 'id',
               class: 'd-none'
            },
            {
               data: 'title',
               name: 'title'
            },
            {
               data: 'slug',
               name: 'slug'
            },
            {
               data: 'image',
               name: 'image'
            },
            {
               data: 'date',
               name: 'created_at'
            },
            {
               data: 'action',
               name: 'action'
            },

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
      getCategory();
   });
   //Insert Data
   $(document).ready(function() {
      $('#category-form').on('submit', function(event) {
         event.preventDefault();
         if (typeof tinymce !== 'undefined') tinymce.triggerSave();

         var formData = new FormData(this);
         $.ajaxSetup({
            headers: {
               'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
         });
         $.ajax({
            type: 'POST',
            url: '{{url("/admin/add-category")}}',
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
      var $btn = $(this);
      var $tr = $btn.closest('tr');
      var imgSrc = $tr.find('img').attr('src') || '';
      var id = $btn.data('id') || $tr.children('td').eq(0).text();

      // fetch full record via AJAX to get raw page_content safely
      $.ajaxSetup({
         headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
         }
      });
      $.post('{{ url("/admin/get-category-by-id") }}', { id: id }, function(res) {
         if (res.status !== 'success') {
            alert(res.msg || 'Failed to load category');
            return;
         }
         var data = res.data;
         $('#id').val(data.id);
         $('#editTitle').val(data.title || '');
         $('#editImage').attr('src', data.image ? ('{{ url("public/uploads/thumbnail") }}' + '/' + data.image) : imgSrc);
         $('#editSlug').val(data.slug || '');
         $('#editSlug').data('auto', $('#editSlug').val() ? 0 : 1);
         $('#editMetaTitle').val(data.meta_title || '');
         $('#editMetaKeyword').val(data.meta_keyword || '');
         $('#editMetaDescription').val(data.meta_description || '');
         // populate page content (raw HTML)
         if (typeof tinymce !== 'undefined') {
            // if editor exists for this textarea, set content
            var ed = tinymce.get($('#editPageContent').attr('id'));
            if (ed) {
               ed.setContent(data.page_content || '');
            } else {
               $('#editPageContent').val(data.page_content || '');
            }
         } else {
            $('#editPageContent').val(data.page_content || '');
         }
         $('#bs-example-modal-lg1').modal('show');
      }, 'json').fail(function() {
         alert('Failed to fetch category details');
      });
   });
   // End of getting data in modal

   //Update Data
   $(document).ready(function() {
      $('#edit-category-form').on('submit', function(event) {
         event.preventDefault();
         if (typeof tinymce !== 'undefined') tinymce.triggerSave();
         var formData = new FormData(this);
         $.ajaxSetup({
            headers: {
               'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
         });
  
         
         $.ajax({
            type: 'POST',
            url: '{{url("/admin/add-category")}}',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success: async function(response) {
               if (response.status == 'success') {
                  $('#bs-example-modal-lg1').modal('hide');
                  await $('.swal2-title').html(response.status);
                  await $('.swal2-msg').html(response.msg);
                  await $('.success').attr('style', 'display:block');
               } else {
                  $('#bs-example-modal-lg1').modal('hide');

                  await $('.swal2-title').html(response.status);
                  await $('.swal2-msg').html(response.msg);
                  await $('.failed').attr('style', 'display:block');
               }
            },
            error: async function() {
               $('#bs-example-modal-lg1').modal('hide');

               await $('.swal2-title').html(response.status);
               await $('.swal2-msg').html(response.msg);
               await $('.failed').attr('style', 'display:block');
            }
         });
      });

   });
</script>
<script>
   // Live slug generation helpers (standalone)
   function makeSlug(text){
      return String(text||'').toLowerCase().trim()
         .replace(/['"]/g,'')
         .replace(/[^a-z0-9\s-]/g,'')
         .replace(/\s+/g,'-')
         .replace(/-+/g,'-')
         .replace(/^-+|-+$/g,'');
   }

   (function($){
      $(function(){
         $('#slug').data('auto', $('#slug').val() ? 0 : 1);
         $('#editSlug').data('auto', $('#editSlug').val() ? 0 : 1);

         $(document).on('input', '#title', function(){
            var auto = $('#slug').data('auto');
            if (auto === undefined || auto == 1) {
               $('#slug').val(makeSlug($(this).val()));
               $('#slug').data('auto', 1);
            }
         });

         $(document).on('input', '#editTitle', function(){
            var auto = $('#editSlug').data('auto');
            if (auto === undefined || auto == 1) {
               $('#editSlug').val(makeSlug($(this).val()));
               $('#editSlug').data('auto', 1);
            }
         });

         $(document).on('input', '#slug', function(){
            $('#slug').data('auto', 0);
         });
         $(document).on('input', '#editSlug', function(){
            $('#editSlug').data('auto', 0);
         });

         $('#bs-example-modal-lg').on('shown.bs.modal', function(){
            $('#slug').data('auto', $('#slug').val() ? 0 : 1);
         });
         $('#bs-example-modal-lg1').on('shown.bs.modal', function(){
            $('#editSlug').data('auto', $('#editSlug').val() ? 0 : 1);
         });
      });
   })(jQuery);
</script>
<!-- TinyMCE -->
<script src="https://cdn.tiny.cloud/1/{{$TMCEAPI}}/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
<script>
   function initTinyEditors(selector) {
      selector = selector || 'textarea.tinymce';
      if (typeof tinymce === 'undefined') return;
      jQuery(selector).each(function() {
         var $el = jQuery(this);
         var id = $el.attr('id');
         if (!id) {
            id = 'tmce_' + Math.random().toString(36).substr(2, 9);
            $el.attr('id', id);
         }
         if (!tinymce.get(id)) {
            tinymce.init({
               selector: '#' + id,
               height: 300,
               menubar: false,
               plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount code',
               toolbar: 'undo redo | bold italic underline strikethrough | fontfamily fontsize blocks | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl',
               content_css: '//www.tiny.cloud/css/codepen.min.css'
            });
         }
      });
   }

   jQuery(document).ready(function() {
      initTinyEditors();
   });

   // Initialize editors when modals are shown (in case textareas are added dynamically)
   jQuery('#bs-example-modal-lg, #bs-example-modal-lg1').on('shown.bs.modal', function() {
      initTinyEditors();
   });
</script>
@endsection