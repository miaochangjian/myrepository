<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width,initial-scale=1" />
	<style>body{padding-top: 60px;}</style>
	
    <link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap.css" rel="stylesheet" />
 
	<link href="${ctx}/staticfile/css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	
	<script src="${ctx}/staticfile/components/jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="${ctx}/staticfile/components/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="${ctx}/staticfile/js/fooduser-login-register.js" type="text/javascript"></script>

</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <!-- <div class="col-sm-4">
                 <a class="btn big-login" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">登录</a>
                 <a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">注册</a></div>
            <div class="col-sm-4"></div> -->
        </div>
       
         
		 <div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h2 class="modal-title"></h2>
                        <!-- <div class="modal-title">
	                    	<h2 class="text-center">请登录</h2>
	 	                </div> -->
                    </div>
                    <div class="modal-body">  
                        <div class="box">
                             <div class="content">
                                <!--第三方登录，不再实现 
                                <div class="social">
                                    <a class="circle github" href="/auth/github">
                                        <i class="fa fa-github fa-fw"></i>
                                    </a>
                                    <a id="google_login" class="circle google" href="/auth/google_oauth2">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="/auth/facebook">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a> 
                                    
                                    
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span></span>
                                    <div class="line r"></div>
                                </div>-->
                                
                                
                                <!-- <div class="error"></div> -->
                                <div class="form loginBox">
                                    <form method="post" action="/foodUserLogin" accept-charset="UTF-8" >
                                    
				 	                <div class="division">
	                                    <div class="line l"></div>
	                                      <span>叫我吃货</span>
	                                    <div class="line r"></div>
	                                </div>
                                <div class="error"></div>
                                    <input id="username" class="form-control" type="text" placeholder="用户名" name="username">
                                    <input id="password" class="form-control" type="password" placeholder="请输入密码" name="password">
                                    <input class="btn btn-default btn-login" type="submit" value="登录" >
                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                             <div class="form">
                                <form method="post" html="{:multipart=>true}" data-remote="true" 
                                	action="/foodUserRegister" accept-charset="UTF-8" onsubmit = "return checkForm()">
                                
                                <!-- <div class="modal-title">
			                    	<h2 class="text-center">欢迎注册</h2>
			 	                </div> -->
			 	                
			 	                <div class="division">
                                    <div class="line l"></div>
                                      <span>吃货认证</span>
                                    <div class="line r"></div>
                                </div>
                                <div class="error"></div>
                                
                                <input id="username2" class="form-control" type="text" placeholder="用户名（用于登录）" name="username">
                                <input id="phone2" class="form-control" type="text" placeholder="手机号码" name="phone">
                                <input id="password21" class="form-control" type="password" placeholder="密码（请输入6~8位字母或数字）" name="password">
                                <input id="password22" class="form-control" type="password" placeholder="确认密码" name="password2">
                                <input class="btn btn-default btn-register" type="submit" value="创建账户" name="commit" onclick="checkForm()">
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>
                                 <a href="javascript: showRegisterForm();">创建一个账户</a>
                            ?</span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>已经拥有一个账户?</span>
                             <a href="javascript: showLoginForm();">去登录</a>
                        </div>
                    </div>        
    		      </div>
		      </div>
		  </div>
    </div>
</body>
</html>
