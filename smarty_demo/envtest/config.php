<?php
//	error_reporting(0);
//	session_start();
	define('DEBUG', false);
	
//	define('CHARSET', 'utf-8');
//	header("content-type:text/html;charset=".CHARSET);
     
	include('libs/function.php');
	include('libs/function_string.php');
	include('libs/db.php');
/*	$db_config	= array(
						'hostname'	=> '127.0.0.1',
						'username'	=> 'root',
						'password'	=> '',
						'database'	=> 'tieba',
					);
  $db = new db();
  $db->connect($db_config);
  */
  require_once('libs/smarty/Smarty.class.php');
  $smarty = new Smarty;

  $smarty->compile_check = true;
  $smarty->debugging = false;

?>
