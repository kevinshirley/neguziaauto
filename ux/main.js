$(document).ready(function(){


	//////////////////////////////////
	// Menu: Overlay
	/////////////////////////////////

	// var $contenuOverlay = $('#contenuOverlay'); 
	// var $exitContainer = $('<div id="exitContainer"></div>');
	// var $exit = $('<span id="exit">×</span>');
	// var $overlay = $('<div id="overlay"></div>');

	// $($exitContainer).append($exit);
	// $($overlay).append($exitContainer);
	// $($overlay).append($contenuOverlay); 
	// $("body").append($overlay);

	// $("#menuicon").on("click", function(event){
	// 	$overlay.fadeIn('slow').show();
	// 	$contenuOverlay.show();
	// });

	// $exit.click(function() {
	// 	$($overlay).fadeIn('slow').hide();
	// });

	//////////////////////////////////
	// homeForm : AJAX
	/////////////////////////////////

	$('#btnemail1').on('click', function(){
		var url = "index.php?action=emailHomePage";
		console.log(url);
		var $email = $('#email1').val();
		var $data = {
			email: $email
		};
		if ($.trim($data) != '') {
			$.post(url, $data, function(resultat){
				$('#email1').val('');
				$('#emailResult').html('<p>Thanks! You will receive an email shortly.</p>' );
			});
		}
	});

	//////////////////////////////////
	// hiremeForm : AJAX
	/////////////////////////////////

	$('#btnhireme').on('click', function(){
		var url = "index.php?action=hiremeSent";
		console.log(url);
		var $data = {
			name: $('#name-hireme').val(),
			email: $('#email-hireme').val(),
			website: $('#website-hireme').val(),
			subject: $('#subject-hireme').val(),
			message: $('#message-hireme').val()
		};
		if ($.trim($data) != '') {
			$.post(url, $data, function(resultat){
				$('#name-hireme').val('');
				$('#email-hireme').val('');
				$('#website-hireme').val('');
				$('#subject-hireme').val('');
				$('#message-hireme').val('');
				$('#reponseHireme').html('<p>Thanks! You will receive an email shortly.</p>' );
			});
		}
	});


	//////////////////////////////////
	// s2hover
	/////////////////////////////////

	$("#btnemail1").on({

		mouseenter: function () {
			$('.s2hover').css('transition', '.3s').css('font-weight', 'bold').css('color', '#101e2a');
		},
		mouseleave: function () {
			$('.s2hover').css('transition', '.4s').css('font-weight', 'normal').css('color', '#fff');
		}

	});


	//////////////////////////////////
	// 
	/////////////////////////////////

	function parallax()
	{
		var layer_1 = $();

		layer_1.style.top = - (window.pageYOffset / 3) + 'px';
	}


	//////////////////////////////////
	// #moneysecbtn
	/////////////////////////////////

	$("#moneysecbtn").on({

		mouseenter: function () {
			$('.moneyhover').css('transition', '.3s').css('color', 'green');
		},
		mouseleave: function () {
			$('.moneyhover').css('transition', '.4s').css('color', '#151515');
		}

	});


	//////////////////////////////////
	// Nav: navSlideEffect
	/////////////////////////////////

	var $navbarHeight = $('.navbar').outerHeight();

	$('.navSlideEffect').on('click', function(event){
		
		var $href = $(this).attr('href');

		$('html, body').animate({
			scrollTop: $($href).offset().top - $navbarHeight
		}, 1000);

		// console.log($($href).offset().top);

		event.preventDefault();
	});


	/////////////////////////////////////
	// 
	////////////////////////////////////

	$('#selectArronSlider').on('change', function(){
		var url = "index.php?action=getCampsByArron";
		console.log(url);
		var $valueOptionArron = $('select[name="arrondissementSlider"]').val();
		var $data = {
			arrondissement: $valueOptionArron
		};
		if ($.trim($data) != '') {
			$.post(url, $data, function(resultat){
				$('#campsByArron').text(resultat);
			});
		}
	});


	//////////////////////////////////
	// responsive: menu-responsive
	/////////////////////////////////

	


	//////////////////////////////////
	// hover section3
	/////////////////////////////////
	
	$('.roadmapbtn1').on('hover', function(){
		$('.roadmapover1').css('transition', '.4s').css('color', '#2a4d69');
	});

	$('.roadmapbtn2').on('hover', function(){
		$('.roadmapover2').css('transition', '.4s').css('color', '#ed624d');
	});

	$('.roadmapbtn3').on('hover', function(){
		$('.roadmapover3').css('transition', '.4s').css('color', '#4b86b4');
	});

	$('.roadmapbtn4').on('hover', function(){
		$('.roadmapover4').css('transition', '.4s').css('color', '#2a4d69');
	});


	//////////////////////////////////
	// animate entericon
	/////////////////////////////////

	function animateEnterIcon()
	{
		$('.entericon').addClass('animated bounce');
		$('.entericon').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
			$('.entericon').removeClass('animated bounce');
		});
	}

	setInterval(animateEnterIcon, 2800);


	//////////////////////////////////
	// animate btnemail
	/////////////////////////////////

	function animatebtnEmail()
	{
		$('#btnemail1').addClass('animated tada');
		$('#btnemail1').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
			$('#btnemail1').removeClass('animated tada');
		});
	}

	setInterval(animatebtnEmail, 3000);


	//////////////////////////////////
	// animate money
	/////////////////////////////////

	function animatemoneybtn()
	{
		$('#moneysecbtn').addClass('animated tada');
		$('#moneysecbtn').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
			$('#moneysecbtn').removeClass('animated tada');
		});
	}

	setInterval(animatemoneybtn, 3000);


	//////////////////////////////////
	// scrollTop menu
	/////////////////////////////////

	// var windowOffsetY = $(window).offset().top;
	// var navbar = $('.navbar');
	// var navbarOffsetY = navbar.offset().top;
	// var offset = $( this ).offset();

	// $(document.body).on('scroll', function(){
	// 	if (windowOffsetY > 30) 
	// 	{
	// 		navbar.css('opacity', 1);
	// 	} else
	// 	{
	// 		navbar.css('opacity', 0);
	// 	}
	// });
	
	//////////////////////////////////
	// full nav
	/////////////////////////////////

	//if you change this breakpoint in the style.css file (or _layout.scss if you use SASS), don't forget to update this value as well
	var MQL = 1170;

	//primary navigation slide-in effect
	if($(window).width() > MQL) {
		var headerHeight = $('.cd-header').height();
		$(window).on('scroll',
		{
	        previousTop: 50
	    }, 
	    function () {
		    var currentTop = $(window).scrollTop();
		    //check if user is scrolling up
		    if (currentTop < this.previousTop ) {
		    	//if scrolling up...
		    	if (currentTop > 0 && $('.cd-header').hasClass('is-fixed')) {
		    		$('.cd-header').addClass('is-visible');
		    	} else {
		    		$('.cd-header').removeClass('is-visible is-fixed');
		    	}
		    } else {
		    	//if scrolling down...
		    	$('.cd-header').removeClass('is-visible');
		    	if( currentTop > headerHeight && !$('.cd-header').hasClass('is-fixed')) $('.cd-header').addClass('is-fixed');
		    }
		    this.previousTop = currentTop;
		});
	}

	//open/close primary navigation
	$('.cd-primary-nav-trigger').on('click', function(){
		$('.cd-menu-icon').toggleClass('is-clicked'); 
		$('.cd-header').toggleClass('menu-is-open');
		
		//in firefox transitions break when parent overflow is changed, so we need to wait for the end of the trasition to give the body an overflow hidden
		if( $('.cd-primary-nav').hasClass('is-visible') ) {
			$('.cd-primary-nav').removeClass('is-visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend',function(){
				$('body').removeClass('overflow-hidden');
			});
		} else {
			$('.cd-primary-nav').addClass('is-visible').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend',function(){
				$('body').addClass('overflow-hidden');
			});	
		}
	});

	




});








































