<?php

namespace App\Models;

class Portfolio extends BaseModel
{
    protected $table = 'portfolio';
    protected $guarded = [];
    protected $translateTable = "App\Models\PortfolioTranslation";

    public function project()
    {
        return $this->hasMany('App\Models\Project');
    }
}
