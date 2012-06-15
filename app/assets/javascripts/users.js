$(function(){

	var Printer = {

		_hello: "Hello",

		printHello: function(name) {
			console.log( this._hello = "lol" + name);
		},

		printBye: function() {
			console.log("Bye bye");
		}

	};

	 // window.onload = function(){alert("welcome")}; 

	// $("#but1").click(function() {
	// 	console.log("Hello World");
	// 	$("#cat").css({'background-color':'green'}); 
	// });

	// $("#but1").click(function() {
	// 	console.log("Hello World");
	// 	$("#cat thead tr").append("<th>Hi</th>"); 
	// });

	// $(".sex").click(function() {
	// 	//console.log($(this).parent().find("*[foo]"));
	// });

	// $(".sex").click(function() {
	// 	console.log($(this).attr("foo"));
	// });

	// $("tr[foo='male']").click(function(){
	// 	alert("hello")
	// });

	// $("#but1").click(function() {
	
	// 	$(".sex").next().css({'background-color':'green'}); 
	// });

	$("#but1").click(function() {

		var vars = $("#some").val();
		var somestring = ".tweets"
		$(somestring).append("<p> "+ vars +"</p>");
		$("#some").val("");
	});

	$("#but2").click(function() {
		//$("tr:even").css({'background-color':'red'});
		//animates();

		$("this").attr("#cat");
	});

	$("thead").mousemove(function() {
		animates();
	});

	function animates() {
		$("th").animate({
			opacity: 0.10
		},2000
		);

		Printer.printHello("Mon");
	};


}); //END y