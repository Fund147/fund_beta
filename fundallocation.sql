-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 07 月 19 日 04:12
-- 服务器版本: 5.5.27
-- PHP 版本: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `fundallocation`
--

-- --------------------------------------------------------

--
-- 表的结构 `allocation_assetinformation`
--

CREATE TABLE IF NOT EXISTS `allocation_assetinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tID` int(11) NOT NULL,
  `aName` varchar(30) NOT NULL,
  `aClass` varchar(30) NOT NULL,
  `aMarket` varchar(30) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `lotSize` double NOT NULL,
  `pPrice` double NOT NULL,
  `tPrice` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `allocation_assetinformation`
--

INSERT INTO `allocation_assetinformation` (`id`, `tID`, `aName`, `aClass`, `aMarket`, `currency`, `lotSize`, `pPrice`, `tPrice`) VALUES
(1, 1, 'dangdang', 'shares', 'shares', 'dolor', 100, 50, 60),
(4, 2, 'maotai', 'shares', 'shares', 'renminbi', 200, 40, 50);

-- --------------------------------------------------------

--
-- 表的结构 `allocation_checkresult`
--

CREATE TABLE IF NOT EXISTS `allocation_checkresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consignmentNo` varchar(30) NOT NULL,
  `sName` varchar(30) NOT NULL,
  `is_pass` varchar(30) NOT NULL,
  `checkInformation` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `allocation_customeraccount`
--

