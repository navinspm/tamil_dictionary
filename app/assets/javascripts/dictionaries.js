// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
   	$('#myform').on("submit",function(){
    	var word = $('#word').val();
    	word=word.replace(/\s+/g,'-').toLowerCase();
     	$(this).attr('action', "http://localhost:3000/"+word);
   	});
});