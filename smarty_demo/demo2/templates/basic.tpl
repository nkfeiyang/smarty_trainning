{* Here is a comment *}
<html>
<head>
<title>{$title}</title>
</head>
<body>

{* another single line smarty comment *}

<!-- HTML comment, that is sent to the browser -->

{* This is a multiline 
   smarty comment
*}

<br/>
<h3>Math: 双引号里值的嵌入</h3><br/>
{$quote}<br/>
{'RESULT:$quote'}<br/>
{"RESULT:$quote"}<br/>




<h3>Math: </h3><br/>
{literal}{$foo} + 1{/literal} : {$foo} + 1   <br/>
{literal}{$foo}+1{/literal} : {$foo+1}     <br/>
{literal}{$foo*$bar}{/literal} : {$foo*$bar}     <br/>



<h3>Escaping Smarty Parsing
</h3>
{literal}
{$foo}
{/literal}

<script type="text/javascript">

function showValue() {ldelim}
	alert("The value of $foo is defined on server side : " + {$foo});
{rdelim}

showValue();
</script>
</body>
</html>