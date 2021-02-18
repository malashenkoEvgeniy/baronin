@extends('admin.layouts')

@section('content')
    <div class="container col-12">
        <div class="row justify-content-center" id="tabs-admin">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">Таблица услуг</div>
                    <a href="{{route('price_service.create')}}" class="btn btn-success" style="width: 15%">+ Добавить поле</a>
                    @include('admin.includes.alerts')
                        <table style="width: 60%">
                            <tr>
                                <th>up</th>
                                <th>down</th>
                                <th>Название услуги</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            @foreach($table as $item)

                            <tr>
                                <td><a href="{{route('price_up', ['id'=>$item->id])}}" class="btn  {{ $item->id === $min_el->id ? "disabled" : "btn-default"}}">up</a></td>
                                <td><a href="{{route('down_up', ['id'=>$item->id])}}" class="btn  {{ $item->order_by == $loop->last ? "disabled" : "btn-default"}}">down</a></td>

                                <td><a href="{{route('price_service.show',['id'=>$item->id])}}" class="price-table-link">{{$item->translate()->title}}</a></td>
                                <td><a class="btn btn-secondary" href="{{route('price_service.edit',['id'=>$item->id])}}">EDIT</a> </td>
                                <td>
                                    <form class="" action="{{route('price_service.destroy',$item->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                                        {!! csrf_field() !!}
                                        {{ method_field('DELETE') }}
                                        <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </table>

                </div>
            </div>
        </div>
    </div>
@endsection
