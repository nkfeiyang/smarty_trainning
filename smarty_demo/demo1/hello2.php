<?php
  require_once('config.php');

  $smarty->assign("hello","Hello Smarty!");
  $smarty->assign("time", time());
  $smarty->display('hello.tpl');
?>
