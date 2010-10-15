{include file="header.tpl"}

<h1>贴吧列表</h1>

{foreach from=$row item=v}
<div class="list">
  <div class="list_title">
    <h3><a href="?a=view&id={$v.id}">{$v.title}</a></h3>
    <a href="javascript:if(window.confirm('Do you want to delete it?')) window.location.href='?a=delete&id={$v.id}'">Delete</a>
    <a href="?a=edit&id={$v.id}">Edit</a>
  </div>
  
</div>
{/foreach}

<hr />
<h1><a href="?a=add">添加帖子</a></h1>

{include file="footer.tpl"}