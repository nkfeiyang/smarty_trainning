{include file="header.tpl"}
<h1>{$title} 学习</h1>
<hr>


<h2>capitalize: </h2>
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
{$article}
{$article|capitalize}
</pre>
{/literal}

Output:<br/>
<div class="result">
{$article}<br/>
{$article|capitalize}
</div>



<h2>count_characters: </h2>
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
{$article}
{$article|count_characters}
{$article|count_characters:true}
</pre>
{/literal}

Output:<br/>
<div class="result">
{$article}<br/>
{$article|count_characters}<br/>
{$article|count_characters:true}
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
{$article|truncate}
{$article|truncate:17:""}
{$article|truncate:17:"..."}
{$article|truncate:17:"...":true}
</pre>
{/literal}

Output:<br/>
<div class="result">
{$article|truncate}<br/>
{$article|truncate:17:""}<br/>
{$article|truncate:17:"..."}<br/>
{$article|truncate:17:"...":true}<br/>
</div>

<h2>调用PHP中的函数: </h2>
PHP Source code:<br/>
{literal}
<pre class="code">
   $smarty->assign("arr", array(100,101,102,103));
</pre>
{/literal}
<br/>
Smarty Source code:

{literal}
<pre class="code">
 The length of array arr is {$arr|@count} 
</pre>
{/literal}

Output:<br/>
<div class="result">
 The length of array arr is {$arr|@count} 
</div>

{include file="footer.tpl"}