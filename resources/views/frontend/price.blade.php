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
                <h3 class="price-table-main-header"><div>Общестроительные (Разные)</div> работы</h3>
                <ul class="price-table-service">
                    @foreach($services as $item)
                        <li><a href="#tabs-{{$loop->iteration}}" class="price-table-first ">{{$item->translate()->title}}</a></li>
                    @endforeach
                </ul>
            </din>
            @foreach($services as $item)


                    <table class="price-table" id="tabs-{{$loop->iteration}}">
                        <tr class="price-table-first-column">
                            <th  class="price-header price-table-second-header">Наименование работ</th>
                            <th class="price-header price-table-third-header"><div> Стоимость</div>грн.</th>
                            <th class="price-header price-table-forth-header">Ед.изм.</th>
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
        $( function() {
            $( "#tabs" ).tabs();
            $('#tabs').css('max-height', $('.tabs-first').css('height'));
        } );
    </script>
@endsection
