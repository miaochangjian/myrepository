<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="head.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>购物车页面</title>
		<link href="${ctx}/staticfile/components/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/staticfile/components/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
		
		<link href="${ctx}/staticfile/components/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/staticfile/components/basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/staticfile/css/css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="${ctx}/staticfile/css/css/optstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="${ctx}/staticfile/js/js/jquery.js"></script>
		<script type="text/javascript">
		
		$(document).ready(function(){
		    $(function(){
		        $(".add").click(function(){
		         var t=$(this).parent().find('input[class*=text_box]');
		       t.val(parseInt(t.val())+1);
		       var num = t.val();
		       var a= $(document).find(".J_ItemSum");
		       var b =$(document).find("#J_Total");
		       var sum =${t1*foodItem.price};
		       /* alert(sum); */
		       /* alert(${foodItem.price*num});
		       alert(num);
		       alert(${foodItem.price}*num); */
		      /*  alert(); */
		       a.text(${foodItem.price}*num);
		       b.text(${foodItem.price}*num);
		       });
		     $(".min").click(function(){
		      var t=$(this).parent().find('input[class*=text_box]');
		        t.val(parseInt(t.val())-1)
		        if(parseInt(t.val())<1){
		         t.val(1);
		         }
		        var num = t.val();
		        var a= $(document).find(".J_ItemSum");
		        var b =$(document).find("#J_Total");
		        var sum =${t1*foodItem.price};
		        a.text(${foodItem.price}*num);
		        b.text(${foodItem.price}*num);
		      });
		    /*  $(".text_box").focus(function(){
		    	 alert("readonly");
		     }); */
		     
		     /* $(".delete").click(function(){
		    	 if(confirm("确认删除？")){
						var id =$(this).parent().parent().find("input[class=buyNumInp]").attr("id");
						location.href="${app}/servlet/CartDeleteServlet?id="+id;
					}
		    	 
		     }); */
    	}); 
		}); 

		</script>
	</head>

	<body>
		<p style="height: 80px">
		</p>
		

			<!--购物车 -->
			<div class="concent">
				<div id="cartTable">
					<div class="cart-table-th">
						<div class="wp">
							<div class="th th-chk">
								<div id="J_SelectAll1" class="select-all J_SelectAll">

								</div>
							</div>
							<div class="th th-item">
								<div class="td-inner">商品信息</div>
							</div>
							<div class="th th-price">
								<div class="td-inner">单价</div>
							</div>
							<div class="th th-amount">
								<div class="td-inner">数量</div>
							</div>
							<div class="th th-sum">
								<div class="td-inner">金额</div>
							</div>
							<!-- <div class="th th-op">
								<div class="td-inner">操作</div>
							</div> -->
						</div>
					</div>
					<div class="clear"></div>
					<!--购物信息  -->
					
					<tr class="item-list">
						<div class="bundle  bundle-last ">
							<div class="bundle-hd">
								<div class="bd-promos">
									<span class="list-change theme-login">编辑</span>
								</div>
							</div>
							<div class="clear"></div>
							<div class="bundle-main">
								<ul class="item-content clearfix">
									<li class="td td-chk">
										<div class="cart-checkbox ">
											<label for="J_CheckBox_170037950254"></label>
										</div>
									</li>
									<li class="td td-item">
										<div class="item-pic" >
											<a href="#" target="_blank" data-title="" class="J_MakePoint" data-point="tbcart.8.12">
												<img style="margin: 0 auto;" src="${ctx}${foodItem.image }" class="itempic J_ItemImg"></a>
										</div>
										<div class="item-info">
											<div class="item-basic-info">
												<a href="#" target="_blank" title="" class="item-title J_MakePoint" data-point="tbcart.8.11">${foodItem.title }</a>
											</div>
										</div>
									</li>
									<li class="td td-info">
										<div class="item-props item-props-can">
											<i class="theme-login am-icon-sort-desc"></i>
										</div>
									</li>
									<li class="td td-price">
										<div class="item-price price-promo-promo">
											<div class="price-content">
												<div class="price-line" style="display: none;">
													<em class="price-original">78.00</em>
												</div>
												<div class="price-line">
													<span class="J_Price price-now" tabindex="0">${foodItem.price }</span>
												</div>
											</div>
										</div>
									</li>
									<li class="td td-amount">
										<div class="amount-wrapper ">
											<div class="item-amount ">
												<div class="sl">
													<input class="min am-btn" name="" type="button" value="-" />
													<input class="text_box" name="" type="text" readonly="readonly" value="${num }" style="width:30px;" />
													<input class="add am-btn" name="" type="button" value="+" />
												</div>
											</div>
										</div>
									</li>
									<li class="td td-sum">
										<div class="td-inner">
											<span tabindex="0" class="J_ItemSum number">${num*foodItem.price }</span>
										</div>
									</li>
									<li class="td td-op">
										<!-- <div class="td-inner">
											<a href="javascript:;" data-point-url="#" class="delete">
                  删除</a>
										</div> -->
									</li>
								</ul>
								
								
							</div>
						</div>
					</tr>
					<div class="clear"></div>

					
				</div>
				<div class="clear"></div>
				<!--总金额  -->
				<div class="float-bar-wrapper">
					<div id="J_SelectAll2" class="select-all J_SelectAll">
					</div>
					<div class="float-bar-right">
						<div class="price-sum">
							<span class="txt">合计:</span>
							<strong class="price">¥<span id="J_Total">${num*foodItem.price }</span></strong>
						</div>
						<div class="btn-area">
							<a  id="J_Go" class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">
								<span>付&nbsp;款</span></a>
						</div>
					</div>

				</div>


			</div>
			
			<script >
			jQuery(document).ready(function($) {
				$("#J_Go").click(function(event){	
					var a= $(document).find('input[class*=text_box]');
					var num =a.val();
					location.href="${pageContext.request.contextPath}/pay?itemId=${foodItem.itemId}&num="+num;
				});
				
			}); 
		
			</script>

			
	</body>

</html>