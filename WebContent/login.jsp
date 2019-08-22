<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign In</title>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/refresh.js"></script>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <script>
        $(function () {
            $('#' + 'fixedbutton').click(function () {
                $('html, body').animate({ scrollTop: ($($(this).attr('href')).offset().top - 50) }, 600);
            });
            //确定提交时的一些问题
            $('#form').submit(function(){
            	
                var username=$('#username');
                var password=$('#password');
                if(username.val()=="" || password.val()=="" ){
                    alert("用户名和密码不能为空");
                    return false;
                }
                return true;
            });
            
			//ajax检测头像函数
            $('#username').keyup(function(){
                var page="/M250/photo";
                var value=$(this).val();
                $.post(
                	page,	
                	{"username":value},
                	function(result){
                		if(result!="")
                			$('#photo').attr("src",result);
                		else
                			$('#photo').attr("src","images/photo.jpg");
                	}
                );
            });
            
           	
        });
    </script>

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
        .SignUpList{
            border:2px #EBEBEB solid;
            border-radius:5px;
            background-color: white;
            font-size:18px;
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
            <div class="row">
        		<div class="col-md-8 col-md-offset-2">
		            <ul class="nav navbar-nav" style="font-family:Calibri;font-size:18px">
		                <li><a href="index.jsp">Home</a></li>
		                <li class="dropdown">
		                    <a class="dropdown-toggle" data-toggle="dropdown" href="a" style="font-family:">Articles<span class="caret"></span></a>
		                    <ul id="a" class="drop dropdown-menu" style="background-color:white;padding-bottom:0;padding-top:0;border:0px">
		                        <li><a href="text_airdrop.html" style=" font-family:Calibri">Air | Drop</a></li>
		                        <li><a href="text_commonpeople.html" style="font-family:Calibri">Common People</a></li>
		                        <li><a href="text_T170.html" style="font-family:Calibri">T170 | Go Home</a></li>
		                    </ul>
		                </li>
		                <li><a href="#">Gallery</a></li>
		                <li><a href="#">About Us</a></li>
		                <li class="active"><a href="login.jsp">Sign In</a></li>        
		                <li><a href="signup.jsp">Sign Up</a></li>
		            </ul>
	            </div>
            </div>
        </div>
    </nav>
    <!--Page Content-->
    
    <div style="padding-top:100px;"class="container">
        <div class="row">
            <div class="col-md-2 col-md-offset-5">
                <img class="img-responsive" src="images/M250.png">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <p style="font-family:'Microsoft YaHei';font-size:30px;text-align:center;">Sign in to M250</p>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="SignUpList">
                    <br>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-4">
                            <img id="photo" class="img-circle img-responsive" src="images/photo.jpg">
                        </div>
                    </div>
                    <br>
                    <form id="form" action="/M250/login" method="post" class="bs-example bs-example-form" role="form">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="input-group input-group-lg">
                                    <span>Username</span>
                                    <input id="username" name="username" type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="input-group input-group-lg">
                                    <span>Password</span>
                                    <input id="password" name="password" type="password" class="form-control">   
                                </div>
                            </div>
                        </div>
                        
                        <br>
                        <div class="row">
                            <div style="font-size:14px;" class="col-md-10 col-md-offset-1">
                            	  <div class="checkbox">
								    <label>
								      <input type="checkbox" name="checkbox" id="checkbox">五天免登录
								    </label>
								    <span style="color:grey;">&nbsp;不是自己电脑请不要勾选此项</span>
								  </div>
                           	</div>
                         	
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <input id="submit" class="btn btn-success btn-lg btn-block" type="submit" name="submit" value="Sign In">
                            </div>
                        </div>
                        <br>
                        
                        <div class="row">
                            <div style="font-size:14px;" class="col-md-6 col-md-offset-3">
                                <span>还没有账号?</span><span><a href="signup.jsp">创建一个账户</a></span>
                            </div>
                        </div>
                        <br>   
                    </form>
                </div> 
            </div>
        </div>
    </div>
</body>
</html>
