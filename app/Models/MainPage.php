<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MainPage extends BaseModel
{
    protected $table = 'main_page';
    protected $guarded = [];
    protected $translateTable = "App\Models\MainPageTranslation";
}
