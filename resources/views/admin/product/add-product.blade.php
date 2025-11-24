@extends('admin.layouts.main-layout')
@section('content')  
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
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

            <form id="product-form" enctype="multipart/form-data">
               <div class="card-body border-top">
                  <h5>{{$page_title}}</h5>
                  <div class="row">
                    <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Product Category</label
                              >
                              <select class="form-control" name="category" id="category" required>
                                <option value="">--Select Category--</option>
                                @foreach($category as $c)
                                <option value="{{$c->id}}" <?php if(!empty($product)){if($c->id == $product->category){echo 'selected';}}?>>{{$c->title}}</option>
                                @endforeach
                              </select>
                        </div>
                     </div>
                     @if(!empty($product))
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Product Sub Category</label
                              >
                              <select class="form-control" name="subcategory" id="subcategory">
                                @foreach($subcategory as $s)
                                <option value="{{$s->id}}" <?php if(!empty($product)){if($s->id == $product->subcategory){echo 'selected';}}?>>{{$s->title}}</option>
                                @endforeach
                              </select>
                        </div>
                     </div>
                     @else
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Product Sub Category</label
                              >
                              <select class="form-control" name="subcategory" id="subcategory" required>
                                <option value="">--Select SubCategory--</option>
                              </select>
                        </div>
                     </div>
                     @endif
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Inventory</label
                              >
                              <select class="form-control" name="inventory" required>
                                <option value="1" <?php if(!empty($product)){if($product->inventory === 1){echo 'selected';}}?>>In Stock</option>
                                <option value="0" <?php if(!empty($product)){if($product->inventory === 0){echo 'selected';}}?>>Out of Stock</option>
                              </select>
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputname"
                              class="control-label col-form-label"
                              >Product Name</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              placeholder="Product name"
                              name="title"
                              id="title"
                              value="{{!empty($product) ? $product->title : ''}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                        <div class="mb-3">
                           <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >SKU</label
                              >
                           <input
                              type="text"
                              class="form-control"
                              id="sku"
                              name="sku"
                              placeholder="SKU"
                              value="{{!empty($product) ? $product->sku : ''}}"
                              />
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                      <label
                              for="inputlname"
                              class="control-label col-form-label"
                              >Select Variant</label
                              >
                      <select id="size" name="size[]" class="js-states form-control" multiple>
                        @foreach($variants as $v)
                            @php
                                $size = !empty($product) ? json_decode($product->size) : [];
                            @endphp
                            <option value="{{$v->title}}" {{in_array($v->title, $size) ? 'selected' : ''}}>{{$v->title}}</option>
                        @endforeach
                      </select>
                    </div>
                     <div class="col-sm-12 col-md-4">
                     <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" id="featured" name="featured" value="1" @if(!empty($product)) @if($product->featured == 1){{'checked'}} @endif @endif>
                      <label class="form-check-label" for="featured">Is Featured?</label>
                     </div>
                     </div>
                     <div class="col-sm-12 col-md-4">
                     <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" id="is_show" name="is_show" value="1" @if(!empty($product)) @if($product->is_show == 1){{'checked'}} @endif @else {{'checked'}} @endif>
                      <label class="form-check-label" for="featured">Show on Website</label>
                     </div>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-sm-12 col-md-12">
                        <div class="mb-3">
                           <label
                              for="inputEmail3"
                              class="control-label col-form-label"
                              >Product Short Description</label
                              >
                              <textarea class="form-control" id="short_description">{!! !empty($product) ? $product->short_description : '' !!}</textarea>
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-12">
                        <div class="mb-3">
                           <label
                              for="inputEmail3"
                              class="control-label col-form-label"
                              >Product Long Description</label>
                              <textarea class="form-control" id="description">{!! !empty($product) ? $product->description : '' !!}</textarea>
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-12">
                        <div class="mb-3">
                           <label
                              for="inputEmail3"
                              class="control-label col-form-label"
                              >Additional Info</label
                              >
                              <textarea class="form-control" id="additional_info">{!! !empty($product) ? $product->additional_info : '' !!}</textarea>
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
                              value="{{!empty($product) ? $product->meta_title : ''}}"
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
                              value="{{!empty($product) ? $product->meta_keyword : ''}}"

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
                           <textarea class="form-control" name="meta_description" id="meta_description" data-sample="1" >{{!empty($product) ? $product->meta_description : ''}}</textarea>
                           {!! !empty($product) ? '<input type="hidden" name="id" id="id" value="'.$product->id.'" />' : ''!!}
                        </div>
                     </div>
                     <!--<div class="col-sm-12 col-md-12">-->
                     <!--   <div class="mb-3">-->
                     <!--      <label-->
                     <!--         for="inputEmail3"-->
                     <!--         class="control-label col-form-label"-->
                     <!--         >Product Main Image</label-->
                     <!--         ><br>-->
                     <!--         @if(!empty($product))-->
                     <!--         <img src="{{url('uploads/thumbnail/'.$product->image)}}" class="img-thumbnail"/>-->
                     <!--         @endif-->
                     <!--         <input type="file" class="form-control" name="image" id="image" />-->
                     <!--   </div>-->
                     <!--</div>-->
                     <!--<div class="col-sm-12 col-md-12">-->
                     <!--   <div class="mb-3">-->
                     <!--      <label-->
                     <!--         for="inputEmail3"-->
                     <!--         class="control-label col-form-label"-->
                     <!--         >Product Other Image</label-->
                     <!--         ><br>-->
                     <!--         @if(!empty($product))-->
                     <!--         @foreach($productImages as $img)-->
                     <!--         <img src="{{url('uploads/thumbnail/'.$img->other_image)}}" class="img-thumbnail"/>-->
                     <!--         <a href="{{url('admin/delete/'.base64_encode($img->id).'/'.base64_encode('product_images'))}}" class="btn btn-danger delete  py-8 mb-4 rounded-2" style="margin-top: -60px;margin-left: -48px;margin-right: 20px;"><i class="fa fa-times"></i></a>-->
                     <!--         @endforeach-->
                     <!--         @endif-->
                     <!--         <input type="file" class="form-control" name="other_image[]" id="other_image" multiple="multiple" />-->
                     <!--   </div>-->
                     <!--</div>-->
                     <div class="row">
                     <div class="col-sm-12 col-md-12">
                        <h4>Variant Details</h4>
                    </div>
                    <table class="table table-bordered" id="dynamicTable">  
                        <tr>
                            <th>Product Variants</th>
                            <th>Product Regular Price</th>
                            <th>Product Sale Price</th>
                            <th>Product Main Image</th>
                            <th>Product Additional Images</th>
                            <th>Action</th>
                        </tr>
                        @if(!empty($product))
                            @if(count($productVariant) > 0)
                            @foreach($productVariant as $key => $v)
                                    <tr> 
                                        <td>
                                          <input
                                            type="text"
                                            class="form-control"
                                            id="product_size"
                                            name="product_size[]"
                                            placeholder="Product Size"
                                            value="{{$v->product_variant}}"
                                            />
                                        </td>
                                        <td>
                                          <input
                                            type="text"
                                            class="form-control"
                                            id="product_regular_price"
                                            name="product_regular_price[]"
                                            placeholder="Product Regular Price"
                                            value="{{$v->reg_price}}"
                                            />
                                        </td>
                                        <td>
                                          <input
                                            type="text"
                                            class="form-control"
                                            id="product_sale_price"
                                            name="product_sale_price[]"
                                            placeholder="Product Sale Price"
                                            value="{{$v->sale_price}}"
                                            />
                                            <input
                                            type="hidden"
                                            class="form-control"
                                            id="variant_id"
                                            name="variant_id[]"
                                            value="{{$v->id}}"
                                            />
                                        </td>
                                        <td>
                                          @if($v->image)
                                          <img src="{{asset('uploads/'.$v->image)}}" class="img-thumbnail" width="100"/>
                                          <br><br>
                                          @endif
                                          <input
                                            type="file"
                                            class="form-control"
                                            id="product_image"
                                            name="product_image[]"
                                            />
                                        </td> 
                                        <td>
                                          @if(!empty($productImages))
                                          @foreach($productImages as $keys => $img)
                                          @if($img->variant_id === $v->id)
                                          <img src="{{asset('uploads/'.$img->other_image)}}" class="img-thumbnail" width="100"/>
                                          <a href="{{ url('admin/delete/' . base64_encode($img->id) . '/' . base64_encode('product_images')) }}" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>
                                          <br><br>
                                          @endif
                                          @endforeach
                                          @endif
                                          <input
                                            type="file"
                                            class="form-control"
                                            id="product_additional_image"
                                            name="product_additional_image[{{$key}}][]"
                                            multiple
                                            />
                                        </td> 
                                        <td>
                                          <a href="{{ url('admin/delete/' . base64_encode($v->id) . '/' . base64_encode('product_variance_data')) }}" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>
                                        </td> 
                                    </tr>
                            @endforeach
                            @else
                                @php
                                    $sizes = !empty($product) ? json_decode($product->size) : [];
                                @endphp
                                @foreach($sizes as $key => $s)
                                    <tr> 
                                        <td>
                                          <input
                                            type="text"
                                            class="form-control"
                                            id="product_size"
                                            name="product_size[]"
                                            placeholder="Product Size"
                                            value="{{$s}}"
                                            />
                                        </td>
                                        <td>
                                          <input
                                            type="text"
                                            class="form-control"
                                            id="product_regular_price"
                                            name="product_regular_price[]"
                                            placeholder="Product Regular Price"
                                            value=""
                                            />
                                        </td>
                                        <td>
                                          <input
                                            type="text"
                                            class="form-control"
                                            id="product_sale_price"
                                            name="product_sale_price[]"
                                            placeholder="Product Sale Price"
                                            value=""
                                            />
                                        </td>
                                        <td>
                                          <input
                                            type="file"
                                            class="form-control"
                                            id="product_image"
                                            name="product_image[]"
                                            />
                                        </td> 
                                        <td>
                                          <input
                                            type="file"
                                            class="form-control"
                                            id="product_additional_image"
                                            name="product_additional_image[{{$key}}][]"
                                            multiple
                                            />
                                        </td> 
                                        <td></td>
                                    </tr>
                                @endforeach
                            @endif
                        @endif
                    </table> 
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<script>
      $("#size").select2({
          placeholder: "Select Variant",
          allowClear: true
      });
