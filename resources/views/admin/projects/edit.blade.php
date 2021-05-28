@extends('admin.layouts')
@section('links')
    <link href="{{asset('/admin/libs/dropzone-5.7.0/dist/dropzone.css')}}"></link>
    <style>
        .project-images-item {
            max-width: 150px;
            max-height: 100px;
        }
    </style>
@endsection
@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Редактирование проекта</div>

                <div class="card-body">
                @include('admin.includes.alerts')

                    <form action="{{route('projects.update',$project->id)}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}
                        {{ method_field('PUT') }}

                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Изображение </span>
                            </div>
                            <div class="input-group-append">
                                <div class="btn btn-outline-secondary" data-toggle="collapse" data-target="#banner" aria-expanded="false" aria-controls="banner">Посмотреть</div>
                            </div>
                            <div class="custom-file">
                                <input type="file" name="image" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                <label class="custom-file-label" for="inputGroupFile01">Выберите файл</label>
                            </div>
                        </div>


                        <div class="collapse mb-3" id="banner">
                            <div class="card card-body">
                                <div class="col-6"><img src="{{$project->image}}"></div>
                            </div>
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Название</span>
                          </div>
                          <input type="text" class="form-control translit" name="title" value="{{$project->translate()->title}}">
                        </div>

                        <div class="form-group">
                            <label>Описание</label>
                            <textarea  class="form-control editor" name="body">{{$project->translate()->body}}</textarea>
                        </div>

                        <div class="form-group">
                            <label>Описание (После Галереи)</label>
                            <textarea  class="form-control editor" name="body_bottom">{{$project->translate()->body_bottom}}</textarea>
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Url</span>
                          </div>
                          <input type="text" class="form-control translit_to" name="url" value="{{$project->url}}">
                        </div>

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Позиция</span>
                          </div>
                          <input type="text" class="form-control " name="position" value="{{$project->position}}">
                        </div>


                        <div class="card card-secondary">
                            <div class="card-header"> <h3 class="card-title">Seo</h3></div>
                            <div class="card-body">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">Seo Заголовок</span>
                                    </div>
                                    <input type="text" class="form-control" name="seo_title" value="{{$project->translate()->seo_title}}">
                                </div>

                                <div class="form-group">
                                    <label>Seo Описание</label>
                                    <textarea  class="form-control editor-s" name="seo_description">{{$project->translate()->seo_description}}</textarea>
                                </div>

                                <div class="form-group">
                                    <label>Seo ключевые слова</label>
                                    <textarea class="form-control editor-s" name="seo_keywords">{{$project->translate()->seo_keywords}}</textarea>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="language" value="{{ LaravelLocalization::getCurrentLocale() }}">
                        <button type="submit" class="btn btn-primary">Обновить</button>
                    </form>



                </div>
            </div>
        </div>
    </div>
</div>

<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Галерея</div>

                <div class="card-body">
                    <form action="{{route('updateImg')}}">
                        {!! csrf_field() !!}
                    <table class="table table-bordered table-hover dataTable dtr-inline">
                        <thead>
                            <tr>
                                <th scope="col"><h5>#</h5></th>
                                <th scope="col"><h5>Изображение</h5></th>
                                <th scope="col"><h5>Опции</h5></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($project->images as $item)
                            <tr>
                                <td> <input  style="max-width: 60px;" type="number" name="order-{{$item->id}}" value="{{$item->order_by}}"></td>
                                <td><img class="project-images-item" src="{{$item->image}}"></td>
                                <td>
                                    <div class="col-12">
                                        <div class="btn-group">
                                            <div class="" style="display: flex">
                                                <input type="hidden" name="id" value="{{$item->id}}" form="distriy_form">
                                                    <button type="submit" name="{{$item->id}}" class="btn btn-danger btn-delete" form="distriy_form" title="Удалить"><i class="fas fa-trash-alt"></i></button>

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
                            <a href="{{route('project_image.create',['id'=>$project->id] )}}" class="btn btn-primary"><i class="fa fa-fw fa-plus"></i>Загрузить</a>
                        </div>
                    </div>
                        <button type="submit" class="btn btn-primary mt-3 mb-3">Сменить очередность</button>
                    </form>
        <form action="{{ route('project_image.destroy',1)}}" id="distriy_form" method="POST" onsubmit="return confirm('Удалить?') ? true : false;">
        {!! csrf_field() !!}
        {{ method_field('DELETE') }} </form>
                </div>
                <div class="card-footer">
                    <form action="{{ route('movingPhoto')}}" >
                    {!! csrf_field() !!}
                        <button class="btn btn-primary" type="submit">Добавить проект на страницу</button>
                        <select name="services" id="">
                            {{$flag = 0}}
                            @foreach($services as $service) {
                                @foreach($projects as $item)
                                    @if($service->id == $item->page_id)
                                        {{$flag = 1}}
                                    @endif
                                @endforeach
                              <option @if($flag>0)style="background: blue; color: #fff" disabled="true"@endif value="{{$service->id}}">{{$service->translate()->title}}</option>
                            {{$flag = 0}}
                            @endforeach
                        </select>
                        <input type="hidden" name="project_id"  value="{{$project->id}}">

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@section('scripts')
  <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script src="{{asset('/admin/libs/dropzone-5.7.0/dist/dropzone.js')}}"></script>

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

  </script>

@endsection
