@extends('admin.layouts.main-layout')
@section('content')   
<!--  Header End -->
<div class="container-fluid">
   <div class="card bg-light-info shadow-none position-relative overflow-hidden">
      <div class="card-body px-4 py-3">
         <div class="row align-items-center">
            <div class="col-9">
               <h4 class="fw-semibold mb-8">{{$orders->order_id}}</h4>
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item"><a class="text-muted " href="{{url('admin/dashboard')}}">Dashboard</a></li>
                     <li class="breadcrumb-item" aria-current="page">Manage {{$page_title}}</li>
                  </ol>
               </nav>
            </div>
            <div class="col-3">
               <div class="text-center mb-n5">  
                  <img src="{{asset('backend')}}/dist/images/breadcrumb/ChatBc.png" alt="" class="img-fluid mb-n4">
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="checkout">
            <div class="card shadow-none border">
              <div class="card-body p-4">
                <div class="wizard-content">
                    </div><div class="content clearfix">
                    <!-- Step 1 -->
                        <div class="mb-2 row">
                          <div class="col-md-12 text-center">
                             <h5 class="mb-0">Manage {{$page_title}} ({{$orders->order_id}})</h5><br>
                          </div>
                       </div>                    
                       <section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false" style="">
                          <div class="billing-address-content">
                            <div class="row">
                                @php
                                $addresss = json_decode($address->address_details);
                                @endphp
                              @if($customer)
                              <div class="col-lg-4">
                                <div class="card shadow-none border">
                                  <div class="card-body p-4">
                                       <p><strong>Customer Details</strong></p>
                                    <h6 class="mb-3 fs-4 fw-semibold">{{$customer->name}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-message fs-7"></i>{{$customer->email}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-device-mobile fs-7"></i>{{$customer->phone}}</h6>
                                  </div>
                                </div>
                                
                              </div>
                              @else
                              <div class="col-lg-4">
                                <div class="card shadow-none border">
                                  <div class="card-body p-4">
                                       <p><strong>Customer Details (Guest)</strong></p>
                                    <h6 class="mb-3 fs-4 fw-semibold">{{$addresss->shipping_fname}} {{$addresss->shipping_lname}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-message fs-7"></i>{{$addresss->email}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-device-mobile fs-7"></i>{{$addresss->phone}}</h6>
                                  </div>
                                </div>
                                
                              </div>
                              @endif
                              <div class="col-lg-4">
                                <div class="card shadow-none border">
                                  <div class="card-body p-4">
                                     <p><strong>Billing Details</strong></p>
                                    <h6 class="mb-3 fs-4 fw-semibold">
                                        
                                        {{$addresss->shipping_fname}} {{$addresss->shipping_lname}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-location fs-7"></i>{{$addresss->address.', '.$addresss->state.', '.$addresss->country.', '.$addresss->pincode}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-message fs-7"></i>{{$addresss->email}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-device-mobile fs-7"></i>{{$addresss->phone}}</h6>
                                 
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-4">
                                <div class="card shadow-none border">
                                  <div class="card-body p-4">
                                      <p><strong>Shipping Details</strong></p>
                                    <h6 class="mb-3 fs-4 fw-semibold">
                                        {{$addresss->shipping_fname}} {{$addresss->shipping_lname}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-location fs-7"></i>{{$addresss->shipping_address.', '.$addresss->shipping_state.', '.$addresss->shipping_country.', '.$addresss->shipping_pincode}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-message fs-7"></i>{{$addresss->email}}</h6>
                                    <h6 class="d-flex align-items-center gap-2 my-4 fw-semibold fs-4"><i class="ti ti-device-mobile fs-7"></i>{{$addresss->phone}}</h6>
                                   
                                  </div>
                                </div>
                              </div>
                              <div class="col-lg-4">
                                <div class="card shadow-none border">
                                  <div class="card-body p-4">
                                      <p><strong>Transaction Details</strong></p>
                                    <h6 class="mb-3 fs-4 fw-semibold">Payment Status  : {{ucwords(!empty($orders->payment_status) ? $orders->payment_status : 'Pending' )}}</h6>
                                    <h6 class="mb-3 fs-4 fw-semibold">Transaction Id  : {{$orders->transaction_id ? $orders->transaction_id : '-'}}</h6>
                                    <h6 class="mb-3 fs-4 fw-semibold">Amount  : ₹{{$orders->paid_amount}}</h6>
                                  </div>
                                </div>
                              </div>
                              @if($orders->payment_status === 'success')
                              <div class="col-lg-12">
                              
                                <div class="card shadow-none border">
                                  <div class="card-body p-4 row">
                                      <form id="product-status-form" style="display: flex;flex-wrap: wrap;">
                                       <div class="col-md-3 mb-3">
                                       <p><strong>Update Order Status</strong></p>
                                       @php
                                       $status = array('Placed', 'Shipped', 'Delivered', 'Cancelled')
                                       @endphp
                                       <select class="form-control" name="order_status" id="order_status" >
                                           @foreach($status as $key => $s)
                                            <option value="{{$key + 1}}" <?= $orders->order_status == $key + 1 ? 'selected' : ''?> >{{$s}}</option>
                                           @endforeach
                                       </select>
                                       <input type="hidden" name="order_id" id="order_id" value="{{$orders->id}}" />
                                       </div>
                                       <div class="col-sm-3 shipping">
                                           <p><strong>Tracking ID</strong></p>
                                           <input type="text" class="form-control" placeholder="Tracking ID" name="tracking_id" id="tracking_id"/>
                                       </div>
                                       <div class="col-sm-3 shipping">
                                           <p><strong>Tracking Link</strong></p>
                                           <input type="text" class="form-control" placeholder="Tracking Link" name="tracking_link" id="tracking_link"/>
                                       </div>
                                       <div class="col-sm-3 shipping">
                                           <p><strong>Shipping Company</strong></p>
                                           <input type="text" class="form-control" placeholder="Shipping Company" name="shipping_company" id="shipping_company"/>
                                       </div>
                                       <div class="col-sm-3 shipping">
                                           <p><strong>Shipping Date</strong></p>
                                           <input type="date" class="form-control" placeholder="Shipping Date" name="shipping_date" id="shipping_date"/>
                                       </div>
                                       <div class="col-sm-3 delivery">
                                           <p><strong>Delivery Date</strong></p>
                                           <input type="date" class="form-control" placeholder="Delivery Date" name="delivery_date" id="delivery_date" value="{{$orders->delivery_date}}"/>
                                       </div>
                                       <div class="col-sm-9 cancelled">
                                           <p><strong>Cancelled Reason</strong></p>
                                           <input type="text" class="form-control" placeholder="Cancelled Reason" name="cancelled_reason" id="cancelled_reason" value="{{$orders->cancelled_reason}}"/>
                                       </div>
                                       <div class="col-sm-12 mt-3">
                                           <button type="submit" class="btn btn-info rounded-pill px-4 waves-effect waves-light">Save</button>
                                       </div>
                                   </form>
                                    <div class="col-sm-12 mt-5">
                                         @if($orders->order_status > 1)
                                         @php
                                         $shipping = json_decode($orders->shipping_details);
                                         @endphp
                                            <table class="table striped-table">
                                                <tr>
                                                    <th>Order ID</th>
                                                    <th>Order Status</th>
                                                    <th>Status Details</th>
                                                </tr>
                                                <tr>
                                                    <td>{{$orders->order_id}}</td>
                                                    <td>
                                                        @foreach($status as $key => $s)
                                                        @if($key + 1 == $orders->order_status)
                                                        {{$s}}
                                                        @endif
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                       
                                                        <strong>Tracking ID : </strong> {{isset($shipping->tracking_id) ? $shipping->tracking_id : ''}}<br>
                                                        <strong>Tracking Link : </strong> {{isset($shipping->tracking_link) ? $shipping->tracking_link : ''}}<br>
                                                        <strong>Shipping Company : </strong> {{isset($shipping->shipping_company) ? $shipping->shipping_company : ''}}<br>
                                                        <strong>Shipping Date : </strong> {{isset($shipping->shipping_date) ? $shipping->shipping_date : ''}}<br>
                                                        <strong>Delivery Date : </strong> {{isset($orders->delivery_date) ? $orders->delivery_date : ''}}<br>
                                                        @if($orders->order_status == 4)
                                                        <strong>Cancelled Reason : </strong> {{$orders->cancelled_reason}}
                                                        @endif
                                                    </td>
                                                </tr>
                                            </table>
                                            @endif
                                    </div>
                                  </div>
                                </div>
                                
                               
                                </div>
                            @endif
                            </div>
                          </div>
                        
                        @php
                        $order = json_decode($orders->productCheckout);
                        @endphp
                      <div>
                        <table class="table border align-middle text-nowrap mb-0 table-striped">
                          <thead class="fs-2">
                            <tr>
                              <th>Product</th>
                              <th>Rate</th>
                              <th>Quantity</th>
                              <th class="text-end">Price</th>
                            </tr>
                          </thead>
                          <tbody>
                              @foreach($order as $o)
                            <tr>
                                
                              <td class="border-bottom-0">
                                <div class="d-flex align-items-center gap-3 overflow-hidden">
                                  <img src="{{url('uploads/'.$o->product_image)}}" alt="{{$o->product_title}}" class="img-fluid rounded" width="80">
                                  <div>
                                    <h6 class="fw-semibold fs-4 mb-0">{{$o->product_title}}</h6>
                                    <p class="mb-0">{{$o->product_variant}}</p>
                                  </div>
                                </div>
                              </td>
                               <td class="border-bottom-0">
                                <div class="input-group input-group-sm flex-nowrap rounded">
                                  ₹{{$o->product_price}}
                                </div>
                              </td>
                              <td class="border-bottom-0">
                                <div class="input-group input-group-sm flex-nowrap rounded">
                                  {{$o->quantity}}
                                </div>
                              </td>
                              <td class="text-end border-bottom-0">
                                <h6 class="fs-4 fw-semibold mb-0">₹{{$o->product_price * $o->quantity}}</h6>
                              </td>
                            </tr>
                            @endforeach
                          </tbody>
                        </table>
                      </div>
                        @php
                        $amount = json_decode($orders->couponCheckout);
                        @endphp
                      <div class="order-summary border rounded p-4 my-4">
                        <div class="p-3">
                          <h5 class="fs-5 fw-semibold mb-4">Order Summary</h5>
                          <div class="d-flex justify-content-between mb-4">
                            <p class="mb-0 fs-4">Sub Total</p>
                            <h6 class="mb-0 fs-4 fw-semibold">₹{{$amount[0]->subTotal}}</h6>
                          </div>
                          <div class="d-flex justify-content-between mb-4">
                            <p class="mb-0 fs-4">Shipping Charge</p>
                            <h6 class="mb-0 fs-4 fw-semibold">₹{{$amount[0]->shippingValue}}</h6>
                          </div>
                          @if($amount[0]->coupon != '')
                          <div class="d-flex justify-content-between mb-4">
                            <p class="mb-0 fs-4">Discount ({{$amount[0]->coupon}})</p>
                            <h6 class="mb-0 fs-4 fw-semibold text-danger">-₹{{$amount[0]->couponValue}}</h6>
                          </div>
                          @endif
                          <div class="d-flex justify-content-between">
                            <h6 class="mb-0 fs-4 fw-semibold">Total</h6>
                            <h6 class="mb-0 fs-5 fw-semibold">₹{{$amount[0]->finalAmount}}</h6>
                          </div>
                        </div>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </div>
          </div>
</div>
</div>
</div>
<script>
    $('.shipping, .delivery, .cancelled').hide();
    $('#order_status').change(function(){
       if($('#order_status').val() == 2){
           $('.shipping').show();
           $('.delivery, .cancelled').hide();
       }else if($('#order_status').val() == 3){
           $('.delivery').show();
           $('.shipping, .cancelled').hide();
       }else if($('#order_status').val() == 4){
           $('.cancelled').show();
           $('.shipping, .delivery').hide();
       }else{
           $('.shipping, .delivery, .cancelled').hide();
       }
    });
</script>
<script>
   $(document).ready(function() {
     $('#product-status-form').on('submit', function(event) {
         event.preventDefault();
         
         var formData = new FormData(this);
         $.ajaxSetup({
             headers: {
                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
             }
         });
         $.ajax({
             type: 'POST',
             url: '{{url("/admin/update-order-status")}}',
             data: formData,
             cache: false,
            contentType: false,
            processData: false,
             success: function(response) {
                 if (response.status == 'success') {
                    $('.success').attr('style', 'display:block');
                    $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.success').attr('style', 'display:block');
                     
                 } else {
   
                     $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.failed').attr('style', 'display:block');
                 }
             },
             error: function() {
                     $('.swal2-title').html(response.status);
                     $('.swal2-msg').html(response.msg);
                     $('.failed').attr('style', 'display:block');
             }
         });
     });
   });
</script>
@endsection