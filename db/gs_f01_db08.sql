-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018 年 10 月 18 日 14:59
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_f01_db08`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `book_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `book_url` text COLLATE utf8_unicode_ci NOT NULL,
  `book_coment` text COLLATE utf8_unicode_ci NOT NULL,
  `book_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `book_name`, `book_url`, `book_coment`, `book_date`) VALUES
(2, 'JavaScript 第6版', 'https://www.oreilly.co.jp/books/9784873115733/', '詳しい', '2018-09-16'),
(3, '本当によくわかるJavaScriptの教科書', 'https://www.sbcr.jp/products/4797395150.html', '図解でわかりやすい', '2018-09-15');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_data_table`
--

CREATE TABLE IF NOT EXISTS `gs_data_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_data_table`
--

INSERT INTO `gs_data_table` (`id`, `name`, `author`, `detail`, `indate`, `image`) VALUES
(1, '真珠の首飾りの女', 'フェルメール', '<p>首飾りの女</p>\r\n', '2018-10-18 20:24:27', 'upload/20181018132427d41d8cd98f00b204e9800998ecf8427e.jpg'),
(3, '真珠の耳飾りの女', 'フェルメール', '青い色が綺麗', '2018-10-18 21:03:11', 'upload/20181018140311d41d8cd98f00b204e9800998ecf8427e.jpg'),
(4, '天文学者', 'フェルメール', '天球儀を触っている\r\n', '2018-10-18 21:38:41', 'upload/20181018143841d41d8cd98f00b204e9800998ecf8427e.JPG'),
(5, '地理学者', 'フェルメール', 'コンパスを使っている\r\n', '2018-10-18 21:39:38', 'upload/20181018143938d41d8cd98f00b204e9800998ecf8427e.jpg'),
(6, '小路', 'フェルメール', '風景画\r\n', '2018-10-18 21:40:43', 'upload/20181018144043d41d8cd98f00b204e9800998ecf8427e.jpg'),
(7, 'デルフト眺望', 'フェルメール', '風景画\r\n', '2018-10-18 21:42:50', 'upload/20181018144250d41d8cd98f00b204e9800998ecf8427e.jpg');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_php02_table`
--

CREATE TABLE IF NOT EXISTS `gs_php02_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_php02_table`
--

INSERT INTO `gs_php02_table` (`id`, `name`, `email`, `age`, `detail`, `indate`) VALUES
(1, 'アンパンマン', 'an@gmail.com', 10, 'あんぱん', '2018-09-18'),
(2, 'しょくぱんまん', 'syoku@gmail.com', 20, 'しょくぱん', '2018-09-17'),
(3, 'カレーパンマン', 'kare@gmail.com', 40, 'カレーぱん', '2018-09-17'),
(5, 'ジャムおじさん', 'jam@gmail.com', 20, 'アンパンマンを作った人', '2018-09-07'),
(6, 'バタコさん', 'bata@gmail.com', 30, 'かわいい', '2018-09-13'),
(7, 'てんどんマン', 'ten@gmail.com', 30, 'てんてんどんどん', '2018-09-05'),
(8, 'おにぎりまん', 'oni@gmail.com', 50, 'おにぎり', '2018-09-09'),
(10, 'メロンパンナ', 'melon@gmail.com', 0, 'メロメロ', '2018-09-26');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(12, 'フェルメール', 'fer', 'fer', 1, 0),
(13, 'ラファエロ', 'raf', 'raf', 0, 0),
(14, 'ルーベンス', 'rub', 'rub', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gs_php02_table`
--
ALTER TABLE `gs_php02_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
