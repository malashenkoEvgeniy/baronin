@extends('frontend.layout')
@section('links')
    <link rel="stylesheet" href="{{asset('/frontend/css/page.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
@endsection

@section('content')

<div class="page">
    <div class="page__banner" style="background-image:url('{{ $page->banner }}');">
        <h2 class="service__title">{{ $page->translate()->title }}</h2>
        <ul class="page__links service-links">
            @foreach($links as $link)
            <li><a href='{{ LaravelLocalization::localizeUrl("$link->url") }}'>{{$link->translate()->title}}</a></li>
            @endforeach
        </ul>
    </div>
    @include('frontend.includes.breadcrumbs')
    <div class="services-wrapper">
        @foreach($catalogPages as $item)

            <div class="services">
                <a href='{{ LaravelLocalization::localizeUrl("$item->url") }}' title="{{$item->translate()->title}}" class="services_link">
                    <img src="{{asset('/frontend/images/zaglushka.png')}}" class="lazy" data-src="{{$item->image}}" alt="{{$item->translate()->title}}"/>
                    <noscript>
                        <img src="{{$item->image}}" alt="{{$item->translate()->title}}">
                    </noscript>
                </a>
            </div>
        @endforeach
    </div>
    <div class="page__body">
        {!! $page->translate()->body !!}
        <img src="{{asset('/frontend/images/zaglushka.png')}}" class="page__body-img lazy" data-src="{{$page->image}}"  alt="{{$page->image}}" />
        <noscript>
            <img src="{{$page->image}}" alt="{{$page->image}}">
        </noscript>
        {!! $page->translate()->additional_body !!}
    </div>
</div>

@endsection
@section('scripts')
    <script src="{{asset('/frontend/js/scroll_up.min.js')}}"></script>
@endsection
