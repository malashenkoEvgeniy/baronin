<?php

namespace App\Http\Controllers;

use App\Models\Page;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function getMenu()
    {
        $menuitems = Page::isLive()
            ->ofSort(['parent_id' => 'asc', 'sort_order' => 'asc'])
            ->get();

        $menuitems = $this->buildTree($menuitems);

        return $menuitems;
    }

    public function buildTree($items)
    {
        $grouped = $items->groupBy('parent_id');


        foreach ($items as $item) {
            if ($grouped->has($item->id)) {
                $item->children = $grouped[$item->id];
            }
        }

        return $items->where('parent_id', null);
    }
}
