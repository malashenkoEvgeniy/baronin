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



                        </div>
                        <div class="col-12 mt-4">
                            <div class="row">
                                <div class="col-12 slider-index">
                                    @if(!empty($page))
                                        @foreach($page as $img)
                                            <div class="slider-block">
                                                <a data-fancybox="gallery" href="{{$img->url}}"><img src="{{$img->url}}" width="100" height="100"></a>
                                                <form class="mt-4" action="{{route('photo.destroy',$img->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                                                    {!! csrf_field() !!}
                                                    {{ method_field('DELETE') }}
                                                    <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                                                </form>
                                            </div>
                                        @endforeach
                                    @else
                                    <h1 style="color: red">В данной странице нет загруженых изображений</h1>
                                    @endif
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
