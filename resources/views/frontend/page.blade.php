@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="/frontend/css/page.css">
    <link rel="stylesheet" href="/frontend/css/breadcrumbs.css">
    <link rel="stylesheet" href="/frontend/css/consultation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />

@endsection


@section('content')

<div class="page">
    @if($page->id ===7)
        <div class="service__banner" style="background:url('{{ $page->banner }}') no-repeat center; background-size: cover; height: auto">
            <div class="services-wrapper">
                <h2 class="page__title">{{ $page->translate()->title }}</h2>
                <ul class="page__links service-links">
                    @foreach($page->childrens as $link)
                        <li><a href='{{ LaravelLocalization::localizeUrl("$link->url") }}'>{{$link->translate()->title}}</a></li>
                    @endforeach
                </ul>
            </div>
        </div>
        @include('frontend.includes.breadcrumbs')
        <div class="services-wrapper">
            @foreach($catalogPages as $item)

                <div class="services">
                    <a href='{{ LaravelLocalization::localizeUrl("$item->url") }}' title="{{$item->translate()->title}}" class="services_link">
                        <img src="{{$item->image}}" alt="{{$item->translate()->title}}">
                    </a>
                </div>
            @endforeach
                <div class="page__body">
                    {!! $page->translate()->body !!}
                </div>
        </div>

    @else
        @include('frontend.includes.breadcrumbs')
        <div class="page__header">
            <h2 class="page__title">{{ $page->translate()->title }}</h2>
            @if(!empty($page->childrens))
                <ul class="design__links">

                    @foreach($page->childrens as $link)
                        <li><a href='{{ $link->url }}'>{{$link->translate()->title}}</a></li>
                    @endforeach
                </ul>
            @endif
            @if($page->id ===3 or $page->id ===12 or $page->id ===13 or $page->id ===14)
                <div class="design__body">
                    <ul class="design-img-list">
                        @foreach($images as $img)
                            <li class="desgn-img"><a  data-fancybox="gallery" href='{{$img->url}}'><img src="{{$img->url}}" alt="desgn-img" width="382" height="323"></a></li>
                        @endforeach
                    </ul>
                    <div class="button_show-more-wrap">

                            @if( $images->nextPageUrl() !== null)
                                <button class="button_show-more" data-page="{{$images->nextPageUrl()}}">@lang('main.show_more')</button>
                            @endif
                    </div>
                </div>
            @endif
            <div class="page__body">
                {!! $page->translate()->body !!}
            </div>
            @if($page->id ===1)
                <div class="page__services">
                    <h3 class="page__services-title">@lang('main.services')</h3>
                    <ul class="page__links">
                        @foreach($links as $link)
                            <li><a data-fancybox="gallery" href='{{ LaravelLocalization::localizeUrl("$link->url") }}'>{{$link->translate()->title}}</a></li>
                        @endforeach
                    </ul>
                </div>
            @endif
        </div>
    @endif

    @if($page->id ===1)
        <div class="portfolio__wrapper">
            <h3 class="page__additional-title">@lang('main.portfolio')</h3>
        </div>
        <div class="portfolio__wrapper">
            @foreach($portfolio as $item)
                <div class="page__img">
                    <a data-fancybox="gallery" href="{{$item->image}}">
                        <img src="{{$item->image}}" alt="{{$item->image}}">
                    </a>
                </div>
            @endforeach
        </div>
    @endif
    <div class="page__footer">
        <h3 class="page__additional-title">{{ $page->translate()->additional_title }}</h3>
        @if( $page->image !== null)
            <img src="{{$page->image}}" alt="{{$page->image}}" class="page__body-img">
        @endif

        {!! $page->translate()->additional_body !!}
        <div style="clear: both"></div>
    </div>


    @include('frontend.includes.consultation')
@endsection
@section('scripts')
    <script src="/frontend/js/scroll_up.js"></script>
            <script>
                $('.button_show-more').click(function(){

                    let page = $(this).attr('data-page');

                    $.ajax({
                        method: 'GET',
                        url: page,
                        data: {
                            _token: '{{csrf_token()}}',
                        }
                    }).done(function(data){
                        let page = $(data);
                        let items = page.find('.desgn-img');
                        if (page.find('.button_show-more').length == 1) {
                            let nextPage = page.find('.button_show-more').attr('data-page');
                            $('.button_show-more').attr('data-page', nextPage);
                        }else{
                            $('.button_show-more').remove();
                        }

                        $('.design-img-list').append(items);

                        let next = $('.page-item.active').next();
                        $('.page-item.active').removeClass('active');
                        next.addClass("active");
                    });
                });

            </script>
            <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
@endsection
