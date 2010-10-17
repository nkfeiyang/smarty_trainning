<?php
	function get_microtime() {
		list($usec, $sec) = explode(' ', microtime());
		return ((float)$usec + (float)$sec);
	}
	$TIME_START = get_microtime();
	/*
	 *	自动加载类文件
	 *	$obj：类文件名		php5以上支持
	 */
	function __autoload($obj) {
		$class_file = PATH_CLASS.$obj.'.php';
		if (file_exists($class_file)){
			include_once($class_file);
		}elseif(file_exists(PATH_CONTROLLER.$obj.'.php')){
			include_once(PATH_CONTROLLER.$obj.'.php');
		}elseif(file_exists(PATH_MODEL.$obj.'.php')){
			include_once(PATH_MODEL.$obj.'.php');
		}
	}
  function use_model($model){
    global $db;
    $model_file = PATH_MODEL.$model.'Model.php';
    include_once($model_file);
    $Obj = $model.'Model';
    $modelObj = new $Obj();
    $modelObj->db = $db;
    
    return $modelObj;
  }
	function pr($arr){
		echo '<pre style="text-align:left">';
		print_r($arr);
		echo '</pre>';
	}
  function pre($arr){
		pr($arr);exit;
	}
  function br($str){
		echo($str."<br/>\n");
	}
  function bre($str){
		br($str);exit;
	}
	function vr($arr){
		echo '<pre style="text-align:left">';
		var_dump($arr);
		echo '</pre>';
	}

  function url2filepath($theURL) {
    strstr ( PHP_OS, "WIN" ) ? $slash = "\\" : $slash = "/";
    $physical = getcwd ();
    $AtheFile = explode ( "/", $theURL );
    $theFileName = array_pop ( $AtheFile );
    $AwimpyPathWWW = explode ( "/", SITE_URL );
    $AtheFilePath = array_values ( array_diff ( $AtheFile, $AwimpyPathWWW ) );
    if ($AtheFilePath) {
      $theFilePath = $slash . implode ( $slash, $AtheFilePath ) . $slash . $theFileName;
    } else {
      $theFilePath = implode ( $slash, $AtheFilePath ) . $slash . $theFileName;
    }
    return ($physical . $theFilePath);
  }
  

?>