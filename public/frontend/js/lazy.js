window.onload=function (){

    function getImages() {
        var lazy = document.getElementsByClassName('lazy');

        for (var i = 0; i < lazy.length; i++) {
            lazy[i].src = lazy[i].getAttribute('data-src');
            lazy.onload = function () {
                img.removeAttribute('data-src');
            };
        }
    }
    setTimeout(getImages, 500);
}


