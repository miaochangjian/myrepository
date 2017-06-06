<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../base.jsp" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>确认支付页</title>
 	<link href="${ctx}/staticfile/css/confirm.css" rel="stylesheet" type="text/css">
 	<script type="text/javascript">
 	var formObj = {
			checkForm: function(){
				var flag = false;
				alert(flag);
				return flag;
			}
 	}
 	</script>
</head>
<body>

<!-- 确认支付form -->
<div id="warp">
<div class="btn-wrapper">
  <div class="btn-wrapper__container">
  <div id=""text>
  	<p>付款金额<br />${p3_Amt }
		<span>
		订单号<br />${p2_Order}
		</span>
		<br />
	</p>
  </div>
  
    <div class="btn-inner">
    <form action="https://www.yeepay.com/app-merchant-proxy/node" method="post" id="subform">
			<input type="hidden" name="pd_FrpId" value="${pd_FrpId }" />
			<input type="hidden" name="p0_Cmd" value="${p0_Cmd }" />
			<input type="hidden" name="p1_MerId" value="${p1_MerId }" />
			<input type="hidden" name="p2_Order" value="${p2_Order }" />
			<input type="hidden" name="p3_Amt" value="${p3_Amt }" />
			<input type="hidden" name="p4_Cur" value="${p4_Cur }" />
			<input type="hidden" name="p5_Pid" value="${p5_Pid }" />
			<input type="hidden" name="p6_Pcat" value="${p6_Pcat }" />
			<input type="hidden" name="p7_Pdesc" value="${p7_Pdesc }" />
			<input type="hidden" name="p8_Url" value="${p8_Url }" />
			<input type="hidden" name="p9_SAF" value="${p9_SAF }" />
			<input type="hidden" name="pa_MP" value="${pa_MP }" />
			<input type="hidden" name="pr_NeedResponse" value="${pr_NeedResponse }" />
			<input type="hidden" name="hmac" value="${hmac}" />
		</form> 
      <a class="btn-inner__text" onclick="document.getElementById('subform').submit();">Hover Me</a>
    </div>
  </div>
</div>

</div>
	<script type="text/javascript">
 	
 		$('#catchme').hover(function(){  
			alert(111);
 	 		  $(this).css('position','absolute').css('top', Math.random()*90 + '%').css('left', Math.random()*90 + '%');
 	 		});
 	
 	
 	</script>
</body>
</html>