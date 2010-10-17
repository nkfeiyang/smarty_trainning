<?php
  require_once('config.php');

  $smarty->assign("title", "Built-in Functions 测试");

  $smarty->assign("week", array("星期一", "星期二", "星期三", "星期四", "星期五", "星期六"));
  $smarty->assign("time", array("上午","下午","晚上"));
  
  // 课程信息，保存在一个数组中，按顺序，分别为周一上午，周一下午，周一晚上，周二上午......
  $smarty->assign("t_c", array("PHP",       "Smarty",  "CSS",		// 周一
								"JS",       "Ajax",    "English",		// 周二
								"Smarty",   "PHP",     "CSS",		// 周三
								"English",  "JS",      "PHP",		// 周四
								"JS",       "Ajax",    "Smarty",		// 周五
								"CSS",      "English", "JS")		// 周六
				);

  
  $smarty->display('class_test_ans.tpl');
 ?>