<header class="header">

    <div class="burger open-mobile-menu">
        <div class="burger__content">
            <div class="burger__line"></div>
        </div>
    </div>

    <div class="header__content">
        <div class="logo header__logo">
            <a href='{{ LaravelLocalization::localizeUrl("/") }}'>
                <img src="/frontend/images/icons/logo-baronin.png" alt="logo WKS">
            </a>
        </div>
        <a href="tel:{{$contacts->phone_1}}" class="header__phone">
            @include('frontend.svg.phone')
            <span>{{$contacts->phone_1}}</span>
        </a>
{{--            Временно убирает англиский--}}
        <div class="lang">
            @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                @if ($localeCode === 'en')
                    @continue
                @else


            <a class="lang__link" rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">{{$localeCode}}</a>
                @endif
            @endforeach
        </div>

    </div>

    <nav class="mobile-menu">
        <div class="mobile-menu__bg"></div>
        <div class="burger active mobile-menu__close mobile-menu__toggle">
            <div class="burger__content">
                <div class="burger__line"></div>
            </div>
        </div>
        <ul class="mobile-menu__items">

            @php
            function buildMenu($items)
            {
                foreach ($items as $item) {

                    if ($item->children->isNotEmpty()) {
                    @endphp
                        <li class="mobile-menu__item">
                            <a href='{{ LaravelLocalization::localizeUrl("$item->url") }}'>{{ $item->translate()->title }}</a>
                            <div class="open-sub-menu">
                                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                width="451.846px" height="451.847px" viewBox="0 0 451.846 451.847" style="enable-background:new 0 0 451.846 451.847;"
                                xml:space="preserve">
                                <g>
                                <path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
                                    L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
                                    c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"/></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
                            </div>
                            <ul class="mobile-menu__sub-menu">
                                @php buildMenu($item->children) @endphp
                            </ul>
                        </li>
                    @php
                    } else {
                    @endphp
                        <li class="mobile-menu__item"><a href='{{ LaravelLocalization::localizeUrl("$item->url") }}'>{{ $item->translate()->title }}</a></li>
                    @php
                    }
                }
            }

            buildMenu($pages);
            @endphp

            <li class="mobile-menu__item"><a href='{{ LaravelLocalization::localizeUrl("/projects") }}'>@lang('main.portfolio')</a></li>
            <li class="mobile-menu__item"><a href='{{ LaravelLocalization::localizeUrl("/price") }}'>@lang('main.prices')</a></li>
            <li class="mobile-menu__item"><a href='{{ LaravelLocalization::localizeUrl("/contacts") }}'>@lang('main.contacts')</a></li>
        </ul>
        <div class="mobile-menu__contacts">
            <div class="mobile-menu__contact">
                @include('frontend.svg.phone')
                <a href="tel:{{$contacts->phone_1}}">{{$contacts->phone_1}}</a>
            </div>
            <div class="mobile-menu__contact">
                @include('frontend.svg.phone')
                <a href="tel:{{$contacts->phone_2}}">{{$contacts->phone_2}}</a>
            </div>
            <a href="mailto:{{$contacts->email}}">{{$contacts->email}}</a>
        </div>
    </nav>
</header>
