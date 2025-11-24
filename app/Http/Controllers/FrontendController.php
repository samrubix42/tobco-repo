<?php

namespace App\Http\Controllers;
use App\Models\TestimonialModel;
use App\Models\PageModel;
use App\Models\CategoryModel;
use App\Models\BlogModel;
use App\Models\ServiceModel;
use App\Models\PortfolioModel;
use App\Models\ContactSettingsModel;
use App\Models\SliderModel;
use App\Models\ProductModel;
use App\Models\InventoryModel;
use App\Models\ProductImagesModel;
use App\Models\CouponModel;
use Illuminate\Http\Response;
use Mail;
use DB;
use Session;
use Illuminate\Http\Request;
use App\Providers\RouteServiceProvider;
use App\Models\CustomerModel;
use App\Models\OrderModel;
use App\Models\SavedAddressModel;
use Crypt;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Http;
class FrontendController extends Controller
{

    public function index()
    { 
        $contact        = ContactSettingsModel::where('id', 1)->get()->first();
        $page           = PageModel::where('slug', 'home')->get()->first();
        $slider         = SliderModel::orderBy('id', 'desc')->get();
        $testimonials   = TestimonialModel::orderBy('id', 'desc')->get();
        $blogs          = BlogModel::limit(10)->orderBy('id', 'desc')->get();
        $category       = CategoryModel::orderBy('id', 'desc')->get();
        $featured       = ProductModel::join('category', 'product.category', '=', 'category.id')->join('subcategory', 'product.subcategory', '=', 'subcategory.id')->select('product.*', 'category.id as cid', 'category.title as ctitle', 'category.slug as cslug', 'subcategory.title as stitle', 'subcategory.slug as sslug')->where(['product.featured'=>1, 'product.is_show' => 1])->limit(8)->orderBy('product.id', 'desc')->get();
        $products       = ProductModel::join('category', 'product.category', '=', 'category.id')->join('subcategory', 'product.subcategory', '=', 'subcategory.id')->select('product.*', 'category.id as cid', 'category.title as ctitle', 'category.slug as cslug', 'subcategory.title as stitle', 'subcategory.slug as sslug')->where(['product.is_show' => 1])->orderBy('product.id', 'desc')->limit('10')->get();
        return view('front.index', compact('contact', 'page', 'testimonials', 'slider', 'featured', 'category', 'blogs', 'products')); 
    }
    public function otherPages($slug)
    {
        $category       = CategoryModel::orderBy('id', 'desc')->get();
        $contact    = ContactSettingsModel::where('id', 1)->get()->first();
        $page       = PageModel::where('slug', $slug)->get()->first();
        if($slug === 'login' || $slug === 'signup'){
            if(Auth::guard('customer')->user()){
                echo "<script>window.location.href = '".url('/')."';</script>";
            }
        }
        $blogs      = BlogModel::orderBy('id', 'desc')->get();
        $testimonials   = TestimonialModel::orderBy('id', 'desc')->get();
        $orders = [];
        $address = [];
        $delivered = 0;
        $shipped = 0;
        $pending = 0;
        if(Auth::guard('customer')->user()){
            $orders     = OrderModel::orderBy('id', 'desc')->where(['user_id'=> Auth::guard('customer')->user()->id, 'payment_status' => 'success'])->get();
            $delivered  = OrderModel::where(['user_id'=> Auth::guard('customer')->user()->id, 'order_status'=> 3])->count();
            $shipped    = OrderModel::where(['user_id'=> Auth::guard('customer')->user()->id, 'order_status'=> 2])->count();
            $pending    = OrderModel::where(['user_id'=> Auth::guard('customer')->user()->id, 'order_status'=> 1])->count();
            $address    = SavedAddressModel::where('user_id', Auth::guard('customer')->user()->id)->get();
        }
        if($slug == 'thankyou'){
            $orders     = OrderModel::where('order_id', $_GET['order_id'])->orderBy('id', 'desc')->first();
            $address    = SavedAddressModel::where('id', $orders->address_id)->first();
        }
        return view('front.index', compact('contact', 'page', 'testimonials', 'orders', 'blogs','address', 'category', 'delivered', 'shipped', 'pending')); 
    }
    public function orderDetails($id){
        $page       = OrderModel::where('id', decrypt($id))->get()->first();
        $contact    = ContactSettingsModel::where('id', 1)->get()->first();
        $customer   = CustomerModel::where('id', $page->user_id)->get()->first();
        $address    = SavedAddressModel::where('id', $page->address_id)->get()->first();
        return view('front.order-details', compact('contact', 'page', 'customer', 'address'));
    }
    public function shop(Request $request)
    {
        $page = 'Shop';
        $contact    = ContactSettingsModel::where('id', 1)->get()->first();
        $category   = CategoryModel::orderBy('id', 'desc')->get(); 
        $cat = request()->segment(2);
        if(empty($cat)){
            $product = ProductModel::join('category', 'product.category', '=', 'category.id')
                ->join('subcategory', 'product.subcategory', '=', 'subcategory.id')
                ->select(
                    'product.*',
                    'category.id as cid',
                    'category.title as ctitle',
                    'category.slug as cslug',
                    'subcategory.id as sid',
                    'subcategory.title as stitle',
                    'subcategory.slug as sslug'
                );
            // // Filter by category slug
            // if (!empty($cat) && $cat !== 'all') {
            //     $product->where('category.slug', $cat);
            // }
            
            // // Filter by subcategory slug
            // if (!empty($subcat) && $subcat !== 'all') {
            //     $product->where('subcategory.slug', $subcat); // changed andWhere to where
            // }
            
            // // Filter by product slug (partial match)
            // if (isset($_GET['p'])) {
            //     $product->where('product.slug', 'like', '%' . $_GET['p'] . '%');
            // }
            $product->where('product.is_show', 1);
            // Get the final results
            $products = $product->orderBy('product.id', 'desc')->get();
            return view('front.shop', compact('contact', 'products', 'page', 'category'));
        }else{
            $subcat = request()->segment(3);
            $checkCategory = CategoryModel::where('slug', $cat)->count();
            if($checkCategory > 0){
                $product = ProductModel::join('category', 'product.category', '=', 'category.id')
                    ->join('subcategory', 'product.subcategory', '=', 'subcategory.id')
                    ->select(
                        'product.*',
                        'category.id as cid',
                        'category.title as ctitle',
                        'category.slug as cslug',
                        'subcategory.id as sid',
                        'subcategory.title as stitle',
                        'subcategory.slug as sslug'
                    );
                // Filter by category slug
                if (!empty($cat) && $cat !== 'all') {
                    $product->where('category.slug', $cat);
                }
                
                // Filter by subcategory slug
                if (!empty($subcat) && $subcat !== 'all') {
                    $product->where('subcategory.slug', $subcat); // changed andWhere to where
                }
                
                // Filter by product slug (partial match)
                if (isset($_GET['p'])) {
                    $product->where('product.slug', 'like', '%' . $_GET['p'] . '%');
                }
                $product->where('product.is_show', 1);
                // Get the final results
                $products = $product->orderBy('product.id', 'desc')->get();
                return view('front.shop', compact('contact', 'products', 'page', 'category'));
            }else{
                $slug = request()->segment(2);
                $page       = ProductModel::join('category', 'product.category', '=', 'category.id')->select('product.*', 'category.id as cid', 'category.title as ctitle', 'category.slug as cslug')->where('product.slug', $slug)->first();
                $variants   = DB::table('product_variance_data')->where(['product_id' => $page->id])->orderBy('sale_price', 'asc')->get();
                if(isset($_GET['t']) && !empty($_GET['t'])){
                    $variant    = DB::table('product_variance_data')->where(['product_id' => $page->id, 'product_variant' => Crypt::decrypt($_GET['t'])])->first();
                }else{
                    $variant    = DB::table('product_variance_data')->where(['product_id' => $page->id])->first();
                }
                $inventoryData = InventoryModel::where(['product_id' => $page->id])->first();
                $inventory = 0;
                if(!empty($inventoryData)){
                    foreach(json_decode($inventoryData->inventory) as $i){
                        if($i->variant_id == $variant->id){
                            $inventory = $i->inventory;
                        }
                    }
                }
                
                $product_image = ProductImagesModel::where(['product_id'=> $page->id, 'variant_id' => $variant->id])->orderBy('id', 'desc')->get();
                $related_product = ProductModel::join('category', 'product.category', '=', 'category.id')->select('product.*', 'category.id as cid', 'category.title as ctitle', 'category.slug as cslug')->where(['product.category' => $page->category, 'product.is_show' => 1])->get();
                return view('front.shop-details', compact('contact', 'page', 'category', 'product_image', 'related_product', 'variant', 'variants', 'inventory'));  
            }
        }
        
          
    }
    public function productDetails($slug)
    {
        $contact    = ContactSettingsModel::where('id', 1)->get()->first();
        $category   = CategoryModel::orderBy('id', 'desc')->get();
        $page       = ProductModel::join('category', 'product.category', '=', 'category.id')->select('product.*', 'category.id as cid', 'category.title as ctitle', 'category.slug as cslug')->where('product.slug', $slug)->first();
        $variants   = DB::table('product_variance_data')->where(['product_id' => $page->id])->orderBy('sale_price', 'asc')->get();
        if(isset($_GET['t']) && !empty($_GET['t'])){
            $variant    = DB::table('product_variance_data')->where(['product_id' => $page->id, 'product_variant' => Crypt::decrypt($_GET['t'])])->first();
        }else{
            $variant    = DB::table('product_variance_data')->where(['product_id' => $page->id])->first();
        }
        $inventoryData = InventoryModel::where(['product_id' => $page->id])->first();
        $inventory = 0;
        if(!empty($inventoryData)){
            foreach(json_decode($inventoryData->inventory) as $i){
                if($i->variant_id == $variant->id){
                    $inventory = $i->inventory;
                }
            }
        }
        
        $product_image = ProductImagesModel::where(['product_id'=> $page->id, 'variant_id' => $variant->id])->orderBy('id', 'desc')->get();
        $related_product = ProductModel::join('category', 'product.category', '=', 'category.id')->select('product.*', 'category.id as cid', 'category.title as ctitle', 'category.slug as cslug')->where(['product.category' => $page->category, 'product.is_show' => 1])->get();
        return view('front.shop-details', compact('contact', 'page', 'category', 'product_image', 'related_product', 'variant', 'variants', 'inventory'));  
    }
    public function checkout(){
        $contact    = ContactSettingsModel::where('id', 1)->get()->first();
        return view('front.checkout', compact('contact'));  
    }
    public function blogDetails($slug)
    {
        $contact    = ContactSettingsModel::where('id', 1)->get()->first();
        $page       = BlogModel::where('slug', $slug)->get()->first();
        $previous   = BlogModel::where('id', ($page->id - 1))->get()->first();
        $next       = BlogModel::where('id', ($page->id + 1))->get()->first();
        $recent     = BlogModel::where('slug', '!=', $slug)->limit(5)->get();
        return view('front.blog-details', compact('contact', 'page', 'previous', 'next', 'recent'));  
    }
    public function getProductPrice(Request $req)
    {
        $params = $req->all();
        if (!empty($params)) {
            $getVariantArr = ProductModel::select('variance_data')->where('id', $params['product_id'])->first();
            if (!empty($getVariantArr)) {
                $getPriceArr = json_decode($getVariantArr->variance_data);
                $getPriceData = [];
                foreach($getPriceArr as $varPrice){
                    if($varPrice->product_size == $params['size'] && $varPrice->product_color == $params['color']){
                        $getPriceData = array(
                            'regular_price' => $varPrice->product_regular_price,
                            'sale_price' => $varPrice->product_sale_price
                            );
                    }
                }
                return response()->json(['status' => 'success', 'data' => $getPriceData, 'message' => 'Data Fetched Successfully']);
            } else {
                return response()->json(['status' => 'error', 'data' => '', 'message' => 'Product Not Found']);
            }
        } else {
            return response()->json(['status' => 'error', 'data' => '', 'message' => 'Request Parameter Not Found']);
        }
    }
   
