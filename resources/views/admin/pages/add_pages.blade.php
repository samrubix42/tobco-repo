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

            <form id="page-form" enctype="multipart/form-data">
               <div class="card-body border-top">
                  <h5>{{$page_title}}</h5>
                  <div class="row">
                     <div class="col-sm-12 col-md-6">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Page Name</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              placeholder="Page name"
                              name="title"
                              id="title"
                              value="{{!empty($page) ? $page->title : ''}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-6">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Page URL</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              id="slug"
                              name="slug"
                              placeholder="Page URL"
                              value="{{!empty($page) ? $page->slug : ''}}"
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
                              >Page Content</label
                              >
                              <textarea class="form-control" name="description" id="description">{!! !empty($page) ? $page->description : ''!!}</textarea>
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-6">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Meta Title</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              id="meta_title"
                              name="meta_title"
                              placeholder="Meta Title"
                              value="{{!empty($page) ? $page->meta_title : ''}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-6">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Meta Keyword</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              id="meta_keyword"
                              name="meta_keyword"
                              placeholder="Meta Keyword"
                              value="{{!empty($page) ? $page->meta_keyword : ''}}"

                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-12">
                        <div class="mb-3">
                           <label
                              for="inputEmail3"
                              class="control-label col-form-label"
                              >Meta description</label
                              >
                           <textarea class="form-control" name="meta_description" id="meta_description" data-sample="1" >{!! !empty($page) ? $page->meta_description : ''!!}</textarea>
                           {!! !empty($page) ? '<input type="hidden" name="id" id="id" value="'.$page->id.'" />' : ''!!}
                        </div>
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
     $('#page-form').on('submit', function(event) {
         event.preventDefault();
         var formData = new FormData(this);
         var editorContent = tinymce.get('description').getContent();
         formData.append('description', editorContent);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/add-pages")}}',
             data: formData,
             cache: false,
            contentType: false,
            processData: false,
             success: function(response) {
                 if (response.status == 'success') {
                    $('.success').attr('style', 'display:block');
                    $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.success').attr('style', 'display:block');
                     
                 } else {
   
                     $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.failed').attr('style', 'display:block');
                 }
             },
             error: function() {
                     $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.failed').attr('style', 'display:block');
             }
         });
     });
   });
</script>
@endsection