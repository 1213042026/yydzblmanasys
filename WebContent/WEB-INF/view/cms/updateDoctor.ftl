<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改医生</title>
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
    <form action="/yydzblmanasys/view/updateDoctor?id=${doctor['id']}" method="post">
    <ul class="forminfo">
    <li><label>姓名</label>
    <input name="name" type="text" required="true" class="dfinput" value="${doctor['name']}" style="width:518px;" /></li>
    <li><label>身份证号</label>
    <input name="identificationCode" required="true" type="text" class="dfinput" style="width:518px;" value="${doctor['identificationCode']}"/></li>

    <li><label>年龄</label>
    <input name="age" type="text" required="true" class="dfinput"  style="width:518px;" value="${doctor['age']}"/></li>
    <li><label>用户名</label>
    <input name="username" type="text" required="true" class="dfinput"  style="width:518px;" value="${doctor['username']}" /></li>
    <li><label>密码</label>
    <input name="password" type="text" required="true" class="dfinput"  style="width:518px;" value="${doctor['password']}"/></li>
     <li><label>性别</label>
          <div class="vocation">
            <select class="select1" name="gender">
            <#if doctor['gender'] == '1'>
                <option value="1" selected="selected">男</option>
            <#else>
                <option value="1">男</option>
            </#if>
            
            <#if doctor['gender'] == '2'>
                <option value="2" selected="selected">女</option>
            <#else>
                <option value="2">女</option>
            </#if>
            </select>
          </div>  
    </li>
    <li><label>手机号</label>
    <input name="phone" type="text" required="true" class="dfinput"  style="width:518px;" value="${doctor['phone']}" /></li>
    <li><label>地址</label>
    <input name="address" type="text" required="true" class="dfinput"  style="width:518px;" value="${doctor['address']}" /></li>
    <li><label></label>
        <input name="" type="submit" class="btn" value="确定"/>
    </li>
    </ul>
    </form>

    </div> 
	</div> 
    <script type="text/javascript">
        function back() {
            window.location.href='/yydzblmanasys/view/doctorManage';
        }
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    </div>
</body>
</html>