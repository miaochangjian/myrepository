<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../base.jsp" %>
<!DOCTYPE html>
<head>
	<title>欢迎注册成为商家</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="${ctx}/staticfile/components/bootstrap3/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/staticfile/components/bootstrap3/js/bootstrap.min.js"></script>
	<script src="${ctx}/staticfile/js/manager-login-register.js" type="text/javascript"></script>

	
	
</head>
<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">商家注册</h1>
	<div class="container">
		<div class="col-md-12">	
		<!--改写提交地址  -->		
			<form class="form-horizontal templatemo-create-account templatemo-container" 
					role="form" action="/foodManagerRegister" method="post" onsubmit = "return formObj.checkForm()">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">
			          		          	
			            <label for="manager_name" class="control-label">姓名</label>
			            <input type="text" class="form-control" id="managerName" name="managerName" placeholder="必填"
			            	 onblur="formObj.checkNull('managerName', '姓名不能为空')" /> 
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="id_no" class="control-label">身份证号</label>
			            <input type="text" class="form-control" id="idNum" name="idNum" placeholder="必填" 
			            	onblur="formObj.checkIdNum('idNum', '身份证号格式不正确')">		            		            		            
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">密码</label>
			            <input type="password" class="form-control" id="password" name="password" placeholder="至少6位字母或数字"
			            	onblur="formObj.checkNull('password', '密码不能为空')"
			            >
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">确认密码</label>
			            <input type="password" class="form-control" id="password2" name="password2" placeholder="请再次输入密码"
			            onblur="formObj.checkPassword('password', '两次密码不一致')" 
			            >
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="phone" class="control-label">手机号码</label>
			            <input type="text" class="form-control" id="phone" name="phone" placeholder="必填"
						onblur="formObj.checkNull('phone', '手机号码不能为空')"	
			            >		            		            		            
			          </div>              
			          <div class="col-md-6">		          	
			            <label for="email" class="control-label">邮箱</label>
			            <input type="text" class="form-control" id="email" name="email"placeholder="必填"
			           onblur="formObj.checkNull('email', '邮箱格式不能为空')">		            		            		         
			          </div>              
			        </div>			
			        
			          <!--<div class="col-md-6 templatemo-radio-group">
			          	 <label class="radio-inline">
		          			<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> Male
		          		</label> 
		          		<label class="radio-inline">
		          			<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> Female
		          		</label>
			          </div>             
			        </div>-->
			        
			        <!--接收服务条款  -->
			        <!-- <div class="form-group">
			          <div class="col-md-12">
			            <label><input type="checkbox">I agree to the <a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">Terms of Service</a> and <a href="#">Privacy Policy.</a></label>
			          </div>
			        </div> -->
			        
			        <div class="form-group">
			          <div class="col-md-12">
			          <!--将数据保存到session中，并准发到管理店铺页面  -->
			            <input type="submit" value="下一步" class="btn btn-info"/>
			            <a href="/toManagerLogin" class="pull-right">去登陆</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<!-- <div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      	<p>This form is provided by <a rel="nofollow" href="http://www.cssmoban.com/page/1">Free HTML5 Templates</a> that can be used for your websites. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
	        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
	        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div> -->
	</div>
	
</body>
</html>