{include file="header.tpl"}


<h1>变量{$title}学习</h1>
<hr>
<br/>
<h2>基本: </h2>
Smarty Source code:

{literal}
<pre class="code">
My name is {$username}.
</pre>
{/literal}

Output:<br/>
<div class="result">
My name is {$username}.
</div>
<br/>




<h2>Smarty中引用关联数组: </h2>
获取关联数组中的元素，可以用符号'<span class="red f24">.</span>'来获得：<br/>
数组在PHP中的定义:<br/>
<pre class="code">
  $smarty->assign("contactinfo",
			array("cname" => "张三",
				  "email" => "zhangsan@abc.com",
				  "phone" => array("work" => "010-82339999-123",
									"cell" => "13912345678"
								)
				  )
			);
</pre>


Smarty Source code:

{literal}
<pre class="code">
<b>联系方式：</b><br/>
中文名：{$contactinfo.cname} <br/>
邮件：{$contactinfo.email} <br/>
工作电话：{$contactinfo.phone.work} <br/>
手机：{$contactinfo.phone.cell} <br/>
</pre>
{/literal}

Output:<br/>
<div class="result">
<b>联系方式：</b><br/>
中文名：{$contactinfo.cname} <br/>
邮件：{$contactinfo.email} <br/>
工作电话：{$contactinfo.phone.work} <br/>
手机：{$contactinfo.phone.cell} <br/>
</div>
<br/>



<h2>Smarty中引用数组索引: </h2>
可以用索引来访问数组，注意数组下表从0开始：<br/>
数组在PHP中的定义:<br/>
<pre class="code">
  $smarty->assign("contactinfo2",
			array("李四",
				  "zhangsan@abc.com",
				  array("010-82339999-123",
						"13912345678"
						)
				  )
			);
</pre>


Smarty Source code:

{literal}
<pre class="code">
<b>联系方式：</b><br/>
中文名：{$contactinfo2[0]} <br/>
邮件：{$contactinfo2[1]} <br/>
工作电话：{$contactinfo2[2][0]} <br/>
手机：{$contactinfo2[2][1]} <br/>
</pre>
{/literal}

Output:<br/>
<div class="result">
<b>联系方式：</b><br/>
中文名：{$contactinfo2[0]} <br/>
邮件：{$contactinfo2[1]} <br/>
工作电话：{$contactinfo2[2][0]} <br/>
手机：{$contactinfo2[2][1]} <br/>
</div>
<br/>




<h2>Smarty中引用对象的属性: </h2>
用符号'<span class="red f24">.</span>'：<br/>
对象在PHP中的定义:<br/>
{literal}
<pre class="code">
  class User {
	public $cname;
	public $email;
	public $phone_work;
	public $phone_cell;
	function __construct(){
		$this->cname = "王五";
		$this->email = "ww@sina.com";
		$this->phone_work = "010-82339999-123";
		$this->phone_cell = "13912345678";
	}
  }
  $smarty->assign("contactinfo3", new User());
</pre>
{/literal}

Smarty Source code:

{literal}
<pre class="code">
<b>联系方式：</b><br/>
中文名：{$contactinfo3->cname} <br/>
邮件：{$contactinfo3->email} <br/>
工作电话：{$contactinfo3->phone_work} <br/>
手机：{$contactinfo3->phone_cell} <br/>
</pre>
{/literal}

Output:<br/>
<div class="result">
<b>联系方式：</b><br/>
中文名：{$contactinfo3->cname} <br/>
邮件：{$contactinfo3->email} <br/>
工作电话：{$contactinfo3->phone_work} <br/>
手机：{$contactinfo3->phone_cell} <br/>
</div>
<br/>

{include file="footer.tpl"}
