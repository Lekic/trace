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
//= require turbolinks
//= require bootstrap
//= require dropzone
//= require chosen-jquery
//= require isotope.min.js

$(document).ready(function() {
	$isotope = $('.isotope')
	$isotope.imagesLoaded( function(){
		$isotope.isotope();
	});
	$('.side-nav select').bind('keyup', function() {
		$this = $(this);

		var filter_method = $this.attr("placeholder").toLowerCase();

		if ($this.val() == "") {
			$isotope.isotope({
				filter: "*"
			});
		}
		else {
	    	var selector = "." + filter_method + "-" + $this.val().toLowerCase();
			$isotope.isotope({
				filter: selector
			});
		}
		return false;
	});
});