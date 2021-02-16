function toggleMobileMenu(){
    $('.mobile-menu').toggleClass('active');
    $('body').toggleClass('no-scroll');
}
$('.open-mobile-menu').click(toggleMobileMenu);
$('.mobile-menu__close').click(toggleMobileMenu);


$('.open-sub-menu').click(function(){
    $(this).next().toggleClass('active');
    $(this).parent().toggleClass('active');
    $(this).toggleClass('active');
});

function headerBg(){
    if($(window).scrollTop() > 50){
        $('.header').addClass('active-bg');
    }else{
        $('.header').removeClass('active-bg');
    }
}

$(document).ready(headerBg);
$(window).scroll(headerBg);

