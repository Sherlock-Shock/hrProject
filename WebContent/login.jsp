<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人事登录-登录</title>
<style type="text/css"></style>
<!-- CSS:写前端，如果不是专业的，那就用框架，我们这个项目用了：easyUI框架，其他框架还有：bootstrap -->
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" href="login_style/css/supersized.css">
<link rel="stylesheet" href="login_style/css/login.css">
</head>
<body>

	<div id="div_login">
		<p>人事管理Hrm系统</p>
		<div id="div_form">
			<img src="login_style/img/logo2.jpg" alt="找不到图片">
			<form >
				<table>
					<tr>
						<td class="td1"><img src="login_style/img/memeber.gif" alt=""
							style="width: 16px; text-align: right"></td>
						<td><input type="text" name="number" id="number"></td>
					</tr>
					<tr>
						<td class="td1"><img src="login_style/img/lock.gif" alt=""
							style="width: 16px;"></td>
						<td><input type="password" name="password" id="password"></td>
					</tr>
					<tr style="background-color: inherit">

						<td colspan="2">
							<div>
								<input id="input_submit" type="button"  value="登录" onclick="requestJson()">
							</div>
						</td>

					</tr>

				</table>
			</form>
		</div>
	</div>
	<!-- Javascript -->
	<script src="login_style/js/supersized.3.2.7.min.js"></script>
	<script src="login_style/js/supersized-init.js"></script>

</body>
<!-- js：javascript代码 -->
<script type="text/javascript">

function requestJson(){
        var number =$("#number").val();//#是id选择器
        var pwd =$("#password").val();
           
            $.ajax({
                type:'post',
                url:'login',
                dataType:"json",
                async: true,
                data:{
                	number:number,
                	password:pwd
                	},
                success:function(data){
                   if(data==0){
                       alert("没有这个用户或密码错误");
                   }
                   else{
                	 
                     window.location.href="http://localhost:8080/hrProject/index.jsp"; 
                      
                   }
                }
            });
          
            
           
            
            
            
       }
  
</script>
</html>