<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FormRequest extends Model
{
    protected $table = 'form_request';
    protected $guarded = [];

    public function scopeNew($query){
        return $query->where('is_new', true);
    }
}
