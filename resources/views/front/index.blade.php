@extends('front.layout')
@section('content')
@if($page->slug !== 'home')
<div class="page-header text-center">
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 d-flex justify-content-between align-items-center">
                <div class="page-title">
                    <h1>{{$page->title}}</h1>
                </div>
                <!--Breadcrumbs-->
                <div class="breadcrumbs"><a href="{{url('/')}}" title="Back to the home page">Home</a><span class="main-title"><i class="icon anm anm-angle-right-l"></i>{{$page->title}}</span></div>
                <!--End Breadcrumbs-->
            </div>
        </div>
    </div>
</div>
@endif

@switch($page->slug)
@case('home')
<section class="section collection-banners four-bnr py-0">
    <div class="container-fluid px-0">
        <div class="section-header d-none">
            <h2>Explore collection</h2>
        </div>

        <div class="collection-banner-grid">
            <div class="collection-banner-items collection-slider-4items slick-arrow-dots hov-arrow">
                @foreach($category as $c)
                <div class="collection-item">
                    <a href="{{url('shop/'.$c->slug)}}" class="zoom-scal">
                        <div class="img">
                            <img class="blur-up lazyload w-100" data-src="{{asset('/public/uploads/'.$c->image)}}" src="{{asset('/public/uploads/'.$c->image)}}" alt="{{$c->title}}" title="" width="480" height="617" />
                        </div>
                        <div class="details middle-center p-lg-0">
                            <div class="inner">
                                @php
                                $count = DB::table('product')->where(['category' => $c->id , 'is_show' => 1])->count();
                                @endphp
                                <span class="btn btn-light btn-lg text-capitalize head-font">{{$c->title}} <sup>{{$count}}</sup></span>
                            </div>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
<section class="section product-slider">
    <div class="container container-1330">
        <div class="section-header">
            <h2>New Arrival</h2>
        </div>
        <!--Product Grid-->
        <div class="grid-products grid-view-items pro-hover3">
            <div class="row col-row product-options row-cols-xl-4 row-cols-lg-4 row-cols-md-3 row-cols-sm-3 row-cols-2">
                @foreach($featured as $f)
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
                                <img class="primary blur-up lazyload" data-src="{{asset('/public/uploads/'.$variant->image)}}" src="{{asset('/public/uploads/'.$f->image)}}" alt="{{$f->title}}" title="{{$f->title}}" width="625" height="759" />
                                <!-- End Image -->
                                <!-- Hover Image -->
                                <img class="hover blur-up lazyload" data-src="{{asset('/public/uploads/'.$product_img->other_image)}}" src="{{asset('/public/uploads/'.$product_img->other_image)}}" alt="{{$f->title}}" title="{{$f->title}}" width="625" height="759" />
                                <!-- End Hover Image -->
                            </a>
                            <!-- End Product Image -->
                            <!-- Product label -->
                            @if($f->sale_price < $f->reg_price)
                                <div class="product-labels round-pill"><span class="lbl on-sale">Sale</span></div>
                                @endif
                                <!-- End Product label -->
                        </div>
                        <!-- End Product Image -->
                        <!-- Start Product Details -->
                        <div class="product-details text-left">
                            <!--Product Vendor-->
                            <div class="product-vendor">{{$f->stitle}}</div>
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

            <div class="view-collection text-center mt-4 mt-md-5">
                <a href="{{url('collection')}}" class="btn btn-secondary btn-lg ">View Collection</a>
            </div>
        </div>
        <!--End Product Grid-->
    </div>
</section>
<!--End Products section-->

<!--Collection banner-->
<section class="section collection-banners four-one-bnr p-0">
    <div class="container container-1330">
        <div class="collection-banner-grid">
            <div class="row">
                <div class="collection-banner-item">
                    <div class="row sp-row row-cols-lg-4 row-cols-md-4 row-cols-sm-4 row-cols-2 justify-content-center">
                        @foreach($category as $c)
                        <div class="collection-item sp-col">
                            <a href="{{url('shop/'.$c->slug)}}" class="zoom-scal clr-none">
                                <div class="img">
                                    <img class="blur-up lazyload w-100" data-src="{{asset('/public/uploads/'.$c->image)}}" src="{{asset('/public/uploads/'.$c->image)}}" alt="{{$c->title}}" title="{{$c->title}}" width="306" height="307" />
                                </div>
                                <div class="details middle-center p-lg-0">
                                    <div class="inner">
                                        <span class="btn btn-light btn-lg text-nowrap">{{$c->title}}</span>
                                    </div>
                                </div>
                            </a>
                        </div>
                        @endforeach
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!--End Collection banner-->

<!--Products With Tabs-->
<section class="section product-slider tab-slider-product">
    <div class="container container-1330">
        <div class="section-header">
            <h2>Find The Perfect Fit</h2>
        </div>

        <div class="tabs-listing">
            <ul class="nav nav-tabs style2 justify-content-center" id="productTabs" role="tablist">
                @foreach($category as $key => $c)
                @if($c->title === 'Hookah' || $c->title === 'Glass Bong Percolator' || $c->title === 'Hookah Flavours' || $c->title === 'Hookah Accessories')
                <li class="nav-item" role="presentation">
                    <button class="nav-link {{$c->title === 'Hookah' ? 'active' : ''}}" id="{{$c->slug}}-tab" data-bs-toggle="tab" data-bs-target="#category{{$key}}" type="button" role="tab" aria-controls="category{{$key}}" aria-selected="true">{{$c->title}}</button>
                </li>
                @endif
                @endforeach
            </ul>

            <div class="tab-content" id="productTabsContent">
                @foreach($category as $key => $c)
                @if($c->title === 'Hookah' || $c->title === 'Glass Bong Percolator' || $c->title === 'Hookah Flavours' || $c->title === 'Hookah Accessories')
                <div class="tab-pane {{$c->title === 'Hookah' ? 'show active' : ''}}" id="category{{$key}}" role="tabpanel" aria-labelledby="{{$c->slug}}-tab">
                    <!--Product Grid-->
                    <div class="grid-view-items">
                        <div class="product-slider-4items gp15 arwOut5 grid-products pro-hover3">
                            @php
                            $products = DB::table('product')->where(['product.is_show' => 1, 'category' => $c->id])->orderBy('id', 'desc')->limit('5')->get();
                            @endphp
                            @foreach($products as $p)
                            @php
                            $variant = DB::table('product_variance_data')->where('product_id', $p->id)->first();
                            $product_img = DB::table('product_images')->where(['product_id'=>$p->id, 'variant_id' => $variant->id])->first();
                            $subcategory = DB::table('subcategory')->where('id', $p->subcategory)->first();
                            @endphp
                            <div class="item col-item">
                                <div class="product-box">
                                    <!-- Start Product Image -->
                                    <div class="product-image">
                                        <!-- Start Product Image -->
                                        <a href="{{url('shop/'.$p->slug)}}" class="product-img">
                                            <!-- Image -->
                                            <img class="primary blur-up lazyload" data-src="{{asset('/public/uploads/'.$variant->image)}}" src="{{asset('/public/uploads/'.$variant->image)}}" alt="{{$p->title}}" title="{{$p->title}}" width="625" height="759" />
                                            <!-- End Image -->
                                            <!-- Hover Image -->
                                            <img class="hover blur-up lazyload" data-src="{{asset('/public/uploads/'.$product_img->other_image)}}" src="{{asset('/public/uploads/'.$product_img->other_image)}}" alt="{{$p->title}}" title="{{$p->title}}" width="625" height="759" />
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
                                        <div class="product-vendor">{{$subcategory?->title}}</div>
                                        <!--End Product Vendor-->
                                        <div class="product-name-price">
                                            <!-- Product Name -->
                                            <div class="product-name">
                                                <a href="{{url('shop/'.$p->slug)}}">{{$p->title}}</a>
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
                                                <a href="{{url('shop/'.$p->slug)}}" class="btn btn-primary btn-md">
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
                @endif
                @endforeach
            </div>
        </div>
    </div>
