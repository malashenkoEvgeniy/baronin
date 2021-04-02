@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="{{asset('/frontend/css/page.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/consultation.min.css')}}">
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
                <div class="categories-wrapper">

                    <div class="categories">
                        <h2 class=" page__title">@lang('main.services')</h2>
                        @foreach($catalogPages as $item)
                            <div class="category">
                                <a href='{{ LaravelLocalization::localizeUrl("$item->url") }}' class="category__title">{{$item->translate()->title}}</a>
                                <a href='{{ LaravelLocalization::localizeUrl("$item->url") }}' title="{{$item->translate()->title}}" class="category__link">
                                    <img src="{{$item->image}}" alt="{{$item->translate()->title}} {{$img->id}}">
                                </a>
                            </div>
                        @endforeach
                    </div>
                    @if( $catalogPages->nextPageUrl() !== null)
                        <button class="button_show-more" data-page="{{$catalogPages->nextPageUrl()}}">@lang('main.show_more')</button>
                    @endif
                </div>

        </div>
        <div class="portfolio__wrapper">
            @foreach($portfolio as $item)
                @if($item->page_id ===7)
                    <div class="page__img ">
                        <a data-fancybox="gallery" href="{{$item->url}}">
                            <img src="{{$item->url}}" alt="{{ $page->translate()->title }} {{$item->id}}">
                        </a>
                    </div>
                @endif
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
                    <ul class="portfolio__wrapper">
                        @foreach($images as $img)
                            <li class="page__img "><a  data-fancybox="gallery" href='{{$img->url}}'><img src="{{$img->url}}"  alt="{{$img->url}} {{$img->id}}" width="382" height="323"></a></li>
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
                <div class="page__services about_us__services-links">
                    <h3 class="page__services-title">@lang('main.services')</h3>
                    <ul class="page__links">
                        @foreach($links as $link)
                            <li><a  href='{{$link->url}}'>{{$link->translate()->title}}</a></li>
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
                @if($item->page_id ===1)
                <div class="page__img ">
                    <a data-fancybox="gallery" href="{{$item->url}}">
                        <img src="{{$item->url}}" alt="{{ $page->translate()->title }}  {{$page->id}}">
                    </a>
                </div>
                @endif
            @endforeach
        </div>
    @endif
    <div class="page__footer">
        <h3 class="page__additional-title">{{ $page->translate()->additional_title }}</h3>
        @if( $page->image !== null)
            <img src="{{$page->image}}" alt="{{$page->image}} {{$page->id}}" class="page__body-img">
        @endif

        {!! $page->translate()->additional_body !!}
        <div style="clear: both"></div>
    </div>


    @include('frontend.includes.consultation')
@endsection
@section('scripts')
    <script src="{{asset('/frontend/js/scroll_up.min.js')}}"></script>
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
