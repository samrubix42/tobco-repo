<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\TestimonialModel;
use App\Models\PageModel;
use App\Models\BlogModel;
use App\Models\VariantsModel;
use App\Models\CategoryModel;
use App\Models\SliderModel;
use App\Models\ProductModel;
use App\Models\ProductImagesModel;
use App\Models\InventoryModel;
use App\Models\SubCategoryModel;
use App\Models\PortfolioModel;
use App\Models\CouponModel;
use App\Models\OrderModel;
use App\Models\CustomerModel;
use App\Models\ContactSettingsModel;
use App\Models\SavedAddressModel;
use Intervention\Image\Facades\Image as Image;
use DB;
use Mail;
class BackendController extends Controller
{
    public function index()
    {
        $page_title = 'Signin';
        return view('admin.signin', compact('page_title'));
    }
    public function dashboard()
    {
        $page_title = 'Dashboard';
        $user       = Auth::user();
        return view('admin.dashboard', compact('user', 'page_title'));
    }
    public function variants(){
        $page_title     = 'Variants';
        $variants   = VariantsModel::orderBy('id', 'desc')->get();
        return view('admin.product.variants', compact('page_title', 'variants'));
    }
    public function addVariants(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'title'         => $request->input('title'),
            'code'         => $request->input('code'),
        );
        if($request->input('id') == '')
        {
            $response           = VariantsModel::insert($params);
        }else
        {
            $response = VariantsModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'message' => 'Variants Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong']);
        }
    }
    public function testimonials(){
        $page_title     = 'Testimonial';
        $testimonials   = TestimonialModel::orderBy('id', 'desc')->get();
        return view('admin.testimonials.testimonials', compact('page_title', 'testimonials'));
    }
    public function addTestimonials(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'title'         => $request->input('title'),
            'designation'   => $request->input('designation'),
            'comment'       => $request->input('comment'),
        );
        if($request->file('image') != '')
        {
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);

        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        
        $image_resize->resize(60, 60);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }
        
        if($request->input('id') == '')
        {
            $params['image']    = $imageName;
            $response           = TestimonialModel::insert($params);
        }else
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }
            $response = TestimonialModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'message' => 'Testimonials Added Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong']);
        }
    }
    public function pages(){
        $page_title = 'Pages';
        $pages      = PageModel::orderBy('id', 'desc')->get();
        return view('admin.pages.pages', compact('page_title', 'pages'));
    }
    public function getPages(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start'); // Starting record number
        $length = $request->input('length'); // Number of records to display per page
        $searchValue = $request->input('search.value');
        $data = PageModel::select('*');

        if (!empty($searchValue)) {
            $data->where(function ($query) use ($searchValue) {
                $query->where('title', 'like', '%' . $searchValue . '%');
            });
        }
            // Get the total number of records (without pagination)
        $totalRecords = $data->count();

        // Apply pagination
        $data->skip($start)->take($length);

        $items = $data->orderBy('id', 'desc')->get();
        foreach($items as $i){
        $newData[] = array(
            'id'    => $i->id,
            'title' => $i->title,
            'slug'  => $i->slug,
            'meta_title'  => $i->meta_title,
            'meta_keyword'  => $i->meta_keyword,
            'meta_description'  => $i->meta_description,
            'date'  => date('d F, Y', strtotime($i->created_at)),
            'action' => '<a href="'.url("admin/add-pages/".$i->id).'" class="btn btn-primary  py-8 mb-4 rounded-2"><i class="fa fa-edit"></i></a>
            <a href="'.url("admin/delete/".base64_encode($i->id)."/".base64_encode("page")).'" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>'
        );
        }
        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords, // For now, the same as recordsTotal, can be adjusted if needed.
            'data' => $newData,
        ]);
    }
    public function addPages(){
        $page_title = 'Add Pages';
        return view('admin.pages.add_pages', compact('page_title'));
    }
    public function savePages(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'title'             => $request->input('title'),
            'slug'              => $request->input('slug'),
            'description'       => $request->input('description'),
            'meta_title'        => $request->input('meta_title'),
            'meta_keyword'      => $request->input('meta_keyword'),
            'meta_description'  => $request->input('meta_description'),   
        );
        if($request->file('image') != '')
        {
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);

        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        $image_resize->resize(60, 60);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }
        
        if($request->input('id') == '')
        {
            $checkPage      = PageModel::where('slug', $request->input('slug'))->count();
            if($checkPage > 0)
            {
                return response()->json(['status' => 'failed', 'message' => 'Page Already Exist']);
            }else{
                $response   = PageModel::insert($params);
            }
            
        }else
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }
            $response = PageModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'Page Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong']);
        }
    }
    public function editPages($id){
        $page_title = 'Edit Page';
        $page       = PageModel::where('id', $id)->get()->first();
        return view('admin.pages.add_pages', compact('page_title', 'page'));
    }

    public function category(){
        $page_title = 'Category';
        $category   = CategoryModel::orderBy('id', 'desc')->get();
        return view('admin.product.category', compact('page_title', 'category'));
    }
    public function getCategory(Request $request)
    {
        $page_title = 'Category';
        $draw = $request->input('draw');
        $start = $request->input('start'); // Starting record number
        $length = $request->input('length'); // Number of records to display per page
        $searchValue = $request->input('search.value');
        $data = CategoryModel::select('*');

        if (!empty($searchValue)) {
            $data->where(function ($query) use ($searchValue) {
                $query->where('title', 'like', '%' . $searchValue . '%')
                    ->orWhere('slug', 'like', '%' . $searchValue . '%');
            });
        }
            // Get the total number of records (without pagination)
        $totalRecords = $data->count();

        // Apply pagination
        $data->skip($start)->take($length);

        $items = $data->orderBy('id', 'desc')->get();
        if(count($items) > 0){
            foreach($items as $i){
                // include meta fields and page_content as data-attributes on the edit button so the modal can be populated client-side
                $editBtn = '<button '
                    . 'class="btn btn-primary py-8 mb-4 rounded-2 editbtn" '
                    . 'data-id="'.e($i->id).'" '
                    . 'data-slug="'.e($i->slug).'" '
                    . 'data-meta_title="'.e($i->meta_title).'" '
                    . 'data-meta_keyword="'.e($i->meta_keyword).'" '
                    . 'data-meta_description="'.e($i->meta_description).'" '
                    . 'data-page_content="'.e($i->page_content).'"'
                    . '><i class="fa fa-edit"></i></button>';

                $newData[] = array(
                    'id'    => $i->id,
                    'title' => $i->title,
                    'slug'  => $i->slug,
                    'image' => '<img src="'.url("public/uploads/thumbnail/".$i->image).'" />',
                    'date'  => date('d F, Y', strtotime($i->created_at)),
                    'action' => $editBtn . ' <a href="'.url("admin/delete/".base64_encode($i->id)."/".base64_encode("category")).'" class="btn btn-danger delete py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>'
                );
            }
        }else{
            $newData  =array();
        }
        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords, 
            'data' => $newData,
        ]);
    }
    public function addCategory(Request $request)
    {
        $data   = $request->all();
        // Use the slug provided in the request without modification
        $params = array(
            'title'         => $request->input('title'),
            'slug'          => $request->input('slug'),
            'meta_title'    => $request->input('meta_title'),
            'meta_keyword'  => $request->input('meta_keyword'),
            'meta_description' => $request->input('meta_description'),
            'page_content'  => $request->input('page_content'),
        );
        if($request->file('image') != '')
        {
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);

        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        $image_resize->resize(80, 80);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }

        if($request->input('id') == '')
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }
            $response        = CategoryModel::insert($params);
        }else
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }

            $response = CategoryModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'Category Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong.. Please Try Again']);
        }
    }
    public function getCategoryById(Request $request)
    {
        $id = $request->input('id');
        if (empty($id)) {
            return response()->json(['status' => 'failed', 'msg' => 'Missing id']);
        }
        $category = CategoryModel::where('id', $id)->first();
        if (!$category) {
            return response()->json(['status' => 'failed', 'msg' => 'Category not found']);
        }
        return response()->json(['status' => 'success', 'data' => $category]);
    }
    public function subcategory(){
        $page_title = 'Sub Category';
        $category   = CategoryModel::orderBy('id', 'desc')->get();
        return view('admin.product.subcategory', compact('page_title', 'category'));
    }
    public function getSubCategory(Request $request)
    {
        $page_title = 'Sub Category';
        $draw = $request->input('draw');
        $start = $request->input('start');
        $length = $request->input('length');
        $searchValue = $request->input('search.value');
    
        // Join CategoryModel
        $data = SubCategoryModel::select(
                'subcategory.*',
                'category.title as ctitle', 'category.id as cid'
            )
            ->leftJoin('category', 'subcategory.category', '=', 'category.id');
    
        if (!empty($searchValue)) {
            $data->where(function ($query) use ($searchValue) {
                $query->where('subcategory.title', 'like', '%' . $searchValue . '%')
                      ->orWhere('subcategory.slug', 'like', '%' . $searchValue . '%')
                      ->orWhere('category.title', 'like', '%' . $searchValue . '%');
            });
        }
    
        $totalRecords = $data->count();
    
        // Pagination and ordering
        $data->skip($start)->take($length);
        $items = $data->orderBy('subcategory.id', 'desc')->get();
    
        $newData = [];
    
        foreach ($items as $i) {
            $newData[] = [
                'id'       => $i->id,
                'category' => $i->ctitle.'-'.$i->cid,
                'title'    => $i->title,
                'slug'     => $i->slug,
                'date'     => date('d F, Y', strtotime($i->created_at)),
                'action'   => '<button class="btn btn-primary py-8 mb-4 rounded-2 editbtn"><i class="fa fa-edit"></i></button>
                              <a href="'.url("admin/delete/".base64_encode($i->id)."/".base64_encode("subcategory")).'" class="btn btn-danger delete py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>',
            ];
        }
    
        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords,
            'data' => $newData,
        ]);
    }
    public function addSubCategory(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'category'         => $request->input('category'),
            'title'         => $request->input('title'),
            'slug'          =>  strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('title')))),
        );
        if($request->file('image') != '')
        {
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);

        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        $image_resize->resize(80, 80);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }

        if($request->input('id') == '')
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }
            $response        = SubCategoryModel::insert($params);
        }else
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }

            $response = SubCategoryModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'SubCategory Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong.. Please Try Again']);
        }
    }
    public function getSubcategoryById(Request $request)
    {
        $categoryId = $request->id;
    
        $subcategories = SubCategoryModel::where('category', $categoryId)
            ->select('id', 'title')
            ->orderBy('title', 'asc')
            ->get();
    
        if ($subcategories->count() > 0) {
            return response()->json([
                'status' => 'success',
                'message' => 'Subcategories loaded successfully.',
                'data' => $subcategories
            ]);
        } else {
            return response()->json([
                'status' => 'error',
                'message' => 'No subcategories found.',
                'data' => []
            ]);
        }
    }
    public function coupon(){
        $page_title = 'Coupon';
        $coupon   = CouponModel::orderBy('id', 'desc')->get();
        return view('admin.coupon.coupon', compact('page_title', 'coupon'));
    }
    public function getCoupon(Request $request)
    {
        $page_title = 'Coupon';
        $draw = $request->input('draw');
        $start = $request->input('start'); // Starting record number
        $length = $request->input('length'); // Number of records to display per page
        $searchValue = $request->input('search.value');
        $data = CouponModel::select('*');

        if (!empty($searchValue)) {
            $data->where(function ($query) use ($searchValue) {
                $query->where('title', 'like', '%' . $searchValue . '%')
                    ->orWhere('slug', 'like', '%' . $searchValue . '%');
            });
        }
            // Get the total number of records (without pagination)
        $totalRecords = $data->count();

        // Apply pagination
        $data->skip($start)->take($length);

        $items = $data->orderBy('id', 'desc')->get();
        foreach($items as $i){
        $newData[] = array(
            'id'    => $i->id,
            'title' => $i->title,
            'code'  => $i->code,
            'value' => $i->value,
            'coupon_type'  => $i->coupon_type,
            'min_amount'  => $i->min_amount,
            'coupon_validity'  => $i->coupon_validity,
            'particular_date'  => $i->particular_date != '0000-00-00' ? date('d F, Y', strtotime($i->particular_date)) : '-',
            'from_date'  => $i->from_date != '0000-00-00' ? date('d F, Y', strtotime($i->from_date)) : '-',
            'to_date'  => $i->to_date != '0000-00-00'? date('d F, Y', strtotime($i->to_date)) : '-',
            'date'  => $i->created_at != '0000-00-00' ? date('d F, Y', strtotime($i->created_at)) : '-',
            'action' => '<button class="btn btn-primary  py-8 mb-4 rounded-2 editbtn"><i class="fa fa-edit"></i></button>
            <a href="'.url("admin/delete/".base64_encode($i->id)."/".base64_encode("coupon")).'" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>'
        );
        }
        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords, // For now, the same as recordsTotal, can be adjusted if needed.
            'data' => $newData,
        ]);
    }
    public function addCoupon(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'title'            => $request->input('title') ? $request->input('title') : '',
            'code'             => $request->input('code') ? $request->input('code') : '',
            'coupon_type'      => $request->input('coupon_type') ? $request->input('coupon_type') : '',
            'min_amount'       => $request->input('min_amount') ? $request->input('min_amount') : '',
            'coupon_validity'  => $request->input('coupon_validity') ? $request->input('coupon_validity') : '',
            'particular_date'  => $request->input('particular_date') ? $request->input('particular_date') : '0000-00-00',
            'from_date'        => $request->input('from_date') ? $request->input('from_date') : '0000-00-00',
            'to_date'          => $request->input('to_date') ? $request->input('to_date') : '0000-00-00',
            'value'            => $request->input('value') ? $request->input('value') : 0,
            
        );
        if($request->input('id') == '')
        {
            $response        = CouponModel::insert($params);
        }else
        {
            $response = CouponModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'Coupon Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong.. Please Try Again']);
        }
    }

    public function slider(){
        $page_title = 'Slider';
        $slider   = SliderModel::orderBy('id', 'desc')->get();
        return view('admin.slider.slider', compact('page_title', 'slider'));
    }
    public function getSlider(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start'); // Starting record number
        $length = $request->input('length'); // Number of records to display per page
        $searchValue = $request->input('search.value');
        $data = SliderModel::select('id', 'title', 'banner_image', 'subtitle', 'price', 'url', 'description', 'created_at');

        if (!empty($searchValue)) {
            $data->where(function ($query) use ($searchValue) {
                $query->where('title', 'like', '%' . $searchValue . '%');
            });
        }
            // Get the total number of records (without pagination)
        $totalRecords = $data->count();

        // Apply pagination
        $data->skip($start)->take($length);

        $items = $data->orderBy('id', 'desc')->get();
        if(count($items) > 0){
            foreach($items as $i){
                $newData[] = array(
                    'id'    => $i->id,
                    'title' => $i->title,
                    'image'  => '<img src="'.url("public/uploads/thumbnail/".$i->banner_image).'" class="img-thumbnail"/>',
                     'subtitle' => $i->subtitle,
                      'price' => $i->price,
                       'url' => $i->url,
                        'content' => $i->description,
                    'date'  => date('d F, Y', strtotime($i->created_at)),
                    'action' => '<button class="btn btn-primary  py-8 mb-4 rounded-2 editbtn"><i class="fa fa-edit"></i></button>
                    <a href="'.url("admin/delete/".base64_encode($i->id)."/".base64_encode("slider_master")).'" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>'
                );
            } 
        }else{
           $newData = array(); 
        }
        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords, // For now, the same as recordsTotal, can be adjusted if needed.
            'data' => $newData,
        ]);
    }
    public function orders(){
        $page_title = 'Orders';
        return view('admin.orders.orders', compact('page_title'));
    }
    public function getOrders(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start', 0);
        $length = $request->input('length', 10);
        $searchValue = $request->input('search.value');
        
        // Base query
        $query = OrderModel::query();
    
        if (!empty($searchValue)) {
            $query->where(function ($q) use ($searchValue) {
                $q->where('title', 'like', '%' . $searchValue . '%');
            });
        }
        
        // Count before pagination
        $recordsFiltered = $query->count();
        $recordsTotal = OrderModel::count();
    
        // Apply pagination and ordering
        $items = $query->orderBy('id', 'desc')
                       ->skip($start)
                       ->take($length)
                       ->get();
        
        $newData = []; // initialize array
    
        foreach ($items as $i) {
            // Payment status badge
            $status = 'warning'; // default
            if ($i->payment_status == 'success') {
                $status = 'success';
            } elseif ($i->payment_status == 'failed') {
                $status = 'danger';
            }
    
            // Payment details
            $finalAmount = '';
            $payment = json_decode($i->couponCheckout);
            if (is_array($payment) && isset($payment[0]->finalAmount)) {
                $finalAmount = 'Rs.' . $payment[0]->finalAmount;
            }
    
            // Customer
            $customer = CustomerModel::select('name', 'email', 'phone')
                ->where('id', $i->user_id)
                ->first();
    
            $customerInfo = $customer
                ? $customer->name . '<br>' . $customer->email . '<br>' . $customer->phone
                : 'Guest User';
    
            $newData[] = [
                'order_id'       => $i->order_id,
                'customer'       => $customerInfo,
                'payment'        => $finalAmount,
                'payment_status' => '<span class="alert alert-' . $status . '">' . (!empty($i->payment_status) ? ucwords($i->payment_status) : "Pending")  . '</span>',
                'date'           => date('d F, Y', strtotime($i->created_at)),
                'action'         => '<a href="' . url("admin/orders/" . base64_encode($i->id)) . '" class="btn btn-primary py-8 mb-4 rounded-2"><i class="fa fa-eye mr-4"></i></a>'
            ];
        }
    
        return response()->json([
            'draw'            => intval($draw),
            'recordsTotal'    => $recordsTotal,
            'recordsFiltered' => $recordsFiltered,
            'data'            => $newData,
        ]);
    }
    public function order($id){
        $id = base64_decode($id);
        $page_title = 'Orders';
        $orders = OrderModel::where('id', $id)->first();
        $customer = CustomerModel::select('name', 'email', 'phone')->where('id', $orders->user_id)->get()->first();
        $address = SavedAddressModel::where('id', $orders->address_id)->get()->first();
        return view('admin.orders.order_details', compact('page_title', 'orders', 'customer', 'address'));
    }
    public function addSlider(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'title'         => $request->input('title'),
            'subtitle'         => $request->input('subtitle'),
            'description'         => $request->input('content'),
            'price'         => $request->input('price'),
            'url'         => $request->input('url'),
        );
        if($request->file('image') != '')
        {
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);
        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        $image_resize->resize(1566, 537);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }
        if($request->input('id') == '')
        {
            $params['banner_image'] = $imageName;
            $response        = SliderModel::insert($params);
        }else
        {
            if($request->file('image') != '')
            {
                $params['banner_image'] = $imageName;
            }
            $response = SliderModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'Slider Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong. Please Try Again']);
        }
    }

    public function product(){
        $page_title     = 'Product';
        $services       = ProductModel::join('category', 'product.category', '=', 'category.id')->select('category.title as ctitle', 'product.*')->orderBy('id', 'desc')->get();
        return view('admin.product.product', compact('page_title', 'services'));
    }
    public function getProducts(Request $request)
    {
        $draw = $request->input('draw');
        $start = $request->input('start'); // Starting record number
        $length = $request->input('length'); // Number of records to display per page
        $searchValue = $request->input('search.value');
        $data = ProductModel::join('category', 'product.category', '=', 'category.id')->select('category.title as ctitle', 'product.*');

        if (!empty($searchValue)) {
            $data->where(function ($query) use ($searchValue) {
                $query->where('product.title', 'like', '%' . $searchValue . '%')
                    ->orWhere('product.slug', 'like', '%' . $searchValue . '%')
                    ->orWhere('category.title', 'like', '%' . $searchValue . '%');
            });
        }
            // Get the total number of records (without pagination)
        $totalRecords = $data->count();

        // Apply pagination
        $data->skip($start)->take($length);

        $items = $data->orderBy('id', 'desc')->get();
        if(count($items) > 0){
            foreach($items as $i){
                $inventory = 0;
                $getInventory = InventoryModel::where('product_id', $i->id)->first();
                $varaint = DB::table('product_variance_data')->where('product_id', $i->id)->first();
                if(!empty($getInventory)){
                    $inventoryArr = json_decode($getInventory->inventory);
                    foreach($inventoryArr as $i_arr){
                        $inventory += $i_arr->inventory;
                    }
                }
                $orders = OrderModel::where('order_status', '>', '0')->where('order_status', '<', 4)->get();
                $u_inventory = 0;
                foreach ($orders as $order) {
                    $products = json_decode($order->productCheckout, true);
                    foreach($products as $p){
                        if($p['product_id'] == $i->id){
                            $u_inventory += $p['quantity'];
                        }
                    }
                }
                $image = '';
                if(!empty($varaint))
                {
                    $image = $varaint->image;
                }
                $newData[] = array(
                    'id'    => $i->id,
                    'category' => $i->ctitle,
                    'title' => $i->title,
                    'slug'  => $i->slug,
                    'image' => '<img src="'.url("public/uploads/thumbnail/".$image).'" />',
                    'meta'  => 'Meta Title : '.$i->meta_title.'<br>Meta Keyword : '.$i->meta_keyword.'<br>Meta Description : '.$i->meta_description.'',
                    'inventory'  => $inventory,
                    'u_inventory'  => $u_inventory,
                    'r_inventory'  => $inventory - $u_inventory,
                    'date'  => date('d F, Y', strtotime($i->created_at)),
                    'action' => '<a href="'.url("admin/add-product/".$i->id).'" class="btn btn-primary  py-8 mb-4 rounded-2"><i class="fa fa-edit"></i></a>
                    <a href="'.url("admin/delete/".base64_encode($i->id)."/".base64_encode("product")).'" class="btn btn-danger delete  py-8 mb-4 rounded-2"><i class="fa fa-trash"></i></a>'
                );
            }
        }else{
            $newData = array();
        }
        return response()->json([
            'draw' => $draw,
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords, // For now, the same as recordsTotal, can be adjusted if needed.
            'data' => $newData,
        ]);
    }
    public function addProduct(){
        $page_title = 'Add Product';
        $category   = CategoryModel::orderBy('id', 'desc')->get();
        $variants   = VariantsModel::orderBy('id', 'desc')->get();
        
        return view('admin.product.add-product', compact('page_title', 'category', 'variants'));
    }
    public function saveProduct(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'category'          => $request->input('category'),
            'subcategory'          => $request->input('subcategory'),
            'title'             => $request->input('title'),
            'slug'              => strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('title')), '-')),
            'short_description' => $request->input('short_description'),
            'size' => json_encode($request->input('size')),
            'description'       => $request->input('description'),
            'reg_price'       => $request->input('reg_price'),
            'sale_price'       => $request->input('sale_price'),
            'sku'       => $request->input('sku'),
            'unit_type'       => $request->input('unit_type'),
            'featured'       => $request->input('featured'),
            'is_show'          => $request->input('is_show'),
            'popular'       => $request->input('popular'),
            'inventory'       => $request->input('inventory'),
            'deals'       => $request->input('deals'),
            'deals_date'       => $request->input('deals_date'),
            'additional_info'       => $request->input('additional_info'),
            'meta_title'        => $request->input('meta_title'),
            'meta_keyword'      => $request->input('meta_keyword'),
            'meta_description'  => $request->input('meta_description'),   
        );
        if($request->input('id') == '')
        {
            $response           = ProductModel::create($params);
            $lastId = $response->id;
        }else
        {
            $response = ProductModel::where('id', $request->input('id'))->update($params);
            // foreach($request->input('size') as $s){
            //     $checkVariant = DB::table('product_variance_data')->where(['product_id' => $request->input('id'), 'product_variant' => $s])->first();
            //     if(empty($checkVariant)){
            //         $varianceDataINsert = [
            //             'product_id'  => $request->input('id'),
            //             'reg_price'   => 0.00,
            //             'sale_price'  => 0.00,
            //             'product_variant' =>  $s
            //         ];
            //         $variantInsert = DB::table('product_variance_data')->insert($varianceDataINsert);
            //     }
            // }
            $lastId = $request->input('id');
            if (isset($data['product_size'])) {
                for ($i = 0; $i < count($data['product_size']); $i++) {
                    $varianceData = [
                        'product_id'  => $lastId,
                        'reg_price'   => $data['product_regular_price'][$i],
                        'sale_price'  => $data['product_sale_price'][$i],
                        'product_variant' =>  $data['product_size'][$i]
                    ];
                    
                    // Variant image
                    if (!empty($request->file('product_image')[$i]) && $request->file('product_image')[$i]->isValid()) {
                        $imageFile = $request->file('product_image')[$i];
                        $uniqueName = time() . '_' . uniqid() . '.' . $imageFile->getClientOriginalExtension();
                        $imageFile->move(public_path('public/uploads'), $uniqueName);
            
                        $imagePath = public_path("public/uploads/{$uniqueName}");
                        $thumbPath = public_path("public/uploads/thumbnail/{$uniqueName}");
            
                        if (!file_exists(public_path('public/uploads/thumbnail'))) {
                            mkdir(public_path('public/uploads/thumbnail'), 0755, true);
                        }
            
                        Image::make($imagePath)->resize(118, 118, function ($constraint) {
                            $constraint->aspectRatio();
                            $constraint->upsize();
                        })->save($thumbPath);
            
                        $varianceData['image'] = $uniqueName;
                    }
                    if(isset($_POST['variant_id']) && $data['variant_id'][$i]){
                        $variantId = $data['variant_id'][$i];
                        $update = DB::table('product_variance_data')->where('id', $variantId)->update($varianceData);
                    }else{
                        // Insert variant
                        $variantId = DB::table('product_variance_data')->insertGetId($varianceData);
                    }
                    // Now handle variant-specific additional images
                    $additionalImages = $request->file('product_additional_image')[$i] ?? [];
            
                    if (!empty($additionalImages)) {
                        foreach ($additionalImages as $file) {
                            if ($file->isValid()) {
                                $name = time() . '_' . uniqid() . '_' . preg_replace('/[^A-Za-z0-9.\-_]/', '', $file->getClientOriginalName());
                                $file->move(public_path('public/uploads'), $name);
            
                                $originalPath = public_path("public/uploads/{$name}");
                                $thumbnailPath = public_path("public/uploads/thumbnail/{$name}");
            
                                if (!file_exists(public_path('public/uploads/thumbnail'))) {
                                    mkdir(public_path('public/uploads/thumbnail'), 0755, true);
                                }
            
                                Image::make($originalPath)->resize(118, 118, function ($constraint) {
                                    $constraint->aspectRatio();
                                    $constraint->upsize();
                                })->save($thumbnailPath);
            
                                ProductImagesModel::create([
                                    'other_image' => $name,
                                    'product_id'  => $lastId,
                                    'variant_id'  => $variantId,
                                ]);
                            }
                        }
                    }
                }
            }


        }
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'Product Updated Successfully', 'url' => url('admin/add-product/'.$lastId)]);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong. Please Try Again',]);
        }
    }
    public function editProduct($id){
        $page_title     = 'Edit Product';
        $product        = ProductModel::where('id', $id)->get()->first();
        $category       = CategoryModel::orderBy('id', 'desc')->get();
        $subcategory       = SubCategoryModel::where('category', $product->category)->get();
        $productImages  = ProductImagesModel::where('product_id', $product->id)->orderBy('id', 'desc')->get();
        $productVariant  = DB::table('product_variance_data')->where('product_id', $product->id)->orderBy('id', 'desc')->get();
        $variants   = VariantsModel::orderBy('id', 'desc')->get();
        return view('admin.product.add-product', compact('page_title', 'product', 'category', 'productImages', 'variants', 'subcategory', 'productVariant'));
    }
    public function inventory(){
        $page_title     = 'Inventory';
        $products       = ProductModel::join('category', 'product.category', '=', 'category.id')->select('category.title as ctitle', 'product.*')->orderBy('id', 'desc')->get();
        $variants       = VariantsModel::orderBy('id', 'desc')->get();
        return view('admin.product.inventory', compact('page_title', 'products', 'variants'));
    }
    public function updateInventory(Request $request){
        $data = $request->all();
        $inventory = array();
        for ($i = 0; $i < count($data['variant_id']); $i++) {
            $inventory[] = [
                "variant_title" => $data["variant_title"][$i],
                "variant_id" => $data["variant_id"][$i],
                "inventory" => $data["inventory"][$i],
            ];
        }
        unset($data['variant_title']);
        unset($data['variant_id']);
        $data['inventory'] = json_encode($inventory);
        $checkProductIdinDB = InventoryModel::where('product_id', $data['product_id'])->count();
        if($checkProductIdinDB > 0){
            $response = InventoryModel::where('product_id', $data['product_id'])->update($data);
        }else{
            $response = InventoryModel::create($data);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'Inventory Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong']);
        }
    }
    public function getInventory(Request $request){
        $data = $request->all();
        $getInventory = InventoryModel::where('product_id', $data['productId'])->first();
        if(!empty($getInventory)){
            return response()->json(['status' => 'success', 'msg' => 'Inventory Fetched Successfully', 'data' => $getInventory->inventory]);
        }
        $variants = DB::table('product_variance_data')->where('product_id', $data['productId'])->orderBy('id', 'desc')->get();
        $inventory = [];
        for ($i = 0; $i < count($variants); $i++) {
            $inventory[] = [
                "variant_title" => $variants[$i]->product_variant,
                "variant_id" => $variants[$i]->id,
                "inventory" => 0,
            ];
        }
        return response()->json(['status' => 'success', 'msg' => 'Inventory Fetched Successfully', 'data' => $inventory]);
    }
    public function portfolio(){
        $page_title     = 'Portfolio';
        $portfolio      = PortfolioModel::orderBy('id', 'desc')->get();
        return view('admin.portfolio.portfolio', compact('page_title', 'portfolio'));
    }
    public function addPortfolio(Request $request)
    {   
        $data = $request->all();
        $params = array(
            'category'      => $request->input('category'),
            'title'         => $request->input('title'),
            'technology'    => $request->input('technology'),
            'url'           => $request->input('url'),
        );
        if($request->file('image') != '')
        {
        $imageName  = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);

        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        $image_resize->resize(60, 60);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }
        
        if($request->input('id') == '')
        {
            $params['image']    = $imageName;
            $response           = PortfolioModel::insert($params);
        }else
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }
            $response = PortfolioModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'message' => 'Portfolio Added Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong']);
        }
    }
    public function contact_settings(){
        $page_title     = 'Contact Settings';
        $data           = ContactSettingsModel::where('id', 1)->get()->first();
        return view('admin.contact.contact-settings', compact('page_title', 'data'));
    }
    public function addSettings(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'address'       => $request->input('address'),
            'phone'         => $request->input('phone'),
            'email'         => $request->input('email'),
            'adminemail'    => $request->input('adminemail'),
            'hours'         => $request->input('hours'),
            'map'           => $request->input('map'),
            'max_amount'    => $request->input('max_amount'),
            'shipping_charges'    => $request->input('shipping_charges'),
        );
        
        if($request->file('logo') != '')
        {
        $imageName = time().'.'.$request->logo->extension();  
        $request->logo->move(public_path('public/uploads'), $imageName);

        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        $image_resize->resize(100, 48);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }
        if($request->input('id') == '')
        {
            $response       = ContactSettingsModel::insert($params);
        }else
        {
            if($request->file('logo') != '')
            {
                $params['logo'] = $imageName;
            }
            
            $response = ContactSettingsModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'message' => 'Settings Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong']);
        }
    }
    public function delete($id)
    {
        $table = base64_decode(request()->segment('4'));
        // echo $table; exit;
        $delete = DB::table($table)->where('id', base64_decode($id))->delete();  // delete the record in the DB.
        if($delete)
        {
            session()->flash('message', 'Success');
            session()->flash('class', 'success');
            return redirect()->back();
        }else
        {
            session()->flash('message', 'Failed');
            session()->flash('class', 'danger');

            return redirect()->back();
        } 
    }
    public function enquiry(){
        $page_title = 'Enquiry';
        $enquiry   = DB::table('enquiry')->orderBy('id', 'desc')->get();
        return view('admin.enquiry', compact('page_title', 'enquiry'));
    }
    public function saveOrderStatus(Request $request)
    {   
        $data   = $request->all();
        $getOrder = OrderModel::where('id', $request->input('order_id'))->first();
        $address = SavedAddressModel::where('id', $getOrder->address_id)->first();
        $email = json_decode($address->address_details)->email;
        if($request->input('order_status') == 2){
            $shipping_details = array(
            'tracking_id' => $request->input('tracking_id'),
            'shipping_company' => $request->input('shipping_company'),
            'tracking_link' => $request->input('tracking_link'),
            'shipping_date' => $request->input('shipping_date')
            );
            $params = array(
                'order_status'      => $request->input('order_status'),
                'shipping_details'  => json_encode($shipping_details),
            );
            Mail::send('admin/shippingMail', $shipping_details, function($message) use ($email, $getOrder){
                $message->to($email)->subject('Order Shipped - '.$getOrder['order_id']);
                $message->from('info@tobacgo.in', config('app.name'));
            });
        }elseif($request->input('order_status') == 3){
            $params = array(
                'order_status'      => $request->input('order_status'),
                'delivery_date'       => $request->input('delivery_date'),
            );
            Mail::send('admin/deliveredMail', $params, function($message) use ($email, $getOrder){
                $message->to($email)->subject('Order Delivered - '.$getOrder['order_id']);
                $message->from('info@tobacgo.in', config('app.name'));
            });
        }elseif($request->input('order_status') == 4){
            $params = array(
                'order_status'      => $request->input('order_status'),
                'cancelled_reason'       => $request->input('cancelled_reason')
            );
            Mail::send('admin/cancelledMail', $params, function($message) use ($email, $getOrder){
                $message->to($email)->subject('Order Cancelled - '.$getOrder['order_id']);
                $message->from('info@tobacgo.in', config('app.name'));
            });
            $orderData = OrderModel::where('id', $request->input('order_id'))->first();
            $productData = json_decode($orderData->productCheckout);
            $variantQuantities = [];
            // Step 1: Group ordered quantities by product_id and variant_title
            foreach ($productData as $order) {
                $productId = $order->product_id;
                $variant = $order->product_variant;
                $quantity = (int) $order->quantity;
            
                if (!isset($variantQuantities[$productId])) {
                    $variantQuantities[$productId] = [];
                }
            
                if (!isset($variantQuantities[$productId][$variant])) {
                    $variantQuantities[$productId][$variant] = 0;
                }
            
                $variantQuantities[$productId][$variant] += $quantity;
            }
            
            // Step 2: Process each product and update inventory
            $updatedInventories = [];
            
            foreach ($variantQuantities as $productId => $variants) {
                // Get inventory for this product
                $getInventory = InventoryModel::where('product_id', $productId)->first();
            
                if (!$getInventory) {
                    continue; // Skip if no inventory found
                }
            
                $inventory = json_decode($getInventory->inventory);
                $newInventoryList = [];
            
                foreach ($inventory as $item) {
                    $variantTitle = $item->variant_title;
                    $currentInventory = (int) $item->inventory;
            
                    $deductQuantity = $variants[$variantTitle] ?? 0;
                    $newInventory = max(0, $currentInventory + $deductQuantity);
            
                    $newInventoryList[] = [
                        "variant_id" => $item->variant_id,
                        "variant_title" => $variantTitle,
                        "inventory" => $newInventory
                    ];
                }
            
                // Save or store the updated inventory per product
                $updatedInventories[$productId] = $newInventoryList;
            
                // Optionally, update DB
                $getInventory->inventory = json_encode($newInventoryList);
                $getInventory->save();
            }
        }
        
        $response = OrderModel::where('id', $request->input('order_id'))->update($params);
        
        if($response)
        {
            return response()->json(['status' => 'success', 'msg' => 'Status Updated Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'msg' => 'Something Went Wrong']);
        }
    }
    public function blogs(){
        $page_title     = 'Blogs';
        $blogs       = BlogModel::orderBy('id', 'desc')->get();
        return view('admin.blogs.blogs', compact('page_title', 'blogs'));
    }
    public function addBlog(){
        $page_title = 'Add Blogs';
        return view('admin.blogs.add-blogs', compact('page_title'));
    }
    public function saveBlogs(Request $request)
    {   
        $data   = $request->all();
        $params = array(
            'title'             => $request->input('title'),
            'slug'              => $request->input('slug'),
            'description'       => $request->input('description'),
            'meta_title'        => $request->input('meta_title'),
            'meta_keyword'      => $request->input('meta_keyword'),
            'meta_description'  => $request->input('meta_description'),   
        );
        if($request->file('image') != '')
        {
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);

        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_resize   = Image::make($path);
        $image_resize->resize(60, 60);
        $resize         = $image_resize->save(public_path('public/uploads/thumbnail/' .$imageName));
        }
        
        if($request->input('id') == '')
        {
            $params['image']    = $imageName;
            $response           = BlogModel::insert($params);
        }else
        {
            if($request->file('image') != '')
            {
                $params['image'] = $imageName;
            }
            $response = BlogModel::where('id', $request->input('id'))->update($params);
        }
        if($response)
        {
            return response()->json(['status' => 'success', 'message' => 'Blog Added Successfully']);
        }else
        {
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong']);
        }
    }
    public function editBlog($id){
        $page_title     = 'Edit Blog';
        $blogs        = BlogModel::where('id', $id)->get()->first();
        return view('admin.blogs.add-blogs', compact('page_title', 'blogs'));
    }
}
