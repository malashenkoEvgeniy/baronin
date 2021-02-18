@extends('admin.layouts')

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Создание</div>

                <div class="card-body">

                    <form action="{{route('price.store')}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}


                        <div class="input-group mb-5">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Название услуги</span>
                            </div>
                            <input type="text" class="form-control" name="title">
                        </div>
                        <div class="input-group mb-5">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Стоимость</span>
                            </div>
                            <input type="text" class="form-control" name="cost">
                            <input type="hidden" class="form-control" name="table_services_id" value="{{$header_id}}">
                        </div>
                        <div class="input-group mb-5">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Еденицы измерения</span>
                            </div>
                            <input type="text" class="form-control" name="units">
                        </div>

                        <input type="hidden" name="language" value="{{ LaravelLocalization::getCurrentLocale() }}">
                        <button type="submit" class="btn btn-primary">Создать</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@section('scripts')

@endsection
