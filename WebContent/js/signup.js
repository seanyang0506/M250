        $(function () {
            $('#' + 'fixedbutton').click(function () {
                $('html, body').animate({ scrollTop: ($($(this).attr('href')).offset().top - 50) }, 600);
            });
            //用户名和密码不能为空
            $('#form').submit(function(){
                var username=$('#username');
                var password=$('#password');
                var confirm=$('#confirm');
                var email=$('#email');
                if(username.val()=="" || password.val()=="" || confirm.val()=="" || email.val()==""){
                    alert("抱歉！请您完善您的信息！");
                    return false;
                }
                return true;
            });
            
            /*
            	当用户输入用户名时进行ajax访问，检测用户名是否重复，如果重复则不予提交
            */
            $('#username').keyup(function(){
                var page="/M250/username";
                var value=$(this).val();
                if(value.length >= 1){
                	$.post(
                       	page,	
                       	{"username":value},
                       	function(result){
                       		var answer = $.parseJSON(result);//解析sevlet发送过来的json，内含有正确或错误状态status及信息提示info
                       		var fail = /fail/;
                       		$('#usernameCue').text(answer.info);
                   			$('#usernameCue').slideDown(500);
                       		if(fail.test(answer.status)){
                       			$("#usernameCue").css("color","red");
                       			$('#form').submit(false);//如果用户名已被注册，则不予提交
                       		}else{
                            $("#usernameCue").css("color","green");
                       			$('#form').submit(true);
                          }
                       	}
                    );
                }else
                	$('#usernameCue').slideUp(500);
            });
            
            /*
            	失去焦点ajax检测是用于检测是否应该拉起提示框，
            	如果用户提供的用户名是重复的，则应该不予提交并且下拉框给予提示，并直到其进行修改
            */
            
 			$('#username').blur(function(){
 				var page ="/M250/username";
 				var value = $(this).val();
        if(value.length >= 1){
   				$.post(
  						page,	
                        	{"username":value},
                        	function(result){
                        		var answer = $.parseJSON(result);
                        		var fail = /fail/;
                        		$('#usernameCue').text(answer.info);
                    			$('#usernameCue').slideDown(500);
                        		if(fail.test(answer.status)){
                        			$('#form').submit(false);//如果用户名已被注册，则不予提交
                        		}else{
                        			$('#form').submit(true);
                                  $('#usernameCue').slideUp(500);
                                  //只有成功使用用户名的用户才可以拉上提示框，否则则一直给予提示直到用户是用了不重复的用户名
                        		}
                        	}
   				);
 				}
 			});
            $('#password').keyup(function(){
            	var value = $(this).val();
            	if(value.length >= 6 && value.length <= 16){
            		$('#form').submit(true);
            		$('#pwdCue').slideUp(500);
            	}
            	else{
            		$('#pwdCue').slideDown(500);
            		$('#form').submit(false);
            	}      		
            });
            //如果密码在6-16位之间，就收起密码提示框
            //如果密码输入位数不正确，则不予提交
            
            $('#email').keyup(function(){
            	var str =/[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[edu.]?[com|cn|net]/;
              var value = $(this).val();
              if(value.length >= 1){
                if(str.test(value)){
                  $('#emailCue').slideUp(500);
                  $('#form').submit(true);
                } 
                else{
                  $('#emailCue').slideDown(500);
                  $('#form').submit(false);
                }
              }
		
            });
			
            $('#email').blur(function(){
            	var str =/[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[edu.]?[com|cn|net]/; 
              var value = $(this).val();
              if(value.length >= 1){
                if(str.test(value)){
                  $('#emailCue').slideUp(500);
                } 
                else{
                  $('#emailCue').slideDown(500);
                  $('#form').submit(false);
                }
              }
            	
            });

            $('#confirm').keyup(function(){
                var confirmPwd = $(this).val();
                var pwd = $('#password').val();
                if(confirmPwd.length >=1 ){
                    if(confirmPwd==pwd)
                      $('#confirmCue').slideUp(500);
                    else{
                      $('#confirmCue').slideDown(500);
                      $('#form').submit(false);
                    }
                }
            });

            $('#confirm').blur(function(){
                var confirmPwd = $(this).val();
                var pwd = $('#password').val();
                if(confirmPwd.length >=1 ){
                    if(confirmPwd.test(pwd))
                      $('#confirmCue').slideUp(500);
                    else{
                      $('#confirmCue').slideDown(500);
                      $('#form').submit(false);
                    }
                }
            });
        });