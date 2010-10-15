{include file="header.tpl"}

<form action="?a=save" method="post">
  <label><span>标　题: </span><input type="text" class="txt" name="title" value="{$row.title}"/></label>
  <label><span>内　容: </span><textarea name="content">{$row.content}</textarea></label>
  <label><span>作　者: </span><input type="text" class="txt" name="author" value="{$row.author}" style="width:90px;"/></label>
  <input type="hidden" name="id" value="{$row.id}" />
  <label><input type="submit" value="发表" /></label>
</form>
<hr/>
<h1><a href="?">返回留言列表</a></h1>

{include file="footer.tpl"}