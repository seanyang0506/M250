<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>M250</title>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/refresh.js"></script>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <script>
        $(function () {
            $('#'+ 'target' ).click(function () {
                $('html, body').animate({ scrollTop: ($($(this).attr('href')).offset().top - 0) }, 600);
            });
                           
        });
    </script>

<style>
    .body {
        padding-top: 50px;
    }

    .header{
        margin:auto;
        width:500px;
        height: 100px;
        text-align: center;
        line-height: 100px;
    }

    .header h1{
        float: right;
        width: 55%;
        height: 110px;
        text-align: left;
        padding-top: 8px;
    }

    .header img {
        float: left;
        width: 45%;
        text-align: center;
        padding-top: 10px;
    }

    .navbar-nav{
        text-align:center;
        float:none;
        font-family:Calibri;
        font-size:18px;
    }
    .navbar-nav li{
        display:inline-block;
        float:none;
    }
    .navbar-nav li.act{
        display: inline-block;
        float: none;
    }
    .drop li {
        display: block;
    }

    .drop li.act {
            display: block;
            background: #808080;
        }
    .drop li a:hover {
        display: block;
        background: #9c9b9b;
        color:white;
    }
    .headphoto{
    	width:40px;
    	height:40px;
    }
	.drop-list{
		background-color:white;
		padding-bottom:0;
		padding-top:0;
		border:0px;
		text-align:center;
	}
	.hi-info{
		color:black;
		font-size:20px;
		font-family:Calibri;
		font-weight:bold;
	}
</style>

</head>
<body class="body" style="data-spy:srcoll">
    <!--nav-->
    <nav style="z-index:1;" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
        	<div  class="row">
        		<div class="col-md-4 col-md-offset-4">
	        		<ul class="nav navbar-nav">
		                <li class="active"><a href="index.jsp">Home</a></li>
		                <li class="dropdown">
		                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="font-family:">Articles<span class="caret"></span></a>
		                    <ul id="a" class="drop-list drop dropdown-menu">
		                        <li><a href="text_airdrop.html" style=" font-family:Calibri">Air | Drop</a></li>
		                        <li><a href="text_commonpeople.html" style="font-family:Calibri">Common People</a></li>
		                        <li><a href="text_T170.html" style="font-family:Calibri">T170 | Go Home</a></li>
		                    </ul>
		                </li>
		                <li><a href="#">Gallery</a></li>
		                <li><a href="#">About Us</a></li>  
		           </ul>
	           </div>
	           <div class="col-md-2">
		           <ul class="nav navbar-nav">     
		            	<c:choose>
		                	<c:when test="${empty user_info}">
	                			<li><a href="login.jsp">Sign in</a></li>
		                		<li><a href="SignUp.html">Sign up</a></li>      	
		                	</c:when>
		                	<c:otherwise>
	               				<li class="dropdown">
	               					<a style="padding-top:5px;" class="dropdown-toggle" data-toggle="dropdown" href="#">
	               						<img id="headphoto" class="img-circle headphoto" src="${photo_src }">
	               						&nbsp;
	               						<span>${user_info.username }</span>
	               					</a>
	               						<ul id="a" class="drop-list drop dropdown-menu ">
	               							<li class="hi-info dropdown-header">Hi,${user_info.username }</li>
	               							<li class="divider"></li>
					                        <li><a href="personalcenter.html">个人中心</a></li>
					                        <li><a href="articleview.html">你的文章</a></li>
			                    		</ul>
	               					
	               				</li>
		                	</c:otherwise>
		                </c:choose>	
		            </ul>
	            </div>
            </div>
        </div>
    </nav>
    <!--head-->

    <div class="header">
            <h1 style="font-family:'Agency FB';font-size:110px"><span> </span><span style="font-family:Calibri;font-size:100px;font-weight:500">M</span>250</h1>
        <img src="http://home.ustc.edu.cn/~tky0329/images/M250.png" alt="icon" />
    </div>

    <div class="text-left">
        <p style="color:dimgrey; font-family:'Yu Gothic UI'; font-size:20px"><i class="fa fa-camera"></i> Focus on the moment.</p>
    </div>
    
    <div style="padding-top:300px"></div>
    <div class="text-center">
        <a id="target" href="#pic" style="color:gray;font-size:xx-large"><i class="fa fa-chevron-down"></i></a>
    </div>
    <div style="padding-top:100px"></div>

    <!--picture slide-->
    <div id="my-carousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#my-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#my-carousel" data-slide-to="1"></li>
            <li data-target="#my-carousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <a href="http://home.ustc.edu.cn/~tky0329/text_airdrop"><img alt=" slide" src="http://home.ustc.edu.cn/~tky0329/images/windows.jpg"></a>
                <div id="pic" class="carousel-caption">
                    <h3 style="font-family:'Josefin Sans';font-weight:300;font-size:40px">Air | Drop</h3>
                    <a href="http://home.ustc.edu.cn/~tky0329/text_airdrop"><p style="font-family:'Microsoft YaHei UI';font-size:15px;color:white">阅读原文</p></a>
                </div>
            </div>
            <div class="item">
                <a href="http://home.ustc.edu.cn/~tky0329/text_commonpeople"><img alt="Second slide" src="http://home.ustc.edu.cn/~tky0329/images/beauties.jpg"></a>
                <div class="carousel-caption">
                    <h3 style="font-family:'Josefin Sans';font-weight:300;font-size:40px">Common People</h3>
                    <a href="http://home.ustc.edu.cn/~tky0329/text_commonpeople"><p style="font-family:'Microsoft YaHei UI';font-size:15px;color:white">阅读原文</p></a>
                </div>
            </div>
            <div class="item">
                <a href="http://home.ustc.edu.cn/~tky0329/text_commonpeople"><img alt="Third slide" src="http://home.ustc.edu.cn/~tky0329/images/11.jpg" width="100%"></a>
                <div class="carousel-caption">
                    <h3 style="font-family:'Microsoft YaHei';font-weight:300;font-size:35px"><span style="font-family:'Josefin Sans';font-size:40px">T170</span>次 | 回家的这<span style="font-family:'Josefin Sans';font-size:40px">20</span>个小时</h3>
                    <a href="http://home.ustc.edu.cn/~tky0329/text/T170"><p style="font-size:15px;font-family:'Microsoft YaHei UI';color:white">阅读原文</p></a>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#my-carousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#my-carousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</body>
</html>
