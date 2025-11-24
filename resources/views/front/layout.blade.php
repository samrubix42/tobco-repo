@php 
$category   = DB::table('category')->orderBy('id', 'desc')->get();
$subcategory   = DB::table('subcategory')->orderBy('id', 'desc')->get();
$contact   = DB::table('contact_settings')->first();
$cats = request()->segment(2);
@endphp
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="description">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Title Of Site -->
        <title>{{isset($page->meta_title) ? $page->meta_title : 'Shop'}} | {{config('app.name')}}</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="{{asset('/public/uploads/'.$contact->logo)}}" />
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/')}}/assets/css/plugins.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="{{asset('public/frontend/')}}/assets/css/style.css">
        <link rel="stylesheet" href="{{asset('public/frontend/')}}/assets/css/responsive.css">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="canonical" href="https://www.tobacgo.in/">
        @if(url()->current() == 'https://www.tobacgo.in/checkout')
            <meta name="robots" content="noindex, nofollow">
        @endif
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-WWM6LWR8');</script>
<!-- End Google Tag Manager -->
    </head>

    <body class="template-index index-demo3">
        <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WWM6LWR8"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
        <!--Page Wrapper-->
        <div class="page-wrapper">  
            <header class="header header-7"> 
                <!--Header inner-->
                <div class="header-main d-flex align-items-center">
                    <div class="container container-1330">        
                        <div class="row align-items-center">
                            <div class="col-5 col-sm-4 col-md-5 col-lg-5 col-xl-6 align-self-center icons-col text-left d-xl-none">
                                <!--Mobile Toggle-->
                                <button type="button" class="iconset icon-link ps-0 menu-icon js-mobile-nav-toggle mobile-nav--open d-inline-flex flex-column d-lg-none">
                                    <span class="iconCot"><i class="hdr-icon icon anm anm-times-l"></i><i class="hdr-icon icon anm anm-bars-r"></i></span>
                                    <span class="text d-none">Menu</span>
                                </button>
                                <!--End Mobile Toggle-->
                                <!--Search Mobile-->
                                <div class="search-parent iconset d-xl-none">
                                    <div class="site-search">
                                        <a href="#;" class="search-icon icon-link clr-none d-flex" data-bs-toggle="offcanvas" data-bs-target="#search-drawer">
                                            <span class="iconCot"><i class="hdr-icon icon anm anm-search-l"></i></span>
                                            <span class="text d-none d-xl-flex flex-column text-left">Search</span>
                                        </a>
                                    </div>
                                    <div class="search-drawer offcanvas offcanvas-top" tabindex="-1" id="search-drawer">
                                        <div class="container">
                                            <div class="search-header d-flex-center justify-content-between mb-3">
                                                <h3 class="title m-0">What are you looking for?</h3>
                                                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                                            </div>
                                            <div class="search-body">
                                                <!--<form class="form minisearch" id="header-search" action="{{url('shop')}}" method="get">-->
                                                    <!--Search Field-->
                                                <!--    <div class="d-flex searchField">-->
                                                <!--        <div class="search-category">-->
                                                <!--            <select class="rgsearch-category rounded-end-0" name="c">-->
                                                <!--                <option value="all" {{isset($_GET['c']) && $_GET['c'] === 'all' ? 'selected' : ''}}>All Categories</option>-->
                                                <!--                @foreach($category as $c)-->
                                                <!--                <option value="{{$c->slug}}" {{isset($_GET['c']) && $_GET['c'] === $c->slug ? 'selected' : ''}}>- {{$c->title}}</option>-->
                                                <!--                @endforeach-->
                                                <!--            </select>-->
                                                <!--        </div>-->
                                                <!--        <div class="d-flex fl-1">-->
                                                <!--            <input type="text" class="input-text rounded-0 border-start-0 border-end-0" name="p" placeholder="Search for products..." value="{{isset($_GET['p']) ? $_GET['p'] : ''}}">-->
                                                <!--            <button type="submit" class="action search d-flex-justify-center btn btn-primary rounded-start-0"><i class="icon anm anm-search-l"></i></button>-->
                                                <!--        </div>-->
                                                <!--    </div>-->
                                                <!--</form>-->
                                                <form class="form minisearch" id="header-search2">
                                                    <div class="d-flex searchField">
                                                        <div class="search-category">
                                                            <select class="rgsearch-category rounded-end-0" name="c" id="categorySelect2">
                                                                <option value="all" {{ $cats == 'all' ? 'selected' : '' }}>All Categories</option>
                                                                @foreach($category as $c)
                                                                    <option value="{{ $c->slug }}" {{ $cats == $c->slug ? 'selected' : '' }}>
                                                                        - {{ $c->title }}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                
                                                        <div class="d-flex fl-1">
                                                            <input 
                                                                type="text" 
                                                                class="input-text rounded-0 border-start-0 border-end-0" 
                                                                id="searchInput2"
                                                                name="p"
                                                                placeholder="Search for products..." 
                                                                value="{{ request('p') }}"
                                                            >
                                                            <button type="submit" class="action search d-flex-justify-center btn btn-primary rounded-start-0">
                                                                <i class="icon anm anm-search-l"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--End Search Mobile--> 
                                <!--Account Mobile-->
                                <div class="account-parent iconset d-inline-block d-xl-none">
                                    <div class="account-link"><span class="iconCot"><i class="hdr-icon icon anm anm-user-al"></i></span></div>
                                    <div id="accountBox">
                                        <div class="customer-links">
                                            <ul class="m-0">
                                                 @if(!empty(Auth::guard('customer')->user()))
                                                 <li><a href="{{url('account')}}"><i class="icon anm anm-sign-in-al"></i>{{Auth::guard('customer')->user()->name}}</a></li>
                                                 @else
                                                <li><a href="{{url('login')}}"><i class="icon anm anm-sign-in-al"></i>Sign In</a></li>
                                                <li><a href="{{url('signup')}}"><i class="icon anm anm-user-al"></i>Register</a></li>
                                                 @endif
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!--End Account Mobile-->
                            </div>

                            <!--Logo-->
                            <div class="logo col-5 col-sm-4 col-md-2 col-lg-2 col-xl-2 align-self-center">
                                <a class="logoImg" href="{{url('/')}}"><img src="{{asset('/public/uploads/'.$contact->logo)}}" alt="{{config('app.name')}}" title="{{config('app.name')}}" width="149" height="39" /></a>
                            </div>
                            <!--End Logo-->
                            <!--Search Inline-->
                            <div class="col-1 col-sm-1 col-md-1 col-lg-6 col-xl-6 align-self-center d-none d-xl-block">
                                <div class="minisearch-inline">
                                    <form class="form minisearch" id="header-search0" method="get">
                                        <label class="label d-none"><span>Search</span></label>
                                    
                                        <div class="d-flex searchField">
                                            <div class="search-category">
                                                <select class="rgsearch-category rounded-pill rounded-end-0 ps-3" name="c" id="categorySelect0">
                                                    
                                                    <option value="all" {{ $cats == 'all' ? 'selected' : '' }}>All Categories</option>
                                                    @foreach($category as $c)
                                                        <option value="{{ $c->slug }}" {{ $cats == $c->slug ? 'selected' : '' }}>
                                                            - {{ $c->title }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                    
                                            <div class="d-flex fl-1 position-relative">
                                                <input 
                                                    type="text" 
                                                    class="input-group-field input-text rounded-pill rounded-start-0 border-start-0" 
                                                    id="searchInput0"
                                                    name="p"
                                                    placeholder="Search for products, brands..." 
                                                    value="{{ request('p') }}"
                                                >
                                                <button 
                                                    type="submit" 
                                                    class="input-group-btn action search d-flex-justify-center text-link">
                                                    <i class="hdr-icon icon anm anm-search-l me-2"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!--End Search Inline-->
                            <!--Right Icon-->
                            <div class="col-2 col-sm-4 col-md-4 col-lg-4 col-xl-4 align-self-center icons-col text-right">
                                <div class="account-link iconset d-none d-xl-inline-block">
                                    <div class="icon-link clr-none d-flex">
                                        <span class="iconCot"><i class="hdr-icon icon anm anm anm-user-al"></i></span>
                                        <span class="text d-flex flex-column text-left">My Account 
                                        @if(!empty(Auth::guard('customer')->user()))
                                        <small><a href="{{url('account')}}">{{Auth::guard('customer')->user()->name}}</a></small>
                                        @else
                                        <small><a href="{{url('login')}}">Login</a> / <a href="{{url('signup')}}">Register</a></small>
                                        @endif
                                        </span>
                                    </div>
                                </div>
                                <!--End Account desktop-->
                                <!--Minicart-->
                                <div class="header-cart iconset pe-0">
                                    <a href="#;" class="header-cart btn-minicart icon-link clr-none d-flex" data-bs-toggle="offcanvas" data-bs-target="#minicart-drawer">
                                        <span class="iconCot"><i class="hdr-icon icon anm anm-basket-l"></i><span class="cart-count">0</span></span>
                                        <span class="text d-none d-md-flex flex-column text-left">Basket <small class="price text-primary totalAmount">₹0.00</small></span>
                                    </a>
                                </div>
                                <!--End Minicart-->
                            </div>
                            <!--End Right Icon-->
                        </div>                                                
                    </div>
                </div>
                <!--End Header inner-->
                <!--Navigation Desktop-->
                <div class="main-menu-outer d-none d-lg-block header-fixed">
                    <div class="container container-1330">
                        <div class="menu-outer rounded-4">
                            <div class="row g-0">  
                                <div class="col-1 col-sm-1 col-md-1 col-lg-12 align-self-center d-menu-col hdr-menu-center menu-position-center">
                                    <nav class="navigation ps-lg-3" id="AccessibleNav">
                                <ul id="siteNav" class="site-nav medium center">
                                    <li class="lvl1"><a href="{{url('/')}}">Home</a></li>
                    <li class="lvl1 parent dropdown"><a href="javascript:void(0)">Hookah Collection <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            <li><a href="{{url('shop/hookah')}}" class="site-nav">Hookah<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 4)
                                    <li><a href="{{url('shop/hookah/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                            @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="{{url('shop/hookah-accessories')}}" class="site-nav">Hookah Accessories<i class="icon anm anm-angle-right-l"></i></a>
                                 <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 9)
                                    <li><a href="{{url('shop/hookah-accessories/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="{{url('shop/hookah-chillum')}}" class="site-nav">Hookah Chillum<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 10)
                                    <li><a href="{{url('shop/hookah-chillum/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="javascript:void(0)">Bong Collection <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            <li><a href="{{url('shop/acrylic-bongs')}}" class="site-nav">Acrylic Bongs<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 5)
                                    <li><a href="{{url('shop/acrylic-bongs/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="{{url('shop/glass-bong-percolator')}}" class="site-nav">Glass Bong Percolator<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 8)
                                    <li><a href="{{url('shop/glass-bong-percolator/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/ashtray')}}">Astray <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 3)
                                    <li><a href="{{url('shop/ashtray/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/smoking-accessories')}}">Accessories <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 12)
                                    <li><a href="{{url('shop/smoking-accessories/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/lighters')}}">Lighters <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 11)
                                    <li><a href="{{url('shop/lighters/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/combos')}}">Combos <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 7)
                                    <li><a href="{{url('shop/combos/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                                </ul>
                            </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><div style="height: 52.8px; display: none;"></div>
                <!--End Navigation Desktop-->
            </header>
            <!--Mobile Menu-->
            <div class="mobile-nav-wrapper" role="navigation">
                <div class="closemobileMenu">Close Menu <i class="icon anm anm-times-l"></i></div>
                <ul id="MobileNav" class="mobile-nav">
                     <li class="lvl1"><a href="{{url('/')}}">Home</a></li>
                    <li class="lvl1 parent dropdown"><a href="javascript:void(0)">Hookah Collection <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            <li><a href="{{url('shop/hookah')}}" class="site-nav">Hookah<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 4)
                                    <li><a href="{{url('shop/hookah/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="{{url('shop/hookah-accessories')}}" class="site-nav">Hookah Accessories<i class="icon anm anm-angle-right-l"></i></a>
                                 <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 9)
                                    <li><a href="{{url('shop/hookah-accessories/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="{{url('shop/hookah-chillum')}}" class="site-nav">Hookah Chillum<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 10)
                                    <li><a href="{{url('shop/hookah-chillum/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="{{url('shop/hookah-flavours')}}" class="site-nav">Hookah Flavours<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 2)
                                    <li><a href="{{url('shop/hookah-flavours/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="javascript:void(0)">Bong Collection <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            <li><a href="{{url('shop/acrylic-bongs')}}" class="site-nav">Acrylic Bongs<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 5)
                                    <li><a href="{{url('shop/acrylic-bongs/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                            <li><a href="{{url('shop/glass-bong-percolator')}}" class="site-nav">Glass Bong Percolator<i class="icon anm anm-angle-right-l"></i></a>
                                <ul class="dropdown">
                                    @foreach($subcategory as $s)
                                        @if($s->category === 8)
                                    <li><a href="{{url('shop/glass-bong-percolator/'.$s->slug)}}" class="site-nav">{{$s->title}}</a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/ashtray')}}">Astray <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 3)
                                    <li><a href="{{url('shop/ashtray/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/cigars')}}">Cigars <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 6)
                                    <li><a href="{{url('shop/cigars/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/smoking-accessories')}}">Accessories <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 12)
                                    <li><a href="{{url('shop/smoking-accessories/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/lighters')}}">Lighters <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 11)
                                    <li><a href="{{url('shop/lighters/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>
                    <li class="lvl1 parent dropdown"><a href="{{url('shop/combos')}}">Combos <i class="icon anm anm-angle-down-l"></i></a>
                        <ul class="dropdown">
                            @foreach($subcategory as $s)
                                @if($s->category === 7)
                                    <li><a href="{{url('shop/combos/'.$s->slug)}}" class="site-nav">{{$s->title}}</a>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </li>

                    <li class="mobile-menu-bottom">
                        <div class="mobile-follow mt-2">  
                            <h5 class="title">Follow Us</h5>
                            <ul class="list-inline social-icons d-inline-flex mt-1">
                                <li class="list-inline-item"><a href="#" title="Facebook"><i class="icon anm anm-facebook-f"></i></a></li>
                                <li class="list-inline-item"><a href="#" title="Twitter"><i class="icon anm anm-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#" title="Pinterest"><i class="icon anm anm-pinterest-p"></i></a></li>
                                <li class="list-inline-item"><a href="#" title="Linkedin"><i class="icon anm anm-linkedin-in"></i></a></li>
                                <li class="list-inline-item"><a href="#" title="Instagram"><i class="icon anm anm-instagram"></i></a></li>
                                <li class="list-inline-item"><a href="#" title="Youtube"><i class="icon anm anm-youtube"></i></a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <!--End Mobile Menu-->
            <div id="page-content">  
                @yield('content')
            </div>
            <!--Footer-->
                        <div class="footer footer-3 footer-9">
                <div class="footer-logo-links clearfix">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-12 col-md-2 col-lg-3">
                                <div class="ftr-logo text-md-start">
                                    <img class="logoImg" src="{{asset('public/public/uploads/'.$contact->logo)}}" alt="{{config('app.name')}}" title="{{config('app.name')}}" width="149" height="39" />
                                </div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-6 my-3 my-md-0 d-none">
                                <ul class="list-inline inline-links left-brd text-uppercase d-flex-justify-center">
                                    <li class="list-inline-item"><a href="{{url('track-status')}}">Order status</a></li>
                                    <li class="list-inline-item"><a href="{{url('returns')}}">Returns & Exchanges</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3">
                                <ul class="list-inline social-icons d-flex-justify-center justify-content-md-end">
                                    <li class="list-inline-item"><a class="d-flex-justify-center" href="https://www.facebook.com/noidatobacgo/" data-bs-toggle="tooltip" data-bs-placement="top" title="Facebook" target="_blank"><i class="icon anm anm-facebook-f"></i></a></li>
                                    <!--<li class="list-inline-item"><a class="d-flex-justify-center" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Twitter"><i class="icon anm anm-twitter"></i></a></li>-->
                                    <li class="list-inline-item"><a class="d-flex-justify-center" href="https://www.instagram.com/tobacgonoida/" data-bs-toggle="tooltip" data-bs-placement="top" title="Instagram" target="_blank"><i class="icon anm anm-instagram"></i></a></li>
                                    <li class="list-inline-item"><a class="d-flex-justify-center" href="https://www.youtube.com/@tobac-go-noida/" data-bs-toggle="tooltip" data-bs-placement="top" title="Youtube" target="_blank"><i class="icon anm anm-youtube"></i></a></li>
                                    <li class="list-inline-item"><a class="d-flex-justify-center" href="https://www.pinterest.com/tobacgonoida/" data-bs-toggle="tooltip" data-bs-placement="top" title="Pinterest" target="_blank"><i class="icon anm anm-pinterest-p"></i></a></li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-top clearfix">
                    <div class="container">
                        <div class="row flex-column-reverse flex-md-row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-3 footer-contact mb-md-4 mb-0">
                                <h4 class="h4">Contact Info</h4>
                                <div class="phone-info d-flex align-items-center mb-2 pb-2">
                                    <i class="phone-icon icon anm anm-phone-l"></i>
                                    <div class="phone-text d-flex flex-column">
                                        <label class="m-0">Got Question? Call us 24/7</label>
                                        <a href="tel:{{$contact->phone}}">{{$contact->phone}}</a>
                                    </div>
                                </div>
                                <p class="address d-flex"><i class="icon anm anm-map-marker-al pt-1 d-none"></i> {{$contact->address}}</p>
                                <p class="phone d-flex align-items-center"><i class="icon anm anm-phone-l d-none"></i> <b class="me-1">Phone:</b> <a href="tel:{{$contact->phone}}">{{$contact->phone}}</a></p>
                                <p class="email d-flex align-items-center mb-0"><i class="icon anm anm-envelope-l d-none"></i> <b class="me-1">Email:</b> <a href="mailto:{{$contact->email}}">{{$contact->email}}</a></p>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links ps-lg-5">
                                <h4 class="h4">Quick Shop</h4>
                                <ul>
                                    <li><a href="{{url('/')}}">Home</a></li>
                                    <li><a href="{{url('/collection')}}">Collection</a></li>
                                    <li><a href="{{url('/shop')}}">Shop</a></li>
                                    <li><a href="{{url('/blogs')}}">Blogs</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links ps-lg-5">
                                <h4 class="h4">Shop By Categories</h4>
                                <ul>
                                    @foreach($category as $c)
                                        <li><a href="{{url('shop/'.$c->slug)}}">{{$c->title}}</a></li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links ps-lg-5">
                                <h4 class="h4">Policy</h4>
                                <ul>
                                    <li><a href="{{url('privacy-policy')}}">Privacy Policy</a></li>
                                    <li><a href="{{url('shipping-policy')}}">Shipping Policy</a></li>
                                    <li><a href="{{url('terms-conditions')}}">Terms & Conditions</a></li>
                                    <li><a href="{{url('returns-refunds')}}">Returns & Refunds </a></li>
                                </ul>
                            </div>                            
                        </div>               
                    </div>
                </div>
                <div class="footer-bottom clearfix">
                    <div class="container">
                        <div class="d-flex-center flex-column justify-content-md-between flex-md-row-reverse">
                            <ul class="payment-icons d-flex-center mb-2 mb-md-0">
                                <li><div class="copytext">Powered By <a href="https://techonika.com" class="text-white">Techonika</a></div></li>
                                
                            </ul>
                            <div class="copytext">&copy; {{date('Y')}} {{config('app.name')}}. All Rights Reserved.</div>
                        </div>
                    </div>
                </div>
            </div>

            <!--End Footer-->
            <!--MiniCart Drawer-->
            <div id="minicart-drawer" class="minicart-right-drawer offcanvas offcanvas-end" tabindex="-1">
                <!--MiniCart Empty-->
                <div id="cartEmpty" class="cartEmpty d-flex-justify-center flex-column text-center p-3 text-muted d-none">
                    <div class="minicart-header d-flex-center justify-content-between w-100">
                        <h4 class="fs-6 body-font">Your cart (0 Items)</h4>
                        <button class="close-cart border-0" data-bs-dismiss="offcanvas" aria-label="Close"><i class="icon anm anm-times-r" data-bs-toggle="tooltip" data-bs-placement="left" title="Close"></i></button>
                    </div>
                    <div class="cartEmpty-content mt-4">
                        <i class="icon anm anm-basket-l fs-1 text-muted"></i> 
                        <p class="my-3">No Products in the Cart</p>
                        <a href="" class="btn btn-primary cart-btn">Continue shopping</a>
                    </div>
                </div>
                <!--End MiniCart Empty-->

                <!--MiniCart Content-->
                <div id="cart-drawer" class="block block-cart">
                    <div class="minicart-header">
                        <button class="close-cart border-0" data-bs-dismiss="offcanvas" aria-label="Close"><i class="icon anm anm-times-r" data-bs-toggle="tooltip" data-bs-placement="left" title="Close"></i></button>
                        <h4 class="fs-6 body-font">Your cart (<span class="cart-counts">0</span> Items)</h4>
                    </div>
                    <div class="minicart-content">
                        <ul class="m-0 clearfix" id="cartItems">
                            <li class="item d-flex justify-content-center align-items-center">
                                <a class="product-image" href="#">
                                    <img class="blur-up lazyload" data-src="assets/images/products/cart-product-img1.jpg" src="assets/images/products/cart-product-img1.jpg" alt="product" title="Product" width="120" height="170" />
                                </a>
                                <div class="product-details">
                                    <a class="product-title" href="#">Leather Bag</a>
                                    <div class="variant-cart my-2">Black / XL</div>
                                    <div class="priceRow">
                                        <div class="product-price">
                                            <span class="price">$54.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="qtyDetail text-center">
                                    <div class="qtyField">
                                        <a class="qtyBtn minus" href="#;"><i class="icon anm anm-minus-r"></i></a>
                                        <input type="text" name="quantity" value="1" class="qty">
                                        <a class="qtyBtn plus" href="#;"><i class="icon anm anm-plus-r"></i></a>
                                    </div>
                                    <a href="#" class="edit-i remove"><i class="icon anm anm-pencil-ar" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"></i></a>
                                    <a href="#" class="remove"><i class="icon anm anm-times-r" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove"></i></a>
                                </div>
                            </li>
                            <li class="item d-flex justify-content-center align-items-center">
                                <a class="product-image" href="#">
                                    <img class="blur-up lazyload" data-src="assets/images/products/cart-product-img1.jpg" src="assets/images/products/cart-product-img1.jpg" alt="product" title="Product" width="120" height="170" />
                                </a>
                                <div class="product-details">
                                    <a class="product-title" href="#">Duffle Bags</a>
                                    <div class="variant-cart my-2">Yellow / M</div>
                                    <div class="priceRow">
                                        <div class="product-price">
                                            <span class="price old-price">$114.00</span><span class="price">$99.00</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="qtyDetail text-center">
                                    <div class="qtyField">
                                        <a class="qtyBtn minus" href="#;"><i class="icon anm anm-minus-r"></i></a>
                                        <input type="text" name="quantity" value="1" class="qty">
                                        <a class="qtyBtn plus" href="#;"><i class="icon anm anm-plus-r"></i></a>
                                    </div>
                                    <a href="#" class="edit-i remove"><i class="icon anm anm-pencil-ar" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"></i></a>
                                    <a href="#" class="remove"><i class="icon anm anm-times-r" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="minicart-bottom">
                        <div class="subtotal clearfix my-3">
                            <div class="totalInfo clearfix"><span>Total:</span><span class="item product-price finalAmount">₹0.00</span></div>

                        </div>
                        <div class="minicart-action d-flex mt-3">
                            <a href="{{url('/checkout')}}" class="proceed-to-checkout btn btn-primary w-100 me-1">Check Out</a>
                        </div>
                    </div>
                </div>
                <!--MiniCart Content-->
            </div>

            <!--Scoll Top-->
            <div id="site-scroll"><i class="icon anm anm-arw-up"></i></div>
            <!--End Scoll Top-->

            <!--MiniCart Drawer-->
            <div class="productVideo-modal modal fade" id="productVideo_modal" tabindex="-1" style="display: none;" aria-hidden="true">           
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body p-0">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" fdprocessedid="prt59c"></button>
                            <div class="ratio ratio-16x9 productVideo-wrap">
                                <iframe src="//www.youtube.com/embed/wKZk6ly_YMY?rel=0" title="YouTube video" allowfullscreen=""></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Including Jquery/Javascript -->
            <!-- Plugins JS -->
            <script src="{{asset('public/frontend/')}}/assets/js/plugins.js"></script>
            <!-- Elevatezoom Zoom -->
            <script src="{{asset('public/frontend/')}}/assets/js/vendor/jquery.elevatezoom.js"></script>
            
            <script>
                $(document).ready(function() {
                    /* Product Zoom */
                    function product_zoom() {
                        $(".zoompro").elevateZoom({
                            gallery: "gallery",
                            galleryActiveClass: "active",
                            zoomWindowWidth: 300,
                            zoomWindowHeight: 100,
                            scrollZoom: false,
                            zoomType: "inner",
                            cursor: "crosshair"
                        });
                    }
                    product_zoom();
                });
            </script>
            <!-- Main JS -->
            <script src="{{asset('public/frontend/')}}/assets/js/main.js"></script>
            <!-- Photoswipe Gallery JS -->
            <script src="{{asset('public/frontend/')}}/assets/js/vendor/photoswipe.min.js"></script>
            <script>
                $(function() {
                    var $pswp = $('.pswp')[0],
                            image = [],
                            getItems = function() {
                                var items = [];
                                $('.lightboximages a').each(function() {
                                    var $href = $(this).attr('href'),
                                            $size = $(this).data('size').split('x'),
                                            item = {
                                                src: $href,
                                                w: $size[0],
                                                h: $size[1]
                                            };
                                    items.push(item);
                                });
                                return items;
                            };
                    var items = getItems();

                    $.each(items, function(index, value) {
                        image[index] = new Image();
                        image[index].src = value['src'];
                    });
                    $('.prlightbox').on('click', function(event) {
                        event.preventDefault();

                        var $index = $(".active-thumb").parent().attr('data-slick-index');
                        $index++;
                        $index = $index - 1;

                        var options = {
                            index: $index,
                            bgOpacity: 0.7,
                            showHideOpacity: true
                        };
                        var lightBox = new PhotoSwipe($pswp, PhotoSwipeUI_Default, items, options);
                        lightBox.init();
                    });
                });
            </script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        </div>
        <!--End Page Wrapper-->
        <script>
         function getCart(){
             var cartData = JSON.parse(localStorage.getItem('cartData'));
             let listItems = '';
             var listHTML = '';
             console.log(cartData);
             if (cartData && Array.isArray(cartData) && cartData.length > 0) {
                 listItems = cartData?.map(function(cartProducts, index) {
                 return `<li class="item d-flex justify-content-center align-items-center">
                            <a class="product-image" href="#">
                                <img class="blur-up lazyload" data-src="{{asset('public/public/uploads/')}}/`+cartProducts.product_image+`" src="{{asset('public/public/uploads/')}}/`+cartProducts.product_image+`" alt="`+ cartProducts.product_title +`" title="Product" width="120" height="170" />
                            </a>
                            <div class="product-details">
                                <a class="product-title" href="#">`+ cartProducts.product_title +`</a>
                                <div class="variant-cart my-2">`+ cartProducts.product_variant +`</div>
                                <div class="priceRow">
                                    <div class="product-price">
                                        <span class="price">₹`+ parseFloat(cartProducts.product_price).toFixed(2) +` x `+ cartProducts.quantity +`</span>
                                    </div>
                                </div>
                            </div>
                            <div class="qtyDetail text-center">
                                <a href="javascript:void(0)" class="remove remove-cart cartRemove" data-id="`+ index +`"><i class="icon anm anm-times-r" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove"></i></a>
                            </div>
                        </li>`;
                 });
                 listHTML = listItems.join(''); 
                 $('.minicart-bottom').show();
             }else{
                 listItems = '<h2>Cart is Empty</h2>';
                 listHTML = listItems;
                 $('.minicart-bottom').hide();
             }
             // Append the HTML string to the unordered list
             $('#cartItems').html(listHTML);
             $('.cart-count').html(cartData.length);
             $('.cart-counts').html(cartData.length);
             
             // Cart Data Price SUM
             // Column index (0-based) you want to calculate the sum for
               var price = 'product_price';
               var quantity = 'quantity';
                 
               // Initialize sum variable
               var sum = 0;
             
               // Iterate through the array and calculate the sum
               $.each(cartData, function (index, item) {
                 sum += parseFloat(item[price] * item[quantity]);
               });
               // Display the sum
               $('.totalAmount').text('₹' + parseFloat(sum).toFixed(2));
               $('.finalAmount').text('₹' + parseFloat(sum).toFixed(2));
               $('.totalAmount').val(sum); 
         }
         getCart();
         function getProductInCheckout(){
             var cartData = JSON.parse(localStorage.getItem('cartData'));
             var listItems = cartData?.map(function(cartProducts, index) {
                return `<tr class="cart-row cart-flex position-relative">
                            <td class="cart-image cart-flex-item">
                                <a href="#"><img class="cart-image rounded-0 blur-up lazyload" data-src="public/public/uploads/${cartProducts.product_image}" src="public/public/uploads/${cartProducts.product_image}" alt="${cartProducts.product_title}" width="120" height="170" /></a>
                            </td>
                            <td class="cart-meta small-text-left cart-flex-item">
                                <div class="list-view-item-title">
                                    <a href="javascript:void(0)">${cartProducts.product_title}</a>
                                </div>
                                <div class="cart-meta-text">
                                    ${cartProducts.product_variant}<br>Qty: ${cartProducts.quantity}
                                </div>
                                <div class="cart-price d-md-none">
                                    <span class="money fw-500">₹${cartProducts.product_price}.00</span>
                                </div>
                            </td>
                            <td class="cart-price cart-flex-item text-center small-hide">
                                <span class="money">₹${cartProducts.product_price}.00</span>
                            </td>
                            <td class="cart-update-wrapper cart-flex-item text-end text-md-center">
                                <div class="cart-qty d-flex justify-content-end justify-content-md-center">
                                    <div class="qtyField">
                                        <input class="cart-qty-input qty" type="text" name="updates[]" value="${cartProducts.quantity}" pattern="[0-9]*" readOnly/>
                                    </div>
                                </div>
                                <a href="#" title="Remove" class="removeMb d-md-none d-inline-block text-decoration-underline mt-2 me-3">Remove</a>
                            </td>
                            <td class="cart-price cart-flex-item text-center small-hide">
                                <span class="money fw-500">₹${cartProducts.quantity * cartProducts.product_price}.00</span>
                            </td>
                        </tr>`
             });
             var listHTML = listItems.join('');
             // Append the HTML string to the unordered list
             $('.checkOutItems').html(listHTML);
             let couponData = JSON.parse(localStorage.getItem('couponData'));
             if(couponData !== null){
                 $('#couponCheckout').val(localStorage.getItem('couponData'));
                 $('#checkoutSubTotal').text(couponData[0].subTotal);
                 $('.checkoutCouponAmount').text(couponData[0].couponValue !== "" ? couponData[0].couponValue : 0.00);
                 $('.checkoutShipping').text(couponData[0].shippingValue);
                 $('.checkoutFinalAmount').text(couponData[0].finalAmount);
             }
             
         }
         
         function getCartOnPage(){
            var cartData = JSON.parse(localStorage.getItem('cartData'));
            var listItems = cartData?.map(function(cartProducts, index) {
                 return `<tr class="cart-row cart-flex position-relative">
                            <td class="cart-delete text-center small-hide"><a href="javascript:void(0)" class="cart-remove cartRemoves cart-remove remove-icon position-static" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove to Cart"><i class="icon anm anm-times-r"></i></a></td>
                            <td class="cart-image cart-flex-item">
                                <a href="#"><img class="cart-image rounded-0 blur-up lazyload" data-src="public/public/uploads/${cartProducts.product_image}" src="public/public/uploads/${cartProducts.product_image}" alt="${cartProducts.product_title}" width="120" height="170" /></a>
                            </td>
                            <td class="cart-meta small-text-left cart-flex-item">
                                <div class="list-view-item-title">
                                    <a href="javascript:void(0)">${cartProducts.product_title}</a>
                                </div>
                                <div class="cart-meta-text">
                                    ${cartProducts.product_variant}<br>Qty: ${cartProducts.quantity}
                                </div>
                                <div class="cart-price d-md-none">
                                    <span class="money fw-500">₹${cartProducts.product_price}.00</span>
                                </div>
                            </td>
                            <td class="cart-price cart-flex-item text-center small-hide">
                                <span class="money">₹${cartProducts.product_price}.00</span>
                            </td>
                            <td class="cart-update-wrapper cart-flex-item text-end text-md-center">
                                <div class="cart-qty d-flex justify-content-end justify-content-md-center">
                                    <div class="qtyField">
                                        <input class="cart-qty-input qty" type="text" name="updates[]" value="${cartProducts.quantity}" pattern="[0-9]*" readOnly/>
                                    </div>
                                </div>
                                <a href="#" title="Remove" class="removeMb d-md-none d-inline-block text-decoration-underline mt-2 me-3">Remove</a>
                            </td>
                            <td class="cart-price cart-flex-item text-center small-hide">
                                <span class="money fw-500">₹${cartProducts.quantity * cartProducts.product_price}.00</span>
                            </td>
                        </tr>`
             });
             var listHTML = listItems.join('');
             // Append the HTML string to the unordered list
             $('#cartTable').html(listHTML);
         
             // Cart Data Price SUM
             //Column index (0-based) you want to calculate the sum for
               var price = 'product_price';
               var quantity = 'quantity';
                 
                //Initialize sum variable
               var sum = 0;
             
                //Iterate through the array and calculate the sum
               $.each(cartData, function (index, item) {
                 sum += parseFloat(item[price] * item[quantity]);
               });
               $('.cart-alert').hide();
               let shipping_charge = 0.00;
               let maxAmount = "{{$contact->max_amount}}";
               if(sum >= maxAmount){
                   $('.cart-alert, .freeShipclaim').show();
                   shipping_charge = 0.00;
               }else{
                   $('.cart-alert, .freeShipclaim').hide();
                   shipping_charge = "{{$contact->shipping_charges}}";
               }
               // Display the sum
               $('#subTotal').text(parseFloat(sum).toFixed(2));
               $('#shipping').text(parseFloat(shipping_charge).toFixed(2));
               $('#totalAmount').text((parseInt(sum) + parseInt(shipping_charge)).toFixed(2));
               $('.finalAmount').val(parseInt(sum) + parseInt(shipping_charge));
         }
         getCartOnPage();
         async function getTotalAmount(){
             if(localStorage.getItem('couponData') != null){
                 var priceData = JSON.parse(localStorage.getItem('couponData'));
                 await $('.sub_total').text(priceData[0].subTotal);
                 await $('.finalAmountinCheckout').text(priceData[0].finalAmount);
                 await $('.finalAmountinCheckout').val(priceData[0].finalAmount);
                 if(priceData[0].coupon != ''){
                     await $('.getCoupon').show();
                     await $('.coup').text(priceData[0].coupon);
                     await $('.couponValueinCheckout').html('<span class="text text-danger"> -₹' + priceData[0].couponValue + '</span>');
                     await $('.finalAmountinCheckout').text(priceData[0].finalAmount);
                     await $('.finalAmountinCheckout').val(priceData[0].finalAmount);
                 }else{
                     $('.getCoupon').hide();
                     
                 } 
             }else{
                 $('.getCoupon').hide();
             }
         }
         getTotalAmount();
         
         $('body').on('click', '.cartRemove', function () {
             var index = $(this).data('id');
             console.log(index);
             var cartData = JSON.parse(localStorage.getItem('cartData'));
             cartData.splice(index, 1);
             console.log(cartData);
             localStorage.setItem('cartData',JSON.stringify(cartData));
             getCart();
         });
         $('body').on('click', '.cartRemoves', function () {
             var index = $(this).data('id');
             console.log(index);
             var cartData = JSON.parse(localStorage.getItem('cartData'));
             cartData.splice(index, 1);
             console.log(cartData);
             localStorage.setItem('cartData',JSON.stringify(cartData));
             getCartOnPage();
         });
         $('body').on('click', '#clearCart', function () {
             localStorage.clear();
             location.reload(true);
         });
         $('body').on('click', '.bootstrap-touchspin-up', function () {
             console.log($('.horizontal-quantity').val());
         
         });
         toastr.options = {
           "closeButton": true,
           "debug": false,
           "newestOnTop": false,
           "progressBar": false,
           "positionClass": "toast-top-right",
           "preventDuplicates": false,
           "onclick": null,
           "showDuration": "300",
           "hideDuration": "1000",
           "timeOut": "5000",
           "extendedTimeOut": "1000",
           "showEasing": "swing",
           "hideEasing": "linear",
           "showMethod": "fadeIn",
           "hideMethod": "fadeOut"
         }
      </script>
      <script>
         // Apply Coupon
         $(document).ready(function() {
          $('.coupon-form').on('submit', function(event) {
              event.preventDefault();
              
              var formData = new FormData(this);
              $.ajaxSetup({
                  headers: {
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
              });
              $.ajax({
                  type: 'POST',
                  url: '{{url("/apply-coupon")}}',
                  data: formData,
                  cache: false,
                  contentType: false,
                  processData: false,
                  success: async function(response) {
                      if (response.status == 'success') {
                          $('.couponAmount').text(parseFloat(response.data.value).toFixed(2));
                          $('.couponValue').val(response.data.value);
                          $('#totalAmount').text(parseFloat(response.data.totalAmount).toFixed(2));
                          $('#code').attr('disabled', 'disabled');
                          $('.apply').attr('disabled', 'disabled');
                          $('.apply').text('Coupon Applied');
                          Command: toastr["success"](response.message);
                      } else {
                          $('#code').val('');
                          Command: toastr["warning"](response.message);
                      }
                  },
                  error: async function() {
                      $('#bs-example-modal-lg').modal('hide');
                      await $('.swal2-title').html(response.status);
                      await $('.swal2-msg').html(response.msg);
                      await $('.failed').attr('style', 'display:block');
                  }
              });
          });
          
         });
         $('.removeCoupon').on('click', function(){
                $('#code').removeAttr('disabled');
                $('#code').val('');
                $('.apply').removeAttr('disabled');
                $('.apply').text('Apply');
                $('.finalAmount').text(parseFloat($('.finalAmount').text()) + parseFloat($('.couponAmount').text()));
                $('.coupon-box').addClass('d-none');
                $('.removeCoupon').addClass('d-none');
         });
         //save coupon in local storage
         $('#checkout').click(function(){
            var subTotal = $('#subTotal').text();
            var finalAmount = $('#totalAmount').text();
            var coupon = $('#code').val();
            var shipping = $('#shipping').text();
            var couponValue = $('.couponValue').val();
            var couponData = [{
                subTotal : subTotal,
                finalAmount : finalAmount,
                coupon : coupon,
                couponValue : couponValue,
                shippingValue: shipping
            }];
         //   store couponData in local storage
         var couponItem = localStorage.setItem('couponData',JSON.stringify(couponData));
         $('#steps0').removeClass('active');
         $('#steps1').removeClass('fade');
         $('#steps1').addClass('active');
         $('#check').addClass('active');
         });
         $('#proceedAddress').click(function(){
             $('#steps1').removeClass('active');
             $('#steps2').removeClass('fade');
             $('#steps2').addClass('active');
             $('#add').addClass('active');
         })
         $('#add_tearm').click(function(){
             if ($('#add_tearm').is(':checked')) {
                 $('#billing_address').val($('#shipping_address').val());
                 $('#billing_address1').val($('#shipping_address1').val());
                 $('#billing_postcode').val($('#shipping_postcode').val());
                 $('#billing_state').val($('#shipping_state').val());
             }else{
                 $('#billing_address').val('');
                 $('#billing_address1').val('');
                 $('#billing_postcode').val('');
                 $('#billing_state').val('');
             }
         });
         $('.payment').click(function(){
             $('#steps2').removeClass('active');
             $('#steps3').removeClass('fade');
             $('#steps3').addClass('active');
             $('#ord').addClass('active');
             getProductInCheckout();
         })
         $('.register').hide();
         $('input[name="checkout_method"]').click(function() {
            if($(this).val() === 'register'){
                
                window.location.href= "{{url('signup?return='.url('checkout'))}}";
            }else if($(this).val() === 'login'){
                window.location.href= "{{url('login?return='.url('checkout'))}}";
            }else{
                $('.register').hide();
            }
        });
      </script>
      <script>
         $(document).ready(function() {
           $('.signup-form').on('submit', function(event) {
               event.preventDefault();
               
               var formData = new FormData(this);
               $.ajaxSetup({
                   headers: {
                       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                   }
               });
               $.ajax({
                   type: 'POST',
                   url: '{{url("/signup")}}',
                   data: formData,
                   cache: false,
                   contentType: false,
                   processData: false,
                   success: function(response) {
                       console.log(response);
                       if (response.status == 'success') {
                           Command: toastr["success"](response.message);
                           window.location.href = "{{isset($_GET['return']) ? $_GET['return'] : url('/')}}";
                       } else {
                           Command: toastr["warning"](response.message);
                       }
                   },
                   error: function() {
                        Command: toastr["warning"](response.message);
                   }
               });
           });
           $('.reset-password-form').on('submit', function(event) {
               event.preventDefault();
               var formData = new FormData(this);
               $.ajaxSetup({
                   headers: {
                       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                   }
               });
               $.ajax({
                   type: 'POST',
                   url: '{{url("/reset-password")}}',
                   data: formData,
                   cache: false,
                   contentType: false,
                   processData: false,
                   success: function(response) {
                       console.log(response);
                       if (response.status == 'success') {
                           Command: toastr["success"](response.message);
                       } else {
                           Command: toastr["warning"](response.message);
                       }
                   },
                   error: function() {
                        Command: toastr["warning"](response.message);
                   }
               });
           });
           $('.create-password-form').on('submit', function(event) {
               event.preventDefault();
               var formData = new FormData(this);
               $.ajaxSetup({
                   headers: {
                       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                   }
               });
               $.ajax({
                   type: 'POST',
                   url: '{{url("/create-password")}}',
                   data: formData,
                   cache: false,
                   contentType: false,
                   processData: false,
                   success: function(response) {
                       console.log(response);
                       if (response.status == 'success') {
                           Command: toastr["success"](response.message);
                           
                           window.location.href="{{url('login')}}"
                       } else {
                           Command: toastr["warning"](response.message);
                       }
                   },
                   error: function() {
                        Command: toastr["warning"](response.message);
                   }
               });
           });
           $('.updateProfile').on('submit', function(event) {
               event.preventDefault();
               var formData = new FormData(this);
               $.ajaxSetup({
                   headers: {
                       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                   }
               });
               $.ajax({
                   type: 'POST',
                   url: '{{url("/update-profile")}}',
                   data: formData,
                   cache: false,
                   contentType: false,
                   processData: false,
                   success: function(response) {
                       console.log(response);
                       if (response.status == 'success') {
                           Command: toastr["success"](response.message);
                           
                       } else {
                           Command: toastr["warning"](response.message);
                       }
                   },
                   error: function() {
                        Command: toastr["warning"](response.message);
                   }
               });
           });
         });
         $(document).ready(function() {
           $('#couponCheckout').val(localStorage.getItem('couponData'));
           $('#productCheckout').val(localStorage.getItem('cartData'));
        //   $('#checkout-form').on('submit', function(event) {
           $('#paymentProceed').on('click', function(event) {
               $('#paymentProceed').attr('disabled', true);
               $('#paymentProceed').text('Please Wait...');
               event.preventDefault();
               let data = [{
                    couponData : $('#couponCheckout').val(),
                    cartData : $('#productCheckout').val(),
                    checkoutMethod : $('input[name="checkout_method"]:checked').val(),
                    shipping_fname : $('#shipping_fname').val(),
                    shipping_lname : $('#shipping_lname').val(),
                    email : $('#email').val(),
                    phone : $('#phone').val(),
                    shipping_address : $('#shipping_address').val(),
                    shipping_address1 : $('#shipping_address1').val(),
                    shipping_postcode : $('#shipping_postcode').val(),
                    shipping_country : $('#shipping_country').val(),
                    shipping_state : $('#shipping_state').val(),
                    billing_address : $('#billing_address').val(),
                    billing_address1 : $('#billing_address1').val(),
                    billing_postcode : $('#billing_postcode').val(),
                    billing_country : $('#billing_country').val(),
                    billing_state : $('#billing_state').val(),
                    notes : $('#notes').val(),
                    address_id : $('input[name="address_id"]:checked').val(),
                }];
               $.ajaxSetup({
                   headers: {
                       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                   }
               });
               $.ajax({
                   type: 'POST',
                   url: '{{url("/checkoutpost")}}',
                   data: {data:data},
                   success: function(response) {
                       console.log(response);
                       $('#paymentProceed').attr('disabled', false);
                       $('#paymentProceed').text('Proceed to Payment');
                       if(response.status === 'success'){
                            localStorage.removeItem('cartData');
                            localStorage.removeItem('couponData');
                            window.location.href = response.data.redirectUrl;
                       }else{
                           Command: toastr["warning"](response.message);
                       }
                   },
                   error: function() {
                        Command: toastr["warning"](response.message);
                   }
               });
           });
           $('.saved-address').on('submit', function(event) {
               event.preventDefault();
               
               var formData = new FormData(this);
               $.ajaxSetup({
                   headers: {
                       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                   }
               });
               $.ajax({
                   type: 'POST',
                   url: '{{url("/save-address")}}',
                   data: formData,
                   cache: false,
                   contentType: false,
                   processData: false,
                   success: function(response) {
                       console.log(response);
                       if (response.status == 'success') {
                           Command: toastr["success"](response.message);
                           $('form :input').val('');
                       } else {
                           Command: toastr["warning"](response.message);
                       }
                   },
                   error: function() {
                        Command: toastr["warning"](response.message);
                   }
               });
           });
           $('.addAddressBtn').click(function() {
                $('.addAddress').toggleClass('d-none'); // Toggle visibility
            
                if ($('.addAddress').hasClass('d-none')) {
                    $(".addAddress input").removeAttr("required"); // Remove required
                } else {
                    $(".addAddress input").attr("required", true); // Add required
                }
            });

         });
      </script>
    <script>
$(document).ready(function () {
    $('#header-search0').on('submit', function (e) {
        e.preventDefault();

        var category = $('#categorySelect0').val();
        var search = $.trim($('#searchInput0').val());
        var baseUrl = "{{ url('shop') }}";
        var finalUrl = baseUrl;

        // Append category if not "all"
        if (category && category !== 'all') {
            finalUrl += '/' + encodeURIComponent(category);
        }

        // Add query parameter if search exists
        if (search) {
            finalUrl += '?p=' + encodeURIComponent(search);
        }

        // Redirect to final URL
        window.location.href = finalUrl;
    });
    $('#header-search2').on('submit', function (e) {
        e.preventDefault();

        var category = $('#categorySelect2').val();
        var search = $.trim($('#searchInput2').val());
        var baseUrl = "{{ url('shop') }}";
        var finalUrl = baseUrl;

        // Append category if not "all"
        if (category && category !== 'all') {
            finalUrl += '/' + encodeURIComponent(category);
        }

        // Add query parameter if search exists
        if (search) {
            finalUrl += '?p=' + encodeURIComponent(search);
        }

        // Redirect to final URL
        window.location.href = finalUrl;
    });
});
</script>
    </body>
</html>
