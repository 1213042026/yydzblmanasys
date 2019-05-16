<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻管理</title>
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
<link href="/yydzblmanasys/static/css/style.css" rel="stylesheet" type="text/css" />
<script src="/yydzblmanasys/assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript">
$(function() {
	setTimeout("click()", 300);
});
function click() {
	$("#wrapper").toggleClass("toggled")
}

$(document).ready(function(){
	$(".click").click(function(){
	  $(".tip").fadeIn(200);
	});
});
</script>
</head>
<body>

	<#include "/cms/common/body.ftl">
	
	<@body type=type innerType=loginUser['type'] username=loginUser['username']>
			
    </@body>

    <#import "/cms/common/page.ftl" as lq>

     <div id="page-wrapper">
        <div id="page-inner" style="margin-top: 65px;">
            <div class="row">
		    
		    <div class="rightinfo">
		    
		    <div class="tools">
		    	<ul class="toolbar1">
		        <li class="click"><span><img src="/yydzblmanasys/static/img/t01.png" onclick="window.location.href='/yydzblmanasys/page/cms/addNews';" /></span>
		        	<a href="/yydzblmanasys/page/cms/addNews">添加</a>
		        </li>
		      </ul>
		  
		    </div>
		    
		    <table class="tablelist">
		    	<thead>
		    	<tr>
		        <th>编号</th>
		        <th>标题</th>
		        <th>内容</th>
		        <th>创建时间</th>
		        <th>操作</th>
		        </tr>
		        </thead>
		        
		        <tbody>
		        	<#list pagemodel.list as user>
				        <tr id="content">
				        <td>${user_index+1}</td>
				        <td>${user['title']}</td>
				        <td>${user['content']}</td>
				        <td>${user['create_time']}</td>
				        <td>
					        <a href="/yydzblmanasys/view/updateNewsData?id=${user['id']}" target="rightFrame" class="tablelink">修改</a>     
				        </td>
				        </tr> 
				     </#list>   
		        </tbody>
		    </table>
		   
		    <div class="pagin">
		    	<@lq.page rows="${pagemodel.rows}" url="/yydzblmanasys/view/newsManage" cpage="${pagemodel.cpage}" pageSize="8"  totalpage="${pagemodel.totalpage}"/>
		    </div>

		    </div>
		    </div>
		    </div>
</body>
</html>