    public function applyCoupon(Request $request){
        
        $check = CouponModel::where('code', $request->input('code'))->first();
        if(!empty($check)){
            
            if($request->input('totalAmount') >= $check->min_amount){
                if($check->coupon_type == 'Flat Rate'){
                    if($check->coupon_validity == 'Always'){
                        $data = array(
                            'value' => $check->value,
                            'totalAmount' => $request->input('totalAmount') - $check->value
                            );
                        return response()->json(['status' => 'success', 'data' => $data, 'message' => 'Coupon Applied']);
                    }elseif($check->coupon_validity == 'Particular Date'){
                        if(date('Y-m-d') == $check->particular_date){
                            $data = array(
                            'value' => $check->value,
                            'totalAmount' => $request->input('totalAmount') - $check->value
                            );
                        return response()->json(['status' => 'success', 'data' => $data, 'message' => 'Coupon Applied']);
                        }else{
                            return response()->json(['status' => 'failed', 'message' => 'Coupon Expired']);
                        }
                    }elseif($check->coupon_validity == 'Between Dates'){
                        if(date('Y-m-d') >= $check->from_date && date('Y-m-d') <= $check->to_date){
                            $data = array(
                            'value' => $check->value,
                            'totalAmount' => $request->input('totalAmount') - $check->value
                            );
                        return response()->json(['status' => 'success', 'data' => $data, 'message' => 'Coupon Applied']);
                        }else{
                            return response()->json(['status' => 'failed', 'message' => 'Coupon Expired']);
                        }
                    }
                }else{
                    if($check->coupon_validity == 'Always'){
                        $data = array(
                            'value' => $check->value.'%',
                            'totalAmount' => $request->input('totalAmount') - ($request->input('totalAmount') * ($check->value / 100))
                            );
                        return response()->json(['status' => 'success', 'data' => $data, 'message' => 'Coupon Applied']);
                    }elseif($check->coupon_validity == 'Particular Date'){
                        if(date('Y-m-d') == $check->particular_date){
                            $data = array(
                            'value' => $check->value.'%',
                            'totalAmount' => $request->input('totalAmount') - ($request->input('totalAmount') * ($check->value / 100))
                            );
                        return response()->json(['status' => 'success', 'data' => $data, 'message' => 'Coupon Applied']);
                        }else{
                            return response()->json(['status' => 'failed', 'message' => 'Coupon Expired']);
                        }
                    }elseif($check->coupon_validity == 'Between Dates'){
                        if(date('Y-m-d') >= $check->from_date && date('Y-m-d') <= $check->to_date){
                            $data = array(
                            'value' => $check->value.'%',
                            'totalAmount' => $request->input('totalAmount') - ($request->input('totalAmount') * ($check->value / 100))
                            );
                        return response()->json(['status' => 'success', 'data' => $data, 'message' => 'Coupon Applied']);
                        }else{
                            return response()->json(['status' => 'failed', 'message' => 'Coupon Expired']);
                        }
                    }
                }
            }
            else{
                return response()->json(['status' => 'failed', 'message' => 'Min. Amount Should be Greater than '.$check->min_amount]);
            }
        }else{
            return response()->json(['status' => 'failed', 'message' => 'Invalid Coupon']);
        }
    }
    public function send_enquiry(Request $request)
    {
        $params = array(
            'name'      => $request->input('name'),
            'email'     => $request->input('email'),
            'phone'     => $request->input('phone'),
            // 'subject'   => $request->input('subject'),
            'messages'   => $request->input('message'),
        );
        $contact        = ContactSettingsModel::where('id', 1)->get()->first();
        $email = $contact->adminemail;
        Mail::send('front/mail', $params, function($message) use ($email){
                $message->to($email)->subject('Contact Enquiry');
                $message->from('info@growthvault.com', 'GrowthVault');
        });
        $response = DB::table('enquiry')->insert($params);
        if($response)
        {
            return response()->json(['status' => 'success', 'message' => 'Success']);
        }else
        {
            return response()->json(['status' => 'failed', 'message' => 'Failed']);
        }

    }
    public function signup(Request $request)
    {
        $data = $request->all();
        $checkCustomer = CustomerModel::where('email', $data['register-email'])->count();
        if($checkCustomer > 0){
            $credentials = array(
                'email' => $data['register-email'],
                'password' => $data['register-password'],
                );
        }else{
            $request = CustomerModel::create([
                'name' => $data['register-name'],
                'email' => $data['register-email'],
                'phone' => $data['register-phone'],
                'password' => Hash::make($data['register-password']),
            ]);
            $credentials = array(
                'email' => $request->email,
                'password' => $data['register-password'],
                );
            
        }
        if (Auth::guard('customer')->attempt($credentials)) {
            return response()->json(['status' => 'success', 'message' => 'Logged in Successfully']);
        } else {
            return response()->json(['status' => 'failed', 'message' => 'Invalid credentials']);
        }
        
    }
    public function logout()
    {
        Auth::guard('customer')->logout();
        
        return redirect()->to('login');
    }
    public function deleteAddress($id){
        $delete = SavedAddressModel::where('id', $id)->delete();
        return redirect()->to('account');
    }
    public function updateAddress(Request $req){
        $address_details = array(
            'email' => $req->input('email'),
            'phone' => $req->input('phone'),
            'state' => $req->input('state'),
            'address' => $req->input('address'),
            'country' => $req->input('country'),
            'pincode' => $req->input('pincode'),
            'shipping_fname' => $req->input('shipping_fname'),
            'shipping_lname' => $req->input('shipping_lname'),
            'shipping_state' => $req->input('shipping_state'),
            'shipping_address' => $req->input('shipping_address'),
            'shipping_country' => $req->input('shipping_country'),
            'shipping_pincode' => $req->input('shipping_pincode'),
        );
        $params['user_id'] = Auth::guard('customer')->user()->id;
        $params['address_details'] = json_encode($address_details);
        if($req->has('id')){
            $response = SavedAddressModel::where('id', $_POST['id'])->update($params);
            Session::flash('success', 'Address updated successfully!');
            return redirect()->back();
        }else{
            $response = SavedAddressModel::create($params);
            Session::flash('success', 'Address saved successfully!');
            return redirect()->back();
        }
        Session::flash('error', 'Something Went Wrong. Please Try Again');
        return redirect()->back();
        
    }
    public function checkoutPost(Request $request){
        $data = $request->all();
        if(isset($data['data'][0]) && !empty($data['data'][0])){
            $data = $data['data'][0];
            $coupon = json_decode($data['couponData']);
            $order_id = 'ORD'.rand('1111', 9999);
            $orderRequest = array(
                'order_id' => $order_id,
                'productCheckout' => $data['cartData'],
                'couponCheckout' => $data['couponData'],
                'paid_amount' => $coupon[0]->finalAmount,
                'transaction_id' => '',
                'payment_status' => '',
                'order_status' => 0
                );
            // register method
            if(isset($data['checkoutMethod']) && $data['checkoutMethod'] === 'register'){
                $accountRequest = CustomerModel::create([
                    'email' => $data['signupEmail'],
                    'name' => $data['shipping_fname'].' '.$data['shipping_lname'],
                    'phone' => $data['phone'],
                    'password' => Hash::make($data['signupPassword']),
                ]);
                $credentials = array(
                    'email' => $accountRequest->email,
                    'password' => Hash::make($data['signupPassword']),
                    );
                Auth::guard('customer')->attempt($credentials);
                $orderRequest['user_id'] = $accountRequest->id;
            }else{
                if(Auth::guard('customer')->user() != null){
                $orderRequest['user_id'] = Auth::guard('customer')->user()->id;
                }else{
                    $checkEmail = CustomerModel::where('email', $data['email'])->get()->first();
                    if($checkEmail){
                        $orderRequest['user_id'] = $checkEmail->id;
                    }else{
                        $orderRequest['user_id'] = 0;
                    }
                }
            }
            // Create order
            $orderResponse = OrderModel::create($orderRequest);
            $orderId = $orderResponse->id;
            // update address id
            if(isset($data['address_id']) && !empty(isset($data['address_id']))){
                $response = OrderModel::where('id', $orderId)->update([
                        'address_id' => $data['address_id']
                        ]);
            }else{
                $billing_details = array(
                    'country' => $data['billing_country'],
                    'address' => $data['billing_address'].', '.$data['billing_address1'],
                    'state' => $data['billing_state'],
                    'pincode' => $data['billing_postcode'],
                    'phone' => $data['phone'],
                    'email' => $data['email'],
                    'shipping_fname' => $data['shipping_fname'],
                    'shipping_lname' => $data['shipping_lname'],
                    'shipping_country' => $data['shipping_country'],
                    'shipping_address' => $data['shipping_address'].', '.$data['shipping_address1'],
                    'shipping_state' => $data['shipping_state'],
                    'shipping_pincode' => $data['shipping_postcode'],
                    'notes' => isset($data['notes']) ? $data['notes'] : '',
                );
                $request = array(
                'user_id' => $orderRequest['user_id'],
                'address_details' => json_encode($billing_details),
                ); 
                $saveAddress = SavedAddressmodel::create($request);
                if($saveAddress){
                    $response = OrderModel::where('id', $orderId)->update([
                        'address_id' => $saveAddress->id
                        ]);
                }
            }
            // $email = 'rohanverma25dec@gmail.com';
            // get Order detaiils for Payment
            $getOrder = OrderModel::where('id', $orderId)->first()->toArray();
            $phoneToken = $this->generateToken();
            if($phoneToken === null){
                return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong on Gateway']);
            }
            $generatePaymentUrl = $this->generatePaymentUrl($data, $phoneToken, $order_id);
            if(isset($generatePaymentUrl->success) && $generatePaymentUrl->success === false){
                return response()->json(['status' => 'failed', 'message' => $generatePaymentUrl->message]);
            }
            return response()->json(['status' => 'success', 'data' => $generatePaymentUrl]);
        }else{
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong. Please Try Again']);
        }
    }
    public function generateToken(){
        $queryString = 'client_id='.env("CLIENT_ID").'&client_version='.env("CLIENT_VERSION").'&client_secret='.env("CLIENT_KEY").'&grant_type=client_credentials';
        $url = env('CLIENT_URL').'identity-manager/v1/oauth/token';
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => $url,
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS => $queryString,
          CURLOPT_HTTPHEADER => array(
            'Content-Type: application/x-www-form-urlencoded'
          ),
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        $res = json_decode($response);
        if(isset($res->access_token)){
            return $res->access_token;
        }else{
            return null;
        }
    }
    private function generatePaymentUrl($data, $token, $order_id){
        $coupon = json_decode($data['couponData']);
        $url = env('CLIENT_URL').'pg/checkout/v2/pay';
        $redirectUrl = url('verify?order_id='.$order_id);
        $amount = $coupon[0]->finalAmount * 100;
        $params = '{
            "merchantOrderId": "'.$order_id.'",
            "amount": "'.$amount.'",
            "expireAfter": 1200,
            "paymentFlow": {
                "type": "PG_CHECKOUT",
                "message": "Payment message used for collect requests",
                "merchantUrls": {
                    "redirectUrl": "'.$redirectUrl.'"
                },
                "paymentModeConfig": {
                    "enabledPaymentModes": [
                        {
                            "type": "UPI_INTENT"
                        },
                        {
                            "type": "UPI_COLLECT"
                        },
                        {
                            "type": "UPI_QR"
                        },
                        {
                            "type": "NET_BANKING"
                        },
                        {
                            "type": "CARD",
                            "cardTypes": [
                                "DEBIT_CARD",
                                "CREDIT_CARD"
                            ]
                        }
                    ]
                }
            }
        }';
        $curl = curl_init();
        $req = json_encode($data);
        curl_setopt_array($curl, array(
          CURLOPT_URL => $url,
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS =>$params,
          CURLOPT_HTTPHEADER => array(
            'Authorization: O-Bearer '.$token,
            'Content-Type: application/json'
          ),
        ));
        
