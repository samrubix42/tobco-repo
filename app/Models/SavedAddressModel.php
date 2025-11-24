<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SavedAddressmodel extends Model
{
    use HasFactory;
    public $table = 'saved_address';
    protected $fillable = [
        'user_id','order_id','address_details'
    ];
}
