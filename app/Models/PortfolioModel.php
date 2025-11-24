<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PortfolioModel extends Model
{
    use HasFactory;
    public $table = 'portfolio';
    protected $fillable = [
        'category','title','image','technology','url'
    ];
}
