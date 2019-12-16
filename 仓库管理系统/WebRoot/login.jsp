<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>仓库管理登录入口</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
  </head>
  
  <body>
   <div class="ui-dialog" id="dialog">
    	<div class="ui-dialog-title" id="dialogTitle">
    		登录通行证
    	</div>
    	<form method="post" action="LoginServlet">
	    	<div class="ui-dialog-content">
	    		<div class="ui-dialog-140 ui-dialog-pt15">
	    			<input type="input" name="use" class="ui-dialog-input ui-dialog-input-username" placeholder="用户名" />
	    		</div>
	    		<div class="ui-dialog-140 ui-dialog-pt15">
	    			<input type="password" name="pwd" class="ui-dialog-input ui-dialog-input-password" placeholder="密码" />
	    		</div>
	    		<div class="ui-dialog-140 interval">
	    			<a href="#">忘记密码</a>
	    		</div>
	    		<div>
	    			<input type = "submit" value="登录" class="ui-dialog-submit">
	    		</div>
	    		<div class="ui-dialog-140">
	    			<a href="new.jsp">没有账号？立即注册</a>
	    		</div>
	    	</div>
    	</form>
    </div>
    <div id="mask" class="ui-mask" onslectstart="return false"></div>
    <script type="text/javascript">
		//展现登录浮层
		g('dialog').style.display='block';
        g('mask').style.display='block';
        autoCenter(g('dialog'));
		fillToBody(g('mask'));
		
    	// 获取元素对象
    	function g(id){
    		return document.getElementById(id);
    	}
		
    	// 自动居中-登录浮层（el=Element）
    	function autoCenter(el){
    		var bodyW=document.documentElement.clientWidth;
    		var bodyH=document.documentElement.clientHeight;

    		var elW=el.offsetWidth;
    		var elH=el.offsetHeight;

    		el.style.left=(bodyW-elW)/2+'px';
    		el.style.top=(bodyH-elH)/2+'px';
    	}
		
    	// 自动全屏-遮罩
    	function fillToBody(el){
    		el.style.width=document.documentElement.clientWidth + "px";
    		el.style.height=document.documentElement.clientHeight + "px";
    	}
    	var mouseoffsetX=0;   //偏移
    	var mouseoffsetY=0;
    	var isdraing=false;
		
    	//解决改变窗口大小不居中问题
    	window.onresize=function(){
    		autoCenter(g('dialog'));
    		fillToBody(g('mask'));
    	}
    </script>
  </body>
</html>
