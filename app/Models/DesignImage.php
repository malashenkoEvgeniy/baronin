<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DesignImage extends Model
{
    public function page()
    {
        return $this->hasOne('App\Models\Page', 'id');
    }
}
