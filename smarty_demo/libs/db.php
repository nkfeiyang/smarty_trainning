<?php
/**
 * mysql数据库操作 db类
 * @author yytcpt(无影) 2008-6-10 <yytcpt@gmail.com>
 * @link http://www.d5s.cn/ 无影的博客
 */
class db {
	/**
	 * 是否使用持久连接
	 * @var boolean true使用持久连接，false不使用
     */
	public $pconnect = false;
	/**
	 * 是否启用调试信息
	 * @var boolean true启用，false不启用
	 */
	public $debug;
	private $connection_id;
	/**
	 * sql语句数组，页面输出完毕后被执行
	 * @var array
	 */
	private $shutdown_queries;
	/**
	 * sql语句数组
	 * @var array
	 */
	private $queries;
	private $query_id;
	/**
	 * SQL查询次数
	 * @var int
	 */
	private $query_count;
	private $database;
	/**
	 * query执行sql并缓存查询结果，query_unbuffered执行sql不缓存查询结果，query_shutdown页面输出完毕再执行sql语句
	 * @var array query, query_unbuffered, query_shutdown
	 */
	private $q_arr;
	private $query_log;
	/**
	 * 是否开启事务
	 * @var boolean true开启，false默认关闭
	 */
	private $transaction;
	
	/**
	 * db类初始化
	 * 把 close_db()方法放入register_shutdown_function() 中执行 (页面输出完毕，执行close_db())<br/>
	 * q_arr query执行sql并缓存查询结果，query_unbuffered执行sql不缓存查询结果，query_shutdown页面输出完毕再执行sql语句
	 */
	function __construct() {
		$this->debug	= DEBUG==true ? true : false;
		$this->pconnect		= false;
		$this->transaction	= false;
		$this->query_count	= 0;
		$this->queries		= array();
		$this->query_log	= array();
		$this->shutdown_queries		= array();
		$this->q_arr	= array('query', 'query_unbuffered', 'query_shutdown');
		register_shutdown_function(array($this, "close_db"));
	}
	/**
	 * connect mysql database
	 * @param array 数据库参数 hostname, username, password, database, charset
	 * @return boolean 是否连接mysql成功
	 * @author owen 2008-6-10
	 */
	function connect($db_config){
		$this->database = $db_config['database'];
		if ($this->pconnect){
			$this->connection_id = mysql_pconnect($db_config["hostname"], $db_config["username"], $db_config["password"]);
		}else{
			$this->connection_id = mysql_connect($db_config["hostname"], $db_config["username"], $db_config["password"]);
		}
		if (!$this->connection_id){
			$this->_halt("Can not connect MySQL Server");
		}
		if (!@mysql_select_db($db_config["database"], $this->connection_id) ){
			$this->_halt("Can not connect MySQL Database");
		}
    @mysql_unbuffered_query("SET NAMES 'utf8'");
		return $this->connection_id ? true : false;
	}
	/**
	 * 新增加一条记录
	 * @param string $tab 表名
	 * @param array $row 被插入数据 键(字段) => 值(数据)
	 * @param 0,1,2 $q_num 参考 $this->q_arr
	 * @return boolean $q_num=0时，返回 insert_id()
	 * @author owen 2008-6-10
	 */
	function row_insert($tab, $row, $q_num=0){
		$bool = false;
		$sql = $this->sql_insert($tab, $row);
		$q = $this->q_arr[$q_num];
		
		$bool = $this->$q($sql);
		
		if ($q_num==0){
			$bool = $this->insert_id();
		}
		return $bool;
	}
	/**
	 * 取得上一步 INSERT 操作产生的 ID
	 * @return int INSERT 操作产生的 ID
	 * @author owen 2008-6-10
	 */
    function insert_id(){
        return @mysql_insert_id($this->connection_id);
    }
    /**
	 * 更新指定记录
	 * @param string $tab 表名
	 * @param array $row 被更新数据 键(字段) => 值(数据)
	 * @param string $where 更新条件
	 * @param 0,1,2 $q_num 参考 $this->q_arr
	 * @return boolean sql语句是否执行成功，判断update所影响的记录数，用affected_rows()
	 * @author owen 2008-6-10
	 */
	function row_update($tab, $row, $where, $q_num=0){
		$q = $this->q_arr[$q_num];
		$sql = $this->sql_update($tab, $row, $where);
		//echo $sql;
		return $this->$q($sql);
	}
	/**
	 * 删除指定记录
	 * @param string $tab 表名
	 * @param string $where 更新条件
	 * @param 0,1,2 $q_num 参考 $this->q_arr
	 * @return boolean sql语句是否执行成功，判断delete所影响的记录数，用affected_rows()
	 * @author owen 2008-6-10
	 */
	function row_delete($tab, $where, $q_num=0){
		$q = $this->q_arr[$q_num];
		$sql = $this->sql_delete($tab, $where, $q_num=0);
		return $this->$q($sql);
	}
	/**
	 * 根据条件查询，返回所有记录
	 * @param string $tab 表名
	 * @param string $where 查询条件
	 * @param int $limit 返回记录条数
	 * @param string $fields 返回字段
	 * @param string $orderby 排序字段
	 * @param string $sort DESC/ASC 排列顺序
	 * @return array 返回所查询的数据记录
	 * @author owen 2008-6-10
	 */
	function row_select($tab, $where="", $limit=0, $fields="*", $orderby="id", $sort="DESC"){
		$sql = $this->sql_select($tab, $where, $limit, $fields?$fields:'*', $orderby, $sort);
		//echo $sql;
		return $this->row_query($sql);
	}
	/**
	 * 根据where条件，查询查询一条数据库记录
	 * @param string $tab 表名
	 * @param string $where 查询条件
	 * @param string $fields 返回字段
	 * @return array 返回所查询的一条数据记录
	 * @author owen 2008-6-10 <yytcpt@gmail.com>
	 */
	function row_select_one($tab, $where, $fields="*"){
		$sql = $this->sql_select($tab, $where, 1, $fields?$fields:'*');
		return $this->row_query_one($sql);
	}
	/**
	 * 执行sql语句，查询结果是多条数据
	 * 
	 * @param string $sql sql 语句
	 * @param int $q_num 0, 1, 2 参考$this->q_arr
	 * @return array 查询结果
	 * @author owen 2008-6-10
	 */
	function row_query($sql, $q_num=0){
		$q = $this->q_arr[$q_num];
		$rs	 = $this->$q($sql);
		$rs_num = $this->num_rows($rs);
		$rows = array();
		for($i=0; $i<$rs_num; $i++){
			$rows[] = $this->_fetch_array($rs);
		}
		$this->_free_result($rs);
    $row = stripslashes_str($row);
		return $rows;
	}
	/**
	 * 执行sql语句，查询结果是一条数据
	 * @param string $sql sql 语句
	 * @param 0,1,2 $q_num 参考 $this->q_arr
	 * @return array 查询结果
	 * @author owen 2008-6-6
	 */
	function row_query_one($sql, $q_num=0){
		$q = $this->q_arr[$q_num];
		$rs	 = $this->$q($sql);
		$row = $this->_fetch_array($rs);
		$this->_free_result($rs);
    $row = stripslashes_str($row);
		return $row;
	}
	/**
	 * 发送SQL 查询，并不获取和缓存结果的行
	 * @param string 一条完整的sql语句
	 * @return boolean 是否执行成功
	 * @author owen 2008-6-10
	 */
	function query_unbuffered($sql){
		return $this->query($sql, 'mysql_unbuffered_query');
	}
	/**
	 * 把sql放入数组中，页面输出完毕后，执行sql语句
	 * @param string 一条完整的sql语句
	 * @return void
	 * @author owen 2008-6-10
	 */
	function query_shutdown($sql){
		$this->shutdown_queries[] = $sql;
    }
	/**
	 * 取得一条SQL语句对数据库记录的影响条数，仅对 INSERT，UPDATE 或者 DELETE 有效
	 * @return int 影响条数
	 * @author owen 2008-6-10
	 */
	function affected_rows() {
        return @mysql_affected_rows($this->connection_id);
    }
    /**
	 * 某表，某字段，加减 N
	 * @param string $tab 表名
	 * @param string $field 字段名
	 * @param +,- $op 运算符
	 * @param int $num 被加、减的数值
	 * @param string $where 修改条件
	 * @param 0,1,2 $q_num 参考 $this->q_arr
	 * @return boolean sql语句是否执行成功，判断delete所影响的记录数，用affected_rows()
	 * @author owen 2008-6-10
	 */
	function update_op($tab, $field, $op, $where, $num=1, $q_num=1){
		$q = $this->q_arr[$q_num];
		$sql = "UPDATE `$tab` SET $field=$field $op $num WHERE ".$where;
		return $this->$q($sql);
	}
	/**
	 * 根据条件对某个表做总数统计
	 * @param string $tab 表名
	 * @param string $where 统计条件
	 * @param string $auto_id 主键id
	 * @return int 记录总数
	 * @author owen 2008-6-10
	 */
	function row_count($tab, $where="", $auto_id='id'){
		$sql = 'SELECT count('.$auto_id.') as row_sum FROM `'.$tab.'` '.($where?' WHERE '.$where:'');
		$row = $this->row_query_one($sql);
		return $row['row_sum'];
	}
	/**
	 * 关闭 MySQL 连接
	 * @return boolean 是否成功关闭mysql连接
	 * @author owen 2008-6-10
	 */
    function close_db(){
    	$bool = false;
    	if ($this->connection_id){
    		$this->_shutdown_db();
    		echo $this->_db_debug();
        $this->queries = array();
        $this->shutdown_queries = array();
    		$bool = @mysql_close($this->connection_id);
    		$this->connection_id = false;
    	}
    	return $bool;
    }
    /**
	 * 获取数据库中所有表名
	 * @return array 数据库中所有表名
	 * @author owen 2008-6-10
	 */
	function get_all_tables(){
		//兼容PHP5.3
		$rs = @mysql_db_query("SHOW TABLES FROM $this->database"); 
		$num_tables = @mysql_numrows($rs);
		$arr = array();
		for ($i=0; $i<$num_tables; $i++) {
			$arr[] = mysql_tablename($rs, $i);
		}
		@mysql_free_result($rs);
		return $arr;
   	}
   	/**
	 * 取得查询记录总数，仅对 SELECT 语句有效
	 * @return int 查询记录总数
	 * @author owen 2008-6-10
	 */
    function num_rows() {
        return @mysql_num_rows($this->query_id);
    } 
	function sql_select($tab, $where="", $limit=0, $fields="*", $orderby="id", $sort="DESC"){
		$sql = "SELECT ".$fields." FROM `".$tab."` ".($where?" WHERE ".$where:"");
		$sql.= $limit==1 ? '' : ' ORDER BY '.$orderby." ".$sort.($limit ? " limit ".$limit:"");
		return $sql;
	}
	function sql_insert($tab, $row){
		$row = addslashes_str($row);
		foreach ($row as $key=>$value) {
			$sqlfield .= $key.",";
			$sqlvalue .= "'".$value."',";
		}
		//echo "INSERT INTO `".$tab."`(".substr($sqlfield, 0, -1).") VALUES (".substr($sqlvalue, 0, -1).")";
		return "INSERT INTO `".$tab."`(".substr($sqlfield, 0, -1).") VALUES (".substr($sqlvalue, 0, -1).")";
	}
	function sql_update($tab, $row, $where){
    $row = addslashes_str($row);
		foreach ($row as $key=>$value) {
			$sqlud .= $key."= '".$value."',";
		}
		return "UPDATE `".$tab."` SET ".substr($sqlud, 0, -1)." WHERE ".$where;
	}
	function sql_delete($tab, $where){
		return "DELETE FROM `".$tab."` WHERE ".$where;
	}
	function _get_microtime(){
		list($usec, $sec) = explode(" ", microtime());
		return ((float)$usec + (float)$sec);
	}
	/**
	 * 显示错误提示
	 * @param string $error_str 错误提示字符串
	 * @author owen 2008-6-10
	 */
	function _halt($error_str=""){
		$message = $error_str.";\r\n\r\n";
		$message.= $this->_get_errno().': '.$this->_get_error()."\r\n";
		$row_all_tables = $this->get_all_tables();
		$tab_db_error	= 'db_error';
		if (!in_array($tab_db_error, $row_all_tables)) {
			$sql = "CREATE TABLE IF NOT EXISTS `".$tab_db_error."` (
				  `id` int(11) NOT NULL auto_increment,
				  `page_name` varchar(255) default '',
				  `url` varchar(255) default '',
				  `error_str` mediumtext,
				  `datetime` datetime NOT NULL default '0000-00-00 00:00:00',
				  `timer` int(11) default '0',
				  PRIMARY KEY  (`id`)
				) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='数据库错误记录' AUTO_INCREMENT=0 ;";
			@mysql_unbuffered_query($sql);
		}
		$row = array(
				'page_name'	=> $_SERVER["PHP_SELF"],
				'url'		=> 'http://'.$_SERVER["HTTP_HOST"].$_SERVER["REQUEST_URI"],
				'error_str'	=> $message,
				'datetime'	=> date('Y-m-d H:i:s'),
				'timer'		=> $_SERVER['REQUEST_TIME'],
			);
		$sql = $this->sql_insert($tab_db_error, $row);
		@mysql_unbuffered_query($sql);
		if ($this->debug==true){
			$str = "<html><head><title>MySQL 数据库错误</title>";
			$str.= "<style type=\"text/css\"><!--.error { font: 11px tahoma, verdana, arial, sans-serif, simsun; }--></style></head>\r\n";
			$str.= "<body>\r\n";
			$str.= "<blockquote>\r\n";
			$str.= "<textarea class=\"error\" rows=\"15\" cols=\"100\" wrap=\"on\" >" . htmlspecialchars($message) . "</textarea>\r\n";
			$str.= "</blockquote>\r\n</body></html>";
			echo $str;
			exit;
		}
	}
	/**
	 * 释放结果内存
	 * @author owen 2008-6-10
	 */
	function _free_result($rs){
		@mysql_free_result($rs);
	}
	/**
	 * 从结果集中取得一行作为关联数组
	 * @param string $sql 一条完整的sql语句
	 * @return array 一条数据库记录
	 * @author owen 2008-6-10
	 */
    function _fetch_array($sql=''){
    	if ($sql == "") $sql = $this->query_id;
        return @mysql_fetch_array($sql, MYSQL_ASSOC);
    }
    /**
	 * 执行shutdown_queries数组中的sql语句
	 * @author owen 2008-6-10
	 */
	function _shutdown_db() {
		foreach((array)$this->shutdown_queries as $query) {
			$this->query_unbuffered($query);
		}
	}
	/**
	 * 返回上一个 MySQL 操作中的错误信息的数字编码
	 * @return int 错误信息的数字编码
	 * @author owen 2008-6-10
	 */
	function _get_errno(){
		$this->errno = @mysql_errno($this->connection_id);
		return $this->errno;
	}
  function _get_error(){
		$this->error = @mysql_error($this->connection_id);
		return $this->error;
	}
	/**
	 * MYSQL Debug 调试
	 * @global int $TIME_START 页面初始时间
	 * @return string 调试信息
	 * @author owen 2008-6-10
	 */
	function _db_debug(){
		global $TIME_START;
		if($this->debug==true){
			$TIME_END = $this->_get_microtime();
			$arr_include = get_included_files();
			$str = '<div style="clear:both;margin:10px auto;width:90%;text-align:center;font-size:13px;">';
			$str.= "SQL查询次数：".$this->query_count;
			$str.= " &nbsp;&nbsp; 页面执行时间：".round(($TIME_END - $TIME_START), 4).'秒';
			$str.= ' &nbsp;&nbsp; 加载 include '.count($arr_include).'个文件';
			$str.= "</div>"."\n";
			$str.= '<pre>';
			foreach ((array)$this->queries AS $v){
				$str.= $v.";\n";
			}
			$str.= "------shutdown querys-----\n";
			foreach ((array)$this->shutdown_queries as $v){
				$str.= $v.";\n";
			}
			$str.= "</pre>";
			$str.= "<br/><hr width='80%' /><br/>";
			foreach ((array)$this->query_log AS $v){
				$str.= $v."\n";
			}
			$str.= '<pre>';
			foreach ((array)$arr_include as $v) {
				$str.= $v."\n";
			}
			$str.= "</pre>";
		}
		return $str;
	}
	/**
	 * 执行SQL语句，并且返回结果集
	 * @param string $query_id sql语句
	 * @param mysql_query,mysql_unbuffered_query $query_type 查询函数
	 * @return boolean 成功时返回一个资源标识符，失败时返回false
	 * @author owen 2008-6-10
	 */
	function query($query_id, $query_type='mysql_query'){
		if ($this->debug==true) {
			$str = '<pre style="margin:10px;">查询SQL'.($query_type == 'mysql_unbuffered_query' ? ' (<strong style="color:red;">unbuffered</strong>)' : '').":\n".htmlspecialchars($query_id)."\n";
			if (function_exists('memory_get_usage')) {
				$memory_before = number_format((memory_get_usage() / 1024));
			}
		}

		$before_time	= $this->_get_microtime();
        $this->query_id = $query_type($query_id, $this->connection_id);
		$after_time	= $this->_get_microtime();
		$this->queries[] = $query_id;
        if (!$this->query_id) {
            $this->_halt($query_id);
		}
		$this->query_count++;
		if ($this->debug==true) {
			$str.= "SQL执行时间: " . ($after_time - $before_time) . "\n";
			if (function_exists('memory_get_usage')) {
				$memory_after = number_format((memory_get_usage() / 1024));
				$str.= "内存占用: " . ($memory_after - $memory_before).'KB'."\n";
			}
			$str.= "</pre>";
			if ($this->debug==true AND preg_match('#(^|\s)SELECT\s+#si', $query_id)) {
				$explain_id = mysql_query("EXPLAIN " . $query_id, $this->connection_id);
				$str.= '
				<table width="80%" border="1" style="border-collapse:collapse;text-align:center;" cellpadding="0" cellspacing="0" bordercolor="#000000" align="center">
				<tr height="25" style="font-weight:bold">
					<td>table</td>
					<td>type</td>
					<td>possible_keys</td>
					<td>key</td>
					<td>key_len</td>
					<td>ref</td>
					<td>rows</td>
					<td>Extra</td>
				</tr>
				';
				$str_tmp = "";
				while($array = mysql_fetch_assoc($explain_id)) {
					$str_tmp.= "
					<tr height='25'>
						<td>$array[table]</td>
						<td>$array[type]</td>
						<td>$array[possible_keys]</td>
						<td>$array[key]</td>
						<td>$array[key_len]</td>
						<td>$array[ref]</td>
						<td>$array[rows]</td>
						<td>$array[Extra]</td>
					</tr>
					";
				}
				$str.= $str_tmp."</table>\n<br /><hr width='80%' />\n";
			}else{
				$str.= "\n<hr width='80%' />\n\n";
			}
		}
		$this->query_log[] = $str;
        return $this->query_id;
	}
	function begin(){
		$this->query_unbuffered('BEGIN');
		$this->transaction = 1;
	}
	function commit(){
		if ($this->transaction) {
			$this->query_unbuffered('COMMIT');
			$this->transaction = 0;
		}
	}
	function savepoint($point){
		$this->query_unbuffered('SAVEPOINT '.$point);
	}
	function rollback($point=''){
		if ($this->transaction) {
			$this->query_unbuffered('ROLLBACK'.($point ? ' TO SAVEPOINT '.$point : ''));
			$this->transaction = 0;
		}
	}
	function __destruct(){
		$this->close_db();
	}
}
?>