<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CouponModel extends Model
{
    use HasFactory;
    public $table = 'coupon';
    protected $fillable = [
        'title','code','coupon_type','min_amount', 'coupon_validity', 'particular_date', 'from_date', 'to_date'
    ];
}
