{include file="header_ref.tpl"}

<h1>贴吧列表</h1>

<div id="thread_list">
  <table width="100%" cellspacing="0">
   <thead>
     <tr>
		<th nowrap="nowrap" width="30">点击</th>
		<th nowrap="nowrap" width="30">回复</th>
		<th>标题</th>
		<th width="100">作者</th>
		<th width="135">发表时间</th>
	  </tr>		
   </thead>
   <tbody>
	{foreach from=$row item=v}
	<tr class="{cycle values="'', thread_alt"}">	  
	  <td>{$v.click}</td>
	  <td>{$v.reply_count}</td>
	  <td class="thread_title"><a href="?a=view&id={$v.id}">{$v.title}</a></td>
	  <td>{if $v.author == ''}{$v.ip}{else}{$v.author}{/if}</td>
	  <td>{$v.create_time|date_format:"%m-%d %H:%M"}</td>
	</tr>	
	{/foreach}
	</tbody>
  </table>
</div>
<div>
共有主题数{$row|@count}个
</div>

<h1><a href="?a=add">添加帖子</a></h1>

{include file="footer.tpl"}