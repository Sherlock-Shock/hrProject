<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">

*{
	padding:0;
	margin:0;
}

</style> 
</head>
<body>
<nav class="navbar-inverse" >
  <div class="container-fluid" >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">广州粤嵌</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">简介 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">综述</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">学院 <span class="caret"></span></a>
          <ul class="dropdown-menu">
           
            <li><a href="#">IOS学院</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Java学院</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">安卓学院</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">C++学院</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">UI学院</a></li>
          </ul>
        </li>
        <li>
        <a href="#" class="btn " data-toggle="modal" data-target="#myModal">关于</a>
       
      </li>
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
        <h4 class="modal-title" id="myModalLabel">来源与感想</h4>
      </div>
      <div class="modal-body">
       我太难了
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
      <img src="images2/nav_01.jpg" alt="1">
      <div class="carousel-caption">
       
      </div>
    </div>
    <div class="item">
      <img src="images2/nav_02.jpg" alt="2">
      <div class="carousel-caption">
       
      </div>
    </div>
  
     <div class="item">
      <img src="images2/nav_03.jpg" alt="3">
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
<div class="row" >
  <div class="col-md-4"><img src="images2/apple.png" alt="太假了" class="img-circle" ><br/>1551645</div>
  <div class="col-md-4"><img src="images2/java.png" alt="我太难了" class="img-circle">258778</div>
  <div class="col-md-4"><img src="images2/web.png" alt="..." class="img-circle">125655</div>
</div>
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">IOS学院</a></li>
  <li role="presentation"><a href="#">JAVA学院</a></li>
  <li role="presentation"><a href="#">网页UI学院</a></li>
</ul>
</body>
 <script src="bootstrap/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    
   <script src="bootstrap/dist/js/bootstrap.min.js"></script>
   <script type="text/javascript">
   $(function(){
	   
   });
   $('#myModal').on('shown.bs.modal', function () {
	   $('#myInput').focus()
	 })
   </script>
</html>