</section>
<!--End Products With Tabs-->


<!--Parallax Banner-->
<div class="section parallax-banner-style1 py-0" style="display: none;">
    <div class="hero hero-large hero-overlay bg-size">
        <img class="bg-img" src="https://img.freepik.com/free-photo/woman-vaping-from-hookah-bar_23-2149194235.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="parallax-banner" width="1920" height="645" />
        <div class="hero-inner d-flex-justify-center">
            <div class="container">
                <div class="wrap-text mx-auto text-center">
                    <h1 class="hero-title text-uppercase">Deals of the week<br> Flat <span class="text-primary">50%</span> Off</h1>
                    <p class="hero-subtitle h3 text-transform-none">Sale will end soon in</p>
                    <!--Countdown Timer-->
                    <div class="hero-saleTime dark d-flex-justify-center text-center" data-countdown="2024/10/01"></div>
                    <!--End Countdown Timer-->
                    <a href="#" class="hero-btn btn btn-primary ">Explore Deal now</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Parallax Banner-->


<!--Testimonial Section-->
<section class="section testimonial-slider style1">
    <div class="container">
        <div class="section-header">
            <h2>Testimonials</h2>
        </div>

        <div class="testimonial-wraper">
            <!--Testimonial Slider Items-->
            <div class="testimonial-slider-3items gp15 slick-arrow-dots rounded-dots arwOut5">
                @foreach($testimonials as $t)
                <div class="testimonial-slide">
                    <div class="testimonial-content text-center">
                        <div class="content">
                            <div class="text">
                                <p>{{$t->comment}}</p>
                            </div>
                            <div class="product-review my-3">
                                <i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i>
                                <span class="caption hidden ms-1">24 Reviews</span>
                            </div>
                        </div>
                        <div class="auhimg d-flex-justify-center text-left">
                            <div class="auhtext ms-3">
                                <h5 class="authour mb-1">{{$t->title}}</h5>
                                <p class="text-muted">{{$t->designation}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <!--Testimonial Slider Items-->
        </div>
    </div>
</section>
<!--End Testimonial section-->
<!--Service Section-->
<section class="section service-section pb-0 pt-0">
    <div class="container">
        <div class="service-info row col-row row-cols-lg-4 row-cols-md-4 row-cols-sm-2 row-cols-2 text-center">
            <div class="service-wrap col-item">
                <div class="service-icon mb-3">
                    <i class="icon anm anm-redo-l"></i>
                </div>
                <div class="service-content">
                    <h4 class="title mb-2 fw-600 body-font">Free Returns</h4>
                    <span class="text-muted">Return money within 10 days</span>
                </div>
            </div>
            <div class="service-wrap col-item">
                <div class="service-icon mb-3">
                    <i class="icon anm anm-phone-call-l"></i>
                </div>
                <div class="service-content">
                    <h4 class="title mb-2 fw-600 body-font">SHOP ONLINE 24/7</h4>
                    <span class="text-muted">Contact us 24/7 hours a day</span>
                </div>
            </div>
            <div class="service-wrap col-item">
                <div class="service-icon mb-3">
                    <i class="icon anm anm-truck-l"></i>
                </div>
                <div class="service-content">
                    <h4 class="title mb-2 fw-600 body-font">FREE SHIPPING</h4>
                    <span class="text-muted">From all orders over $100</span>
                </div>
            </div>
            <div class="service-wrap col-item">
                <div class="service-icon mb-3">
                    <i class="icon anm anm-credit-card-l"></i>
                </div>
                <div class="service-content">
                    <h4 class="title mb-2 fw-600 body-font">SECURE SHOPPING</h4>
                    <span class="text-muted">You're in safe hands</span>
                </div>
            </div>
        </div>
    </div>
</section>
@break
@case('collection')
<div class="container">
    <div class="collection-style1 row col-row row-cols-xl-4 row-cols-lg-3 row-cols-md-2 row-cols-2 justify-content-center">
        @foreach($category as $c)
        <div class="category-item col-item zoomscal-hov">
            <a href="{{url('shop/'.$c->slug)}}" class="category-link clr-none">
                <div class="zoom-scal zoom-scal-nopb"><img class="blur-up lazyload w-100" data-src="{{asset('/public/uploads/'.$c->image)}}" src="{{asset('/public/uploads/'.$c->image)}}" alt="{{$c->title}}" title="{{$c->title}}" width="365" height="365" /></div>
                <div class="details mt-3 d-flex justify-content-between align-items-center">
                    <h4 class="category-title mb-0">{{$c->title}}</h4>
                    @php
                    $count = DB::table('product')->where('category', $c->id)->count();
                    @endphp
                    <p class="counts">{{$count}} Items</p>
                </div>
            </a>
        </div>
        @endforeach
    </div>
</div>
@break
@case('about-us')
{!! $page->description !!}
<section class="testimonial-section">
    <div class="testimonial-wrapper overflow-x-hidden pt-40 pb-40 white-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <!--=== Section Content Box ===-->
                    <div class="section-content-box mb-40" data-aos="fade-right" data-aos-delay="30" data-aos-duration="800">
                        <div class="section-title mb-50">
                            <h2>What Our Clients Say About Us</h2>
                        </div>
                        <div class="testimonial-arrows style-one justif"></div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <!--=== Testimonial Slider ===-->
                    <div class="testimonial-slider-one" data-aos="fade-left" data-aos-delay="50" data-aos-duration="1000">
                        @foreach($testimonials as $t)
                        <!--=== Testimonial Item ===-->
                        <div class="testimonial-item style-one mb-40">
                            <div class="testimonial-content">
                                <p>{!! $t->comment !!}</p>
                                <div class="author-quote-item d-flex justify-content-between align-items-center">
                                    <div class="author-item">
                                        <div class="author-thumb">
                                            <img src="{{asset('/public/uploads/'.$t->image)}}" alt="{{$t->title}}">
                                        </div>
                                        <div class="author-info">
                                            <h5>{{$t->title}}</h5>
                                            <ul class="ratings rating5">
                                                <li><i class="fas fa-star"></i></li>
                                                <li><i class="fas fa-star"></i></li>
                                                <li><i class="fas fa-star"></i></li>
                                                <li><i class="fas fa-star"></i></li>
                                                <li><i class="fas fa-star"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="quote-icon">
                                        <i class="flaticon flaticon-right-quote"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@break
@case('blogs')
{!! $page->description !!}
<div class="container">
    <!--Blog Grid-->
    <div class="blog-grid-view">
        <div class="row col-row row-cols-lg-3 row-cols-sm-2 row-cols-1">
            @foreach($blogs as $b)
            <div class="blog-item col-item">
                <div class="blog-article zoomscal-hov">
                    <div class="blog-img">
                        <a class="featured-image rounded-0 zoom-scal" href="{{url('/blogs/'.$b->slug)}}"><img class="rounded-0 blur-up lazyload" data-src="{{asset('/public/uploads/'.$b->image)}}" src="{{asset('/public/uploads/'.$b->image)}}" alt="{{$b->title}}" width="740" height="410" /></a>
                    </div>
                    <div class="blog-content">
                        <h2 class="h3"><a href="{{url('/blogs/'.$b->slug)}}">{{$b->title}}</a></h2>
                        <ul class="publish-detail d-flex-wrap">
                            <li><i class="icon anm anm-clock-r"></i> <time datetime="{{date('Y-m-d', strtotime($b->created_at))}}">{{date('F d, Y', strtotime($b->created_at))}}</time></li>
                        </ul>
                        <p class="content">
                            @php
                            $content = substr(strip_tags($b->description), 0, 100)
                            @endphp
                            {{$content}}
                        </p>
                        <a href="{{url('/blogs/'.$b->slug)}}" class="btn btn-secondary btn-sm">Read more</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

        <!-- Pagination -->
        <!--<nav class="clearfix pagination-bottom">-->
        <!--    <ul class="pagination justify-content-center">-->
        <!--        <li class="page-item disabled"><a class="page-link" href="#"><i class="icon anm anm-angle-left-l"></i></a></li>-->
        <!--        <li class="page-item active"><a class="page-link" href="#">1</a></li>-->
        <!--        <li class="page-item"><a class="page-link" href="#">2</a></li>-->
        <!--        <li class="page-item"><a class="page-link dot" href="#">...</a></li>-->
        <!--        <li class="page-item"><a class="page-link" href="#">5</a></li>-->
        <!--        <li class="page-item"><a class="page-link" href="#"><i class="icon anm anm-angle-right-l"></i></a></li>-->
        <!--    </ul>-->
        <!--</nav>-->
        <!-- End Pagination -->
    </div>
    <!--End Blog Grid-->
</div>
@break
@case('contact-us')
<section class="contact-information-section pt-40 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="single-information-wrapper">
                    <div class="single-information-item d-flex justify-content-between mb-15" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="50">
                        <div class="content mb-20">
                            <h4>Office Address:</h4>
                            <p>{{$contact->address}} </p>
                        </div>
                        <div class="content mb-20">
                            <h4>Phone</h4>
                            <p><a href="tel:+{{$contact->phone}}">{{$contact->phone}}</a></p>

                        </div>
                        <div class="content mb-20">
                            <h4>Email</h4>
                            <p><a href="mailto:{{$contact->email}}">{{$contact->email}}</a></p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section><!--====== End Contact Information Section ======-->
<!--====== Start Contact Section ======-->
<section class="contact-section pt-0 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="contact-wrapper p-r z-1 mb-50" data-aos="fade-right" data-aos-delay="10" data-aos-duration="1000">
                    <div class="shape shape-one"><span><img src="{{url('public/frontend/')}}/images/shape/cl-line.png" alt="Line Shape"></span></div>
                    <h3>Get in touch</h3>
                    <div id="message"></div>
                    <form class="pesco-contact-form" id="contact-form">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" placeholder="Name" id="name" class="form_control" name="name" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="email" placeholder="Email" id="email" class="form_control" name="email" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <input type="phone" placeholder="Phone" id="phone" class="form_control" name="phone" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea class="form_control" placeholder="Write Reviews" name="message" cols="5" rows="4"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form_group">
                                    <button class="theme-btn style-one">Send Message</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="contact-img-text text-center mb-50 d-none d-lg-block" data-aos="fade-left" data-aos-delay="15" data-aos-duration="1500">
                    <img src="{{url('public/frontend/')}}/images/contact/text-img.png" alt="Text">
                </div>
            </div>
        </div>
    </div>
</section><!--====== End Contact Section ======-->
<script>
    $(document).ready(function() {
        $('#contact-form').on('submit', function(event) {
            event.preventDefault();

            var formData = new FormData(this);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                type: 'POST',
                url: '{{url("/send-enquiry")}}',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(response) {
                    if (response.status == 'success') {
                        $('#message').html('<div class="alert alert-success">Thank you For Contacting Us, We will Contact You Shortly</div>');
                        setTimeout(function() {
                            $('#message').fadeOut(400);
                        }, 3000);
                        $('input').val('');
                        $('textarea').val('');
                        //  location.reload(true);
                    } else {

                        $('#message').html('<div class="alert alert-danger">Something Went wrong. Please try again</div>');
                        setTimeout(function() {
                            $('#message').fadeOut(400);
                        }, 3000);
                    }
                },
                error: function() {
                    $('#message').html('<div class="alert alert-danger">Something Went wrong. Please try again</div>');
                    setTimeout(function() {
                        $('#message').fadeOut(400);
                    }, 3000);
                }
            });
        });
    });