CREATE TABLE IF NOT EXISTS `allocation_customeraccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `cID` int(11) NOT NULL,
  `tID` int(11) NOT NULL,
  `consignmentNo` varchar(30) NOT NULL,
  `assetAmount` double NOT NULL,
  `BuyingAmount` double NOT NULL,
  `priority` int(11) NOT NULL,
  `designatedQuantity` double NOT NULL,
  `TotalAmount` double NOT NULL,
  `ExistingPercentage` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `allocation_customeraccount`
--

INSERT INTO `allocation_customeraccount` (`id`, `name`, `cID`, `tID`, `consignmentNo`, `assetAmount`, `BuyingAmount`, `priority`, `designatedQuantity`, `TotalAmount`, `ExistingPercentage`) VALUES
(1, 'Jim', 1, 1, '2001', 200, 20, 1, 10, 500, 0.4),
(2, 'Jack', 2, 1, '2001', 100, 40, 1, 20, 500, 0.2),
(3, 'Lily', 3, 1, '2001', 40, 40, 2, 10, 400, 0.1),
(4, 'Lucy', 4, 1, '2001', 60, 30, 1, 20, 1000, 0.06),
(5, 'Tom', 5, 1, '2001', 100, 50, 1, 20, 800, 0.125),
(6, 'Dom', 6, 2, '2002', 100, 100, 1, 30, 500, 0.2),
(7, 'sheldon', 7, 2, '2002', 200, 100, 2, 40, 2000, 0.1),
(8, 'tony', 8, 2, '2002', 50, 200, 1, 20, 100, 0.5),
(9, 'shely', 9, 2, '2002', 300, 200, 1, 20, 1000, 0.3),
(10, 'sel', 10, 1, '2005', 200, 200, 1, 50, 1000, 0.2);

-- --------------------------------------------------------

--
-- 表的结构 `allocation_dealer`
--

CREATE TABLE IF NOT EXISTS `allocation_dealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(30) NOT NULL,
  `dID` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contractInformation` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `allocation_dealer`
--

INSERT INTO `allocation_dealer` (`id`, `dName`, `dID`, `password`, `contractInformation`) VALUES
(1, '12', 12, '12', '12'),
(10, '1', 1, '1', '1'),
(11, 'yulei', 10000, 'yulei', '155'),
(12, '445', 445, '445', '445'),
(13, '32', 23, '32', '32'),
(14, 'fuyao', 388, 'fuyao', '155'),
(15, 'yulei', 111, 'yulei', '123'),
(16, 'wuhan', 101, 'wuhan', '155');

-- --------------------------------------------------------

--
-- 表的结构 `allocation_result`
--

CREATE TABLE IF NOT EXISTS `allocation_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consignmentNo` varchar(30) NOT NULL,
  `cID` int(11) NOT NULL,
  `allocationInformation` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `allocation_supervisor`
--

CREATE TABLE IF NOT EXISTS `allocation_supervisor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(30) NOT NULL,
  `sID` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contractInformation` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `allocation_supervisor`
--

INSERT INTO `allocation_supervisor` (`id`, `sName`, `sID`, `password`, `contractInformation`) VALUES
(1, 'fu', 200, 'fu', '155');

-- --------------------------------------------------------

--
-- 表的结构 `allocation_transationrecord`
--

CREATE TABLE IF NOT EXISTS `allocation_transationrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tdealer` varchar(30) NOT NULL,
  `tState` varchar(30) NOT NULL,
  `tID` int(11) NOT NULL,
  `tAccount` varchar(30) NOT NULL,
  `consignmentNo` varchar(30) NOT NULL,
  `transactionNo` varchar(30) NOT NULL,
  `transationAmount` double NOT NULL,
  `transationPrice` double NOT NULL,
  `tdate` varchar(30) NOT NULL,
  `customerNumber` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- 转存表中的数据 `allocation_transationrecord`
--

INSERT INTO `allocation_transationrecord` (`id`, `tdealer`, `tState`, `tID`, `tAccount`, `consignmentNo`, `transactionNo`, `transationAmount`, `transationPrice`, `tdate`, `customerNumber`) VALUES
(7, 'yulei', 'undistribute', 1, '101', '2001', '3001', 100, 20, '2013-09-23', 5),
(8, 'yulei', 'undistribute', 2, '102', '2002', '3002', 200, 10, '2013-09-23', 4),
(10, 'yulei', 'undistribute', 1, '104', '2004', '3004', 500, 40, '2013-7-13', 3),
(11, 'yulei', 'undistribute', 1, '105', '2005', '3005', 100, 20, '2013-7-17', 1);

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add transation record', 7, 'add_transationrecord'),
(20, 'Can change transation record', 7, 'change_transationrecord'),
(21, 'Can delete transation record', 7, 'delete_transationrecord'),
(22, 'Can add asset information', 8, 'add_assetinformation'),
(23, 'Can change asset information', 8, 'change_assetinformation'),
(24, 'Can delete asset information', 8, 'delete_assetinformation'),
(25, 'Can add result', 9, 'add_result'),
(26, 'Can change result', 9, 'change_result'),
(27, 'Can delete result', 9, 'delete_result'),
(28, 'Can add customer account', 10, 'add_customeraccount'),
(29, 'Can change customer account', 10, 'change_customeraccount'),
(30, 'Can delete customer account', 10, 'delete_customeraccount'),
(31, 'Can add dealer', 11, 'add_dealer'),
(32, 'Can change dealer', 11, 'change_dealer'),
(33, 'Can delete dealer', 11, 'delete_dealer'),
(34, 'Can add supervisor', 12, 'add_supervisor'),
(35, 'Can change supervisor', 12, 'change_supervisor'),
(36, 'Can delete supervisor', 12, 'delete_supervisor'),
(37, 'Can add check result', 13, 'add_checkresult'),
(38, 'Can change check result', 13, 'change_checkresult'),
(39, 'Can delete check result', 13, 'delete_checkresult');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$S0hIOAuEIqTV$1umflFu4sW6FnZdeCixUjnjDaqqxV5ZSjcZVM4pnoe0=', '2013-07-08 04:57:21', 1, 'fund', '', '', '1191874648@qq.com', 1, 1, '2013-07-08 04:57:21');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'transation record', 'allocation', 'transationrecord'),
(8, 'asset information', 'allocation', 'assetinformation'),
(9, 'result', 'allocation', 'result'),
(10, 'customer account', 'allocation', 'customeraccount'),
(11, 'dealer', 'allocation', 'dealer'),
(12, 'supervisor', 'allocation', 'supervisor'),
(13, 'check result', 'allocation', 'checkresult');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3vgph8cv64fr0bqh5l9jlr2kmm6bip9x', 'Zjk2ZDNkNTc1MThmNmI4YTcwZDM0NzFkMDAyZDlmNTYyY2Y0Y2I0NTqAAn1xAShVA2RJRIoBb1UFZE5hbWVYBQAAAHl1bGVpVQNzSUSKAsgAVQVzTmFtZVgCAAAAZnVVA3RJRFgBAAAAM3Uu', '2013-08-02 00:42:03');

-- --------------------------------------------------------

--
-- 表的结构 `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
