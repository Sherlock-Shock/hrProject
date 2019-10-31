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

<style type="text/css">

*{
	padding:0;
	margin:0;
}

</style>   
    
    
</head>
<body class="easyui-layout" data-options="fit:true" >
    

    <div class="easyui-layout" style="width:100%;height:100%;">
    
		    <div data-options="region:'north',border:false"
			style="background-image: url('images/topbg.gif'); height: 80px; overflow: hidden">
			<div style="position: relative;">
				<img src="images/top_logo.png" alt="找不到图片">
				<table style="position: absolute; right: 35px; top: 15px;">
					<tr>
						<td style="width: 25px"><img src="images/top_home.gif">
						</td>
						<td style="width: 120px"><a href=""
							style="color: #FFFFFF; text-decoration: none">首页</a></td>
						<td style="width: 25px"><img src="images/top_exit.gif"></td>
						<td style="width: 120px">
						<a href="http://localhost:8080/XJXYProject"
							style="color: #FFFFFF; text-decoration: none">退出登录</a></td>
					</tr>
				</table>
				<div
					style="position: absolute; background-image: url('images/StatBarBg.png'); left: 400px; top: 47px; width: 100%; height: 33px; background-size: 100% 100%;">
					<div style="width: 100%">
						<table style="margin-left: 50px; margin-top: 7px">
							<tr>
								<td style="width: 25px"><img src="images/StatBar_admin.gif"></td>
								<td style="width: 180px">当前用户:<span>${sessionScope.user[0].username}</span></td>
								<td style="width: 540px"></td>
								<td style="width: 25px"><img src="images/StatBar_time.gif"></td>
								<td style="width: 300px"><p id="ptime"></p></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		    </div>
		        
		        <div data-options="region:'south',split:true" style="height:50px;">
		        222
		        </div>
		        
		        <div data-options="region:'east',split:true" title="East" style="width:100px;">
		        333
		        </div>
		        
		     <div data-options="region:'west',split:true" title="公司人员信息管理" style="width:170px;">
		     
		     
		     <div class="easyui-accordion">
				<div title="用户管理" data-options="iconCls:'icon-useradd'"
					style="overflow: auto; padding: 10px; height: 200px">
					<a href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-zoom'" id="queryUser">用户查询</a>
					<a href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-groupadd'" id="addUser">添加用户</a>

				</div>
				<div title="部门管理" data-options="iconCls:'icon-edit'"
					style="overflow: auto; padding: 10px; height: 200px">
					<a href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-zoom'" id="queryDept">部门查询</a> <a href="#"
						class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-add'" id="addDept">添加部门</a>
				</div>
				<div title="职位管理" data-options="iconCls:'icon-remove'"
					style="overflow: auto; padding: 10px; height: 200px">
					<a href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-zoom'" id="queryJob">职位查询</a> <a href="#"
						class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-add'" id="addJob">添加职位</a>
				</div>
				<div title="员工管理" data-options="iconCls:'icon-user'"
					style="overflow: auto; padding: 10px; height: 200px">
					<a href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-zoom'" id="queryEmp">员工查询</a> <a href="#"
						class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-useradd'" id="addEmp">添加员工</a>
				</div>
				<div title="公告管理" data-options="iconCls:'icon-ok'"
					style="overflow: auto; padding: 10px; height: 200px">
					<a href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-print'" id="queryNotice">公告查询</a> <a
						href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-add'" id="addNotice">添加公告</a>
				</div>
				<div title="下载中心" data-options="iconCls:'icon-print'"
					style="overflow: auto; padding: 10px; height: 200px">
					 <a href="#"
						class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-fileDL'" id="filesDL">文件下载</a>
						
						<a href="#" class="easyui-linkbutton"
						data-options="plain:true,iconCls:'icon-upload'" id="upload">文件上传</a>
				</div>


			</div>
		     
        </div>
       
        <div data-options="region:'center',iconCls:'icon-ok'">
        <div class="easyui-tabs" id="tt" style="height:100%;">
        </div>
        
    	</div>
    </div>
<script type="text/javascript">
	$(function(){
		
		
		$("#queryUser").click(function(){
			addTab("#tt","用户查询","","queryUsers.jsp");
		});
		
		$("#addUser").click(function(){
			addTab("#tt","添加用户","","addUser.jsp");
		});
		
		
		
		$("#queryDept").click(function(){
			addTab("#tt","部门查询","","queryDept.jsp");
		});
		
		$("#addDept").click(function(){
			addTab("#tt","添加部门","","addDept.jsp");
		});
		
		$("#queryJob").click(function(){
			addTab("#tt","职位查询","","queryJob.jsp");
		});
		
		$("#addJob").click(function(){
			addTab("#tt","添加职位","","addJob.jsp");
		});
		
		$("#queryEmp").click(function(){
			addTab("#tt","员工查询","","queryEmployee.jsp");
		});
		
		$("#addEmp").click(function(){
			addTab("#tt","添加员工","","addEmp.jsp");
		});
				
		$("#queryNotice").click(function(){
			addTab("#tt","公告查询","","queryNotice.jsp");
		});
		
		$("#addNotice").click(function(){
			addTab("#tt","添加公告","","addNotice.jsp");
		});
		
		$("#filesDL").click(function(){
			addTab("#tt","文件下载","","getFileList");
		});
		
		$("#upload").click(function(){
			addTab("#tt","文件上传","","upload1.jsp");
		});
		
	
		
	});

</script>    
  
<script type="text/javascript">

function addTab(id, info, icon, url) {
	//先判断是否存在,返回一个boolean值
	var res = $(id).tabs("exists", info);

	//如果选项卡存在，则直接选中：select选中
	if (res) {
		//让table选中
		$(id).tabs("select", info);

	} else {//如果不存在则添加
		//调用添加tab的函数
		var content = '<iframe scrolling="auto" frameborder="0"  src="'
				+ url + '" style="width:100%;height:100%;"></iframe>';
		$(id).tabs("add", {
			"iconCls" : icon,
			"title" : info,
			content : content,
			"closable" : "true"
		});
	}

}

/*时钟*/
//js完成，创建一个定时器（可重复的）
var mytime = setInterval(function() {
	getTime();
}, 1000);//1000毫秒==1秒
function getTime() {
	var d = new Date();
	/*得到月，日，时，分，秒，要处理少10补0  */
	var M = (d.getMonth() + 1) < 10 ? ('0' + (d.getMonth() + 1)) : (d
			.getMonth() + 1);
	var D = d.getDate() < 10 ? ('0' + d.getDate()) : d.getDate();
	var H = d.getHours() < 10 ? ('0' + d.getHours()) : d.getHours();
	var m = d.getMinutes() < 10 ? ('0' + d.getMinutes()) : d.getMinutes();
	var s = d.getSeconds() < 10 ? ('0' + d.getSeconds()) : d.getSeconds();
	var t = d.getFullYear() + "年" + M + "月" + D
			+ "号&nbsp;&nbsp;&nbsp;&nbsp;" + H + ":" + m + ":" + s
			+ "&nbsp;&nbsp;&nbsp;&nbsp;星期" + "日一二三四五六".charAt(d.getDay());
	;
	//将控件的内容修改为处理好的字符串
	$("#ptime").html(t);
}




</script>  
    
    
</body>
</html>