</script>
@break
@case('carts')

<section class="cart-page-section pt-40 pb-40">
    <div class="container has-data">
        <div class="row">
            <div class="col-xl-8">
                <div class="cart-wrapper mb-40" data-aos="fade-up" data-aos-duration="1200">
                    <h3 class="mb-20">Total Cart Item: <span class="pro-count">0</span></h3>
                    <div class="cart-list table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th><i class="fas fa-tshirt"></i>Products Details</th>
                                    <th><i class="fas fa-sack-dollar"></i>Price</th>
                                    <th style="text-align: center;"><i class="fas fa-eye"></i>Quantity</th>
                                    <th style="text-align: right;"><i class="fas fa-money-bill"></i>Total</th>
                                </tr>
                            </thead>
                            <tbody id="cartTable">
                            </tbody>
                        </table>
                    </div>
                    <div class="cart-bottom d-flex align-items-center justify-content-between mt-40">
                        <div class="ct-shopping">
                            <a class="theme-btn style-one" href="{{url('shop')}}">Continue Shopping</a>

                        </div>
                        <div class="cl-cart">
                            <button class="theme-btn style-one" id="clearCart">Clear Cart</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4">
                <!--=== Cart Sidebar Area  ===-->
                <div class="cart-sidebar-area">
                    <!--=== Cart Widget  ===-->
                    <div class="cart-widget coupon-box-widget mb-40" data-aos="fade-up" data-aos-duration="1200">
                        <h4>Use Coupon Code</h4>
                        <p>Enter your coupon code if you have one.</p>
                        <form class="coupon-form">
                            <input type="text" class="form_control" required name="code" id="code">
                            <input type="hidden" class="form_control totalAmount" required name="totalAmount" id="totalAmount">
                            <button type="submit" class="thme-btn style-one apply">Apply</button>
                        </form>
                        <div class="removeCoupon text text-danger d-none">x Remove Offer</div>
                    </div>
                    <!--=== Cart Widget  ===-->
                    <div class="cart-widget cart-total-widget mb-40" data-aos="fade-up" data-aos-duration="1400">
                        <h4>Cart Totals</h4>
                        <div class="sub-total">
                            <h5>Subtotal <span class="price">₹<span class="totalAmount sub_total" id="subTotal">0</span></span></h5>
                        </div>
                        <div class="coupon-box sub-total d-none">
                            <h5>Coupon<div class="couponName" style="    display: inline-block;"></div><span class="couponPrice">-₹<span class="couponAmount">0</span></span></h5>
                            <input type="hidden" id="couponValue" class="couponValue" name="couponValue" />
                        </div>
                        <div class="price-total">
                            <h5>Total <span class="price">₹<span class="finalAmount">0</span></span></h5>
                        </div>
                        <div class="proceced-checkout">
                            <a href="javascript:void(0)" id="checkout" class="theme-btn style-one">Proceed to checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container hasnot-data d-none">
        <div class="row text-center">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <h3>Cart Is Empty!!!</h3>
                <a class="theme-btn style-one mt-5" style href="{{url('shop')}}">Continue Shopping</a>
            </div>
            <div class="col-md-4"></div>

        </div>
    </div>
