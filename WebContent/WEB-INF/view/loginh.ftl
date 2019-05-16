<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录医院电子病历管理系统</title>
<link href="/yydzblmanasys/static/css/login.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="/yydzblmanasys/static/js/jquery.js"></script>
<script src="/yydzblmanasys/static/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#df7611; background-image:url(/yydzblmanasys/static/img/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录医院电子病历管理界面平台</span>      
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox loginbox2">
    <form action="/yydzblmanasys/login" method="post">
    <ul>
    <li><input name="username" type="text" class="loginpwd" placeholder="账号" onclick="JavaScript:this.value=''"/></li>
    <li><input name="password" type="password" class="loginpwd" placeholder="密码" onclick="JavaScript:this.value=''"/></li>
    <li><select name="type">
        <option value ="1" selected = "selected">管理员登录</option>
        <option value ="2">用户登录</option>
    </select></li>
    <p style="color:red">${loginError}</p>	
    <li><input name="" type="submit" class="loginbtn" value="登录"  /></li>
     
    </ul>
    </form>
    
    </div>
    
    </div>
    
</body>

</html>
