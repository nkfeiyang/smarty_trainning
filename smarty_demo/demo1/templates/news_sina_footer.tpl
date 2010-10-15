{literal}
<!-- 发表评论 begin -->

			<div class="blkComment" style="overflow:hidden;zoom:1;">
				<!-- $ {080721评论留言链接} -->
							<style>            .blkComment p a:link{text-decoration:none}			.blkComment p a:hover{text-decoration:underline}			</style>			<p></p>
			</div>
			<!-- 发表评论 end -->
                        <div style="overflow:hidden;zoom:1;margin-left:20px" class="otherContent_01">
	<style type="text/css">
	.corrTxt_01{border-top:1px dashed #C8D8F2;margin-top:-1px;}
	.corrTxt_01 h3{font-weight:bold;padding:5px 0 0 3px;line-height:25px;margin:0;font-size:14px;}
	.corrTxt_01 ul{padding:0 0 20px 18px;}
	.corrTxt_01 ul li{font-size:14px;line-height:164.28%;}
	.corrTxt_01 ul li a:link,.corrTxt_01 ul li a:visited{text-decoration:none;}
	.corrTxt_01 ul li a:hover{text-decoration:underline}
	</style>

</div>

			<!-- $ {AD_助威中国} -->

			<!-- 内容底部搜索 begin -->
			<div class="blkContentBtmSearch">
				<div class="btmSearch">
					<script type="text/javascript">
					    function chgSearchType(Id){
                        for(var i=1;i<=3;i++){
                            if(GetObj("sTb"+i)){
                                GetObj("sTb"+i).style.display = "none";
                            }
                        }
                        if(GetObj("sTb"+Id)){
                            GetObj("sTb"+Id).style.display = "block";
                            if(Id==3){
                              GetObj("hotwords").style.display = "none";
                              GetObj("pbg").innerHTML = '';    
                            }else    if(Id==2){
                                GetObj("hotwords").style.display = "none";
                                GetObj("pbg").innerHTML = '<a href="http://iask.com" target="_blank" style="text-decoration:none;">爱问(iAsk.com)</a>';
                            }else if(Id==1){
                                if(GetObj("hotwords_link").innerHTML == ""){
                                    GetObj("hotwords").style.display = "none";
                                }else{
                                    GetObj("hotwords").style.display = "block";
                                }
                                GetObj("pbg").innerHTML = '';
                            }
                        }
                    }
					</script>
					<script type="text/javascript">
					function checkSearchValue1_2(){
						if(document.gform2.q.value=="请输关键词"||document.gform2.q.value=="请输入关键字"||document.gform2.q.value==""){
							document.gform2.q.value="";
						}
						document.gform2.channel.value = "contentsearchblow";
						return true;
					}
					</script>

					<script type="text/javascript">
					function checkSearchValue2_2(){
						if(document.sb02_2.k.value=="请输入关键字"||document.sb02_2.k.value==""){
							window.open("http://n.iask.com");
							return false;
						}
						return true;
					}
                           function checkSearchValue3_2(){
                        if(document.picsb02_2.q.value=="请输入关键字"||document.picsb02_2.q.value==""){
                               window.open("http://search.sina.com.cn/img");                    

                            return false;
                        }
                        return true;
                    }
					</script>
			<table cellspacing="0" width="589">
			<tr align="left" valign="middle">
			<td>
				<table cellspacing="0">
				<tr align="left" valign="middle">
				<td width="19"><input type="radio" name="selectSearchType" id="st1" checked="checked" onClick="chgSearchType(1);"/></td>
				<td width="27"><label for="st1">网页</label></td>

				<td width="19"><input type="radio" name="selectSearchType" id="st2" onClick="chgSearchType(2);"/></td>
				<td width="30"><label for="st2">新闻</label></td>
<td width="19"><input type="radio" name="selectSearchType" id="st3" onClick="chgSearchType(3);"/></td>
				<td width="30"><label for="st3">图片</label></td>
				</tr>
				</table>
			</td>
			<td>

			<div id="sTb1">
     <form onSubmit="return checkSearchValue1_2();" name="gform2" method="get" action="http://keyword.sina.com.cn/searchword.php" target="_blank">
     <input type="hidden" name="client" value="aff-sina" />
     <input type="hidden" name="ie" value="gb"/>
     <input type="hidden" name="oe" value="utf8"/>
     <input type="hidden" name="hl" value="zh-CN"/>
     <input type="hidden" name="channel" value="contentsearchblow"/>
     <table cellspacing="0">
     <tr align="left" valign="middle">

     <td width="116"><input type="text" name="q" value="" maxlength="255" onClick="this.value='';" style="width:108px; font-size:12px; text-indent:3px;line-height:18px;"/></td>
	 <td width="5"></td>
     <td width="45"><input type="submit" value="搜索" style="text-align:center; width:48px; height:20px; font-size:12px;"/></td>
     </tr>
     </table>
     </form>
    </div>
    <div id="sTb2" style="display:none;">
     <form onSubmit="return checkSearchValue2_2();" action="http://iask.com/n" name="sb02_2" target="_blank">

     <table cellspacing="0">
     <tr align="left" valign="middle">
     <td width="116"><input type="text" name="k" value="智利矿工 救援 " maxlength="255" onClick="this.value='';" style="width:108px; font-size:12px; text-indent:3px; line-height:18px;"/></td>
	 <td width="5"></td>
     <td width="45"><input type="submit" value="搜索" style="text-align:center; width:48px; height:20px; font-size:12px;"/></td>
     </tr>
     </table>
     </form>
    </div>

<div id="sTb3" style="display:none;">

     <form onSubmit="return checkSearchValue3_2();" method="get" action="http://search.sina.com.cn/" name="picsb02_2" target="_blank">
     <table cellspacing="0">
     <tr align="left" valign="middle">
     <td width="116"><input type="text" name="q" value="智利矿工 救援 " maxlength="255" onClick="this.value='';" style="width:108px; font-size:12px; text-indent:3px; line-height:18px;"/></td>
	 <td width="5"></td>
     <td width="45"><input type="submit" value="搜索" style="text-align:center; width:48px; height:20px; font-size:12px;"/></td>
     </tr>
     </table>

      <input id="controller" type="hidden" value="img" name="c" />
     </form>

    </div>
			</td>
			<td width="266" align="left">
				<table cellspacing="0" width="100%">
				<tr align="left" valign="middle">
				<td style="text-align:left;" id="pbg"></td>

				<td width="5"></td>
				</tr>
				</table>
			</td>
			</tr>
			</table>
			<!--热搜代码-->
			<style type="text/css">
			#hotwords a:link,#hotwords a:visited{text-decoration:none;}
			#hotwords a:hover,#hotwords a:active{text-decoration:underline;}
			</style>

			<div id="hotwords" style="height:20px; overflow:hidden; margin:10px 0 0 0; display:none;">
				<table width="100%" cellspacing="0" style="border:1px #AFB7C4 solid; border-left-width:3px; background:#fff;">
				<tr>
				<td width="92" style="border-right:1px #AFB7C4 solid; background:#ECEDE8; line-height:16px; padding-top:2px; text-align:center;"><a href="http://www.google.com.hk/webhp?lr=&client=aff-sina&ie=gb&oe=utf8&hl=zh-CN&channel=contentrelatedsearch" target="_blank" style="color:#5C6063; text-decoration:none;">相关热词搜索</a></td>
				<td style="text-align:left; padding:2px 0 0 10px; line-height:16px;"><div id="hotwords_link"></div></td>
				</tr>
				</table>
			</div>

		</div>
			</div>
			<!-- 内容底部搜索 end -->

			<!-- 保存功能调用的js begin -->
			<script type="text/javascript" src="http://news.sina.com.cn/iframe/js/sinasavepage.js"></script>
			<!-- 保存功能调用的js end -->

			<!-- 其它功能 begin -->

			<div class="blkOtherFunction">
				<div class="blkOtherFunction_1">
					<span class="blkMessageBoard"><a href="http://comment4.news.sina.com.cn/comment/skin/feedback.html" target="_blank">留言板</a></span><span class="blkPhoneNum"><a href="javascript:void(0)" id="fxwb01" style="text-decoration:none;color:#636161;cursor:default;">电话</a>：010-82612286</span>
<!-- weibo begin -->
<script type="text/javascript">
//<![CDATA[
 var sendT = {
	getHeader : function(){
		var g_title=document.getElementById("artibodyTitle").innerHTML;
		var re = /<[^<>]*?font[^<>]*?>/gi;
		g_title = g_title.replace(re,"");
		return g_title;
	},
	getFirstImgSrc : function(){
		if (document.getElementById("artibody").getElementsByTagName("img")[0] && document.getElementById("artibody").getElementsByTagName("img")[0].width > 100)
		{
			return document.getElementById("artibody").getElementsByTagName("img")[0].src;
		}
		else
		{
			return null;
		}

	}
}
 document.getElementById("fxwb01").onclick=function(){
 (function(s,d,e,r,l,p,t,z,c){
	 var f='http://v.t.sina.com.cn/share/share.php?',u=z||d.location,p=['url=',e(u),'&title=',e(sendT.getHeader()),'&source=',e(r),'&sourceUrl=',e(l),'&content=',c||'gb2312','&pic=',e(p||'')].join('');
	 function a(){if(!window.open([f,p].join(''),'mb',['toolbar=0,status=0,resizable=1,width=440,height=430,left=',(s.width-440)/2,',top=',(s.height-430)/2].join('')))u.href=[f,p].join('');
	 };
	 if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);else a();
})(screen,document,encodeURIComponent,'新浪新闻中心','http://news.sina.com.cn/',sendT.getFirstImgSrc(),null,null,null);
}
//]]>
</script>
<!-- weibo end -->
				</div>
				<div class="blkOtherFunction_2"><a href="javascript:SinaSavePage.save();">保存</a></div>

				<div class="blkOtherFunction_2"><a href="javascript:LoadFullViewJs();">全文浏览</a></div>
				<div class="blkOtherFunction_3"><a href="javascript:doZoom(16)">大</a> <a href="javascript:doZoom(14)">中</a> <a href="javascript:doZoom(12)">小</a></div>
				<div class="blkOtherFunction_4"><a href="javascript:LoadPrintJs();">打印</a></div>
				<div class="blkOtherFunction_5"><a href="javascript:window.close()">关闭</a></div>
				<div class="blkOtherFunction_6"><a href="http://news.sina.com.cn/" target="_blank">返回首页</a></div>

			</div>
			<!-- 其它功能 end -->

			<!-- 评论入口 begin -->
			<!-- 评论入口 end -->

			<div class="HSpace_nbg_10"></div>
		</div>
		<!-- 正文块 end -->

		<!-- 留言放出 begin -->
		<!-- 留言放出 begin -->
