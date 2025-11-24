@extends('front.layout')
@section('content')
<div class="page-header text-center">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12 d-flex justify-content-between align-items-center">
                    <div class="page-title"><h1>Order Id : {{$page->order_id}}</h1></div>
                    <!--Breadcrumbs-->
                    <div class="breadcrumbs"><a href="{{url('/')}}" title="Back to the home page">Home</a><span class="main-title"><i class="icon anm anm-angle-right-l"></i>Order</span></div>
                    <!--End Breadcrumbs-->
                </div>
            </div>
        </div>
    </div>
   <div class="container">
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
                                    $product = json_decode($page->productCheckout);
                                    $checkout = json_decode($page->couponCheckout);
                                    @endphp
                                    @foreach($product as $p)
                                    <tr>
                                        <td class="text-start"><a href="javascript:void(0)" class="thumb"><img class="rounded-0 blur-up lazyloaded" data-src="{{asset('public/uploads/'.$p->product_image)}}" src="{{asset('public/uploads/'.$p->product_image)}}" alt="{{$p->product_title}}" title="product" width="120" height="170"></a></td>
                                        <td class="text-start proName">
                                            <div class="list-view-item-title">
                                                <a href="javascript:void(0)">{{$p->product_title}}</a>
                                            </div>
                                            <div class="cart-meta-text">
                                                Color: {{$p->product_variant}}
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
                            <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="shipping-details mb-4 mb-sm-0">
                                    <h3 class="title mb-3 text-white">Order details</h3>
                                    <p>Order ID: {{$page->order_id}}</p>
                                    <p>Order Date: {{date('d F, Y', strtotime($page->created_at))}}</p>
                                    <p>Order Total: ₹{{$checkout[0]->finalAmount}}</p>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="shipping-details mb-4 mb-sm-0">
                                    <h3 class="title mb-3 text-white">Payment Details</h3>
                                    <p>Payment Status: {{$page->payment_status}}</p>
                                    <p>Transaction Id: {{$page->transaction_id}}</p>
                                    <p>Transaction Amount: ₹{{$page->paid_amount}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @if($page->order_status > 1)
                @php
                $shipping = json_decode($page->shipping_details);
                @endphp
                <div class="block mt-4">
                    <div class="block-content">  
                        <div class="row g-0">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="shipping-details mb-4 mb-sm-0">
                                    <h3 class="title mb-3 text-white">Shipping Details</h3>
                                    <p>Tracking ID: {{$shipping->tracking_id}}</p>
                                    <p>Shipping Date: {{$shipping->shipping_date}}</p>
                                    <p>Tracking Link: {{$shipping->tracking_link}}</p>
                                    <p>Shipping Company: {{$shipping->shipping_company}}</p>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                                <div class="shipping-details mb-4 mb-sm-0">
                                    @if($page->order_status === '3')
                                    <h3 class="title mb-3 text-white">Delivery Details</h3>
                                    <p>Delivered Date: {{date('d F, Y', strtotime($page->delivery_date))}}</p>
                                    @endif
                                    @if($page->order_status === '4')
                                    <h3 class="title mb-3 text-white">Cancellation Details</h3>
                                    <p class="text text-danger">Cancelled Reason: {{$page->cancelled_reason}}</p>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endif
                <!--End Order Details-->
    
                <!--Order Delivery-->
                <div class="d-flex-wrap w-100 mt-4 text-center">
                    <a href="{{url('account')}}" class="d-inline-flex align-items-center btn btn-outline-primary me-2 mb-2 me-sm-3"><i class="me-2 icon an an-angle-left-r"></i>Back</a>
                </div>
                <!--Order delivery-->
            </div>
        </div>
    </div>
@endsection
    