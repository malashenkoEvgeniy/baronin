

function toggleMobileMenu(){
    $('.mobile-menu').toggleClass('active');
    $('body').toggleClass('no-scroll');
    // $(document).click(function (e) {
    //     if ( !$('.mobile-menu').is(e.target) && ! $('.mobile-menu').is(e.target) &&  $('.mobile-menu').has(e.target).length === 0) {
    //         $('.mobile-menu').slideUp();
    //         $('.mobile-menu').removeClass('active');
    //     };
    // });



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

// let popup = document.querySelector('.mobile-menu');
// document.onclick = function(evt){
//     let ev = evt;
//     debugger;
//     if ( evt.target.className != 'mobile-menu' ||  evt.target.className != 'open-mobile-menu') {
//         popup.classList.remove('active');
//     };
// };

$(document).mouseup(function (e){ // событие клика по веб-документу
    let menu = $(".mobile-menu"); // тут указываем ID элемента
    let open = $('.open-mobile-menu');
    if (!menu.is(e.target) // если клик был не по нашему блоку
        && menu.has(e.target).length === 0 &&
        !open.is(e.target) && open.has(e.target).length === 0
    ) { // и не по его дочерним элементам
        // menu.removeClass('active'); // скрываем его
        $('.mobile-menu').removeClass('active');
        $('body').removeClass('no-scroll');
    }
});


//  $(document).click(function (e) {
//     var container = $(".mobile-menu");
//     if (container.has(e.target).length === 0){
//         $('.mobile-menu').removeClass('active');
//         $('body').removeClass('no-scroll');
//     }
// });
