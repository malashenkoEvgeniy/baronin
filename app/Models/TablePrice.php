<?php

namespace App\Models;



class TablePrice extends BaseModel
{
    protected $table = 'table_prices';
    protected $guarded = [];
    protected $translateTable = "App\Models\TablePriceTranslation";


}
