<#macro body type innerType username id>
    <nav class="navbar navbar-inverse navbar-no-bg navbar-fixed-top"
        role="navigation">
        <div class="container">
            <div style="position: absolute; left: 40px; top: 6px;"></div>
            <#if type =='1'>  
                <div style="position: absolute; left: 150px; top: -2px;">
                    <a class="navbar-brand" href="javascropt:void(0);"><font color="#fff">医院电子病历管理系统-系统管理员</font></a>
                </div>
            </#if>
            <#if type =='2'>  
                <#if innerType =='1'>  
                    <div style="position: absolute; left: 150px; top: -2px;">
                        <a class="navbar-brand" href="javascropt:void(0);"><font color="#fff">医院电子病历管理系统-患者</font></a>
                    </div>
                </#if>
                <#if innerType =='2'>  
                    <div style="position: absolute; left: 150px; top: -2px;">
                        <a class="navbar-brand" href="javascropt:void(0);"><font color="#fff">医院电子病历管理系统-医生</font></a>
                    </div>
                </#if>
            </#if>
            <div class="collapse navbar-collapse" id="top-navbar-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><span class="li-text"></span> <span class="li-text">
                    </span> <span class="li-social"> </span>
                        <div>
                            <#if type =='1'>  
                            <a class="navbar-brand" style="font-size: 12px;" href="javascript:void(0);"><strong><font color="#fff">欢迎您, ${username}</font></strong></a>
                            </#if>
                            <#if type =='2'>  
                            <a class="navbar-brand" style="font-size: 12px;" href="/yydzblmanasys/view/userCenter?id=${id}"><strong><font color="#fff">欢迎您, ${username}</font></strong></a>
                            <a class="navbar-brand" href="/yydzblmanasys/page/index"><font color="#fff">转到医院首页</font></a>
                            </#if>
                            <a class="navbar-brand" style="font-size: 12px;"
                                href="/yydzblmanasys/view/logout"><strong>注销</strong></a>
                        </div></li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="wrapper">
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav" style="top: 65px;">
            <#if type =='1'>  
                <li><a class="list-group-item" href="/yydzblmanasys/page/cms/main"><font  color="#fff">首页</font></a></li>
                <li><a class="list-group-item" href="/yydzblmanasys/view/doctorManage"><font  color="#fff">医生信息管理</font></a></li>
                <li><a class="list-group-item" href="/yydzblmanasys/view/newsManage"><font color="#fff">医院新闻管理</font></a></li>
            </#if>

            <#if type =='2'>  
                <#if innerType =='1'>  
                    <li><a class="list-group-item" href="/yydzblmanasys/page/cms/main"><font  color="#fff">首页</font></a></li>
                    <li><a class="list-group-item" href="/yydzblmanasys/view/hisMedicalRecord?id=${id}"><font  color="#fff">历史病历</font></a></li>
                    <li><a class="list-group-item" href="/yydzblmanasys/view/updatePasswordData?id=${id}"><font color="#fff">修改密码</font></a></li>
                </#if>
                <#if innerType =='2'>  
                    <li><a class="list-group-item" href="/yydzblmanasys/page/cms/main"><font  color="#fff">首页</font></a></li>
                    <li><a class="list-group-item" href="/yydzblmanasys/view/patientsManage"><font  color="#fff">患者管理</font></a></li>
                    <li><a class="list-group-item" href="/yydzblmanasys/view/medicalRecordManage?docId=${id}"><font  color="#fff">病历管理</font></a></li>
                    <li><a class="list-group-item" href="/yydzblmanasys/view/updatePasswordData?id=${id}"><font color="#fff">修改密码</font></a></li>
                </#if>
            </#if>
        </ul>
    </div>
    </div>
</#macro>