</section><!--====== End Cart Section ======-->

<script>
    var getData = localStorage.getItem("cartData");
    if (getData == null) {
        console.log('test');
        $('.has-data').addClass('d-none');
        $('.hasnot-data').removeClass('d-none');

    } else {
        if (JSON.parse(getData).length > 0) {
            $('.has-data').removeClass('d-none');
            $('.hasnot-data').addClass('d-none');
        } else {
            $('.hasnot-data').removeClass('d-none');
            $('.has-data').addClass('d-none');
        }
    }
</script>
@break
@case('checkout')
<section class="checkout-section pt-40 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <!--=== Checkout Wrapper ===-->
                <div class="checkout-wrapper" data-aos="fade-up" data-aos-duration="1200">
                    <!--=== Checkout Form ===-->
                    <form class="checkout-form" id="checkout-form">
                        <div class="row">
                            <div class="col-xl-7">
                                @if(empty(Auth::guard('customer')->user()))
                                <h4>Returning customer?
                                    <a href="{{url('login')}}" class="btn btn-link btn-toggle">Login
                                    </a>
                                </h4>
                                @endif
                                @if(count($address) > 0)
                                <div class="billing-wrapper">
                                    <h3 class="title">Billing details</h3>

                                    <div class="addressBox">
                                        <div class="row">

                                            @foreach($address as $key => $a)
                                            @php
                                            $addressData = json_decode($a->address_details);
                                            @endphp
                                            <div class="col-md-1">
                                                <input type="radio" id="address{{$key}}" name="address_id" value="{{$a->id}}">
                                            </div>
                                            <div class="col-md-11">
                                                <label for="{{$a->id}}">{{$addressData->billing_fname.' '.$addressData->billing_lname}}<br>{{$addressData->phone}}<br>{{$addressData->email}}<br>{{$addressData->address.', '.$addressData->city.', '.$addressData->pincode.', '.$addressData->state.','.$addressData->country}}</label>
                                            </div>
                                            <div class="col-md-12">
                                                <hr>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="row">
                                        <a href="javascript:void(0)" class="theme-btn style-one addAddressBtn">Add Address</a>
                                    </div>
                                    <div class="row addAddress d-none">
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>First Name <span>*</span></label>
                                                <input type="text" class="form_control" id="billing_fname" placeholder="Ex: Thomas" name="billing_fname">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Last Name <span>*</span></label>
                                                <input type="text" class="form_control" id="billing_lname" placeholder="Ex: Alison" name="billing_lname">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Company name(optional)</label>
                                                <input type="text" class="form_control" id="company_name" placeholder="Ex: Alison" name="company_name">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Country</label>
                                                <input type="text" class="form_control" id="country" placeholder="Country" name="country">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>State</label>
                                                <input type="text" class="form_control" id="state" placeholder="State" name="state">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Postcode / Zip <span>*</span></label>
                                                <input type="text" class="form_control" name="pincode" id="pincode" placeholder="Ex:  WC2N 5DU">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Town / City <span>*</span></label>
                                                <input type="text" class="form_control" name="city" id="city" placeholder="Ex: London">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form_group">
                                                <label>Street address<span>*</span></label>
                                                <input type="text" class="form_control" id="address" name="address" placeholder="Ex:  123 Elm Street">
                                                <input type="text" class="form_control" id="address1" name="address1" placeholder="Ex:  123 Elm Street">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form_group">
                                                <label>Phone Number <span>*</span></label>
                                                <input type="tel" class="form_control" placeholder="Ex: +1 (555) 123-4567" name="phone" id="phone">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form_group">
                                                <label>Email address<span>*</span></label>
                                                <input type="email" class="form_control" placeholder="Ex: example@domain.com" value="{{!empty(Auth::guard('customer')->user()) ? Auth::guard('customer')->user()->email : ''}}" name="email" {{!empty(Auth::guard('customer')->user()) ? 'readOnly' : ''}}>
                                                <input type="hidden" name="productCheckout" id="productCheckout" value="" />
                                                <input type="hidden" name="couponCheckout" id="couponCheckout" value="" />
                                                <input type="hidden" name="paid_amount" id="finalAmountinCheckout" class="finalAmountinCheckout" value="" />
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form_group">
                                                <label>Order Notes (optional)</label>
                                                <textarea name="notes" id="notes" class="form_control" placeholder="e.g. special notes for delivery."></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @else
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>First Name <span>*</span></label>
                                            <input type="text" class="form_control" id="billing_fname" placeholder="Ex: Thomas" name="billing_fname">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Last Name <span>*</span></label>
                                            <input type="text" class="form_control" id="billing_lname" placeholder="Ex: Alison" name="billing_lname">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Company name(optional)</label>
                                            <input type="text" class="form_control" id="company_name" placeholder="Ex: Alison" name="company_name">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Country</label>
                                            <input type="text" class="form_control" id="country" placeholder="Country" name="country">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>State</label>
                                            <input type="text" class="form_control" id="state" placeholder="State" name="state">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Postcode / Zip <span>*</span></label>
                                            <input type="text" class="form_control" name="pincode" id="pincode" placeholder="Ex:  WC2N 5DU">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Town / City <span>*</span></label>
                                            <input type="text" class="form_control" name="city" id="city" placeholder="Ex: London">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form_group">
                                            <label>Street address<span>*</span></label>
                                            <input type="text" class="form_control" id="address" name="address" placeholder="Ex:  123 Elm Street">
                                            <input type="text" class="form_control" id="address1" name="address1" placeholder="Ex:  123 Elm Street">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form_group">
                                            <label>Phone Number <span>*</span></label>
                                            <input type="tel" class="form_control" placeholder="Ex: +1 (555) 123-4567" name="phone" id="phone">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form_group">
                                            <label>Email address<span>*</span></label>
                                            <input type="email" class="form_control" placeholder="Ex: example@domain.com" value="{{!empty(Auth::guard('customer')->user()) ? Auth::guard('customer')->user()->email : ''}}" name="email" {{!empty(Auth::guard('customer')->user()) ? 'readOnly' : ''}}>
                                            <input type="hidden" name="productCheckout" id="productCheckout" value="" />
                                            <input type="hidden" name="couponCheckout" id="couponCheckout" value="" />
                                            <input type="hidden" name="paid_amount" id="finalAmountinCheckout" class="finalAmountinCheckout" value="" />
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form_group">
                                            <label>Order Notes (optional)</label>
                                            <textarea name="notes" id="notes" class="form_control" placeholder="e.g. special notes for delivery."></textarea>
                                        </div>
                                    </div>
                                </div>
                                @endif
                            </div>
                            <div class="col-xl-5">
                                <div class="order-summary-wrapper mb-30">
                                    <h3 class="title">Billing details</h3>
                                    <div class="order-list">
                                        <div class="list-item">
                                            <div class="item-title">Product</div>
                                            <div class="subtotal">Subtotal</div>
                                        </div>
                                        <div class="checkOutItems"></div>

                                        <div class="list-item">
                                            <div class="subtotal">Subtotal</div>
                                            <div class="product-total">₹<span class="sub_total">0.00</span></div>
                                        </div>

                                        <div class="list-item getCoupon">
                                            <div class="shipping">Coupon (<span class="coup"></span>)</div>
                                            <div class="shipping-total couponValueinCheckout">0.00</div>
                                        </div>
                                        <div class="list-item">
                                            <div class="total">Total</div>
                                            <div class="product-total">₹<span class="finalAmountinCheckout">0.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="payment-method-wrapper">
                                    <h4 class="title mb-20">Payments Method</h4>
                                    <ul id="paymentMethod" class="mb-20">
                                        <!-- Default unchecked -->
                                        <li class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="method1" checked>
                                            <label class="form-check-label" for="method1" data-bs-toggle="collapse" data-bs-target="#collapse0">Direct bank transfer</label>
                                            <div id="collapse0" class="collapse show" data-bs-parent="#paymentMethod">
                                                <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.</p>
                                            </div>
                                        </li>
                                        <!-- Default unchecked -->
                                        <li class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="method2">
                                            <label class="form-check-label" for="method2" data-bs-toggle="collapse" data-bs-target="#collapse1">Check payments</label>
                                            <div id="collapse1" class="collapse" data-bs-parent="#paymentMethod">
                                                <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.</p>
                                            </div>
                                        </li>
                                        <!-- Default unchecked -->
                                        <li class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="method3">
                                            <label class="form-check-label" for="method3" data-bs-toggle="collapse" data-bs-target="#collapse2">Cash On Delivery</label>
                                            <div id="collapse2" class="collapse" data-bs-parent="#paymentMethod">
                                                <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.</p>
                                            </div>
                                        </li>
                                    </ul>
                                    <button class="theme-btn style-one">Place Order</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@break
