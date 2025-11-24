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
                     class="table border table-striped table-bordered display text-nowrap w-100"
                     >
                     <thead>
                        <!-- start row -->
                        <tr>
                           <th class="d-none">ID</th>
                           <th>Category</th>
                           <th>Product Title</th>
                           <th>Image</th>
                           <th>Total Inventory</th>
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
                    <h5 class="modal-title" id="exampleModalLongTitle">Update {{$page_title}}</h5>
                    <button
                     type="button"
                     class="btn-close"
                     data-bs-dismiss="modal"
                     aria-label="Close"
                     ></button>
                </div>
                <div class="modal-body">
                <form id="update-inventory-form" enctype="multipart/form-data">
                     <div class="row" id="variantInputs">
                         @foreach($variants as $v)
                        <div class="col-md-6 mb-3">
                           <label for="editVariants">Variants</label>
                           <input type="text" class="form-control" id="editVariants" name="variant_title[]" placeholder="Variant" readonly value="{{$v->title}}"/>
                           <input type="hidden" name="variant_id[]" id="variant_id" value="{{$v->id}}"/>
                        </div>
                        <div class="col-md-6 mb-3">
                           <label for="editInventory">Inventory</label>
                           <input type="number" min="0" value="0" class="form-control" id="editInventory" name="inventory[]" placeholder="Inventory"/>
                        </div>
                        @endforeach
                     </div>
                     <input type="hidden" name="product_id" id="product_id" value=""/>
                     <button class="btn btn-info rounded-pill px-4 mt-3">
                     Update {{$page_title}}
                     </button>
                  </form>
                </div>
            </div>
        </div>
    </div>
<script>
   function getProducts() {
    var table = $('#file_export_1').DataTable({
        serverSide: true,
        ajax: {
            url: '{{ url("admin/get-products") }}',
            type: 'GET',
        },
        columns: [
            { data: 'category', name: 'category' },
            { data: 'title', name: 'title' },
            { data: 'image', name: 'image' },
            { data: 'inventory', name: 'inventory' },
            { data: 'date', name: 'created_at' },
            { data: 'id', name: 'id' } // You need to return 'id' from server for action column
        ],
        columnDefs: [
            {
                targets: 5, // This is the 'action' column
                render: function (data, type, row, meta) {
                    return `<button class="btn btn-primary py-2 px-3 mb-1 rounded-2 editbtn" data-id="${data}">
                        <i class="fa fa-upload"></i> Update Inventory
                    </button>`;
                }
            }
        ],
        deferRender: false,
        search: {
            caseInsensitive: false,
        },
        dom: '<"row"<"col-md-6"l><"col-md-6"f>>rt<"bottom"<"col-md-6"i><"col-md-6"p>>',
        lengthMenu: [10, 25, 50, 100],
    });
}

$(document).ready(function () {
    getProducts();

    // Open modal on Edit button click
    $('body').on('click', '.editbtn', function () {
        var productId = $(this).data('id');
        $('#product_id').val(productId); // assuming hidden input in form
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: 'GET',
            url: '{{ url("/admin/get-inventory") }}',
            data: { productId: productId },
            cache: false,
            success: async function (response) {
                const container = $('#variantInputs');
                const data = typeof response.data === 'string' ? JSON.parse(response.data) : response.data;
                container.empty(); // clear if any existing inputs
                data.forEach((item, index) => {
                    const inputGroup = `
                        <div class="col-md-6 mb-3">
                           <label for="editVariants">Variants : ${item.variant_title}</label>
                           <input type="text" class="form-control" id="editVariants" name="variant_title[]" placeholder="Variant" readonly value="${item.variant_title}"/>
                           <input type="hidden" name="variant_id[]" id="variant_id" value="${item.variant_id}"/>
                        </div>
                        <div class="col-md-6 mb-3">
                           <label for="editInventory">Inventory</label>
                           <input type="number" min="0" value="${item.inventory}" class="form-control" id="editInventory" name="inventory[]" placeholder="Inventory"/>
                        </div>
                    `;
                    container.append(inputGroup);
                });
                $('#bs-example-modal-lg1').modal('show');
            },
            error: async function (xhr) {
                $('#bs-example-modal-lg1').modal('hide');
                const response = xhr.responseJSON || { status: "Error", msg: "Something went wrong" };
                await $('.swal2-title').html(response.status);
                await $('.swal2-msg').html(response.msg);
                await $('.failed').show();
            }
        });
        
    });

    // Submit form to update inventory
    $('#update-inventory-form').on('submit', function (event) {
        event.preventDefault();
        var formData = new FormData(this);
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: 'POST',
            url: '{{ url("/admin/update-inventory") }}',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success: async function (response) {
                $('#bs-example-modal-lg1').modal('hide');
                if (response.status == 'success') {
                    await $('.swal2-title').html(response.status);
                    await $('.swal2-msg').html(response.msg);
                    await $('.success').show();
                } else {
                    await $('.swal2-title').html(response.status);
                    await $('.swal2-msg').html(response.msg);
                    await $('.failed').show();
                }
            },
            error: async function (xhr) {
                $('#bs-example-modal-lg1').modal('hide');
                const response = xhr.responseJSON || { status: "Error", msg: "Something went wrong" };
                await $('.swal2-title').html(response.status);
                await $('.swal2-msg').html(response.msg);
                await $('.failed').show();
            }
        });
    });
});
  </script>
@endsection