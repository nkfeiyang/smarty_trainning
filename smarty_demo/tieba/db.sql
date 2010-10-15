-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2010 年 10 月 13 日 08:47
-- 服务器版本: 5.1.41
-- PHP 版本: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `tieba`
--
DROP DATABASE `tieba`;
CREATE DATABASE `tieba` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tieba`;

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  `click` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reply_count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `db_error`
--

DROP TABLE IF EXISTS `db_error`;
CREATE TABLE IF NOT EXISTS `db_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `error_str` mediumtext,
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timer` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='数据库错误记录' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `reply`
--

DROP TABLE IF EXISTS `reply`;
CREATE TABLE IF NOT EXISTS `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
