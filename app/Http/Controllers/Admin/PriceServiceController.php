<?php

namespace  App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TableServices;
use Illuminate\Http\Request;

class PriceServiceController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.price_service.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
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
        $table = TableServices::find($id);
        return view('admin.price_service.edit', compact('table'));
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
        $price = TableServices::find($id);

        $price = $this->updateTranslation($price, ['title'=> $request['title'], 'language'=> $request['language']]);

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
        return redirect(route('price_service.index'))->with('success', 'Запись успешно удалена');
    }

    public function up($id)
    {
        $table = TableServices::find($id);
        $table->order_by --;
        $table->update();
        return redirect(route('price_service.index'));
    }

    public function down($id)
    {
        $table = TableServices::find($id);
        $table->order_by ++;
        $table->update();
        return redirect(route('price.index'));
    }
}
