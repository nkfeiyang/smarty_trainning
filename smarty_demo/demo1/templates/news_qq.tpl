{include file="news_qq_header.tpl"}

<div class="hd">
<h1>{$headline}</h1>

<div class="titBar">
<div class="info">{$time}<span class="infoCol"><span class="where"><a target="_blank" href="http://gzdaily.dayoo.com/">{$author}</a></span><span class="auth">薛松</span></span><a href="#" id="cmt_1">我要评论<span class="num">(<em id="comNum">0</em>)</span></a>
</div>
<div class="fontSize">字号：<span class="small" title="切换到小字体" id="fontSmall">T</span>|<span class="big" title="切换到大字体" id="fontBig">T</span>
</div>
</div>

</div>
<div class="bd">
<p class="Introduction">[<strong>导读</strong>]{$body|truncate:300}</p>
<div id="Cnt-Main-Article-QQ">
{$body}
</div>
</div>

{include file="news_qq_footer.tpl"}