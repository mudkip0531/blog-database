-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-01-01 15:45:58
-- 伺服器版本： 10.1.38-MariaDB
-- PHP 版本： 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `final`
--

-- --------------------------------------------------------

--
-- 資料表結構 `art`
--

CREATE TABLE `art` (
  `art_id` int(10) UNSIGNED NOT NULL,
  `cat_id` smallint(5) UNSIGNED DEFAULT '0',
  `user_id` int(10) UNSIGNED DEFAULT '0',
  `title` varchar(45) DEFAULT '',
  `content` text,
  `pubtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastup` int(10) UNSIGNED DEFAULT '0',
  `comm` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 傾印資料表的資料 `art`
--

INSERT INTO `art` (`art_id`, `cat_id`, `user_id`, `title`, `content`, `pubtime`, `lastup`, `comm`) VALUES
(1, 1, 0, '天氣冷', '請多穿衣服喔!!!!!', 1610519179, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `catname` char(30) NOT NULL DEFAULT '',
  `num` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cat`
--

INSERT INTO `cat` (`cat_id`, `catname`, `num`) VALUES
(1, '小雞上工', 0),
(2, '2022', 0),
(3, '隆重登場', 0),
(4, '資料庫系統', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `lastlogin` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`user_id`, `name`, `password`, `lastlogin`) VALUES
(0, 'database', '0000', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`art_id`);

--
-- 資料表索引 `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 在傾印的資料表使用自動增長(AUTO_INCREMENT)
--

--
-- 使用資料表自動增長(AUTO_INCREMENT) `art`
--
ALTER TABLE `art`
  MODIFY `art_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動增長(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
