<?php
  require_once('config.php');

  $smarty->assign("title", "Smarty Basic Synax");
  $smarty->assign("quote", "This is quote result");
  $smarty->assign("quote.more", "This is quote.more result");
  $smarty->assign("foo", 2);
  $smarty->assign("bar", 3);
  
  
  $smarty->display('basic.tpl');
?>
