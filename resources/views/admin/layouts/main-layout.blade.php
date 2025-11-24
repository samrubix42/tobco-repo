@php
$contact = DB::table('contact_settings')->get()->first();
@endphp
<!DOCTYPE html>
<html lang="en">
   <head>
      <!--  Title -->
      <title>{{$page_title}}</title>
      <!--  Required Meta Tag -->
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="handheldfriendly" content="true" />
      <meta name="MobileOptimized" content="width" />
      <meta name="description" content="Mordenize" />
      <meta name="author" content="" />
      <meta name="keywords" content="Mordenize" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="csrf-token" content="{{ csrf_token() }}">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
      <link rel="stylesheet" href="https://demos.adminmart.com/premium/bootstrap/modernize-bootstrap/package/dist/libs/sweetalert2/dist/sweetalert2.min.css">
      <!--  Favicon -->
      <link rel="shortcut icon" type="image/png" href="https://demos.adminmart.com/premium/bootstrap/modernize-bootstrap/package/dist/images/logos/favicon.ico" />
      <!-- Owl Carousel  -->
      <link rel="stylesheet" href="{{asset('public/backend')}}/dist/libs/owl.carousel/dist/assets/owl.carousel.min.css">
      <!-- Core Css -->
      <link rel="stylesheet" href="{{asset('public/backend')}}/dist/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
      <link  id="themeColors"  rel="stylesheet" href="{{asset('public/backend')}}/dist/css/style.min.css" />
      <link rel="stylesheet" href="{{asset('public/backend')}}/dist/libs/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
      
      <link href="https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.snow.css" rel="stylesheet" />



   </head>
   <body>
      <!-- Preloader -->
      <div class="preloader">
         <img src="{{url('uploads/'.$contact->logo)}}" alt="loader" class="lds-ripple img-fluid" />
      </div>
      <!-- Preloader -->
      <div class="preloader">
         <img src="{{url('uploads/'.$contact->logo)}}" alt="loader" class="lds-ripple img-fluid" />
      </div>
      <!--  Body Wrapper -->
      <div class="page-wrapper" id="main-wrapper" data-theme="blue_theme"  data-layout="vertical" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed">
      <!-- Sidebar Start -->
      <aside class="left-sidebar">
         <!-- Sidebar scroll-->
         <div>
            <div class="brand-logo d-flex align-items-center justify-content-between">
               <a href="index.html" class="text-nowrap logo-img">
               <img src="{{url('uploads/'.$contact->logo)}}" class="dark-logo" width="180" alt="" />
               <img src="{{url('uploads/'.$contact->logo)}}" class="light-logo"  width="180" alt="" />
               </a>
               <div class="close-btn d-lg-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
                  <i class="ti ti-x fs-8 text-muted"></i>
               </div>
            </div>
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav scroll-sidebar" data-simplebar>
               <ul id="sidebarnav">
                  <!-- ============================= -->
                  <!-- Home -->
                  <!-- ============================= -->
                  <li class="nav-small-cap">
                     <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                     <span class="hide-menu">Page Management</span>
                  </li>
                  <!-- =================== -->
                  <!-- Dashboard -->
                  <!-- =================== -->
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/pages')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Pages</span>
                     </a>
                  </li>
                  <!--<li class="sidebar-item">-->
                  <!--   <a class="sidebar-link" href="{{url('admin/slider')}}" aria-expanded="false">-->
                  <!--   <span>-->
                  <!--   <i class="ti ti-aperture"></i>-->
                  <!--   </span>-->
                  <!--   <span class="hide-menu">Manage Sliders</span>-->
                  <!--   </a>-->
                  <!--</li>-->
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/category')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Category</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/subcategory')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage SubCategory</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/variants')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Variants</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/product')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Products</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/inventory')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Inventory</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/coupon')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Coupon</span>
                     </a>
                  <!--</li>-->
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/testimonials')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Testimonials</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/blogs')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Blogs</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/orders')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Orders</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/enquiry')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Enquiry</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/contact-settings')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Manage Settings</span>
                     </a>
                  </li>
                  <li class="sidebar-item">
                     <a class="sidebar-link" href="{{url('admin/logout')}}" aria-expanded="false">
                     <span>
                     <i class="ti ti-aperture"></i>
                     </span>
                     <span class="hide-menu">Logout</span>
                     </a>
                  </li>
               </ul>
              
            </nav>
            <!-- End Sidebar navigation -->
         </div>
         <!-- End Sidebar scroll-->
      </aside>
      <!--  Sidebar End -->
      <!--  Main wrapper -->
      <div class="body-wrapper">
        <!--  Header Start -->
        <header class="app-header"> 
          <nav class="navbar navbar-expand-lg navbar-light">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link sidebartoggler nav-icon-hover ms-n3" id="headerCollapse" href="javascript:void(0)">
                  <i class="ti ti-menu-2"></i>
                </a>
              </li>
              <li class="nav-item d-none d-lg-block">
                <a class="nav-link nav-icon-hover" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#exampleModal">
                  <i class="ti ti-search"></i>
                </a>
              </li>
            </ul>
          </nav>
        </header>
         @yield('content')
         <div class="swal2-container swal2-center swal2-backdrop-show success" style="overflow-y: auto;"><div aria-labelledby="swal2-title" aria-describedby="swal2-html-container" class="swal2-popup swal2-modal swal2-icon-success swal2-show" tabindex="-1" role="dialog" aria-live="assertive" aria-modal="true" style="display: grid;margin: auto;"><button type="button" class="swal2-close" aria-label="Close this dialog" style="display: none;">×</button><ul class="swal2-progress-steps" style="display: none;"></ul><div class="swal2-icon swal2-success swal2-icon-show" style="display: flex;"><div class="swal2-success-circular-line-left" style="background-color: rgb(255, 255, 255);"></div>
         <span class="swal2-success-line-tip"></span> <span class="swal2-success-line-long"></span>
         <div class="swal2-success-ring"></div> <div class="swal2-success-fix" style="background-color: rgb(255, 255, 255);"></div>
         <div class="swal2-success-circular-line-right" style="background-color: rgb(255, 255, 255);"></div>
         </div><img class="swal2-image" style="display: none;"><h2 class="swal2-title" id="swal2-title" style="display: block;"></h2><div class="swal2-html-container swal2-msg" style="display: block;"></div><input class="swal2-input" style="display: none;"><input type="file" class="swal2-file" style="display: none;"><div class="swal2-range" style="display: none;"><input type="range"><output></output></div><select class="swal2-select" style="display: none;"></select><div class="swal2-radio" style="display: none;"></div><label for="swal2-checkbox" class="swal2-checkbox" style="display: none;"><input type="checkbox"><span class="swal2-label"></span></label><textarea class="swal2-textarea" style="display: none;"></textarea><div class="swal2-validation-message" id="swal2-validation-message" style="display: none;"></div><div class="swal2-actions" style="display: flex;"><div class="swal2-loader"></div><button type="button" class="swal2-confirm swal2-styled" aria-label="" style="display: inline-block;">Close</button><button type="button" class="swal2-deny swal2-styled" aria-label="" style="display: none;">No</button><button type="button" class="swal2-cancel swal2-styled" aria-label="" style="display: none;">Cancel</button></div><div class="swal2-footer" style="display: none;"></div><div class="swal2-timer-progress-bar-container"><div class="swal2-timer-progress-bar" style="display: none;"></div></div></div></div>
         
         <div class="swal2-container swal2-center swal2-backdrop-show failed" style="overflow-y: auto;"><div aria-labelledby="swal2-title" aria-describedby="swal2-html-container" class="swal2-popup swal2-modal swal2-show" tabindex="-1" role="dialog" aria-live="assertive" aria-modal="true" style="display: grid;"><button type="button" class="swal2-close" aria-label="Close this dialog" style="display: none;">×</button><ul class="swal2-progress-steps" style="display: none;"></ul><div class="swal2-icon" style="display: none;"></div><img class="swal2-image" style="display: none;"><h2 class="swal2-title" id="swal2-title" style="display: block;">Oops...</h2><div class="swal2-html-container" id="swal2-html-container" style="display: block;">Something went wrong!</div><input class="swal2-input" style="display: none;"><input type="file" class="swal2-file" style="display: none;"><div class="swal2-range" style="display: none;"><input type="range"><output></output></div><select class="swal2-select" style="display: none;"></select><div class="swal2-radio" style="display: none;"></div><label for="swal2-checkbox" class="swal2-checkbox" style="display: none;"><input type="checkbox"><span class="swal2-label"></span></label><textarea class="swal2-textarea" style="display: none;"></textarea><div class="swal2-validation-message" id="swal2-validation-message" style="display: none;"></div><div class="swal2-actions" style="display: flex;"><div class="swal2-loader"></div><button type="button" class="swal2-confirm swal2-styled" aria-label="" style="display: inline-block;">Close</button><button type="button" class="swal2-deny swal2-styled" aria-label="" style="display: none;">No</button><button type="button" class="swal2-cancel swal2-styled" aria-label="" style="display: none;">Cancel</button></div><div class="swal2-timer-progress-bar-container"><div class="swal2-timer-progress-bar" style="display: none;"></div></div></div></div>
      <script src="https://cdn.tiny.cloud/1/83s38nqwn0bzjp2c0r43kuu7xklfyuacc10h6o75ibxvho7p/tinymce/7/tinymce.min.js" referrerpolicy="origin"></script>

