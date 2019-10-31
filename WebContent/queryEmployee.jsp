<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户查询</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div id="tb" style="padding: 5px; height: auto">
		<div>
			姓名: <input class="easyui-textbox" style="width: 170px; height: 25px">
			卡号: <input class="easyui-textbox" style="width: 170px; height: 25px">
			
				
			</select> <a href="#" class="easyui-linkbutton" iconCls="icon-search"
				style="height: 25px">查询</a>
		</div>
	</div>
	<table id="dg" style="width: 100%; height: 500px"></table>

	<div id="dlg" class="easyui-dialog" title="修改员工信息"
		style="width: 400px; height: 450px; padding: 10px"
		data-options="
				closed:true,
				iconCls: 'icon-edit',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'
			">
		<div>
			<form id="ff" class="easyui-form" method="post">
				<table cellpadding="3">
					<tr>
						<td>编号:</td>
						<td><input class="easyui-textbox" disabled="disabled"
							type="text" name="id" id="id"
							></td>

					</tr>

					<tr>
						<td>部门编号:</td>
						<td><input class="easyui-textbox" type="text" name="deptId"
							id="deptId" ></td>

					</tr>

					<tr>
						<td>职位编号:</td>
						<td><input class="easyui-textbox" type="text"
							name="jobId" id="jobId"
							></td>
					</tr>
					<tr>
						<td>姓名:</td>
						<td><input class="easyui-textbox" type="text" name="name"
							id="name" ></td>

					</tr>
					<tr>
						<td>卡号:</td>
						<td><input class="easyui-textbox" type="text" name="cardId"
							id="cardId" ></td>

					</tr>
					<tr>
						<td>地址:</td>
						<td><input class="easyui-textbox" type="text" name="address"
							id="address" ></td>

					</tr>
					<tr>
						<td>邮政编码:</td>
						<td><input class="easyui-textbox" type="text" name="postCode"
							id="postCode" ></td>

					</tr>
					<tr>
						<td>固话:</td>
						<td><input class="easyui-textbox" type="text" name="tel"
							id="tel" ></td>

					</tr>
					<tr>
						<td>电话:</td>
						<td><input class="easyui-textbox" type="text" name="phone"
							id="phone" ></td>

					</tr>
					<tr>
						<td>QQ:</td>
						<td><input class="easyui-textbox" type="text" name="qqNum"
							id="qqNum" ></td>

					</tr>
					<tr>
						<td>email:</td>
						<td><input class="easyui-textbox" type="text" name="email"
							id="email" ></td>

					</tr>
					<tr>
						<td>性别:</td>
						<td><input class="easyui-textbox" type="text" name="sex"
							id="sex" ></td>

					</tr>
					<tr>
						<td>团体:</td>
						<td><input class="easyui-textbox" type="text" name="party"
							id="party" ></td>

					</tr>
					<tr>
						<td>生日:</td>
						<td><input id="birthday"  name="birthday"  class="easyui-datebox"  labelPosition="top" style="width:100%;">
						
						</input></td>

					</tr>
					<tr>
						<td>民族:</td>
						<td><input class="easyui-textbox" type="text" name="race"
							id="race" ></td>

					</tr>
					<tr>
						<td>教育:</td>
						<td><input class="easyui-textbox" type="text" name="education"
							id="education" ></td>

					</tr>
					
					<tr>
						<td>专业:</td>
						<td><input class="easyui-textbox" type="text" name="speciality"
							id="speciality" ></td>

					</tr>
					<tr>
						<td>爱好:</td>
						<td><input class="easyui-textbox" type="text" name="hobby"
							id="hobby" ></td>

					</tr>
					<tr>
						<td>备注:</td>
						<td><input class="easyui-textbox" type="text" name="remark"
							id="remark" ></td>

					</tr>
					
				</table>
			</form>
		</div>
	</div>

	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			onclick="save()">保存</a> <a href="javascript:void(0)"
			class="easyui-linkbutton"
			onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>

