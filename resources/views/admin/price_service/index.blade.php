@extends('admin.layouts')

@section('content')
    <div class="container col-12">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">Таблица услуг</div>
                    <a href="{{route('price_service.create')}}" style="width: 15%" class="btn btn-secondary">++Добавить поле</a>
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
                                <td><a href="{{route('price_service_up', ['id'=>$item->id])}}" class="btn {{ $item->id === $min_el->id ? "disabled" : "btn-success"}}">up</a></td>
                                <td><a href="{{route('price_service_down', ['id'=>$item->id])}}" class="btn {{ $item->order_by == $loop->last ? "disabled" : "btn-success"}}">down</a></td>

                                <td><a href="{{route('price_service.show',$item->id)}}" class="price-table-link">{{$item->translate()->title}}</a></td>
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