<!-- 评论入口 begin -->
<div id='comment_wrapper'></div>
<!-- 评论入口 end-->

<!-- 评论加载 begin  建议放在右侧第一屏广告下面-->
<script charset="UTF-8" type="text/javascript" src="http://i.sso.sina.com.cn/js/sinaSSOManager.js"></script>
<script type="text/javascript" src="http://comment.sinajs.cn/cmnt_embed_v5.js"></script>
<script type="text/javascript">

	// 页面如有特殊需求，定义并执行此回调函数
	function cmnt_callback_2010() {
		try {
			var count = this.get_count();
			if (count > 0) {
				var show_top = document.getElementById("comment_t_show_top");
				if (show_top) {
					show_top.getElementsByTagName("a")[0].innerHTML = "已有<span style='color:red'>" + count + "</span>人参与";
				}
			}
		}catch(e){}
	}	

	/*
	 *sinaCMNT.embed.init(params)
	 *params：对象参数
	 *必填：
	 *container:页面div容器; theme:主题(blue,pink,gray);show:显示模式(0:全部,1:入口和发表框,2:入口);
	 *channel:频道号;newsid:新闻id;
	 *可选：
	 *group:是否专题;page:初始页号;pagesize:页大小(5/10/20);host:主机域名;
	 */
	sinaCMNT.embed.init({container:"comment_wrapper",theme:"blue",show:1,channel:"gn",newsid:"1-1-21267396",group:0,callback:cmnt_callback_2010});
</script>
<!-- 留言放出 end -->

		<!-- 留言放出 end -->

		<div class="line_c8d8f2_1px"></div>
		<div class="HSpace_10"></div>

		<!-- Google 广告 begin -->
			<!-- google begin -->
	<div id="GoogleAd"></div>
	<!-- google end -->

		<!-- Google 广告 end -->

		<div class="HSpace_10"></div>

		<!-- 广告开始 -->
		<div class="Ad_01 adNone" id="PublicRelation6" style="text-align:center;">
			<!-- 585x90中医成果 开始 -->
<style type="text/css">
#zghc5{padding:0 0 3px 65px;color:#009;width:566px;overflow:hidden;}
#zghc5 a{color: #000;}
#zghc5_line{clear:both;height:0px;border-top:1px solid #dfe1e0;height:3px;margin-bottom:2px;line-height:0;font-size:0;position:relative}
#zghc5_line img{position:absolute;left:27px;top:-50px;}
</style>
<div id="gen_zghc"></div>
<script type="text/javascript" src="http://rm.sina.com.cn/bj-icast/jiaqing/chinesemedicine/gen_zycg0901.js"></script>

<!-- 585x90中医成果 结束 -->

<!--585x90轮播通栏 开始 -->
<div id="ad_17995"></div>
<script language="javascript" type="text/javascript" src="http://d2.sina.com.cn/d1images/button/rotator.js"></script>
<script language="javascript" type="text/javascript">
//<![CDATA[
var rad = new Array();
var nad = new Array();
rad.width = 585; //广告宽度
rad.height = 90; //广告高度
rad.num = 2; //轮播数量

<!--ADS:begin=PDPS000000017995:{5B26127C-7CE9-456F-889E-74AE5B5237FA}-->

<!--4720F4FD496E-->//商业广告(flash)
rad.push(["http://d5.sina.com.cn/201003/31/217113_58590.swf", "", "<startdate></startdate>", "<enddate></enddate>", "2261352"]);<!--$$ 1498/2010-04-01 ~  2010-04-9/B $-->

<!--33468F73EF6C-->//商业广告(flash)
rad.push(["http://d3.sina.com.cn/201006/17/232653_585x90.swf", "", "<startdate>2010-10-12</startdate>", "<enddate>2010-10-12</enddate>", "2460856"]);<!--$$ 奚稼清/2010-10-12 ~ 2010-10-12/A $-->

<!--21AC73148F65-->//商业广告(flash)
rad.push(["http://d3.sina.com.cn/201006/17/232653_585x90.swf", "", "<startdate>2010-10-13</startdate>", "<enddate>2010-10-13</enddate>", "2462016"]);<!--$$ 奚稼清/2010-10-13 ~ 2010-10-13/A $-->

<!--ADS:end-->

//垫底广告
<!--垫底广告开始-->
<!--ADS:PDPS000000017995_1-->
nad.push(["http://d3.sina.com.cn/201006/12/231722_585-90.gif", "http://tech.sina.com.cn/notebook/search.html"]);

nad.push(["http://d3.sina.com.cn/201006/12/231722_585-90.gif", "http://tech.sina.com.cn/notebook/search.html"]);

<!--垫底广告结束-->

