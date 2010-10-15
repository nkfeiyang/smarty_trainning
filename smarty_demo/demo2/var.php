<?php
  require_once('config.php');

  $smarty->assign("title", "Variables");
  $smarty->assign("username", "Robin");
  $smarty->assign("contactinfo",
			array("cname" => "张三",
				  "email" => "zhangsan@abc.com",
				  "phone" => array("work" => "010-82339999-123",
									"cell" => "13912345678"
								)
				  )
			);
  $smarty->assign("contactinfo2",
			array("李四",
				  "lisi@abc.com",
				  array("010-82339999-123",
						"13912345678"
						)
				  )
			);
  
  class User {
	public $cname;
	public $email;
	public $phone_work;
	public $phone_cell;
	function __construct(){
		$this->cname = "王五";
		$this->email = "ww@sina.com";
		$this->phone_work = "010-82339999-123";
		$this->phone_cell = "13912345678";
	}
  }
  
  $smarty->assign("contactinfo3", new User());
  
  
  $smarty->display('var.tpl');
?>
