
@extends('admin.layouts')

@section('content')
<div class="container col-12">
  <div class="row justify-content-center">
    <div class="col-12">
      <div class="card">
        <div class="card-header"><a href="{{ route('pages.create') }}" class="btn btn-primary" ><i class="fa fa-fw fa-plus"></i>Создать</a></div>

        <div class="card-body">
            @include('admin.includes.alerts')

            <ul class="navbar-nav mr-auto" id="mainMenu">
                @php
                function buildMenu($items)
                {
                    foreach ($items as $item) {

                        if (isset($item->children)) {
                        @endphp
                            <li class="nav-item">
                                <a href="{{route('pages.edit',$item->id)}}" class="nav-link">
                                    {{ $item->translate()->title }}
                                </a>
                                <ul class="navbar-collapse">
                                    @php buildMenu($item->children) @endphp
                                </ul>
                            </li>
                        @php
                        } else {
                        @endphp
                            <li class="nav-item ">
                                <a href="{{route('pages.edit',$item->id)}}" class="nav-link">{{ $item->translate()->page_title }}</a>
                            </li>
                        @php
                        }
                    }
                }
                buildMenu($pages)
                @endphp
            </ul>

            <a href="{{ route('pages.create') }}" class="btn btn-primary mt-4" ><i class="fa fa-fw fa-plus"></i>Создать</a>

        </div>
      </div>
    </div>
  </div>
</div>
@endsection
