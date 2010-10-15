<?php
  require_once('config.php');

  $smarty->assign("title", "Variable Modifier");
  $smarty->assign("article", "Police begin campaign to rundown jaywalkers.");
  $smarty->assign("str1", "variable");
  $smarty->assign("str2", "modifier");
  $smarty->assign("str_long", "variable");
  $smary->assign("yesterday", strtotime('-1 day'));
  
  
  
  
  
  
  $smarty->display('var_mod.tpl');
 ?>