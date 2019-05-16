<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>医院电子病历管理系统</title>
<link rel="stylesheet"
	href="/yydzblmanasys/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/yydzblmanasys/assets/css/style.css">
<link href="/yydzblmanasys/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link href="/yydzblmanasys/assets/bootstrap/css/simple-sidebar.css"
	rel="stylesheet">
<link rel="stylesheet" href="/yydzblmanasys/assets/css/custom.css">
<script src="/yydzblmanasys/assets/bootstrap/js/jquery.js"></script>
<script src="/yydzblmanasys/assets/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="/yydzblmanasys/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/yydzblmanasys/assets/css/form-elements.css">
<link rel="stylesheet" href="/yydzblmanasys/assets/css/style.css">
<script src="/yydzblmanasys/assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript">
$(function() {
	setTimeout("click()", 300);

});
function click() {
	$("#wrapper").toggleClass("toggled")
}

$("#close").click(function(){
	 /*  $("#tip").remove();  */
	  $("#tip").fadeTo("slow", 0.01, function(){//fade
		    $(this).slideUp("slow", function() {//slide up
		      $(this).remove();//then remove from the DOM
		    });
		  }); 
});
</script>
</head>
<body>

	<#include "/cms/common/head.ftl">
	
	<@header type=type innerType=loginUser['type'] username=loginUser['username'] id=loginUser['id']>
	</@header>

	
</body>
</html>