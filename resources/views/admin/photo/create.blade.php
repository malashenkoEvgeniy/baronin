@extends('admin.layouts')
@section('links')
    <link rel="stylesheet" href="/admin/css/index.css">
    <link rel="stylesheet" href="{{asset('admin/libs/dropzone/dist/dropzone.css')}}">
@endsection
@section('content')
<div class="container col-12">

    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">

                <div class="card-header">Загрузить фото</div>

                <div class="card-body">

                    <form action="{{route('photo.store')}}" method="POST" class="dropzone" id="dropzone" enctype="multipart/form-data">
                        {!! csrf_field() !!}

                        <div class="on-main-page-image">
                            <div class=" input-group mb-3 ">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Изображение страницы</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" multiple  name="url" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" required>
                                    <input type="hidden" name="page_id" value="{{ $id }}">
                                    <label class="custom-file-label" for="inputGroupFile01">Выберите файл</label>
                                </div>
                            </div>
                        </div>
                        <input type="hidden"  name="id" value="{{$id}}" id="id">
                        <button type="submit" class="btn btn-primary upload">Создать</button>
                    </form>


                </div>
            </div>
        </div>
    </div>
</div>

@endsection


@section('scripts')
  <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script src="{{asset('admin/libs/dropzone/dist/dropzone.js')}}"></script>
  <script>
      Dropzone.autoDiscover = false;

      $(document).ready(function () {
          let myDropzone = new Dropzone(".dropzone",{
              uploadMultiple: true,
              autoProcessQueue: false,
              paramName: "url",
              maxFile: 99,
              parallelUploads: 100,
              url:"{{route('photo.store')}}",
              acceptedFiles: ".png, .jpeg, .jpg, .gif",
              headers: {'X-CSRF-Token': $('input[name="_token"]').attr('value') },
              params:{
                  'id': {{$id}}
              },
          });



          myDropzone.on("sending", function(file, xhr, formData) {
              formData.append('id', $('#id').val());
             // debugger;
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
