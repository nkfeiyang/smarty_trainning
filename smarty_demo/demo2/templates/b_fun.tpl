{include file="header.tpl"}
<h1>{$title} 学习</h1>
<hr>


<h2>foreach: </h2>
PHP Source code:<br/>
{literal}
<pre class="code">
  $smarty->assign("news", array(
							array("newsID"=>1, "newsTitle"=>"第1条新闻"),
							array("newsID"=>2, "newsTitle"=>"第2条新闻"),
							array("newsID"=>3, "newsTitle"=>"第3条新闻"),
							array("newsID"=>4, "newsTitle"=>"第4条新闻"),
							array("newsID"=>5, "newsTitle"=>"第5条新闻"),
							array("newsID"=>6, "newsTitle"=>"第6条新闻")
						)
					);
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{foreach from=$news item=news_item}
	新闻编号：{$news_item.newsID}
	新闻内容：{$news_item.newsTitle}<hr>
{foreachelse}
	没有新闻
{/foreach}
</pre>
{/literal}

Output:<br/>
<div class="result">
{foreach from=$news item=news_item}

新闻编号：{$news_item.newsID}<br>

新闻内容：{$news_item.newsTitle}<br><hr>

{foreachelse}
没有新闻
{/foreach}
</div>
<br/>

Smarty Source code:

{literal}
<pre class="code">
{foreach from=$news item=news_item}
	{foreach from=$news_item key=k item=v}
		{$k}:{$v}
	{/foreach}
{foreachelse}
	没有新闻
{/foreach}
</pre>
{/literal}

Output:<br/>
<div class="result">
{foreach from=$news item=news_item}
	{foreach from=$news_item key=k item=v}
		{$k}:{$v}
	{/foreach}
	<br/>
{foreachelse}
	没有新闻
{/foreach}
</div>
<br/>

Smarty Source code:

{literal}
<pre class="code">
{foreach from=$news item=news_item name=foo}
	{if $smarty.foreach.foo.first}
		<b>新闻列表</b>
	{/if}
	{$smarty.foreach.foo.iteration} . {$news_item.newsTitle}
	{if $smarty.foreach.foo.last}
		共有{$smarty.foreach.foo.total}条新闻
	{/if}
{/foreach}
</pre>
{/literal}

Output:<br/>
<div class="result">
{foreach from=$news item=news_item name=foo}
	{if $smarty.foreach.foo.first}
		<b>新闻列表</b><br/>
	{/if}
	{$smarty.foreach.foo.iteration} . {$news_item.newsTitle}<br/>
	{if $smarty.foreach.foo.last}
		共有{$smarty.foreach.foo.total}条新闻
	{/if}
{/foreach}
</div>
<br/>


PHP Source code:<br/>
{literal}
<pre class="code">
  $smarty->assign("stu_01", array("姓名"=>"张三", "性别"=>"男", "国籍"=>"中国"));
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{foreach from=$stu_01 key=k item=v}
	<b>{$k}</b>:{$v}
{/foreach}
</pre>
{/literal}

Output:<br/>
<div class="result">

{foreach from=$stu_01 key=k item=v}
	<b>{$k}</b>:{$v} <br/>
{/foreach}

</div>


<h2>if elseif else: </h2>
PHP Source code:<br/>
{literal}
<pre class="code">
  $smarty->assign("people", array(
							array("name"=>"People1", "age"=>10),	
							array("name"=>"People2", "age"=>19),
							array("name"=>"People3", "age"=>67),
							array("name"=>"People4", "age"=>40)							
						)
					);
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{foreach from=$people item=m}
	{$m.name} ：
	{if $m.age < 18 }
		少年组
	{elseif $m.age >= 18 and $m.age <35}
		青年组
	{elseif $m.age >= 35 and $m.age <=60}
		中年组
	{else}
		老年组
	{/if}
{/foreach}
</pre>
{/literal}

Output:<br/>
<div class="result">
{foreach from=$people item=m}
	{$m.name} ：
	{if $m.age < 18 }
		少年组
	{elseif $m.age >= 18 and $m.age <35}
		青年组
	{elseif $m.age >= 35 and $m.age <=60}
		中年组
	{else}
		老年组
	{/if}
	<br/>
{/foreach}
</div>


<h2>section: </h2>
PHP Source code:<br/>
{literal}
<pre class="code">
  $smarty->assign("people", array(
							array("name"=>"People1", "age"=>10),	
							array("name"=>"People2", "age"=>19),
							array("name"=>"People3", "age"=>67),
							array("name"=>"People4", "age"=>40)							
						)
					);
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{section name=user loop=$people}
	{$people[user].name} : {$people[user].age}
{/section}
</pre>
{/literal}

Output:<br/>
<div class="result">
{section name=user loop=$people}
	{$people[user].name} : {$people[user].age} <br/>
{/section}
</div>

<br/>
Smarty Source code:

{literal}
<pre class="code">
{section name=user loop=$people}
	{$people[user].name} : {$people[user].age}
{/section}
</pre>
{/literal}

Output:<br/>
<div class="result">
{section name=user loop=$people}
	(index={$smarty.section.user.index}) 
	(iteration={$smarty.section.user.iteration})
	(rownum={$smarty.section.user.rownum})
	{if $smarty.section.user.first}
		<br/>显示第一条记录
	{/if}	
	<br/>
	{$people[user].name} : {$people[user].age} <br/>
	{if $smarty.section.user.last}
		显示最后一条记录，共有{$smarty.section.user.total}条记录
	{/if}
{/section}
</div>
{include file="footer.tpl"}