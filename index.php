<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<?php
include 'config.php';
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修仙西游后台管理</title>
</head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GM</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
</head>
<body>
<div class="text-center col-md-4 center-block">
<hr><h2 style="color:Red;">修仙西游后台</h2><hr/>
<hr><h4 style="color:blue;">后台物品已更新</h4><hr/>
<hr><h4 style="color:Red;">使用后台刷物品，务必注意数量，玩家操作满背包不补号，切记！</h4><hr/>
<form id="form" name="form" method="post" action="check.php" >
     <div class="form-group">
            <input type="text" placeholder="登陆账号" class="form-control" id="user" name="user" value="" >
        </div>
            <input type="password" placeholder="登陆密码" class="form-control" id="pass" name="pass" value="" ><br>
      
		 <div class="form-group">
        <button type="submit" class="btn btn-info btn-block" name="sub" value="login ">登陆</button>
		 </div>
		  
</form>
 <div class="form-group"> &copy; 2023 Powered 修仙西游
</div>
   </div>
</body>
</html>