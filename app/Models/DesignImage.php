<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DesignImage extends BaseModel
{

    protected $table = 'design_images';
    protected $guarded = [];


    public function page()
    {
        return $this->hasOne('App\Models\Page', 'id');
    }
}
