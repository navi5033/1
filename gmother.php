<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>GM后台管理系统</title>
</head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GM</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<?php
include base64_decode('Y29uZmlnLnBocA==');$mysqli =new mysqli($db_host,$db_username,$db_password,$gmdb,$dbport);if(!$mysqli){echo "<script>alert('系统提示：数据库连接失败');history.go(-1)</script>";exit;}session_start();$mysqli->set_charset('utf8');$query =$mysqli->prepare("select * from `user` where `user`=? and `password`=? limit 1");$query->bind_param('ss', $_SESSION["user"], $_SESSION["password"]);$query->execute();$result =$query->get_result();$row =mysqli_fetch_array($result);$check =md5($row['user'] . $row['password']);$status=$row['status'];if ($_SESSION['check'] <> $check || empty($_SESSION['status'])|| $_SESSION['status'] <> $status || $_SESSION['status'] <> 'admin'){unset($_SESSION);echo base64_decode('PHNjcmlwdD5hbGVydCgn5oKo5peg5q2k5p2D6ZmQ77yBJyk7d2luZG93LmxvY2F0aW9uLmhyZWY9J2luZGV4LnBocCc7PC9zY3JpcHQ+');exit;}if(isset($_SESSION['expiretime'])){if($_SESSION['expiretime'] < time()){unset($_SESSION['expiretime']);$query =$mysqli->prepare("INSERT INTO gmlog (user, create_time,name,remark,ip) VALUES (?, now(),?,'退出登陆',?)");$query->bind_param('sss', $_SESSION["user"], $_SESSION["name"], $user_IP);$query->execute();$mysqli->close();header(base64_decode('TG9jYXRpb246IGV4aXQucGhwP1RJTUVPVVQ='));exit(0);}else {$_SESSION['expiretime'] =time()+ 3600;}}?>
<div class="text-center col-md-4 center-block">
<h1><?php echo $_SESSION['gmbt'];?>授权后台</h1>
 <h3 style="color:blue"><?php echo $_SESSION['name'];?> 欢迎登陆</h3> <br>
	 <button class="btn btn-info btn-block" onclick="window.location.href='gmother.php'">其他功能</button>	
	<button class="btn btn-info btn-block" onclick="window.location.href='gm.php'">返回主菜单</button>
	<button class="btn btn-info btn-block" onclick="window.location.href='exit.php'">登陆注销</button><br>	 	 
<form id="form1" name="form1" method="post" action="gmquery.php">
        <div class="form-group">
			<select class="form-control selectpicker" id="qu" name="qu" value="">
			<option value="1">1区</option>
			<option value="2">2区</option>
			<option value="3">3区</option>
			<option value="4">4区</option>
            <option value="5">5区</option>
            <option value="6">6区</option>
			<option value="7">7区</option>
			<option value="8">8区</option>
			<option value="9">9区</option>
            <option value="10">10区</option>
            <option value="11">11区</option>
			<option value="12">12区</option>
			<option value="13">13区</option>
			<option value="14">14区</option>
			<option value="15">15区</option>
			<option value="16">16区</option>
			<option value="17">17区</option>
			<option value="18">18区</option>
			<option value="19">19区</option>
			<option value="20">20区</option>
			</select>
            <label for="username">游戏账号或角色名</label>
            <input type="text"  class="form-control" id="username" name="username" value="<?php echo $_SESSION['name'];?>" >
        </div>
    <div class="form-group">
            <label for="v">其他功能</label>
 <button type="submit" class="btn btn-info btn-block" name="sub" value="zhfh">封号</button>	
 <button type="submit" class="btn btn-info btn-block" name="sub" value="zhjf">解封</button>	
 <button type="submit" class="btn btn-info btn-block" name="sub" value="jy">禁言</button>	
 <button type="submit" class="btn btn-info btn-block" name="sub" value="jj">解禁</button>	 
         </div>
</form>
<div class="form-group">
 <p class="admin_copyright"> &copy; 2019 Powered by Zx_Game</p> </div>
</body>
</html>