<?php
  require_once('config.php');

  $smarty->assign("title", "Custom Functions");

  $smarty->assign("hobbies", array(
							1000 => "音乐",
							1001 => "舞蹈",
							1002 => "文学",
							1003 => "体育")
				);
  $smarty->assign("my_hobbies", 1001);
  
  $smarty->display('c_fun.tpl');
 ?>