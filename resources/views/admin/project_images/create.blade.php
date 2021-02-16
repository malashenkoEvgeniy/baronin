@extends('admin.layouts')

@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Создание</div>

                <div class="card-body">

                  @include('admin.includes.alerts')

                    <form action="{{route('project_image.store')}}" method="POST" enctype="multipart/form-data">
                        {!! csrf_field() !!}

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Изображения</span>
                          </div>
                          <div class="custom-file">
                            <input type="file" multiple name="images[]" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" required>
                            <label class="custom-file-label" for="inputGroupFile01">Выберите файлы</label>
                          </div>
                        </div>

                        <input type="hidden"  name="project_id" value="{{$project_id}}">

                        <button type="submit" class="btn btn-primary mt-4">Загрузить</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@section('scripts')



@endsection
