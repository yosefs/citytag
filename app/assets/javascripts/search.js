// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function(){
	$('#search-form').on('submit',function(){
		var $this=$(this);
		var category=$this.find('input[name=search1]:checked').val();
		var value=$this.find('input[name=user-input]').val();
	    //rewrite url
	    if (category && value){
	        window.location = '/search/'+category+'/'+value;
	    }
	    else{
	    	alert('wrong input');
	    }
	    return false;
	});
});