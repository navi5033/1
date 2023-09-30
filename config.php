<?php 
error_reporting(0);
$cdk='============================================'.
'版本 2019 Powered by Zx_Game QQ1319462994，禁止修改'.
'=================================================';
session_start();
$_SESSION['gmbt'] ='修仙西游';
//=========================================
$db_host='49.232.209.46';
$db_username='root';//数据库帐号
$db_password='946ac91fd8d1aef0';//数据库密码
$dbport = 3306;
$now = date('Y-m-d H:i:s',strtotime('now')); 
/*
 提示：gm文件夹必需给777权限
*/
//===============游戏分区=================================
$qu  = trim($_POST['qu']);
if($_POST['qu']==1){
	$dbgame='qmfs_001';//1区角色数据库
}elseif($_POST['qu']==2){
	$dbgame='qmfs_002';//2区角色数据库
}
elseif($_POST['qu']==3){
	$dbgame='qmfs_003';//3区角色数据库
}
elseif($_POST['qu']==4){
	$dbgame='qmfs_004';//4区角色数据库
}
elseif($_POST['qu']==5){
	$dbgame='xntg5';//5区角色数据库
}
//=========================================================
$admin='navi515'; 	//首次登陆账号
$adminpass='qq3682048';  //首次登陆密码	
$gmdb = "gm_cdk";	//后台数据库名称
//=========================================================
	$charges=array(
	    '12'=>'100亿元宝',
	    '7'=>'10亿元宝',
		'34'=>'满级VIP',	
		'1'=>'终生卡',	      
        '2'=>'月卡',	                 
	    '3'=>'周卡',	
		
	);
//=========================================================	
	$user_IP = ($_SERVER["HTTP_VIA"]) ? $_SERVER["HTTP_X_FORWARDED_FOR"] : $_SERVER["REMOTE_ADDR"];
	$user_IP = ($user_IP) ? $user_IP : $_SERVER["REMOTE_ADDR"];
?>