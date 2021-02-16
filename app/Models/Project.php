<?php

namespace App\Models;

class Project extends BaseModel
{
    protected $table = 'project';
    protected $guarded = [];
    protected $translateTable = "App\Models\ProjectTranslation";

    public function image()
    {
        return $this->hasMany('App\Models\ProjectImage');
    }

    public function portfolio()
    {
        return $this->belongsTo('App\Models\Portfolio');
    }
}
