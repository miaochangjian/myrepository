<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../base.jsp" %>
<!DOCTYPE html>
<head>
	<title>商家登录</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="${ctx}/staticfile/components/bootstrap3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script src="${ctx}/staticfile/js/manager-login.js" type="text/javascript"></script>
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">商家登录</h1>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" 
				role="form" action="/foodManagerLogin" method="post" onsubmit = "return checkNull()">				
		        <div class="form-group">
		          <div class="col-xs-12">
		          
		          <div class="error" id="err-info"></div>		
		           	
		            <div class="control-wrapper">
		            	<label for="managername" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
		            	<input type="text" class="form-control" id="managername" name ="managerName"placeholder="请输入用户名" value="${managerName}">
		            </div>		            	            
		          </div>              
		        </div>
		           	<span id="msg" style="color:red;">${msg}</span>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	<input type="password" class="form-control" id="password" name ="password" placeholder="请输入密码" bule>
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
	             	<div class="checkbox control-wrapper">
	                	<label>
	                  		<input type="checkbox"> 记住密码
                		</label>
	              	</div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          		<input type="submit" value="登录" class="btn btn-info" onclick="checkForm()">
		          		<a href="#" class="text-right pull-right">忘记密码?</a>
		          	</div>
		          	 <div class="text-center">
		      	<a href="/toManagerRegister" class="templatemo-create-new">注册成为商家 <i class="fa fa-arrow-circle-o-right"></i></a>	
		      </div>
		          </div>
		        </div>
		        <hr>
		        <!-- <div class="form-group">
		        	<div class="col-md-12">
		        		<label>Login with: </label>
		        		<div class="inline-block">
		        			<a href="#"><i class="fa fa-facebook-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-twitter-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-google-plus-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-tumblr-square login-with"></i></a>
			        		<a href="#"><i class="fa fa-github-square login-with"></i></a>
		        		</div>		        		
		        	</div>
		        </div> -->
		      </form>
		</div>
	</div>
</body>
</html>