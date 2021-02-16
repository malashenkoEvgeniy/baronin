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

{{--                        <div class="input-group mb-3">--}}
{{--                          <div class="input-group-prepend">--}}
{{--                            <span class="input-group-text">PDF</span>--}}
{{--                          </div>--}}
{{--                          <div class="custom-file">--}}
{{--                            <input type="file" name="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">--}}
{{--                            <label class="custom-file-label" for="inputGroupFile01">Выберите файл</label>--}}
{{--                          </div>--}}
{{--                        </div>--}}

                        <div class="input-group mb-5">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Название услуги</span>
                            </div>
                            <input type="text" class="form-control" name="title">
                        </div>

                        <input type="hidden" name="language" value="{{ LaravelLocalization::getCurrentLocale() }}">
                        <button type="submit" class="btn btn-primary">Создать</button>
                        <a href="{{route('price.index')}}" class="btn btn-primary">Таблица цен и услуг</a>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@section('scripts')

@endsection
