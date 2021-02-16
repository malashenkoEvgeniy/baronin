<?php

namespace App\Models;

class Page extends BaseModel
{
    protected $table = 'page';
    protected $guarded = [];
    protected $translateTable = "App\Models\PageTranslation";

    public function parent()
    {
        return $this->belongsTo(Page::class, 'parent_id');
    }

    public function children()
    {
        return $this->hasMany(Page::class, 'parent_id');
    }

    public function price()
    {
        return $this->hasMany('App\Models\Price');
    }

    public function scopeIsLive($query)
    {
        return $query->where('live', true);
    }

    public function scopeOfSort($query, $sort)
    {
        foreach ($sort as $column => $direction) {
            $query->orderBy($column, $direction);
        }

        return $query;
    }

    public function scopeOnMainPage($query)
    {

        return $query->where('on_main_page', true);
    }

    public function images()
    {
        return $this->hasMany(DesignImage::class);
    }

}
