<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BackendController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\FrontendController;
use Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/admin/login', [BackendController::class,'index'])->name('login');
Route::post('/admin/login', [AuthController::class,'login']);
Route::get('/admin/logout', function () {
    Auth::logout();
    return redirect()->to('/admin/login');
})->name('logout');

Route::middleware(['auth'])->group(function () {
    Route::get('/admin/dashboard', [BackendController::class,'dashboard']);
    Route::get('/admin/slider', [BackendController::class,'slider']);
    Route::get('/admin/get-slider', [BackendController::class,'getSlider']);
    Route::post('/admin/add-slider', [BackendController::class,'addSlider']);
    Route::get('/admin/testimonials', [BackendController::class,'testimonials']);
    Route::post('/admin/add-testimonials', [BackendController::class,'addTestimonials']);
    Route::get('/admin/pages', [BackendController::class,'pages']);
    Route::get('/admin/get-pages', [BackendController::class,'getPages']);
    Route::get('/admin/add-pages', [BackendController::class,'addPages']);
    Route::post('/admin/add-pages', [BackendController::class,'savePages']);
    Route::get('/admin/add-pages/{id}', [BackendController::class,'editPages']);
    Route::get('/admin/category', [BackendController::class,'category']);
    Route::get('/admin/get-category', [BackendController::class,'getCategory']);
    Route::post('/admin/add-category', [BackendController::class,'addCategory']);
    Route::get('/admin/subcategory', [BackendController::class,'subcategory']);
    Route::get('/admin/get-subcategory', [BackendController::class,'getSubCategory']);
    Route::post('/admin/add-subcategory', [BackendController::class,'addSubCategory']);
    Route::post('/admin/getSubcategoryById', [BackendController::class,'getSubcategoryById']);
    Route::get('/admin/product', [BackendController::class,'product']);
    Route::get('/admin/get-products', [BackendController::class,'getProducts']);

    Route::get('/admin/add-product', [BackendController::class,'addProduct']);
    Route::post('/admin/add-product', [BackendController::class,'saveProduct']);
    Route::get('/admin/add-product/{id}', [BackendController::class,'editProduct']);
    Route::get('/admin/inventory', [BackendController::class,'inventory']);
    Route::post('/admin/update-inventory', [BackendController::class,'updateInventory']);
    Route::get('/admin/get-inventory', [BackendController::class,'getInventory']);
    Route::get('/admin/portfolio', [BackendController::class,'portfolio']);
    Route::post('/admin/add-portfolio', [BackendController::class,'addPortfolio']);
    Route::get('/admin/contact-settings', [BackendController::class,'contact_settings']);
    Route::post('/admin/contact-settings', [BackendController::class,'addSettings']);
    Route::get('/admin/delete/{id}/{table}', [BackendController::class,'delete']);
    Route::get('/admin/enquiry', [BackendController::class,'enquiry']);
    // Variants
    Route::get('/admin/variants', [BackendController::class,'variants']);
    Route::post('/admin/add-variants', [BackendController::class,'addVariants']);
    // Blogs
    Route::get('/admin/blogs', [BackendController::class,'blogs']);
    Route::get('/admin/add-blogs', [BackendController::class,'addBlog']);
    Route::post('/admin/add-blogs', [BackendController::class,'saveBlogs']);
    Route::get('/admin/add-blogs/{id}', [BackendController::class,'editBlog']);
    // Coupon
    Route::get('/admin/coupon', [BackendController::class,'coupon']);
    Route::get('/admin/get-coupon', [BackendController::class,'getCoupon']);
    Route::post('/admin/add-coupon', [BackendController::class,'addCoupon']);
    //Orders
    Route::get('/admin/orders', [BackendController::class,'orders']);
    Route::get('/admin/get-orders', [BackendController::class,'getOrders']);
    Route::get('/admin/orders/{id}', [BackendController::class,'order']);
    Route::post('/admin/update-order-status', [BackendController::class,'saveOrderStatus']);
});

Route::get('/clear-cache/{key}', function ($key) {
    if ($key != '322') {
        return "Invalid Key!";
    }
    Artisan::call('storage:link');
    Artisan::call('view:clear');
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('optimize:clear');

    return "All cache cleared!";
});


Route::get('/logout', [FrontendController::class,'logout']);
Route::get('/delete-address/{id}', [FrontendController::class,'deleteAddress']);
Route::get('/', [FrontendController::class,'index']);
Route::get('/blogs/{slug}', [FrontendController::class,'blogDetails']);
Route::get('/checkout', [FrontendController::class,'checkout']);
Route::post('/checkoutpost', [FrontendController::class,'checkoutPost']);
Route::post('/update-address', [FrontendController::class,'updateAddress']);
Route::get('/verify', [FrontendController::class,'verify']);

Route::get('/shop/{category?}/{subcategory?}', [FrontendController::class, 'shop']);
Route::get('/shop/{category?}', [FrontendController::class, 'shop']);
Route::get('/shop/{slug}', [FrontendController::class,'productDetails']);
Route::post('/get-product-price', [FrontendController::class,'getProductPrice']);
Route::get('/hookah-shop-in-noida',function(){
    return view('front.about');
});
Route::get('/{slug}', [FrontendController::class,'otherPages']);
Route::post('/store-cart-data', [FrontendController::class,'storeCartData']);
Route::post('/apply-coupon', [FrontendController::class,'applyCoupon']);

Route::post('/send-enquiry', [FrontendController::class,'send_enquiry']);
Route::post('/signup', [FrontendController::class,'signup']);

Route::post('/reset-password', [FrontendController::class,'resetPassword']);
Route::post('/create-password', [FrontendController::class,'createPassword']);
Route::post('/checkout', [FrontendController::class,'checkout']);
Route::get('/hookah-shop-in-noida',function(){
    return view('front.about');
});
Route::middleware(['auth:customer'])->group(function () {
    Route::get('/account', [FrontendController::class,'index']);
    Route::get('/account/{id}', [FrontendController::class,'orderDetails']);
    Route::post('/update-profile', [FrontendController::class,'updateProfile']);
    Route::post('/save-address', [FrontendController::class,'saveAddress']);

});



