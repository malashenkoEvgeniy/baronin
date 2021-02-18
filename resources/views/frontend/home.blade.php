@extends('frontend.layout')


@section('links')
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="/frontend/css/home.css">

@endsection


@section('content')
    <main>
        <div class="page-banner">
            <div class="variable slider">
                @foreach($slider as $elem)
                    @if($elem->is_video == 1)
                        <div>
                            <video loop="loop" autoplay="autoplay" muted="muted" playsinline preload="auto">
                                <source src="{{$elem->url}}" type="video/mp4">
                            </video>
                        </div>
                    @else
                        <div>
                            <img src="{{$elem->url}}">
                        </div>
                    @endif
                @endforeach
            </div>
            <div class="page-banner__title">{!! $page->translate()->title !!}</div>
            <div class="page-banner__buttons">
                <a href='{{ LaravelLocalization::localizeUrl("/projects") }}' class="page-banner__button">@lang('main.portfolio')</a>
                <a href='{{ LaravelLocalization::localizeUrl("/contacts") }}' class="page-banner__button">@lang('main.contacts')</a>
            </div>
        </div>

        <section class="about-us section">
            <div class="about-us__img">
                <img src="/frontend/images/home/about_us.jpg" alt="about us">
            </div>

            <div class="about-us__right">
                <div class="about-us__right_content">
                    <h2 class="title about-us__title"><a href='{{ LaravelLocalization::localizeUrl("/o-nas") }}'>@lang('main.about_us')</a></h2>
                    <div class="about-us__text">
                        {!! $page->translate()->about_us !!}
                    </div>
                    <a href='{{ LaravelLocalization::localizeUrl("/o-nas") }}' class="button" title="О нас"><span class="button__title">@lang('main.details')</span></a>
                </div>
            </div>
        </section>

        <section class="section section_categories">
            <h2 class="section__title main-category-title">@lang('main.services')</h2>
            <div class="categories">
                <div class="categories__bg"></div>

                @foreach($catalogPages as $item)
                <div class="category">
                    <a href='{{ LaravelLocalization::localizeUrl("$item->url") }}' class="category__title">{{$item->translate()->title}}</a>
                    <a href='{{ LaravelLocalization::localizeUrl("$item->url") }}' title="{{$item->translate()->title}}" class="category__link">
                        <img src="{{$item->image}}" alt="{{$item->translate()->title}}">
                    </a>
                    <div class="button_show-more-wrap">

{{--                        @if( $catalogPages->nextPageUrl() !== null)--}}
{{--                            <button class="button_show-more" data-page="{{$catalogPages->nextPageUrl()}}">@lang('main.show_more')</button>--}}
{{--                        @endif--}}
                    </div>
                </div>
                @endforeach

            </div>
        </section>

        <section class="section section_padding section_advantages">
            <h2 class="section__title">@lang('main.advantages.title')</h2>
            <div class="advantages">
                <div class="advantage">
                    <div class="advantage__icon" style="background-image:url('/frontend/images/home/invest.png');"></div>
                    <h3 class="advantage__title">@lang('main.advantages.1.title')</h3>
                    <p class="advantage__description">@lang('main.advantages.1.text')</p>
                </div>
                <div class="advantage">
                    <div class="advantage__icon" style="background-image:url('/frontend/images/home/years.png');"></div>
                    <h3 class="advantage__title">@lang('main.advantages.2.title')</h3>
                    <p class="advantage__description">@lang('main.advantages.2.text')</p>
                </div>
                <div class="advantage">
                    <div class="advantage__icon" style="background-image:url('/frontend/images/home/planet.png');"></div>
                    <h3 class="advantage__title">@lang('main.advantages.3.title')</h3>
                    <p class="advantage__description">@lang('main.advantages.3.text')</p>
                </div>
                <div class="advantage">
                    <div class="advantage__icon" style="background-image:url('/frontend/images/home/brick.png');"></div>
                    <h3 class="advantage__title">@lang('main.advantages.4.title')</h3>
                    <p class="advantage__description">@lang('main.advantages.4.text')</p>
                </div>
                <div class="advantage">
                    <div class="advantage__icon" style="background-image:url('/frontend/images/home/warranty.png');"></div>
                    <h3 class="advantage__title">@lang('main.advantages.5.title')</h3>
                    <p class="advantage__description">@lang('main.advantages.5.text')</p>
                </div>
                <div class="advantage">
                    <div class="advantage__icon" style="background-image:url('/frontend/images/home/checklist.png');"></div>
                    <h3 class="advantage__title">@lang('main.advantages.6.title')</h3>
                    <p class="advantage__description">@lang('main.advantages.6.text')</p>
                </div>
            </div>
        </section>

        <section class="section section_seo">
            <div class="seo">
                <div class="seo__image">
                    <img src="/frontend/images/home/seo.jpg" alt="seo image">
                </div>
                <div class="seo__form">
                    <form action="{{route('sendForm')}}" method="post" class="form form_consultation">
                        <h3 class="form__title">@lang('main.form.consultation')</h3>
                        <div class="input-group_2">
                            <input type="text" class="input" name="name" placeholder="@lang('main.form.input_name')" required>
                            <input type="text" class="input" name="phone" placeholder="@lang('main.form.input_phone')" required>
                        </div>
                        {!! csrf_field() !!}
                        <input type="hidden" name="page" value="{{url()->full()}}">
                        <button type="submit" class="button">@lang('main.form.send')</button>
                    </form>
                </div>
                <div class="seo__text">
                    {!! $page->translate()->body !!}
                </div>
            </div>
        </section>

{{--        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2645.6716642935244!2d35.038421915660315!3d48.46282897925076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dbe2e0c4a111dd%3A0xa3e993a12deffa66!2z0YPQu9C40YbQsCDQodGC0LDRgNC-0LrQvtC30LDRhtC60LDRjywgMjUsINCU0L3QuNC_0YDQviwg0JTQvdC10L_RgNC-0L_QtdGC0YDQvtCy0YHQutCw0Y8g0L7QsdC70LDRgdGC0YwsIDQ5MDAw!5e0!3m2!1sru!2sua!4v1606981253321!5m2!1sru!2sua" frameborder="0" allowfullscreen="" aria-hidden="false" class="google-map"></iframe>--}}

    </main>
@endsection
@section('scripts')
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="/frontend/js/slick.js"></script>
    <script src="/frontend/js/scroll_up.js"></script>
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
                let items = page.find('.category');
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
@endsection
