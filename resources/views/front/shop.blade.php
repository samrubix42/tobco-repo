@extends('front.layout')
@section('content') 
<div class="page-header text-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 d-flex justify-content-between align-items-center">
                                <div class="page-title"><h1>{{$page}}</h1></div>
                                <!--Breadcrumbs-->
                                <div class="breadcrumbs"><a href="{{url('/')}}" title="Back to the home page">Home</a><span class="title"><i class="icon anm anm-angle-right-l"></i>{{$page}}</span></div>
                                <!--End Breadcrumbs-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Page Header-->

                <!--Main Content-->
                <div class="container">
                    <!--Category Slider-->
                    
                    <!--End Category Slider-->
                    <div class="row">
                        <!--Products-->
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                            <!--Toolbar-->
                            <div class="toolbar toolbar-wrapper shop-toolbar">
                                <div class="row align-items-center">
                                    <div class="col-4 col-sm-2 col-md-4 col-lg-4 text-left filters-toolbar-item d-flex order-1 order-sm-0">
                                        <button type="button" class="btn btn-filter icon anm anm-sliders-hr d-inline-flex d-lg-none me-2"><span class="d-none">Filter</span></button>
                                        <div class="filters-item d-flex align-items-center">
                                            <label class="mb-0 me-2 d-none d-lg-inline-block">View as:</label>
                                            <div class="grid-options view-mode d-flex">
                                                <!--<a class="icon-mode mode-list d-block" data-col="1"></a>-->
                                                <a class="icon-mode mode-grid grid-2 d-block" data-col="2"></a>
                                                <a class="icon-mode mode-grid grid-3 d-md-block" data-col="3"></a>
                                                <a class="icon-mode mode-grid grid-4 d-lg-block active" data-col="4"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 col-md-4 col-lg-4 text-center product-count order-0 order-md-1 mb-3 mb-sm-0">
                                        <span class="toolbar-product-count">Showing: {{count($products)}} products</span>
                                    </div>
                                </div>
                            </div>
                            <!--End Toolbar-->

                            <!--Product Grid-->
                            <div class="grid-products grid-view-items">
                                <div class="row col-row product-options row-cols-lg-4 row-cols-md-3 row-cols-sm-3 row-cols-2">
                                    @foreach($products as $f)
                                @php
                                    $variant = DB::table('product_variance_data')->where('product_id', $f->id)->first();
                                    $product_img = DB::table('product_images')->where(['product_id'=>$f->id, 'variant_id' => $variant->id])->first();
                                @endphp
                                <div class="item col-item">
                                    <div class="product-box">
                                        <!-- Start Product Image -->
                                        <div class="product-image">
                                            <!-- Start Product Image -->
                                            <a href="{{url('shop/'.$f->slug)}}" class="product-img">
                                                <!-- Image -->
                                                <img class="primary blur-up lazyload" data-src="{{asset('public/uploads/'.$variant->image)}}" src="{{asset('public/uploads/'.$variant->image)}}" alt="{{$f->title}}" title="{{$f->title}}" width="625" height="759" />
                                                <!-- End Image -->
                                                <!-- Hover Image -->
                                                <img class="hover blur-up lazyload" data-src="{{asset('public/uploads/'.$product_img->other_image)}}" src="{{asset('public/uploads/'.$product_img->other_image)}}" alt="{{$f->title}}" title="{{$f->title}}" width="625" height="759" />
                                                <!-- End Hover Image -->
                                            </a>
                                            <!-- End Product Image -->
                                            <!-- Product label -->
                                            @if($variant->sale_price < $variant->reg_price)
                                                <div class="product-labels round-pill"><span class="lbl on-sale">Sale</span></div>
                                            @endif
                                            <!-- End Product label -->											
                                        </div>
                                        <!-- End Product Image -->
                                        <!-- Start Product Details -->
                                        <div class="product-details text-left">
                                            <!--Product Vendor-->
                                            <div class="product-vendor">{{$f->ctitle}}</div>
                                            <!--End Product Vendor-->
                                            <div class="product-name-price">
                                                <!-- Product Name -->
                                                <div class="product-name">
                                                    <a href="{{url('shop/'.$f->slug)}}">{{$f->title}}</a>
                                                </div>
                                                <!-- End Product Name -->
                                                <!-- Product Price -->
                                                <div class="product-price m-0">
                                                    <span class="price old-price">₹{{number_format($variant->reg_price, 2)}}</span><span class="price">₹{{number_format($variant->sale_price, 2)}}</span>
                                                </div>
                                                <!-- End Product Price -->
                                            </div>
                                            <!-- Product Review -->
                                            <div class="product-review">
                                                <i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i>
                                                <span class="caption hidden ms-1">0 Reviews</span>
                                            </div>
                                            <!-- End Product Review -->
                                            <!--Product Button-->
                                            <div class="button-bottom-action style1">
                                                <div class="button-left">
                                                    <!--Cart Button-->
                                                    <a href="{{url('shop/'.$f->slug)}}" class="btn btn-primary btn-md">
                                                        <i class="icon anm anm-bag-l me-2"></i><span class="text">View Details</span>
                                                    </a>
                                                    <!--End Cart Button-->
                                                </div>
                                            </div>
                                            <!--End Product Button-->
                                        </div>
                                        <!-- End product details -->
                                    </div>
                                </div>
                                @endforeach
                                </div>
                            </div>
                            <!--End Product Grid-->
                        </div>
                        <!--End Products-->
                    </div>
                    <div>
                        <p></br></p>
                        <div class="section-header">
                            <h2 style="color:white;">Shop More</h2>
                        </div>
                    <div class="collection-slider-6items gp10 slick-arrow-dots sub-collection section pt-0">
                        
                        @foreach($category as $c)
                        <div class="category-item zoomscal-hov">
                            <a href="{{url('shop/'.$c->slug)}}" class="category-link clr-none">
                                <div class="zoom-scal zoom-scal-nopb rounded-0"><img class="rounded-0 blur-up lazyload" data-src="{{asset('/public/uploads/'.$c->image)}}" src="{{asset('/public/uploads/'.$c->image)}}" alt="{{$c->title}}" title="{{$c->title}}" width="365" height="365" /></div>
                                <div class="details text-center">
                                    <h4 class="category-title mb-0" style="height:35px">{{$c->title}}</h4>
                                    @php
                                        $count = DB::table('product')->where(['category' => $c->id , 'is_show' => 1])->count();
                                    @endphp
                                    <p class="counts">{{$count}} Items</p>
                                </div>
                            </a>
                        </div>
                        @endforeach
                    </div>
                    </div>
                </div>	
@endsection