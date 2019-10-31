<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div style="margin: 20px 0;"></div>
	<div class="easyui-panel" title="添加用户"
		style="width: 700px; height: 500px;">
		<div style="padding: 40px 60px 20px 60px;">
			<form id="ff" class="easyui-form" method="post">
				<table cellpadding="10">
					<tr>
						<td>用户编号:</td>
						<td><input class="easyui-textbox" type="text" name="number" id="number"
							data-options="required:true"></td>
						<td>用户昵称:</td>
						<td><input class="easyui-textbox" type="text" name="username"
							data-options="required:true"></td>
					</tr>

					<tr>
						<td>密码:</td>
						<td><input class="easyui-textbox" type="password"
							name="password" id="password"
							data-options="required:true,validType:'length[6,16]'"></td>
						<td>确认密码:</td>
						<td><input class="easyui-textbox" type="password"
							name="password2" required="true" validType="equalTo['#password']"></td>
					</tr>
					<tr>
						<td>电话:</td>
						<td><input class="easyui-textbox" type="text" name="phone" id="phone"
							data-options="required:true"></td>
						<td>角色:</td>
						<td><select id="cc" class="easyui-combobox" name="status"
							style="width: 120px;">
								<option value="1">用户</option>
								<option value="2">管理员</option>
								<option value="3">超级管理员</option>
								
							

						</select></td>

					</tr>
					<tr>
						<td>备注:</td>
						<td><input class="easyui-textbox" type="text" name="remark"
							></td>
					
					
					</tr>
				</table>
			</form>

			<div style="text-align: left; padding: 20px; margin-top: 50px">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					onclick="submitForm()">添加</a> &nbsp;&nbsp;&nbsp; <a
					href="javascript:void(0)" class="easyui-linkbutton"
					onclick="clearForm()">重置</a>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript">

$(function(){
	$("input",$("#number").next("span")).blur(function(){
		var number = $("#number").val();
		var json = {"number":number};	
		$.post("checkNumber",json,function(data){
			if(data=="1"){
				$.messager.alert('注册失败', '该用户已注册', 'info');	
				$('#number').textbox('clear');
			}
		});
	});
});

$(function(){
	$("input",$("#phone").next("span")).blur(function(){
		var phone = $("#phone").val();
		var json = {"phone":phone};	
		$.post("checkPhone",json,function(data){
			if(data=="1"){
				$.messager.alert('注册失败', '该手机号已被使用', 'info');	
				$('#phone').textbox('clear');
			}
		});
	});
});




	//easyui使用的是ajax做表单提交
	function submitForm() {
		$('#ff').form('submit', {
			url : "register",
			onSubmit : function() {
				return $(this).form('enableValidation').form('validate');
			},
			success : function(data) {
				if (data == "1") {
					//easyui的信息提示框：1.标题，2.提示信息，3.图标
					$.messager.alert('注册成功', '恭喜你,注册成功', 'info');	
					clearForm();
				}else{
					$.messager.alert('注册失败', '对不起,注册失败了', 'error');
				}
			}

		});
	}
	//置空的方法
	function clearForm() {
		$('#ff').form('clear');
	}
	//完成两个密码效验
	$.extend($.fn.validatebox.defaults.rules, {
		/*必须和某个字段相等*/
		equalTo : {
			validator : function(value, param) {
				return $(param[0]).val() == value;
			},
			message : '两次密码不一致'
		}
	});
</script>
</html>