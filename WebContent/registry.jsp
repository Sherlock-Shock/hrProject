<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
</head>
<body>
<form action="registry" method ="post">
学号：<input type ="text" name="number"   />
<br>
电话：<input type ="text" name="phone" id="phone" />

<br>
密码：<input type ="password" name="password" />

<input type="submit" value="注册"/>

<input type ="button" value="清空" onclick="clear1"></input>

</form>
<script type="text/javascript">
function clear1(){
	$("#phone").val("");
}

</script>

</body>
</html>