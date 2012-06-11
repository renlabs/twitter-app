$(function(){

	$(".user_tweets").click(function() {
		console.log("Hi");
	});

	$('#tweetform').submit(function() {  
		$('tweettext').val(' ');
	});

});