new RotatorAD(rad,nad,'ad_17995');
//]]>
</script>
<!-- 585x90轮播通栏 结束 -->
<style type="text/css">
#ghc3{padding:0 0 3px 65px;color:#009;width:566px;overflow:hidden;}
#ghc3_line{clear:both;height:0px;border-top:1px solid #dfe1e0;height:3px;margin-top:5px;line-height:0;font-size:0;position:relative;}
#ghc3_line img{position:absolute;left:27px;top:6px;}
</style>
<div id="ghc3_line"><a href="http://www.78.cn/247.htm" target="_blank"><img src="http://d3.sina.com.cn/litong/huangxu/zhongshi/xinwenny/zswm_zty_logo.jpg" /></a></div>
<div id="ghc3" align="center"></div>
		</div>
		<!-- 广告结束 -->

		<div class="HSpace_10"></div>		

		<!-- 今日推荐 begin -->
						<div class="MTitle_01">
			<h2 class="title">相关专题 <a href="http://news.sina.com.cn/z/Chilekn2010/index.shtml" target="_blank">智利矿难33名矿工被困</a></h2>
		</div>

		<div class="MTitle_01">
			<h2 class="title">更多关于&nbsp;<a href="http://iask.com/n?k=%D6%C7%C0%FB%BF%F3%B9%A4%20%BE%C8%D4%AE%20&sc=%D0%C2%C0%CB%CD%F8" target="_blank" class="fred">智利矿工 救援 </a>&nbsp;的新闻</h2>

		</div>
		<!-- 1 begin -->
		<div class="Mblk_01">
			<div class="b_left">
				<ul class="list_009_f14">
					<li><a href="http://news.sina.com.cn/w/2010-10-13/134221267366.shtml" target=_blank>智利第三名被困矿工获救出井</a><font color=gray>  2010-10-13 13:42 </font></li><li><a href="http://news.sina.com.cn/w/2010-10-13/133121267295.shtml" target=_blank>第三名矿工戴特质墨镜成功升井</a><font color=gray>  2010-10-13 13:31 </font></li><li><a href="http://news.sina.com.cn/w/2010-10-13/132921267289.shtml" target=_blank>第二名矿工升井后向救援人员分发含金矿石</a><font color=gray>  2010-10-13 13:29 </font></li><li><a href="http://news.sina.com.cn/w/2010-10-13/132621267275.shtml" target=_blank>智利总统夫人抱住并安抚第三名升井矿工妻子</a><font color=gray>  2010-10-13 13:26 </font></li><li><a href="http://news.sina.com.cn/w/2010-10-13/132418225639s.shtml" target=_blank>智利第二名升井矿工用含金粒矿石答谢救援人员</a><font color=gray>  2010-10-13 13:24 </font></li>

				</ul>
			</div>
		</div>

		<!-- 今日推荐 end -->

		<div class="HSpace_10"></div>
		<div class="adNone" id="PublicRelation5">
			<!-- 图铃下载&新浪公益&电子杂志 begin -->
			<!-- 图铃下载&新浪公益&电子杂志 begin -->

<div class="M_Menu_01">
	<label id="S_Label_02_01" class="selected">图铃下载</label>
	<label id="S_Label_02_02">新浪公益</label>
</div>
<div class="Mblk_03">
	<ul class="list_009_f14" id="S_Cont_02_01">
		<li>
<a href="http://sms.sina.com.cn/magazine/mms/news.html">【杂志】</a> 
<a href="http://sms.sina.com.cn/magazine/mms/entertainments.html" target="_blank">推荐娱乐新闻</a>

</li>
<li>
<a href="http://sms.sina.com.cn/magazine/mms/sports.html" target="_blank">新版手机杂志更多选择</a>
</li>

<li>
<a href="http://bf.sina.com.cn" target="_blank">【铃声】</a> 
<a href="http://bf.sina.com.cn/sinarc_php/ringpre.php?from=464&aid=1322&id=28105010" target="_blank">我赚钱了续集</a>
</li> 
<li>
<a href="http://bf.sina.com.cn/sinarc_php/ringpre.php?from=464&aid=1322&id=28111207" target="_blank">变心的玫瑰</a> <a href="http://bf.sina.com.cn/sinarc_php/ringpre.php?from=464&aid=1322&id=28109752" target="_blank">我是个好老婆</a></li>

<li>
<a href="http://sms.sina.com.cn" target="_blank">【手机】</a> 
<a href="http://bf.sina.com.cn/newbf/zt/ysqm.html" target="_blank">设计个性化签名</a>
</li>
<li>
<a href="http://diy.sina.com.cn/cardshow.php?cid=203" target="_blank">创意贺卡送出你的祝福</a> 
</li>

<li>
<a href="http://diy.sina.com.cn/cardshow.php?cid=122" target="_blank">【贺卡】</a> 
<a href="http://diy.sina.com.cn/cardshow.php?cid=4" target="_blank">生日祝福贺卡</a>

</li>
<li>
<a href="http://diy.sina.com.cn/cardshow.php?cid=1" target="_blank">财源滚滚</a> 
<a href="http://diy.sina.com.cn/cardshow.php?cid=203" target="_blank">祝天长地久</a>
</li>

<li>
<a href="http://bf.sina.com.cn" target="_blank">【图片】</a> 
<a href="http://bf.sina.com.cn/pic/114_27133997_464.html" target="_blank">超可爱活泼少女</a>
</li>
<li>
<a href="http://bf.sina.com.cn/pic/113_27133464_464.html" target="_blank">性感申敏</a> 

<a href="http://bf.sina.com.cn/pic/114_27130680_464.html" target="_blank">浪漫</a> 
<a href="http://bf.sina.com.cn/pic/114_27134050_464.html" target="_blank">气喘吁吁</a>
</li>

<li>
<a href="http://sms.sina.com.cn/mobiledo/theme/index.php" target="_blank">【主题】</a> 
<a href="http://sms.sina.com.cn/mobiledo/theme/down.php?from=0&tagid=1&sid=44862" target="_blank">甜蜜蜜2之一伞</a> 
</li> 
<li>
<a href="http://sms.sina.com.cn/mobiledo/theme/down.php?from=0&tagid=1&sid=44286" target="_blank">同床共枕</a> 
<a href="http://sms.sina.com.cn/mobiledo/theme/down.php?from=0&tagid=6&sid=34504" target="_blank">跑车</a> <a href="http://sms.sina.com.cn/mobiledo/theme/down.php?from=0&tagid=2&sid=44733" target="_blank">手绘美女</a> 

</li>

<li>
<a href="http://sms.sina.com.cn/zhuanti.html" target="_blank">【专题】</a> 
<a href="http://sms.sina.com.cn/act/091222/xixin.html " target="_blank">照片会动你信吗</a>
</li>
<li>
<a href="http://sms.sina.com.cn/magazine/mms/news.html" target="_blank">最新资讯就看手机杂志</a>
</li>

<li>
<a href="http://sms.sina.com.cn/xuyuan.html" target="_blank">【许愿】</a> 
<a href="http://sms.sina.com.cn/xuyuan.html" target="_blank">祈福许愿墙</a>

</li>
<li>
<a href="http://bf.sina.com.cn/newbf/zt/ysqm.html" target="_blank">签出真我风采</a> 
<a href="http://sms.sina.com.cn/act/loveyou1.html" target="_blank">我喜欢你</a>
</li>

	</ul>
	<ul class="list_009_f14" id="S_Cont_02_02" style="display:none;">
		<li><a href="http://gongyi.sina.com.cn/lssh/2010-01-18/123215009.html" target="_blank">阿凡达的环境启示</a></li>
<li><a href="http://gongyi.sina.com.cn/greenlife/2010-01-19/105915035.html" target="_blank">垃圾分类并非不解之题</a></li>

