<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<!--/XJXYProject得到当前应用的名称  -->
	<form  method="post" id="ff">
		<table cellpadding="7">
			<tr>
				<td>公告名称:</td>
				<td><input class="easyui-textbox" type="text" name="name"
					data-options="required:true" style="width: 300px; height: 20px"></td>
			</tr>
			<tr>
				<td>公告主题:</td>
				<td><input class="easyui-textbox" type="text" name="title"
					style="width: 300px; height: 20px" data-options="required:true"></td>
			</tr>
		</table>
		<textarea id="container" name="content"
			style="width: 100%; height: 400px;"> 
			</textarea>
			
			<br>
			<input type="button" value="保存" onclick="submitForm()">       
	</form>
</body>

<script type="text/javascript">
	var ue = UE.getEditor("container");

	setTimeout(function() {
		editor.execCommand('drafts')
	}, 2000);//自动保存
	
	
	function submitForm() {
		$('#ff').form('submit', {
			url : "addNotice",
			onSubmit : function() {
				return $(this).form('enableValidation').form('validate');
			},
			success : function(data) {
				
				if (data == "1") {
					//easyui的信息提示框：1.标题，2.提示信息，3.图标
					$.messager.alert('添加成功', '添加公告成功', 'info');	
					
				}else{
					$.messager.alert('添加失败', '对不起,添加公告失败了', 'error');
				}
			}

		});
	}
	
</script>


</html>