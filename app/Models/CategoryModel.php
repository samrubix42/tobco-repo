<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    use HasFactory;
    public $table = 'category';
    protected $fillable = [
        'title','slug','description','image','meta_title','meta_keyword','meta_description','page_content'
    ];
}
