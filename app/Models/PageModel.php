<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PageModel extends Model
{
    use HasFactory;
    public $table = 'page';
    protected $fillable = [
        'title',
        'slug',
        'description',
        'meta_title',
        'meta_keyword',
        'meta_description'
    ];
}
