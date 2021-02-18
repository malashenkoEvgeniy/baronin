@extends('admin.layouts')

@section('content')
    <div class="container col-12">
        <div class="row justify-content-center" id="tabs-admin">
            <div class="col-12">
                <div class="card">
                <div class="card-header">Таблица видов услуг</div>
                    <a href="{{route('price.create',['header_id'=>$id])}}" class="btn btn-success" style="width: 15%">+ Добавить поле</a>
                    <table>
                        <tr>
                            <th>up</th>
                            <th>down</th>
                            <th>Название</th>
                            <th><div> Стоимость</div>грн.</th>
                            <th>Ед.изм.</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>


                        @foreach($table as $item)

                            <tr>
                                <td><a href="{{route('price_up', ['id'=>$item->id])}}" class="btn btn-default {{ $item->id == 1 ? "disabled" : "btn-default"}}" disabled="{{ $item->id == 1 ? 'true' : 'false'}}">up</a></td>
                                <td><a href="{{route('price_down', $item->id)}}" class="btn {{ $item->id == $loop->last ? "disabled" : "btn-default"}}">down</a></td>
                                <td>{{$item->translate()->title}}</td>
                                <td>{{$item->translate()->cost}}</td>
                                <td>{{$item->translate()->units}}</td>
                                <td><a class="btn btn-secondary" href="{{route('price.edit',$item->id)}}">EDIT</a> </td>
                                <td><form class="" action="{{route('price.destroy',$item->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                                        {!! csrf_field() !!}
                                        {{ method_field('DELETE') }}
                                        <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                                    </form></td>
                            </tr>
                        @endforeach
                    </table>

                </div>
            </div>

        </div>
    </div>
@endsection

