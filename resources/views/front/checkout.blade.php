@extends('front.layout')
@section('content')  
<!--Main Content-->
<section class="cart pt-5">
<div class="container">     
    <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12">  
            <!--Nav step checkout-->
            <div id="nav-tabs" class="step-checkout">
                <ul class="nav nav-tabs step-items">
                    <li class="nav-item onactive">
                        <a class="nav-link active" data-bs-toggle="tab">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" id="check">Checkout Method</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" id="add">Address</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" id="ord">Order Summary</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" id="paym">Payment</a>
                    </li>
                </ul>
            </div>
            <!--End Nav step checkout-->

            <!--Tab checkout content-->
            <div class="tab-content checkout-form">
                <div class="tab-pane active" id="steps0">
                    <div class="row">
        <!--Cart Content-->
        <div class="col-12 col-sm-12 col-md-12 col-lg-8 main-col">
            <div class="alert alert-success py-2 alert-dismissible fade show cart-alert" role="alert">
                <i class="align-middle icon anm anm-truck icon-large me-2"></i><strong class="text-uppercase">Congratulations!</strong> You've got free shipping!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <!--End Alert msg-->

            <!--Cart Form-->
            <form action="#" method="post" class="cart-table table-bottom-brd">
                <table class="table align-middle">
                    <thead class="cart-row cart-header small-hide position-relative">
                        <tr>
                            <th class="action">&nbsp;</th>
                            <th colspan="2" class="text-start">Product</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Quantity</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody id="cartTable"></tbody>
                    <tfoot>
                        <tr>
                            <td colspan="3" class="text-start"><a href="{{url('/shop')}}" class="btn btn-outline-secondary btn-sm cart-continue"><i class="icon anm anm-angle-left-r me-2 d-none"></i> Continue shopping</a></td>
                            <td colspan="3" class="text-end">
                                <button type="submit" name="clear" class="btn btn-outline-secondary btn-sm small-hide" id="clearCart"><i class="icon anm anm-times-r me-2 d-none"></i> Clear Shopping Cart</button>
                            </td>
                        </tr>
                    </tfoot>
                </table> 
            </form>    
            <!--End Cart Form-->
        </div>
        <!--End Cart Content-->

        <!--Cart Sidebar-->
        <div class="col-12 col-sm-12 col-md-12 col-lg-4 cart-footer">
            <div class="block mb-3 apply-code mb-4">
                    <div class="block-content">
                        <h3 class="title mb-3">Apply Promocode</h3>
                        <div id="coupon" class="coupon-dec">
                            <form class="coupon-form">
                                <div class="input-group mb-0 d-flex">
                                    <input type="hidden" class="form_control finalAmount" required name="totalAmount">
                                    <input id="code" required name="code" type="text" class="form-control" placeholder="Promotion/Discount Code">
                                    <button class="coupon-btn btn btn-primary apply" type="submit">Apply</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            <div class="cart-info sidebar-sticky">
                <div class="cart-order-detail cart-col">
                    <div class="row g-0 border-bottom pb-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Subtotal</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">₹<span  id="subTotal">0.00</span></span></span>
                    </div>
                    <div class="row g-0 border-bottom py-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Coupon Discount</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">-₹<span  class="couponAmount" id="discount">0.00</span></span></span>
                    </div>
                    <div class="row g-0 border-bottom py-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Shipping</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">₹<span id="shipping">0.00</span></span></span>
                    </div>
                    <div class="row g-0 pt-2">
                        <span class="col-6 col-sm-6 cart-subtotal-title fs-6"><strong>Total</strong></span>
                        <span class="col-6 col-sm-6 cart-subtotal-title fs-5 cart-subtotal text-end text-primary"><b class="money" >₹<span id="totalAmount">0.00</span></b></span>
                    </div>

                    <!--<p class="cart-shipping mt-3">Shipping &amp; taxes calculated at checkout</p>-->
                    <p class="cart-shipping fst-normal freeShipclaim"><i class="me-2 align-middle icon anm anm-truck-l"></i><b>FREE SHIPPING</b> ELIGIBLE</p>
                    <!--<div class="customCheckbox cart-tearm">-->
                    <!--    <input type="checkbox" value="allen-vela" id="cart-tearm">-->
                    <!--    <label for="cart-tearm">I agree with the terms and conditions</label>-->
                    <!--</div>-->
                    <input type="hidden" class="couponValue"/>
                    <a href="javascript:void(0)" id="checkout" class="btn btn-lg my-4 checkout w-100">Proceed To Checkout</a>
                    <div class="paymnet-img text-center"><img src="{{url('public/frontend')}}/assets/images/icons/safepayment.png" alt="Payment" width="299" height="28" /></div>
                </div>                               
            </div>
        </div>
        <!--End Cart Sidebar-->
    </div>
                </div>
                    <div class="tab-pane fade" id="steps1">
                        <div class="row">
                            @if(Auth::guard('customer')->user())
                            <div class="col-12 col-md-12 text-center">
                                <h3>You Are Logged in as {{ucwords(Auth::guard('customer')->user()->name)}}</h3>
                                <a href="javascript:void(0)" id="proceedAddress" class="btn btn-primary">Continue</a>
                            </div>
                            @else
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 mb-4 mb-md-0">
                                <div class="block h-100">
                                    <div class="block-content">
                                        <h3 class="title">Check As a Guest or Register</h3>
                                        <p class="text-gray">Register with us for future convenience:</p>
                                        <ul class="list-unstyled radio-group mb-4">
                                            <li>
                                                <div class="checkout customRadio">
                                                    <input type="radio" id="option-1" name="checkout_method" checked="" value="guest"/>
                                                    <label for="option-1"> Checkout as guest</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkout customRadio">
                                                    <input type="radio" id="option-2" name="checkout_method" value="register"/>
                                                    <label for="option-2"> Register</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkout customRadio">
                                                    <input type="radio" id="option-3" name="checkout_method" value="login"/>
                                                    <label for="option-3"> Already Register ? Please Login</label>
                                                </div>
                                            </li>
                                        </ul>
                                        <h3 class="title">Register and save time !</h3>
                                        <p class="text-gray">Register with us for future convenience:</p>
                                        <ul class="lists-style1 text-gray mb-3">
                                            <li>Fast and easy check out</li>
                                            <li>Easy access to your order history and status</li>
                                        </ul>
                                        <a href="javascript:void(0)" id="proceedAddress" class="btn btn-primary">Continue</a>
                                        <!--<button type="submit" name="Continue" class="btn btn-secondary ms-2 btnNext">Next Address</button>-->
                                    </div>
                                </div>
                            </div>
                            @endif
                            
                        </div>
                    </div>
                    <div class="tab-pane fade" id="steps2">
                        <!--Shipping Address-->
                        <div class="block shipping-address mb-4">
                            <div class="block-content">
                                @if(Auth::guard('customer')->user())
                                @php
                                    $saved_address = DB::table('saved_address')->where('user_id', Auth::guard('customer')->user()->id)->get();
                                @endphp
                                @if(count($saved_address) > 0)
                                    <h3 class="title mb-3">Select Address</h3>
                                    <ul class="list-unstyled radio-group mb-4">
                                        @foreach($saved_address as $key => $sa)
                                        <li>
                                            <div class="checkout customRadio">
                                                <input type="radio" id="option-{{$key}}" name="address_id" value="{{$sa->id}}"/>
                                                <label for="option-{{$key}}">
                                                    @php
                                                    $address = json_decode($sa->address_details);
                                                    @endphp
                                                    {!! $address->shipping_address.'<br>'.$address->shipping_pincode.'<br>'.$address->shipping_state.'<br>'.$address->shipping_country !!}
                                                </label>
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                @endif
                                @endif
                                <h2 class="text-center">Or Add New Address</h2>
                                <h3 class="title mb-3">Shipping Address</h3>
                                <fieldset>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="firstname" class="form-label">First Name <span class="required">*</span></label>
                                            <input name="shipping_fname" value="" id="shipping_fname" type="text" required="" class="form-control">
                                        </div>
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="lastname" class="form-label">Last Name <span class="required">*</span></label>
                                            <input name="shipping_lname" value="" id="shipping_lname" type="text" required="" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="email" class="form-label">E-Mail <span class="required">*</span></label>
                                            <input name="email" value="" id="email" type="email" required="" class="form-control">
                                        </div>
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="phone" class="form-label">Phone <span class="required">*</span></label>
                                            <input name="phone" value="" id="phone" type="tel" required="" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="address-1" class="form-label">Address <span class="required">*</span></label>
                                            <input name="shipping_address" value="" id="shipping_address" type="text" required="" placeholder="Street address" class="form-control">
                                        </div>
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="address-1" class="form-label d-none d-sm-block">&nbsp;</label>
                                            <input name="shipping_address1" value="" id="shipping_address1" type="text" required="" placeholder="Apartment, suite, unit etc. (optional)" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="postcode" class="form-label">Postcode / ZIP <span class="required">*</span></label>
                                            <input name="shipping_postcode" value="" id="shipping_postcode" type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="address_country1" class="form-label">Country <span class="required">*</span></label>
                                            <select id="shipping_country" name="shipping_country" data-default="United States" class="form-control">
                                                <option value="india" selected label="India">India</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="address_State" class="form-label">State <span class="required">*</span></label>
                                            <input name="shipping_state" value="" id="shipping_state" type="text" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <!--End Shipping Address-->
                        <!--Billing Address-->
                        <div class="block billing-address mb-4">
                            <div class="block-content">
                                <h3 class="title mb-3">Billing Address</h3>
                                <fieldset>
                                    <div class="row">
                                        <div class="form-group col-md-12 col-lg-12">
                                            <div class="checkout-tearm customCheckbox">
                                                <input id="add_tearm" name="tearm" type="checkbox" value="checkout tearm" required />
                                                <label for="add_tearm"> The same as shipping address</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="address-11" class="form-label">Address <span class="required">*</span></label>
                                            <input name="billing_address" value="" id="billing_address" type="text" required="" placeholder="Street address" class="form-control">
                                        </div>
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="address-12" class="form-label d-none d-sm-block">&nbsp;</label>
                                            <input name="billing_address1" value="" id="billing_address1" type="text" required="" placeholder="Apartment, suite, unit etc. (optional)" class="form-control">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="postcode2" class="form-label">Postcode / ZIP <span class="required">*</span></label>
                                            <input name="billing_postcode" value="" id="billing_postcode" type="text" class="form-control">
                                        </div>
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">
                                            <label for="address_country2" class="form-label">Country <span class="required">*</span></label>
                                            <select id="billing_country" name="billing_country" data-default="United States" class="form-control">
                                                <option value="india" selected label="India">India</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6 mb-sm-0">
                                            <label for="address_State1" class="form-label">State <span class="required">*</span></label>
                                            <input name="billing_state" value="" id="billing_state" type="text" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <!--End Billing Address-->
    
                        <div class="d-flex justify-content-between">
                            <!--<button type="button" class="btn btn-secondary btnPrevious me-1">Back to Checkout Method</button>-->
                            <a href="javascript:void(0)" class="btn btn-primary btnNext ms-1 payment">Continue</a>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="steps3">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-7 col-lg-8">
                                <!--Order Summary-->
                                <div class="block order-summary">
                                    <div class="block-content">
                                        <h3 class="title mb-3">Order Summary</h3>
                                        <div class="table-responsive table-bottom-brd order-table"> 
                                            <table class="table table-hover align-middle mb-0">
                                                <thead>
                                                    <tr>
                                                        <th class="text-start">Image</th>
                                                        <th class="text-start proName">Product</th>
                                                        <th class="text-center">Price</th>
                                                        <th class="text-center">Qty</th>
                                                        <th class="text-center">Subtotal</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="checkOutItems"></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!--End Order Summary-->
                                <!--Order Comment-->
                                <div class="block order-comments my-4">
                                    <div class="block-content">
                                        <h3 class="title mb-3">Order Comment</h3>
                                        <fieldset>
                                            <div class="row">
                                                <div class="form-group col-md-12 col-lg-12 col-xl-12 mb-0">
                                                    <textarea class="resize-both form-control" rows="3" id="notes" name="notes" placeholder="Place your comment here"></textarea>
                                                    <small class="mt-2 d-block">*Savings include promotions, coupons, rueBUCKS, and shipping (if applicable).</small>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                                <!--End Order Comment-->
                            </div>
                            <div class="col-12 col-sm-12 col-md-5 col-lg-4">
                                <!--Apply Promocode-->
                                
                                <!--End Apply Promocode-->
                                <!--Cart Summary-->
                                <div class="cart-info mb-4">
                                    <div class="cart-order-detail cart-col">
                                        <div class="row g-0 border-bottom pb-2">
                                            <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Subtotal</strong></span>
                                            <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">₹<span  id="checkoutSubTotal">0.00</span></span></span>
                                        </div>
                                        <div class="row g-0 border-bottom py-2">
                                            <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Coupon Discount</strong></span>
                                            <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">-₹<span  class="checkoutCouponAmount">0.00</span></span></span>
                                        </div>
                                        <div class="row g-0 border-bottom py-2">
                                            <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Shipping</strong></span>
                                            <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">₹<span  class="checkoutShipping">0.00</span></span></span>
                                        </div>
                                        <div class="row g-0 pt-2">
                                            <span class="col-6 col-sm-6 cart-subtotal-title fs-6"><strong>Total</strong></span>
                                            <span class="col-6 col-sm-6 cart-subtotal-title fs-5 cart-subtotal text-end text-primary"><b class="money">₹<span  class="checkoutFinalAmount">0.00</span></b></span>
                                        </div>
                                    </div>                               
                                </div>
                                <!--Cart Summary-->
                            </div>
                        </div>
    
                        <div class="d-flex justify-content-between">
                            <input type="hidden" name="couponCheckout" id="couponCheckout" />
                            <input type="hidden" name="productCheckout" id="productCheckout" />
                            <button id="paymentProceed" class="btn btn-primary ms-1 btnNext">Proceed to Payment</button>
                        </div>
                    </div>
                <!--<div class="tab-pane fade" id="steps4">-->
                <!--    <div class="row">-->
                <!--        <div class="col-12 col-sm-12 col-md-7 col-lg-8">-->
                            <!--Delivery Methods-->
                <!--            <div class="block mb-3 delivery-methods mb-4">-->
                <!--                <div class="block-content">-->
                <!--                    <h3 class="title mb-3">Delivery Methods</h3>-->
                <!--                    <div class="delivery-methods-content">-->
                <!--                        <div class="customRadio clearfix">-->
                <!--                            <input id="formcheckoutRadio1" value="" name="radio1" type="radio" class="radio" checked="checked"> -->
                <!--                            <label for="formcheckoutRadio1" class="mb-0">Standard Delivery $2.99 (3-5 days)</label>-->
                <!--                        </div>-->
                <!--                        <div class="customRadio clearfix">-->
                <!--                            <input id="formcheckoutRadio2" value="" name="radio1" type="radio" class="radio"> -->
                <!--                            <label for="formcheckoutRadio2" class="mb-0">Express Delivery $10.99 (1-2 days)</label>-->
                <!--                        </div>-->
                <!--                        <div class="customRadio clearfix mb-0">-->
                <!--                            <input id="formcheckoutRadio3" value="" name="radio1" type="radio" class="radio"> -->
                <!--                            <label for="formcheckoutRadio3" class="mb-0">Same-Day $20.00 (Evening Delivery)</label>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                </div>-->
                <!--            </div>-->
                            <!--End Delivery Methods-->
                            <!--Payment Methods-->
                <!--            <div class="block mb-3 payment-methods mb-4">-->
                <!--                <div class="block-content">-->
                <!--                    <h3 class="title mb-3">Payment Methods</h3>                                     -->
                <!--                    <div class="payment-accordion-radio">-->
                <!--                        <div class="accordion" id="accordionExample">-->
                <!--                            <div class="accordion-item card mb-2">-->
                <!--                                <div class="card-header" id="headingOne">-->
                <!--                                    <button class="card-link" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">-->
                <!--                                        <span class="customRadio clearfix mb-0">-->
                <!--                                            <input id="paymentRadio1" value="" name="payment" type="radio" class="radio" checked="checked" /> -->
                <!--                                            <label for="paymentRadio1" class="mb-0">Pay with credit card</label>-->
                <!--                                        </span>-->
                <!--                                    </button>-->
                <!--                                </div>-->
                <!--                                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">-->
                <!--                                    <div class="card-body px-0">-->
                <!--                                        <fieldset>-->
                <!--                                            <div class="row">-->
                <!--                                                <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">-->
                <!--                                                    <label for="input-cardname">Name on Card <span class="required">*</span></label>-->
                <!--                                                    <input name="cardname" value="" placeholder="" id="input-cardname" class="form-control" type="text" pattern="[0-9\-]*">-->
                <!--                                                </div>-->
                <!--                                                <div class="form-group col-12 col-sm-6 col-md-6 col-lg-6">-->
                <!--                                                    <label>Credit Card Type <span class="required">*</span></label>-->
                <!--                                                    <select name="country_id" class="form-control">-->
                <!--                                                        <option value="">Please Select</option>-->
                <!--                                                        <option value="1">American Express</option>-->
                <!--                                                        <option value="2">Visa Card</option>-->
                <!--                                                        <option value="3">Master Card</option>-->
                <!--                                                        <option value="4">Discover Card</option>-->
                <!--                                                    </select>-->
                <!--                                                </div>-->
                <!--                                            </div>-->
                <!--                                            <div class="row">-->
                <!--                                                <div class="form-group col-12 col-sm-4 col-md-4 col-lg-4">-->
                <!--                                                    <label for="input-cardno">Credit Card Number  <span class="required">*</span></label>-->
                <!--                                                    <input name="cardno" value="" placeholder="" id="input-cardno" class="form-control" type="text" pattern="[0-9\-]*">-->
                <!--                                                </div>-->
                <!--                                                <div class="form-group col-12 col-sm-4 col-md-4 col-lg-4">-->
                <!--                                                    <label for="input-cvv">CVV Code <span class="required">*</span></label>-->
                <!--                                                    <input name="cvv" value="" placeholder="" id="input-cvv" class="form-control" type="text" pattern="[0-9\-]*">-->
                <!--                                                </div>-->
                <!--                                                <div class="form-group col-12 col-sm-4 col-md-4 col-lg-4">-->
                <!--                                                    <label>Expiration Date <span class="required">*</span></label>-->
                <!--                                                    <input type="date" name="exdate" class="form-control">-->
                <!--                                                </div>-->
                <!--                                                <div class="form-group col-12 col-sm-4 col-md-4 col-lg-4 mb-0">-->
                <!--                                                    <button class="btn btn-primary" type="submit">Submit</button>-->
                <!--                                                </div>-->
                <!--                                            </div>-->
                <!--                                        </fieldset>-->
                <!--                                    </div>-->
                <!--                                </div>-->
                <!--                            </div>-->
                <!--                            <div class="accordion-item card mb-2">-->
                <!--                                <div class="card-header" id="headingTwo">-->
                <!--                                    <button class="card-link" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">-->
                <!--                                        <span class="customRadio clearfix mb-0">-->
                <!--                                            <input id="paymentRadio2" value="" name="payment" type="radio" class="radio" /> -->
                <!--                                            <label for="paymentRadio2" class="mb-0">Pay with Paypal</label>-->
                <!--                                        </span>-->
                <!--                                    </button>-->
                <!--                                </div>-->
                <!--                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">-->
                <!--                                    <div class="card-body px-0">-->
                <!--                                        <p>Pay via PayPal you can pay with your credit card if you don't have a PayPal account.</p>-->
                <!--                                        <div class="input-group mb-0 d-flex">-->
                <!--                                            <input type="text" class="form-control" placeholder="paypal@example.com" required="">-->
                <!--                                            <button class="btn btn-primary" type="submit">Pay 99.00 USD</button>-->
                <!--                                        </div>-->
                <!--                                    </div>-->
                <!--                                </div>-->
                <!--                            </div>-->
                <!--                            <div class="accordion-item card mb-2">-->
                <!--                                <div class="card-header" id="headingThree">-->
                <!--                                    <button class="card-link" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">-->
                <!--                                        <span class="customRadio clearfix mb-0">-->
                <!--                                            <input id="paymentRadio3" value="" name="payment" type="radio" class="radio" /> -->
                <!--                                            <label for="paymentRadio3" class="mb-0">Cheque Payment</label>-->
                <!--                                        </span>-->
                <!--                                    </button>-->
                <!--                                </div>-->
                <!--                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">-->
                <!--                                    <div class="card-body px-0">-->
                <!--                                        <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>-->
                <!--                                    </div>-->
                <!--                                </div>-->
                <!--                            </div>-->
                <!--                            <div class="accordion-item card mb-0">-->
                <!--                                <div class="card-header" id="headingFour">-->
                <!--                                    <button class="card-link" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">-->
                <!--                                        <span class="customRadio clearfix mb-0">-->
                <!--                                            <input id="paymentRadio4" value="" name="payment" type="radio" class="radio" /> -->
                <!--                                            <label for="paymentRadio4" class="mb-0">Cash On Delivery</label>-->
                <!--                                        </span>-->
                <!--                                    </button>-->
                <!--                                </div>-->
                <!--                                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample"> -->
                <!--                                    <div class="card-body px-0">-->
                <!--                                        <p>Cash on delivery refers to an arrangement in which payment for a purchase is made directly by the purchaser to the person who delivers the item.</p>-->
                <!--                                    </div>-->
                <!--                                </div>-->
                <!--                            </div>-->
                <!--                        </div>-->
                <!--                    </div>-->
                <!--                </div>-->
                <!--            </div>-->
                            <!--End Payment Methods-->
                <!--        </div>-->
                <!--        <div class="col-12 col-sm-12 col-md-5 col-lg-4">-->
                            <!--Cart Summary-->
                <!--            <div class="cart-info">-->
                <!--                <div class="cart-order-detail cart-col">-->
                <!--                    <div class="row g-0 border-bottom pb-2">-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Subtotal</strong></span>-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">$226.00</span></span>-->
                <!--                    </div>-->
                <!--                    <div class="row g-0 border-bottom py-2">-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Coupon Discount</strong></span>-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">-$25.00</span></span>-->
                <!--                    </div>-->
                <!--                    <div class="row g-0 border-bottom py-2">-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Tax</strong></span>-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">$10.00</span></span>-->
                <!--                    </div>-->
                <!--                    <div class="row g-0 border-bottom py-2">-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title"><strong>Shipping</strong></span>-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title cart-subtotal text-end"><span class="money">Free shipping</span></span>-->
                <!--                    </div>-->
                <!--                    <div class="row g-0 pt-2">-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title fs-6"><strong>Total</strong></span>-->
                <!--                        <span class="col-6 col-sm-6 cart-subtotal-title fs-5 cart-subtotal text-end text-primary"><b class="money">$311.00</b></span>-->
                <!--                    </div>-->

                <!--                    <a href="order-success.html" id="cartCheckout" class="btn btn-lg my-4 checkout w-100">Place order</a>-->
                <!--                    <div class="paymnet-img text-center"><img src="assets/images/icons/safepayment.png" alt="Payment" width="299" height="28" /></div>-->
                <!--                </div>                               -->
                <!--            </div>-->
                            <!--Cart Summary-->
                <!--        </div>-->
                <!--    </div>-->
                <!--</div>-->
            </div>
            <!--End Tab checkout content-->
        </div>
    </div>
</div>
</section>
<!--End Main Content-->
@endsection