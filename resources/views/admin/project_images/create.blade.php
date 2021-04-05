@extends('admin.layouts')
@section('links')
    <link rel="stylesheet" href="{{asset('admin/libs/dropzone/dist/dropzone.css')}}">
@endsection
@section('content')
<div class="container col-12">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">Создание</div>

                <div class="card-body">

                  @include('admin.includes.alerts')

                    <form action="{{route('project_image.store')}}" method="POST" class="dropzone" id="dropzone" enctype="multipart/form-data">
                        {!! csrf_field() !!}

                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Изображения</span>
                          </div>
                          <div class="custom-file">
                            <input type="hidden" multiple name="images" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" required>
                            <label class="custom-file-label " for="inputGroupFile01">Выберите файлы</label>
                          </div>
                        </div>

                        <input type="hidden"  name="project_id" value="{{$project_id}}" id="project_id">


                    </form>
                    <button type="submit" class="btn btn-primary mt-4 upload">Загрузить</button>
                    <hr>
                    <a href="{{url()->previous()}}" class="btn btn-primary">back</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection


@section('scripts')
    <script src="{{asset('admin/libs/dropzone/dist/dropzone.js')}}"></script>
    <script>
        Dropzone.autoDiscover = false;

        $(document).ready(function () {
           let myDropzone = new Dropzone(".dropzone",{
                uploadMultiple: true,
                autoProcessQueue: false,
                paramName: "images",
                maxFile: 99,
                parallelUploads: 100,
                url:"{{route('project_image.store')}}",
                acceptedFiles: ".png, .jpeg, .jpg, .gif",
                headers: {'X-CSRF-Token': $('input[name="_token"]').attr('value') },
                params:{
                    'project_id': {{$project_id}}
                },
            });



            myDropzone.on("sending", function(file, xhr, formData) {
                formData.append('project_id', $('#project_id').val());
            });

            /* Add Files Script*/


            myDropzone.on("success", function(file, message){
                $("#msg").html(message);
                setTimeout(function(){window.location.reload();},200);
            });

            myDropzone.on("error", function (data) {
                // debugger;
            });

            myDropzone.on("queuecomplete", function(file) {
                myDropzone.autoProcessQueue = false;
            });

            $(".upload").on("click",function (){
                myDropzone.autoProcessQueue = true;
                myDropzone.processQueue();
            });

            $("form#dropzone").sortable({
                items: '.dz-preview',
                cursor: 'move',
                opacity: 0.5,
                containment: 'form#dropzone',
                distance: 20,
                tolerance: 'pointer',
                stop: function () {

                    let queue = myDropzone.files;
                    let newQueue = [];
                    $('form#dropzone .dz-preview .dz-filename [data-dz-name]').each(function (count, el){
                        var name = el.innerHTML;
                        queue.forEach(function(file) {
                            if (file.name === name) {
                                newQueue.push(file);
                            }
                        });
                    });
                    if(newQueue.length > 1){
                        myDropzone.files = newQueue;
                    }
                }
            });

            $("form#dropzone").disableSelection();

        });
    </script>


@endsection
