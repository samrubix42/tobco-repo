@extends('front.layout')
@section('content') 			
<div role="main" class="main">
    <section class="page-header page-header-modern page-header-background page-header-background-md  overlay overlay-color-dark overlay-show overlay-op-5 mt-0">
        <div class="container">
            <div class="row">
                <div class="col-md-12 order-2 order-md-1 text-center align-self-center p-static">
                    <h1>{{$page->title}}</h1>
                </div>
            </div>
        </div>
    </section>
   <div class="container pt-4 pb-5 my-5">
      <div class="row">
         <div class="col-lg-8 mb-5 mb-lg-0 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1600">
            <article>
               <div class="card border-0">
                  <div class="card-body z-index-1 p-0">
                     <div class="col-md-12 align-self-center p-static order-1">
                        <h1 class="font-weight-bold text-color-dark text-10">{{$page->title}}</h1>
                     </div>
                     <div class="post-image pb-4">
                        <img class="card-img-top custom-border-radius-1" src="{{url('public/uploads/'.$page->image)}}" alt="Card Image">
                     </div>
                     <div class="card-body p-0">
                        <p>{!! $page->description !!}</p>
                        <div class="addthis_inline_share_toolbox"></div>
                        <hr class="my-5">
                     </div>
                  </div>
               </div>
            </article>
         </div>
         <div class="blog-sidebar col-lg-4 pt-4 pt-lg-0 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1800">
            <aside class="sidebar">
               <div class="px-3 mt-4">
               @foreach($category as $c)
                  <h3 class="text-color-quaternary text-capitalize font-weight-bold text-5 m-0" style="background: #40e0d0;color: #fff !important;padding: 10px 15px;">{{$c->title}}</h3>
                  <ul class="nav nav-list flex-column mt-2 mb-0 p-relative right-9">
                    @foreach($service as $s)
                        @if($s->category == $c->id)
                            <li class="nav-item"><a class="nav-link bg-transparent border-0" href="{{url('services/'.$c->slug.'/'.$s->slug)}}">{{$s->title}}</a></li>
                        @endif
                    @endforeach
                  </ul>
                  <hr class="my-2">
                @endforeach
               </div>
            </aside>
         </div>
      </div>
   </div>
   <div class="position-relative pb-5 d-none d-xl-block">
      <div class="position-absolute transform3dy-n50 left-0">
         <div class="appear-animation" data-appear-animation="fadeInRightShorterPlus" data-appear-animation-delay="1500" data-appear-animation-duration="1500ms">
            <div class="custom-square-1 bg-primary mt-0 mb-5"></div>
         </div>
      </div>
   </div>
</div>
@endsection