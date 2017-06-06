<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="base.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>首页</title>
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
				 /* alert("123"); */ 
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
								<a href="${ctx}/toUserLogin" target="_top" class="h">亲，请登录</a>&nbsp;|&nbsp;
								<a href="${ctx}/toUserLogin" target="_top">免费注册</a>
								&nbsp;&nbsp;所在城市： ${ cityName }
							</c:if>
							
							<c:if test="${ !(empty foodUser)}">
								欢迎, ${ foodUser.username } 回来&nbsp;&nbsp;|&nbsp;&nbsp;
								<a href="${ctx}/userlogout" target="_top" class="h">退出</a>
								
								&nbsp;&nbsp;所在城市： ${ cityName }
							</c:if>
						</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage home">
						<div class="menu-hd"><a href="toManagerLogin" target="_top" class="h">商家入口</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
					</div>
					<div class="topMessage favorite">
						<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
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
							<input id="searchInput" name="index_none_header_sysc" type="text" value="搜索"  onfocus="focusCheckTA(this)" onblur="blurCheckTA(this)">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
					</div>
				</div>

				<div class="clear"></div>
			</div>
			
			
			
			
			<div class="banner">
						<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s2">
							<ul>
							<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
								<li><h3 style="color:#DDDDDD">品种</h3></li>
								<li><a href="#1" class="scroll">川湘菜</a></li>
								<li><a href="#2" class="scroll">江浙菜</a></li>
								<li><a href="#3" class="scroll">粤港菜</a></li>
								<li><a href="#4" class="scroll">云贵菜</a></li>
								<li><a href="#5" class="scroll">西北菜</a></li>
								<li><a href="#6" class="scroll">新疆菜</a></li>
								<li><a href="#7" class="scroll">京鲁菜</a></li>
								<li><a href="#8" class="scroll">客家菜</a></li>
								<li><a href="#top" class="scroll" id="top123">回到顶部</a></li>
								<!-- <li><a href="#testimonials" class="scroll">Testimonials</a></li>
								<li><a href="#news" class="scroll">News</a></li>
								<li><a href="#mail" class="scroll">Mail Us</a></li> -->
							</ul>
						</nav>
						<div class="main button123">	
								<!-- Class "cbp-spmenu-open" gets applied to menu and "cbp-spmenu-push-toleft" or "cbp-spmenu-push-toright" to the body -->
								<button id="showRightPush"><img src="${ctx}/staticfile/images/menu.png" alt=""/></button>
								<!--<span class="menu"></span>-->
						</div>
						<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
						<script src="${ctx}/staticfile/js/js/classie.js"></script>
						<script>
						var menuRight = document.getElementById( 'cbp-spmenu-s2' ),
						showRightPush = document.getElementById( 'showRightPush' ),
						body = document.body;

						showRightPush.onclick = function() {
							classie.toggle( this, 'active' );
							classie.toggle( body, 'cbp-spmenu-push-toleft' );
							classie.toggle( menuRight, 'cbp-spmenu-open' );
							disableOther( 'showRightPush' );
						};

						function disableOther( button ) {
							if( button !== 'showRightPush' ) {
								classie.toggle( showRightPush, 'disabled' );
							}
						}
						 </script>
		
			
			
			
			
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
						
						
							<ul class="am-slides">
								<li class="banner1"><a href="#"><img src="${ctx}/staticfile/images/ad1.jpg" /></a></li>
								<li class="banner2"><a href="#"><img src="${ctx}/staticfile/images/ad2.jpg" /></a>
								</li>
								<li class="banner3"><a href="#"><img src="${ctx}/staticfile/images/ad3.jpg" /></a></li>
								<li class="banner4"><a href="#"><img src="${ctx}/staticfile/images/ad4.jpg" /></a></li>

							</ul>
						</div>
						<div class="clear"></div>	
			</div>						
			
			<div class="shopNav">
				<div class="slideall">
			        
					   <div class="long-title"><span class="all-goods">首页</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">全部分类</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    
						</div>
						
						
						
						
						
		        				
						
						<!--轮播 -->
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>



					
				</div>
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
				<div class="shopMain" id="shopmain">

					<!--今日推荐 -->

					<div class="am-g am-g-fixed recommendation">
						<div class="clock am-u-sm-3" ">
							<img src="${ctx}/staticfile/images/2016.png "></img>
							<p>今日<br>推荐</p>
						</div>
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>真的有鱼</h3>
								<h4>开年福利篇</h4>
							</div>
							<div class="recommendationMain ">
								<img src="${ctx}/staticfile/images/tj.png "></img>
							</div>
						</div>						
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>囤货过冬</h3>
								<h4>让爱早回家</h4>
							</div>
							<div class="recommendationMain ">
								<img src="${ctx}/staticfile/images/tj1.png "></img>
							</div>
						</div>
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>浪漫情人节</h3>
								<h4>甜甜蜜蜜</h4>
							</div>
							<div class="recommendationMain ">
								<img src="${ctx}/staticfile/images/tj2.png "></img>
							</div>
						</div>

					</div>
					<div class="clear "></div>
					
					
					
					
					
					
					
					<!--1,川湘菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="1">
						<div class="shopTitle ">
							<h4>川湘菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="/search?status=1" >更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two" >
								<div class="outer-con ">
									<div class="title ">
										${foodItem.title }
									</div>
									<div class="sub-title">
									<span>￥ ${foodItem.price } </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：${foodItem.amount }</span>
										
									</div>
	<a href="${pageContext.request.contextPath}/cart?itemId=${foodItem.itemId}" target="_blank">
