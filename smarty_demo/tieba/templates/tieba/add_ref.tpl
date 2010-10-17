{include file="header_ref.tpl"}
{literal}
<script>
function check()
{
  if (document.form.add_article.title == ''){
	alert("A");
	return false;
  }
  return true;
}
</script>
{/literal}
<h1>发表新帖</h1>

<form action="?a=save" name="add_article" method="post" onsubmit="return check();">
  <label><span>标　题: </span><input type="text" class="txt" name="title" value="{$row.title}"/></label>
  <label><span>内　容: </span><textarea name="content">{$row.content}</textarea></label>
  <label><span>作　者: </span><input type="text" class="txt" name="author" value="{$row.author}" style="width:90px;"/></label>
  <input type="hidden" name="id" value="{$row.id}" />
  <label><input type="submit" value="发表" /></label>
</form>

<h1><a href="?">返回帖子列表</a></h1>

{include file="footer.tpl"}