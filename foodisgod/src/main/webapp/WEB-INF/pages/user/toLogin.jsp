<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
	
<body>
    <h1 style="color:red;font-size: 20px">您还未登录！请先登录，3秒后自动跳转</h1>
    <script type="text/javascript">
    
   		 window.setTimeout(function(){
	   		 top.location.href = "toUserLogin.action";
   		 },3000); 
    
    </script>
</body>
</html>
