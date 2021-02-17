<?php

namespace App\Http\Controllers\Admin;

use App\Models\Price;
use App\Models\PriceTranslation;
use App\Models\TablePrice;
use App\Models\TablePriceBody;
use App\Models\TableServices;
use App\Models\TableServicesTranslations;
use Illuminate\Http\Request;

class PriceController extends BaseController
{

    protected $storePath = '/uploads/price/';
    public function __construct()
    {
        parent::__construct();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $table =TableServices::orderBy('order_by')->get();
        $table_price = TablePrice::all();
        $max = TableServices::orderBy('order_by')->max('order_by');
        $min = TableServices::orderBy('order_by')->min('order_by');
        $min_el = TableServices::where('order_by', $min)->first();
        $max_el = TableServices::where('order_by', $max)->first();
        return view('admin.price.index', compact('table', 'table_price', 'min_el', 'max'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('admin.price.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $service = $this->storeWithTranslation(new TablePrice(), [], [ 'title'=> $request['title'],
            'language'=> $request['language'],
            'cost'=> $request['cost'],
            'units'=> $request['units']]);


        return redirect()->back()->with('success', 'Запись успешно создана');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $table = TablePrice::find($id);
        return view('admin.price.edit', compact('table'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $price = TablePrice::find($id);
        $price = $this->updateTranslation($price, [
                                                    'title'=> $request['title'],
                                                    'language'=> $request['language'],
                                                    'cost'=> $request['cost'],
                                                    'units'=> $request['units']
            ]);

        return redirect()->back()->with('success', 'Запись успешно обновлена');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $price = TablePrice::destroy($id);
        return redirect(route('price.index'))->with('success', 'Запись успешно удалена');
    }

    public function up($id)
    {
         $table = TablePrice::find($id);
        $table->order_by --;
        $table->update();
        return redirect(route('price.index'));
    }

    public function down($id)
    {
        $table = TablePrice::find($id);
        $table->order_by ++;
        $table->update();
        return redirect(route('price.index'));
    }
}
