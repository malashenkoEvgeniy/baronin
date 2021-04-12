@extends('admin.layouts')

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Редактирование </div>

                <div class="card-body">
                    @include('admin.includes.alerts')

                    <form action="{{route('price_service.update',$table->id)}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}
                        {{ method_field('PUT') }}

                        <div class="input-group mb-5">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Название поля</span>
                            </div>
                            <input type="text" class="form-control" name="title"  value="{{$table->translate()->title}}">
                        </div>


                        <input type="hidden" name="language" value="{{ LaravelLocalization::getCurrentLocale() }}">
                        <button type="submit" class="btn btn-primary mt-4">Обновить</button>
                    </form>


                    <form class="mt-4" action="{{route('price_service.destroy',$table->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                        {!! csrf_field() !!}
                        {{ method_field('DELETE') }}
                        <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                    </form>
                    <a href="{{route('price.index')}}" class="btn btn-primary mt-5">Таблица цен и услуг</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@section('scripts')
  <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

  <script>
    tinymce.init({
      selector: '.editor',
       plugins: [
      "advlist autolink lists link image charmap print preview anchor",
      "searchreplace visualblocks code fullscreen",
      "insertdatetime media table paste imagetools wordcount"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
    content_css: '//www.tiny.cloud/css/codepen.min.css',
    images_upload_url: "{{route('store_image')}}",
    automatic_uploads: true,
    relative_urls:false,
    });

    tinymce.init({
        selector: '.editor-s',
        toolbar: false,
        menubar: false,
    });

    $('.on-main-page').bind('change', function(){
        $('.on-main-page-image').fadeToggle();
    });


  </script>

@endsection