        $response = curl_exec($curl);
        curl_close($curl);
        $res = json_decode($response);
        return $res;
    }
    public function verify(){
        $order_id = $_GET['order_id'];
        $phoneToken = $this->generateToken();
        if($phoneToken === null){
            return redirect(url('thankyou?order_id='.$order_id.'&error=Something Went Wrong on Gateway'));
        }
        $url = env('CLIENT_URL').'pg/checkout/v2/order/'.$order_id.'/status';
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => $url,
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'GET',
          CURLOPT_HTTPHEADER => array(
            'Authorization: O-Bearer '.$phoneToken,
            'Content-Type: application/json'
          ),
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        $resp = json_decode($response);
        $data = OrderModel::where('order_id', $order_id)->first();
        if($resp->state === 'COMPLETED'){
            $addressData = SavedAddressModel::where('id', $data->address_id)->first();
            $addressDetails = json_decode($addressData->address_details);
            $params = array(
                'order_status' => '1',
                'transaction_id' => $resp->paymentDetails[0]->transactionId,
                'payment_status' => 'success'
                );
            $updateOrder = OrderModel::where('order_id', $order_id)->update($params);
            $email = $addressDetails->email;
            Mail::send('front/orderConfirmationMail', $data->toArray(), function($message) use ($email){
                $message->to($email)->subject('Order Confirmation');
                $message->from('info@tobacgo.in', config('app.name'));
            });
            Mail::send('front/adminMail', $data->toArray(), function($message) use ($email){
                $message->to('hardik_rmi@ymail.com')->cc('techonika.com@gmail.com')->subject('New Order - Tobacgo');
                $message->from('info@tobacgo.in', config('app.name'));
            });
            $productData = json_decode($data['productCheckout']);
            $updatedInventory = [];
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
                    $newInventory = max(0, $currentInventory - $deductQuantity);
            
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
            return redirect(url('thankyou?order_id='.$order_id));
        }elseif($resp->state === 'FAILED'){
            $params = array(
                'order_status' => '0',
                'transaction_id' => $resp->paymentDetails[0]->transactionId,
                'payment_status' => 'failed'
                );
            $updateOrder = OrderModel::where('order_id', $order_id)->update($params);
            return redirect(url('thankyou?order_id='.$order_id.'&error='.$resp->errorCode));
        }elseif($resp->state === 'PENDING'){
            $params = array(
                'order_status' => '0',
                'transaction_id' => isset($resp->paymentDetails[0]->transactionId) ? $resp->paymentDetails[0]->transactionId : '',
                'payment_status' => 'pending'
                );
            $updateOrder = OrderModel::where('order_id', $order_id)->update($params);
            return redirect(url('thankyou?order_id='.$order_id.'&error=PENDING'));
        }else{
            return redirect(url('thankyou?order_id='.$order_id.'&error=Something Went Wrong on Gateway'));
        }
    }
    private function updateInventory($productId, $variant, $quantity){
        $getInventory = InventoryModel::where('product_id', $productId)->first();
        $inventory = json_decode($getInventory->inventory);
        $finalInventory = [];
        $newInventory = [];
        foreach($inventory as $i){
            if($i->variant_title === $variant){
                $newInventory[] = array(
                    'inventory' => $i->inventory - $quantity,
                    'variant_id' => $i->variant_id,
                    'variant_title' => $i->variant_title,
                    );
            }
        }
        $finalInventory = $newInventory;
        return $finalInventory;
    }
    public function resetPassword(Request $request){
        $email = $request->input('reset-email');
        $checkEmail = CustomerModel::where('email', $email)->count();
        if($checkEmail > 0){
             $hashed = hash("sha512", $email);
             $updateHash = CustomerModel::where('email', $email)->update(['hash' => $hashed]);
             if($updateHash){
                $params['url'] = url('create-password?h='.$hashed); 
                Mail::send('front/reset-mail', $params, function($message) use ($email){
                $message->to($email)->subject('Reset Password');
                $message->from('info@lubus7.com', config('app.name'));
                });
                return response()->json(['status' => 'success', 'message' => 'Reset Password Link Has been sent on your Email Address.']); 
             }

        }else{
            return response()->json(['status' => 'failed', 'message' => 'Email Does Not Exist. Please Create Account']);
        }
    }
    public function createPassword(Request $request){
        $password = $request->input('new-password');
        $confpassword = $request->input('confirm-password');
        if($password == $confpassword){
            $updatePassword = CustomerModel::where('hash', $request->input('hash'))->update(['password' => Hash::make($password)]);
            if($updatePassword){
                return response()->json(['status' => 'success', 'message' => 'Password has been changed Successfully']); 
            }else{
                return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong. Please Try Again']);
            }
        }else{
            return response()->json(['status' => 'failed', 'message' => 'Password and Confirm Password should be matched.']);
        }
    }
    public function updateProfile(Request $request){
        $requests = array(
            'email' => $request->input('email'),
            'phone' => $request->input('phone'),
            );
        $oldPassword = $request->input('old_password');
        if($oldPassword != null){
            $credentials = array(
                'id' => $request->input('user_id'),
                'password' => $oldPassword
                );
            $checkOldPassword = Auth::guard('customer')->attempt($credentials);
            if($checkOldPassword == true){
                // if($request->input('new_password')){
                    $requests = array(
                    'email' => $request->input('email'),
                    'phone' => $request->input('phone'),
                    'password' => Hash::make($request->input('new_password'))
                    ); 
                // }else{
                //     Session::flash('error', 'Address updated successfully!');
                //     return response()->json(['status' => 'failed', 'message' => 'New Password and Confirm Password did not match.']); 
                // }
            }else{
                Session::flash('error', 'Old Password did not match.');
                return redirect()->back();
                // return response()->json(['status' => 'failed', 'message' => 'Old Password did not match.']); 
            }
            
        }
        $updateRequest = CustomerModel::where('id', $request->input('user_id'))->update($requests);
        if($updateRequest){
            Session::flash('success', 'Profile has updated successfully.');
            return redirect()->back();
            // return response()->json(['status' => 'success', 'message' => 'Profile has updated successfully']); 
        }else{
            Session::flash('error', 'Something Went Wrong. Please Try Again');
            return redirect()->back();
            // return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong. Please Try Again']); 
        }
        
    } 
    public function saveAddress(Request $request){
        $address = array(
            'billing_fname' => $request->input('billing_fname'),
            'billing_lname' => $request->input('billing_lname'),
            'company_name' => $request->input('company_name'),
            'country' => $request->input('country'),
            'address' => $request->input('address'),
            'city' => $request->input('city'),
            'state' => $request->input('state'),
            'pincode' => $request->input('pincode'),
            'phone' => $request->input('phone'),
            'email' => $request->input('email'),
            'shipping_fname' => $request->input('shipping_fname'),
            'shipping_lname' => $request->input('shipping_lname'),
            'shipping_cname' => $request->input('shipping_cname'),
            'shipping_country' => $request->input('shipping_country'),
            'shipping_address' => $request->input('shipping_address'),
            'shipping_city' => $request->input('shipping_city'),
            'shipping_state' => $request->input('shipping_state'),
            'shipping_pincode' => $request->input('shipping_pincode'),
            'shipping_phone' => $request->input('shipping_phone'),
            'shipping_email' => $request->input('shipping_email'),
            );
        $request = array(
            'user_id' => $request->input('user_id'),
            'address_details' => json_encode($address)
            );
        $request = SavedAddressModel::insert($request);
        if($request){
            return response()->json(['status' => 'success', 'message' => 'Address Added successfully']); 
        }else{
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong. Please Try Again']); 
        }
    }
    public function uploadImage(Request $request)
    {   
        $data   = $request->all();
        if($request->file('image') != '')
        {
        $imageName = time().'.'.$request->image->extension();  
        $request->image->move(public_path('public/uploads'), $imageName);
        $path           = public_path() . '/public/uploads/' . $imageName;
        $image_url = url('public/uploads/'.$imageName);
        }
        if($image_url)
        {
            return response()->json(['status' => 'success', 'message' => 'Image Updated Successfully', 'data' => $image_url]);
        }else
        {
            return response()->json(['status' => 'failed', 'message' => 'Something Went Wrong', 'data' => '']);
        }
    }
}
