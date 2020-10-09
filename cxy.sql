-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-10-08 14:07:00
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cxy`
--

-- --------------------------------------------------------

--
-- 表的结构 `details`
--

CREATE TABLE `details` (
  `fid` int(11) NOT NULL,
  `image` varchar(40) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `details` varchar(80) DEFAULT NULL,
  `num` varchar(40) DEFAULT NULL,
  `brand` varchar(40) DEFAULT NULL,
  `place` varchar(40) DEFAULT NULL,
  `package` varchar(40) DEFAULT NULL,
  `weight` varchar(40) DEFAULT NULL,
  `r` varchar(40) DEFAULT NULL,
  `vl` varchar(40) DEFAULT NULL,
  `im` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `details`
--

INSERT INTO `details` (`fid`, `image`, `title`, `details`, `num`, `brand`, `place`, `package`, `weight`, `r`, `vl`, `im`) VALUES
(2, '/img/details/5.jpg', '河北绿宝香瓜（大箱）', '卖相好 口感甜 果径大小略有不均 皮重约2.5-3斤 称重出售', '库存量50件', '品牌：---', '产地：国内 辽宁', '包装规格：塑料筐约 26.0斤(毛重)', '毛重：26.00斤', '果径：70-75mm', '包装体积：52cm*35cm*18cm', '/img/details/1_1.jpg'),
(3, '/img/details/1.jpg', '大连黄油桃（塑筐/大果）', '单果3.5-4两 口感脆甜 颜色红润 上下果大小略有不均 有花皮 皮重2.8斤 冷库果个别发青', '库存量46件', '品牌：---', '产地：国内 辽宁', '包装规格：塑料筐约 26.0斤(毛重)', '毛重：26.00斤', '果径：70-75mm', '包装体积：52cm*35cm*18cm', '/img/details/1_1.jpg'),
(4, '/img/details/3.jpg', '秘鲁蓝莓', '果粉一般 口感酸甜 甜口多 硬度好 个别坏果属于正常现象 包装不固定', '库存量116件', '品牌：---', '产地：海外 秘鲁', '包装规格：125g* 12.0盒', '毛重：3.00斤', '果径：15+mm', '包装体积：33cm*23cm*9cm', '/img/details/3_3.jpg'),
(6, '/img/details/4.jpg', '云南蜜桔（70-75#）', '口感酸甜 颜色黄 上下均匀 果面干净 皮重约4.5斤 此商品以实际称重为准', '库存量42件', '品牌：---', '产地：国内 辽宁', '包装规格：塑料筐约 26.0斤(毛重)', '毛重：26.00斤', '果径：70-75mm', '包装体积：52cm*35cm*18cm', '/img/details/4_4.jpg'),
(7, '/img/details/2.jpg', '四川凯特芒果（20斤）', '9-12颗 头数不固定 成熟度一般 个头均匀 口感香甜 略微酸 果面有小点 微带手感 皮重约1-3两 外包装/网套/标识随机', '库存量15件', '品牌：---', '产地：国内 四川', '包装规格：泡沫箱约 20.0斤(毛重)', '毛重：20.00斤', '果径：120+mm', '包装体积：56cm*40cm*18cm', '/img/details/2_2.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pro`
--

CREATE TABLE `pro` (
  `fid` int(11) NOT NULL,
  `image` varchar(40) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `details` varchar(80) DEFAULT NULL,
  `price` varchar(16) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pro`
--

INSERT INTO `pro` (`fid`, `image`, `title`, `details`, `price`, `href`) VALUES
(2, '/img/index/5.png', '河北绿宝香瓜', '美味香甜  脆爽可口', '¥3.58/斤', '5'),
(3, '/img/index/4.png', '大连黄油桃', '圆润饱满 香甜多汁', '¥4.55/斤', '4'),
(4, '/img/index/2.png', '秘鲁蓝莓', '果肉细腻  爽口多汁', '¥69/件', '2'),
(6, '/img/index/3.png', '云南蜜桔', '清甜多汁  果肉细腻', '¥56.24/斤', '3'),
(7, '/img/index/1.png', '四川野生凯特芒果', '香甜多汁  果味浓郁', '¥5.38/斤', '1');

-- --------------------------------------------------------

--
-- 表的结构 `prolist`
--

CREATE TABLE `prolist` (
  `fid` int(11) NOT NULL,
  `fname` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `prolist`
--

INSERT INTO `prolist` (`fid`, `fname`) VALUES
(1, '蔬果类'),
(2, '瓜类'),
(3, '核果类'),
(4, '浆果类'),
(5, '仁果类'),
(6, '柑橘类'),
(7, '热带类'),
(8, '干果类'),
(9, '包装耗材');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `upwd` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `phone`, `upwd`) VALUES
(1, '13402881234', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `prolist`
--
ALTER TABLE `prolist`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `details`
--
ALTER TABLE `details`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `pro`
--
ALTER TABLE `pro`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
