<?php
  require('config.php');

  $smarty->assign("hello","Hello Smarty!");
  $smarty->assign("time", time());
  $smarty->display('hello.tpl');
?>
