<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model
{
    use HasFactory;
    public $table = 'product';
    protected $fillable = [
        'id','category', 'subcategory','title','slug','sku', 'size', 'color', 'unit_type','featured','popular','deals','deals_date','variance_data','image','description','short_description','additional_info','meta_title','meta_keyword','meta_description'
    ];
}
