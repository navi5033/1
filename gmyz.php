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
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<?php
session_start();
//此文件用与验证用户是否登陆，若以登陆则跳转到要访问界面，若没有登录则跳转到登陆界面。
if($_SESSION["user"] == ""){
	echo "<script>alert('您尚未登陆，请先登录后再访问！');window.location.href='index.php';</script>";
} 
if($_SESSION["status"] != 'admin'){
	echo "<script>alert('您无此权限！');window.location.href='index.php';</script>";	
}
?>
<div class="text-center col-md-4 center-block">
<h1><?php echo $_SESSION['gmbt'];?>授权后台</h1>
 <h3 style="color:blue"><?php echo $_SESSION['name'];?> 欢迎登陆</h3> <br>
	 <button class="btn btn-info btn-block" onclick="window.location.href='gmyz.php'">一键系统</button>	
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
				 <label style="color:red" >提示：修改yz.txt礼包对应的文件和数量</label><br>
		       <label style="color:blue">套餐礼包一</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz1.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select></br>	
        <button type="submit" class="btn btn-info btn-block" name="sub" value="yz1">一键发送套餐礼包一</button></br>	
       <label style="color:blue">套餐礼包二</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz2.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>		
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz2">一键发送套餐礼包二</button></br>	
		  <label style="color:blue">套餐礼包三</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz3.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz3">一键发送套餐礼包三</button></br>	
		  <label style="color:blue">套餐礼包四</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz4.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz4">一键发送套餐礼包四</button></br>	
  <label style="color:blue">套餐礼包五</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz5.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>	
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz5">一键发送套餐礼包五</button></br>	
 <label style="color:blue">套餐礼包六</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz6.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>	
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz6">一键发送套餐礼包六</button></br>		
 <label style="color:blue">套餐礼包七</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz7.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>	
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz7">一键发送套餐礼包七</button></br>		
 <label style="color:blue">套餐礼包八</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz8.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>	
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz8">一键发送套餐礼包八</button></br>		
 <label style="color:blue" >套餐礼包九</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz9.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>	
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz9">一键发送套餐礼包九</button></br>		
 <label style="color:blue">套餐礼包十</label>  <select class="form-control selectpicker" value="item">
		<?php
        $file = fopen("yz10.txt", "r");
        while(!feof($file))
        {
            $line=fgets($file);
			$txts=explode(';',$line);
			if(count($txts)==3){
				echo '<option value="'.$txts[0].'">'.$txts[2].' '.'数量:'.$txts[1].'</option>';
			}
        }
        fclose($file);
			?>
			</select>	
		<button type="submit" class="btn btn-info btn-block" name="sub" value="yz10">一键发送套餐礼包十</button>			
        </div>				
</form>
 <p class="admin_copyright"> &copy; 2019 Powered by Zx_Game</p> </div>
</body>
</html>