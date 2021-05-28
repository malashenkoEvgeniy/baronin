@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="{{asset('/frontend/css/projects.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/page.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/consultation.min.css')}}">
@endsection

@section('content')

<div class="page">
    @include('frontend.includes.breadcrumbs')
    <div class="project__header">
        <h2 class="project__header-title">{{ $page->translate()->title }}</h2>
    </div>
    <div class="projects">
        @foreach($projects as $project)
        <div class="project">
            <a href='{{ LaravelLocalization::localizeUrl("/projects/"."$project->url") }}' title="{{$project->translate()->title}}" class="project__image">
                <img src="{{asset('/frontend/images/zaglushka.png')}}" class="lazy" data-src="{{$project->image}}"  alt="{{$project->translate()->title}} {{$loop->iteration}}"/>
                <noscript>
                    <img src="{{$project->image}}" alt="{{$project->translate()->title}} {{$loop->iteration}}">
                </noscript>
            </a>
            <a href='{{ LaravelLocalization::localizeUrl("/projects/"."$project->url") }}' class="project__title"><span class="project__title_text">{{$project->translate()->title}}</span></a>
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

    <div class="page__body">
        {!! $page->translate()->body_bottom !!}
    </div>


    <div class="page__body">
        {!! $page->translate()->body !!}
        @if( $page->image !== null)
            <img src="{{asset('/frontend/images/zaglushka.png')}}" class="page__body-img lazy" data-src="{{$page->image}}"  alt="{{$page->image}} {{$page->id}}" />
            <noscript>
                <img src="{{$page->image}}" alt="slider">
            </noscript>
        @endif

        {!! $page->translate()->additional_body !!}
        <div style="clear: both"></div>
    </div>

</div>
@include('frontend.includes.consultation')

@endsection

@section('scripts')
<script>
	$('.projects__show-more').click(function(){

		let page = $(this).attr('data-page');

		$.ajax({
			method: 'GET',
			url: page,
			data: {
				_token: '{{csrf_token()}}',
			}
		}).done(function(data){
			let page = $(data);
			let items = page.find('.project');
			if (page.find('.projects__show-more').length == 1) {
				let nextPage = page.find('.projects__show-more').attr('data-page');
				$('.projects__show-more').attr('data-page', nextPage);
			}else{
				$('.projects__show-more').remove();
			}

			$('.projects').append(items);

			let next = $('.page-item.active').next();
			$('.page-item.active').removeClass('active');
			next.addClass("active");
		});
	});

</script>
<script src="{{asset('/frontend/js/scroll_up.min.js')}}"></script>
@endsection
