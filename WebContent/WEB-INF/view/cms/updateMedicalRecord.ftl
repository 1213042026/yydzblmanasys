<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改病历</title>
<link href="/yydzblmanasys/static/css/style.css" rel="stylesheet" type="text/css" />
<link href="/yydzblmanasys/static/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/yydzblmanasys/static/js/jquery.js"></script>
<script type="text/javascript" src="/yydzblmanasys/static/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="/yydzblmanasys/static/js/select-ui.min.js"></script>
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
});

</script>
</head>
<body>
    
    <div class="formbody">
    <div id="usual1" class="usual"> 
  	<div id="tab1" class="tabson">
        <button class="btn" onclick="back();" style="position: absolute;right: 30px;">返回</button>
    <form action="/yydzblmanasys/view/updateMedicalRecord?id=${medicalRecord['id']}" method="post">
    <ul class="forminfo">
         <li><label>患者姓名<b>*</b></label>  
    <div class="vocation">
    <select class="select1" name="userId">
        <#list patients as patient>
        <option value="${patient['id']}">${patient['name']}</option>
         </#list>   
    </select>
    </div>    
    </li>
    <li><label>病种</label>
    <input name="type" type="text" required="true" class="dfinput" value="${medicalRecord['type']}" style="width:518px;" /></li>
    <li><label>病情概况</label>
    <input name="title" required="true" type="text" class="dfinput" style="width:518px;" value="${medicalRecord['title']}"/></li>

    <li><label>详细诊断</label>
    <input name="content" type="text" required="true" class="dfinput"  style="width:518px;" value="${medicalRecord['content']}"/></li>
    <li><label>诊断结果</label>
    <input name="result" type="text" required="true" class="dfinput"  style="width:518px;" value="${medicalRecord['result']}" /></li>
    <li><label>医嘱</label>
    <input name="remark" type="text" required="true" class="dfinput"  style="width:518px;" value="${medicalRecord['remark']}"/></li>
    <li><label></label>
        <input name="" type="submit" class="btn" value="确定"/>
    </li>
    </ul>
    </form>

    </div> 
	</div> 
    <script type="text/javascript">
        function back() {
            window.location.href='/yydzblmanasys/view/medicalRecordManage';
        }
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    </div>
</body>
</html>