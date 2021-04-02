@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="{{asset('/frontend/css/page.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/consultation.min.css')}}">
@endsection


@section('content')

    <div class="design">
        @include('frontend.includes.breadcrumbs')
        <div class="design__header">
            <h2 class="design__title">{{ $page->translate()->title }}</h2>
            <ul class="design__links">
                @foreach($links as $link)
                    <li><a href='{{ $link->url }}'>{{$link->translate()->title}}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="design__body">
            <ul class="design-img-list">
                @foreach($images as $img)
                    <li><a href='#'><img src="{{$img->url}}" alt="desgn-img" width="382" height="323"></a></li>
                @endforeach
            </ul>
            <div class="button_show-more-wrap">
                @if( $images->nextPageUrl() !== null)
                    <a class="button_show-more" href="{{$images->nextPageUrl()}}">@lang('main.show_more')</a>
                @endif
            </div>
            <div class="page__body">
                {!! $page->translate()->body !!}
                @if( $page->image !== null)
                    <img src="{{$page->image}}" alt="{{$page->image}} {{$page->id}}" class="page__body-img">
                @endif

                {!! $page->translate()->additional_body !!}
                <div style="clear: both"></div>
            </div>
        </div>
    </div>
    @include('frontend.includes.consultation')

@endsection
@section('scripts')
    <script src="{{asset('/frontend/js/scroll_up.min.js')}}"></script>
@endsection
