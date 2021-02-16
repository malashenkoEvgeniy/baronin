<?php

namespace App\Models;

class Price extends BaseModel
{
    protected $table = 'price';
    protected $guarded = [];
    protected $translateTable = "App\Models\PriceTranslation";

    public function page()
    {
        return $this->belongsTo('App\Models\Page');
    }

}