</body>
<script type="text/javascript">

	/*
	$.post("queryDeptNameById",{id:val},function(data){
		alert(data);
		return data;
	});
	*/
	
	
	
var deptNames1=$.ajax({
         type:'post',
         url:'queryDeptName',
         //dataType:"json",
         async: false,
         data:{},
         success:function(data){
        	 //alert(data);
        	 //return data;
         }
     });
var text = deptNames1.responseText;
var deptNames = JSON.parse(text);	
//alert(deptNames);


var jobNames1=$.ajax({
    type:'post',
    url:'queryJobName',
    //dataType:"json",
    async: false,
    data:{},
    success:function(data){
   	 //alert(data);
   	 //return data;
    }
});
var text1 = jobNames1.responseText;
var jobNames = JSON.parse(text1);	
//alert(jobNames);

	//将时间戳转为时间日期
	function jsonYearMonthDay(milliseconds) {
	    var datetime = new Date();
	    datetime.setTime(milliseconds);
	    var year = datetime.getFullYear();
	    var month = datetime.getMonth() + 1 < 10 ? "0"
	            + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
	    var date = datetime.getDate() < 10 ? "0" + datetime.getDate()
	            : datetime.getDate();
	    return year + "年" + month + "月" + date+"日";
	 
	}
	
	

	function save() {
		//获得控件中的数据
		var row=$('#dg').datagrid('getSelected')
		
        var name=$("#name").val();
		var id = $("#id").val();
		var deptId = $("#deptId").val();
		var jobId = $("#jobId").val();
		var cardId = $("#cardId").val();
		var email = $("#email").val();
		var address = $("#address").val();
		var postCode = $("#postCode").val();
		var tel = $("#tel").val();
		var phone = $("#phone").val();
		var qqNum = $("#qqNum").val();
		var education = $("#education").val();
		//var createDate= $("createDate").val();
		var sex = $("#sex").val();
		var party = $("#party").val();
		var birthday = $("#birthday").val();
		var speciality = $("#speciality").val();
		var race = $("#race").val();
		var hobby = $("#hobby").val();
		var remark = $("#remark").val();
		
		//将得到的学生信息构建成json数据

		var json = {
			"name":name,
			"id" : id,
			//"createDate":createDate,
			"remark" : remark,
			"hobby" : hobby,
			"race" : race,
			"email" : email,
			"speciality" : speciality,
			"birthday" : birthday,
			"education" : education,
			"sex" : sex,
			"qqNum" : qqNum,
			"phone" : phone,
			"tel" : tel,
			"party" : party,
			"postCode" : postCode,
			"cardId" : cardId,
			"address" : address,
			"jobId" : jobId,
			"deptId" : deptId,
			
		};
		//完成ajax操作
		$.post("updateEmp", json, function(data) {

			var info = "对不起，修改失败！";
			var pic = "error"
			if (data == "1") {
				info = "恭喜，修改成功！！";
				pic = "info"
			}
			$.messager.alert('结果', info, pic, function() {

				window.location.reload();
			});

		});

	}

	$('#dg').datagrid({
		url : '${pageContext.request.contextPath}/SelectEmp',
		title : '员工列表',
		border : false,
		rownumbers : true,
		toolbar : '#tb',
		pagination : true,
		pageSize : "5",
		pageList : [ 5, 10, 15, 20 ],
		singleSelect : true,
		columns : [ [ {
			field : 'id',
			value : 'id',
			checkbox : true,
			title : '选择',
			width : 50
		}, {
			field : 'deptId',
			title : '部门编号',
			width : 170,
			formatter:function(val){
				for (var i in deptNames) {
                    if (deptNames[i].id == val) {
                        return deptNames[i].name;
                    }
                }
				/*var deptName="";
				$.ajax({
			         type:'post',
			         url:'queryDeptNameById',
			         //dataType:"json",
			         async: false,
			         data:{id:val},
			         success:function(data){
			        	 //alert(data);
			        	 deptName= data;
			         }
			     });*/
               return deptName;
                 
			}
		}, {
			field : 'jobId',
			title : '职位编号',
			width : 170,
			formatter:function(val){
				for (var i in jobNames) {
                    if (jobNames[i].id == val) {
                        return jobNames[i].name;
                    }
                }
				
               return jobName;
                 
			}
		}, {
			field : 'name',
			title : '姓名',
			width : 170
		}, {
			field : 'cardId',
			title : '卡号',
			width : 170
		}, {
			field : 'address',
			title : '地址',
			width : 170
		} , {
			field : 'postCode',
			title : '邮政编码',
			width : 170
		}, {
			field : 'tel',
			title : '固话',
			width : 170
		}, {
			field : 'phone',
			title : '电话',
			width : 170
		}, {
			field : 'qqNum',
			title : 'QQ',
			width : 170
		}, {
			field : 'email',
			title : 'Email',
			width : 170
		}, {
			field : 'sex',
			title : '性别',
			width : 170
		}, {
			field : 'party',
			title : '群体',
			width : 170
		}, {
			field : 'birthday',
			title : '生日',
			width : 170
		}, {
			field : 'race',
			title : '民族',
			width : 170
		}, {
			field : 'education',
			title : '教育',
			width : 170
		}, {
			field : 'speciality',
			title : '时间',
			width : 170
		}, {
			field : 'hobby',
			title : '爱好',
			width : 170
		}, {
			field : 'remark',
			title : '备注',
			width : 170
		}, {
			field : 'createDate',
			title : '注册时间',
			width : 170
			
		}
		] ]
	});

	$(function() {
		var pager = $('#dg').datagrid().datagrid('getPager'); // get the pager of datagrid

		pager.pagination({
			buttons : [
					{
						iconCls : 'icon-no',
						text : '删除',
						handler : function() {
							var row = $('#dg').datagrid('getSelected');
							if (row != null) {
								$.messager.confirm('确认是否要删除', '确定要删除('
										+ row.name + ')吗?', function(r) {
									if (r) {
										//ajax：完成后天交互
										$.get("deleteEmp?id="
												+ row.id, null, function(
												data) {

											$.messager.alert('结果', data,
													'info', function() {
														window.location
																.reload();
													});

										});
									}
								});
							}
						}
					},
					{

						iconCls : 'icon-edit',
						text : '修改',
						handler : function() {
							var row = $('#dg').datagrid('getSelected');
							if (row != null) {
								$('#dlg').dialog('open');
								var row = $('#dg').datagrid('getSelected');
								if (row != null) {

									//读取方式,根据row的字段row.xxx
									$("#id").textbox('setValue', 
											row.id);
									$("#name").textbox('setValue',
											row.name);
									$("#deptId").textbox('setValue',
											row.deptId);
									$("#jobId").textbox('setValue',
											row.jobId);
									$("#cardId").textbox('setValue',
											row.cardId);
									$("#address").textbox('setValue',
											row.address);
									$("#postCode").textbox('setValue',
											row.postCode);
									$("#tel").textbox('setValue',
											row.tel);
									$("#phone").textbox('setValue',
											row.phone);
									$("#qqNum").textbox('setValue',
											row.qqNum);
									$("#email").textbox('setValue',
											row.email);
									$("#sex").textbox('setValue',
											row.sex);
									$("#party").textbox('setValue',
											row.party);
									$("#birthday").textbox('setValue',
											row.birthday);
									$("#race").textbox('setValue',
											row.race);
									$("#education").textbox('setValue',
											row.education);
									$("#createDate").textbox('createDate',
											row.education);
									$("#speciality").textbox('setValue',
											row.speciality);
									$("#hobby").textbox('setValue',
											row.hobby);
									$("#remark").textbox('setValue',
											row.remark);
									$('#dlg').dialog('open');
								}

							}

						}
					} ]
		});

	})
</script>

</html>