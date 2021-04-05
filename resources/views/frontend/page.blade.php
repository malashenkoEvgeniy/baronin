@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="{{asset('/frontend/css/page.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/consultation.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/projects.min.css')}}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />

@endsection


@section('content')
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

<div class="page">


        @include('frontend.includes.breadcrumbs')
        <div class="projects">
        @foreach($projects as $project)
            <div class="project">
                <a href='{{ LaravelLocalization::localizeUrl("/projects/"."{$project->project->url}") }}' title="{{$project->project->translate()->title}}" class="project__image">
                    <img src="{{$project->project->image}}" alt="{{$project->project->translate()->title}} {{$loop->iteration}}">
                </a>
                <a href='{{ LaravelLocalization::localizeUrl("/projects/"."$project->project->url") }}' class="project__title"><span class="project__title_text">{{$project->project->translate()->title}}</span></a>
            </div>
        @endforeach

        <div class="projects__bottom">
            @if( $projects->nextPageUrl() !== null)
                <button class="projects__show-more button_show-more" data-page="{{$projects->nextPageUrl()}}">@lang('main.show_more')</button>
            @endif

            <div class="projects__pagination">
                {{$projects->links()}}
            </div>
        </div>

    </div>
        <div class="services-wrapper">
            {!!$page->translate()->body !!}

        </div>


{{--    <div class="page__footer">--}}
{{--        <h3 class="page__additional-title">{{ $page->translate()->additional_title }}</h3>--}}


{{--        {!! $page->translate()->additional_body !!}--}}
{{--        <div style="clear: both"></div>--}}
{{--    </div>--}}
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
