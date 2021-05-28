@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />

    <link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/consultation.min.css')}}">
@endsection


@section('content')

    <div class="about-us">
        @include('frontend.includes.breadcrumbs')
        <div class="about-us__header">
            <h2 class="about-us__title">{{ $page->translate()->title }}</h2>
            <div class="page__body">
                {!! $page->translate()->body !!}
            </div>
            <div class="about-us__services">
                <h3 class="about-us__services-title">@lang('main.services')</h3>
                <ul class="page__links">
                    @foreach($links as $link)
                        <li><a href='{{ LaravelLocalization::localizeUrl("$link->url") }}'>{{$link->translate()->title}}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="about-us__wrapper">
            <h3 class="about-us__additional-title">@lang('main.portfolio')</h3>
        </div>

        <div class="about-us__wrapper">
            @foreach($portfolio as $item)
                <div class="about-us__img">
                    <a data-fancybox="gallery" href="{{$item->image}}">
                        <img src="{{asset('/frontend/images/zaglushka.png')}}" class="lazy" data-src="{{$item->image}}" alt="{{$item->image}} {{$item->id}}">
                        <noscript>
                            <img src="{{$item->image}}" alt="slider">
                        </noscript>
                    </a>
                </div>
            @endforeach
        </div>

        <div class="about-us__footer">
            <h3 class="about-us__additional-title">{{ $page->translate()->additional_title }}</h3>
            <div class="page__additional-body">
                {!! $page->translate()->additional_body !!}
            </div>
        </div>

    </div>
    @include('frontend.includes.consultation')

@endsection

@section('scripts')
    <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
    <script src="{{asset('/frontend/js/scroll_up.min.js')}}></script>
@endsection
