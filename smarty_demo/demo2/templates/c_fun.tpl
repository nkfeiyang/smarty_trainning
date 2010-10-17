{include file="header.tpl"}
<h1>{$title}</h1>
<hr>
<br/>

<h2>assign </h2>
Smarty Source code:

{literal}
<pre class="code">
{assign var='foo' value='this string is defined in template.'}
{$foo}
</pre>
{/literal}

Output:<br/>
<div class="result">
{assign var='foo' value='this string is defined in template.'}
{$foo}
</div>

------------------------------------------------------------
<h2>cycle </h2>
Smarty Source code:

{literal}
<pre class="code">
&#60;table border="1"  width="100"&#62;
 {section name=foo start=0 loop=10}
 &#60;tr bgcolor="{cycle values="#f0f0f0,#d0d0d0"}"&#62;
	&#60;td&#62;{$smarty.section.foo.rownum}&#60;/td&#62;
 &#60;/tr&#62;
 {/section}
&#60;/table&#62;
</pre>
{/literal}

Output:<br/>
<div class="result">
<table border="1"  width="100">
 {section name=foo start=0 loop=10}
 <tr bgcolor="{cycle values="#f0f0f0,#d0d0d0"}">
	<td>{$smarty.section.foo.rownum}</td>
 </tr>
 {/section}
</table>
</div>

------------------------------------------------------------
<h2>debug </h2>
------------------------------------------------------------
<h2>fetch</h2>
{*fetch file='http://www.baidu.com/'*}
------------------------------------------------------------
<h2>html_checkboxes</h2>
Smarty Source code:

{literal}
<pre class="code">
{html_checkboxes name='hobbies' options=$hobbies selected=$my_hobbies separator='&#60;br/&#62;'}
</pre>
{/literal}

Output:<br/>
<div class="result">
{html_checkboxes name='hobbies' options=$hobbies selected=$my_hobbies separator='<br/>'}
</div>
------------------------------------------------------------
<h2>html_checkboxes</h2>
Smarty Source code:

{literal}
<pre class="code">
{html_options name='foo' options=$hobbies selected=$my_hobbies}
</pre>
{/literal}

Output:<br/>
<div class="result">
{html_options name='foo' options=$hobbies selected=$my_hobbies}
</div>
------------------------------------------------------------
<h2>html_select_date, html_select_time</h2>
Smarty Source code:

{literal}
<pre class="code">
{html_options name='foo' options=$hobbies selected=$my_hobbies}
</pre>
{/literal}

Output:<br/>
<div class="result">
{html_select_date start_year=2007 end_year=2012} - {html_select_time use_24_hours=true}
</div>
{include file="footer.tpl"}





