</script>
<script>
   $(document).ready(function() {
     $('#product-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = new FormData(this);
         var editorContent = tinymce.get('short_description').getContent();
         var editorContent1 = tinymce.get('description').getContent()
         var editorContent2 = tinymce.get('additional_info').getContent()
         formData.append('short_description', editorContent);
         formData.append('description', editorContent1);
         formData.append('additional_info', editorContent2);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/add-product")}}',
             data: formData,
             cache: false,
            contentType: false,
            processData: false,
             success: function(response) {
                 if (response.status == 'success') {
                      window.location.href = response.url;
                     $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.message);
                     $('.success').attr('style', 'display:block');
                 } else {
                    $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.message);
                     $('.failed').attr('style', 'display:block');
                 }
             },
             error: function() {
                 $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.message);
                     $('.failed').attr('style', 'display:block');
             }
         });
     });
     $('#category').off('change').on('change', function () {
        let categoryId = $(this).val();
    
        $.ajax({
            type: 'POST',
            url: '{{ url("/admin/getSubcategoryById") }}',
            data: {
                id: categoryId,
                _token: '{{ csrf_token() }}'
            },
            success: function (response) {
                let subcategorySelect = $('#subcategory');
                subcategorySelect.empty();
    
                if (response.status === 'success') {
                    subcategorySelect.append('<option value="">Select Subcategory</option>');
    
                    $.each(response.data, function (key, subcategory) {
                        subcategorySelect.append(
                            `<option value="${subcategory.id}">${subcategory.title}</option>`
                        );
                    });
                } else {
                    subcategorySelect.append('<option value="">No subcategories found</option>');
                }
            },
            error: function () {
                alert('Error loading subcategories');
            }
        });
    });
   });
</script>
@endsection