@extends('admin.layouts')
@section('links')
    <link rel="stylesheet" href="/admin/css/index.css">

@endsection

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Редактирование </div>

                <div class="card-body">
                    @include('admin.includes.alerts')

                    <form action="{{route('pages.update',$page->id)}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}
                        {{ method_field('PUT') }}

                        @if($page->id == 6)
                            <a href="{{route('price.index')}}" class="price-table-link">Таблица цен и услуг</a>
                        @endif
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Баннер </span>
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
                                <div class="col-6"><img src="{{$page->banner}}" alt=""></div>
                            </div>
                        </div>


                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Название </span>
                          </div>
                          <input type="text" class="form-control" name="title" value="{{$page->translate()->title}}" >
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Загрузить изображение </span>
                            </div>
                            <input type="file" class="form-control" name="image" >
                            <a href="{{route('photo.create')}}">Загрузить изображение</a>
                        </div>
                        !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

                        <div class="form-group">
                            <label>Описание</label>
                            <textarea  class="form-control editor" name="body" id="editor1" >{{$page->translate()->body}}</textarea>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Заголовок дополнительного описания </span>
                            </div>
                            <input type="text" class="form-control" name="additional_title" value="{{$page->translate()->additional_title}}" >
                        </div>
                        <div class="form-group">
                            <label>Дополнительное описание</label>
                            <textarea  class="form-control editor" name="additional_body" id="editor11" >{{$page->translate()->additional_body}}</textarea>
                        </div>



                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Url</span>
                            </div>
                            <input type="text" class="form-control" name="url" value="@isset($page->url){{$page->url}}@endisset">
                        </div>


                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Родитель</span>
                          </div>
                          <select class="form-control" name="parent_id">
                            <option value="">Родитель</option>
                              @foreach($pages as $item)
                                <option value="{{$item->id}}" @if($item->id == $page->parent_id) selected @endif>{{ $item->translate()->title}}</option>
                              @endforeach
                          </select>
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Позиция в меню</span>
                          </div>
                          <input type="number" class="form-control" name="sort_order" value="{{$page->sort_order}}">
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                              <span class="input-group-text">Отображать на главной странице?</span>
                            </div>
                            <span class="input-group-text"><input type="checkbox" name="on_main_page" class="on-main-page" @if($page->on_main_page) checked @endif></span>
                        </div>

                        <div class="on-main-page-image @if(!$page->on_main_page) hidden @endif">
                            <div class=" input-group mb-3 ">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Изображение страницы</span>
                                <div class="btn btn-outline-secondary" data-toggle="collapse" data-target="#image" aria-expanded="false" aria-controls="banner">Посмотреть</div>
                                </div>

                                <div class="custom-file">
                                    <input type="file" name="image" class="custom-file-input " id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                    <label class="custom-file-label" for="inputGroupFile01">Выберите файл</label>
                                </div>
                            </div>
                        </div>


                        <div class="collapse mb-3" id="image">
                            <div class="card card-body">
                                <div class="col-6"><img src="{{$page->image}}" alt=""></div>
                            </div>
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
                                    <textarea  class="form-control editor-s" name="seo_description" id="editor2" >{{$page->translate()->seo_description}}</textarea>
                                </div>

                                <div class="form-group">
                                    <label>Seo ключевые слова</label>
                                    <textarea class="form-control editor-s" name="seo_keywords" id="editor3" >{{$page->translate()->seo_keywords}}</textarea>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="language" value="{{ LaravelLocalization::getCurrentLocale() }}">
                        <button type="submit" class="btn btn-primary mt-4">Обновить</button>


                    </form>



                    @if($page->id == 6)

                        <div class="card card-secondary mt-4">
                            <div class="card-header"> <h3 class="card-title">Прайс</h3></div>

                            <div class="card-body">
                            <table class="table table-bordered table-hover dataTable dtr-inline">
                                <thead>
                                    <tr>
                                        <th scope="col"><h5>#</h5></th>
                                        <th scope="col"><h5>Название</h5></th>
                                        <th scope="col"><h5>Файл</h5></th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($prices as $item)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <th scope="row">{{ $item->translate()->title }}</th>
                                        <td><a style="display:block;width:50px;" href="{{ $item->file}}" download> @include('frontend.svg.pdf') </a></td>

                                        <td>
                                            <div class="col-12">
                                                <div class="btn-group">
                                                    <div class="mr-1"><a href="{{route('price.edit',$item->id)}}" class="btn btn-warning" title="Редактировать"><i class="fas fa-edit"></i></a></div>
                                                    <div class="">
                                                        <form action="{{ route('price.destroy',$item->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
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

                            </div>
                        </div>
                        <a href="{{ route('price.create') }}" class="btn btn-primary" ><i class="fa fa-fw fa-plus"></i>Загрузить прайс</a>
                    @endif


                    @if($page->id != 6)
                    <form class="mt-4" action="{{route('pages.destroy',$page->id)}}" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
                        {!! csrf_field() !!}
                        {{ method_field('DELETE') }}
                        <button type="submit" class="btn btn-danger btn-delete">Удалить</button>
                    </form>
                    @endif
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
