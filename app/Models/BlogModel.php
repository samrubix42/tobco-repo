<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlogModel extends Model
{
    use HasFactory;
    public $table = 'blogs';
    protected $fillable = [
        'title','image','slug','description','meta_title','meta_keyword','meta_description'
    ];
}
