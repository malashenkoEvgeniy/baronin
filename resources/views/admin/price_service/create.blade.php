@extends('admin.layouts')

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Создание</div>
                <div class="mb-5">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
                <div class="card-body">
                    @include('admin.includes.alerts')

                    <form action="{{route('price_service.store')}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}


                        <div class="input-group mb-5">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Название услуги</span>
                            </div>
                            <input type="text" class="form-control" name="title">
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
