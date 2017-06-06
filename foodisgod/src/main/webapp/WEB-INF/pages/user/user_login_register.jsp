<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎来到食为天</title>
    
    <link rel="stylesheet" href="${ctx}/staticfile/components/bootstrap3/css/bootstrap.min.css">
     <style>
        *{
            margin:0px;
            padding: 0px;}
        .video_class{position: relative;width: 100%;height: 100%; }
        video{width: 100%;height: 100%;object-fit: cover;object-position: 100% 100%;display: inline-block }
        .bg_class{background: rgba(0,0,0,.6);width:100%;height: 100vh;position: absolute;top: 0px;left: 0px}
        
          .text_class{  position:absolute;
            top: 50%;
            left: 50%;
             -webkit-transform: translateX(-50%) translateY(-50%);
            -webkit-transform: translateX(-50%) translateY(-50%);
            -moz-transform: translateX(-50%) translateY(-50%);
            -ms-transform: translateX(-50%) translateY(-50%); 
            transform: translateX(-50%) translateY(-50%);text-align: center}  
            
            .logreg{  position:absolute;
            top: 70%;
            left: auto;
            right: auto
            }
            
            
        .btn_class{background-color: #43bc71;border:1px solid #2b9152;transition: background-color .5s ease ;cursor: pointer;display: inline-block;
            width: 150px; padding:20px;text-align: center; font-size: 24px;color: #fff;border-radius: 5px;}
        .btn_class:hover{background-color: #2b9152}
        .text_class h1{font-size: 60px; color: #fff;}
        .text_class p{font-size: 30px; color: #fff;
            padding:20px 0px;}
        .videos_res{overflow: hidden;height: 100vh;margin: 0 auto}
        </style>
        <!--图片的css
        .img_list li{cursor: pointer;position: relative;list-style: none;margin: 0;}
        .img_list  li img{width:100%;}
        .img_list .more_div a{display: inline-block;font-size:12px;border: 1px solid #fff;position: absolute;top: 50%;left: 50%;margin-left: -60px;margin-top: -20px;
            width: 120px;text-align: center;opacity: 0;background: #fff;color: #000;height:40px;line-height: 40px;text-decoration: none;}
        .img_list .more_div{position:absolute;width: 100%;height: 100%;left:0;top:0;opacity: 0;padding: 20px;
            border:10px solid #fff;}
        .img_list li:hover .more_div{background-color:rgba(0,0,0,.7);transition: opacity .5s 0s ease-in-out;opacity: 1;border: 3px solid red; border:17px solid #fff}
        .img_list li:hover .more_div a{transition: opacity .5s 0s ease-in-out;opacity: 1 }
       .img_list .box_show{width: 100%;height: 100%;  padding:20px;}
        .del_class{padding: 0px}

    </style> -->
    
    <script type="text/javascript">
    	
    </script>
    <link href="${ctx}/staticfile/components/bootstrap3/css/bootstrap.css" rel="stylesheet" />
 
	<link href="${ctx}/staticfile/css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
	
	<script src="${ctx}/staticfile/components/jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="${ctx}/staticfile/components/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="${ctx}/staticfile/js/fooduser-login-register.js" type="text/javascript"></script>
    
    
</head>
<body>
                    
    <div class="contact">
            <div class="video_class">
                <div class="videos_res">
                <video preload="metadata" autoplay loop >
                    <source src="${ctx}/video/back_video.mp4" type="video/mp4">
                </video>
                </div>
             	<div class="bg_class"></div>
                <div class="text_class">
              
                    <h1>食色天下</h1>
                    <p>轻轻点一点，美食即到眼前</p>
                  <!--  btn big-register <p></p> -->
                    <%-- <a href="${ctx}/pages/foodList.html" class="btn_class">start now</a> --%>
                    
                    	<p style="color:red;">${msg }</p>
                 <a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">登录</a>
                 <a class="btn big-register" data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">注册</a>
            <div class="col-sm-4"></div>
            
            
                </div>
                   <div class="logreg">
                 		<%@ include file="./user_log_reg.jsp" %>
                   </div>
                    
            </div>

    </div>

<%--     <div class="container_fluid" style="padding:50px 0px ;">
        <div class="col-lg-10 col-lg-offset-1 col-md-12">
            <ul class="img_list">
                <li class="col-md-4 col-sm-6 col-xs-12 del_class">
                    <div class="box_show">
                          <img src="${ctx}/img/a.jpg" class="img-responsive">
                           <div class="more_div">
                               <a>more</a>
                           </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

 --%>

</body>
</html>
</html>