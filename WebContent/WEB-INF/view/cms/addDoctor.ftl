<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加医生</title>
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
    <form action="/yydzblmanasys/view/addDoctor" method="post">
    <ul class="forminfo">
    <li><label>姓名<b>*</b></label>
    <input name="name" type="text" class="dfinput" placeholder="请填写姓名"  style="width:518px;" required="true" /></li>
    <li><label>身份证号<b>*</b></label>
    <input name="identificationCode" type="text" class="dfinput" placeholder="请填写身份证号"  style="width:518px;" required="true"/></li>

    <li><label>年龄<b>*</b></label>
    <input name="age" type="text" class="dfinput" placeholder="请填写年龄"  style="width:518px;" required="true"/></li>
    <li><label>用户名<b>*</b></label>
    <input name="username" type="text" class="dfinput" placeholder="请填写用户名"  style="width:518px;" required="true"/></li>
    <li><label>密码<b>*</b></label>
    <input name="password" type="text" class="dfinput" placeholder="请填写密码"  style="width:518px;" required="true"/></li>
     <li><label>性别<b>*</b></label>  
    <div class="vocation">
    <select class="select1" name="gender">
    <option value="1" selected="selected">男</option>
    <option value="2">女</option>
    </select>
    </div>    
    </li>
    <li><label>手机号<b>*</b></label>
    <input name="phone" type="text" class="dfinput" placeholder="请填写手机号"  style="width:518px;" required="true"/></li>
    <li><label>地址<b>*</b></label>
    <input name="address" type="text" class="dfinput" placeholder="请填写地址"  style="width:518px;" required="true"/></li>
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