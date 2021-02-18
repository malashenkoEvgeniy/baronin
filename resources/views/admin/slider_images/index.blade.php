@extends('admin.layouts')
@section('links')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
    <style>
        .slider-index {
            display: flex;
            justify-content: flex-start;
            flex-wrap: wrap;
        }

        .slider-index img {

            width: 100px;
            height: 100px;
        }

        .slider-block {
            display: flex;
            flex-direction: column;
            margin: 25px;
        }
    </style>
@endsection

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Проекты</div>

                <div class="card-body">
                @include('admin.includes.alerts')


                    <div class="col-12 mt-4">
                        <div class="row">
                            <a href="{{route('slider_images.create')}}" class="btn btn-primary"><i class="fa fa-fw fa-plus"></i>Создать</a>
                        </div>
                    </div>
                    <div class="col-12 mt-4">
                        <div class="row">
                            <div class="col-6 slider-index">
                                @foreach($images as $img)
                                    <div class="slider-block">
                                        <a data-fancybox="gallery" href="{{$img->url}}"><img src="{{$img->url}}" width="100" height="100"></a>
                                        <form class="mt-4" action="{{route('slider_images.destroy',$img->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                                            {!! csrf_field() !!}
                                            {{ method_field('DELETE') }}
                                            <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                                        </form>
                                    </div>
                                @endforeach
                            </div>
                            <div class="col-6">
                                @foreach($videos as $item)
                                    <div class="slider-block">
                                        <video loop="loop" autoplay="autoplay" muted="muted" playsinline preload="auto" width="200" height="200">
                                            <source src="{{$item->url}}" type="video/mp4" >
                                        </video>
                                        <form class="mt-4" action="{{route('slider_images.destroy',$item->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                                            {!! csrf_field() !!}
                                            {{ method_field('DELETE') }}
                                            <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                                        </form>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
    <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>

@endsection
