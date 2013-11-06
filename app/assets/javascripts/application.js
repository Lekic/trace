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

	/* Initiate FancyBox */
	$("#documentation-content img").fancybox();

	/* Set Isotope container */
	$isotope = $('.isotope');

	/* When images are loaded, fire Isotope */
	$isotope.imagesLoaded(function(){
		$isotope.isotope();
	});

	/* Initiate the Isotope Chosen filter */
	$('header .chosen-select').chosen({
		allow_single_deselect: true,
		no_results_text: 'No results matched',
		width: "160px"
	});

	/* Initiate the form Chosen selects */
	$('.formtastic .chosen-select').chosen({
		allow_single_deselect: true,
		no_results_text: 'No results matched',
		width: "100%"
	});
	
	/* When a pest filter is chosen... */
	$("#pest-filter").chosen().change(function(e, params) {
		var parameter = params.selected.toLowerCase();
		if (parameter == "all")
			var selector = "*";
		else
			var selector = ".type-" + params.selected.toLowerCase();
		$isotope.isotope({ filter: selector });
		return false;
	});

	$(window).on('resize', function() {
  		$isotope.isotope("reLayout");
	});
});