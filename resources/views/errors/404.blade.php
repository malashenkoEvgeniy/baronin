@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="/frontend/css/layout.css">
    <link rel="stylesheet" href="/frontend/css/404.css">
@endsection


@section('content')

<div class="error-404">
    <h2 class="error-title">404</h2>
    <p>Страница не найдена</p>
    <a href='{{ LaravelLocalization::localizeUrl("/") }}' class="button button_return"> <span class="button__title"> Перейти на главную</span></a>
</div>
@endsection
