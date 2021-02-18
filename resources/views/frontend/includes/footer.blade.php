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
 				<img src="/frontend/images/icons/logo-baronin.png" alt="logo wks">
 			</div>
 			<div class="footer__menu footer__menu_right">
 				<ul>
                    <li><a href='{{ LaravelLocalization::localizeUrl("/projects") }}'>@lang('main.portfolio')</a></li>
 					<li><a href='{{ LaravelLocalization::localizeUrl("/price") }}'>@lang('main.prices')</a></li>
 					<li><a href='{{ LaravelLocalization::localizeUrl("/contacts") }}'>@lang('main.contacts')</a></li>
 				</ul>
 			</div>
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
                <img src="/frontend/images/icons/spekter.png" alt="Spekter" class="spekter__logo">
            </div>

            <div class="footer__logo">
 				<img src="/frontend/images/icons/logo.png" alt="logo wks">
            </div>

 			<div class="footer__copyright">
 				<span>© Baronin Development {{date('Y', time())}}  @lang('main.copyright')</span>
 			</div>
 		</div>
 	</div>
</footer>
