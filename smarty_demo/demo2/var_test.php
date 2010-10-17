<?php
  require_once('config.php');

  $smarty->assign("title", "Variables - Test");

  class User {
	public $name;
	public $email;
	public $from;
	public $phone_work;
	public $phone_cell;
	public $my_class;
	function __construct(){
		$this->name = "LoveSmarty";
		$this->from = "China";
		$this->email = "abc@sina.com";
		$this->phone_work = "010-82339999-123";
		$this->phone_cell = "13912345678";
		$this->my_class = array("taken" =>  array("HTML", "CSS"), 
						"newer" => array("Smarty", "Javascript"));		
	}
  }
  
  $smarty->assign("myinfo", new User());
  
  
  $smarty->display('var_test.tpl');
?>
