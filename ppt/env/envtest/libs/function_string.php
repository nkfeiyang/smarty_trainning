<?php
	/*-------------			date函数			-------------*/
	/**
	 * 返回某日期 N天前后，默认为今天前后N天的日期
	 * 示例：昨天的日期：date_after(-1, '2008-08-08')
	 * @param int $n 为间隔天数 -前 后
	 * @param date $d 为日期格式2007-09-13
	 * @return date
	 * @author owen 2008-8-1
	 */
    function date_after($n, $d="", $is_timer=0){
		$d = $d ? $d : date("Y-m-d");
		$timer = strtotime($d)+$n*86400;
		return $is_timer ? $timer : date("Y-m-d", $timer);
    }
	/**
	 * 取得距离现在多少天、多少小时、多少分钟、多少秒 之前后的事件
	 * @param enclosing_method_type $timer 为某个时间戳
	 * @return string
	 * @author owen 2008-8-14
	 */
	function interval_time($timer){
		$t = time() - $timer;
		$s = $t>=0 ? "前":"后";
		$t = abs($t);
		if ($t>=0 AND $t<60){
			$str = $t." 秒".$s;
		}elseif ($t>=60 AND $t<3600){
			$str = floor($t/60)." 分钟".$s;
		}elseif ($t>=3600 AND $t<86400){
			$str = floor($t/3600)." 小时".$s;
		}elseif ($t>=86400 AND $t<86400*(5+1)){
			$str = floor($t/86400)." 天".$s;
		}else{
			$str = date("Y-m-d H:i", $timer);
		}
		return $str;
	}
	/*-------------			string函数			-------------*/
	/**
	 * 统计UTF-8编码的字符长度
	 * 一个中文，一个英文都为一个字
	 * @param string $str 字符串
	 * @return int 字符串长度
	 * @author owen 2008-6-13
	 */
	function utf8_strlen($str) {
		return preg_match_all('/[\x00-\x7F\xC0-\xFD]/', $str, $dummy);
	}
	/**
	 * 中文截取函数
	 * 一个中文，一个英文都为一个字
	 * @param string $string 被截取的字符串
	 * @param int $len 被截取的长度
	 * @param boolean $slh 是否有省略号
	 * @param int $start 从第几个字开始截取
	 * @return string 截取后的字符串
	 * @author owen 2008-6-13
	 */
	function utf8_substr_($string, $len=14, $slh=0, $start=0){
    $string = html_decode($string);
		if ($slh AND utf8_strlen($string)>$len) {
			$str_slh = '…';
      $string = preg_replace('#^(?:[\x00-\x7F]|[\xC0-\xFF][\x80-\xBF]+){0,'.$start.'}'.
							'((?:[\x00-\x7F]|[\xC0-\xFF][\x80-\xBF]+){0,'.$len.'}).*#s', '$1', $string).$str_slh;
		}
    $string = html_encode($string);
    return $string;
	}
  function utf8_substr($str, $len, $slh=0) {
    $len = $len*2;
    $str = html_decode($str);
    if (strlen($str) <= $len) return $str;
    $n = 0;
    $tempstr = '';
    for ($i = 0;$i < $len;$i++) {
      if (ord(substr($str, $n, 1)) > 224) {
        $tempstr.= substr($str, $n, 3);
        $n+= 3;
        $i++;
        
      } elseif (ord(substr($str, $n, 1)) > 192) {
        $tempstr.= substr($str, $n, 2);
        $n+= 2;
        $i++;
        
      } else {
        $tempstr.= substr($str, $n, 1);
        $n++;
      }
    }
    $tempstr = html_encode($tempstr);
    return $tempstr .($slh ? '...' : '');
  }
	function iconv_new($from, $to, $str) {
		$from	= strtoupper(str_replace("-", "", $from));
		$to		= strtoupper(str_replace("-", "", $to));
		$chs = new chinese($from, $to, $str, PATH_CLASS."config/");
		return $chs->ConvertIT();
	}
	/**
	 * 把字符串编码
	 * 编码用户输入的字符串string ，插入数据库中
	 * @param string $str
	 * @return string
	 * @author owen 2008-6-13
	 */
	function html_encode($str){
		$arr_sor = array('>', '<', "'", '’', '"', chr(32), "\r\n");
		$arr_rep = array('&gt;', '&lt;', '&#39;', '&#8217;', '&#34;', '&nbsp;', '<br/>');
		$str = str_replace($arr_sor, $arr_rep, trim($str));
		return $str;
	}
	/**
	 * 把字符串解码
	 * 解码数据库中 字符串，显示在textarea中
	 * @param string $str
	 * @return string
	 * @author owen 2008-6-13
	 */
	function html_decode($str){
		$arr_sor = array('&gt;', '&lt;', '&#39;', '&#8217;', '&#34;', '&nbsp;', '<br/>');
		$arr_rep = array('>', '<', "'", '’', '"', chr(32), "\r\n");
		$str = str_replace($arr_sor, $arr_rep, trim($str));
		return $str;
	}
	/**
	 * addslashes过滤，插入数据库，带有html字符串的数据
	 * @param string|array $str 可以是数组或字符串
	 * @return string|array
	 * @author owen 2008-6-13
	 */
	function addslashes_str($str){
		if (is_array($str)){
			foreach($str AS $id => $value) {
				$str[$id] = addslashes_str($value);
			}
		}else{
			$str = addslashes($str);
		}
		return $str;
	}
	/**
	 * stripslashes还原数据，取出数据库，带有html字符串的数据
	 * @param string|array $str 可以是数组或字符串
	 * @return string|array
	 * @author owen 2008-6-13
	 */
	function stripslashes_str($str){
		if (is_array($str)){
			foreach($str AS $id => $value) {
				$str[$id] = stripslashes_str($value);
			}
		}else{
			$str = stripslashes($str);
		}
		return $str;
	}
	/**
	 * 去掉 QUERY_STRING 中的某个参数的值，或清除一组变量
	 * <code>
	 * 例如：$_SERVER["QUERY_STRING"] a=1&b=1&c=1
	 * $var 为字符串，$var==a, 返回 b=1&c=1&a=
	 * $var 为数组，$var==array(a,b), 返回 c=1
	 * </code>
	 * @param string|array $var 被清除的字符串或数组
	 */
	function clear_url($var, $is_url=0){
		$arr_url = array();
		parse_str($_SERVER["QUERY_STRING"], $arr_url);
		if (is_array($var)) {
			foreach ($var as $v) {
				unset($arr_url[$v]);
			}
		}else{
			unset($arr_url[$var]);
		}
		$str = '';
		if (!empty($arr_url)){
			$str = http_build_query($arr_url);
		}
		if (!is_array($var)) {
			$str = ($str ? $str.'&' : '').($var ? $var.'=' : '');
		}
		$str = ($is_url ? $_SERVER['PHP_SELF'].'?' : '').str_replace('&', '&amp;', $str);
		return $str;
	}
	function clear_html($str){
		$search = array ("'<script[^>]*?>.*?</script>'si",  // 去掉 javascript
						 "'<[\/\!]*?[^<>]*?>'si",           // 去掉 HTML 标记
						 "'([\r\n])[\s]+'"                 // 去掉空白字符
						 );
		$replace = array ("",
						  "",
						  "\\1"
						  );
		$text = preg_replace ($search, $replace, $str);
		return $text;
	}
  function create_dir($dir) {
    if (! @is_dir ( $dir ) and ! @file_exists ( $dir )) {
      create_dir ( @dirname ( $dir ) );
      @mkdir ( $dir, 0777 );
      @chmod ( $dir, 0777 );
    }
    return;
  }
	/**
	 * 取得最后一个某字符$expstr以前的，$isstr=1 包括此字符
	 * get_begin_str('smallphp.com.gif', '.', 1) = 'smallphp.com.'
	 * @param string $str
	 * @param string $expstr 分隔符
	 * @param boolean $isstr 是否包含分隔符
	 * @return string
	 * @author owen 2008-6-13
	 */
	function get_begin_str($str, $expstr="/", $isstr=0){
		return substr($str, 0, strrpos($str, $expstr)+$isstr);
	}
	/**
	 * 取得最后一个某字符$expstr以后的，$isstr=1 包括此字符
	 * 例：get_end_str('smallphp.com.gif', '.', 1) = '.gif'
	 * @param string $str
	 * @param string $expstr 分隔符
	 * @param boolean $isstr 是否包含分隔符
	 * @return string
	 * @author owen 2008-6-13
	 */
	function get_end_str($str, $expstr="/", $isstr=0){
		return substr($str, strrpos($str, $expstr)-strlen($str)+(empty($isstr)?1:0));
	}
	/**
	 * 在每个字符间插入文字(UTF8)
	 * @param string $str 被切分字符，
	 * @param int $len 切分字符个数
	 * @param string $what 要插入的文字，
	 * @param boolean $isin 在文字之间插入，还是之后
	 * @return string
	 * @author owen 2008-6-13
	 */
	function utf8_wordwrap($str, $len, $what, $isin=1){
		# usage: utf8_wordwrap("text",3,"<br>");
		# by tjomi4`, thanks to SiMM.
		# www.yeap.lv
		$from=0;
		$str_length = preg_match_all('/[\x00-\x7F\xC0-\xFD]/', $str, $var_empty);
		$while_what = $str_length / $len;
		$i = 0;
		while($i < round($while_what)){
			$string = preg_replace('#^(?:[\x00-\x7F]|[\xC0-\xFF][\x80-\xBF]+){0,'.$from.'}'.
								   '((?:[\x00-\x7F]|[\xC0-\xFF][\x80-\xBF]+){0,'.$len.'}).*#s',
								   '$1',$str);
			$arr[$i] = $string;
			$total .= $string.$what;
			$from = $from+$len;
			$i++;
		}
		$str = $isin ? implode($arr , $what) : $total;
		return $str;
	}
	/*-------------			array函数			-------------*/
	/**
	 * 把数组的键、值联合起来，变成字符串
	 * array('a'=>1, 'b'=>2)	a=1&b=2
	 * @param array $arr 文件路径
	 * @param string $join_str 连接字符串
	 * @return array
	 * @author owen 2008-6-13
	 */
	function arr_join($arr, $join_str="&"){
		$arr_str = array();
		foreach ((array)$arr as $k=>$v){
			$arr_str[] = $k."=".$v;
		}
		return join($join_str, $arr_str);
	}
	/*-------------			array函数			-------------*/
	/**
	 * 把数组$arr 保存成 $var变量在 $file中
	 * 调用时，include(xxx); print_r($array);
	 * @param string $file 文件路径
	 * @param array $arr 被保存的数组
	 * @return boolean
	 * @author owen 2008-6-13
	 */
	function arr_save_to_file($file, $arr){
		return file_put_contents($file, '<?php $array = '.preg_replace("/([\r\n])[\s]+/i", "", var_export($arr, TRUE)).'; ?>');
	}
	/**
	 * 去掉数组中为空，且重复的值
	 * @param array $arr
	 * @return array
	 * @author owen 2008-6-13
	 */
	function arr_remove_null($arr){
		$arr = array_unique($arr);
		foreach((array)$arr AS $k=>$v){
			if(empty($v)){
				unset($arr[$k]);
			}
		}
		return $arr;
	}
  function remove_url_param($param){
    $arr_url = array();
		parse_str($_SERVER["QUERY_STRING"], $arr_url);
		unset($arr_url[$param]);
		if (empty($arr_url)){
			$str = $param."=";
		}else{
			$str = http_build_query($arr_url)."&".$param."=";
		}
    $str = "http://".$_SERVER["HTTP_HOST"].$_SERVER["PHP_SELF"]."?".$str;
    return $str;
  }
	/**
	 * 将2维数组变成一维数组
	 * @param array $arr_muli 二维数组
	 * @return array 一维数组
	 * @author owen 2008-6-13
	 */
	function arr_muli_to_one($arr_muli){
		$arr = array();
		foreach ((array)$arr_muli AS $v){
			foreach($v AS $vv){
				$arr[] = $vv;
			}
		}
		return $arr;
	}
	/*-------------			文件函数			-------------*/
	/**
	 * 把数据追加到文件
	 * @param string $file 文件路径
	 * @param string $str 被追加的字符串
	 * @return void()
	 * @author owen 2008-6-13
	 */
	function add_str_to_file($file, $str){
		$fb = fopen($file, "a");
		fwrite($fb, $str);
		fclose($fb);
	}
	/**
	 * 根据id生成文件目录，$id <= $max的3次方
	 * 数量级小于10亿，此算法有效
	 * @param int $id
	 * @param \,/ $ds 目录斜杠 \或/
	 * @param int $max 一个目录存放最多文件个数
	 * @return string 例如 1/1
	 * @author owen 2008-6-13
	 */
	function get_id_path($id, $ds='', $max=1000){
		$dir = array();
		$dir[] = ceil($id/pow($max, 2));
		if ($id<=pow($max, 2)){
			$dir[] = ceil($id/$max);
		}else{
			$num = $id%pow($max, 2);
			if ($num>=$max){
				$dir[] = ceil($num/$max);
			}else{
				$dir[] = $num?$num:$max;
			}
		}
		$ds = $ds ? $ds : DS;
		return join($ds, $dir);
	}
	/*-------------			url函数			-------------*/
	/**
	 * 获取当前地址栏 URL
	 * @return string
	 * @author owen 2008-6-13
	 */
	function get_url(){
		return "http://".$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"];
	}
	/**
	 * 定时跳转
	 * @param string $url 要跳转去的页面，为空时，返回上一页
	 * @return void()
	 * @author owen 2008-7-11
	 */
	function go_url($url="", $info="操作成功！", $time=3){
		$url = $url?$url:$_SERVER["HTTP_REFERER"];
		$str = get_url_html();

		$arr_sor = array('{info}', '{url}', '{time}');
		$arr_rep = array($info, $url, $time);
		echo str_replace($arr_sor, $arr_rep, $str);
		exit;
	}
	function go_url_err($url="", $info="操作失败！", $time=3){
		go_url($url, $info, $time);
	}
	/**
	 * 页面跳转
	 * @param string $url 跳转页面
	 * @return void()
	 * @author owen 2008-7-10
	 */
	function header_go($url=''){
		$url = $url?$url:$_SERVER["HTTP_REFERER"];
		@header("Location: ".$url);
		exit;
	}
	/**
	 * 404页面跳转
	 * @return void()
	 * @author owen 2008-7-10
	 */
	function header_404(){
		header("Status: 404 Not Found");
		header_go("/404.html");
	}
	function go_back($msg=''){
		$str = '<script type="text/javascript">';
		$str.= $msg ? 'document.write("'.str_replace('"', '\\"', $msg).'");' : '';
		$str.= 'setTimeout(function(){history.back(-1);}, 1000);';
		$str.= '</script>';
		echo $str;
		exit;
	}
	function get_url_html() {
		$str = '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="refresh" content="{time};URL={url}">
<title>{time}秒后跳转</title>
<style type="text/css">
	div{
		position: absolute;
		top: 50%;margin-left:-200px;
		left: 50%;margin-top:-60px;
		text-align:center;
		border:1px solid #3399FF;background:#F7FBFF;
		width:400px;height:70px;
		font-size:12px;
	}
	div p{margin:0;float:left;width:100%;line-height:25px;height:25px;}
	div p.info{margin-top:10px;}
	a{color:#000;}
</style>
</head>
<body>
<div>
	<p class="info">{info}</p>
	<p class="link"><a href="{url}">直接跳转</a> &nbsp; &nbsp; <a href="javascript:history.back();">返回</a></p>
</div>
</body>
</html>';
		return $str;
	}
?>