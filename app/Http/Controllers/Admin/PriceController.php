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

        $table =TableServices::all();
        $table_price = TablePrice::all();
        return view('admin.price.index', compact('table', 'table_price'));
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
//        $table = new TableServices();
//        $table->save();
//        $table_translation = new TableServicesTranslations();
//        $table->title = $request->title;
////        $table->cost = $request->cost;
////        $table->units = $request->units;

//    dd($request['title']);
        $service = $this->storeWithTranslation(new TableServices(), [], ['title'=> $request['title'], 'language'=> $request['language']]);


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
        $price = Price::find($id);
        $req = $request->only('file');
        $reqTranslation = $request->except('file');

        if (request()->file('file') !== null) {
            $file = $this->storeFile(request()->file('file'), $this->storePath);
            $req['file'] = $file['path'];
        }

        $price->update($req);

        $price = $this->updateTranslation($price, $reqTranslation, $request);

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
        $price = TableServices::destroy($id);
        return redirect(route('price.index'))->with('success', 'Запись успешно удалена');
    }

    public function up($id)
    {
        return 'up';
    }
}
