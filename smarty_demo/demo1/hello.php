<?php
  require_once('libs/smarty/Smarty.class.php');
  $smarty = new Smarty;

  $smarty->compile_check = true;
  $smarty->debugging = false;

  $smarty->assign("hello","Hello Smarty!");
  $smarty->assign("time", time());
  $smarty->display('hello.tpl');
?>
