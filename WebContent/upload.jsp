<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<div class="easyui-panel" title="多文件上传"
		style="width: 700px; height: 500px;">

	<form action="upload"
		method="post" enctype="multipart/form-data" id="form1">
		
		上传人：<input type="text" name="name" value="${sessionScope.user[0].username}"></input>
		<br>
		
		<input type="button" value="添加" onclick="run()">&nbsp;<input
			type="submit" id="btn-submit" value="上传" />

		<div id="divId"></div>

	</form>
	
</div>
</body>
<script type="text/javascript">


$(function () {
	var upinfo = ${uploadinfo};
	if(upinfo=='0'){
		$.messager.alert('上传失败', '上传失败', 'error');
	}else if(upinfo=='1'){
		$.messager.alert('上传成功', '上传成功', 'info');
	}else{
		//$.messager.alert('上传失败', '系统出错', 'info');
	}
	
	
});
</script>

<script type="text/javascript">


	// 向div中间添加文本框
	function run() {
		var div = document.getElementById("divId");
		div.innerHTML += "<br><div><input type='file' name='file'><input type='button' value='删除' onclick='del(this)'/></div>";
	}

	// 删除某一行
	function del(who) {
		// 获取删除的按钮的父节点
		var divv = who.parentNode;
		divv.parentNode.removeChild(divv); // 最外围的div
	}

</script>

</html>