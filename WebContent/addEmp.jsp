<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<title>添加用户</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>

	<script type="text/javascript" src="//api.map.baidu.com/api?v=3.0&ak=71M8g9wEolFq5c01xwDWzvPkWUCwuNFO"></script>




</head>
<body>
	<div style="margin: 20px 0;"></div>
	<div class="easyui-panel" title="添加用户"
		style="width: 900px; height: 700px;">
		<div style="padding: 40px 60px 20px 60px;">
			<form id="ff" class="easyui-form" method="post">
				<table cellpadding="10">
					<tr>
						<td>部门号:</td>
						<td>	
							
							<select class="easyui-combobox" name="deptId" style="width:160px;" id="deptId" 
   								 data-options="valueField:'id', textField:'name',url:'queryDeptName', panelHeight:'auto'">
							</select>

						</td>
						<td>职位编号:</td>
						<td>
						<select class="easyui-combobox" name="jobId" style="width:160px;" id="jobId" 
   								 data-options="valueField:'id', textField:'name',url:'queryJobName', panelHeight:'auto'">
						</select>
						
						</td>
					</tr>

					<tr>
						<td>姓名:</td>
						<td><input class="easyui-textbox" type="text"
							name="name" "
							></td>
						<td>卡号</td>
						<td><input class="easyui-textbox" type="text"
							name="cardId" " ></td>
					</tr>
					<tr>
						<td>地址:</td>
						<td>
						
            			<input id="suggestId" name="address" type="text" class=""  >
  				
						</td>
						<td>邮政编码:</td>
						<td><input class="easyui-textbox" type="text" name="postCode"
							></td>
					</tr>
					
					<tr>
						<td>固话:</td>
						<td><input class="easyui-textbox" type="text" name="tel"
							></td>
						<td>电话:</td>
						<td><input class="easyui-textbox" type="text" name="phone"
							></td>
					</tr>
					<tr>
						<td>qq:</td>
						<td><input class="easyui-textbox" type="text" name="qqNum"
							></td>
						<td>性别:</td>
						<td>
						<select id="sex" class="easyui-combobox" name="sex"
							style="width: 120px;">
								<option value="1">男</option>
								<option value="0">女</option>
								
						</select>
						</td>
					</tr>
					<tr>
						<td>群体:</td>
						<td><input class="easyui-textbox" type="text" name="party"
							></td>
						<td>民族:</td>
						<td><input class="easyui-textbox" type="text" name="race"
							></td>
					</tr>
					<tr>
					
					<td>生日：</td>
					<td>
					
					
						<input class="easyui-datebox"  labelPosition="top" style="width:100%;" 
						name="birthday" id="birthday">	
						
					</td>
					<td>邮箱：</td>
					<td>
					
					
						<input class="easyui-textbox"  labelPosition="top" style="width:100%;" 
						name="email" id="email">	
						
					</td>
					</tr>
					
					
					<tr>
						<td>教育</td>
						<td><input class="easyui-textbox" type="text" name="education"
							></td>
						<td>专业:</td>
						<td><input class="easyui-textbox" type="text" name="speciality"
							></td>
					</tr>
					<tr>
						<td>爱好</td>
						<td><input class="easyui-textbox" type="text" name="hobby"
							></td>
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
/*
$(function(){
	 $.ajax({
         type:'post',
         url:'queryDeptName1',
         dataType:"json",
         async: true,
         data:{     	 
         },
         success:function(data){
        	 
        	 for(var i in data){
        		
        		 $("#deptId").append("<option value=\""+data[i].id+"\">"+data[i].name+"</option>");
        		
        	 }   
        	 
        
        	     var json = [];
        	     $.each(data, function(i,val){
        	         //这里的"text","id"和html中对应
        	         json.push({ "name": val.name, "id": val.id });
        	     })
        	     $("#deptId").combobox("loadData", json);
        	     
      		}
         
     });
});
*/
	//easyui使用的是ajax做表单提交
	function submitForm() {
		$('#ff').form('submit', {
			url : "addEmployee",
			onSubmit : function() {
				return $(this).form('enableValidation').form('validate');
			},
			success : function(data) {
				if (data=="1") {
					//easyui的信息提示框：1.标题，2.提示信息，3.图标
					$.messager.alert('注册成功', '恭喜你,注册成功', 'info');
				} else {
					$.messager.alert('注册失败', '对不起,注册失败了', 'error');
				}
			}

		});
	}
	//置空的方法
	function clearForm() {
		$('#ff').form('clear');
	}
	
</script>

<script type="text/javascript">

    loadMapAutocomplete("suggestId");

    function loadMapAutocomplete(mySuggestId) {

        Ac = new BMap.Autocomplete( //建立一个自动完成的对象

            {

                "input": suggestId,

            });

    }

</script>

</html>