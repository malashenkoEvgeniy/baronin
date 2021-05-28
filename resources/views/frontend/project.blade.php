@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="{{asset('/frontend/css/project.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/page.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/consultation.min.css')}}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />

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
            <a data-fancybox="gallery" href="{{$item->img_max}}" class="gallery__item">
                <img src="{{asset('/frontend/images/zaglushka.png')}}" class="lazy" data-src="{{$item->image}}" alt="{{$page->translate()->title}} {{$loop->iteration}}" width="380" height="290">
                <noscript>
                    <img src="{{$item->image}}"alt="{{$page->translate()->title}} {{$loop->iteration}}">
                </noscript>

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
<script src="{{asset('/frontend/js/scroll_up.min.js')}}"></script>
<script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Event",
      "name": "{{ $page->translate()->title }}",
      "startDate": "2021-01-01T19:00-05:00",
      "endDate": "2022-01-01T23:00-05:00",
      "eventAttendanceMode": 		"https://schema.org/OfflineEventAttendanceMode",
      "eventStatus": "https://schema.org/EventScheduled",
      "location": {
        "@type": "Place",
        "name": "Kropivnickiy",
        "address": {
        "@type": "PostalAddress",
        "streetAddress": "Starocozackaiy St 25",
        "addressLocality": "Dnepr",
        "addressCountry": "UA"
      },
      },
      "image": [
        "https://baronin-ds.com.ua/frontend/images/icons/logo-baronin.png",
       ],
      "description": "{{ $page->translate()->body }}",
      "organizer": {
        "@type": "Organization",
        "name": "Baronin ds",
        "url": "https://baronin-ds.com.ua/"
      }
    }
    </script>
@endsection
