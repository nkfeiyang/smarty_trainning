{include file="header.tpl"}

<h1>贴吧列表</h1>

{foreach from=$row item=v}
<div class="list">
  <div class="list_title">
    <a href="?a=view&id={$v.id}">{$v.title}</a>    
  </div>  
</div>
{/foreach}

<hr />
<h1><a href="?a=add">添加帖子</a></h1>

{include file="footer.tpl"}