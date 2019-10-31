<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件下载</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="easyui-panel" title="文件下载"
		style="width: 900px; height: 700px;">
	<table class="table table-hover">
	
	<c:forEach items="${fileList}" var="li">
	<tr>
	<form action="download" method="post">
		<td>
		<input type="hidden" value=${li.filepath } name="filepath">${li.filename }</input>
		<input type="hidden" value=${li.filename } name="filename"></input>
		</td>
		
		<td>
		<input type="submit" value="下载" class="btn btn-info"></input>
		</td>
	</form>
	</tr>
	
	</c:forEach>
	
	</table>	
		
		
	
</div>
</body>
<script src="bootstrap/dist/js/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
</html>