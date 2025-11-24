<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderModel extends Model
{
    use HasFactory;
    public $table = 'orders';
    protected $fillable = [
        'order_id','user_id','productCheckout','couponCheckout','paid_amount','payment_status','transaction_id', 'order_status', 'shipping_details', 'delivery_date', 'cancelled_reason'
    ];
}
