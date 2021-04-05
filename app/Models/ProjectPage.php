<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class ProjectPage extends BaseModel
{
    protected $table = 'page_project';
    protected $guarded = [];

    public function project(){
        return $this->belongsTo(Project::class);
    }
}
