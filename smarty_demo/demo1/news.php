﻿<?php
	require_once('config.php');
	
	$title = '嫦娥二号26日迎“最终大考” 将进行月球精细成像';
	
	$author = "北京晚报";
	$time = "2010-10-14 16:05:19";
	$body = "　　成功完成三次近月制动的嫦娥二号卫星，正在预定的100公里环月圆轨道运行，卫星的基本任务已完成，剩下的最后一次“大考”，
		就是准备26日降轨至近月点15公里，拍摄并传回未来嫦娥三号探测器落月备选着陆区的精细影像。<br/>　　
		最后一次“大考”成功与否，无疑是此次嫦娥二号卫星任务圆满完成的关键。
		据北京航天飞控中心朱民才主任介绍，在进行试验轨道降轨控制时，由于目标轨道近月点高度仅有15公里，
		并且轨控过程卫星处于月球背面的非可视弧段，要想实现高精度变轨，必须制定完善的轨控策略，准备好充分的应急预案，确保控制安全，有效降低风险。<br/>
		　　另据北京航天飞行控制中心副主任、“嫦娥二号”测控通信指挥部副指挥长麻永平介绍，明年我国可能会发射“萤火一号”，
		搭载俄罗斯的福布斯卫星，共同进行火星探测。(记者蔡文清)";
	
	$smarty->assign("title", $title . " | 新闻中心");
	$smarty->assign("headline", $title);	
	$smarty->assign("time", $time);
	$smarty->assign("author", $author);
	$smarty->assign("body", $body);
	
	if ($_GET["f"] == "qq")
		$smarty->display('news_qq.tpl');
	else
		$smarty->display('news_sina.tpl');
	
	

?>