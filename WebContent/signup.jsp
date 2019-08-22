<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign Up</title>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/refresh.js"></script>
    <script src="js/signup.js"></script>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        body{
            background-image:url(images/snowmountains.jpg);
            background-size: cover;
            background-repeat:no-repeat;
        }
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
        .loginlist{
            border-radius:20px;
            padding:40px;
            background-color:#000000;/* IE6和部分IE7内核的浏览器(如QQ浏览器)下颜色被覆盖 */
  			background-color:rgba(0,0,0,0.2); /* IE6和部分IE7内核的浏览器(如QQ浏览器)会读懂，但解析为透明 */
  			filter:Alpha(opacity=50);/* 只支持IE6、7、8、9 */
  			position:static; /* IE6、7、8只能设置position:static(默认属性) ，否则会导致子元素继承Alpha值 */
  			*zoom:1; /* 激活IE6、7的haslayout属性，让它读懂Alpha */
        }
        #usernameCue{
       	 	padding:5px;
        	display:none;
        	margin-top:10px;
        	border-radius:5px;
        	background-color:#FFFACD;
        	position:relative;
        	height:30px;
        	font-size:14px;
        	font-weight:bold;
        	color:green;
        }
        #pwdCue,#confirmCue{
        	padding:5px;
        	display:none;
        	margin-top:10px;
        	border-radius:5px;
        	background-color:#FFFACD;
        	position:relative;
        	height:30px;
        	font-size:14px;
        	font-weight:bold;
        	color:red;
        }
        #emailCue{
        	padding:5px;
        	display:none;
        	margin-top:10px;
        	border-radius:5px;
        	background-color:#FFFACD;
        	position:relative;
        	height:50px;
        	font-size:14px;
        	font-weight:bold;
        	color:red;
        }
        
        a{
            text-decoration: none;
        }
        a:hover{
            text-decoration: none;
        }
        a:visited{
            text-decoration: none;
        }
        a:active{
            text-decoration: none;
        }
    </style>
</head>
<body>
    <!--nav-->
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
                <li><a href="login.html">Sign In</a></li>
                <li class="active"><a href="signup.html">Sign Up</a></li>
            </ul>
        </div>
    </nav>
    <!--Page Content-->
    
    <div style="padding-top:150px;"class="container">
        <div class="row">
        	<div class="col-md-6">
		        <h1 style="font-family:'Josefin Sans';font-weight:300;font-size:80px;text-align:center">We are M250!</h1>
		        <br />
		        <br />
		        <p style="text-indent:2em;">M250是我们创办的一个摄影小组，其概念源于手动相机中常用的快门档1/250s。
		        以前的一些胶片相机需要电池来维护快门速度，而很多相机上在无电情况下的默认快门速度就是1/250s，即M250（如NIKON FE2）。
		        这个名字也代表着我们关注于摄影本身，在最简单、最初始的状态下捕捉瞬间的决心。</p>
		        <p style="text-indent:2em;"> M250创立的本意不过是几个年轻人的自嗨，我们一直做的，也不过是拍照修图和上传，
		        但我们同样希望能够得到大家的喜欢，支持。更期待你们的加入，一起探索瞬间的力量。
		        </p>
		        <br />
		        <br />
		        <p style="text-indent:2em;">更多信息，请关注我们的微信公众号：</p>
		        <div style="text-align:center;">
		            <img src="http://home.ustc.edu.cn/~tky0329/images/qrcode_for_m250.jpg" width="100px">
		        </div>
		        <p style="text-indent:2em;">联系我们：</p>
		        <br />
		        <br />
		        <p style="text-align:center;"><i class="fa fa-paper-plane"></i> M250photos@outlook.com</p>
            </div>
            <div class="col-md-5 col-md-offset-1">
            	<p style="font-family:'Microsoft YaHei';font-size:80px;text-align:center;">Sign Up</p>
                <div class="loginlist">
                    <div class="row">
                    	<div class="col-md-10 col-md-offset-1">
                       		<p style="font-family:'Josefin Sans';font-size:30px;color:white;">Welcome to join us</p>
                       </div>
                    </div>
                    <br>
                    <form id="form" action="signup" method="post" class="bs-example bs-example-form" role="form">
                        
                        <div class="row">
                        	<div class="col-md-12">
                        		<table>
                        		<tr>
                        			<td>
                        				<button type="button" class="btn btn-primary btn-lg">
                    						<span style="font-size:18px;" class="glyphicon glyphicon-user"></span>
                    					</button>
                        			</td>
                        			<td>
                        				<div class="input-group input-group-lg">
                            				<input id="username" name="username" type="text" style="width:330px;" class="form-control" placeholder="用户名">
                        				</div>
                        			</td>
                        		</tr>
                        	</table>
                        	</div>			
                        </div>
                        
                        <div class="row">
                        	<div id="usernameCue"></div>
                   	
                        </div>
                        <br>
                        <div class="row">
                        	<div class="col-md-12">
	                        	<table>
	                        		<tr>
	                        			<td>
	                        				<button type="button" class="btn btn-primary btn-lg">
	                    						<span style="font-size:18px;" class="glyphicon glyphicon-asterisk"></span>
	                    					</button>
	                        			</td>
	                        			<td>
	                        				<div class="input-group input-group-lg">
	                            				<input id="password" name="password" type="password" style="width:330px;" class="form-control" placeholder="密码">
	                        				</div>
	                        			</td>
	                        		</tr>
	                        	</table>
	                        </div>		
                        </div>
                       
                        <div class="row">
                        	<div id="pwdCue"><p>请输入6-16位的密码</p></div>
                   	
                        </div>
                        <br>
                        <div class="row">
                        	<div class="col-md-12">
	                        	<table>
	                        		<tr>
	                        			<td>
	                        				<button type="button" class="btn btn-primary btn-lg">
	                    						<span style="font-size:18px;" class="glyphicon glyphicon-asterisk"></span>
	                    					</button>
	                        			</td>
	                        			<td>
	                        				<div class="input-group input-group-lg">
	                            				<input id="confirm" name="confirm" type="password" style="width:330px;" class="form-control" placeholder="请确认您的密码">
	                        				</div>
	                        			</td>
	                        		</tr>
	                        	</table>
	                        </div>		
                        </div>
                       
                        <div class="row">
                        	<div id="confirmCue"><p>您的确认密码与注册密码不一致！</p></div>
                   	
                        </div>
                        <br>
                        <div class="row">
                        	<div class="col-md-12">
                        		<table>
                        		<tr>
                        			<td>
                        				<button type="button" class="btn btn-primary btn-lg">
                    						<span style="font-size:18px;" class="glyphicon glyphicon-envelope"></span>
                    					</button>
                        			</td>
                        			<td>
                        				<div class="input-group input-group-lg">
                            				<input id="email" name="email" type="text" style="width:330px;" class="form-control" placeholder="邮箱">
                        				</div>
                        			</td>
                        		</tr>
                        	</table>
                        	</div>			
                        </div>
                        <div class="row">
                        	<div id="emailCue">请您检查您的邮箱后缀是否正确！或请您检查邮箱名是否输入了非法字符!</div>
                   	
                        </div>
                        <br>
                        <div class="row">
                            <div style="font-size:16px;" class="col-md-6 col-md-offset-3">
                                <span style="color:white">已有账号?</span><span><a href="login.jsp">点此进行登录</a></span>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <input id="signup" class="btn btn-primary btn-lg btn-block" type="submit" name="submit" value="注 册">
                        </div>    
                    </form>
                </div> 
            </div>
        </div>
    </div>
</body>
</html>
