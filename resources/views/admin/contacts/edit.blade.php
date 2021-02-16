@extends('admin.layouts')

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Редактирование</div>

                <div class="card-body">
                    @include('admin.includes.alerts')

                    <form action="{{route('contacts.update',$page->id)}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}
                        {{ method_field('PUT') }}

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Изображение</span>
                          </div>
                          <div class="input-group-append">
                                <div class="btn btn-outline-secondary" data-toggle="collapse" data-target="#banner" aria-expanded="false" aria-controls="banner">Посмотреть</div>
                            </div>
                          <div class="custom-file">
                                <input type="file" name="banner" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                <label class="custom-file-label" for="inputGroupFile01">Выберите файл</label>
                            </div>
                        </div>

                        <div class="collapse mb-3" id="banner">
                            <div class="card card-body">
                                <div class="col-6">
                                    <img src="{{$page->banner}}" alt="">
                                </div>
                            </div>
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Заголовок</span>
                          </div>
                          <input type="text" class="form-control" name="title" value="{{$page->translate()->title}}" >
                        </div>
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Viber</span>
                          </div>
                          <input type="text" class="form-control" name="viber" value="{{$page->viber}}" >
                        </div>
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Telegram</span>
                          </div>
                          <input type="text" class="form-control" name="telegram" value="{{$page->telegram}}" >
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Facebook</span>
                            </div>
                            <input type="text" class="form-control" name="facebook" value="{{$page->facebook}}" >
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Instagram</span>
                            </div>
                            <input type="text" class="form-control" name="instagram" value="{{$page->instagram}}" >
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Телефон</span>
                          </div>
                          <input type="text" class="form-control" name="phone_1" value="{{$page->phone_1}}" >
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Телефон 2</span>
                          </div>
                          <input type="text" class="form-control" name="phone_2" value="{{$page->phone_2}}" >
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Телефон (в соц. кнопке)</span>
                          </div>
                          <input type="text" class="form-control" name="phone_3" value="{{$page->phone_3}}" >
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Email</span>
                          </div>
                          <input type="text" class="form-control" name="email" value="{{$page->email}}" >
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Адрес</span>
                          </div>
                          <input type="text" class="form-control" name="address" value="{{$page->translate()->address}}" >
                        </div>


                        <div class="card card-secondary">
                            <div class="card-header"> <h3 class="card-title">Seo</h3></div>

                            <div class="card-body">

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Seo Заголовок</span>
                                    </div>
                                    <input type="text" class="form-control" name="seo_title" value="{{$page->translate()->seo_title}}">
                                </div>

                                <div class="form-group">
                                    <label>Seo Описание</label>
                                    <textarea  class="form-control editor-s" name="seo_description">{{$page->translate()->seo_description}}</textarea>
                                </div>

                                <div class="form-group">
                                    <label>Seo ключевые слова</label>
                                    <textarea class="form-control editor-s" name="seo_keywords">{{$page->translate()->seo_keywords}}</textarea>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="language" value="{{ LaravelLocalization::getCurrentLocale() }}">
                        <button type="submit" class="btn btn-primary mt-4">Обновить</button>
                    </form>
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

  </script>

@endsection
