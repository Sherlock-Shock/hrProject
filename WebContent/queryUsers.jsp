<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="easyui/demo/demo.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
     <script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
    
</head>
<body>


<div id="tb" style="padding: 5px; height: auto">
		<div>
			学号: <input  id="snumber" class="easyui-textbox" style="width: 150px; height: 25px">
			姓名: <input id="susername" class="easyui-textbox" style="width: 150px; height: 25px">
			角色: <select id= "sstatus" class="easyui-combobox" panelHeight="auto"
				style="width: 100px; height: 25px">
				<option value=1>用户</option>
				<option value=2>管理员</option>
				<option value=3>超级管理员</option>
				<option value=4 selected>不限</option>
			</select> 
			<a href="#" class="easyui-linkbutton" iconCls="icon-search"
				style="height: 25px" onclick="doSearch()">查询</a>
				
		</div>
	</div>
	
	<table id="dg" style="width: 100%; height: 500px"></table>
    
    <div id="dlg" class="easyui-dialog" title="修改学生信息"
		style="width: 400px; height: 450px; padding: 10px"
		data-options="
				closed:true,
				iconCls: 'icon-edit',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'
			">
		<div>
			<form id="ff" class="easyui-form" method="post">
				<table cellpadding="10">
					<tr>
						<td>编号:</td>
						<td><input class="easyui-textbox" disabled="disabled"
							type="text" name="number" id="number"
							data-options="required:true"></td>

					</tr>

					<tr>
						<td>昵称:</td>
						<td><input class="easyui-textbox" type="text" name="username"
							id="username" data-options="required:true"></td>

					</tr>
					<tr>
						<td>电话</td>
						<td><input class="easyui-textbox" type="text" name="phone" disabled="disabled"
							id="phone" data-options="required:true"></td>

					</tr>
					<tr>
						<td>密码:</td>
						<td><input class="easyui-textbox" type="password"
							name="password" id="password"
							data-options="required:true,validType:'length[3,16]'"></td>
					</tr>
					<tr>
						<td>角色:</td>
						<td><select id="status" class="easyui-combobox"
							name="status" style="width: 120px;">
								<option value=1>用户</option>
								<option value=2>管理员</option>
								<option value=3>超级管理员</option>
								
						</select></td>

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

<script type="text/javascript">
    function changeP(){
        var dg = $('#tt');
        dg.datagrid('loadData',[]);
        dg.datagrid({pagePosition:$('#p-pos').val()});
        dg.datagrid('getPager').pagination({
            layout:['list','sep','first','prev','sep',$('#p-style').val(),'sep','next','last','sep','refresh','info']
        });
    }
</script>

 <script>
 		creategrid('SelectUsers');
 
        function doSearch(){
        	
        //	$.post("searchUser",json,function(data){
        //		creategrid('searchUser',number,username,status);
        //	});
        	creategrid('searchUser');
        	
        	
        }
        
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
        
        
        function creategrid(url){
	        $('#dg').datagrid({
	    		url : '${pageContext.request.contextPath}/'+url,
	    		title : '用户列表',
	    		border : false,
	    		rownumbers : true,
	    		toolbar : '#tb',
	    		pagination : true,
	    		pageSize : "5",
	    		pageList : [ 5, 10, 15, 20 ],
	    		singleSelect : true,  
	    		queryParams: {
	    			"number" : $("#snumber").val(),
	    			"username" : $("#susername").val(),
	    			"status" : $("#sstatus").val()
	    		    },
	    		columns : [ [ {
	    			field : 'id',
	    			value : 'number',
	    			checkbox : true,
	    			title : '选择',
	    			width : 50
	    		},{
	    			field : 'number',   			
	    			title : '编号',
	    			width : 50
	    		},
	    		{
	    			field : 'phone',
	    			title : '电话',
	    			width : 220
	    		}, {
	    			field : 'username',
	    			title : '姓名',
	    			width : 220
	    		}, {
	    			field : 'password',
	    			title : '密码',
	    			width : 220
	    		}, {
	    			field : 'status',
	    			title : '角色',
	    			width : 220
	    		},{
	    			field : 'createdate',
	    			title : '注册时间',    			
	    			width : 220,
	    			formatter:function(val,rec){
	                    return jsonYearMonthDay(val);
	          		}
	    		}
	    		
	    		] ]
	    	});
	        createbutton();
        }
        
        function save() {
    		//获得控件中的数据

    		var number = $("#number").val();
    		var username = $("#username").val();
    		var phone = $("#phone").val();
    		var password = $("#password").val();
    		var status = $("#status").val();
    		
    		//将得到的学生信息构建成json数据

    		var json = {
    			"number" : number,
    			"username" : username,
    			"phone" : phone,
    			"password" : password,   			
    			"status" : status
    		};
    		//完成ajax操作
    		$.post("updateUser", json, function(data) {

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

        
        function createbutton() {
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
    										+ row.username + ')吗?', function(r) {
    									if (r) {
    										//ajax：完成后天交互
    										$.get("deleteUser?number="
    												+ row.number, null, function(
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
    									$("#number")
    											.textbox('setValue', row.number);
    									$("#username").textbox('setValue',
    											row.username);
    									$("#password").textbox('setValue',
    											row.password);
    									$("#phone").textbox('setValue',
    											row.phone);
    									$("#status").combobox('setValue',
    											row.status);
    									$('#dlg').dialog('open');
    								}

    							}

    						}
    					} ]
    		});

    	}
        
      //  $(createbutton());
        
    </script>



</body>
</html>