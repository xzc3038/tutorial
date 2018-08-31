-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-08-31 09:30:33
-- 服务器版本： 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xshop`
--

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `gname` varchar(32) NOT NULL DEFAULT '' COMMENT '商品名',
  `discript` varchar(32) NOT NULL DEFAULT '' COMMENT '商品描述',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `total` int(4) NOT NULL DEFAULT '0' COMMENT '总量',
  `inventory` int(4) NOT NULL DEFAULT '0' COMMENT '库存量',
  `sold` int(4) NOT NULL DEFAULT '0' COMMENT '已售量',
  `img1` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片1',
  `img2` varchar(255) DEFAULT NULL COMMENT '商品图片2',
  `img3` varchar(255) DEFAULT NULL COMMENT '商品图片3',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表' ROW_FORMAT=COMPACT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
