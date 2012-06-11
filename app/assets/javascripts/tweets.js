$(function(){

	$("#tweetbutton").click(function() {
		console.log("Hi");
	});

	$('.tweets-container').load(function() {  
		$('#tweettext').val("");
	});

});