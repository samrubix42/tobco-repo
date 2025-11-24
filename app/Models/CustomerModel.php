<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;

class CustomerModel extends Authenticatable
{
    use HasFactory;

    protected $guard = "customer";
    protected $table = "customer";

    protected $fillable = [
        'name',
        'email',
        'password',
        'phone'
    ];

    protected $hidden = [
        'password',
    ];
}