<li><a href="http://gongyi.sina.com.cn/gyzx/2010-01-19/162515043.html" target="_blank">是否该禁止烟草业捐赠</a></li>
<li><a href="http://gongyi.sina.com.cn/axrw-3/2010-01-20/091015046.html" target="_blank">卡卡齐达内为海地义赛</a></li>
<li><a href="http://gongyi.sina.com.cn/greenlife/2010-01-20/104715056.html" target="_blank">低碳不是发电脑的理由</a></li>
<li><a href="http://gongyi.sina.com.cn/gyzx/2010-01-20/092515048.html" target="_blank">甲流困难群体可获救助</a></li>
<li><a href="http://gongyi.sina.com.cn/gyzx/2010-01-19/144915042.html" target="_blank">校长下跪为母亲洗脚</a></li>
<li><a href="http://gongyi.sina.com.cn/gyzx/2010-01-12/110514930.html" target="_blank">卖豆饼老太捐8000元</a></li>
<li><a href="http://gongyi.sina.com.cn/gyzx/2010-01-05/113914798.html" target="_blank">亿万富翁的中国式慈善</a></li>
<li><a href="http://gongyi.sina.com.cn/gyzx/2010-01-12/094014923.html" target="_blank">八旬老人摔倒无人敢扶</a></li>
<li><a href="http://gongyi.sina.com.cn/lssh/2010-01-18/091514997.html" target="_blank">八达岭景区禁止车辆驶入</a></li>

<li><a href="http://gongyi.sina.com.cn/greenlife/2010-01-19/111315036.html" target="_blank">脱裤子为宣传环保？</a></li>
<li><a href="http://gongyi.sina.com.cn/gyzx/2009-12-14/140714441.html" target="_blank">极端高温事件将更频繁</a></li>
<li><a href="http://gongyi.sina.com.cn/greenlife/2010-01-19/114215037.html" target="_blank">天价"野米"一斤超百元</a></li>
<li><a href="http://gongyi.sina.com.cn/greenlife/2010-01-18/184615027.html" target="_blank">无纺布还不如塑料袋</a></li>
<li><a href="http://gongyi.sina.com.cn/greenlife/2010-01-20/100215053.html" target="_blank">哥本哈根刚走酷寒就来</a></li>
	</ul>
</div>
<script language="javascript" type="text/javascript">
<!--//--><![CDATA[//><!--
var SubShow_02 = new SubShowClass("none","onmouseover");
SubShow_02.addLabel("S_Label_02_01","S_Cont_02_01");
SubShow_02.addLabel("S_Label_02_02","S_Cont_02_02");
//--><!]]>
</script>
<!-- 新浪公益&电子杂志 end -->
			<!-- 新浪公益&电子杂志 end -->

			<div class="HSpace_10"></div>

			<!-- 企业服务 begin -->
			<!-- 企业服务 beign -->
