@extends('admin.layouts')

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Проекты</div>

                <div class="card-body">
                @include('admin.includes.alerts')
                    <table class="table table-bordered table-hover dataTable dtr-inline">
                        <thead>
                            <tr>
                                <th scope="col"><h5>#</h5></th>
                                <th scope="col"><h5>Изображение</h5></th>
                                <th scope="col"><h5>Название</h5></th>
                                <th scope="col"><h5>Опции</h5></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($projects as $item)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td><img src="{{$item->image}}"></td>
                                <th>{{ $item->translate()->title }}</th>
                                <td>
                                    <div class="col-12">
                                        <div class="btn-group">
                                            <div class="mr-1"><a href="{{route('projects.edit',$item->id)}}" class="btn btn-warning" title="Редактировать"><i class="fas fa-edit"></i></a></div>
                                            <div class="">
                                                <form action="{{ route('projects.destroy',$item->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                                                    {!! csrf_field() !!}
                                                    {{ method_field('DELETE') }}
                                                    <button type="submit" class="btn btn-danger btn-delete" title="Удалить"><i class="fas fa-trash-alt"></i></button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </td>

                            </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <div class="col-12 mt-4">
                        <div class="row">
                            <a href="{{route('projects.create')}}" class="btn btn-primary"><i class="fa fa-fw fa-plus"></i>Создать</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')


@endsection
