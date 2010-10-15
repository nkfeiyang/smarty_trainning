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
							array("name"=>"People1", 10, "男"),	
							array("name"=>"People2", 19, "女"),
							array("name"=>"People3", 67, "男"),
							array("name"=>"People4", 40, "女")							
						)
					);
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{$article}
{$article|count_characters}
{$article|count_characters:true}
</pre>
{/literal}

Output:<br/>
<div class="result">
{foreach from=$people item=m}
	{$m.name}
{/foreach}
</div>


<h2>cat: </h2>
PHP Source code:<br/>
{literal}
<pre class="code">
  $smarty->assign("str1", "variable");
  $smarty->assign("str2", "modifier");
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{$str1|cat:$str2}
{$str1|cat:' '|cat:$str2}
{$str1|cat:' '|cat:$str2|capitalize}
</pre>
{/literal}

Output:<br/>
<div class="result">
{$str1|cat:$str2}<br/>
{$str1|cat:' '|cat:$str2}<br/>
{$str1|cat:' '|cat:$str2|capitalize}
</div>



<h2>date_format: </h2>
PHP Source code:<br/>
{literal}
<pre class="code">
$smary->assign("yesterday", strtotime('-1 day'));
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{$yesterday|date_format:"%D"}
{$yesterday|date_format:"%Y-%m-%d %H:%M"}
</pre>
{/literal}

Output:<br/>
<div class="result">
{$yesterday|date_format:"%D"}<br/>
{$yesterday|date_format:"%Y-%m-%d %H:%M"}<br/>
</div>



<h2>truncate: </h2>
PHP Source code:<br/>
{literal}
<pre class="code">
  $smarty->assign("article", "Police begin campaign to rundown jaywalkers.");
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
{$yesterday|date_format:"%D"}
{$yesterday|date_format:"%Y-%m-%d %H:%M"}
</pre>
{/literal}

Output:<br/>
<div class="result">
{$article|truncate}<br/>
{$article|truncate:17:""}<br/>
{$article|truncate:17:"..."}<br/>
{$article|truncate:17:"...":true}<br/>
</div>
{include file="footer.tpl"}