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
<script type="text/javascript" src="uploader/jquery.Huploadify.js"></script>
<link rel="stylesheet" type="text/css" href="uploader/Huploadify.css"/>
</head>
<body>
<div class="easyui-panel" title="多文件上传"
		style="width: 1200px; height: 700px;">
	上传者：<input type="text" id="name" value="${sessionScope.user[0].username}"></input>
<div id="upload"></div>
<button id="uploadall" class="easyui-linkbutton" data-options="iconCls:'icon-save'">上传全部</button>
<button id="cancel" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'">取消全部</button>

	
	
</div>
</body>
<script type="text/javascript">

	

$(function(){
	var name=$("#name").val();
	//alert(name);
	var up = $('#upload').Huploadify({
		auto:false,
		fileTypeExts:'*.*',
		multi:true,
		formData:{name:name},
		fileSizeLimit:99999999999,
		showUploadedPercent:true,
		showUploadedSize:true,
		removeTimeout:9999999,
		uploader:'upload',
		onUploadStart:function(file){
			console.log(file.name+'开始上传');
		},
		onInit:function(obj){
			console.log('初始化');
			console.log(obj);
		},
		onUploadComplete:function(file){
			console.log(file.name+'上传完成');
		},
		onCancel:function(file){
			console.log(file.name+'删除成功');
		},
		onClearQueue:function(queueItemCount){
			console.log('有'+queueItemCount+'个文件被删除了');
		},
		onDestroy:function(){
			console.log('destroyed!');
		},
		onSelect:function(file){
			console.log(file.name+'加入上传队列');
		},
		onQueueComplete:function(queueData){
			console.log('队列中的文件全部上传完成',queueData);
			$.messager.alert('上传成功', '上传成功', 'info');
			
		}
	});

	$('#uploadall').click(function(){
		up.upload('*');
	});
	$('#cancel').click(function(){
		up.cancel('*');
	});
	
	
});



</script>
</html>