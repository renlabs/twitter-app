$(function(){

	$("#tweetbutton").click(function() {
		console.log("Hi");
	});

	$('.tweets-container').load(function() {  
		$('#tweettext').val("");
	});

	// $(".comm_edit").click(function() {

	// 	$(this).parent().find(".text_box").removeAttr("disabled");

	// 	$(this).parent().find(".comm_save").show();
	// 	$(this).parent().find(".comm_cancel").show();

	// 	$(this).parent().find(".comm_edit").hide();
	// 	$(this).parent().find(".comm_delete").hide();
			
	// });

	// $(".comm_cancel").click(function() {

	// 	$(this).parent().find(".text_box").attr("disabled","disabled");
	// 	$(this).parent().find(".comm_save").hide();
	// 	$(this).parent().find(".comm_cancel").hide();

	// 	$(this).parent().find(".comm_edit").show();
	// 	$(this).parent().find(".comm_delete").show();
			
	// });




});