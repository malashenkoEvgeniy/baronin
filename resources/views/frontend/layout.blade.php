<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@if(isset($seo->title)){{$seo->title}}@endif </title>
      <meta name="google-site-verification" content="HaC6hSz-uzSN-FfQ0q3AL-Uu1Q272TmmDPJJnWFI3WA" />
      <meta name="yandex-verification" content="a93073ef56ca4599" />

      <!-- Global site tag (gtag.js) - Google Analytics -->
      <script async src="https://www.googletagmanager.com/gtag/js?id=UA-193598615-1"></script>
      <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());

          gtag('config', 'UA-193598615-1');
      </script>

      <meta name="description" content="@if(isset($seo->description)){{$seo->description}}@endif">
    <meta name="keywords" content="@if(isset($seo->keywords)){{$seo->keywords}}@endif">

    <meta property="og:title" content='@if(isset($seo->title)){{$seo->title}}@endif'/>
    <meta property="og:description" content='@if(isset($seo->description)){{$seo->description}}@endif'/>
    <meta property="og:url" content="{{url('/')}}">
    <meta property="og:type" content="website">

    <meta property="og:image" content="/frontend/images/icons/favicon.ico.png">
    <link rel="icon" type="image/png" href="/frontend/images/icons/favicon.ico.png">

    <link rel="alternate" hreflang="ru" href="{{ LaravelLocalization::getLocalizedURL('ru') }}">
    <link rel="alternate" hreflang="uk" href="{{ LaravelLocalization::getLocalizedURL('ua') }}">
    <link rel="alternate" hreflang="en" href="{{ LaravelLocalization::getLocalizedURL('en') }}">
      <meta name="robots" content="noindex,follow">

      @if (isset($_GET['page']))
      <meta name="robots" content="noindex,nofollow">
        @endif

      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Montserrat:wght@400;500;600&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="{{asset('/frontend/css/layout.min.css')}}">
      <link rel="stylesheet" href="{{asset('/frontend/css/social_buttons.min.css')}}">


    @yield('links')

  </head>

  <body>
    <div class="site" id="site">

        @include('frontend.includes.header')

        <div class="site__content">
            @yield('content')
        </div>

        @include('frontend.includes.footer')
        @include('frontend.includes.social_buttons')

        @include('frontend.includes.popup_form')
        @include('frontend.includes.form_success_alert')
    </div>

    <script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="   crossorigin="anonymous"></script>
    <script  src="/frontend/js/layout.min.js"></script>
    @yield('scripts')

    <script>


        function toggle_social_button() {
            $('.social-items-menu').fadeToggle();
            $('.social-btn').toggleClass('active');
            $('.social-btn .s-btn-close').toggleClass('active');
            $('.social-btn-pulse').toggleClass('active');
            $('.social-btn-bg').toggleClass('active');
            $('.social-btn .btn-1').toggleClass('close');
            $('.social-btn .btn-2').toggleClass('close');
            $('.social-items-bg').fadeToggle();
            $('.social-items-bg').toggleClass('active');
        }

        swap_social_button_icons();

        function swap_social_button_icons() {
            $('.btn-1').fadeToggle(1500);
            $('.btn-2').fadeToggle(1500);
            setTimeout(swap_social_button_icons, 2000);
        }

        $('.social-items-wrapper, .social-items-bg ').click(function () {
            toggle_social_button();
        });


      function toggleFormSuccessAlert(){
        $('.popup-form-bg').fadeOut();
        $('.success').fadeIn();
        setTimeout(function(){
          $('.success').fadeOut();
          $('form input[type=text], form input[type=tel], form input[type=email], form textarea').val('');
        },3000);
      }

      $('form').submit(function(e){
        e.preventDefault();

        var url = $(this).attr('action');
        var method = $(this).attr('method');
        var data = $(this).serialize();

        $.ajax({
          method: method,
          url: url,
          data : data
        }).done(function(){
          toggleFormSuccessAlert();
        });
      });

    $('.call-contact-form, #contact-from-bg .close-form').click(function(){
      $('#contact-from-bg').fadeToggle();
    });

    $('#contact-from-bg').click(function(e){
      var form_bg = $('#contact-from-bg');
      if ( form_bg.is(e.target ) && form_bg.has(e.target).length === 0) {
        $('#contact-from-bg').fadeToggle();
      }
    });

    </script>
  </body>
</html>
