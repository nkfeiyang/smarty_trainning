{include file="header.tpl"}
<h1>{$title} 课堂练习</h1>
<hr>
<br/>

我叫 {$myinfo->name}, 来自 {$myinfo->from}, 邮件是 {$myinfo->email}，工作电话是 {$myinfo->phone_work}，手机是 {$myinfo->phone_cell}。
<br/><br/>
我已经学习过的课程有：{$myinfo->my_class.taken[0]}, {$myinfo->my_class.taken[1]}
<br/><br/>
尚未学习的课程有：{$myinfo->my_class.newer[0]}, {$myinfo->my_class.newer[1]}

{include file="footer.tpl"}