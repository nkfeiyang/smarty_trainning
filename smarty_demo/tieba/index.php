<?php
  include('config.php');
  $db_article_name = 'article';
  $db_reply_name = 'reply';
  
  
  $a = $_GET['a'];
  if ($a == 'add'){
    $smarty->display('tieba/add.tpl');
  }elseif($a == 'delete'){
    $id = intval($_GET['id']);
    $db->row_delete($db_article_name, 'id='.$id);
    header_go($_SERVER['PHP_SELF']);
  }elseif($a == 'edit'){
    $id = intval($_GET['id']);
    $row = $db->row_select_one($db_article_name, 'id='.$id);
    $row['content'] = html_decode($row['content']);
    $smarty->assign("row", $row);
    
    $smarty->display('tieba/add.tpl');
  }elseif($a == 'view'){
    $id = intval($_GET['id']);
    $row = $db->row_select_one($db_article_name, 'id='.$id);
    $row['content'] = html_decode($row['content']);
    $smarty->assign("article_row", $row);
	
	$reply_row = $db->row_select_one($db_article_name, 'reply_id='.$id);
    $reply_row['content'] = html_decode($reply_row['content']);
	$smarty->assign("reply_row", $reply_row);
	
    $smarty->display('tieba/view.tpl');
  }
  elseif ($a == 'reply'){
	$content = html_encode($_POST['content']);
	$author = html_encode($_POST['author']);
	$ip = $_SERVER['REMOTE_ADDR'];
    $reply_id = intval($_POST['id']);
	$row = array(              
              'content' => $content,
			  'author' => $author,
			  'ip' => $ip,
              'create_time' => time(),
			  'reply_id' => $reply_id,
            );
      $db->row_insert($db_reply_name, $row);
	  header_go($_SERVER['PHP_SELF'].'?a=view&id='.$reply_id);
  }
  elseif ($a == 'save'){
    $title = html_encode($_POST['title']);
    $content = html_encode($_POST['content']);
	$author = html_encode($_POST['author']);
	$ip = $_SERVER['REMOTE_ADDR'];
    $id = intval($_POST['id']);
    if($id){
      $row = array(
              'title' => $title,
              'content' => $content,
			  'author' => $author,			  
            );
      $db->row_update($db_article_name, $row, 'id='.$id);
    }else{
      $row = array(
              'title' => $title,
              'content' => $content,
			  'author' => $author,
			  'ip' => $ip,
              'create_time' => time(),
            );
      $db->row_insert($db_article_name, $row);
    }
	//echo $row['title'];
    header_go($_SERVER['PHP_SELF']);
  }else{
    $row = $db->row_select($db_article_name);
    $smarty->assign("row", $row);
    
    $smarty->display('tieba/index.tpl');
  }
?>
