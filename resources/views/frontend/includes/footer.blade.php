<style>
    .social-share-footer {
        display: flex;
    }

    .share__button {
        margin-right: 15px;
    }
</style>
<footer class="footer">
	<a href="#site" class="footer__button-up">
		@include('frontend.svg.rounded_arrow1')
	</a>
 	<div class="footer__content">
 		<div class="footer__content_top">
 			<div class="footer__menu footer__menu_left">
 				<ul>
 					<li><a href='{{ LaravelLocalization::localizeUrl("/") }}'>@lang('main.main')</a></li>
 					<li><a href='{{ LaravelLocalization::localizeUrl("/o-nas") }}'>@lang('main.about_us')</a></li>
 					<li><a href='{{ LaravelLocalization::localizeUrl("/uslugi") }}'>@lang('main.services')</a></li>
 				</ul>
 			</div>
 			<div class="footer__logo">
 				<img src="/frontend/images/icons/logo-baronin.png" alt="logo wks" width="80" height="70">
 			</div>
 			<div class="footer__menu footer__menu_right">
 				<ul>
                    <li><a href='{{ LaravelLocalization::localizeUrl("/projects") }}'>@lang('main.portfolio')</a></li>
 					<li><a href='{{ LaravelLocalization::localizeUrl("/price") }}'>@lang('main.prices')</a></li>
 					<li><a href='{{ LaravelLocalization::localizeUrl("/contacts") }}'>@lang('main.contacts')</a></li>
 				</ul>
 			</div>
 		</div>
        <div class="social-share-footer">
                @if($contacts->instagram)
                    <a class="share__button" target="_blank" href="{{$contacts->instagram}}">
                        <svg width="25" height="25" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg"> <g clip-path="url(#clip0)"><path d="M49.9511 14.7001C49.834 12.0434 49.4044 10.217 48.7889 8.63435C48.154 6.95441 47.1773 5.45036 45.8976 4.20004C44.6473 2.93026 43.1333 1.94359 41.4728 1.31862C39.881 0.703186 38.0641 0.273567 35.4074 0.156433C32.7309 0.0293789 31.8812 0 25.0928 0C18.3043 0 17.4546 0.0293789 14.788 0.146513C12.1313 0.263647 10.3049 0.693647 8.72261 1.3087C7.04229 1.94359 5.53825 2.92034 4.28793 4.20004C3.01815 5.45036 2.03186 6.96433 1.40651 8.62481C0.791076 10.217 0.361458 12.0335 0.244324 14.6902C0.117269 17.3667 0.0878906 18.2164 0.0878906 25.0049C0.0878906 31.7933 0.117269 32.643 0.234404 35.3096C0.351538 37.9663 0.781538 39.7928 1.39697 41.3754C2.03186 43.0554 3.01815 44.5594 4.28793 45.8097C5.53825 47.0795 7.05221 48.0662 8.71269 48.6911C10.3049 49.3066 12.1214 49.7362 14.7785 49.8533C17.4447 49.9708 18.2948 49.9998 25.0832 49.9998C31.8716 49.9998 32.7213 49.9708 35.388 49.8533C38.0446 49.7362 39.8711 49.3066 41.4534 48.6911C44.8136 47.392 47.4703 44.7353 48.7695 41.3754C49.3845 39.7832 49.8145 37.9663 49.9317 35.3096C50.0488 32.643 50.0782 31.7933 50.0782 25.0049C50.0782 18.2164 50.0682 17.3667 49.9511 14.7001ZM45.4485 35.1143C45.3409 37.5562 44.9308 38.8748 44.5889 39.7539C43.7487 41.9321 42.02 43.6609 39.8417 44.501C38.9626 44.8429 37.6345 45.2531 35.2021 45.3603C32.5649 45.4778 31.774 45.5068 25.1027 45.5068C18.4314 45.5068 17.6305 45.4778 15.0028 45.3603C12.5609 45.2531 11.2423 44.8429 10.3633 44.501C9.27928 44.1004 8.29261 43.4655 7.49175 42.6353C6.66151 41.8245 6.02662 40.8477 5.626 39.7638C5.28414 38.8847 4.87398 37.5562 4.76676 35.1242C4.64925 32.487 4.62025 31.6956 4.62025 25.0243C4.62025 18.353 4.64925 17.5522 4.76676 14.9249C4.87398 12.483 5.28414 11.1644 5.626 10.2853C6.02662 9.20094 6.66151 8.21465 7.50167 7.4134C8.31207 6.58316 9.28882 5.94827 10.3732 5.54803C11.2522 5.20617 12.5808 4.79601 15.0127 4.68842C17.65 4.57128 18.4413 4.5419 25.1122 4.5419C31.7934 4.5419 32.5844 4.57128 35.2121 4.68842C37.6539 4.79601 38.9726 5.20617 39.8516 5.54803C40.9356 5.94827 41.9223 6.58316 42.7231 7.4134C43.5534 8.22419 44.1883 9.20094 44.5889 10.2853C44.9308 11.1644 45.3409 12.4925 45.4485 14.9249C45.5656 17.5621 45.595 18.353 45.595 25.0243C45.595 31.6956 45.5656 32.477 45.4485 35.1143Z" fill="white"/><path d="M25.0924 12.1606C18.0014 12.1606 12.248 17.9135 12.248 25.0049C12.248 32.0962 18.0014 37.8492 25.0924 37.8492C32.1837 37.8492 37.9367 32.0962 37.9367 25.0049C37.9367 17.9135 32.1837 12.1606 25.0924 12.1606ZM25.0924 33.3366C20.4921 33.3366 16.7606 29.6055 16.7606 25.0049C16.7606 20.4042 20.4921 16.6731 25.0924 16.6731C29.693 16.6731 33.4241 20.4042 33.4241 25.0049C33.4241 29.6055 29.693 33.3366 25.0924 33.3366Z" fill="white"/><path d="M41.4448 11.6527C41.4448 13.3086 40.1021 14.6513 38.4458 14.6513C36.7899 14.6513 35.4473 13.3086 35.4473 11.6527C35.4473 9.99645 36.7899 8.65417 38.4458 8.65417C40.1021 8.65417 41.4448 9.99645 41.4448 11.6527Z" fill="white"/></g><defs><clipPath id="clip0"><rect width="50" height="50" fill="white"/></clipPath></defs></svg>
                    </a>
                @endif
                @if($contacts->facebook)
                    <a class="share__button" target="_blank" href="http://www.facebook.com/share.php?u={{$contacts->facebook}}">
                        <svg width="25" height="25" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M50 25C50 11.1914 38.8086 0 25 0C11.1914 0 0 11.1914 0 25C0 38.8086 11.1914 50 25 50C25.1465 50 25.293 50 25.4395 49.9902V30.5371H20.0684V24.2773H25.4395V19.668C25.4395 14.3262 28.7012 11.416 33.4668 11.416C35.752 11.416 37.7148 11.582 38.2812 11.6602V17.2461H35C32.4121 17.2461 31.9043 18.4766 31.9043 20.2832V24.2676H38.1055L37.2949 30.5273H31.9043V49.0332C42.3535 46.0352 50 36.416 50 25Z" fill="white"/>
                        </svg>
                    </a>
                @endif
        </div>

 		<div class="footer__content_bottom">
 			<div class="footer__menu footer__contacts">
 				<ul>
 					<li><a href="tel:{{$contacts->phone_1}}">{{$contacts->phone_1}}</a></li>
 					<li><a href="tel:{{$contacts->phone_2}}">{{$contacts->phone_2}}</a></li>
 				</ul>
            </div>

            <div class="spekter">
                <span class="spekter__title">@lang('main.developer')</span>
                <img src="/frontend/images/icons/spekter.png" alt="Spekter" class="spekter__logo" width="130" height="35">
            </div>

            <div class="footer__logo">
 				<img src="/frontend/images/icons/logo.png" alt="logo wks" width="80" height="70">
            </div>

 			<div class="footer__copyright">

 				<span>© Baronin Development {{date('Y', time())}}  @lang('main.copyright')</span>
 			</div>
 		</div>
 	</div>
</footer>

<html>
<head>
    <title>Dave's Steak House</title>
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "HomeAndConstructionBusiness",
      "image": [
        "https://baronin-ds.com.ua/frontend/images/icons/logo-baronin.png"
       ],
      "@id": "https://baronin-ds.com.ua/",
      "name": "Baronin development",
      "priceRange": "от 20грн до 20000",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "ул Пашутинская 31А",
        "addressLocality": "г. Кропивницкий",
        "addressCountry": "UA"
      },
      "telephone": "+380989577600"
    }
    </script>
</head>
<body>
</body>
</html>