<script>
  tinymce.init({
    selector: '#description',
    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount code',
    toolbar: 'undo redo | bold italic underline strikethrough | fontfamily fontsize blocks | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl',
  });
  tinymce.init({
    selector: '#short_description',
    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount code',
    toolbar: 'undo redo | bold italic underline strikethrough | fontfamily fontsize blocks | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl',
  });
  tinymce.init({
    selector: '#additional_info',
    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount code',
    toolbar: 'undo redo | bold italic underline strikethrough | fontfamily fontsize blocks | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl',
  });
</script>
<script>
   $('.swal2-container').attr('style', 'display:none');
   $('.swal2-confirm').click(function(){
      $('.swal2-container').attr('style', 'display:none');
      location.reload(true);
   })
</script>
<script>
$('body').on('click', '.delete', function() {
    if(confirm("Are you sure you want to delete this?")){
        return true;
    }
    else{
        return false;
    }
});
</script>
<script type="text/javascript">
   
    var i = 0;
       
    $("#add").click(function(){
   
        ++i;
   
        $("#dynamicTable").append('<tr><td> <input type="text" class="form-control" id="product_unit" name="product_unit[]" placeholder="Product Unit" value=""/></td><td> <input type="text" class="form-control" id="product_regular_price" name="product_regular_price[]" placeholder="Product Regular Price" value=""/></td><td> <input type="text" class="form-control" id="product_sale_price" name="product_sale_price[]" placeholder="Product Sale Price" value=""/></td><td> <input type="number" class="form-control"  id="product_inventory" name="product_inventory[]" placeholder="Product Inventory" value=""/></td><td><button type="button" class="btn btn-danger remove-tr">Remove</button></td></tr>');
    });
   
    $(document).on('click', '.remove-tr', function(){  
         $(this).parents('tr').remove();
    });  
   
