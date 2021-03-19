<?php

namespace  App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TablePrice;
use App\Models\TableServices;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PriceServiceController extends BaseController
{
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
        return view('admin.price_service.index', compact('table', 'table_price', 'min_el', 'max_el'));
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
        $rules = [
            'title' => 'string|max:255',
        ];
        $messages = [
            'title.string'=>"Поле 'название услуг' не может быть пустым",
            'title.max:255'=>'Поле не может превышать 255 символов',
        ];
        $validate = Validator::make($request->all(), $rules, $messages)->validate();

        $table = TableServices::all();
        $this->validate($request, [
            'title' => 'string|max:255',
        ]);

        $service = $this->storeWithTranslation(new TableServices(), ['order_by'=>count($table)], ['title'=> $request['title'], 'language'=> $request['language']]);


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
        $table = TableServices::find($id)->prices()->get();

        return view('admin.price_service.show', compact('table', 'id'));
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
        return redirect(route('price_service.index'));
    }
}
