<?php

namespace App\Models;

class Contact extends BaseModel
{
    protected $table = 'contact';
    protected $guarded = [];
    protected $translateTable = "App\Models\ContactTranslation";
}
