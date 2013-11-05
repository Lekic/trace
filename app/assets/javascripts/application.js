// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require fancybox
//= require chosen-jquery
//= require isotope.min.js

$(document).ready(function() {
	$isotope = $('.isotope');
	$isotope.imagesLoaded(function(){
		$isotope.isotope();
	});
	$('.chosen-select').chosen({
		allow_single_deselect: true,
		no_results_text: 'No results matched',
		width: '160px'
	});
	$("#pest-filter").chosen().change(function(e, params) {
		var parameter = params.selected.toLowerCase();
		if (parameter == "all")
			var selector = "*";
		else
			var selector = ".type-" + params.selected.toLowerCase();
		$isotope.isotope({ filter: selector });
		return false;
	});
	/*$("#documentation-nav a").click(function() {
		$('html, body').animate({
			scrollTop: $( $.attr(this, 'href') ).offset().top
		}, 500);
		return false;
	});*/
	$(".isotope-item").click(function(e) {

		/* Prevent default action */
		e.preventDefault();

		/* Give this meta a variable name */
		$meta = $(".meta", this);

		/* If it's already open, close it, otherwise, open it! */
		if ($meta.hasClass("open")) {
			$(".meta").removeClass("open");
		}
		else {
			$(".meta").removeClass("open");
			$meta.addClass("open");
		}

		/* Relayout */
		$isotope.isotope('reLayout');
	});
});