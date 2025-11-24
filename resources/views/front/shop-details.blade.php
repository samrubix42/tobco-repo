@extends('front.layout')
@push('meta_tags')
<title>{{ $page?->meta_title }}</title>
<meta name="keywords" content="{{ $page?->meta_keyword }}">
<meta name="description" content="{{ $page?->meta_description }}">
@endpush
@section('content')
<!--Main Content-->
<div class="container">
    <!--Product Content-->
    <div class="product-single pt-5">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-12 product-layout-img mb-4 mb-md-0">
                <!-- Product Horizontal -->
                <div class="product-details-img product-horizontal-style">
                    <!-- Product Main -->
                    <div class="zoompro-wrap">
                        <!-- Product Image -->
                        <div class="zoompro-span"><img id="zoompro" class="zoompro" src="{{asset('public/uploads/'.$variant->image)}}" data-zoom-image="{{asset('public/uploads/'.$variant->image)}}" alt="{{$page->title}}" width="625" height="808" /></div>
                        <!-- End Product Image -->
                        <!-- Product Label -->
                        <div class="product-labels"><span class="lbl pr-label1">New</span><span class="lbl on-sale">Sale</span></div>
                        <!-- End Product Label -->
                        <!-- Product Buttons -->
                        <div class="product-buttons">
                            <a href="#productVideo-modal" class="btn btn-primary popup-video" data-bs-toggle="modal" data-bs-target="#productVideo_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Watch Video" aria-label="Watch Video"><i class="icon anm anm-video-r"></i></span>
                            </a>
                            <a href="#;" class="btn btn-primary prlightbox" data-bs-toggle="tooltip" data-bs-placement="top" title="Zoom Image"><i class="icon anm anm-expand-l-arrows"></i></a>
                        </div>
                        <!-- End Product Buttons -->
                    </div>
                    <!-- End Product Main -->

                    <!-- Product Thumb -->
                    <div class="product-thumb product-horizontal-thumb mt-3">
                        <div id="gallery" class="product-thumb-horizontal">
                            <a data-image="{{asset('public/uploads/'.$variant->image)}}" data-zoom-image="{{asset('public/uploads/'.$variant->image)}}" class="slick-slide slick-cloned active">
                                <img class="blur-up lazyload" data-src="{{asset('public/uploads/'.$variant->image)}}" src="{{asset('public/uploads/'.$variant->image)}}" alt="{{$page->title}}" width="625" height="808" />
                            </a>
                            @foreach($product_image as $pimg)
                            <a data-image="{{asset('public/uploads/'.$pimg->other_image)}}" data-zoom-image="{{asset('public/uploads/'.$pimg->other_image)}}" class="slick-slide slick-cloned active">
                                <img class="blur-up lazyload" data-src="{{asset('public/uploads/'.$pimg->other_image)}}" src="{{asset('public/uploads/'.$pimg->other_image)}}" alt="{{$page->title}}" width="625" height="808" />
                            </a>
                            @endforeach
                        </div>
                    </div>
                    <!-- End Product Thumb -->

                    <!-- Product Gallery -->
                    <div class="lightboximages">
                        @foreach($product_image as $pimg)
                        <a href="{{asset('public/uploads/'.$pimg->other_image)}}" data-size="1000x1280"></a>
                        @endforeach
                    </div>
                    <!-- End Product Gallery -->
                </div>
                <!-- End Product Horizontal -->
            </div>

            <div class="col-lg-6 col-md-6 col-sm-12 col-12 product-layout-info">
                <!-- Product Details -->
                <div class="product-single-meta">
                    <h2 class="product-main-title">{{$page->title}}</h2>
                    <!-- Product Reviews -->
                    <!--<div class="product-review d-flex-center mb-3">-->
                    <!--    <div class="reviewStar d-flex-center"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><span class="caption ms-2">0 Reviews</span></div>-->
                    <!--    <a class="reviewLink d-flex-center text-white" href="#reviews">Write a Review</a>-->
                    <!--</div>-->
                    <!-- End Product Reviews -->
                    <!-- Product Info -->
                    <div class="product-info">
                        <p class="product-stock d-flex">Availability:
                            <span class="pro-stockLbl ps-0">
                                <span class="d-flex-center stockLbl instock text-uppercase">{{ $inventory == 0 ? 'Out of Stock' : ($page->inventory == 1 ? 'In Stock' : 'Out of Stock') }}</span>
                            </span>
                        </p>
                        <p class="product-type">Product Type:<span class="text">{{$page->ctitle}}</span></p>
                        <p class="product-sku">SKU:<span class="text">{{$page->sku}}</span></p>
                    </div>
                    <!-- End Product Info -->
                    <!-- Product Price -->
                    <div class="product-price d-flex-center my-3">
                        <span class="price old-price">₹{{number_format($variant->reg_price, 2)}}</span><span class="price">₹{{number_format($variant->sale_price, 2)}}</span>
                    </div>
                    <!-- End Product Price -->
                    <hr>
                    <!-- Sort Description -->
                    <div class="sort-description">{!! $page->short_description !!}</div>
                    <!-- End Sort Description -->

                </div>
                <!-- End Product Details -->

                <!-- Product Form -->
                <form method="post" action="#" class="product-form product-form-border hidedropdown">
                    <!-- Swatches -->
                    <div class="product-swatches-option">
                        <!-- Swatches Size -->
                        <div class="product-item swatches-size w-100 mb-4 swatch-1 option2" data-option-index="1">
                            <!--<label class="label d-flex align-items-center">Size:<span class="slVariant ms-1 fw-bold">L</span></label>-->
                            <ul class="variants-size size-swatches d-flex-center pt-1 clearfix">
                                @foreach($variants as $v)
                                <li class="swatch x-large available {{$variant->product_variant === $v->product_variant ? 'selected' : ''}}"><a href="{{url('shop/'.$page->slug.'?t='.Crypt::encrypt($v->product_variant))}}" class="swatchLbl" data-bs-toggle="tooltip" data-bs-placement="top" title="{{$v->product_variant}}">{{$v->product_variant}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                        <!-- End Swatches Size -->
                    </div>
                    <!-- End Swatches -->

                    <!-- Product Action -->
                    <div class="product-action w-100 d-flex-wrap my-3 my-md-4">
                        <!-- Product Quantity -->
                        <div class="product-form-quantity d-flex-center">
                            <div class="qtyField">
                                <a class="qtyBtn minus" href="#;"><i class="icon anm anm-minus-r"></i></a>
                                <input type="text" name="quantity" value="1" min="0" max="{{$inventory}}" class="product-form-input qty" id="productQty" />
                                <a class="qtyBtn plus" href="#;"><i class="icon anm anm-plus-r"></i></a>
                            </div>
                        </div>
                        <!-- End Product Quantity -->
                        <!-- Product Add -->
                        <div class="product-form-submit addcart fl-1 ms-3">
                            @if($inventory === 0)
                            <a href="javascript:void(0)" class="btn btn-secondary product-form-cart-submit">
                                <span><i class="fab fa-cart"></i> Out of Stock</span>
                            </a>
                            @else
                            <a href="javascript:void(0)" id="addToCart" class="btn btn-secondary product-form-cart-submit">
                                <span><i class="fab fa-cart"></i> Add To Cart</span>
                            </a>
                            @endif
                            <!--<button type="submit" name="add" class="btn btn-secondary product-form-sold-out d-none" disabled="disabled">-->
                            <!--    <span>Out of stock</span>-->
                            <!--</button>-->
                            <!--<button type="submit" name="add" class="btn btn-secondary product-form-pre-order d-none">-->
                            <!--    <span>Pre-order Now</span>-->
                            <!--</button>-->
                        </div>
                        <!-- Product Add -->
                        <!-- Product Buy -->

                        <!-- End Product Buy -->
                    </div>
                    <!-- End Product Action -->

                    <!-- Product Info link -->

                    <!-- End Product Info link -->
                </form>
                <!-- End Product Form -->

                <!-- Product Info -->
                <!-- End Product Info -->

                <!-- Social Sharing -->
                <div class="social-sharing d-flex-center mt-2 lh-lg">
                    <span class="sharing-lbl fw-600">Share :</span>
                    <a href="#" class="d-flex-center btn btn-link btn--share share-facebook"><i class="icon anm anm-facebook-f"></i><span class="share-title">Facebook</span></a>
                    <a href="#" class="d-flex-center btn btn-link btn--share share-twitter"><i class="icon anm anm-twitter"></i><span class="share-title">Tweet</span></a>
                    <a href="#" class="d-flex-center btn btn-link btn--share share-pinterest"><i class="icon anm anm-pinterest-p"></i> <span class="share-title">Pin it</span></a>
                    <a href="#" class="d-flex-center btn btn-link btn--share share-linkedin"><i class="icon anm anm-linkedin-in"></i><span class="share-title">Linkedin</span></a>
                    <a href="#" class="d-flex-center btn btn-link btn--share share-email"><i class="icon anm anm-envelope-l"></i><span class="share-title">Email</span></a>
                </div>
                <!-- End Social Sharing -->
            </div>
        </div>
    </div>
    <!--Product Tabs-->
    <div class="tabs-listing section pb-0">
        <ul class="product-tabs style2 list-unstyled d-flex-wrap d-flex-justify-center d-none d-md-flex">
            <li rel="description" class="active"><a class="tablink">Description</a></li>
            <li rel="additionalInformation"><a class="tablink">Additional Information</a></li>
            <!--<li rel="shipping-return"><a class="tablink">Shipping &amp; Return</a></li>-->
            <!--<li rel="reviews"><a class="tablink">Reviews</a></li>-->
        </ul>

        <div class="tab-container">
            <!--Description-->
            <h3 class="tabs-ac-style d-md-none active" rel="description">Description</h3>
            <div id="description" class="tab-content">
                <div class="product-description">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            {!! $page->description !!}
                        </div>
                    </div>
                </div>
            </div>
            <!--End Description-->

            <!--Additional Information-->
            <h3 class="tabs-ac-style d-md-none" rel="additionalInformation">Additional Information</h3>
            <div id="additionalInformation" class="tab-content">
                <div class="product-description">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 mb-4 mb-md-0">
                            {!! $page->additional_info !!}
                        </div>
                    </div>
                </div>
            </div>
            <!--End Additional Information-->
            <!--Shipping &amp; Return-->
            <!--<h3 class="tabs-ac-style d-md-none" rel="shipping-return">Shipping &amp; Return</h3>-->
            <!--<div id="shipping-return" class="tab-content">-->
            <!--    <h4>Shipping &amp; Return</h4>-->
            <!--    <ul class="checkmark-info">-->
            <!--        <li>Dispatch: Within 24 Hours</li>-->
            <!--        <li>1 Year Brand Warranty</li>-->
            <!--        <li>Free shipping across all products on a minimum purchase of ₹50.</li>-->
            <!--        <li>International delivery time - 7-10 business days</li>-->
            <!--        <li>Cash on delivery might be available</li>-->
            <!--        <li>Easy 30 days returns and exchanges</li>-->
            <!--    </ul>-->
            <!--    <h4>Free and Easy Returns</h4>-->
            <!--    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>-->
            <!--    <h4>Special Financing</h4>-->
            <!--    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage.</p>-->
            <!--</div>-->
            <!--End Shipping &amp; Return-->
            <!--Review-->
            <!--<h3 class="tabs-ac-style d-md-none" rel="reviews">Review</h3>-->
            <!--<div id="reviews" class="tab-content">-->
            <!--    <div class="row">-->
            <!--        <div class="col-12 col-sm-12 col-md-12 col-lg-6 mb-4">-->
            <!--            <div class="ratings-main">-->
            <!--                <div class="avg-rating d-flex-center mb-3">-->
            <!--                    <h4 class="avg-mark">5.0</h4>-->
            <!--                    <div class="avg-content ms-3">-->
            <!--                        <p class="text-rating">Average Rating</p>-->
            <!--                        <div class="ratings-full product-review">-->
            <!--                            <a class="reviewLink d-flex-center" href="#reviews"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><span class="caption ms-2">24 Ratings</span></a>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->

            <!--                <div class="ratings-list">-->
            <!--                    <div class="ratings-container d-flex align-items-center mt-1">-->
            <!--                        <div class="ratings-full product-review m-0">-->
            <!--                            <a class="reviewLink d-flex align-items-center" href="#reviews"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i></a>-->
            <!--                        </div>-->
            <!--                        <div class="progress"><div class="progress-bar" role="progressbar" aria-valuenow="99" aria-valuemin="0" aria-valuemax="100" style="width:99%;"></div></div>-->
            <!--                        <div class="progress-value">99%</div>-->
            <!--                    </div>-->
            <!--                    <div class="ratings-container d-flex align-items-center mt-1">-->
            <!--                        <div class="ratings-full product-review m-0">-->
            <!--                            <a class="reviewLink d-flex align-items-center" href="#reviews"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i></a>-->
            <!--                        </div>-->
            <!--                        <div class="progress"><div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width:75%;"></div></div>-->
            <!--                        <div class="progress-value">75%</div>-->
            <!--                    </div>-->
            <!--                    <div class="ratings-container d-flex align-items-center mt-1">-->
            <!--                        <div class="ratings-full product-review m-0">-->
            <!--                            <a class="reviewLink d-flex align-items-center" href="#reviews"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i></a>-->
            <!--                        </div>-->
            <!--                        <div class="progress"><div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%;"></div></div>-->
            <!--                        <div class="progress-value">50%</div>-->
            <!--                    </div>-->
            <!--                    <div class="ratings-container d-flex align-items-center mt-1">-->
            <!--                        <div class="ratings-full product-review m-0">-->
            <!--                            <a class="reviewLink d-flex align-items-center" href="#reviews"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i></a>-->
            <!--                        </div>-->
            <!--                        <div class="progress"><div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width:25%;"></div></div>-->
            <!--                        <div class="progress-value">25%</div>-->
            <!--                    </div>-->
            <!--                    <div class="ratings-container d-flex align-items-center mt-1">-->
            <!--                        <div class="ratings-full product-review m-0">-->
            <!--                            <a class="reviewLink d-flex align-items-center" href="#reviews"><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i></a>-->
            <!--                        </div>-->
            <!--                        <div class="progress"><div class="progress-bar" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width:5%;"></div></div>-->
            <!--                        <div class="progress-value">05%</div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <!--            <hr />-->
            <!--            <div class="spr-reviews">-->
            <!--                <h3 class="spr-form-title">Customer Reviews</h3>-->
            <!--                <div class="review-inner">-->
            <!--                    <div class="spr-review d-flex w-100">-->
            <!--                        <div class="spr-review-profile flex-shrink-0">-->
            <!--                            <img class="blur-up lazyload" data-src="assets/images/users/user-img1.jpg" src="assets/images/users/user-img1.jpg" alt="" width="200" height="200" />-->
            <!--                        </div>-->
            <!--                        <div class="spr-review-content flex-grow-1">-->
            <!--                            <div class="d-flex justify-content-between flex-column mb-2">-->
            <!--                                <div class="title-review d-flex align-items-center justify-content-between">-->
            <!--                                    <h5 class="spr-review-header-title text-transform-none mb-0">Eleanor Pena</h5>-->
            <!--                                    <span class="product-review spr-starratings m-0"><span class="reviewLink"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i></span></span>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                            <b class="head-font">Good and High quality</b>-->
            <!--                            <p class="spr-review-body">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                    <div class="spr-review d-flex w-100">-->
            <!--                        <div class="spr-review-profile flex-shrink-0">-->
            <!--                            <img class="blur-up lazyload" data-src="assets/images/users/user-img1.jpg" src="assets/images/users/user-img1.jpg" alt="" width="200" height="200" />-->
            <!--                        </div>-->
            <!--                        <div class="spr-review-content flex-grow-1">-->
            <!--                            <div class="d-flex justify-content-between flex-column mb-2">-->
            <!--                                <div class="title-review d-flex align-items-center justify-content-between">-->
            <!--                                    <h5 class="spr-review-header-title text-transform-none mb-0">Courtney Henry</h5>-->
            <!--                                    <span class="product-review spr-starratings m-0"><span class="reviewLink"><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i></span></span>-->
            <!--                                </div>-->
            <!--                            </div>-->
            <!--                            <b class="head-font">Feature Availability</b>-->
            <!--                            <p class="spr-review-body">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33</p>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <!--        </div>-->

            <!--        <div class="col-12 col-sm-12 col-md-12 col-lg-6 mb-4">-->
            <!--            <form method="post" action="#" class="product-review-form new-review-form">-->
            <!--                <h3 class="spr-form-title">Write a Review</h3>-->
            <!--                <p>Your email address will not be published. Required fields are marked *</p>-->
            <!--                <fieldset class="row spr-form-contact">-->
            <!--                    <div class="col-sm-6 spr-form-contact-name form-group">-->
            <!--                        <label class="spr-form-label" for="nickname">Name <span class="required">*</span></label>-->
            <!--                        <input class="spr-form-input spr-form-input-text" id="nickname" type="text" name="name" required />-->
            <!--                    </div>-->
            <!--                    <div class="col-sm-6 spr-form-contact-email form-group">-->
            <!--                        <label class="spr-form-label" for="email">Email <span class="required">*</span></label>-->
            <!--                        <input class="spr-form-input spr-form-input-email " id="email" type="email" name="email" required />-->
            <!--                    </div>-->
            <!--                    <div class="col-sm-6 spr-form-review-title form-group">-->
            <!--                        <label class="spr-form-label" for="review">Review Title </label>-->
            <!--                        <input class="spr-form-input spr-form-input-text " id="review" type="text" name="review" />-->
            <!--                    </div>-->
            <!--                    <div class="col-sm-6 spr-form-review-rating form-group">-->
            <!--                        <label class="spr-form-label">Rating</label>-->
            <!--                        <div class="product-review pt-1">-->
            <!--                            <div class="review-rating">-->
            <!--                                <a href="#;"><i class="icon anm anm-star-o"></i></a><a href="#;"><i class="icon anm anm-star-o"></i></a><a href="#;"><i class="icon anm anm-star-o"></i></a><a href="#;"><i class="icon anm anm-star-o"></i></a><a href="#;"><i class="icon anm anm-star-o"></i></a>-->
            <!--                            </div>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                    <div class="col-12 spr-form-review-body form-group">-->
            <!--                        <label class="spr-form-label" for="message">Body of Review <span class="spr-form-review-body-charactersremaining">(1500) characters remaining</span></label>-->
            <!--                        <div class="spr-form-input">-->
            <!--                            <textarea class="spr-form-input spr-form-input-textarea" id="message" name="message" rows="3"></textarea>-->
            <!--                        </div>-->
            <!--                    </div>-->
            <!--                </fieldset>-->
            <!--                <div class="spr-form-actions clearfix">-->
            <!--                    <input type="submit" class="btn btn-primary spr-button spr-button-primary" value="Submit Review" />-->
            <!--                </div>-->
            <!--            </form>-->
            <!--        </div>-->
            <!--    </div>-->
            <!--</div>-->
            <!--End Review-->
        </div>
    </div>
    <!--End Product Tabs-->
</div>
<!--End Main Content-->

<!--Related Products-->
<section class="section product-slider pb-0 d-none">
    <div class="container">
        <div class="section-header">
            <p class="mb-1 mt-0">Discover Similar</p>
            <h2>Related Products</h2>
        </div>

        <!--Product Grid-->
        <div class="product-slider-4items gp10 arwOut5 grid-products">
            <div class="item col-item">
                <div class="product-box">
                    <!-- Start Product Image -->
                    <div class="product-image">
                        <!-- Start Product Image -->
                        <a href="product-layout1.html" class="product-img"><img class="blur-up lazyload" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" /></a>
                        <!-- End Product Image -->
                        <!-- Product label -->
                        <div class="product-labels"><span class="lbl on-sale">Sale</span></div>
                        <!-- End Product label -->
                        <!--Product Button-->
                        <div class="button-set style1">
                            <!--Cart Button-->
                            <a href="#quickshop-modal" class="btn-icon addtocart quick-shop-modal" data-bs-toggle="modal" data-bs-target="#quickshop_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Quick Shop"><i class="icon anm anm-cart-l"></i><span class="text">Quick Shop</span></span>
                            </a>
                            <!--End Cart Button-->
                            <!--Quick View Button-->
                            <a href="#quickview-modal" class="btn-icon quickview quick-view-modal" data-bs-toggle="modal" data-bs-target="#quickview_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Quick View"><i class="icon anm anm-search-plus-l"></i><span class="text">Quick View</span></span>
                            </a>
                            <!--End Quick View Button-->
                            <!--Wishlist Button-->
                            <a href="wishlist-style2.html" class="btn-icon wishlist" data-bs-toggle="tooltip" data-bs-placement="left" title="Add To Wishlist"><i class="icon anm anm-heart-l"></i><span class="text">Add To Wishlist</span></a>
                            <!--End Wishlist Button-->
                            <!--Compare Button-->
                            <a href="compare-style2.html" class="btn-icon compare" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Compare"><i class="icon anm anm-random-r"></i><span class="text">Add to Compare</span></a>
                            <!--End Compare Button-->
                        </div>
                        <!--End Product Button-->
                    </div>
                    <!-- End Product Image -->
                    <!-- Start Product Details -->
                    <div class="product-details text-left">
                        <!-- Product Name -->
                        <div class="product-name">
                            <a href="product-layout1.html">Oxford Cuban Shirt</a>
                        </div>
                        <!-- End Product Name -->
                        <!-- Product Price -->
                        <div class="product-price">
                            <span class="price old-price">₹114.00</span><span class="price">₹99.00</span>
                        </div>
                        <!-- End Product Price -->
                        <!-- Product Review -->
                        <div class="product-review">
                            <i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i>
                            <span class="caption hidden ms-1">3 Reviews</span>
                        </div>
                        <!-- End Product Review -->
                    </div>
                    <!-- End product details -->
                </div>
            </div>
            <div class="item col-item">
                <div class="product-box">
                    <!-- Start Product Image -->
                    <div class="product-image">
                        <!-- Start Product Image -->
                        <a href="product-layout1.html" class="product-img">
                            <!-- Image -->
                            <img class="primary blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Image -->
                            <!-- Hover Image -->
                            <img class="hover blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Hover Image -->
                        </a>
                        <!-- End Product Image -->
                        <!--Product Button-->
                        <div class="button-set style1">
                            <!--Cart Button-->
                            <a href="#quickshop-modal" class="btn-icon addtocart quick-shop-modal" data-bs-toggle="modal" data-bs-target="#quickshop_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Select Options"><i class="icon anm anm-cart-l"></i><span class="text">Select Options</span></span>
                            </a>
                            <!--End Cart Button-->
                            <!--Quick View Button-->
                            <a href="#quickview-modal" class="btn-icon quickview quick-view-modal" data-bs-toggle="modal" data-bs-target="#quickview_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Quick View"><i class="icon anm anm-search-plus-l"></i><span class="text">Quick View</span></span>
                            </a>
                            <!--End Quick View Button-->
                            <!--Wishlist Button-->
                            <a href="wishlist-style2.html" class="btn-icon wishlist" data-bs-toggle="tooltip" data-bs-placement="left" title="Add To Wishlist"><i class="icon anm anm-heart-l"></i><span class="text">Add To Wishlist</span></a>
                            <!--End Wishlist Button-->
                            <!--Compare Button-->
                            <a href="compare-style2.html" class="btn-icon compare" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Compare"><i class="icon anm anm-random-r"></i><span class="text">Add to Compare</span></a>
                            <!--End Compare Button-->
                        </div>
                        <!--End Product Button-->
                    </div>
                    <!-- End Product Image -->
                    <!-- Start Product Details -->
                    <div class="product-details text-left">
                        <!-- Product Name -->
                        <div class="product-name">
                            <a href="product-layout1.html">Cuff Beanie Cap</a>
                        </div>
                        <!-- End Product Name -->
                        <!-- Product Price -->
                        <div class="product-price">
                            <span class="price">₹128.00</span>
                        </div>
                        <!-- End Product Price -->
                        <!-- Product Review -->
                        <div class="product-review">
                            <i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star"></i>
                            <span class="caption hidden ms-1">8 Reviews</span>
                        </div>
                        <!-- End Product Review -->
                    </div>
                    <!-- End product details -->
                </div>
            </div>
            <div class="item col-item">
                <div class="product-box">
                    <!-- Start Product Image -->
                    <div class="product-image">
                        <!-- Start Product Image -->
                        <a href="product-layout1.html" class="product-img">
                            <!-- Image -->
                            <img class="primary blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Image -->
                            <!-- Hover Image -->
                            <img class="hover blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Hover Image -->
                        </a>
                        <!-- End Product Image -->
                        <!-- Product label -->
                        <div class="product-labels"><span class="lbl pr-label3">Trending</span></div>
                        <!-- End Product label -->
                        <!--Product Button-->
                        <div class="button-set style1">
                            <!--Cart Button-->
                            <a href="#addtocart-modal" class="btn-icon addtocart add-to-cart-modal" data-bs-toggle="modal" data-bs-target="#addtocart_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Cart"><i class="icon anm anm-cart-l"></i><span class="text">Add to Cart</span></span>
                            </a>
                            <!--<a href="#addtocart-modal" class="btn-icon addtocart add-to-cart-modal" data-bs-toggle="modal" data-bs-target="#addtocart_modal">-->
                            <!--    <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Cart"><i class="icon anm anm-cart-l"></i><span class="text">Add to Cart</span></span>-->
                            <!--</a>-->
                            <!--End Cart Button-->
                            <!--Quick View Button-->
                            <a href="#quickview-modal" class="btn-icon quickview quick-view-modal" data-bs-toggle="modal" data-bs-target="#quickview_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Quick View"><i class="icon anm anm-search-plus-l"></i><span class="text">Quick View</span></span>
                            </a>
                            <!--End Quick View Button-->
                            <!--Wishlist Button-->
                            <a href="wishlist-style2.html" class="btn-icon wishlist" data-bs-toggle="tooltip" data-bs-placement="left" title="Add To Wishlist"><i class="icon anm anm-heart-l"></i><span class="text">Add To Wishlist</span></a>
                            <!--End Wishlist Button-->
                            <!--Compare Button-->
                            <a href="compare-style2.html" class="btn-icon compare" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Compare"><i class="icon anm anm-random-r"></i><span class="text">Add to Compare</span></a>
                            <!--End Compare Button-->
                        </div>
                        <!--End Product Button-->
                    </div>
                    <!-- End Product Image -->
                    <!-- Start Product Details -->
                    <div class="product-details text-left">
                        <!-- Product Name -->
                        <div class="product-name">
                            <a href="product-layout1.html">Flannel Collar Shirt</a>
                        </div>
                        <!-- End Product Name -->
                        <!-- Product Price -->
                        <div class="product-price">
                            <span class="price">₹99.00</span>
                        </div>
                        <!-- End Product Price -->
                        <!-- Product Review -->
                        <div class="product-review">
                            <i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i>
                            <span class="caption hidden ms-1">10 Reviews</span>
                        </div>
                        <!-- End Product Review -->
                    </div>
                    <!-- End product details -->
                </div>
            </div>
            <div class="item col-item">
                <div class="product-box">
                    <!-- Start Product Image -->
                    <div class="product-image">
                        <!-- Start Product Image -->
                        <a href="product-layout1.html" class="product-img">
                            <!-- Image -->
                            <img class="primary blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Image -->
                            <!-- Hover Image -->
                            <img class="hover blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Hover Image -->
                        </a>
                        <!-- End Product Image -->
                        <!--Product Button-->
                        <div class="button-set style1">
                            <!--Cart Button-->
                            <a href="#addtocart-modal" class="btn-icon addtocart add-to-cart-modal" data-bs-toggle="modal" data-bs-target="#addtocart_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Cart"><i class="icon anm anm-cart-l"></i><span class="text">Add to Cart</span></span>
                            </a>
                            <!--End Cart Button-->
                            <!--Quick View Button-->
                            <a href="#quickview-modal" class="btn-icon quickview quick-view-modal" data-bs-toggle="modal" data-bs-target="#quickview_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Quick View"><i class="icon anm anm-search-plus-l"></i><span class="text">Quick View</span></span>
                            </a>
                            <!--End Quick View Button-->
                            <!--Wishlist Button-->
                            <a href="wishlist-style2.html" class="btn-icon wishlist" data-bs-toggle="tooltip" data-bs-placement="left" title="Add To Wishlist"><i class="icon anm anm-heart-l"></i><span class="text">Add To Wishlist</span></a>
                            <!--End Wishlist Button-->
                            <!--Compare Button-->
                            <a href="compare-style2.html" class="btn-icon compare" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Compare"><i class="icon anm anm-random-r"></i><span class="text">Add to Compare</span></a>
                            <!--End Compare Button-->
                        </div>
                        <!--End Product Button-->
                    </div>
                    <!-- End Product Image -->
                    <!-- Start Product Details -->
                    <div class="product-details text-left">
                        <!-- Product Name -->
                        <div class="product-name">
                            <a href="product-layout1.html">Cotton Hooded Hoodie</a>
                        </div>
                        <!-- End Product Name -->
                        <!-- Product Price -->
                        <div class="product-price">
                            <span class="price old-price">₹198.00</span><span class="price">₹99.00</span>
                        </div>
                        <!-- End Product Price -->
                        <!-- Product Review -->
                        <div class="product-review">
                            <i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i>
                            <span class="caption hidden ms-1">0 Reviews</span>
                        </div>
                        <!-- End Product Review -->
                    </div>
                    <!-- End product details -->
                </div>
            </div>
            <div class="item col-item">
                <div class="product-box">
                    <!-- Start Product Image -->
                    <div class="product-image">
                        <!-- Start Product Image -->
                        <a href="product-layout1.html" class="product-img">
                            <!-- Image -->
                            <img class="primary blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Image -->
                            <!-- Hover Image -->
                            <img class="hover blur-up lazyload" data-src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" src="https://img.freepik.com/free-photo/close-up-hookah-vaping_23-2149297150.jpg?uid=P88140112&ga=GA1.1.2049577187.1661448709&semt=ais_items_boosted&w=740" alt="Product" title="Product" width="625" height="808" />
                            <!-- End Hover Image -->
                        </a>
                        <!-- End Product Image -->
                        <!-- Product label -->
                        <div class="product-labels"><span class="lbl pr-label2">Hot</span></div>
                        <!-- End Product label -->
                        <!--Product Button-->
                        <div class="button-set style1">
                            <!--Cart Button-->
                            <a href="#addtocart-modal" class="btn-icon addtocart add-to-cart-modal" data-bs-toggle="modal" data-bs-target="#addtocart_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Cart"><i class="icon anm anm-cart-l"></i><span class="text">Add to Cart</span></span>
                            </a>
                            <!--End Cart Button-->
                            <!--Quick View Button-->
                            <a href="#quickview-modal" class="btn-icon quickview quick-view-modal" data-bs-toggle="modal" data-bs-target="#quickview_modal">
                                <span class="icon-wrap d-flex-justify-center h-100 w-100" data-bs-toggle="tooltip" data-bs-placement="left" title="Quick View"><i class="icon anm anm-search-plus-l"></i><span class="text">Quick View</span></span>
                            </a>
                            <!--End Quick View Button-->
                            <!--Wishlist Button-->
                            <a href="wishlist-style2.html" class="btn-icon wishlist" data-bs-toggle="tooltip" data-bs-placement="left" title="Add To Wishlist"><i class="icon anm anm-heart-l"></i><span class="text">Add To Wishlist</span></a>
                            <!--End Wishlist Button-->
                            <!--Compare Button-->
                            <a href="compare-style2.html" class="btn-icon compare" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Compare"><i class="icon anm anm-random-r"></i><span class="text">Add to Compare</span></a>
                            <!--End Compare Button-->
                        </div>
                        <!--End Product Button-->
                    </div>
                    <!-- End Product Image -->
                    <!-- Start Product Details -->
                    <div class="product-details text-left">
                        <!-- Product Name -->
                        <div class="product-name">
                            <a href="product-layout1.html">Hooded Neck Hoodies</a>
                        </div>
                        <!-- End Product Name -->
                        <!-- Product Price -->
                        <div class="product-price">
                            <span class="price">₹39.00</span>
                        </div>
                        <!-- End Product Price -->
                        <!-- Product Review -->
                        <div class="product-review">
                            <i class="icon anm anm-star"></i><i class="icon anm anm-star"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i><i class="icon anm anm-star-o"></i>
                            <span class="caption hidden ms-1">3 Reviews</span>
                        </div>
                        <!-- End Product Review -->
                    </div>
                    <!-- End product details -->
                </div>
            </div>
        </div>
        <!--End Product Grid-->
    </div>
</section>
<script>
    $('.qtyBtn').click(function() {
        // let $container = $(this).closest('.product'); // or a shared parent
        let $qtyInput = $('#productQty');

        let qty = parseInt($qtyInput.val()) || 0;
        let maxQty = parseInt($qtyInput.attr('max')) || 1;
        if (qty < 1) {
            alert('Minimum Quantity should be 1');
            qty = 1;
            $qtyInput.val(qty);
        }

        if (qty >= maxQty) {
            alert('Maximum Quantity should be ' + maxQty);
            $('#productQty').val('{{ $inventory - 1 }}');
        }

        // You can now use `qty` for further logic
    });
    $('#productQty').keyup(function() {
        // let $container = $(this).closest('.product'); // or a shared parent
        let $qtyInput = $('#productQty');

        let qty = parseInt($qtyInput.val()) || 0;
        let maxQty = parseInt($qtyInput.attr('max')) || 1;
        if (qty < 1) {
            alert('Minimum Quantity should be 1');
            qty = 1;
            $qtyInput.val(qty);
        }

        if (qty >= maxQty) {
            alert('Maximum Quantity should be ' + maxQty);
            $('#productQty').val('{{ $inventory }}');
        }

        // You can now use `qty` for further logic
    });
    $('#addToCart').click(function() {
        let product_id = "{{$page->id}}";
        let quantity = $('#productQty').val();
        let product_title = "{{$page->title}}";
        let product_image = "{{$variant->image}}";
        let product_variant = "{{$variant->product_variant}}";
        let product_price = "{{$variant->sale_price}}";
        let cartData = [{
            product_id: product_id,
            quantity: quantity,
            product_variant: product_variant,
            product_title: product_title,
            product_image: product_image,
            product_price: product_price,
        }]
        var cartItem = JSON.parse(localStorage.getItem('cartData'));
        if (cartItem) {
            var filteredArray = $.grep(cartItem, function(obj) {
                return obj.product_id == cartData[0].product_id && obj.product_variant == cartData[0].product_variant;
            });
            if (filteredArray.length > 0) {
                $.each(cartItem, function(index, object) {
                    if (object.product_id === cartData[0].product_id && object.product_variant === cartData[0].product_variant) {
                        object.quantity = parseFloat(object.quantity) + parseFloat(cartData[0].quantity);
                        return false; // exit the loop once the object is updated
                    }
                });
                localStorage.setItem('cartData', JSON.stringify(cartItem));
            } else {
                var newData = {
                    product_id: product_id,
                    quantity: quantity,
                    product_variant: product_variant,
                    product_title: product_title,
                    product_image: product_image,
                    product_price: product_price,
                };
                cartItem.push(newData);
                localStorage.setItem('cartData', JSON.stringify(cartItem));
            }
        } else {
            localStorage.setItem('cartData', JSON.stringify(cartData));
        }
        Command: toastr["success"]("Product Added To Cart")
        getCart();
    })
</script>
@endsection