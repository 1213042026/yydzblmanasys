<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>医院</title>
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

    <nav class="navbar navbar-inverse navbar-no-bg navbar-fixed-top"
        role="navigation">
        <div class="container">
            <div style="position: absolute; left: 40px; top: 6px;"></div>
                <div style="position: absolute; left: 150px; top: -2px;">
                    <a class="navbar-brand" href="javascropt:void(0);"><font color="#fff">医院</font></a>
                </div>
            <div class="collapse navbar-collapse" id="top-navbar-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><span class="li-text"></span> <span class="li-text">
                    </span> <span class="li-social"> </span>
                        <div>
                            
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="wrapper">
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav" style="top: 65px;">
        		<li><a class="list-group-item" href="/yydzblmanasys/page/index"><font  color="#fff">首页</font></a></li>
                <li><a class="list-group-item" href="/yydzblmanasys/view/news"><font color="#fff">医院新闻</font></a></li>
                <li><a class="list-group-item" href="/yydzblmanasys/view/leavemessage"><font  color="#fff">留言区域</font></a></li>
        </ul>
    </div>
    </div>

    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <div id="tip" class="jumbotron text-left" style="padding-left: 45px;background-color: #ffffff">
                        <h2>    
                            医院电子病历管理系统上线了
                            </h1>
                            <p>为提高患者就诊效率,改善患者就诊体验,建立医院电子病历统一平台.</p>
                    </div>
                </div>
            </div>
        
            <div class="carousel slide" id="carousel-630453">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-630453"></li>
                    <li data-slide-to="1" data-target="#carousel-630453" class="active"></li>
                    <li data-slide-to="2" data-target="#carousel-630453"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="" src="/yydzblmanasys/assets/img/1.jpg" />
                        <div class="carousel-caption">
                            <p>1</p>
                            <p>1</p>
                        </div>
                    </div>
                    <div class="item active">
                        <img alt="" src="/yydzblmanasys/assets/img/2.jpg" />
                        <div class="carousel-caption">
                            <p>2</p>
                            <p>2</p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="/yydzblmanasys/assets/img/3.jpg" />
                        <div class="carousel-caption">
                            <p>3</p>
                            <p>3</p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-630453"
                    data-slide="prev"><span
                    class="glyphicon glyphicon-chevron-left"></span></a> <a
                    class="right carousel-control" href="#carousel-630453"
                    data-slide="next"><span
                    class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        
    </div>
	
</body>
</html>