<i class="am-icon-shopping-basket am-icon-md  seprate" onclick="funb()"></i>									
	</a>								
								</div>
								
								<a href="# "><img src="${ctx}${foodItem.image }" onclick="func(this)"/></a>
							</div>
							<!--支付  -->
							<script type="text/javascript">
							function func(obj){
								location.href="${pageContext.request.contextPath}/todetails?itemId=${f1.itemId}";
							}
							/* function funb(){
								location.href="${pageContext.request.contextPath}/cart?itemId=${f1.itemId}";
							} */
							
							</script>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									${f2.title }
								</div>
								<div class="sub-title ">
									<span>¥ ${f2.price }</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：${f2.amount }</span>
										
								</div>
									<a href="${pageContext.request.contextPath}/cart?itemId=${f2.itemId}" target="_blank">
										<i class="am-icon-shopping-basket am-icon-md  seprate"></i>		
									</a>						
							</div>
							<a href="# "><img src="${ctx}${f2.image }" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									${f3.title }
								</div>
								<div class="sub-title ">
									<span>¥ ${f3.price }</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：${f3.amount }</span>
								</div>
								<a href="${pageContext.request.contextPath}/cart?itemId=${f3.itemId}" target="_blank">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>	
								</a>							
							</div>
							<a href="# "><img src="${ctx}${f3.image }" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									${f4.title }
								</div>
								<div class="sub-title ">
									<span>¥ ${f4.price }</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：${f4.amount }</span>
								</div>
								<a href="${pageContext.request.contextPath}/cart?itemId=${f4.itemId}" target="_blank">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</a>								
							</div>
							<a href="# "><img src="${ctx}${f4.image }" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									${f5.title }
								</div>
								<div class="sub-title ">
									<span>¥ ${f5.price }</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：${f5.amount }</span>
								</div>
								<a href="${pageContext.request.contextPath}/cart?itemId=${f4.itemId}" target="_blank">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>	
								</a>							
							</div>
							<a href="# "><img src="${ctx}${f5.image }" /></a>
						</div>

					</div>
					
					<!--2,江浙菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="2">
						<div class="shopTitle ">
							<h4>江浙菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										 江南赋二人餐
									</div>
									<div class="sub-title">
									<span>¥88 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：600</span>
										
									</div>
									
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="${ctx}/staticfile/images/dcaf653f71e759d6b10e8448049a0e5c19927.jpg@350w_214h_1e.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小锅当家浓汁鸡煲
								</div>
								<div class="sub-title ">
									<span>¥16.9 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：100</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/d5ade7d4c3e6e18ccd15a69294259d2144793.jpg@350w_214h_1e.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									江南好淮阳菜馆双人餐
								</div>
								<div class="sub-title ">
									<span>¥159 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：299</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/93fa43eb638555cd29be6ce0b19bfae696280.jpg@350w_214h_1e.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									张生记团购
								</div>
								<div class="sub-title ">
									<span>¥2886</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：42</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/c042179f170246aabbfbeb3bbcc48e7345866.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									爱慕餐厅团购
								</div>
								<div class="sub-title ">
									<span>¥792</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：30</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/0a777fcf45b9e5ce16987116d4f8bd0735405.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

					</div>
					
					<!--3,粤港菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="3">
						<div class="shopTitle ">
							<h4>粤港菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										 小磨坊百姓厨房团购
									</div>
									<div class="sub-title">
									<span>¥95 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：867</span>
										
									</div>
									
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="${ctx}/staticfile/images/__17136642__2531123.jpg@350w_214h_1e.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									粤港餐厅团购
								</div>
								<div class="sub-title ">
									<span>¥159 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：16</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/46e47c6fbcbaf225d6f6aa42ab22a02d55288.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									粤港餐厅二人餐
								</div>
								<div class="sub-title ">
									<span>¥99 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：3</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/375239990d6a55a3e5a89fb7066d5e09114680.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									粤港餐厅二人餐
								</div>
								<div class="sub-title ">
									<span>¥92</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：1</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/151109106e4a38293fa4c092c7fa30bd47258.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									粤港餐厅三人餐
								</div>
								<div class="sub-title ">
									<span>¥100</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：30</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/df63732ce65939fe4adc2cc9081830d626526.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

					</div>
					
					<!--4,云贵菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="4">
						<div class="shopTitle ">
							<h4>云贵菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										 云季风尚云贵餐厅二人餐
									</div>
									<div class="sub-title">
									<span>¥128 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：61</span>
										
									</div>
									
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="${ctx}/staticfile/images/bf24283f36987b322c9a0122e79864f9142606.jpg@460w_280h_1e_1c.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									云季风尚云贵餐厅二人餐
								</div>
								<div class="sub-title ">
									<span>¥151</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：16</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/c56aa2c203c8a53489a845a41587d01a303491.jpg@460w_280h_1e_1c.png" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									云季风尚云贵餐厅二人餐
								</div>
								<div class="sub-title ">
									<span>¥99 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：3</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/9970e4190e219260a6c54d52903b69cb41168.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									云季风尚云贵餐厅二人餐
								</div>
								<div class="sub-title ">
									<span>¥92</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：1</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/cfc8fca4f91dcc35d0ca757b1f347f95285898.jpg@460w_280h_1e_1c.png" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									云贵餐厅团购
								</div>
								<div class="sub-title ">
									<span>¥100</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：30</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/df63732ce65939fe4adc2cc9081830d626526.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

					</div>
					
					
					<!--5,西北菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="5">
						<div class="shopTitle ">
							<h4>西北菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										 华俊西北2-3人餐
									</div>
									<div class="sub-title">
									<span>¥128 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：61</span>
										
									</div>
									
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="${ctx}/staticfile/images/bb88346b0c306c3dd5f4da1dedc0a544126809.jpg@350w_214h_1e.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									西北阿依舍食府代金券
								</div>
								<div class="sub-title ">
									<span>¥88</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：16</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/db223428d9b9d7defec163ecf2745c0d25002.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									印象西北4人虾锅豪华套餐
								</div>
								<div class="sub-title ">
									<span>¥99 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：3</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/afead95b04178b291acfa905230a049d215365.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									富食联西北民族风味二人餐
								</div>
								<div class="sub-title ">
									<span>¥92</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：1</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/0967d6bf10b28e20c547565a737f1b0253621.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									富食联西北民族风味团购
								</div>
								<div class="sub-title ">
									<span>¥100</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：30</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/341ffd443bb8f52b23f1a46c9b9a2e4f82870.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

					</div>
					
					
					
					
					<!--6,新疆菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="6">
						<div class="shopTitle ">
							<h4>新疆菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										 萨他尔新疆餐厅大盘鸡
									</div>
									<div class="sub-title">
									<span>¥300 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：61</span>
										
									</div>
									
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="${ctx}/staticfile/images/1e398030e3111229cd84604e767d7026418810.jpg@460w_280h_1e_1c.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									上羊楼新疆美食代金券
								</div>
								<div class="sub-title ">
									<span>¥88</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：16</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/4b10287442ab05f5fa2359485d5b0ae265575.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									萨他尔新疆餐厅豪华套餐
								</div>
								<div class="sub-title ">
									<span>¥99 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：3</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/4afb2643b1e4839621a1ab2562fac420335172.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									伊带伊路新疆美食府二人餐
								</div>
								<div class="sub-title ">
									<span>¥92</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：1</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/832e7f4536b64d15b7f25fa3f3b8f2da2160507.jpg@350w_214h_1e.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									伊带伊路美食府二人餐
								</div>
								<div class="sub-title ">
									<span>¥100</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：30</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/c45843c99cca74f77e20fd9c137ab4de91164.jpg@350w_214h_1e.jpg" /></a>
						</div>

					</div>
					
					
					
					<!--7,京鲁菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="7">
						<div class="shopTitle ">
							<h4>京鲁菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										 老北京炸酱面
									</div>
									<div class="sub-title">
									<span>¥100 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：61</span>
										
									</div>
									
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="${ctx}/staticfile/images/290056e593388a840d621e2df35d79e732849.jpg@460w_280h_1e_1c.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									金百万烤鸭店代金券
								</div>
								<div class="sub-title ">
									<span>¥88</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：16</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/b27a34e0f8a2ce1586c29598a848c14d83438.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									95号酱骨·一块豆腐
								</div>
								<div class="sub-title ">
									<span>¥99 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：3</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/a07090a68827d3aa467b12a4d60def811175805.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									济州岛火炉烤肉代金券
								</div>
								<div class="sub-title ">
									<span>¥92</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：1</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/__50056328__7777411.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									羲和雅苑二人餐
								</div>
								<div class="sub-title ">
									<span>¥100</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：30</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/21cabd21294dba542d777608f46564ee38901.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

					</div>
					
					
					
					<!--8,客家菜-->
					<!-- 1,川湘菜；2,江浙菜；3,粤港菜；4,云贵菜；5,西北菜；6,新疆菜；7,京鲁菜；8,客家菜' -->
					<div class="am-container " id ="8">
						<div class="shopTitle ">
							<h4>客家菜</h4>
							<h3>*****</h3>
							
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						
							

							<div class="am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										 瑞福祥家常菜
									</div>
									<div class="sub-title">
									<span>¥100 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：61</span>
										
									</div>
									
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="${ctx}/staticfile/images/c1d3ee2053ab535996c40ebe1525c3ea50349.jpg@460w_280h_1e_1c.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									岸乡居农家院餐饮部代金券
								</div>
								<div class="sub-title ">
									<span>¥88</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：16</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/fa4a22718ff8ee3bbaf7a78e7f53e63167830.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									日昇精细家常菜代金券
								</div>
								<div class="sub-title ">
									<span>¥99 </span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：3</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/36e8f48e7e7140130cf0a2478103bc66144570.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									济州岛火炉烤肉代金券
								</div>
								<div class="sub-title ">
									<span>¥92</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：1</span>
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/__50056328__7777411.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									老磨盘民俗村海鲜大咖
								</div>
								<div class="sub-title ">
									<span>¥100</span>
									<span style="color:#FF0000;float: right; margin-right: 15px;">已售：30</span>
								
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="${ctx}/staticfile/images/fe56e3416353edac729a3f3da4b18e9c59114.jpg@460w_280h_1e_1c.jpg" /></a>
						</div>

					</div>
					
					
					
                   
                  
                   </div>
                   </div>
                   
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="${ctx}/staticfile/components/basic/js/quick_links.js "></script>
	</body>

</html>


