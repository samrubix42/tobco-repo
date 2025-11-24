<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactSettingsModel extends Model
{
    use HasFactory;
    public $table = 'contact_settings';
    protected $fillable = [
        'address','phone','email','adminemail','hours','map','logo'
    ];
}
