$(document).ready(function(){

    $(window).scroll(function(){
        if ($(this).scrollTop() > 100) {
            $('.footer__button-up').fadeIn();
        } else {
            $('.footer__button-up').fadeOut();
        }
    });

    $('.footer__button-up').click(function(){
        $("html, body").animate({ scrollTop: 0 }, 600);
        return false;
    });

});
