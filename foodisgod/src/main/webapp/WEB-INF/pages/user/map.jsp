<%@ page language="java" pageEncoding="UTF8"%>
<%@ include file="../base.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF8">
	<script src="${ctx}/staticfile/js/jquery-1.6.2.js"></script>
	<script src="${ctx}/staticfile/js/echarts.js"></script>
	<!-- <script src="${ctx}/staticfile/js/echarts-gl.js"></script> -->
	<script src="${ctx}/staticfile/ditu/westeros.js"></script>
	<script src="${ctx}/staticfile/ditu/${map[1]}.js"></script>
	<script src="${ctx}/staticfile/js/starry-sky.js"></script>
	<link href="${ctx}/staticfile/css/botton_map.css" rel="stylesheet" type="text/css">
	<link href="${ctx}/staticfile/css/starry-sky.css" rel="stylesheet" type="text/css">
	<style type="text/css">
		body, html,#allmap,#canvas {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
		
		
	
	</style>
	<script type="text/javascript">
	$(function(){
		$("#position").click(function(){
			window.location.href="${pageContext.request.contextPath}/toposition";
		})
	});

	</script>
	
	<title>Insert title here</title>
</head>
<body>
	
	<! 为 ECharts 准备一个具备大小（宽高）的 DOM >
	<div class="svg-wrapper">
		<svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
			<rect id="shape" height="40" width="150" />
			<div id="text">
				<a id="position" href="${pageContext.request.contextPath}/toposition"><span class="spot"></span><div style="color: #ffc; text-shadow: 0 0 .1em, 0 0 .3em;">自动定位</div></a>
			</div>
		</svg>
	</div>
	<div id="allmap" style='background-image:-moz-element(#elementID);'></div>
	<canvas id='canvas' ></canvas>
	
	<script type="text/javascript">
	datas = ${data};
	$(document).ready(function(){
		// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById('allmap'),'westeros');
		   /* datas = eval('(' + ${data} + ')'); */ 
		 option = {  
             tooltip: { //tooltip提示框，鼠标悬浮交互时的信息提示  
                 trigger: 'item' //触发类型，默认数据触发，见下图，可选为：'item' | 'axis'  
             },  
           
             dataRange: { //dataRange值域选择  
             	show: false,
                 min: 0, //指定的最小值，eg: 0，默认无，必须参数，唯有指定了splitList时可缺省min。  
                 max: 2500,  
                   
             },  
             series: [ //通用,驱动图表生成的数据内容数组，数组中每一项为一个系列的选项及数据，其中个别选项仅在部分图表类型中有效  
                 {  
                     name: '点击量',  
                     type: 'map',  
                     mapType: '${map[0]}',  
                     itemStyle: {  
                         normal: {  
                             label: {  
                                 show: true  
                             }  
                         },  
                         emphasis: {  
                             label: {  
                                 show: true  
                             }  
                         }  
                     },  
                     data:datas
		                    
		                }  
		            ]  
		        }; 
		   
		// 使用刚指定的配置项和数据显示图表。
	        myChart.setOption(option);
	        myChart.on('click', function (params) {
				   
			    if(${map[1]=="china"}){
			    	/* console.log(params.name); */
			    	post('toMap', {name :params.name});
			    }else{
			    	post('home', {name :params.name});
			    	
			    }
			    
			});
	}); 
		        
		   
		

		
        function post(URL, PARAMS) {        
    	    var temp = document.createElement("form");        
    	    temp.action = URL;        
    	    temp.method = "post";        
    	    temp.style.display = "none";        
    	    for (var x in PARAMS) {        
    	        var opt = document.createElement("textarea");        
    	        opt.name = x;        
    	        opt.value = PARAMS[x];        
    	        // alert(opt.name)        
    	        temp.appendChild(opt);        
    	    }        
    	    document.body.appendChild(temp);        
    	    temp.submit();        
    	    return temp;        
    	}
        
	
		
	</script>
	
</body>
</html>