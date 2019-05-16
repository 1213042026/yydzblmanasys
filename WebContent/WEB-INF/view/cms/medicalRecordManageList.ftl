<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>历史病历</title>
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
	
	<@body type=type innerType=loginUser['type'] username=loginUser['username'] id=loginUser['id']>
			
    </@body>

    <#import "/cms/common/page.ftl" as lq>

     <div id="page-wrapper">
        <div id="page-inner" style="margin-top: 65px;">
            <div class="row">
		    
		    <div class="rightinfo">

		     <div class="tools">
		    	<ul class="toolbar1">
		        <li class="click"><span><img src="/yydzblmanasys/static/img/t01.png" onclick="window.location.href='/yydzblmanasys/view/addMedicalRecordData';" /></span>
		        	<a href="/yydzblmanasys/view/addMedicalRecordData">添加</a>
		        </li>
		      </ul>
		      
		    </div>

		    <div class="tools">
		      
		      <form action="/yydzblmanasys/view/medicalRecordManage?docId=${docId}" method="post">
			      <ul class="toolbar2">
			      	<li>
			      		<span>患者姓名:</span>
			      	</li>
				     <li>
							<input name="patient" type="text" style="height: 28px;">
					</li>

					<li>
			      		<span>病种:</span>
			      	</li>
				     <li>
							<input name="type" type="text" style="height: 28px;">
					</li>

					<li>
			      		<span>就诊时间:</span>
			      	</li>
				     <li>
							<input name="date" type="text" style="height: 28px;">
					</li>

					 <li>
							<input  class="sub_input" type="submit" value="查询">
					</li>
			      </ul>  
		      </form>  
		    </div>
		    
		    <table class="tablelist">
		    	<thead>
		    	<tr>
		        <th>编号</th>
		        <th>患者姓名</th>
		        <th>医生姓名</th>
		        <th>病种</th>
		        <th>病情概况</th>
		        <th>详细诊断</th>
		        <th>诊断结果</th>
		        <th>医嘱</th>
		        <th>就诊时间</th>
		        <th>操作</th>
		        </tr>
		        </thead>
		        
		        <tbody>
		        	<#list pagemodel.list as medicalRecord>
				        <tr id="content">
				        <td>${medicalRecord_index+1}</td>
				        <td>${medicalRecord['patient']}</td>
				        <td>${medicalRecord['doctor']}</td>
				        <td>${medicalRecord['type']}</td>
				        <td>${medicalRecord['title']}</td>
				        <td>${medicalRecord['content']}</td>
				        <td>${medicalRecord['result']}</td>
				        <td>${medicalRecord['remark']}</td>
				        <td>${medicalRecord['create_time']}</td>
				          <td>
					        <a href="/yydzblmanasys/view/updateMedicalRecordData?id=${medicalRecord['id']}" target="rightFrame" class="tablelink">修改</a>     
				        </td>
				        </tr> 
				     </#list>   
		        </tbody>
		    </table>
		   
		    <div class="pagin">
		    	<@lq.page rows="${pagemodel.rows}" url="/yydzblmanasys/view/medicalRecordManage?docId=${docId}&patient=${patient}&type=${type}&date=${date}" cpage="${pagemodel.cpage}" pageSize="8"  totalpage="${pagemodel.totalpage}" id="${loginUser['id']}" />
		    </div>

		    </div>
		    </div>
		    </div>
</body>
</html>
