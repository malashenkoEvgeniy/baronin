@extends('admin.layouts')

@section('content')
    <div class="container col-12">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">Таблица услуг</div>
                    @include('admin.includes.alerts')
                        <table>
                            <tr>
                                <th>up</th>
                                <th>down</th>
                                <th>Название услуги</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            @foreach($table as $item)

                            <tr>
                                <td><a href="{{route('price_up', ['id'=>$item->id])}}" class="btn {{ $item->id === $min_el->id ? "disabled" : "btn-success"}}">up</a></td>
                                <td><a href="{{route('price_up', $item->id)}}" class="btn {{ $item->order_by == $loop->last ? "disabled" : "btn-success"}}">down</a></td>

                                <td>{{$item->translate()->title}}</td>
                                <td><a class="btn btn-secondary" href="{{route('price.edit',$item->id)}}">EDIT</a> </td>
                                <td>
                                    <form class="mt-4" action="{{route('price.destroy',$item->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                                        {!! csrf_field() !!}
                                        {{ method_field('DELETE') }}
                                        <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </table>
                    <a href="{{route('price.create')}}" class="add-price-table-column">Добавить поле</a>
                </div>
                <div class="card-header">Таблица видов услуг</div>

                    <table>
                        <tr>
                            <th>up</th>
                            <th>down</th>
                            <th> id</th>
                            <th>Название</th>
                            <th><div> Стоимость</div>грн.</th>
                            <th>Ед.изм.</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>


                        @foreach($table_price as $item)

                            <tr>
                                <td><a href="{{route('price_up', ['id'=>$item->id])}}" class="btn {{ $item->id == 1 ? "disabled" : "btn-success"}}" disabled="{{ $item->id == 1 ? 'true' : 'false'}}">up</a></td>
                                <td><a href="{{route('price_up', $item->id)}}" class="btn {{ $item->id == $loop->last ? "disabled" : "btn-success"}}">down</a></td>
                                <td>{{$item->id}}</td>
                                <td>{{$item->translate()->title}}</td>
                                <td>{{$item->translate()->cost}}</td>
                                <td>{{$item->translate()->units}}</td>
                                <td><a class="btn btn-secondary" href="{{route('price.edit',$item->id)}}">EDIT</a> </td>
                                <td><a class="btn btn-danger" href="{{route('price.destroy',$item->id)}}">DELETE</a> </td>
                            </tr>
                        @endforeach
                    </table>
                    <a href="{{route('price.create')}}" class="add-price-table-column">Добавить поле</a>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')

@endsection
