@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="/frontend/css/project.css">

    <link rel="stylesheet" href="/frontend/css/page.css">
    <link rel="stylesheet" href="/frontend/css/consultation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="/frontend/css/breadcrumbs.css">

@endsection


@section('content')
    @include('frontend.includes.breadcrumbs')
    <div class="project__header">
        <h2 class="project__header-title ">{{ $page->translate()->title }}</h2>
    </div>
<div class="project">

    <div class="project__body">

        {!! $page->translate()->body !!}

        <div class="gallery project__gallery">
            @foreach($images as $item)
            <a data-fancybox="gallery" href="{{$item->image}}" class="gallery__item">
                <img src="{{$item->image}}" alt="{{$page->translate()->title}} {{$loop->iteration}}">
            </a>
            @endforeach
        </div>

        {!! $page->translate()->body_bottom !!}


        <div class="project__nav">
            @if($previous !== null)
            <a href='{{ LaravelLocalization::localizeUrl("/projects/"."$previous->url") }}' class="prev">
                <span class="project__arrow">@include('frontend.svg.rounded_arrow')</span>
                <span>@lang('main.prev')</span>
            </a>
            @endif

            @if($next !== null)
            <a href='{{ LaravelLocalization::localizeUrl("/projects/"."$next->url") }}' class="next">
                <span>@lang('main.next')</span>
                <span class="project__arrow">@include('frontend.svg.rounded_arrow')</span>
            </a>
            @endif
        </div>

    </div>


    <form action="{{route('sendForm')}}" method="post" class="project__form">
        <h3 class="project__form_title">@lang('main.form.price_of_project')</h3>
        <input type="text" class="input" name="name" placeholder="@lang('main.form.name_req')" required>
        <input type="text" class="input" name="phone" placeholder="@lang('main.form.phone_req')" required>
        <input type="text" class="input" name="body" placeholder="@lang('main.form.message')">
        <input type="hidden" name="page" value="{{url()->full()}}">
        {!! csrf_field() !!}
        <button type="submit" class="button button_submit">@lang('main.form.send')</button>
    </form>



</div>
    @include('frontend.includes.consultation')

@endsection

@section('scripts')
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
    <script src="/frontend/js/scroll_up.js"></script>
@endsection
