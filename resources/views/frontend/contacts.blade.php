@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="{{asset('/frontend/css/contacts.min.css')}}">
	<link rel="stylesheet" href="{{asset('/frontend/css/breadcrumbs.min.css')}}">
    <link rel="stylesheet" href="{{asset('/frontend/css/consultation.min.css')}}">
@endsection

@section('content')
    @include('frontend.includes.breadcrumbs')
<div class="contacts">
    <div class="contacts__banner">
        <h1 class="contacts__title">{{$page->translate()->title}}</h1>
        <div class="contacts__links">
            <a href="viber://chat?number=%2B38{{$contacts->viber}}" class="contacts__link" title="Мы в Viber">
                @include('frontend.svg.viber')
            </a>
            <a href="{{$contacts->telegram}}" class="contacts__link" title="Мы в Telegram">
                @include('frontend.svg.telegram')
            </a>
            <a href="{{$contacts->facebook}}" class="contacts__link" title="Мы в Facebook">
                @include('frontend.svg.facebook')
            </a>
            <a href="{{$contacts->instagram}}" class="contacts__link" title="Мы в Instagram">
                @include('frontend.svg.instagram')
            </a>
        </div>
    </div>

    <div class="info">
        <div class="info__item info__item_address">
            <p class="info__title">@lang('main.address'):</p>
            <p class="info__value">{{$contacts->translate()->address}}</p>
        </div>

        <div class="info__item info__item_phone">
            <p class="info__title">@lang('main.form.phone'):</p>
            <p class="info__value"><a href="tel:{{$contacts->phone_1}}">{{$contacts->phone_1}}</a></p>
            <p class="info__value"><a href="tel:{{$contacts->phone_2}}">{{$contacts->phone_2}}</a></p>
            <p class="info__title">Email:</p>
            <p class="info__value"><a href="mailto:{{$contacts->email}}">{{$contacts->email}}</a></p>
        </div>
    </div>
</div>



    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2643.2096484131334!2d32.26824961584426!3d48.510045633124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d042aec4b866c9%3A0x6a3be7da5a2d7b02!2z0J_QsNGI0YPRgtC40L3RgdC60LDRjyDRg9C7LiwgMzEsINCa0YDQvtC_0LjQstC90LjMgdGG0LrQuNC5LCDQmtC40YDQvtCy0L7Qs9GA0LDQtNGB0LrQsNGPINC-0LHQu9Cw0YHRgtGMLCAyNTAwMA!5e0!3m2!1sru!2sua!4v1618221742176!5m2!1sru!2sua" width="1920" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>




    @include('frontend.includes.consultation')
@endsection
@section('scripts')
    <script src="{{asset('/frontend/js/scroll_up.min.js')}}"></script>
@endsection