<style type="text/css">
<!--
.qyfwBlk{clear:both;width:638px;margin:0 auto;text-align:left;border:1px solid #d4e3f6;background:#fff;border-bottom:none;}
.qyfwBlk a{text-decoration:underline;}
.qyfwBlk a:link{color:#009;}
.qyfwBlk a:visited{color:#800080;}
.qyfwBlk a:hover,a:active,a:focus{color:#f00;}
.qyfwBlk ul{list-style-type:none;}
.qyfwBlk li{display:block;}
.qyfwBlk h1{clear:both;height:25px;border-bottom:1px solid #d4e3f6;line-height:25px;font-size:14px;font-weight:bold;background:url(http://d5.sina.com.cn/litong/huangxu/zhongshi/xinwenny/zswm_zty_bg1.jpg) repeat-x #fafdfe;}
.qyfwBlk h1 .tit1{float:left;display:inline;width:85px;height:25px;border-right:1px solid #c2cbd2;background:url(http://d1.sina.com.cn/litong/huangxu/zhongshi/xinwenny/zswm_zty_bg2.jpg) repeat-x #f5f9ff;line-height:25px;font-size:14px;text-align:center;}
.qyfwBlk h1 .tit1 a:link,.qyfwBlk h1 .tit1 a:visited{color:#000;text-decoration:none;}
.qyfwBlk h1 .tit1 a:hover,.qyfwBlk h1 .tit1 a:active{color:#c00;text-decoration:underline;}
.qyfwBlk h1 .tit2{float:left;display:inline;width:500px;height:25px;line-height:25px;font-size:12px;text-align:left;padding-left:8px;color:#75767a;}
.qyfwBlk h1 .tit2 a:link,.qyfwBlk h1 .tit2 a:visited{color:#75767a;text-decoration:none;}
.qyfwBlk h1 .tit2 a:hover,.qyfwBlk h1 .tit2 a:active{color:#c00;text-decoration:underline;}
.qyfwBlk .conBlk{clear:both;padding:5px 0 5px 8px;height:auto;_height:96px;min-height:96px;color:#009;}
.qyfwBlk .conBlk li{float:left;display:inline;width:155px;height:24px;line-height:24px;padding-left:2px;}
.qyfwBlk .conBlk li img{margin-left:4px;}
-->
</style>
<div class="qyfwBlk">
 <h1>
   <div class="tit1"><a href="http://ht.hao120.cc/yl_admin/getgo.php?id=1047" target="_blank">中视网盟</a></div>
   <div class="tit2"><a href="http://ht.hao120.cc/yl_admin/getgo.php?id=1048" target="_blank">久久健康网</a> / <a href="http://ht.hao120.cc/yl_admin/getgo.php?id=1049" target="_blank">久久健康商城</a> / <a href="http://ht.hao120.cc/yl_admin/getgo.php?id=1050" target="_blank">招商易</a></div>

 </h1>
<!-- 2010-9-26 开始 -->
<style type="text/css">
.qyfwBlk .zyconBlk{float: left;width: 295px;padding-left: 18px;padding-top: 10px;clear:none;}
.zypicBlk{width: 131px;float: left;margin-right: 5px;} 
.zypicBlk img{border: 1px solid #bfc2c7;}
</style>

<!-- 左侧开始 -->
<div class="conBlk zyconBlk">
   <div class="zypicBlk">
		<!--ADS:begin=PDPS000000021062:--><a href="http://ht.120top.com/yl_admin/getgo.php?idp=83" target="_blank"><img src="http://d1.sina.com.cn/201010/09/257222_pic1.jpg" border="0" width="130" height="90" /></a><!--$$ jiaqing/B $-->

 <!--ADS:end-->
   </div>

   <ul>
     <li>·<!--ADS:begin=PDPS000000009825:{BE46D754-BE1B-495E-B8BA-4B0321EA9DDC}--><!--0E58E4E4E96C-->
<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149563,188403,193381&cid=0,0,0&sid=181116&advid=5469&camid=25830&show=ignore&url=http://www.by995.com/zhongzhuan5" target="_blank">鼻炎--过敏鼻炎--可自愈</a>
<!--$$ huangxu/2010-10-1 ~ 2010-10-31/B $-->
<!--ADS:end--></li>
     <li>·<!--ADS:begin=PDPS000000009826:{A9DF6172-1765-429C-BFEC-FF0F96000073}--><!--8B61FF1AD21E-->
<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149559,188399,193377&cid=0,0,0&sid=181112&advid=5469&camid=25830&show=ignore&url=http://ht.120top.com/yl_admin/getgo.php?idp=80" target="_blank">男人补肾强肾--震撼秘方</a>
<!--$$ huangxu/2010-9-1 ~ 2010-9-30/B $-->

<!--ADS:end--></li>

     <li>·<!--ADS:begin=PDPS000000009827:{0E37BEA5-E519-42F0-A2BA-29A8F2FF2F97}--><!--BB152ACC86BD-->
<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149544,188384,193362&cid=0,0,0&sid=181097&advid=5469&camid=25830&show=ignore&url=http://ht.120top.com/yl_admin/getgo.php?idp=75" target="_blank">每年40万人因打呼噜猝死</a>
<!--$$ huangxu/2010-9-1 ~ 2010-9-30/B $-->

<!--ADS:end--></li>
     <li>·<!--ADS:begin=PDPS000000009828:{4CD94E18-97C4-4962-B532-E7717BC9FAA5}--><!--EFDFAA964048-->
<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149546,188386,193364&cid=0,0,0&sid=181099&advid=5469&camid=25830&show=ignore&url=http://ht.120top.com/yl_admin/getgo.php?idp=79" target="_blank">前列腺炎――可以自愈！</a>
<!--$$ huangxu/2010-9-1 ~ 2010-9-30/B $-->
<!--ADS:end--></li>
    </ul>    

</div>
<!-- 左侧结束 -->
<!-- 右侧开始 -->
<div class="conBlk zyconBlk">
   <div class="zypicBlk">
		<!--ADS:begin=PDPS000000021063:--><a href="http://ht.120top.com/yl_admin/getgo.php?idp=85" target="_blank"><img src="http://d4.sina.com.cn/201010/09/257224_pic2.jpg" border="0" width="130" height="90" /></a><!--$$ jiaqing/B $-->

 <!--ADS:end-->
   </div>
   <ul>
     <li>·<!--ADS:begin=PDPS000000009829:{0B4E07DB-A04B-4D27-9B6F-E4C20564E6EB}--><!--F9483CFED991-->

<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149551,188391,193369&cid=0,0,0&sid=181104&advid=5469&camid=25830&show=ignore&url=http://ht.120top.com/yl_admin/getgo.php?idp=77" target="_blank">风湿--类风湿--震撼秘方</a>
<!--$$ huangxu/2010-10-1 ~ 2010-10-31/B $-->
<!--ADS:end--></li>
     <li>·<!--ADS:begin=PDPS000000009830:{17211901-7C11-432B-AEDB-117EFBB421E2}--><!--7269CF79CA0E-->
<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149569,188409,193387&cid=0,0,0&sid=181122&advid=5469&camid=25830&show=ignore&url=http://ht.120top.com/yl_admin/getgo.php?idp=81" target="_blank">男人补肾强肾--特效秘方</a>
<!--$$ huangxu/2010-9-1 ~ 2010-9-30/B $-->

<!--ADS:end--></li>
     <li>·<!--ADS:begin=PDPS000000009831:{BC9834CA-8BD0-49B5-A8DF-BE7E3E9560DD}--><!--16F6062467B4-->
<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149539,188379,193357&cid=0,0,0&sid=181092&advid=5469&camid=25830&show=ignore&url=http://ht.120top.com/yl_admin/getgo.php?idp=78" target="_blank">睡觉减肥--瘦到你尖叫</a>

<!--$$ huangxu/2010-9-1 ~ 2010-9-30/B $-->

<!--ADS:end--></li>
    <li>·<!--ADS:begin=PDPS000000009832:{4C2BE5A4-A7DF-4E01-8A56-66AA40DEF47A}--><!--E39427A4A69C-->
<a href="http://sina.allyes.com/main/adfclick?db=sina&bid=149564,188404,193382&cid=0,0,0&sid=181117&advid=5469&camid=25830&show=ignore&url=http://ht.120top.com/yl_admin/getgo.php?idp=82" target="_blank">肝病神奇自愈--震惊美国</a>
<!--$$ huangxu/2010-10-1 ~ 2010-10-31/B $-->

<!--ADS:end--></li>    
   </ul>
 </div>
<!-- 右侧结束 -->
<!-- 2010-9-26 结束 -->
</div>

<!-- 企业服务 end -->

			<style type="text/css">
			.botSxBlk{clear:both;border-top:1px dashed #d2e3f5;border-bottom:1px solid #d2e3f5;line-height:30px;padding-left:9px;color:#009;height:28px;overflow:hidden;}
			.botSxBlk li{float:left;display:inline;width:155px;padding-left:2px;}
			</style>
			<div class="botSxBlk">
				<ul>
					<li>·<!--ADS:begin=PDPS000000004395:{B1E2617B-634E-4C00-843F-10C63241D3DB}--><a href=http://city.finance.sina.com.cn/city/wlmp.html target=_blank>城市热点节庆活动</a><!--nwy/net/A--> 

<!--ADS:end--></li>
					<li>·<!--ADS:begin=PDPS000000004396:{61656FAF-3FCE-480F-B59C-A9E6F62C1D15}--><a href=http://city.finance.sina.com.cn/city/dhcs.html target=_blank>新浪《对话城市》</a><!--nwy/net/A--> 


<!--ADS:end--></li>
					<li>·<!--ADS:begin=PDPS000000004397:{7D0CAE62-0F2A-47E8-BA0B-9AFE528E0032}--><a href=http://mail.sina.net/daili/daili.htm target=_blank>诚招合作伙伴</a><!--nwy/net/A-->

<!--ADS:end--></li>
					<li>·<!--ADS:begin=PDPS000000004398:{56DFCDD8-ED8A-479A-B44C-AA24C0D7DABA}--><a href="http://www.sinanet.com" target="_blank">新企邮上线更优惠</a><!--ae/net/A-->

<!--ADS:end--></li>
				</ul>
			</div>

			<!-- 企业服务 end -->
		</div>

	</div>
	<!-- 内容列 end -->

	<!-- 侧边栏 begin -->
	<div class="sidebar">

		<div class="HSpace_10"></div>

		<div class="adNone" id="PublicRelation2">
			<!--画中画0广告开始-->
<span><iframe id="pip00" frameborder="0" height="250" width="300" marginheight="0" marginwidth="0" scrolling="no" src="http://pfp.sina.com.cn/iframe/gn/2009-03-30/163355.html"></iframe></span>
<!--画中画0广告结束-->
		</div>

		<div class="HSpace_10"></div>

		<!-- 热门博客 begin -->
		<!-- <iframe src="http://pfp.sina.com.cn/iframe/21/2009/0911/2.html" width="300" height="329" frameborder="0" scrolling="no"></iframe> -->

		<iframe src="http://pfp.sina.com.cn/iframe/contentpfp/blog/book.html" width="300" height="329" frameborder="0" scrolling="no"></iframe>
		<!-- 热门博客 end -->	

		<div class="HSpace_10"></div>

		<div class="adNone" id="PublicRelation3">
			<table border=0 cellspacing=0 cellpadding=0 align=left>
	<tr><td>
<!--画中画广告开始-->
		<span><iframe id="pip01" frameborder="0" height="250" width="300" marginheight="0" marginwidth="0" scrolling="no" src="http://pfp.sina.com.cn/iframe/gn/2007-03-09/152915.html"></iframe></span>

<!--画中画广告结束-->
</td></tr></table>
		</div>
		<div class="HSpace_10"></div>
		<div class="adNone" id="PublicRelation8">
			<!--右侧灰框模式开始-->
			<style type="text/css">
			.RtTxtAD{border:1px #c6c6c6 solid; background:#f1f1f1; height:73px; overflow:hidden;}
			.RtTxtAD a:link,.RtTxtAD a:active{color:#000;}
			.RtTxtAD a:hover,.RtTxtAD a:active{color:#f00;}
			.RtTxtADTabs{float:left; overflow:hidden; color:#494D50; text-align:left; border:1px #F1F1F1 solid;}
			.RtTxtADTabs td{height:35px; overflow:hidden; line-height:14px; clear:both;}
			.RtTxtADTabs td span{display:block; padding:3px 0 0 3px; text-align:left;}
			</style>
			<!--[if IE]>
			<style type="text/css">
			.RtTxtAD{height:75px;}
			</style>
			<![endif]-->
			<div id=ghc2 align="center"> </div>

			<!--右侧灰框模式结束-->
<div class="split"></div>

		</div>
		<div class="HSpace_10"></div>

		<!-- 排行 begin -->
			<iframe src="http://news.sina.com.cn/iframe/485/2008/1127/11.html" width="300" height="219" frameborder="0" scrolling="no"></iframe>
		<!-- 排行 end -->

		<!-- 中医成果 begin -->
		<div class="adNone" id="PublicRelation10">
		<iframe src="http://pfp.sina.com.cn/iframe/no/2010-08-31/1539111.html" width="300" height="122" frameborder="0" scrolling="no"></iframe>
		</div>
		<!-- 中医成果 end -->

		<!-- 专题begin -->
				<iframe src="http://news.sina.com.cn/iframe/485/2008/0722/3.html" width="300" height="298" frameborder="0" scrolling="no"></iframe>

<div class="HSpace_10"></div>

		<!--专题 end -->

		<!-- 视频 begin -->
			<iframe src="http://d4.sina.com.cn/iframe/2008/0829/1/serious.html" width="300" height="122" frameborder="0" scrolling="no"></iframe>
		<!--视频 end -->

		<!-- 图片 begin -->
		<iframe src="http://news.sina.com.cn/iframe/485/2008/0723/5.html" width="300" height="163" frameborder="0" scrolling="no"></iframe>

		<!-- <iframe src="http://news.sina.com.cn/iframe/485/2008/0723/5.html" width="300" height="163" frameborder="0" scrolling="no"></iframe> -->
		<!--图片 end -->

		<!-- 博客 begin -->
		<iframe src="http://pfp.sina.com.cn/iframe/2008/1023/1.html" width="300" height="122" frameborder="0" scrolling="no"></iframe>
		<!-- <iframe src="http://pfp.sina.com.cn/iframe/2008/1023/1.html" width="300" height="122" frameborder="0" scrolling="no"></iframe> -->
		<!--博客 end -->

		<!-- 300x150 button begin -->

		<!-- <div class="HSpace_10" style="border-top:1px solid #d1e3f4;"></div> -->
		<div class="HSpace_10" style="border-top:1px solid #d1e3f4;"></div>
		<div class="adNone" id="PublicRelation9">
			<table border=0 cellspacing=0 cellpadding=0 align=left><tr><td>

			<!--画中画button广告开始-->
<span><iframe id="pip04" frameborder="0" height="150" width="300" marginheight="0" marginwidth="0" scrolling="no" src="http://pfp.sina.com.cn/iframe/gn/2009-08-14/194974.html"></iframe></span>
<!--画中画button广告结束-->

			</td></tr></table>

		</div>
		<div class="HSpace_10"></div>
		<!-- 300x150 button end -->

		<!-- 见证中国力量 begin -->
		<iframe src="http://news.sina.com.cn/iframe/485/2008/0829/9.html" width="300" height="122" frameborder="0" scrolling="no"></iframe>
		<!-- <iframe src="http://news.sina.com.cn/iframe/485/2008/0829/9.html" width="300" height="122" frameborder="0" scrolling="no"></iframe> -->
		<!--见证中国力量 end -->
		<div class="HSpace_10"></div>

		<div class="adNone" id="PublicRelation4">
			<table border=0 cellspacing=0 cellpadding=0 align=left>
<tr><td>
<!--画中画2广告开始-->
	<span><iframe id="pip02" frameborder="0" height="250" width="300" marginheight="0" marginwidth="0" scrolling="no" src="http://d5.sina.com.cn/iframe/gn/2007-09-28/215322.html"></iframe></span>
<!--画中画2广告结束-->
</td></tr></table>

		</div>

		<div class="HSpace_10"></div>

		<div class="adNone" id="PublicRelation7">
			<!-- SINA竞价 begin -->
						<div id="ghc4" style="display:none" ></div>
			<script type="text/javascript">var local_index=1;</script>
<script type="text/javascript" src=http://pfpip.sina.com/ip.js></script>
<script type="text/javascript">var pfp_adv = new Array();</script>
<script type="text/javascript" src="http://pfp.sina.com.cn/pfpnew/info/res_1005.js"></script>
<form id="frmOpenWeb" method="post" target="_blank" style="display:none"></form>

<div id="divRes1005"></div>
<!-- <script type="text/javascript" src="http://pfp.sina.com.cn/pfpnew/resstyle/resstyle_1005.js"></script> -->
<script type="text/javascript" src="http://pfp.sina.com.cn/pfpnew/resstyle/resstyle_1005.js"></script>
			<!-- SINA竞价 end -->
		</div>

	</div>
	<!-- 侧边栏 end -->
	<script type="text/javascript">DisplayAd();</script>
</div>

<div class="MainBorderBottom"></div>
<!-- 主容器 end -->

</div>

<div class="HSpace_10"></div>
<div class="HSpace_2"></div>

<!-- footer begin -->
<!-- footer begin -->
<div class="blkContentFooter">
	<p><a href="http://corp.sina.com.cn/chn/" target="_blank">新浪简介</a>┊<a href="http://corp.sina.com.cn/eng/" target="_blank">About Sina</a>┊<a href="http://emarketing.sina.com.cn/" target="_blank">广告服务</a>┊<a href="http://www.sina.com.cn/contactus.html" target="_blank">联系我们</a>┊<a href="http://corp.sina.com.cn/chn/sina_job.html" target="_blank">招聘信息</a>┊<a href="http://www.sina.com.cn/intro/lawfirm.shtml" target="_blank">网站律师</a>┊<a href="http://english.sina.com/" target="_blank">SINA English</a>┊<a href="http://members.sina.com.cn/apply/" target="_blank">会员注册</a>┊<a href="http://help.sina.com.cn/" target="_blank">产品答疑</a>┊Copyright &copy; 1996-2010 SINA Corporation, All Rights Reserved</p>

	<p>新浪公司 <a href="http://www.sina.com.cn/intro/copyright.shtml" target="_blank">版权所有</a></p>
</div>
<!-- footer end -->
<!-- footer end -->

<script type="text/javascript" language="javascript" src="http://i3.sinaimg.cn/cha/news/yq.js"></script>

<!-- 2010-9-27 哈药开始 -->
<script type="text/javascript" src="http://rm.sina.com.cn/bj-icast/jiaqing/harbinmedicine/utils.js"></script>
<script type="text/javascript" src="http://d1.sina.com.cn/shh/yyk/101009-03/hy_content.js"></script>
<!-- 2010-9-27 哈药结束 -->

<!-- 071127 ws begin -->
<!-- <script language="javascript">var iask_keywords_bid="artibody";var iask_keywords_lid="hotwords_link";var iask_keywords_fid="hotwords";var iask_keywords_min=24;var iask_keywords_len=72;</script>
<script type="text/javascript" src="http://keyword.sina.com.cn/js/iaskkeywords.js"></script> -->
<!-- 071127 ws end -->  
<!--页面最底部包含读取留言数接口文件-->
<script id="COUNTER_FORIE" type="text/javascript"></script>
<script type="text/javascript" src="http://news.sina.com.cn/comment/cmnt_counter.js"></script>

<!-- Google 广告 begin -->
<style type="text/css">
#GoogleAd .b_cont{overflow:hidden; zoom:1;}
#GoogleAd .b_cont .b_box{clear:both;}
#GoogleAd .b_cont .line_1{line-height:23px;}
#GoogleAd .b_cont .line_2,#GoogleAd .b_cont .line_3{float:left; line-height:20px;}
#GoogleAd .b_cont .line_2{padding-right:12px;}
</style>

<script language="javascript" type="text/javascript">
<!--//--><![CDATA[//><!--
function google_ad_request_done(google_ads) {
	/*
	 * 此函数为必需函数，用于展示
	 * JavaScript 请求返回的
	 * 广告。您需要修改 document.write
	 * 命令，使其写出的 HTML 符合
	 * 所需广告布局。
	 */
	var s = '';
	var i;

	/*
	 * 验证存在可以展示的广告。
	 */
	if (google_ads.length == 0) {
	  return;
	}

/*
	 * 如果返回图片或 Flash 广告，则展示该广告。
	 * 否则，创建一个包含所有广告的字符串，
	 * 然后使用 document.write() 命令写出该字符串。
	 */
if (google_ads[0].type == "image") {
	  s += '<a href="' + google_ads[0].url +
			  '" target="_top" title="go to ' + google_ads[0].visible_url +
			  '"><img border="0" src="' + google_ads[0].image_url +
			  '"width="' + google_ads[0].image_width +
			  '"height="' + google_ads[0].image_height + '"></a>';

	} else if (google_ads[0].type == "flash") {
	  s += '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"' +
			  ' codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"' +
			  ' width="' + google_ad.image_width +
			  '" height="' + google_ad.image_height + '">' +
			  '<param name="movie" value="' + google_ad.image_url + '">' +
			  '<param name="quality" value="high">' +
			  '<param name="AllowScriptAccess" value="never">' +
			  '<embed src="' + google_ad.image_url +
			  '" width="' + google_ad.image_width +
			  '" height="' + google_ad.image_height + 
			  '" type="application/x-shockwave-flash"' + 
			  ' allowScriptaccess="never" ' + 
			  ' pluginspage="http://www.macromedia.com/go/getflashplayer"></embed></object>';
	}
else if (google_ads[0].type="text") {
		s += '<div class="MTitle_01"><h2 class="title"><a href="https://adwords.google.com/select/Login?hl=zh_CN" style="text-decoration:none;font-size:14px;color:000000;font-weight:bold">赞助商链接</a></h2></div>';
	   if (google_ads.length == 1) {
			/*
			 * 合作伙伴应调整文字大小，
			 * 使广告能占据大部分广告空间。
			 */
			s +='<div class="b_cont"><div class="b_box" ' + 'onclick="window.open('+"'"+ google_ads[0].url + "'"+')" ' + 'onmouseout="window.status='+"''"+';return true;" ' + 'onmouseover="window.status='+"'"+
		google_ads[0].visible_url + "'" +';return true;">' + 
		'<p class="line_1"><a href="#" style="text-decoration:underline:none;">' + 
		google_ads[0].line1 + '</a></p>' + 
		google_ads[0].line2 + '<p class="line_2">' + google_ads[0].line3 + '</p>'+'<p class="line_3">' + 
		google_ads[0].visible_url + '</p></div></div>'       
	} 
else if (google_ads.length > 1) {
			/*
			 * 对于文字广告，将每个广告附加到该字符串。
			 */
			 s += '<div class="b_cont">';
			for(i=0; i < google_ads.length; ++i) {
				s += '<div class="b_box" ' + 
		'onclick="window.open('+"'"+ google_ads[i].url + "'"+')" ' +
		'onmouseout="window.status='+"''"+';return true;" ' + 
		'onmouseover="window.status='+"'"+
		google_ads[i].visible_url + "'" +';return true;">' + 
		'<p class="line_1">' +google_ads[i].line1 + '</p><p class="line_2">' + google_ads[i].line2 + "&nbsp;" + google_ads[i].line3 + '</p>' +'<p class="line_3">' + google_ads[i].visible_url + '</p></div>';

			}
		}
	}
	s += '</div>';
	//document.write(s);
	GetObj("GoogleAd").innerHTML =s
	return;
  }
google_ad_client = 'ca-sina-cn_js'; 
google_ad_channel = 'guonei';//此处根据不同频道更换名称,具体列表会提供
google_ad_output = 'js';
google_max_num_ads = '4';
google_ad_type = 'text';
google_gl = 'CN';
google_language = 'zh-CN';
google_encoding = 'gb2312';
google_safe = 'high';
google_adtest = 'off';//此处正式上线请变为 off
google_ad_section = 'default';
//--><!]]>
</script>
<!--
	/*
	* 从以下页面返回的 JavaScript 使用
	* 以上指定的参数值填充
	* 一组广告对象。填充完该组对象后
	* JavaScript 会调用 google_ad_request_done
	* 函数来展示广告
	*/
-->

<script language="JavaScript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
<!-- Google 广告 end -->

<script src="http://d1.sina.com.cn/litong/huangxu/zhongshi/xinwenny/sinanews_news_20080716.js" type="text/javascript"></script>

<script src="http://pfp.sina.com.cn/cpfp/sinanews_news_20080716.js" type="text/javascript"></script>

<script language="javascript">var iask_keywords_bid="artibody";var iask_keywords_lid="hotwords_link";var iask_keywords_fid="hotwords";var iask_keywords_min=24;var iask_keywords_len=72;</script>
<script type="text/javascript" src="http://keyword.sina.com.cn/js/iaskkeywords.js"></script>

<!-- SSO_UPDATECOOKIE_START -->
<script type="text/javascript">var sinaSSOManager=sinaSSOManager||{};sinaSSOManager.q=function(b){if(typeof b!="object"){return""}var a=new Array();for(key in b){a.push(key+"="+encodeURIComponent(b[key]))}return a.join("&")};sinaSSOManager.es=function(f,d,e){var c=document.getElementsByTagName("head")[0];var a=document.getElementById(f);if(a){c.removeChild(a)}var b=document.createElement("script");if(e){b.charset=e}else{b.charset="gb2312"}b.id=f;b.type="text/javascript";d+=(/\?/.test(d)?"&":"?")+"_="+(new Date()).getTime();b.src=d;c.appendChild(b)};sinaSSOManager.doCrossDomainCallBack=function(a){sinaSSOManager.crossDomainCounter++;document.getElementsByTagName("head")[0].removeChild(document.getElementById(a.scriptId))};sinaSSOManager.crossDomainCallBack=function(a){if(!a||a.retcode!=0){return false}var d=a.arrURL;var b,f;var e={callback:"sinaSSOManager.doCrossDomainCallBack"};sinaSSOManager.crossDomainCounter=0;if(d.length==0){return true}for(var c=0;c<d.length;c++){b=d[c];f="ssoscript"+c;e.scriptId=f;b=b+(/\?/.test(b)?"&":"?")+sinaSSOManager.q(e);sinaSSOManager.es(f,b)}};sinaSSOManager.updateCookieCallBack=function(c){var d="ssoCrossDomainScriptId";var a="http://login.sina.com.cn/sso/crossdomain.php";if(c.retcode==0){var e={scriptId:d,callback:"sinaSSOManager.crossDomainCallBack",action:"login",domain:"sina.com.cn"};var b=a+"?"+sinaSSOManager.q(e);sinaSSOManager.es(d,b)}else{}};sinaSSOManager.updateCookie=function(){var g=1800;var p=7200;var b="ssoLoginScript";var h=3600*24;var i="sina.com.cn";var m=1800;var l="http://login.sina.com.cn/sso/updatetgt.php";var n=null;var f=function(e){var r=null;var q=null;switch(e){case"sina.com.cn":q=sinaSSOManager.getSinaCookie();if(q){r=q.et}break;case"sina.cn":q=sinaSSOManager.getSinaCookie();if(q){r=q.et}break;case"51uc.com":q=sinaSSOManager.getSinaCookie();if(q){r=q.et}break}return r};var j=function(){try{return f(i)}catch(e){return null}};try{if(g>5){if(n!=null){clearTimeout(n)}n=setTimeout("sinaSSOManager.updateCookie()",g*1000)}var d=j();var c=(new Date()).getTime()/1000;var o={};if(d==null){o={retcode:6102}}else{if(d<c){o={retcode:6203}}else{if(d-h+m>c){o={retcode:6110}}else{if(d-c>p){o={retcode:6111}}}}}if(o.retcode!==undefined){return false}var a=l+"?callback=sinaSSOManager.updateCookieCallBack";sinaSSOManager.es(b,a)}catch(k){}return true};sinaSSOManager.updateCookie();</script>

<!-- SSO_UPDATECOOKIE_END -->

<!-- Start  Wrating  --> 
<script language="javascript"> 
var wrUrl="//sina.wrating.com/";var wrDomain="sina.com.cn";var wratingDefaultAcc="860010-0323010000";var wratingAccArray={"torch.2008.sina.com.cn":"860010-0308070000","video.sina.com.cn":"860010-0309010000","cctv.sina.com.cn":"860010-0309020000","chat.sina.com.cn":"860010-0311010000","ent.sina.com.cn":"860010-0312010000","tech.sina.com.cn":"860010-0313010000","mobile.sina.com.cn":"860010-0313020000","house.sina.com.cn":"860010-0315010000","bj.house.sina.com.cn":"860010-0315020000","auto.sina.com.cn":"860010-0316010000","eladies.sina.com.cn":"860010-0317010000","bj.sina.com.cn":"860010-0317020000","woman.sina.com.cn":"860010-0317010000","women.sina.com.cn":"860010-0317010000","lady.sina.com.cn":"860010-0317010000","man.eladies.sina.com.cn":"860010-0317030000","games.sina.com.cn":"860010-0318010000","game.sina.com.cn":"860010-0318010000","edu.sina.com.cn":"860010-0307010000","baby.sina.com.cn":"860010-0320010000","kid.sina.com.cn":"860010-0320020000","astro.sina.com.cn":"860010-0321020000","news.sina.com.cn":"860010-0310010000","weather.news.sina.com.cn":"860010-0310020000","mil.news.sina.com.cn":"860010-0310030000","www.sina.com.cn":"860010-0322010000","home.sina.com.cn":"860010-0322010000","sports.sina.com.cn":"860010-0308010000","shidefc.sina.com.cn":"860010-0308020000","weiqi.sina.com.cn":"860010-0308030000","f1.sina.com.cn":"860010-0308040000","golf.sina.com.cn":"860010-0308050000","2002.sina.com.cn":"860010-0308060000","2004.sina.com.cn":"860010-0308060000","2006.sina.com.cn":"860010-0308060000","2008.sina.com.cn":"860010-0308070000","yayun2002.sina.com.cn":"860010-0308060000","yayun2006.sina.com.cn":"860010-0308060000","inter.sina.com.cn":"860010-0308080000","chelsea.sina.com.cn":"860010-0308090000","book.sina.com.cn":"860010-0319010000","cul.book.sina.com.cn":"860010-0319020000","comic.book.sina.com.cn":"860010-0319030000","finance.sina.com.cn":"860010-0314010000","money.sina.com.cn":"860010-0314020000","yue.sina.com.cn":"860010-0324010000","www.sina.com":"860010-0322010000"};function vjTrack(){var U=1800;var T=false;var S=false;var R="";var Q="0";var P="";var N;var L;var K;var J;var I;var H="expires=Fri, 1 Jan 2038 00:00:00 GMT;";var G=0;if(document.location.protocol=="file:"){return }T=navigator.cookieEnabled?"1":"0";S=navigator.javaEnabled()?"1":"0";var F="0";var E;var C=-1;var D=document.cookie;if(T=="1"){C=D.indexOf("vjuids=");if(C<0){E=vjVisitorID();document.cookie="vjuids="+escape(E)+";"+H+";domain="+wrDomain+";path=/;";if(document.cookie.indexOf("vjuids=")<0){T="0"}else{Q="1"}}else{E=vjGetCookie("vjuids")}}L=document.referrer;if(!L||L==""){L=""}R=vjFlash();if(self.screen){N=screen.width+"x"+screen.height+"x"+screen.colorDepth}else{if(self.java){var M=java.awt.Toolkit.getDefaultToolkit();var O=M.getScreenSize();N=O.width+"x"+O.height+"x0"}}if(navigator.language){K=navigator.language.toLowerCase()}else{if(navigator.browserLanguage){K=navigator.browserLanguage.toLowerCase()}else{K="-"}}I="";var B;var X;X=new Date();J=X.getTimezoneOffset()/-60;J=X.getTimezoneOffset()/-60;B="&s="+N+"&l="+K+"&z="+J+"&j="+S+"&f="+R;if(T=="1"){C=document.cookie.indexOf("vjlast=");if(C<0){G=0}else{G=parseInt(vjGetCookie("vjlast"))}}if((X.getTime()/1000)-G>U){F="1";document.cookie="vjlast="+Math.round(X.getTime()/1000)+";"+H+";domain="+wrDomain+";path=/;"}if(L!=""){B=B+"&r="+escape(L)}if(F!="0"){B=B+"&n="+G}if(Q!="0"){B=B+"&u="+Q}var V;var A=vjGetAcc();var W=vjGetDomain();V=wrUrl+"a.gif?a="+X.getTime().toString(16)+"&t="+escape(I)+"&i="+escape(E)+"&b="+escape(document.location)+"&c="+A+B+"&ck="+W;document.write('<img src="'+V+'" width="1" height="1" style="visibility:hidden;position:absolute;left:0px;top:0px;z-index:-1" />')}function vjGetAcc(){var B=document.location.toString().toLowerCase();var C=(B.split("/"))[2];var A=wratingAccArray[C];if(typeof (A)=="undefined"){A=wratingDefaultAcc}return A}function vjFlash(){var _wr_f="-",_wr_n=navigator;if(_wr_n.plugins&&_wr_n.plugins.length){for(var ii=0;ii<_wr_n.plugins.length;ii++){if(_wr_n.plugins[ii].name.indexOf("Shockwave Flash")!=-1){_wr_f=_wr_n.plugins[ii].description.split("Shockwave Flash ")[1];break}}}else{if(window.ActiveXObject){for(var ii=10;ii>=2;ii--){try{var fl=eval("new ActiveXObject('ShockwaveFlash.ShockwaveFlash."+ii+"');");if(fl){_wr_f=ii+".0";break}}catch(e){}}}}return _wr_f}function vjHash(B){if(!B||B==""){return 0}var D=0;for(var C=B.length-1;C>=0;C--){var A=parseInt(B.charCodeAt(C));D=(D<<5)+D+A}return D}function vjVisitorID(){var B=vjHash(document.location+document.cookie+document.referrer).toString(16);var A;A=new Date();return B+"."+A.getTime().toString(16)+"."+Math.random().toString(16)}function vjGetCookieVal(B){var A=document.cookie.indexOf(";",B);if(A==-1){A=document.cookie.length}return unescape(document.cookie.substring(B,A))}function vjGetCookie(C){var B=C+"=";var F=B.length;var A=document.cookie.length;var E=0;while(E<A){var D=E+F;if(document.cookie.substring(E,D)==B){return vjGetCookieVal(D)}E=document.cookie.indexOf(" ",E)+1;if(E==0){break}}return null}function vjGetDomain(){var A=0;try{if(window.self.parent!=self){var D=/sina.com/i;var C=document.location.toString().toLowerCase();var B=parent.location.toString().toLowerCase();if(D.test(C)&&D.test(B)){A=1}}}catch(e){A=1}return A}vjTrack();
</script> 
<!-- End Wrating--> 
 
<!-- START Nielsen//NetRatings SiteCensus V5.3 --> 
<!-- COPYRIGHT 2006 Nielsen//NetRatings --> 
<script type="text/javascript"> 
	var _rsCI="cn-sina2006";	 
	var _rsCG="0";	
	var _rsDN="//secure-cn.imrworldwide.com/";	
	var _rsCC=0;	
	var _rsSE=1;	
	var _rsSM=0.01;	 
	var _rsSS=1500;	 
</script> 
<script type="text/javascript" src="//secure-cn.imrworldwide.com/v53.js"></script> 
<noscript> 
	<img src="//secure-cn.imrworldwide.com/cgi-bin/m?ci=cn-sina2006&amp;cg=0" alt=""/> 
</noscript> 
<!-- END Nielsen//NetRatings SiteCensus V5.3 -->
</body>
<!-- 顶部导航 统一登录 begin -->

<script type="text/javascript">
var obj_islogin=sinaSSOManager.getSinaCookie();
if(!obj_islogin){
print_stand_unipro_head();
GetObj("content_mainNav").className = "hd_nav";
}else{
print_stand_unipro_welcome(obj_islogin.nick);
GetObj("content_mainNav").className = "hd_nav hd_nav_log";
}
</script>
<!-- 顶部导航 统一登录 end -->

</html>
{/literal}