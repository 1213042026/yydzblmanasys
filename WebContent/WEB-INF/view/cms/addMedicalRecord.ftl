<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加病历</title>
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
    <form action="/yydzblmanasys/view/addMedicalRecord" method="post">
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

    <input name="docId" type="hidden" value="${loginUser['id']}" />

    <li><label>病种<b>*</b></label>
    <input name="type" type="text" class="dfinput" placeholder="请填写病种"  style="width:518px;" required="true"/></li>
    <li><label>病情概况<b>*</b></label>
    <input name="title" type="text" class="dfinput" placeholder="请填写病情概况"  style="width:518px;" required="true"/></li>
    <li><label>详细诊断<b>*</b></label>
    <input name="content" type="text" class="dfinput" placeholder="请填写详细诊断"  style="width:518px;" required="true"/></li>
    <li><label>诊断结果<b>*</b></label>
    <input name="result" type="text" class="dfinput" placeholder="请填写诊断结果"  style="width:518px;" required="true"/></li>
    <li><label>医嘱<b>*</b></label>
    <input name="remark" type="text" class="dfinput" placeholder="请填写医嘱"  style="width:518px;" required="true"/></li>
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