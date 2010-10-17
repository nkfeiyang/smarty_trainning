<?php
  require_once('config.php');

  $smarty->assign("title", "Variable Modifier");
  $smarty->assign("article", "Police begin campaign to rundown jaywalkers.");
  $smarty->assign("str1", "variable");
  $smarty->assign("str2", "modifier");
  $smarty->assign("str_long", "variable");
  $smarty->assign("yesterday", strtotime('-1 day'));
  
  $smarty->assign("arr", array(100,101,102,103));
  
  
  
  
  $smarty->display('var_mod.tpl');
 ?>