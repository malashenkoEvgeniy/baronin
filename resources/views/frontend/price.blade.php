@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" href="/frontend/css/page.css">
    <link rel="stylesheet" href="/frontend/css/breadcrumbs.css">
    <link rel="stylesheet" href="/frontend/css/consultation.css">
    <link rel="stylesheet" href="/frontend/css/price.css">
{{--    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--}}
@endsection


@section('content')

    <div class="price">
        @include('frontend.includes.breadcrumbs')
        <div class="about-us__header">
            <h2 class="about-us__title">{{ $page->translate()->title }}</h2>
            <div class="page__body">
                {!! $page->translate()->body !!}
            </div>
        </div>

        <div id="tabs" >
            <din class="tabs-first">
                <h3 class="price-table-main-header"><div>@lang('main.price_table.various')</div> @lang('main.price_table.work')</h3>
                <ul class="price-table-service">
                    @foreach($services as $item)
                        <li class="tab "><span class="price-table-first " >{{$item->translate()->title}}</span></li>
                    @endforeach
                </ul>
            </din>
            <div class="tabs-second">
                @foreach($services as $item)
                <table class="price-table" id="tabs-{{$loop->iteration}}">
                    <tr class="price-table-first-column">
                        <th  class="price-header price-table-second-header">@lang('main.price_table.name_of_works')</th>
                        <th class="price-header price-table-third-header"><div> @lang('main.price_table.cost')</div>@lang('main.price_table.uah')</th>
                        <th class="price-header price-table-forth-header">@lang('main.price_table.units')</th>
                    </tr>
                    @foreach($item->prices as $elem)
                    <tr>
                        <td class="price-table-second " >{{$elem->translate()->title}}</td>
                        <td class="price-table-third">{{$elem->translate()->cost}}</td>
                        <td class="price-table-forth">{{$elem->translate()->units}}</td>
                    </tr>
                    @endforeach
                </table>
                @endforeach
            </div>
        </div>

        <div class="about-us__footer">
            <h3 class="about-us__additional-title">{{ $page->translate()->additional_title }}</h3>
            <div class="page__additional-body">{!! $page->translate()->additional_body !!} </div>
        </div>
    </div>
    @include('frontend.includes.consultation')

@endsection

@section('scripts')
    <script src="/frontend/js/scroll_up.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>


        if ($(window).width() < 770) {
            $('.tab').click(function(e){
                $('.price-table.active').removeClass('active');
                $('.tab').toggleClass('hide');
                if(!$(this).hasClass('active')){
                    $('.tab.active').removeClass('active');
                    $(this).toggleClass('active');
                    $('.tabs-second .price-table').eq($(this).index()).addClass('active');
                }
            })
        }else{

            $('.price-table-service .tab').eq(0).addClass('active');
            $('.tabs-second .price-table').eq(0).addClass('active');


            $('.tab').click(function(e){
                $('.price-table.active').removeClass('active');
                $('.tab.active').removeClass('active');
                $(this).toggleClass('active');
                $('.tabs-second .price-table').eq($(this).index()).addClass('active');
            })

            $( function() {
                // $( "#tabs" ).tabs();
                let firstList = $('.price-table-service').css('height');
                let firstHeader = $('.price-table-main-header').css('height');
                let heightFirstColumn = +firstHeader.slice(0, -2) + +firstList.slice(0, -2);
                $('.tabs-second').css('max-height', heightFirstColumn + "px");
                $('.tabs-second').css('max-height', heightFirstColumn + "px");

            } );
        }

    </script>
@endsection
