@extends('admin.layouts')
@section('links')
    <link rel="stylesheet" href="/admin/css/index.css">
@endsection
@section('content')
<div class="container col-12">

    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">

                <div class="card-header">Создание страницы</div>

                <div class="card-body">

                    <form action="{{route('pages.store')}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">

                            <span class="input-group-text">Банер </span>
                          </div>
                          <div class="custom-file">
                            <input type="file" name="banner" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                            <label class="custom-file-label" for="inputGroupFile01">Выберите файл</label>
                          </div>
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Название </span>
                          </div>
                          <input type="text" class="form-control translit" name="title">
                        </div>

                        <div class="form-group">
                            <label>Описание</label>
                            <textarea  class="form-control editor" name="body"></textarea>
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Url</span>
                          </div>
                          <input type="text" class="form-control translit_to" name="url">
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Родитель</span>
                          </div>
                          <select class="form-control" name="parent_id">
                            <option value="">Родитель</option>
                              @foreach($pages as $item)
                                <option value="{{$item->id}}">{{ $item->translate()->title}}</option>
                              @endforeach
                          </select>
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Позиция в меню</span>
                          </div>
                          <input type="number" class="form-control" name="sort_order" value="1">
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                              <span class="input-group-text">Отображать на главной странице?</span>
                            </div>
                            <span class="input-group-text"><input type="checkbox" name="on_main_page" class="on-main-page"></span>
                        </div>


                        <div class="on-main-page-image hidden">
                            <div class=" input-group mb-3 ">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Изображение страницы</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" name="image" class="custom-file-input " id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="inputGroupFile01">Выберите файл</label>
                                </div>
                            </div>
                        </div>


                        <div class="card card-secondary">
                            <div class="card-header"> <h3 class="card-title">Seo</h3></div>

                            <div class="card-body">

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Seo Заголовок</span>
                                    </div>
                                    <input type="text" class="form-control" name="seo_title">
                                </div>

                                <div class="form-group">
                                    <label>Seo Описание</label>
                                    <textarea  class="form-control editor-s" name="seo_description"></textarea>
                                </div>

                                <div class="form-group">
                                    <label>Seo ключевые слова</label>
                                    <textarea class="form-control editor-s" name="seo_keywords"></textarea>
                                </div>
                            </div>
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


    function urlLit(w,v) {
        var tr='a b v g d e ["zh","j"] z i y k l m n o p r s t u f h c ch sh ["shh","shch"] ~ y ~ e yu ya ~ ["jo","e"]'.split(' ');
        var ww=''; w=w.toLowerCase();

        for(i=0; i<w.length; ++i) {
            cc=w.charCodeAt(i); ch=(cc>=1072?tr[cc-1072]:w[i]);
            if(ch.length<3) ww+=ch; else ww+=eval(ch)[v];
        }
        return(ww.replace(/[^a-zA-Z0-9\-]/g,'-').replace(/[-]{2,}/gim, '-').replace( /^\-+/g, '').replace( /\-+$/g, ''));
    }

    $( document ).ready(function() {
        $('.translit').bind('change keyup input click', function(){
            $('.translit_to').val(urlLit($('.translit').val(),0))
        });

        $('.on-main-page').bind('change', function(){
            $('.on-main-page-image').fadeToggle();
        });
    });



  </script>

@endsection
