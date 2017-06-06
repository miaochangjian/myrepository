<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		 
		<link href="${ctx}/staticfile/components/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/staticfile/components/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/staticfile/components/basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="${ctx}/staticfile/css/css/hmstyle.css" rel="stylesheet" type="text/css" />
		<script src="${ctx}/staticfile/components/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="${ctx}/staticfile/components/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
		
		
		
		
		
		<link href="${ctx}/staticfile/css/css/style.css" rel='stylesheet' type='text/css' media="all" />
		<link href="${ctx}/staticfile/css/css/component.css" rel="stylesheet" type="text/css"  />
		<script src="${ctx}/staticfile/js/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				 alert("123"); 
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
			
			
			
		}); 
		
		function focusCheckTA(obj){
			if(obj.value == "搜索"){
				obj.value = "";
			}
		}
	
		
		/* 输入框失去焦点事件 */
		function blurCheckTA(obj){
			if(obj.value == ""){
				obj.value = "搜索";
			}
		}
		</script>





	</head>

	<body>
		<div class="hmtop" id="top">
			<!--顶部导航条 -->
			<div class="am-container header">
				<ul class="message-l">
					<div class="topMessage">
						<div class="menu-hd">
							<c:if test="${empty foodUser}">
								<a href="${ctx}/toUserLogin" target="_top" class="h">亲，请登录</a>
								<a href="${ctx}/toUserLogin" target="_top">免费注册</a>
							</c:if>
							
							<c:if test="${ !(empty foodUser)}">
								欢迎, ${ foodUser.username } 回来&nbsp;&nbsp;|&nbsp;&nbsp;
								<a href="${ctx}/userlogout" target="_top" class="h">退出</a>
							</c:if>
						</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage home">
						<div class="menu-hd"><a href="/toManagerLogin" target="_top" class="h">商家入口</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng"><a href="${ctx}/toindex" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
				</ul>
				</div>

				<!--悬浮搜索框-->

				<div class="nav white">
					<div class="logo"><img src="${ctx}/staticfile/images/logo.png" /></div>
					<div class="logoBig">
						<li><img src="${ctx}/staticfile/images/logobig3.jpg" /></li>
					</div>

					<div class="search-bar pr">
						<a name="index_none_header_sysc" href="#"></a>
						<form action="/search" method="post">
							<input id="searchInput" name="index_none_header_sysc" type="text" value="${searchName!=null?searchName:'搜索'}"  onfocus="focusCheckTA(this)" onblur="blurCheckTA(this)">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
					</div>
				</div>

				<div class="clear"></div>
			</div>
			<div class="banner">
						
		
			
			
			
			
                    
			</div>						
			
			
			

	</body>

</html>