@case('thankyou')
<div class="container">
    @if(isset($_GET['error']) === false)
    <div class="success-text checkout-card text-center mb-4 mb-md-5">
        <i class="icon anm anm-shield-check text-white"></i>
        <h2 class="text-white">Thank you for your order!</h2>
        <p class="mb-1">Payment is successfully processsed and your order is on the way</p>
        <p class="mb-1">You will receive an order confirmation email with details of your order and a link to track its progress.</p>
        <p class="text-order badge bg-success mt-3">Order ID: {{$_GET['order_id']}}</p>
    </div>
    <div class="row checkout-form">
        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
            <!--Order Summary-->
            <div class="block order-summary">
                <div class="block-content">
                    <h3 class="title mb-3 text-white">Order Summary</h3>
                    <div class="table-responsive-sm table-bottom-brd order-table">
                        <table class="table table-hover align-middle mb-0">
                            <thead>
                                <tr>
                                    <th class="text-start">Image</th>
                                    <th class="text-start proName">Product</th>
                                    <th class="text-center">Qty</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                $product = json_decode($orders->productCheckout);
                                $checkout = json_decode($orders->couponCheckout);
                                @endphp
                                @foreach($product as $p)
                                <tr>
                                    <td class="text-start"><a href="javascript:void(0)" class="thumb"><img class="rounded-0 blur-up lazyloaded" data-src="{{asset('/public/uploads/'.$p->product_image)}}" src="{{asset('/public/uploads/'.$p->product_image)}}" alt="{{$p->product_title}}" title="product" width="120" height="170"></a></td>
                                    <td class="text-start proName">
                                        <div class="list-view-item-title">
                                            <a href="javascript:void(0)">{{$p->product_title}}</a>
                                        </div>
                                        <div class="cart-meta-text">
                                            Variant: {{$p->product_variant}}
                                        </div>
                                    </td>
                                    <td class="text-center">{{$p->quantity}}</td>
                                    <td class="text-center">₹{{$p->product_price}}</td>
                                    <td class="text-center"><strong>₹{{$p->quantity * $p->product_price}}</strong></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!--End Order Summary-->

            <!--Cart Summary-->
            <div class="cart-info mt-4 mb-4 mb-lg-0">
                <div class="cart-order-detail cart-col">
                    <div class="row g-0 border-bottom pb-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Subtotal</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">₹{{$checkout[0]->subTotal}}</span></span>
                    </div>
                    <div class="row g-0 border-bottom py-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Coupon Discount</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">-₹{{$checkout[0]->couponValue ? $checkout[0]->couponValue : 0.00}}</span></span>
                    </div>
                    <div class="row g-0 border-bottom py-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Shipping</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">₹{{$checkout[0]->shippingValue ? $checkout[0]->shippingValue : 0.00}}</span></span>
                    </div>
                    <div class="row g-0 pt-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title fs-6"><strong>Total</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title fs-5 cart-subtotal text-end text-primary"><b class="money">₹{{$checkout[0]->finalAmount}}</b></span>
                    </div>
                </div>
            </div>
            <!--Cart Summary-->
        </div>
        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
            <!--Order Address-->
            <div class="block">
                <div class="block-content">
                    <div class="row g-0">
                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="shipping-details mb-4 mb-sm-0">
                                @php
                                $add = json_decode($address->address_details)
                                @endphp
                                <h3 class="title mb-3 text-white">Shipping Address</h3>
                                <p>{{$add->shipping_address}}, {{$add->shipping_pincode}},</p>
                                <p>{{$add->shipping_state}},</p>
                                <p>{{$add->shipping_country}}</p>
                                <p>{{$add->phone}}</p>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="billing-details">
                                <h3 class="title text-white mb-3">Billing Address</h3>
                                <p>{{$add->address}}, {{$add->pincode}},</p>
                                <p>{{$add->state}},</p>
                                <p>{{$add->country}}</p>
                                <p>{{$add->phone}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Order Address-->

            <!--Order Details-->
            <div class="block mt-4">
                <div class="block-content">
                    <div class="row g-0">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-232">
                            <div class="shipping-details mb-4 mb-sm-0">
                                <h3 class="title mb-3 text-white">Order details</h3>
                                <p>Transaction ID: {{$orders->transaction_id}}</p>
                                <p>Order ID: {{$_GET['order_id']}}</p>
                                <p>Order Date: {{date('d F, Y', strtotime($orders->created_at))}}</p>
                                <p>Order Total: ₹{{$checkout[0]->finalAmount}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Order Details-->

            <!--Order Delivery-->
            <div class="d-flex-wrap w-100 mt-4 text-center">
                <a href="{{url('shop')}}" class="d-inline-flex align-items-center btn btn-outline-primary me-2 mb-2 me-sm-3"><i class="me-2 icon an an-angle-left-r"></i>Continue Shopping</a>
            </div>
            <!--Order delivery-->
        </div>
    </div>
    @else
    @if($_GET['error'] ==='PENDING')
    <div class="success-text checkout-card text-center mb-4 mb-md-5">
        <i class="icon anm anm-times text-white"></i>
        <h2 class="text-white">Payment Pending</h2>
        <p class="mb-1">Payment is in Pending State. Please Try Again</p>
    </div>
    @else
    <div class="success-text checkout-card text-center mb-4 mb-md-5">
        <i class="icon anm anm-times text-white"></i>
        <h2 class="text-white">Payment Failed</h2>
        <p class="mb-1">Payment has been failed due to {{$_GET['error']}}</p>
    </div>
    @endif
    @endif
</div>

@break
@case('signup')
<div class="login-register pt-2">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
            <div class="inner h-100">
                <form class="signup-form">
                    <h2 class="text-center fs-4 mb-4 text-white">Register here if you are a new customer</h2>
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="CustomerUsername" class="d-none">Name <span class="required">*</span></label>
                            <input type="text" placeholder="Name" id="register-name" name="register-name" value="" required />
                        </div>
                        <div class="form-group col-12">
                            <label for="CustomerEmail" class="d-none">Email <span class="required">*</span></label>
                            <input type="email" placeholder="Email" id="register-email" name="register-email" value="" required />
                        </div>
                        <div class="form-group col-12">
                            <label for="CustomerPhone" class="d-none">Phone <span class="required">*</span></label>
                            <input type="tel" placeholder="Phone" id="register-phone" name="register-phone" value="" required />
                        </div>
                        <div class="form-group col-12">
                            <label for="CustomerPassword" class="d-none">Password <span class="required">*</span></label>
                            <input type="password" placeholder="Password" id="register-password" name="register-password" value="" required />
                        </div>
                        <div class="form-group col-12 mb-0">
                            <input type="submit" class="btn btn-primary btn-lg w-100" value="Register" />
                        </div>
                    </div>
                    <div class="login-signup-text mt-4 mb-2 fs-6 text-center text-muted">Already have an account? <a href="{{url('login')}}" class="btn-link text-white">Login now</a></div>
                </form>
            </div>
        </div>
    </div>
</div>
@break
@case('login')
<div class="login-register pt-2">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
            <div class="inner h-100">
                <form class="signup-form">
                    <h2 class="text-center fs-4 mb-3 text-white">Login</h2>
                    <p class="text-center mb-4">If you have an account with us, please log in.</p>
                    <div class="form-row">
                        <div class="form-group col-12">
                            <label for="CustomerEmail" class="d-none">Email <span class="required">*</span></label>
                            <input type="email" placeholder="Email" id="register-email" name="register-email" value="" required />
                        </div>
                        <div class="form-group col-12">
                            <label for="CustomerPassword" class="d-none">Password <span class="required">*</span></label>
                            <input type="password" placeholder="Password" id="register-password" name="register-password" value="" required />
                        </div>
                        <div class="form-group col-12">
                            <div class="login-remember-forgot d-flex justify-content-between align-items-center">
                                <a href="{{url('forgot-password')}}" class=text-white"">Forgot your password?</a>
                            </div>
                        </div>
                        <div class="form-group col-12 mb-0">
                            <input type="submit" class="btn btn-primary btn-lg w-100" value="Sign In" />
                        </div>
                    </div>
                    <div class="login-signup-text mt-4 mb-2 fs-6 text-center text-muted">Don't have an account? <a href="{{url('signup')}}" class="btn-link text-white">Sign up now</a></div>
                </form>
            </div>
        </div>
    </div>
</div>
@break
@case('account')
@php
$savedAddress = App\Models\SavedAddressModel::where('user_id', Auth::guard('customer')->user()->id)->get();
@endphp
<div class="container">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 mb-4 mb-lg-0">
            @if (Session::has('success'))
            <div class="alert alert-success">
                {{ Session::get('success') }}
            </div>
            @elseif(Session::has('error'))
            <div class="alert alert-danger">
                {{ Session::get('error') }}
            </div>
            @endif
        </div>
        <div class="col-12 col-sm-12 col-md-12 col-lg-3 mb-4 mb-lg-0">
            <!-- Dashboard sidebar -->
            <div class="dashboard-sidebar bg-block">
                <div class="profile-top text-center mb-4 px-3">
                    <div class="profile-image mb-3">
                        <img class="rounded-circle blur-up lazyloaded" data-src="https://cdn-icons-png.flaticon.com/512/847/847969.png" src="https://cdn-icons-png.flaticon.com/512/847/847969.png" alt="user" width="130">
                    </div>
                    <div class="profile-detail">
                        <h3 class="mb-1 text-white">{{ucwords(Auth::guard('customer')->user()->name)}}</h3>
                        <p class="text-white mb-0">{{Auth::guard('customer')->user()->email}}</p>
                        <p class="text-white">{{Auth::guard('customer')->user()->phone}}</p>
                    </div>
                </div>
                <div class="dashboard-tab">
                    <ul class="nav nav-tabs flex-lg-column border-bottom-0" id="top-tab" role="tablist">
                        <li class="nav-item"><a href="#" data-bs-toggle="tab" data-bs-target="#info" class="nav-link active">Account Info</a></li>
                        <li class="nav-item"><a href="#" data-bs-toggle="tab" data-bs-target="#address" class="nav-link">Address Book</a></li>
                        <li class="nav-item"><a href="#" data-bs-toggle="tab" data-bs-target="#orders" class="nav-link">My Orders</a></li>
                        <li class="nav-item"><a href="#" data-bs-toggle="tab" data-bs-target="#profile" class="nav-link">Profile</a></li>
                        <li class="nav-item"><a href="{{url('/logout')}}" class="nav-link">Log Out</a> </li>
                    </ul>
                </div>
            </div>
            <!-- End Dashboard sidebar -->
        </div>
        <div class="col-12 col-sm-12 col-md-12 col-lg-9">
            <div class="dashboard-content tab-content h-100" id="top-tabContent" style="">
                <!-- Account Info -->
                <div class="tab-pane fade h-100 show active" id="info">

                    <div class="account-info h-100">
                        <div class="welcome-msg mb-4">
                            <h2>Hello, <span class="text-primary">{{ucwords(Auth::guard('customer')->user()->name)}}</span></h2>
                            <p>From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.</p>
                        </div>

                        <div class="row g-3 row-cols-lg-3 row-cols-md-3 row-cols-sm-3 row-cols-1 mb-4">
                            <div class="counter-box">
                                <div class="bg-block d-flex-center flex-nowrap">
                                    <img class="blur-up lazyloaded" data-src="https://cdn-icons-png.flaticon.com/128/3502/3502601.png" src="https://cdn-icons-png.flaticon.com/128/3502/3502601.png" alt="icon">
                                    <div class="content">
                                        <h3 class="fs-5 mb-1 text-primary">{{count($orders)}}</h3>
                                        <p>Total Order</p>
                                    </div>
                                </div>
                            </div>
                            <div class="counter-box">
                                <div class="bg-block d-flex-center flex-nowrap">
                                    <img class="blur-up lazyloaded" data-src="https://cdn-icons-png.flaticon.com/128/3502/3502601.png" src="https://cdn-icons-png.flaticon.com/128/3502/3502601.png" alt="icon">
                                    <div class="content">
                                        <h3 class="fs-5 mb-1 text-primary">{{$pending}}</h3>
                                        <p>Pending Orders</p>
                                    </div>
                                </div>
                            </div>
                            <div class="counter-box">
                                <div class="bg-block d-flex-center flex-nowrap">
                                    <img class="blur-up lazyloaded" data-src="https://cdn-icons-png.flaticon.com/128/3502/3502601.png" src="https://cdn-icons-png.flaticon.com/128/3502/3502601.png" alt="icon">
                                    <div class="content">
                                        <h3 class="fs-5 mb-1 text-primary">{{$delivered}}</h3>
                                        <p>Orders Delivered</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Account Info -->

                <!-- Address Book -->
                <div class="tab-pane fade h-100" id="address">
                    <div class="address-card mt-0 h-100">
                        <div class="top-sec d-flex-justify-center justify-content-between mb-4">
                            <h2 class="mb-0">Address Book</h2>
                            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addNewModal"><i class="icon anm anm-plus-r me-1"></i> Add New</button>
                            <!-- New Address Modal -->
                            <div class="modal fade" id="addNewModal" tabindex="-1" aria-labelledby="addNewModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h2 class="modal-title" id="addEditModalLabel">Edit Address details</h2>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="edit-address-from" method="post" action="{{url('update-address')}}">
                                                <div class="form-row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1">
                                                    <div class="form-group">
                                                        @csrf
                                                        <label for="edit-name" class="">First Name</label>
                                                        <input name="shipping_fname" placeholder="First Name" value="" id="shipping_fname" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Last Name</label>
                                                        <input name="shipping_lname" placeholder="Last Name" value="" id="shipping_lname" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Phone</label>
                                                        <input name="phone" placeholder="Phone" value="" id="phone" type="tel">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Email</label>
                                                        <input name="email" placeholder="Email" value="" id="email" type="email">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Shipping Address</label>
                                                        <input name="shipping_address" placeholder="Shipping Address" value="" id="shipping_address" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Shipping State</label>
                                                        <input name="shipping_state" placeholder="Shipping State" value="" id="shipping_state" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Shipping Pincode</label>
                                                        <input name="shipping_pincode" placeholder="Shipping Pincode" value="" id="shipping_pincode" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Shipping Country</label>
                                                        <input name="shipping_country" placeholder="Shipping Country" value="" id="shipping_country" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Billing Address</label>
                                                        <input name="address" placeholder="Billing Address" value="" id="address" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Billing State</label>
                                                        <input name="state" placeholder="Billing State" value="" id="state" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Billing Pincode</label>
                                                        <input name="pincode" placeholder="Billing Pincode" value="" id="pincode" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="edit-name" class="">Billing Country</label>
                                                        <input name="country" placeholder="Billing Country" value="" id="country" type="text">
                                                    </div>
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-primary m-0"><span>Save Address</span></button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End New Address Modal -->
                        </div>

                        <div class="address-book-section">
                            <div class="row g-4 row-cols-lg-3 row-cols-md-2 row-cols-sm-2 row-cols-1">
                                @foreach($savedAddress as $a)
                                @php
                                $add = json_decode($a->address_details)
                                @endphp
                                <div class="address-select-box active">
                                    <div class="address-box bg-block">
                                        <div class="top d-flex-justify-center justify-content-between mb-3">
                                            <h5 class="m-0">{{$add->shipping_fname.' '.$add->shipping_lname}}</h5>
                                        </div>
                                        <div class="middle">
                                            <div class="address mb-2 text-muted">
                                                <address class="m-0">{!! $add->shipping_address.',<br>'.$add->shipping_pincode.',<br>'.$add->shipping_state.',<br>'.$add->shipping_country !!}</address>
                                            </div>
                                            <div class="number">
                                                <p>Mobile: <a href="tel:{{$add->phone}}">{{$add->phone}}</a></p>
                                            </div>
                                        </div>
                                        <div class="bottom d-flex-justify-center justify-content-between">
                                            <button type="button" class="bottom-btn btn btn-gray btn-sm" data-bs-toggle="modal" data-bs-target="#addEditModal{{$a->id}}">Edit</button>
                                            <a href="{{url('delete-address/'.$a->id)}}" class="bottom-btn btn btn-gray btn-sm">Remove</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal fade" id="addEditModal{{$a->id}}" tabindex="-1" aria-labelledby="addEditModalLabel{{$a->id}}" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h2 class="modal-title" id="addEditModalLabel">Edit Address details</h2>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="edit-address-from" method="post" action="{{url('update-address')}}">
                                                    <div class="form-row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1">
                                                        <div class="form-group">
                                                            @csrf
                                                            <label for="edit-name" class="">First Name</label>
                                                            <input name="shipping_fname" placeholder="First Name" value="{{$add->shipping_fname}}" id="shipping_fname" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Last Name</label>
                                                            <input name="shipping_lname" placeholder="Last Name" value="{{$add->shipping_lname}}" id="shipping_lname" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Phone</label>
                                                            <input name="phone" placeholder="Phone" value="{{$add->phone}}" id="phone" type="tel">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Email</label>
                                                            <input name="email" placeholder="Email" value="{{$add->email}}" id="email" type="email">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Shipping Address</label>
                                                            <input name="shipping_address" placeholder="Shipping Address" value="{{$add->shipping_address}}" id="shipping_address" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Shipping State</label>
                                                            <input name="shipping_state" placeholder="Shipping State" value="{{$add->shipping_state}}" id="shipping_state" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Shipping Pincode</label>
                                                            <input name="shipping_pincode" placeholder="Shipping Pincode" value="{{$add->shipping_pincode}}" id="shipping_pincode" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Shipping Country</label>
                                                            <input name="shipping_country" placeholder="Shipping Country" value="{{$add->shipping_country}}" id="shipping_country" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Billing Address</label>
                                                            <input name="address" placeholder="Billing Address" value="{{$add->address}}" id="address" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Billing State</label>
                                                            <input name="state" placeholder="Billing State" value="{{$add->state}}" id="state" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Billing Pincode</label>
                                                            <input name="pincode" placeholder="Billing Pincode" value="{{$add->pincode}}" id="pincode" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="edit-name" class="">Billing Country</label>
                                                            <input name="country" placeholder="Billing Country" value="{{$add->country}}" id="country" type="text">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="hidden" name="id" value="{{$a->id}}" />
                                                            <button type="submit" class="btn btn-primary m-0"><span>Save Address</span></button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                            </div>

                            <!-- Edit Address Modal -->

                            <!-- End Edit Address Modal -->
                        </div>
                    </div>
                </div>
                <!-- End Address Book -->

                <!-- My Orders -->
                <div class="tab-pane fade h-100" id="orders">
                    <div class="orders-card mt-0 h-100">
                        <div class="top-sec d-flex-justify-center justify-content-between mb-4">
                            <h2 class="mb-0">My Orders</h2>
                        </div>

                        <div class="table-bottom-brd table-responsive">
                            <table class="table align-middle text-center order-table">
                                <thead>
                                    <tr class="table-head text-nowrap">
                                        <th scope="col">Image</th>
                                        <th scope="col">Order Id</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">View</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($orders as $o)
                                    @php
                                    $product = json_decode($o->productCheckout);
                                    $coupon = json_decode($o->couponCheckout);
                                    @endphp

                                    <tr>
                                        <td><img class="blur-up lazyload" data-src="{{asset('/public/uploads/'.$product[0]->product_image)}}" src="{{asset('/public/uploads/'.$product[0]->product_image)}}" width="50" alt="{{$product[0]->product_title}}" title="product"></td>
                                        <td><span class="id">#{{$o->order_id}}</span></td>
                                        <td><span class="price fw-500">₹{{$o->paid_amount}}</span></td>
                                        <td>
                                            @if($o->order_status == 1)
                                            <span class="badge rounded-pill bg-primary custom-badge">Placed</span>
                                        </td>
                                        @elseif($o->order_status == 2)
                                        <span class="badge rounded-pill bg-warning custom-badge">Shipped</span></td>
                                        @elseif($o->order_status == 3)
                                        <span class="badge rounded-pill bg-success custom-badge">Delivered</span></td>
                                        @elseif($o->order_status == 4)
                                        <span class="badge rounded-pill bg-danger custom-badge">Cancelled</span></td>
                                        <p class="text text-danger">{{$o->cancelled_reason}}</p>
                                        @endif
                                        <td><a href="{{url('account/'.encrypt($o->id))}}" class="view"><i class="icon anm anm-eye btn-link fs-6"></i></a></td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- End My Orders -->
                <!-- Profile -->
                <div class="tab-pane fade h-100" id="profile">
                    <div class="profile-card mt-0 h-100">
                        <div class="top-sec d-flex-justify-center justify-content-between mb-4">
                            <h2 class="mb-0">Profile</h2>
                            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editLoginModal"><i class="icon anm anm-plus-r me-1"></i> Edit</button>
                        </div>
                        <div class="profile-login-section">
                            <div class="details d-flex align-items-center mb-2">
                                <div class="left">
                                    <h6 class="mb-0 body-font fw-500">Email address</h6>
                                </div>
                                <div class="right">
                                    <p>{{Auth::guard('customer')->user()->email}}</p>
                                </div>
                            </div>
                            <div class="details d-flex align-items-center mb-2">
                                <div class="left">
                                    <h6 class="mb-0 body-font fw-500">Phone number</h6>
                                </div>
                                <div class="right">
                                    <p>{{Auth::guard('customer')->user()->phone}}</p>
                                </div>
                            </div>
                            <div class="details d-flex align-items-center mb-2">
                                <div class="left">
                                    <h6 class="mb-0 body-font fw-500">Password</h6>
                                </div>
                                <div class="right">
                                    <p>xxxxxxx</p>
                                </div>
                            </div>
                        </div>
                        <!-- Edit Login details Modal -->
                        <div class="modal fade" id="editLoginModal" tabindex="-1" aria-labelledby="editLoginModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h2 class="modal-title" id="editLoginModalLabel">Edit Login details</h2>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="edit-Loginprofile-from" method="post" action="{{url('update-profile')}}">
                                            <div class="form-row row-cols-lg-1 row-cols-md-1 row-cols-sm-1 row-cols-1">
                                                <div class="form-group">
                                                    <label for="editLogin-Emailaddress" class="d-none">Email address <span class="required">*</span></label>
                                                    <input name="email" value="{{Auth::guard('customer')->user()->email}}" placeholder="Email address" value="" id="editLogin-Emailaddress" type="email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="editLogin-Phonenumber" class="d-none">Phone number <span class="required">*</span></label>
                                                    <input name="phone" placeholder="Phone number" value="{{Auth::guard('customer')->user()->phone}}" id="editLogin-Phonenumber" type="text">
                                                </div>
                                                <div class="form-group">
                                                    <label for="editLogin-Password" class="d-none">Current Password <span class="required">*</span></label>
                                                    <input name="old_password" placeholder="Current Password" value="" id="editLogin-Password" type="password">
                                                </div>
                                                <div class="form-group">
                                                    <label for="editLogin-NewPassword" class="d-none">New Password <span class="required">*</span></label>
                                                    <input name="new_password" placeholder="New Password" value="" id="editLogin-NewPassword" type="password">
                                                    <small class="form-text text-muted">Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters.</small>
                                                </div>
                                                <div class="form-group">
                                                    @csrf
                                                    <input type="hidden" name="user_id" value="{{Auth::guard('customer')->user()->id}}" />
                                                    <button type="submit" class="btn btn-primary m-0"><span>Save changes</span></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Edit Login details Modal -->
                    </div>
                </div>
                <!-- End Profile -->
            </div>
        </div>
    </div>
</div>
@break
@case('forgot-password')
<div class="container">
    <div class="login-register">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                <div class="inner h-100">
                    <form class="customer-form reset-password-form">
                        <h2 class="text-center fs-4 mb-3">Forgot Password</h2>
                        <p class="text-center mb-4">Please enter your email address below. You will receive a link to reset your password.</p>
                        <div class="form-row">
                            <div class="form-group col-12 mb-4">
                                <label for="CustomerEmail" class="d-none">Enter your email <span class="required">*</span></label>
                                <input type="email" id="reset-email" name="reset-email" placeholder="Enter your email" value="" required="" fdprocessedid="urc9xg">
                            </div>
                            <div class="form-group col-12 mb-0">
                                <div class="login-remember-forgot d-flex justify-content-between align-items-center">
                                    <input type="submit" class="btn btn-primary btn-lg" value="Reset Password" fdprocessedid="wl3j3m">
                                    <a href="{{url('/login')}}" class="d-flex-justify-center btn-link"><i class="icon anm anm-angle-left-r me-2"></i> Back to Login</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@break
@case('create-password')
<div class="container reset-password-container">
    <div class="row">
        <div class="col-lg-6 offset-lg-3">
            <div class="feature-box border-top-primary">
                <div class="feature-box-content" style="border: 2px solid #00000059;border-radius: 5px;padding: 20px; margin: 20px 0px;">
                    <form class="mb-0 create-password-form">
                        <div class="form-group mb-0">
                            <label for="new-password" class="font-weight-normal">New Password </label>
                            <input type="password" class="form-control" id="new-password" name="new-password" placeholder="New Password" required="">
                        </div>
                        <div class="form-group mb-0">
                            <label for="confirm-password" class="font-weight-normal">Confirm Password </label>
                            <input type="text" class="form-control" id="confirm-password" name="confirm-password" placeholder="Confirm Password" required="">
                            <input type="hidden" name="hash" id="hash" value="{{$_GET['h']}}" />
                        </div>
                        <br>
                        <div class="form-footer mb-0">
                            <button type="submit" class="theme-btn style-one">
                                Create Password
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@break
@default
<div class="container pageCont">
    <div class="row">
        <!--Products-->
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
            {!! $page->description !!}
        </div>
    </div>
</div>
@endswitch
@endsection