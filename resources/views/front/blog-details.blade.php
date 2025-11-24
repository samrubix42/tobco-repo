@extends('front.layout')
@section('content') 
<div id="page-content"> 
    <!--Page Header-->
    <div class="page-header text-center">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 d-flex justify-content-between align-items-center">
                    <div class="page-title"><h1>{{$page->title}}</h1></div>
                    <!--Breadcrumbs-->
                    <div class="breadcrumbs"><a href="{{url('/')}}" title="Back to the home page">Home</a><span class="title"><i class="icon anm anm-angle-right-l"></i>{{$page->title}}</span></div>
                    <!--End Breadcrumbs-->
                </div>
            </div>
        </div>
    </div>
    <!--End Page Header-->

    <!--Main Content-->
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-3 blog-sidebar sidebar sidebar-bg">
                <!--Sidebar-->
                <div class="sidebar-tags sidebar-sticky clearfix">
                   
                    <!--Recent Posts-->
                    <div class="sidebar-widget clearfix">
                        <div class="widget-title"><h2>Recent Posts</h2></div>
                        <div class="widget-content">
                            <div class="list list-sidebar-products">
                                @foreach($recent as $r)
                                <div class="mini-list-item d-flex align-items-center w-100 clearfix">
                                    <div class="mini-image"><a class="item-link" href="{{url('blogs/'.$r->slug)}}"><img class="featured-image blur-up lazyload" data-src="{{asset('uploads/'.$r->image)}}" src="{{asset('uploads/'.$r->image)}}" alt="{{$r->title}}" width="100" height="100" /></a></div>
                                    <div class="ms-3 details">
                                        <a class="item-title" href="{{url('blogs/'.$r->slug)}}">{{$r->title}}</a>
                                        <div class="item-meta opacity-75"><time datetime="{{date('Y-m-d', strtotime($page->created_at))}}">{{date('F d, Y', strtotime($page->created_at))}}</time></div>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <!--End Recent Posts-->
                </div>
                <!--End Sidebar-->
            </div>

            <!-- Blog Content-->
            <div class="col-12 col-sm-12 col-md-12 col-lg-9 main-col">
                <div class="blog-article"> 
                    <div class="blog-img mb-3">
                        <img class="rounded-0 blur-up lazyload" data-src="{{asset('uploads/'.$page->image)}}" src="{{asset('uploads/'.$page->image)}}" alt="{{$page->title}}" width="1200" height="700" />
                    </div>
                    <!-- Blog Content -->
                    <div class="blog-content">
                        <h2 class="h1">{{$page->title}}</h2>
                        <ul class="publish-detail d-flex-wrap">                      
                            <li><i class="icon anm anm-clock-r"></i> <time datetime="{{date('Y-m-d', strtotime($page->created_at))}}">{{date('F d, Y', strtotime($page->created_at))}}</time></li>
                        </ul>
                        <hr />
                        <div class="content">
                            {!! $page->description !!}
                        </div>
                        <hr />
                        <div class="row blog-action d-flex-center justify-content-between">
                            <div class="col-lg-6 mt-2 mt-lg-0 social-sharing d-flex-center justify-content-lg-end">
                                <span class="sharing-lbl fw-600">Share :</span>
                                <a href="#" class="d-flex-center btn btn-link btn--share share-facebook" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on Facebook"><i class="icon anm anm-facebook-f"></i><span class="share-title d-none">Facebook</span></a>
                                <a href="#" class="d-flex-center btn btn-link btn--share share-facebook" data-bs-toggle="tooltip" data-bs-placement="top" title="Tweet on Twitter"><i class="icon anm anm-twitter"></i><span class="share-title d-none">Twitter</span></a>
                                <a href="#" class="d-flex-center btn btn-link btn--share share-facebook" data-bs-toggle="tooltip" data-bs-placement="top" title="Pin on Pinterest"><i class="icon anm anm-pinterest-p"></i><span class="share-title d-none">Pinterest</span></a>
                                <a href="#" class="d-flex-center btn btn-link btn--share share-facebook" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on Instagram"><i class="icon anm anm-linkedin-in"></i><span class="share-title d-none">Instagram</span></a>
                                <a href="#" class="d-flex-center btn btn-link btn--share share-facebook" data-bs-toggle="tooltip" data-bs-placement="top" title="Share by Email"><i class="icon anm anm-envelope-l"></i><span class="share-title d-none">Email</span></a>
                            </div>
                        </div>
                        <!-- Blog Nav -->
                        <div class="blog-nav d-flex-center justify-content-between mt-3">
                            @if($previous)
                            <div class="nav-prev fs-14"><a href="{{url('blogs/'.$previous->slug)}}"><i class="align-middle me-2 icon anm anm-angle-left-r"></i><span class="align-middle">Previous post</span></a></div>
                            @endif
                            @if($next)
                            <div class="nav-next fs-14"><a href="{{url('blogs/'.$next->slug)}}"><span class="align-middle">Next post</span><i class="align-middle ms-2 icon anm anm-angle-right-r"></i></a></div>
                            @endif
                        </div>
                        <!-- End Blog Nav -->
                    </div>
                    <!-- End Blog Content -->
                </div>
            </div>
            <!--End Blog Content-->
        </div>
    </div>
    <!--End Main Content-->
</div>
@endsection
    