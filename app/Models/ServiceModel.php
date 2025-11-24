<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceModel extends Model
{
    use HasFactory;
    public $table = 'service';
    protected $fillable = [
        'category','title','image','slug','description','meta_title','meta_keyword','meta_description'
    ];
}
