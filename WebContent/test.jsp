<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<nav class="navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">五邑大学</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">简介 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">概述</a></li>
 
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学院<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Java学院</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">IOS学院</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Web学院</a></li>
          </ul>
        </li>
        
        
        
         <li><a href="#" class="btn " data-toggle="modal" data-target="#myModal">关于</a> </li>
      </ul>
      
   

      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">111题目</h4>
	      </div>
	      <div class="modal-body">
	           太难了
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="button" class="btn btn-primary">MK</button>
	      </div>
	    </div>
	  </div>
	</div>






	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	  </ol>
	
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	    <div class="item active">
	      <img src="images2/nav_01.jpg" alt="...">
	      <div class="carousel-caption">
	       
	      </div>
	    </div>
	    <div class="item">
	      <img src="images2/nav_02.jpg" alt="...">
	      <div class="carousel-caption">
	       
	      </div>
	    </div>
	  
	    <div class="item">
	      <img src="images2/nav_03.jpg" alt="...">
	      <div class="carousel-caption">
	     
	      </div>
	    </div>
	  </div>
	
	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>

<div style="margin-top:120px"> </div>

	<div class="container-fluid">
		<div class="row">
		
		  <div class="col-md-4 ">
		  
		  <img src="images2/java.png" alt="..." class="img-circle center-block" style="width:150px;">
			  <div	class="text-center" style="margin-top:10px">
			  <h1>java学院</h1>
			  <br/>
			  <p class="lead">java学院又称大神学院...</p>
			  <button type="button" class="btn btn-danger btn-lg">立即咨询</button>
			  </div>
		  </div>
		  
		 <div class="col-md-4">
		  
		  <img src="images2/web.png" alt="..." class="img-circle center-block" style="width:150px;">
		   <div	class="text-center" style="margin-top:10px">
			  <h1>网页UI学院</h1>
			  <br/>
			  <p class="lead">网页UI学院又称大神学院...</p>
			  <button type="button" class="btn btn-danger btn-lg">立即咨询</button>
			  </div>
		  </div>
		  
		  
		  
		   <div class="col-md-4">
		  
		  <img src="images2/apple.png" alt="..." class="img-circle center-block" style="width:150px;">
		   <div	class="text-center" style="margin-top:10px">
			  <h1>IOS学院</h1>
			  <br/>
			  <p class="lead">IOS学院又称大神学院...</p>
			  <button type="button" class="btn btn-danger btn-lg">立即咨询</button>
			  </div>
		  </div>
		  
		</div>
		
	</div>


<div style="margin-top:40px;">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#ios" aria-controls="home" role="tab" data-toggle="tab">IOS学院</a></li>
    <li role="presentation"><a href="#java" aria-controls="profile" role="tab" data-toggle="tab">Java学院</a></li>
    <li role="presentation"><a href="#web" aria-controls="messages" role="tab" data-toggle="tab">网页UI学院</a></li>
   
  </ul>

  <!-- Tab panes -->
  <div class="tab-content ">
  	
    <div role="tabpanel " class="tab-pane active" id="ios">
    
    <div class="row" style="margin-top:20px;">
    
      <div class="col-md-1"></div>
      
	  <div class="col-md-6 text-center" style="margin-top:50px;"> 
	  	   <span style="font-size:35px;color:red;">ios学院</span><span style="font-size:20px;">又称大神学院...</span>
	 		<p class="lead">iOS 是由苹果公司开发的移动操作系统  。苹果公司最早于 2007 年 1 月 9 日的 Macworld 大会上公布这个系统，最初是设计给 iPhone 使用的，后来陆续套用到 iPod touch 、iPad 以及 Apple TV 等产品上。</p>
	  </div>
	  <div class="col-md-5">

	   <img src="images2/apple.png" alt="..." class="img-circle center-block" style="width:350px;">
	  </div>
	</div>
    
   
    
    </div>
    <div role="tabpanel " class="tab-pane" id="java">
    
     <div class="row" style="margin-top:20px;">
     
	  <div class="col-md-5 "> 
	  	  
	 	<img src="images2/firefox-logo.jpg" alt="..." class="img-circle center-block" style="width:350px;">
	  </div>
	  <div class="col-md-6 text-center" style="margin-top:50px;">

	   <span style="font-size:35px;color:red;">java学院</span><span style="font-size:20px;">又称大神学院...</span>
	 		<p class="lead">iOS 是由苹果公司开发的移动操作系统  。苹果公司最早于 2007 年 1 月 9 日的 Macworld 大会上公布这个系统，最初是设计给 iPhone 使用的，后来陆续套用到 iPod touch 、iPad 以及 Apple TV 等产品上。</p>

	  </div>
	  
	  <div class="col-md-1 text-center"> </div>
	  
	</div>
    
    </div>
    <div role="tabpanel " class="tab-pane " id="web">
    
     <div class="row" style="margin-top:20px;">
	     	 <div class="col-md-1"></div>
	     	
		  <div class="col-md-6 text-center " style="margin-top:50px;"> 
		  	  <span style="font-size:35px;color:red;">网页UI学院</span><span style="font-size:20px;">又称大神学院...</span>
		 		<p class="lead">iOS 是由苹果公司开发的移动操作系统  。苹果公司最早于 2007 年 1 月 9 日的 Macworld 大会上公布这个系统，最初是设计给 iPhone 使用的，后来陆续套用到 iPod touch 、iPad 以及 Apple TV 等产品上。</p>
		 	
		  </div>
		  <div class="col-md-5">
	
		   <img src="images2/web.png" alt="..." class="img-circle center-block" style="width:350px;">
		  </div>
	</div>
    
    </div>

  </div>

</div>
	

</body>
<script src="bootstrap/dist/js/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})

</script>
</html>