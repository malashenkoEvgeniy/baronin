<?php

namespace App\Models;


class TableServices extends BaseModel
{
    protected $table = 'table_services';
    protected $guarded = [];
    protected $translateTable = "App\Models\TableServicesTranslations";

    public function prices()
    {
        return $this->hasMany(TablePrice::class);
    }


}
