// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
	$("#add-tag-form").on("ajax:success", function(event, data, status, xhr){
		$('#city-main').append(data.tagName);
		return false;
	});
});