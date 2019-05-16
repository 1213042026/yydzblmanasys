
<#macro  page  url  totalpage rows=0   pageSize=8  cpage=1 id=1>
	<div class="message">
	共<i class="blue">${rows}</i>条记录，当前显示第&nbsp;<i class="blue">${cpage}&nbsp;</i>页，共<i class="blue">${totalpage}&nbsp;</i>页
	</div>
	        <ul class="paginList">
	        
	        <li class="paginItem">
	        <a href='${url}?cpage=1&pageSize=${pageSize}&id=${id}'>
	        <span >首页</span>
	        </a>
	        </li>
	        <#if cpage==1>
	        <li class="paginItem">
	        <a>
	        <span class="pagepre"></span>
	        </a>
	        </li>
	        <#else>
	        <li class="paginItem">
	        <a href='${url}?cpage=${cpage?number-1}&pageSize=${pageSize}&id=${id}'>
	        <span class="pagepre"></span>
	        </a>
	        </li>
	        </#if>
	        
	         <#if cpage==totalpage>
	        <li class="paginItem">
	        <a>
	        <span class="pagenxt"></span>
	        </a>
	        </li>
	        <#else>
	        <li class="paginItem">
	        <a href='${url}?cpage=${cpage?number+1}&pageSize=${pageSize}&id=${id}'>
	        <span class="pagenxt"></span>
	        </a>
	        </li>
	        </#if>
	        
	        <li class="paginItem">
	        <a href='${url}?cpage=${totalpage}&pageSize=${pageSize}&id=${id}'>
	        <span >尾页</span>
	        </a>
	        </li>
	        
	        </ul>
   	</div>
</#macro>