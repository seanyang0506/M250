<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>个人中心</title>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/refresh.js"></script>
    <script src="js/signup.js"></script>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<style>
		.navbar-nav {
            text-align: center;
            float: none;
        }

            .navbar-nav li {
                display: inline-block;
                float: none;
            }

        .drop li {
            display: block;
        }

            .drop li.act {
                display: block;
                background: #383535;
            }

            .drop li a:hover {
                display: block;
                background: #383535;
            }

        #fixed-menu {
            position: fixed;
            left: 10%;
            top: 10%;
        }

        .fixed-menu li a {
            color: white;
        }

        #fixedbutton {
            position: fixed;
            right: 5%;
            bottom: 5%;
        }

        #fixedcard {
            position: fixed;
            right: 10%;
            top: 20%;
        }

        hr {
            height: 1px;
            background-color: #808080;
        }
        .photo{
        	width:300px;
        	height:300px;
        	border:1px black solid;
        }
	</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <ul class="nav navbar-nav" style="font-family:Calibri">
                <li><a href="index.html">Home</a></li>
                <li class="dropdown" >
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#a" style="font-family:">
                        Articles
                        <span class="caret"></span>
                    </a>
                    <ul class="drop dropdown-menu" style="background-color:black;padding-bottom:0;padding-top:0">
                        <li><a href="http://home.ustc.edu.cn/~tky0329/text/Airdrop" style=" font-family:Calibri;color:white;">Air | Drop</a></li>
                        <li><a href="http://home.ustc.edu.cn/~tky0329/text/CommonPeople" style="font-family:Calibri;color:white;">Common People</a></li>
                        <li class="act"><a href="http://home.ustc.edu.cn/~tky0329/text/T170" style="font-family:Calibri;color:white">T170 | Go Home</a></li>
                    </ul>
                </li>
                <li><a href="#">Gallery</a></li>
                <li><a href="#">About Us</a></li>
                <li class="active"><a href="SignIn.html">Sign In</a></li>
                <li><a href="SignUp.html">Sign Up</a></li>
            </ul>
        </div>
    </nav>
    <div style="padding-top:100px;"class="container">
    	<div class="row">
	    	<div class="col-md-3">
	    		
	    	</div>
	    	<div class="col-md-9">
	    		<h1>个人中心</h1>
	    		<hr>
	    		<div class="row">
	    			<div class="col-md-7">
	    				<form action="infomodify" method="post">
	    					<p>用户名：</p>
	    					<input type="text" name="username" id="username">
	    					<p>email:</p>
	    					<input type="text" name="email" id="email">
	    					
	    				</form>
	    			</div>
	    			<div class="col-md-5">
	    				<span>头像</span>
	    				<div class="photo">
	    					
	    				</div>
	    			</div>
	    		</div>
	    	</div>
    	</div>
    </div>
</body>
</html>