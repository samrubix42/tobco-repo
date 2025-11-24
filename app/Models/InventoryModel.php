<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;

class InventoryModel extends Authenticatable
{
    use HasFactory;

    protected $table = "inventory";

    protected $fillable = [
        'product_id',
        'inventory',
    ];
}