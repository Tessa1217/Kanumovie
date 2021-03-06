/*  ---------------------------------------------------
    Theme Name: Anime
    Description: Anime video tamplate
    Author: Colorib
    Author URI: https://colorib.com/
    Version: 1.0
    Created: Colorib
---------------------------------------------------------  */

/*
Footer 영역 

*/


$(function() {
let sessionID = document.getElementById('sessionId');
console.log(sessionID)
let footer = document.querySelector('.footer')

	if(sessionID == null) {
		//footer.setAttribute("style", "bottom: -2500px;")
	} else {
		//footer.setAttribute("style", "bottom: -3000px;")
	}
	
});








'use strict';

(function ($) {

    /*------------------
        Preloader
    --------------------*/
    $(window).on('load', function () {
        $(".loader").fadeOut();
        $("#preloder").delay(200).fadeOut("slow");

        /*------------------
            FIlter
        --------------------*/
        $('.filter__controls li').on('click', function () {
            $('.filter__controls li').removeClass('active');
            $(this).addClass('active');
        });
        if ($('.filter__gallery').length > 0) {
            var containerEl = document.querySelector('.filter__gallery');
            var mixer = mixitup(containerEl);
        }
    });

    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function () {
        var bg = $(this).data('setbg');
        console.log('bg가 뭘까?'+bg);
        $(this).css('background-image', '(' + bg + ')');
    });

    // Search model
    $('.search-switch').on('click', function () {
        $('.search-model').fadeIn(400);
    });

    $('.search-close-switch').on('click', function () {
        $('.search-model').fadeOut(400, function () {
            $('#search-input').val('');
        });
    });

    /*------------------
		Navigation
	--------------------*/
    $(".mobile-menu").slicknav({
        prependTo: '#mobile-menu-wrap',
        allowParentLinks: true
    });

    /*------------------
		Hero Slider
	--------------------*/
    var hero_s = $(".hero__slider");
    hero_s.owlCarousel({
        loop: true,
        margin: 0,
        items: 1,
        dots: true,
        nav: true,
        navText: ["<span class='arrow_carrot-left'></span>", "<span class='arrow_carrot-right'></span>"],
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: true,
        mouseDrag: false
    });

    /*------------------
        Video Player
    --------------------*/
    const player = new Plyr('#player', {
        controls: ['play-large', 'play', 'progress', 'current-time', 'mute', 'captions', 'settings', 'fullscreen'],
        seekTime: 25
    });

    /*------------------
        Niceselect
    --------------------*/
    $('select').niceSelect();

    /*------------------
        Scroll To Top
    --------------------*/
    $("#scrollToTopButton").click(function() {
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
     });
     
     
/*

header 영역 

*/
const pathname = window.location.pathname.substring(11);
navLinkColor = document.querySelectorAll('.hnavlink');
headerMenuList = document.querySelector('.headerMenuList'); 
     if(pathname == 'genreSelectList.do') {
		navLinkColor.forEach(n => n.classList.remove('active'));
		headerMenuList.children[1].classList.add('active');
	
	}else if(pathname == 'userLikesSelectList.do') {
	navLinkColor.forEach(n => n.classList.remove('active'));
		headerMenuList.children[2].classList.add('active');
	}else if(pathname == 'commentSelectList.do') {
		navLinkColor.forEach(n => n.classList.remove('active'));
		headerMenuList.children[3].classList.add('active');
	}
	
 
     
     
     
     

})(jQuery);