</script>
      <!--  Customizer -->
      <!--  Import Js Files -->
      <script src="{{asset('public/backend')}}/dist/libs/jquery/dist/jquery.min.js"></script>
      <script src="{{asset('public/backend')}}/dist/libs/simplebar/dist/simplebar.min.js"></script>
      <script src="{{asset('public/backend')}}/dist/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
      <!--  core files -->
      <script src="{{asset('public/backend')}}/dist/js/app.min.js"></script>
      <script src="{{asset('public/backend')}}/dist/js/app.init.js"></script>
      <script src="{{asset('public/backend')}}/dist/js/app-style-switcher.js"></script>
      <script src="{{asset('public/backend')}}/dist/js/sidebarmenu.js"></script>
      <script src="{{asset('public/backend')}}/dist/js/custom.js"></script>
      <!--  current page js files -->
      <script src="{{asset('public/backend')}}/dist/libs/owl.carousel/dist/owl.carousel.min.js"></script>
      <script src="{{asset('public/backend')}}/dist/libs/apexcharts/dist/apexcharts.min.js"></script>
      <script src="{{asset('public/backend')}}/dist/js/dashboard.js"></script>
      <script src="{{asset('public/backend')}}/dist/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
        <script src="{{asset('public/backend')}}/dist/js/datatable/datatable-advanced.init.js"></script>
        <script src="https://demos.adminmart.com/premium/bootstrap/modernize-bootstrap/package/dist/libs/sweetalert2/dist/sweetalert2.min.js"></script>
        <script src="https://demos.adminmart.com/premium/bootstrap/modernize-bootstrap/package/dist/js/forms/sweet-alert.init.js"></script>
       
   </body>
</html>