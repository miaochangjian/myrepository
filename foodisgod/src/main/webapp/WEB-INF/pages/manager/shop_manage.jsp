<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../base.jsp" %>
<!DOCTYPE html>
<head>
	<title>我的店铺</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<link href="${ctx}/staticfile/css/shop_manage.css" rel="stylesheet" type="text/css">
	
	
	
	<script type="text/javascript" src="${ctx}/staticfile/components/bootstrap3/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/staticfile/components/bootstrap3/js/bootstrap.min.js"></script>
	<script src="${ctx}/staticfile/js/area.js" type="text/javascript"></script>

	
		
</head>
<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">店铺管理</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" 
							role="form" action="/saveRestaurant" method="post">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">
			          		          	
			            <label for="restaurant_name" class="control-label" name="">店铺名</label>
			            <input type="text" class="form-control" id="name" name="name" placeholder="必填">		            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="category" class="control-label">店铺类型</label>
			            <!-- <input type="select" class="form-control" id="managerNick" name="managerNick" placeholder="选填"> -->		            		            		            
			            <select class="form-control" id="category" name="category">
			            	<option value="">请选择</option>
			            	<option value="1">川湘菜</option>
			            	<option value="2">江浙菜</option>
			            	<option value="3">粤港菜</option>
			            	<option value="4">云贵菜</option>
			            	<option value="5">西北菜</option>
			            	<option value="6">新疆菜</option>
			            	<option value="7">京鲁菜</option>
			            	<option value="8">客家菜</option>
			            </select>
			          </div>             
			        </div>
			        
					<div class="form-group">
						<div class="col-md-12">
							<label for="password" class="control-label">店铺地址</label>
							<!-- <input type="password" class="form-control" id="password" name="password" placeholder="至少6位字母或数字"> -->

							<div class="address-info">
								<div>
									<select id="s_province" name="address" ></select>   
									<select id="s_city" name="address" ></select>   
									<select id="s_county" name="address" ></select>
									<script type="text/javascript"> _init_area(); </script>
									<script type="text/javascript">
										var Gid = document.getElementById;
										var showArea = function() {
											Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市"
													+ Gid('s_city').value + " - 县/区" + Gid('s_county').value
													+ "</h3>"
										}
										Gid('s_county').setAttribute('onchange', 'showArea()'); 
										/*  var address = $('#s_province').val()+$('#s_s_city').val()+$('#s_county').val(); */
									</script>
									
								</div>
								
								<div id="show"></div>
							</div>
						</div>

					</div>
					
					<div class="form-group">
					<div class="col-md-12">		          	
			            <label for="detailed_address" class="control-label">详细地址</label>
			            <input type="text" class="form-control" id="detailAddress" name="detailAddress" placeholder="请输入详细地址（街道等信息）">		            		            		            
			         
			         <!--   <input type="hidden" value=""> -->
			         </div>   
			        </div>   
					
					
					<div class="form-group">
						<div class="col-md-12">
							<label for="descrip" class="control-label">描述</label> 
							<!-- <input type="text" class="form-control" id="describe" name="describe" placeholder="请描述一下你的店铺"> -->
							<textarea class="form-control" id="descrip" name="descrip" placeholder="请描述一下你的店铺"></textarea>
						</div>
					</div>
					
			        
			        <!--接收服务条款  -->
			        <!-- <div class="form-group">
			          <div class="col-md-12">
			            <label><input type="checkbox">I agree to the <a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">Terms of Service</a> and <a href="#">Privacy Policy.</a></label>
			          </div>
			        </div> -->
			        
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" value="保存店铺" class="btn btn-info">
			           	<a href="/toManagerRegister" class="pull-right">放弃注册</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	
	
</body>
</html>