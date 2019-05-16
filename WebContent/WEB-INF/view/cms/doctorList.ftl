<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>医生信息管理</title>
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
		        <li class="click"><span><img src="/yydzblmanasys/static/img/t01.png" onclick="window.location.href='/yydzblmanasys/page/cms/addDoctor';" /></span>
		        	<a href="/yydzblmanasys/page/cms/addDoctor">添加</a>
		        </li>
		      </ul>
		      
		    </div>
		    
		    <table class="tablelist">
		    	<thead>
		    	<tr>
		        <th>编号</th>
		        <th>姓名</th>
		        <th>身份证号</th>
		        <th>年龄</th>
		        <th>用户名</th>
		        <th>密码</th>
		        <th>性别</th>
		        <th>手机号</th>
		        <th>地址</th>
		        <th>创建时间</th>
		        <th>操作</th>
		        </tr>
		        </thead>
		        
		        <tbody>
		        	<#list pagemodel.list as user>
				        <tr id="content">
				        <td>${user_index+1}</td>
				        <td>${user['name']}</td>
				        <td>${user['identification_code']}</td>
				        <td>${user['age']}</td>
				        <td>${user['username']}</td>
				        <td>${user['password']}</td>
				        <td>${(user['gender'] == 1) ? string('男', '女')}</td>
				        <td>${user['phone']}</td>
				        <td>${user['address']}</td>
				        <td>${user['crerate_time']}</td>
				        <td>
				        	<a href="/yydzblmanasys/view/getDoctor?id=${user['id']}" target="rightFrame" class="tablelink">查看</a>  
					        <a href="/yydzblmanasys/view/updateDoctorData?id=${user['id']}" target="rightFrame" class="tablelink">修改</a>     
					        <a href="javascript:void(0)" class="tablelink" onclick="if(confirm('确定删除么？')){location.href='/yydzblmanasys/view/deleteDoctor?id=${user['id']}'; return true}"> 删除</a>
				        </td>
				        </tr> 
				     </#list>   
		        </tbody>
		    </table>
		   
		    <div class="pagin">
		    	<@lq.page rows="${pagemodel.rows}" url="/yydzblmanasys/view/doctorManage" cpage="${pagemodel.cpage}" pageSize="8"  totalpage="${pagemodel.totalpage}"/>
		    </div>

		    </div>
		    </div>
		    </div>
</body>
</html>
