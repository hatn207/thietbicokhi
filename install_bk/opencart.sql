-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2016 at 09:42 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pav_krstore_2200`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 2, 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 230, 3776, ''),
(2, 3, 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 230, 3757, ''),
(3, 4, 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 230, 3755, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(5, 'Default', '5hhmlme2tK9CF5pl0J4antgRhxDjbJZwY7Lkc1PfpNtA86RkBMJMpXqtQ7LRUZuOdDYGCEl9u9emjaHsFEbbJzfNAnEwi9Fwjp3qwxU9mgyt1qJXsk2y9k54KkscOzKWuFYZsZbdi5JDtWviiMSQUXlTr1fskiz3QcE9E2hC7Qs64PbL7RQwDORhXmbm3sAqfeO76rYeeMoDW9wVMIEzyNyEJzwA26LXy4jVSQ0Sq2Cxk2c6VMgIYsMpAGfJsaxg', 1, '2016-04-02 03:26:54', '2016-04-02 03:26:54'),
(6, 'Default', 'BGgdBtglvsF3VAclVPg07fV2DtcCzZYf3GbFT1xkPR35ha9Q5t37BdTAIETe6VCijnaX20ko7tY4osID6q3QTenaiFAUsAoiPKi88koPCJXCrGBH73AZniLwj1Js60DiBVag9kYVgApDhjU3zPUn24AovgJRtt0SoP4q62WxZ1YW7eWrLgF9YDOzZsTGFXshpTumoJ5AgcXpRV0jZT16FcWTz8TO7xOAKAj1rbQxmIVQyHS5nW19Ngrx3hCMDwxJ', 1, '2016-04-12 08:03:52', '2016-04-12 08:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(2, 3, '::1'),
(4, 4, '::1'),
(5, 6, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(13, 6, 'cXwEnGHzOYiMPLZXuHIFY4Rx10IHWK8S', '1q48hq4dsgq8thrt43v76cqmo3', 'temp_session_570f03a279ef2', '::1', '2016-04-14 09:42:42', '2016-04-14 09:42:47'),
(14, 6, 'ZRErD3WW2CKtp8Bd6qwzKDmlv0pyxBJG', '1q48hq4dsgq8thrt43v76cqmo3', 'temp_session_570f03a85aed3', '::1', '2016-04-14 09:42:48', '2016-04-14 09:42:50'),
(15, 6, 'fASgzrlcohiYBhPPbjHmY21GEa9Sz6lq', '1q48hq4dsgq8thrt43v76cqmo3', 'temp_session_570f03aa7cd5d', '::1', '2016-04-14 09:42:50', '2016-04-14 09:42:51'),
(16, 6, 'ZonN8pGOehxDLDVk1t9olqly2Z4Vtx3z', '1q48hq4dsgq8thrt43v76cqmo3', 'temp_session_570f03abab827', '::1', '2016-04-14 09:42:51', '2016-04-14 09:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(9, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=284 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(283, 9, '#', 'catalog/demo/manufacturer/2.png', 23),
(282, 9, '#', 'catalog/demo/manufacturer/3.png', 22),
(281, 9, '#', 'catalog/demo/manufacturer/2.png', 21),
(280, 9, '#', 'catalog/demo/manufacturer/5.png', 20),
(279, 9, '#', 'catalog/demo/manufacturer/4.png', 19),
(278, 9, '#', 'catalog/demo/manufacturer/3.png', 18),
(277, 9, '#', 'catalog/demo/manufacturer/2.png', 17),
(276, 9, '#', 'catalog/demo/manufacturer/1.png', 16),
(275, 9, '#', 'catalog/demo/manufacturer/6.png', 15),
(274, 9, '#', 'catalog/demo/manufacturer/5.png', 14),
(273, 9, '#', 'catalog/demo/manufacturer/4.png', 13),
(272, 9, '#', 'catalog/demo/manufacturer/3.png', 12),
(271, 9, '#', 'catalog/demo/manufacturer/6.png', 11),
(270, 9, '#', 'catalog/demo/manufacturer/5.png', 10),
(269, 9, '#', 'catalog/demo/manufacturer/4.png', 9),
(268, 9, '#', 'catalog/demo/manufacturer/3.png', 8),
(267, 9, '#', 'catalog/demo/manufacturer/2.png', 7),
(266, 9, '#', 'catalog/demo/manufacturer/1.png', 6),
(265, 9, '#', 'catalog/demo/manufacturer/6.png', 5),
(264, 9, '#', 'catalog/demo/manufacturer/5.png', 4),
(263, 9, '#', 'catalog/demo/manufacturer/4.png', 3),
(262, 9, '#', 'catalog/demo/manufacturer/3.png', 2),
(261, 9, '#', 'catalog/demo/manufacturer/1.png', 1),
(260, 9, '#', 'catalog/demo/manufacturer/2.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(283, 2, 9, 'logo 24'),
(283, 1, 9, 'logo 24'),
(282, 2, 9, 'logo 23'),
(282, 1, 9, 'logo 23'),
(281, 2, 9, 'logo 22'),
(281, 1, 9, 'logo 22'),
(280, 2, 9, 'logo 21'),
(280, 1, 9, 'logo 21'),
(279, 2, 9, 'logo 20'),
(279, 1, 9, 'logo 20'),
(278, 2, 9, 'logo 19'),
(278, 1, 9, 'logo 19'),
(277, 2, 9, 'logo 18'),
(277, 1, 9, 'logo 18'),
(276, 2, 9, 'logo 17'),
(276, 1, 9, 'logo 17'),
(275, 2, 9, 'logo 16'),
(275, 1, 9, 'logo 16'),
(274, 2, 9, 'logo 15'),
(274, 1, 9, 'logo 15'),
(273, 2, 9, 'logo 14'),
(273, 1, 9, 'logo 14'),
(272, 2, 9, 'logo 13'),
(272, 1, 9, 'logo 13'),
(271, 2, 9, 'logo 12'),
(271, 1, 9, 'logo 12'),
(270, 2, 9, 'logo 11'),
(270, 1, 9, 'logo 11'),
(269, 2, 9, 'logo 10'),
(269, 1, 9, 'logo 10'),
(268, 2, 9, 'logo 09'),
(268, 1, 9, 'logo 09'),
(267, 2, 9, 'logo 08'),
(267, 1, 9, 'logo 08'),
(266, 2, 9, 'logo 07'),
(266, 1, 9, 'logo 07'),
(265, 2, 9, 'logo 06'),
(265, 1, 9, 'logo 06'),
(264, 2, 9, 'logo 05'),
(264, 1, 9, 'logo 05'),
(263, 2, 9, 'logo 04'),
(263, 1, 9, 'logo 04'),
(262, 2, 9, 'logo 03'),
(262, 1, 9, 'logo 03'),
(261, 2, 9, 'logo 01'),
(261, 1, 9, 'logo 01'),
(260, 2, 9, 'logo 02'),
(260, 1, 9, 'logo 02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(4, 1, 'a83mts1teh6l59rsf2klkoghq1', 28, 0, '[]', 4, '2016-03-12 14:27:34'),
(5, 1, 'a83mts1teh6l59rsf2klkoghq1', 46, 0, '[]', 1, '2016-03-12 14:28:25'),
(6, 1, 'a83mts1teh6l59rsf2klkoghq1', 36, 0, '[]', 1, '2016-03-12 14:32:08'),
(7, 1, 'a83mts1teh6l59rsf2klkoghq1', 45, 0, '[]', 1, '2016-03-12 15:53:23'),
(9, 2, 'oo22atdp6pl5mkdrl35l3pqt76', 52, 0, '[]', 4, '2016-03-18 10:03:43'),
(11, 3, 'cb0idp9tskq2r0irgvhmgoth57', 59, 0, '[]', 1, '2016-04-25 09:01:03'),
(12, 3, 'cb0idp9tskq2r0irgvhmgoth57', 63, 0, '[]', 1, '2016-04-25 09:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(85, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 0, 1, '2015-09-15 17:13:59', '2016-02-25 15:15:39'),
(67, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 16:43:13', '2016-02-25 15:14:21'),
(68, 'catalog/demo/banners/banner-category.jpg', 64, 1, 1, 0, 1, '2015-09-15 16:44:07', '2016-02-25 15:13:13'),
(69, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 0, 1, '2015-09-15 16:46:56', '2016-02-25 15:14:52'),
(70, 'catalog/demo/banners/banner-category.jpg', 69, 1, 1, 0, 1, '2015-09-15 16:47:45', '2016-02-25 15:14:59'),
(71, 'catalog/demo/banners/banner-category.jpg', 69, 1, 1, 0, 1, '2015-09-15 16:48:06', '2016-02-25 15:15:24'),
(72, 'catalog/demo/banners/banner-category.jpg', 69, 1, 1, 0, 1, '2015-09-15 16:51:04', '2016-02-25 15:15:15'),
(73, 'catalog/demo/banners/banner-category.jpg', 69, 1, 1, 0, 1, '2015-09-15 16:51:31', '2016-02-25 15:15:07'),
(74, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 0, 1, '2015-09-15 16:52:11', '2016-02-25 15:11:05'),
(75, 'catalog/demo/banners/banner-category.jpg', 74, 1, 1, 0, 1, '2015-09-15 16:54:12', '2016-02-25 15:11:19'),
(76, 'catalog/demo/banners/banner-category.jpg', 74, 1, 1, 0, 1, '2015-09-15 16:54:28', '2016-02-25 15:11:12'),
(77, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 0, 1, '2015-09-15 16:56:12', '2016-02-25 15:13:22'),
(78, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 16:57:52', '2016-02-25 15:14:29'),
(79, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 16:58:23', '2016-02-25 15:14:46'),
(80, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-15 17:01:51', '2016-02-25 15:14:38'),
(81, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 0, 1, '2015-09-15 17:02:56', '2016-02-25 15:11:26'),
(82, 'catalog/demo/banners/banner-category.jpg', 81, 1, 1, 0, 1, '2015-09-15 17:04:37', '2016-02-25 15:12:21'),
(83, 'catalog/demo/banners/banner-category.jpg', 81, 1, 1, 0, 1, '2015-09-15 17:11:46', '2016-02-25 15:11:33'),
(84, 'catalog/demo/banners/banner-category.jpg', 69, 1, 1, 0, 1, '2015-09-15 17:12:14', '2016-02-25 15:15:31'),
(64, 'catalog/demo/banners/banner-category.jpg', 0, 1, 1, 0, 1, '2015-09-15 16:39:46', '2016-02-25 15:12:30'),
(65, 'catalog/demo/banners/banner-category.jpg', 64, 1, 1, 0, 1, '2015-09-15 16:40:27', '2016-02-25 15:12:46'),
(66, 'catalog/demo/banners/banner-category.jpg', 64, 1, 1, 0, 1, '2015-09-15 16:42:18', '2016-02-25 15:12:38'),
(86, 'catalog/demo/banners/banner-category.jpg', 77, 1, 1, 0, 1, '2015-09-23 09:56:55', '2016-02-25 15:14:13'),
(87, 'catalog/demo/banners/banner-category.jpg', 64, 1, 1, 0, 1, '2015-09-23 09:57:22', '2016-02-25 15:13:04'),
(88, 'catalog/demo/banners/banner-category.jpg', 64, 1, 1, 0, 1, '2015-09-23 09:59:20', '2016-02-25 15:12:55'),
(89, 'catalog/demo/banners/banner-category.jpg', 81, 1, 1, 0, 1, '2015-09-23 10:57:25', '2016-02-25 15:11:57'),
(90, 'catalog/demo/banners/banner-category.jpg', 81, 0, 1, 0, 1, '2015-09-23 10:57:52', '2016-02-25 15:12:12'),
(91, 'catalog/demo/banners/banner-category.jpg', 81, 1, 1, 0, 1, '2015-09-23 10:59:27', '2016-02-25 15:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(84, 1, 'Treatment', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Treatment', '', ''),
(84, 2, 'Treatment', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Treatment', '', ''),
(85, 1, 'Tool &amp; brushes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tool &amp; brushes', '', ''),
(85, 2, 'Tool &amp; brushes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tool &amp; brushes', '', ''),
(86, 1, 'Foundation', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Foundation', '', ''),
(86, 2, 'Foundation', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Foundation', '', ''),
(91, 1, 'Conditioner', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Conditioner', '', ''),
(87, 2, 'Foundation sets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Foundation sets', '', ''),
(87, 1, 'Foundation sets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Foundation sets', '', ''),
(88, 1, 'Face primer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Face primer', '', ''),
(88, 2, 'Face primer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Face primer', '', ''),
(89, 2, 'Flat Irons &amp; Stylers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Flat Irons &amp; Stylers', '', ''),
(91, 2, 'Conditioner', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Conditioner', '', ''),
(90, 2, 'Shampoo', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shampoo', '', ''),
(73, 1, 'Masks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Masks', '', ''),
(73, 2, 'Masks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Masks', '', ''),
(74, 2, 'Fragrance', '&lt;p&gt;a&lt;/p&gt;', 'Fragrance', '', ''),
(75, 2, 'Women', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Women', '', ''),
(76, 2, 'Men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Men', '', ''),
(77, 2, 'Nails', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails', '', ''),
(78, 2, 'Nail polish', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nail polish', '', ''),
(79, 2, 'Nails kits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails kits', '', ''),
(80, 1, 'Nails effects', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails effects', '', ''),
(81, 2, 'Hair', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Hair', '', ''),
(82, 2, 'Styling product &amp; tools', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Styling product &amp; tools', '', ''),
(83, 2, 'Best for', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Best for', '', ''),
(64, 1, 'Make up', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Make up', '', ''),
(64, 2, 'Make up', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Make up', '', ''),
(65, 2, 'Face makeup', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Face makeup', '', ''),
(66, 1, 'Eye makeup', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Eye makeup', '', ''),
(67, 1, 'Lips', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Lips', '', ''),
(67, 2, 'Lips', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Lips', '', ''),
(68, 2, 'Nails', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails', '', ''),
(69, 2, 'Skin care', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Skin care', '', ''),
(70, 1, 'Cleanse', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cleanse', '', ''),
(70, 2, 'Cleanse', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cleanse', '', ''),
(71, 2, 'Treat', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Treat', '', ''),
(72, 1, 'Other needs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Other needs', '', ''),
(72, 2, 'Other needs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Other needs', '', ''),
(80, 2, 'Nails effects', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails effects', '', ''),
(74, 1, 'Fragrance', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fragrance', '', ''),
(76, 1, 'Men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Men', '', ''),
(75, 1, 'Women', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Women', '', ''),
(81, 1, 'Hair', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Hair', '', ''),
(83, 1, 'Best for', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Best for', '', ''),
(90, 1, 'Shampoo', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shampoo', '', ''),
(82, 1, 'Styling product &amp; tools', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Styling product &amp; tools', '', ''),
(66, 2, 'Eye makeup', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Eye makeup', '', ''),
(65, 1, 'Face makeup', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Face makeup', '', ''),
(68, 1, 'Nails', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails', '', ''),
(77, 1, 'Nails', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails', '', ''),
(78, 1, 'Nail polish', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nail polish', '', ''),
(79, 1, 'Nails kits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nails kits', '', ''),
(69, 1, 'Skin care', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Skin care', '', ''),
(71, 1, 'Treat', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Treat', '', ''),
(89, 1, 'Flat Irons &amp; Stylers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Flat Irons &amp; Stylers', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(64, 1),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(65, 1),
(65, 2),
(65, 3),
(65, 4),
(65, 5),
(66, 1),
(66, 2),
(66, 3),
(66, 4),
(66, 5),
(68, 1),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(69, 1),
(69, 2),
(69, 3),
(69, 4),
(69, 5),
(70, 1),
(70, 2),
(70, 3),
(70, 4),
(70, 5),
(72, 1),
(72, 2),
(72, 3),
(72, 4),
(72, 5),
(73, 1),
(73, 2),
(73, 3),
(73, 4),
(73, 5),
(74, 1),
(74, 2),
(74, 3),
(74, 4),
(74, 5),
(75, 1),
(75, 2),
(75, 3),
(75, 4),
(75, 5),
(76, 1),
(76, 2),
(76, 3),
(76, 4),
(76, 5),
(77, 1),
(77, 2),
(77, 3),
(77, 4),
(77, 5),
(78, 1),
(78, 2),
(78, 3),
(78, 4),
(78, 5),
(79, 1),
(79, 2),
(79, 3),
(79, 4),
(79, 5),
(80, 1),
(80, 2),
(80, 3),
(80, 4),
(80, 5),
(81, 1),
(81, 2),
(81, 3),
(81, 4),
(81, 5),
(82, 1),
(82, 2),
(82, 3),
(82, 4),
(82, 5),
(83, 1),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(85, 1),
(85, 2),
(85, 3),
(85, 4),
(85, 5),
(87, 1),
(87, 2),
(87, 3),
(87, 4),
(87, 5),
(88, 1),
(88, 2),
(88, 3),
(88, 4),
(88, 5),
(89, 1),
(89, 2),
(89, 3),
(89, 4),
(89, 5),
(90, 1),
(90, 2),
(90, 3),
(90, 4),
(90, 5),
(91, 1),
(91, 2),
(91, 3),
(91, 4),
(91, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(82, 81, 0),
(80, 80, 1),
(81, 81, 0),
(78, 78, 1),
(79, 79, 1),
(80, 77, 0),
(79, 77, 0),
(77, 77, 0),
(78, 77, 0),
(76, 74, 0),
(76, 76, 1),
(75, 74, 0),
(75, 75, 1),
(73, 73, 1),
(74, 74, 0),
(72, 72, 1),
(73, 69, 0),
(87, 64, 0),
(87, 87, 1),
(86, 77, 0),
(83, 83, 1),
(84, 69, 0),
(65, 65, 1),
(68, 68, 1),
(67, 67, 1),
(68, 64, 0),
(66, 66, 1),
(67, 77, 0),
(65, 64, 0),
(88, 64, 0),
(66, 64, 0),
(84, 84, 1),
(85, 85, 0),
(64, 64, 0),
(83, 81, 0),
(82, 82, 1),
(86, 86, 1),
(72, 69, 0),
(71, 71, 1),
(71, 69, 0),
(70, 70, 1),
(70, 69, 0),
(69, 69, 0),
(88, 88, 1),
(89, 81, 0),
(89, 89, 1),
(90, 90, 1),
(90, 81, 0),
(91, 81, 0),
(91, 91, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(64, 0, 0),
(71, 0, 0),
(69, 0, 0),
(70, 0, 0),
(67, 0, 0),
(68, 0, 0),
(72, 0, 0),
(66, 0, 0),
(65, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.69250000, 1, '2016-04-25 06:18:05'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2016-04-25 08:52:49'),
(3, 'Euro', 'EUR', '', '€', '2', 0.88940001, 1, '2016-04-25 06:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 'demo', 'demo', 'demo@gmail.com', '123123123123', '', '129074046928a1b30e18785342dd35d5228ab454', '38V3oDc8g', NULL, NULL, 1, 0, '', '::1', 1, 1, 1, '', '', '2016-03-12 14:27:17'),
(2, 1, 0, 'Tung', 'Dinh Van', 'tdesign191@gmail.com', '123456789', '', '0e384f3436c31fea982331f3db66fa2d37f7612f', 'My8nojP7q', NULL, NULL, 0, 1, '', '::1', 1, 1, 0, '', '', '2016-03-18 09:50:47'),
(3, 1, 0, 'Tung', 'Dinh Van', 'kiemtra002@gmail.com', '759312486', '', '6cd4af79c464e299286bdc925e456c61a838d75b', 'pRRmVyiXb', NULL, NULL, 0, 2, '', '::1', 1, 1, 0, '', '', '2016-04-01 09:11:11'),
(4, 1, 0, 'Tung', 'Dinh Van', 'kiemtra003@gmail.com', '0759312486', '0759312486', '2182ec84d9f3183fe3da29c67e2a030aadab58ce', 'JCWGIZRff', NULL, NULL, 0, 3, '', '::1', 1, 1, 0, '', '', '2016-04-07 16:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'login', '{"customer_id":"1","name":"demo demo"}', '::1', '2016-03-12 14:27:34'),
(2, 0, 'order_guest', '{"name":"Tung Dinh Van","order_id":1}', '::1', '2016-03-16 15:20:07'),
(3, 0, 'order_guest', '{"name":"Tu Dinh Van","order_id":2}', '::1', '2016-03-16 15:21:57'),
(4, 2, 'register', '{"customer_id":2,"name":"Tung Dinh Van"}', '::1', '2016-03-18 09:50:48'),
(5, 2, 'login', '{"customer_id":"2","name":"Tung Dinh Van"}', '::1', '2016-03-18 10:03:43'),
(6, 2, 'login', '{"customer_id":"2","name":"Tung Dinh Van"}', '::1', '2016-03-18 15:53:04'),
(7, 0, 'order_guest', '{"name":"Tung Dinh Van","order_id":3}', '::1', '2016-03-23 09:44:53'),
(8, 3, 'register', '{"customer_id":3,"name":"Tung Dinh Van"}', '::1', '2016-04-01 09:11:13'),
(9, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-01 09:13:30'),
(10, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-01 10:30:51'),
(11, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-01 10:36:08'),
(12, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-01 10:44:17'),
(13, 0, 'order_guest', '{"name":"Tung Dinh Van","order_id":4}', '::1', '2016-04-01 11:28:54'),
(14, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-01 11:29:27'),
(15, 3, 'order_account', '{"customer_id":"3","name":"Tung Dinh Van","order_id":5}', '::1', '2016-04-01 11:30:09'),
(16, 0, 'order_guest', '{"name":"Lopez Jennifer","order_id":6}', '::1', '2016-04-01 14:41:32'),
(17, 4, 'register', '{"customer_id":4,"name":"Tung Dinh Van"}', '::1', '2016-04-07 16:24:21'),
(18, 0, 'order_guest', '{"name":"Tung Dinh Van","order_id":7}', '::1', '2016-04-13 10:57:45'),
(19, 0, 'order_guest', '{"name":"Tung Dinh Van","order_id":8}', '::1', '2016-04-13 15:14:24'),
(20, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-19 14:49:59'),
(21, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-20 08:59:00'),
(22, 0, 'order_guest', '{"name":"Tung Dinh Van","order_id":9}', '::1', '2016-04-20 09:16:32'),
(23, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-22 17:36:31'),
(24, 3, 'order_account', '{"customer_id":"3","name":"Tung Dinh Van","order_id":10}', '::1', '2016-04-22 17:37:00'),
(25, 3, 'login', '{"customer_id":"3","name":"Tung Dinh Van"}', '::1', '2016-04-25 08:51:05'),
(26, 3, 'order_account', '{"customer_id":"3","name":"Tung Dinh Van","order_id":11}', '::1', '2016-04-25 08:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2016-03-12 14:27:34'),
(2, 2, '::1', '2016-03-18 09:50:48'),
(3, 3, '::1', '2016-04-01 09:11:13'),
(4, 4, '::1', '2016-04-07 16:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '::1', 1, '2016-03-10 08:18:36', '2016-03-10 08:18:36'),
(3, 'kiemtra001@gmail.com', '::1', 2, '2016-04-19 09:49:45', '2016-04-19 09:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 42, '2016-03-12 14:27:34'),
(1, 30, '2016-03-12 14:32:04'),
(2, 55, '2016-03-18 09:51:15'),
(3, 63, '2016-04-22 17:36:31'),
(4, 60, '2016-04-07 16:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addHistory/after', 'total/voucher/send');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'theme_default'),
(21, 'module', 'themecontrol'),
(22, 'module', 'pavmegamenu'),
(24, 'module', 'pavblogcategory'),
(25, 'module', 'pavblogcomment'),
(27, 'module', 'pavhomebuilder'),
(46, 'module', 'pavsliderlayer'),
(29, 'module', 'special'),
(30, 'module', 'bestseller'),
(31, 'module', 'html'),
(32, 'module', 'pavbloglatest'),
(33, 'module', 'pavnewsletter'),
(35, 'module', 'pavblog'),
(36, 'module', 'filter'),
(40, 'captcha', 'google_captcha'),
(39, 'captcha', 'basic_captcha'),
(44, 'module', 'latest');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 2, 1, 'أسود'),
(1, 1, 1, 'Black'),
(2, 2, 1, 'أبيض'),
(2, 1, 1, 'White'),
(3, 2, 2, '$0.00 - $99.99'),
(3, 1, 2, '$0.00 - $99.99'),
(4, 2, 2, '$100.00 - $199.00'),
(4, 1, 2, '$100.00 - $199.00'),
(5, 2, 2, '$200.00 and above'),
(5, 1, 2, '$200.00 and above');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 2),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 2, 'اللون'),
(1, 1, 'Color'),
(2, 2, 'السعر'),
(2, 1, 'Price');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 0, 1),
(2, 'Arabic', 'arabi', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Pav Blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1569 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(1437, 3, 'category', 'column_left', 0),
(1439, 3, 'filter', 'column_left', 1),
(20, 5, '0', 'column_left', 2),
(2, 4, '0', 'content_top', 0),
(367, 14, 'pavblogcategory.51', 'column_right', 0),
(365, 14, 'pavblogcomment.52', 'column_right', 2),
(366, 14, 'pavbloglatest.53', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(69, 10, 'affiliate', 'column_right', 1),
(3, 4, '0', 'content_top', 1),
(1568, 1, 'pavhomebuilder.32', 'content_top', 0),
(1438, 3, 'bestseller.62', 'column_left', 2),
(1450, 2, 'category', 'column_left', 0),
(1451, 2, 'bestseller.62', 'column_left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(145, 3, 0, 'product/category'),
(183, 1, 0, 'common/home'),
(70, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(114, 13, 0, 'product/search'),
(69, 14, 0, 'pavblog/%');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu`
--

CREATE TABLE IF NOT EXISTS `oc_megamenu` (
  `megamenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text,
  PRIMARY KEY (`megamenu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `oc_megamenu`
--

INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `badges`) VALUES
(1, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', -5, 34, 47, 0, ''),
(40, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, '?route=common/home', '', 0, 'top', 'home', '', '', '', 0, 0, 0, 0, ''),
(42, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=64', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(44, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, 'index.php?route=product/category&amp;path=69', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(45, '', 44, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=69_72', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(46, '', 44, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=69_71', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(47, '', 44, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 3, 0, 'index.php?route=product/category&amp;path=69_70', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(48, '', 44, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=product/category&amp;path=69_73', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(49, '', 48, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=81_83', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(50, '', 48, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=81_91', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(53, '', 50, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 1, 0, 'index.php?route=product/category&amp;path=81_90', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(54, '', 50, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 2, 0, 'index.php?route=product/category&amp;path=81_82', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(55, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 4, 0, 'index.php?route=product/category&amp;path=69', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(56, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 5, 0, '?route=pavblog/blogs', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(57, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 6, 0, '?route=information/contact', '', 0, 'top', '', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_description`
--

CREATE TABLE IF NOT EXISTS `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_description`
--

INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES
(42, 2, 'Shop', ''),
(44, 2, 'Services', ''),
(44, 1, 'Services', ''),
(45, 1, 'Other needs', ''),
(45, 2, 'Other needs', ''),
(46, 1, 'Treat', ''),
(46, 2, 'Treat', ''),
(47, 1, 'Cleanse', ''),
(47, 2, 'Cleanse', ''),
(48, 1, 'Masks', ''),
(48, 2, 'Masks', ''),
(49, 1, 'Best for', ''),
(49, 2, 'Best for', ''),
(50, 1, 'Conditioner', ''),
(50, 2, 'Conditioner', ''),
(54, 1, 'Styling product &amp; tools', ''),
(53, 1, 'Shampoo', ''),
(53, 2, 'Shampoo', ''),
(54, 2, 'Styling product &amp; tools', ''),
(55, 1, 'Accessories', ''),
(56, 2, 'Blogs', ''),
(56, 1, 'Blogs', ''),
(57, 1, 'Contact', ''),
(57, 2, 'Contact', ''),
(42, 1, 'Shop', ''),
(40, 2, 'Home', ''),
(40, 1, 'Home', ''),
(55, 2, 'Accessories', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_widgets`
--

CREATE TABLE IF NOT EXISTS `oc_megamenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:"video_code";s:168:"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;";}', 0),
(2, 'Demo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:"list_type";s:6:"newest";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(14, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"14";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Maku up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Maku up";s:14:"widget_title_2";s:7:"Maku up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(15, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(16, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:4:"Hair";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(10, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"Welcome to the club";s:14:"widget_title_2";s:19:"Welcome to the club";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:386:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;";s:13:"htmlcontent_2";s:386:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;";}', 0),
(11, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Clip Care";s:14:"widget_title_2";s:9:"Clip Care";s:12:"addition_cls";s:0:"";s:10:"video_link";s:42:"http://www.youtube.com/watch?v=-rVKnZB6b5s";s:5:"width";s:4:"100%";s:6:"height";s:3:"300";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_2";s:3:"300";}', 0),
(17, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"17";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Maku up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Maku up";s:14:"widget_title_2";s:7:"Maku up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(18, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"18";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:4:"Hair";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(26, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"About us";s:14:"widget_title_2";s:8:"About us";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:404:"&lt;p&gt;&lt;span style=&quot;color: rgb(120, 120, 120); font-family: Arial, Helvetica, sans-serif; line-height: 19px;&quot;&gt;KR-STORE was founded 15 years ago as the first shopping network and is headquartered in St. Green Hell, FL. KR-STORE is a leading interactive multichannel retailer offering a curated assortment of exclusive products and top brand names to its customers.&lt;/span&gt;&lt;/p&gt;";s:13:"htmlcontent_2";s:404:"&lt;p&gt;&lt;span style=&quot;color: rgb(120, 120, 120); font-family: Arial, Helvetica, sans-serif; line-height: 19px;&quot;&gt;KR-STORE was founded 15 years ago as the first shopping network and is headquartered in St. Green Hell, FL. KR-STORE is a leading interactive multichannel retailer offering a curated assortment of exclusive products and top brand names to its customers.&lt;/span&gt;&lt;/p&gt;";}', 0),
(20, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Make up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Make up";s:14:"widget_title_2";s:7:"Make up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(21, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:4:"Hair";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(24, '', 'html', 'a:9:{s:4:"wkey";s:2:"24";s:5:"wtype";s:4:"html";s:11:"widget_name";s:8:"About us";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"About us";s:14:"widget_title_2";s:8:"About us";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:404:"&lt;p&gt;&lt;span style=&quot;color: rgb(120, 120, 120); font-family: Arial, Helvetica, sans-serif; line-height: 19px;&quot;&gt;KR-STORE was founded 15 years ago as the first shopping network and is headquartered in St. Green Hell, FL. KR-STORE is a leading interactive multichannel retailer offering a curated assortment of exclusive products and top brand names to its customers.&lt;/span&gt;&lt;/p&gt;";s:13:"htmlcontent_2";s:394:"&lt;p&gt;&lt;span style=&quot;color: rgb(120, 120, 120); font-family: Arial, Helvetica, sans-serif; line-height: 19px;&quot;&gt;HSN was founded 37 years ago as the first shopping network and is headquartered in St. Petersburg, FL. HSN is a leading interactive multichannel retailer offering a curated assortment of exclusive products and top brand names to its customers.&lt;/span&gt;&lt;/p&gt;";}', 0),
(25, '', 'video', 'a:12:{s:4:"wkey";s:2:"25";s:5:"wtype";s:5:"video";s:11:"widget_name";s:5:"Video";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:5:"Video";s:14:"widget_title_2";s:5:"Video";s:12:"addition_cls";s:0:"";s:10:"video_link";s:43:"https://www.youtube.com/watch?v=kdAiCVHpvFk";s:5:"width";s:4:"100%";s:6:"height";s:3:"200";s:9:"subinfo_1";s:3:"200";s:9:"subinfo_2";s:3:"300";}', 0),
(27, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:5:"Video";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:5:"Video";s:14:"widget_title_2";s:5:"Video";s:12:"addition_cls";s:0:"";s:10:"video_link";s:43:"https://www.youtube.com/watch?v=kdAiCVHpvFk";s:5:"width";s:4:"100%";s:6:"height";s:3:"200";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_2";s:3:"200";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, '', '', 'pavothemes', '1', 'http://www.pavothemes.com', '', 1, '2015-10-21 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(62, 'Category', 'bestseller', '{"name":"Category","limit":"5","width":"87","height":"116","status":"1"}'),
(51, 'Blog page', 'pavblogcategory', '{"name":"Blog page","category_id":"1","status":"1","type":"default"}'),
(52, 'Blog page', 'pavblogcomment', '{"name":"Blog page","limit":"5","status":"1"}'),
(53, 'Blog page', 'pavbloglatest', '{"name":"Blog page","status":"1","description":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"},"prefixclass":"prefix class","tabs":"latest","width":"270","height":"138","cols":"1","limit":"3"}'),
(32, 'Home 1', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 1";s:5:"class";s:0:"";s:6:"layout";s:3389:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Layers Sliders > Slider home 1","module":"pavsliderlayer.33","type":"module"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"20px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"ADV MENS WEAR","module":"image.kGkcKX","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"20px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"ADV WOMENS WEAR","module":"image.vkVmpd","type":"image"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"20px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"ADV ACCESSORIES","module":"image.tnam7a","type":"image"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"40px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"module":"product_tabs.bXd6dw","type":"product_tabs"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"30px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"module":"image.H2NfNg","type":"image"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"20px 0px 0px 0px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":7,"xscol":12,"widgets":[{"name":"SHOP OUR COLLECTIONS","module":"html.jocaMD","type":"html"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"30px 0px 0px 0px","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":5,"xscol":12,"widgets":[{"name":"BLOGS","module":"bloglatest.GNYeC1","type":"bloglatest"}],"rows":[]}]},{"cls":"box-newsletter text-center space-top-40","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":6,"mdcol":6,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Newsletter > default","module":"pavnewsletter.88","type":"module"}],"rows":[]}]}]";s:9:"module_id";s:2:"32";}'),
(33, 'Slider home 1', 'pavsliderlayer', '{"name":"Slider home 1","status":"1","group_id":"3","pavsliderlayer_module":[]}'),
(88, 'default', 'pavnewsletter', '{"displaymode":"default","name":"default","status":"1","description":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;TO GET &lt;span class=&quot;colortheme&quot;&gt;10%&lt;\\/span&gt; OFF&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;TO GET &lt;span class=&quot;colortheme&quot;&gt;10%&lt;\\/span&gt; OFF&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"},"social":{"1":"&lt;ul class=&quot;list-inline social-icon-list&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-linkedin&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;","2":"&lt;ul class=&quot;list-inline social-icon-list&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-linkedin&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;"}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(9, 0, 'INV-2013-00', 0, 'Pav Kr Store - Responsive Opencart', 'http://localhost/pav_krstore_v2200/', 0, 1, 'Tung', 'Dinh Van', 'tdesign912@gmail.com', '0759312486', '', '[]', 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 'Viet Nam', 230, 'Binh Thuan', 3761, '', '[]', 'Cash On Delivery', 'cod', 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 'Viet Nam', 230, 'Binh Thuan', 3761, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 1738.5000, 1, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-04-20 09:16:29', '2016-04-20 09:16:31'),
(10, 0, 'INV-2013-00', 0, 'Pav Kr Store - Responsive Opencart', 'http://localhost/pav_krstore_v2200/', 3, 1, 'Tung', 'Dinh Van', 'kiemtra002@gmail.com', '759312486', '', '', 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 'Viet Nam', 230, 'Ben Tre', 3757, '', '[]', 'Cash On Delivery', 'cod', 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 'Viet Nam', 230, 'Ben Tre', 3757, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'Please select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\nPlease select the preferred shipping method to use on this order.\n', 389.5000, 1, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2016-04-22 17:36:57', '2016-04-22 17:36:58'),
(11, 0, 'INV-2013-00', 0, 'Pav Kr Store - Responsive Opencart', 'http://localhost/pav_krstore_v2200/', 3, 1, 'Tung', 'Dinh Van', 'kiemtra002@gmail.com', '759312486', '', '', 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 'Viet Nam', 230, 'Ben Tre', 3757, '', '[]', 'Cash On Delivery', 'cod', 'Tung', 'Dinh Van', '', 'Ha Noi - Viet Nam', '', 'Ha Noi', '8886', 'Viet Nam', 230, 'Ben Tre', 3757, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.Please select the preferred shipping method to use on this order.', 197.6000, 1, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2016-04-25 08:51:55', '2016-04-25 08:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(18, 10, 1, 0, '', '2016-04-22 17:36:58'),
(17, 9, 1, 0, '', '2016-04-20 09:16:31'),
(19, 11, 1, 0, '', '2016-04-25 08:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(29, 9, 53, 'The porefessional face primer', 'Green light', 1, 80.0000, 80.0000, 72.0000, 0),
(30, 9, 56, 'Vernis gel Shine Long', 'Pink', 1, 80.0000, 80.0000, 72.0000, 3),
(31, 9, 64, 'Chloe eau de parfum', 'Gold', 1, 300.0000, 300.0000, 270.0000, 0),
(32, 9, 68, 'Singlepass professional', 'Black &amp; white', 1, 300.0000, 300.0000, 270.0000, 0),
(33, 9, 69, 'Sweet almond hair', 'Gold', 1, 150.0000, 150.0000, 135.0000, 0),
(34, 10, 59, 'Marks survival belly &amp; bust', 'Pink', 1, 200.0000, 200.0000, 180.0000, 0),
(35, 11, 60, 'Supermud clearning treatment', 'Black', 1, 99.0000, 99.0000, 89.1000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(27, 9, 'tax', 'VAT (20%)', 823.5000, 5),
(26, 9, 'shipping', 'Flat Shipping Rate', 5.0000, 3),
(25, 9, 'sub_total', 'Sub-Total', 910.0000, 1),
(30, 10, 'shipping', 'Flat Shipping Rate', 5.0000, 3),
(28, 9, 'total', 'Total', 1738.5000, 9),
(29, 10, 'sub_total', 'Sub-Total', 200.0000, 1),
(31, 10, 'tax', 'VAT (20%)', 184.5000, 5),
(32, 10, 'total', 'Total', 389.5000, 9),
(33, 11, 'sub_total', 'Sub-Total', 99.0000, 1),
(34, 11, 'shipping', 'Flat Shipping Rate', 5.0000, 3),
(35, 11, 'tax', 'VAT (20%)', 93.6000, 5),
(36, 11, 'total', 'Total', 197.6000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_pavblog_blog`
--

INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES
(7, 21, 2, '2013-03-09', 1, 1, 55, 'catalog/demo/blogs/blog-07.jpg', '', '', '', '2016-02-25', '', '', 'joomla, prestashop, magento', 1, ''),
(9, 21, 0, '2013-03-09', 1, 1, 90, 'catalog/demo/blogs/blog-06.jpg', '', '', '', '2016-02-25', '', '', 'prestashop, magento', 0, ''),
(10, 21, 0, '2013-03-09', 1, 1, 357, 'catalog/demo/blogs/blog-08.jpg', 'test test', '', 'Custom SEO Titlte', '2016-02-25', '', '', 'prestashop', 0, ''),
(11, 21, 0, '2013-03-11', 1, 1, 147, 'catalog/demo/blogs/blog-05.jpg', '', '', '', '2016-02-25', '', '', 'opencart', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog_description`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES
(11, 1, 'Lorem ipsum sit amet', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(11, 2, 'Lorem ipsum sit amet', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(9, 1, 'Lorem ipsum dolor amet', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(9, 2, 'Lorem ipsum dolor amet', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(7, 1, 'Lorem dolor sit amet', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(7, 2, 'Lorem dolor sit amet', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(10, 1, 'Lorem dolor sit amet', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(10, 2, 'Lorem dolor sit amet', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `oc_pavblog_category`
--

INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES
(1, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', -5, 34, 47, ''),
(20, 'data/pavblog/pav-c3.jpg', 22, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 3, 0, '', '', 0, 'top', 'test test', '', '', '', 0, 0, 0, ''),
(21, 'data/pavblog/pav-c1.jpg', 22, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 1, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(22, 'data/demo/canon_eos_5d_1.jpg', 1, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 1, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(23, 'data/pavblog/pav-c2.jpg', 22, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 2, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(24, 'data/logo.png', 1, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 2, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(25, '', 1, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(26, '', 1, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(27, '', 1, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(28, '', 25, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, ''),
(29, '', 25, 2, '', '', '', '', '', '1', '', 2, 1, '', 0, 1, 0, 99, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category_description`
--

INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'ROOT', 'Menu Root'),
(22, 2, 'Vestibulum massa', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(24, 2, 'Sed fermentum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(21, 2, 'Massage sauna', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(23, 2, 'For men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(20, 2, 'For girl', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(25, 2, 'Turpis ipsum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(25, 1, 'Turpis ipsum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(26, 2, 'Fusce cursus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(26, 1, 'Fusce cursus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(27, 1, 'Curabitur faucibus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(28, 2, 'For kid', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(28, 1, 'For kid', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(29, 1, 'For all', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(29, 2, 'For all', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(27, 2, 'Curabitur faucibus', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(24, 1, 'Sed fermentum', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(22, 1, 'Vestibulum massa', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(21, 1, 'Massage sauna', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(23, 1, 'For men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(20, 1, 'For girl', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_comment`
--

CREATE TABLE IF NOT EXISTS `oc_pavblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_blog_comment` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_pavblog_comment`
--

INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES
(6, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:23:09', 'ha cong tien', 'hatuhn@gmail.com'),
(7, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:25:19', 'ha cong tien', 'hatuhn@gmail.com'),
(8, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:30:17', 'Test Test ', 'ngoisao@aa.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_draft`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_draft` (
  `draft_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT '0',
  `to` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`draft_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_email`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `defined` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `defined_categories` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) DEFAULT NULL,
  `defined_products_more` varchar(255) DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_history`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

INSERT INTO `oc_pavnewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

CREATE TABLE IF NOT EXISTS `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavoslidergroups`
--

CREATE TABLE IF NOT EXISTS `oc_pavoslidergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_pavoslidergroups`
--

INSERT INTO `oc_pavoslidergroups` (`id`, `title`, `params`) VALUES
(3, 'Slider home 1', 'a:28:{s:5:"title";s:13:"Slider home 1";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:0:"";s:5:"width";s:4:"1920";s:6:"height";s:3:"505";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"2";s:14:"show_time_line";s:1:"1";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:7:"#d9d9d9";s:6:"margin";s:3:"0px";s:7:"padding";s:3:"0px";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:4:"none";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavosliderlayers`
--

CREATE TABLE IF NOT EXISTS `oc_pavosliderlayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `language_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `oc_pavosliderlayers`
--

INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`, `language_id`) VALUES
(30, 'img 01', 0, 3, 'a:18:{s:2:"id";s:2:"30";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:6:"img 01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"30";s:12:"slider_image";s:32:"catalog/demo/slider/slider-1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:5:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:44:"text-white mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:6:"Summer";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:47:"text-darkblue mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:10:"Collection";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"165";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"979";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:43:"text-gold mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:4:"2016";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"230";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1689";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:19:"hidden-sm hidden-xs";s:13:"layer_caption";s:80:"&lt;a href=&quot;#&quot; class=&quot;btn-text btn-v3&quot;&gt;SHOP NOW&lt;/a&gt;";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"340";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2426";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:36:"catalog/demo/slider/text-slider1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:19:"hidden-lg hidden-md";s:13:"layer_caption";s:0:"";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"134";s:10:"layer_left";s:3:"430";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"865";}}}', 'catalog/demo/slider/slider-1.jpg', 1, 0, 1),
(31, 'img 02', 0, 3, 'a:18:{s:2:"id";s:2:"31";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:6:"img 02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"31";s:12:"slider_image";s:32:"catalog/demo/slider/slider-2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:50:"text-theme-color mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:8:"Sale off";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"64";s:10:"layer_left";s:3:"635";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"543";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:49:"text-link-color mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:9:"cosmetics";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"635";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1248";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:19:"hidden-sm hidden-xs";s:13:"layer_caption";s:80:"&lt;a href=&quot;#&quot; class=&quot;btn-text btn-v3&quot;&gt;SHOP NOW&lt;/a&gt;";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"225";s:10:"layer_left";s:3:"635";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1770";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:36:"catalog/demo/slider/text-slider2.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:19:"hidden-lg hidden-md";s:13:"layer_caption";s:0:"";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"80";s:10:"layer_left";s:3:"614";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1111";}}}', 'catalog/demo/slider/slider-2.jpg', 1, 0, 1),
(35, 'img 02', 0, 3, 'a:18:{s:2:"id";s:2:"31";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:6:"img 02";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"31";s:12:"slider_image";s:32:"catalog/demo/slider/slider-2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:50:"text-theme-color mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:8:"Sale off";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"64";s:10:"layer_left";s:3:"635";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"543";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:49:"text-link-color mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:9:"cosmetics";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"120";s:10:"layer_left";s:3:"635";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1248";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:19:"hidden-sm hidden-xs";s:13:"layer_caption";s:80:"&lt;a href=&quot;#&quot; class=&quot;btn-text btn-v3&quot;&gt;SHOP NOW&lt;/a&gt;";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"225";s:10:"layer_left";s:3:"635";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1770";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:36:"catalog/demo/slider/text-slider2.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:19:"hidden-lg hidden-md";s:13:"layer_caption";s:0:"";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"80";s:10:"layer_left";s:3:"614";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1111";}}}', 'catalog/demo/slider/slider-2.jpg', 1, 2, 2),
(34, 'img 01', 0, 3, 'a:18:{s:2:"id";s:2:"30";s:15:"slider_group_id";s:1:"3";s:12:"slider_title";s:6:"img 01";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:18:"slider_enable_link";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"30";s:12:"slider_image";s:32:"catalog/demo/slider/slider-1.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:5:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:44:"text-white mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:6:"Summer";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"100";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"400";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:47:"text-darkblue mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:10:"Collection";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"165";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:3:"979";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:43:"text-gold mediumcaption hidden-sm hidden-xs";s:13:"layer_caption";s:4:"2016";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"230";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1689";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:19:"hidden-sm hidden-xs";s:13:"layer_caption";s:80:"&lt;a href=&quot;#&quot; class=&quot;btn-text btn-v3&quot;&gt;SHOP NOW&lt;/a&gt;";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"340";s:10:"layer_left";s:3:"450";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"2426";}i:4;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:5;s:13:"layer_content";s:36:"catalog/demo/slider/text-slider1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:19:"hidden-lg hidden-md";s:13:"layer_caption";s:0:"";s:15:"layer_animation";s:3:"sft";s:12:"layer_easing";s:11:"easeOutBack";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"134";s:10:"layer_left";s:3:"430";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:4:"auto";s:15:"layer_endeasing";s:7:"nothing";s:10:"time_start";s:4:"1143";}}}', 'catalog/demo/slider/slider-1.jpg', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavwidget`
--

CREATE TABLE IF NOT EXISTS `oc_pavwidget` (
  `pavwidget_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  `module_id` int(11) NOT NULL,
  `key` int(11) NOT NULL,
  PRIMARY KEY (`pavwidget_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9896 ;

--
-- Dumping data for table `oc_pavwidget`
--

INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(4663, 'content', 'product_list.AN82bq', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg4NjYzMzUxMzE5NTE2NjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuQU44MmJxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkFOODJicSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIFJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIFJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCBSYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 36, 0),
(4664, 'content', 'product_list.CDZzjh', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjUwODM1NjM1NDkxMzc5MDQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuQ0RaempoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkNEWnpqaCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6MTp7aTowO3M6MjoiNDIiO319', 36, 0),
(4665, 'content', 'product_list.ET5ZRU', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjI2NTE1MDg5NjI5MjI2MjYzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkVUNVpSVSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5FVDVaUlUiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 36, 0),
(4699, 'content', 'product_list.SAHlNn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc2ODIxODEwNzI4ODcwMzMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU0FIbE5uIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNBSGxObiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoicGFuZWwtY2VudGVyIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6ODoiZmVhdHVyZWQiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiIzMCI7aToyO3M6MjoiNDciO2k6MztzOjI6IjI4IjtpOjQ7czoyOiI0MSI7fX0=', 33, 0),
(4697, 'content', 'image.zW2brk', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkzODMwNjcwMjkwMjI4OTUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS56VzJicmsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS56VzJicmsiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4696, 'content', 'image.WIa9ho', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjE0NDQxNjE1ODIzODEzNjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5XSWE5aG8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5XSWE5aG8iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjUuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4695, 'content', 'image.t6fkta', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjI5MTMxMjQ0MzU5MDAzOTk0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UudDZma3RhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UudDZma3RhIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI2LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 33, 0),
(4694, 'content', 'image.rQm21Q', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc1MDg4NzgyMzMyNzEwMDIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5yUW0yMVEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5yUW0yMVEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4652, 'content', 'product_list.35Qlno', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjg3MDY0NzY5NzE4NzY1MDIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuMzVRbG5vIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjM1UWxubyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo4OiJmZWF0dXJlZCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6ODp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjI4IjtpOjI7czoyOiIyOSI7aTozO3M6MjoiNTAiO2k6NDtzOjI6IjM1IjtpOjU7czoyOiI1MSI7aTo2O3M6MjoiNDQiO2k6NztzOjI6IjQ1Ijt9fQ==', 37, 0),
(4662, 'content', 'interactive_banner.OOYEDE', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjE3NTM3NTY0NDQ1OTUzMTU4IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLk9PWUVERSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5PT1lFREUiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTc6Ikdvb2QgRGVzaWduIEF3YXJkIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE3OiJHb29kIERlc2lnbiBBd2FyZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czo0OiJodWh1IjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMC5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIzMjAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTc0OiImbHQ7ZGl2Jmd0O0NvbnN0cnVjdGVkIGZyb20gd29vZGVuIHBvbGVzIG9mIHRoZSBzYW1lIGRpYW1ldGVyLCB0aGUgY29hdCBzdGFuZCBoYXMgYSBuZWF0IGxvb2sgaW4gYWRkaXRpb24gdG8gYW4gZXhwYW5zaXZlIGltcHJlc3Npb24gcmVtaW5pc2NlbnQgb2YgZm9yZXN0IHRyZWVzLiAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTc0OiImbHQ7ZGl2Jmd0O0NvbnN0cnVjdGVkIGZyb20gd29vZGVuIHBvbGVzIG9mIHRoZSBzYW1lIGRpYW1ldGVyLCB0aGUgY29hdCBzdGFuZCBoYXMgYSBuZWF0IGxvb2sgaW4gYWRkaXRpb24gdG8gYW4gZXhwYW5zaXZlIGltcHJlc3Npb24gcmVtaW5pc2NlbnQgb2YgZm9yZXN0IHRyZWVzLiAmbHQ7L2RpdiZndDsiO3M6MTE6InRpdGxlbGlua18xIjtzOjExOiJNb3JlIGRldGFpbCI7czoxMToidGl0bGVsaW5rXzIiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYxIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 36, 0),
(4666, 'content', 'product_list.yCyASo', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDQyMTYyMjIyNzAxNzYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueUN5QVNvIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnlDeUFTbyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJTcGVjaWFsIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlNwZWNpYWwiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlNwZWNpYWwiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMToic2lkZWJhciBib3JkZXIteWVsbG93IjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 36, 0),
(4563, 'content', 'product_list_home3.Bmxd2m', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjYxMTEzODExNjk2OTczMDQiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMuQm14ZDJtIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLkJteGQybSI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJsYXRlc3QiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo4OiJwb3NfdHlwZSI7czoxOiIxIjtzOjEwOiJiYW5uZXJfaW1nIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMy5qcGciO3M6NzoiYl93aWR0aCI7czozOiIzMjAiO3M6ODoiYl9oZWlnaHQiO3M6MzoiMzI1Ijt9', 42, 0),
(4654, 'content', 'product_list.kmp6to', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc5MTczNDk5NjYxMjExNTIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Qua21wNnRvIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmttcDZ0byI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiNzEiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(4655, 'content', 'product_list.lx6P1g', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjI0NDc2OTA4MzM1OTE4OTU3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lmx4NlAxZyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5seDZQMWciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3Qgc2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBzZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBzZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic2lkZWJhciI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MjoiODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjcxIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(4657, 'content', 'icon_box.e0DIeh', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk1NDk3MzQ1MDAxOTUzMTkiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5lMERJZWgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5lMERJZWgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIyOiJTaGlwcGluZyAmYW1wOyBSZXR1cm5zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIyOiJTaGlwcGluZyAmYW1wOyBSZXR1cm5zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMjoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4ODoiJmx0O2RpdiZndDtGcmVlIHJldHVybiBzaGlwcGluZyB3aXRoIHByZXBhaWQgbWFpbGVyIGZvciBhbGwgZG9tZXN0aWMgb3JkZXJzLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4ODoiJmx0O2RpdiZndDtGcmVlIHJldHVybiBzaGlwcGluZyB3aXRoIHByZXBhaWQgbWFpbGVyIGZvciBhbGwgZG9tZXN0aWMgb3JkZXJzLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 36, 0),
(4658, 'content', 'icon_box.XUdjal', 'YToxNzp7czo0OiJyYW5kIjtzOjIwOiIwLjAxMTg2MzE1MDM3NDA4NjU4NCI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94LlhVZGphbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94LlhVZGphbCI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkN1c3RvbWVyIENhcmUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6IkN1c3RvbWVyIENhcmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEzOiJDdXN0b21lciBDYXJlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYzLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7ZGl2Jmd0O0EgY2xlYXJhbmNlIHByaWNlIGlzIGNvbnNpZGVyZWQgNDAlIG9yIG1vcmUgb2ZmIHRoZSBvcmlnaW5hbCBwcmljZS4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtkaXYmZ3Q7QSBjbGVhcmFuY2UgcHJpY2UgaXMgY29uc2lkZXJlZCA0MCUgb3IgbW9yZSBvZmYgdGhlIG9yaWdpbmFsIHByaWNlLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 36, 0),
(4659, 'content', 'icon_box.XxROnG', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU3MzI0MjY4MjE5MDc5MzMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5YeFJPbkciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5YeFJPbkciO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6Ikd1YXJhbnRlZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJHdWFyYW50ZWUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6Ikd1YXJhbnRlZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtBbGwgaXRlbXMgZ3VhcmFudGVlZCBpbiBzdG9jayBpbiBzaXplcyBzaG93biwgb3IgeW91IHJlY2VpdmUgYSAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7QWxsIGl0ZW1zIGd1YXJhbnRlZWQgaW4gc3RvY2sgaW4gc2l6ZXMgc2hvd24sIG9yIHlvdSByZWNlaXZlIGEgJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjIiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 36, 0),
(4656, 'content', 'product_list.uXnDpb', 'YToxNzp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNTkyNDQzMjczMDA4MTYwNCI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC51WG5EcGIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QudVhuRHBiIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6IlNhbGUgb2ZmIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjg6IlNhbGUgb2ZmIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo4OiJTYWxlIG9mZiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIxOiJzaWRlYmFyIGJvcmRlci15ZWxsb3ciO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjI6IjgwIjtzOjY6ImhlaWdodCI7czoyOiI3MSI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 37, 0),
(4693, 'content', 'image.pUpdi9', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MDk0OTUyODYxMTgzNTMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5wVXBkaTkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5wVXBkaTkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjguanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4692, 'content', 'image.8AgYjI', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkwODU3MDU1NzE4NjAyNjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS44QWdZakkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS44QWdZakkiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 33, 0),
(4689, 'content', 'icon_box.b0jWlu', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU1OTY5MDA4MTY0NjkyODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5iMGpXbHUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5iMGpXbHUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE3OiJHZW9tZXRyaWMgSmV3ZWxyeSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNzoiR2VvbWV0cmljIEpld2VscnkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE3OiJHZW9tZXRyaWMgSmV3ZWxyeSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4ODoiJmx0O2RpdiZndDt3ZSBoYXZlIG5vdGljZWQgYSBodWdlIHRyZW5kIGluIGdlb21ldHJpYyBqZXdlbHJ5IGZvciB0aGlzIGZhbGwuICZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4ODoiJmx0O2RpdiZndDt3ZSBoYXZlIG5vdGljZWQgYSBodWdlIHRyZW5kIGluIGdlb21ldHJpYyBqZXdlbHJ5IGZvciB0aGlzIGZhbGwuICZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 33, 0),
(4691, 'content', 'icon_box.Rx6k0K', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjExNzAxMTYxNzY5ODk2Njg0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guUng2azBLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guUng2azBLIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiU3RyZWV0IHN0eWxlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJTdHJlZXQgc3R5bGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJTdHJlZXQgc3R5bGUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6OTE6IiZsdDtkaXYmZ3Q7QSBjcmFmdCB0aGF0IHByaW1hcmlseSB1c2VzIGNpcmN1bGFyIGp1bXAgcmluZ3MgdG8gY29tZSB0b2dldGhlciBtYXkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTE6IiZsdDtkaXYmZ3Q7QSBjcmFmdCB0aGF0IHByaW1hcmlseSB1c2VzIGNpcmN1bGFyIGp1bXAgcmluZ3MgdG8gY29tZSB0b2dldGhlciBtYXkmbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 33, 0),
(4690, 'content', 'icon_box.pVLulh', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk0Nzc4NzA4MDQ2NDczODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5wVkx1bGgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5wVkx1bGgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJDb250ZXN0IHdpbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiQ29udGVzdCB3aW5uZXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJDb250ZXN0IHdpbm5lciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtUcmlhbmdsZXMsIGNoZXZyb25zLCBkaWFtb25kcyAtIHlvdSBuYW1lIGl0LCBqZXdlbHJ5IGlzIGdldHRpbmcmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7VHJpYW5nbGVzLCBjaGV2cm9ucywgZGlhbW9uZHMgLSB5b3UgbmFtZSBpdCwgamV3ZWxyeSBpcyBnZXR0aW5nJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 33, 0),
(4661, 'content', 'interactive_banner.lRB2a4', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjI0MzEyMjU5MDY5NTU4MTE4IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmxSQjJhNCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5sUkIyYTQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM0OiJUaGUgU2tpbGwgb2YgVGhpcyBXb29kZW4gU3RydWN0dXJlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czo0OiJodWh1IjtzOjExOiJzdWJfdGl0bGVfMiI7czo0OiJodWh1IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 36, 0),
(4660, 'content', 'interactive_banner.7sywgK', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjE0MTU0OTAwOTk0MzQwMTkyIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjdzeXdnSyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci43c3l3Z0siO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTQ6IkludGVyaW9ycyBTaG93IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE0OiJJbnRlcmlvcnMgU2hvdyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6IkludGVyaW9ycyBTaG93IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8yIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjkuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE3NDoiJmx0O2RpdiZndDtDb25zdHJ1Y3RlZCBmcm9tIHdvb2RlbiBwb2xlcyBvZiB0aGUgc2FtZSBkaWFtZXRlciwgdGhlIGNvYXQgc3RhbmQgaGFzIGEgbmVhdCBsb29rIGluIGFkZGl0aW9uIHRvIGFuIGV4cGFuc2l2ZSBpbXByZXNzaW9uIHJlbWluaXNjZW50IG9mIGZvcmVzdCB0cmVlcy4gJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 36, 0),
(4651, 'content', 'interactive_banner.XojwT6', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDUwNjY2MzkzMzA0NjIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuWG9qd1Q2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlhvandUNiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiQ2VyYW1pY3MgQ29sbGFiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJDZXJhbWljcyBDb2xsYWIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJDZXJhbWljcyBDb2xsYWIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTUuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNDoiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTA0OiImbHQ7ZGl2Jmd0O1dlIHNvdXJjZSB1bmlxdWUsIGxpbWl0ZWQgZWRpdGlvbiBhbmQgZGVzaWduZXIgbWFkZSBwcm9kdWN0IGZyb20gYXJvdW5kIHRoZSBnbG9iZSZsdDsvZGl2Jmd0OyI7czoxMToidGl0bGVsaW5rXzEiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMToiTW9yZSBkZXRhaWwiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYyIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjEiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 37, 0),
(4650, 'content', 'interactive_banner.nuJOwQ', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkzMzY4NTg4NDY1OTY1OTEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIubnVKT3dRIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm51Sk93USI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozNDoiVGhlIFNraWxsIG9mIFRoaXMgV29vZGVuIFN0cnVjdHVyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozNDoiVGhlIFNraWxsIG9mIFRoaXMgV29vZGVuIFN0cnVjdHVyZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzQ6IlRoZSBTa2lsbCBvZiBUaGlzIFdvb2RlbiBTdHJ1Y3R1cmUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 37, 0),
(4647, 'content', 'image.JX16EK', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5OTE4NzcwNTY0NTQ3MTU1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuSlgxNkVLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuSlgxNkVLIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4645, 'content', 'image.eOjh0h', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjEyMzU1NzgxMDQ2NzcxMDY0IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZU9qaDBoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZU9qaDBoIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxNy5qcGciO3M6NDoic2l6ZSI7czo4OiIxMTcweDIwMCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4646, 'content', 'image.HrYNgL', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU4NzU2NTU3NDQyNjU0NjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5IcllOZ0wiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5IcllOZ0wiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4649, 'content', 'interactive_banner.inGmAN', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY0MzEyMjYzMjMwMjYyNDkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuaW5HbUFOIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmluR21BTiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoicGFzdGVsIEJsYW5rZXQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTQ6InBhc3RlbCBCbGFua2V0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNDoicGFzdGVsIEJsYW5rZXQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTYuanBnIjtzOjU6IndpZHRoIjtzOjQ6IjExNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoyOToiJmx0O3AmZ3Q7Jmx0O2JyJmd0OyZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6Mjk6IiZsdDtwJmd0OyZsdDticiZndDsmbHQ7L3AmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czo4OiJTSE9QIE5PVyI7czoxMToidGl0bGVsaW5rXzIiO3M6ODoiU0hPUCBOT1ciO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYzIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 37, 0),
(4648, 'content', 'interactive_banner.6JDvNd', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjIzMjA3NzQ2OTI1ODA1NzYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuNkpEdk5kIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjZKRHZOZCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMToiR2VvbWV0cmljIERlY29yYXRpb25zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiJHZW9tZXRyaWMgRGVjb3JhdGlvbnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiJHZW9tZXRyaWMgRGVjb3JhdGlvbnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTQuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEwNToiJmx0O2RpdiZndDtXZSBzb3VyY2UgdW5pcXVlLCBsaW1pdGVkIGVkaXRpb24gYW5kIGRlc2lnbmVyIG1hZGUgcHJvZHVjdCBmcm9tIGFyb3VuZCB0aGUgZ2xvYmUuJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjExOiJNb3JlIGRldGFpbCI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjIiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 37, 0),
(4641, 'content', 'icon_box.7xmZqn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkwNjEzNTY5MTM3MjMxMDIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC43eG1acW4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC43eG1acW4iO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJHdWFyYW50ZWUgIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJHdWFyYW50ZWUgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiR3VhcmFudGVlICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4NjoiJmx0O2RpdiZndDtBbGwgaXRlbXMgZ3VhcmFudGVlZCBpbiBzdG9jayBpbiBzaXplcyBzaG93biwgb3IgeW91IHJlY2VpdmUgYSAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODY6IiZsdDtkaXYmZ3Q7QWxsIGl0ZW1zIGd1YXJhbnRlZWQgaW4gc3RvY2sgaW4gc2l6ZXMgc2hvd24sIG9yIHlvdSByZWNlaXZlIGEgJmx0Oy9kaXYmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 37, 0),
(4644, 'content', 'image.d4MbY6', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjMzNTg5NTYzNDQ2NDQ4NjgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5kNE1iWTYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5kNE1iWTYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 37, 0),
(4643, 'content', 'icon_box.sByv4o', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUwMTc1NjM4ODYxODk3ODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5zQnl2NG8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5zQnl2NG8iO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJDdXN0b21lciBDYXJlICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiQ3VzdG9tZXIgQ2FyZSAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJDdXN0b21lciBDYXJlICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiJmx0O2RpdiZndDtBIGNsZWFyYW5jZSBwcmljZSBpcyBjb25zaWRlcmVkIDQwJSBvciBtb3JlIG9mZiB0aGUgb3JpZ2luYWwgcHJpY2UuJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiImbHQ7ZGl2Jmd0O0EgY2xlYXJhbmNlIHByaWNlIGlzIGNvbnNpZGVyZWQgNDAlIG9yIG1vcmUgb2ZmIHRoZSBvcmlnaW5hbCBwcmljZS4mbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 37, 0),
(4559, 'content', 'product_list.8S9IXs', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjEzMzU5NzUyNzg1Njk0NjkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuOFM5SVhzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjhTOUlYcyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4560, 'content', 'product_list.HEHZ9A', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjQ5OTAwMTg4MDUwODQxOTc2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkhFSFo5QSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5IRUhaOUEiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTY6IlBvcHVsYXIgcHJvZHVjdHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6IlBvcHVsYXIgcHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiJQb3B1bGFyIHByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Nzoic2lkZWJhciI7czo1OiJsaW1pdCI7czoyOiIxMiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjYiO3M6NDoiY29scyI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjI6IjgwIjtzOjY6ImhlaWdodCI7czoyOiI5NiI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4561, 'content', 'product_list.IVhb5T', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMDQzNDA3NzYxNTc0NDYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuSVZoYjVUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LklWaGI1VCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJUb3BSYXRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiVG9wUmF0aW5nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJUb3BSYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo3OiJzaWRlYmFyIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJ3aWR0aCI7czoyOiI4MCI7czo2OiJoZWlnaHQiO3M6MjoiOTYiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4562, 'content', 'product_list.m15Kkj', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIyMTIwNzE4MDQ3Mzg1MDY4IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lm0xNUtraiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5tMTVLa2oiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6IlNwZWNpYWwgUHJvZHVjdCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiU3BlY2lhbCBQcm9kdWN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiU3BlY2lhbCBQcm9kdWN0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 42, 0),
(4551, 'content', 'image.AdBMgr', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjQ3MDQ5MTQwNTU3OTk3NDUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5BZEJNZ3IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5BZEJNZ3IiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE4OiJlZmZlY3QtdjQgc3BhY2UtNjAiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjI5OiImbHQ7cCZndDsmbHQ7YnImZ3Q7Jmx0Oy9wJmd0OyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czoyOToiJmx0O3AmZ3Q7Jmx0O2JyJmd0OyZsdDsvcCZndDsiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7fQ==', 42, 0),
(4552, 'content', 'image.f1cWgm', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk5MjY2MjcyNjE3NDM0MjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5mMWNXZ20iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5mMWNXZ20iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4553, 'content', 'image.IhUiUp', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjIwOTMzMDA0NTYwNTYxMjMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5JaFVpVXAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5JaFVpVXAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(5073, 'content', 'product_list_home2_v2.XxkK9q', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjcyODA5MTYyMDA0NTAxMzIiO3M6NjoibW9kdWxlIjtzOjI4OiJwcm9kdWN0X2xpc3RfaG9tZTJfdjIuWHhrSzlxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyODoicHJvZHVjdF9saXN0X2hvbWUyX3YyLlh4a0s5cSI7czo1OiJ3dHlwZSI7czoyMToicHJvZHVjdF9saXN0X2hvbWUyX3YyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGl0ZW1zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 39, 0),
(5072, 'content', 'product_list_home2.lSn1hK', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjA4NzczODc5MjE4MDIyMjg1IjtzOjY6Im1vZHVsZSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUyLmxTbjFoSyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6InByb2R1Y3RfbGlzdF9ob21lMi5sU24xaEsiO3M6NToid3R5cGUiO3M6MTg6InByb2R1Y3RfbGlzdF9ob21lMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IlBvcHVsYXIgaXRlbXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlBPUFVMQVIgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJQT1BVTEFSIElURU1TIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTE6IlNUQUZGIFBJQ0tTIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToid2lkdGgiO3M6MzoiMjcwIjtzOjY6ImhlaWdodCI7czozOiIzNjAiO3M6OToibGlzdF90eXBlIjtzOjc6InBvcHVsYXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 39, 0),
(5070, 'content', 'product_list.yc1Zfn', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU1Mzg5MjkxMzEzMTY5NTYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueWMxWmZuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnljMVpmbiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRmVhdHVyZSBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkZlYXR1cmUgcHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 39, 0),
(5071, 'content', 'product_list_home2.7HLJwP', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjE3ODI5OTI2NDgxODQ3NzU4IjtzOjY6Im1vZHVsZSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUyLjdITEp3UCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6InByb2R1Y3RfbGlzdF9ob21lMi43SExKd1AiO3M6NToid3R5cGUiO3M6MTg6InByb2R1Y3RfbGlzdF9ob21lMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3Qgc2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTM6Ik1PU1RMWSBCT1VHSFQiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 39, 0),
(5069, 'content', 'product_deal.NiAxww', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjg1OTQxMjg5NTM3MDk2NTMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuTmlBeHd3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLk5pQXh3dyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJPdXIgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiT3VyIERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJPdXIgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDItMDkiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTktMTAtMjQiO3M6NToibGltaXQiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjk6ImltZ193aWR0aCI7czozOiI2MDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNTMzIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MTk6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiMzgiO2k6MztzOjI6IjQ1IjtpOjQ7czoyOiI0NiI7aTo1O3M6MjoiMjAiO2k6NjtzOjI6IjI2IjtpOjc7czoyOiIyOCI7aTo4O3M6MjoiMjkiO2k6OTtzOjI6IjMwIjtpOjEwO3M6MjoiMzEiO2k6MTE7czoyOiIzMiI7aToxMjtzOjI6IjE4IjtpOjEzO3M6MjoiMjciO2k6MTQ7czoyOiIyNSI7aToxNTtzOjI6IjU3IjtpOjE2O3M6MjoiMTciO2k6MTc7czoyOiIyNCI7aToxODtzOjI6IjMzIjt9fQ==', 39, 0),
(5067, 'content', 'interactive_banner.teJUgQ', 'YToyNjp7czo0OiJyYW5kIjtzOjE3OiIwLjQ0OTczODc3MjM2NjU3OCI7czo2OiJtb2R1bGUiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci50ZUpVZ1EiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIudGVKVWdRIjtzOjU6Ind0eXBlIjtzOjE4OiJpbnRlcmFjdGl2ZV9iYW5uZXIiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6IlNob3AgbWVuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjQwMCI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3NToiJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7IGNsYXNzPSZxdW90O2J0biBidG4tdjQmcXVvdDsmZ3Q7U0hPUCBNRU4mbHQ7L2EmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc1OiImbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsgY2xhc3M9JnF1b3Q7YnRuIGJ0bi12NCZxdW90OyZndDtTSE9QIE1FTiZsdDsvYSZndDsiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjA6IiI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MyI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 39, 0),
(5065, 'content', 'interactive_banner.dcXvmm', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkwMzU0OTMyMTAwMDQ2NjQiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZGNYdm1tIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmRjWHZtbSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiV29vbCBLbml0dGluZyBZYXJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJXb29sIEtuaXR0aW5nIFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJXb29sIEtuaXR0aW5nIFlhcm4iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyOS5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIzMjAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTE3OiImbHQ7ZGl2Jmd0O1dvb2wgWWFybnMgIGNhcnJpZXMgYSB3aWRlIHJhbmdlIG9mIHdvb2wgeWFybi4gU2F2ZSB1cCB0byAyNSUgd2l0aCBvdXIgeWFybiBhbmQgYm9vayBkaXNjb3VudCEmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTE3OiImbHQ7ZGl2Jmd0O1dvb2wgWWFybnMgIGNhcnJpZXMgYSB3aWRlIHJhbmdlIG9mIHdvb2wgeWFybi4gU2F2ZSB1cCB0byAyNSUgd2l0aCBvdXIgeWFybiBhbmQgYm9vayBkaXNjb3VudCEmbHQ7L2RpdiZndDsiO3M6MTE6InRpdGxlbGlua18xIjtzOjExOiJNb3JlIGRldGFpbCI7czoxMToidGl0bGVsaW5rXzIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2NCI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYxIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 39, 0),
(5064, 'content', 'interactive_banner.AuH7PI', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMDUxMjUwNTA4OTk0NDIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuQXVIN1BJIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkF1SDdQSSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiU2hvcCB3b21lbiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNi1ob21lMi5qcGciO3M6NToid2lkdGgiO3M6MzoiNTcwIjtzOjY6ImhlaWdodCI7czozOiI0MDAiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6Nzc6IiZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyBjbGFzcz0mcXVvdDtidG4gYnRuLXY0JnF1b3Q7Jmd0O1NIT1AgV09NRU4mbHQ7L2EmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc3OiImbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsgY2xhc3M9JnF1b3Q7YnRuIGJ0bi12NCZxdW90OyZndDtTSE9QIFdPTUVOJmx0Oy9hJmd0OyI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MyI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 39, 0),
(4556, 'content', 'image.Rzntb0', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwOTcyOTc5MDEwNzU5NDkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5Sem50YjAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5Sem50YjAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJlZmZlY3QtdjEwIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMzQuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 42, 0),
(4554, 'content', 'image.lLZE1u', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjQyNzY5ODY5Mzc4NjYwMjEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5sTFpFMXUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5sTFpFMXUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI4LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4555, 'content', 'image.mGFxD7', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjA1MjYzODAxNjc2ODIwNDc5IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UubUdGeEQ3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UubUdGeEQ3IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJpbWciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiaW1nIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJpbWciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjQiO3M6OToiaW1hZ2VmaWxlIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyOS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 42, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(5765, 'content', 'product_list.SlnCxg', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU5MzYzMTc5NDg3NDEwOTQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU2xuQ3hnIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNsbkN4ZyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IlBvcHVsYXIgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjYwMCI7czo2OiJoZWlnaHQiO3M6MzoiNTMzIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 41, 0),
(5766, 'content', 'product_list_home3.mLCvNE', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzNDI4NTM0OTkwNDU3MjMiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMubUxDdk5FIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLm1MQ3ZORSI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBPUFVMQVIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBPUFVMQVIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTAiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI1IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czoyOiI3NSI7czo2OiJoZWlnaHQiO3M6MzoiMTAwIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 41, 0),
(4564, 'content', 'product_list_home3.uiwhtC', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjgyOTY2MzkyNjQ1MDE4MDYiO3M6NjoibW9kdWxlIjtzOjI1OiJwcm9kdWN0X2xpc3RfaG9tZTMudWl3aHRDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToicHJvZHVjdF9saXN0X2hvbWUzLnVpd2h0QyI7czo1OiJ3dHlwZSI7czoxODoicHJvZHVjdF9saXN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MToiOSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjUwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjg6InBvc190eXBlIjtzOjE6IjAiO3M6MTA6ImJhbm5lcl9pbWciO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjE0LmpwZyI7czo3OiJiX3dpZHRoIjtzOjM6IjMyMCI7czo4OiJiX2hlaWdodCI7czozOiIzMjUiO30=', 42, 0),
(4558, 'content', 'product_deal.sqQXa1', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjgzMjU0NTAyNDM3NjM4MzkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuc3FRWGExIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLnNxUVhhMSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IlRvZGF5IERlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiVG9kYXkgRGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdGRlYWxzLXYxIHNwYWNlLTYwIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDA5LTAyLTAyIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDE3LTA2LTA2IjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NDoiY29scyI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo5OiJpbWdfd2lkdGgiO3M6MzoiNTAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjYwMCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjM3OntpOjA7czoyOiIzNSI7aToxO3M6MjoiMzYiO2k6MjtzOjI6IjM3IjtpOjM7czoyOiIzOCI7aTo0O3M6MjoiMzkiO2k6NTtzOjI6IjQwIjtpOjY7czoyOiI0MSI7aTo3O3M6MjoiNDIiO2k6ODtzOjI6IjQzIjtpOjk7czoyOiI0NCI7aToxMDtzOjI6IjQ1IjtpOjExO3M6MjoiNDYiO2k6MTI7czoyOiI0NyI7aToxMztzOjI6IjQ4IjtpOjE0O3M6MjoiNDkiO2k6MTU7czoyOiI1MCI7aToxNjtzOjI6IjUxIjtpOjE3O3M6MjoiNTIiO2k6MTg7czoyOiI1MyI7aToxOTtzOjI6IjU0IjtpOjIwO3M6MjoiNTUiO2k6MjE7czoyOiI1NiI7aToyMjtzOjI6IjU4IjtpOjIzO3M6MjoiMjAiO2k6MjQ7czoyOiIyNiI7aToyNTtzOjI6IjI4IjtpOjI2O3M6MjoiMjkiO2k6Mjc7czoyOiIzMCI7aToyODtzOjI6IjMxIjtpOjI5O3M6MjoiMzIiO2k6MzA7czoyOiIxOCI7aTozMTtzOjI6IjI3IjtpOjMyO3M6MjoiMjUiO2k6MzM7czoyOiI1NyI7aTozNDtzOjI6IjE3IjtpOjM1O3M6MjoiMjQiO2k6MzY7czoyOiIzMyI7fX0=', 42, 0),
(4557, 'content', 'image.ZssEUM', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc4MTI0OTg4NDA0OTkyNDMiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5ac3NFVU0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5ac3NFVU0iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMwLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(5761, 'content', 'listproduct_home3.F99H65', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjI4OTM2MzE5NDIwOTY4OTkiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy5GOTlINjUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy5GOTlINjUiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiU2V4dWFsIGhlYWx0aCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiU0VYVUFMIEhFQUxUSCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlNFWFVBTCBIRUFMVEgiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTU6Imxpbmtfdmlld19hbGxfMSI7czoxOiIjIjtzOjE1OiJsaW5rX3ZpZXdfYWxsXzIiO3M6MToiIyI7czo5OiJ0aXRsZV8xXzEiO3M6ODoiRmVhdHVyZWQiO3M6OToidGl0bGVfMV8yIjtzOjg6IkZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8xIjtzOjA6IiI7czo5OiJwcm9kdWN0XzEiO2E6NDp7aTowO3M6MjoiNjUiO2k6MTtzOjI6IjUyIjtpOjI7czoyOiI2NiI7aTozO3M6MjoiNTUiO31zOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8yIjtzOjA6IiI7czo5OiJwcm9kdWN0XzIiO2E6NDp7aTowO3M6MjoiNjEiO2k6MTtzOjI6IjYzIjtpOjI7czoyOiI2NCI7aTozO3M6MjoiNTYiO31zOjk6InRpdGxlXzNfMSI7czo4OiJTYWxlIE9mZiI7czo5OiJ0aXRsZV8zXzIiO3M6ODoiU2FsZSBPZmYiO3M6MTY6ImNob29zZV9wcm9kdWN0XzMiO3M6MDoiIjtzOjk6InByb2R1Y3RfMyI7YTo0OntpOjA7czoyOiI2MSI7aToxO3M6MjoiNTYiO2k6MjtzOjI6IjUyIjtpOjM7czoyOiI3MSI7fXM6OToidGl0bGVfNF8xIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6OToidGl0bGVfNF8yIjtzOjEyOiJCZXN0IFNlbGxlcnMiO3M6MTY6ImNob29zZV9wcm9kdWN0XzQiO3M6MDoiIjtzOjk6InByb2R1Y3RfNCI7YTo1OntpOjA7czoyOiI2NCI7aToxO3M6MjoiNTYiO2k6MjtzOjI6IjY4IjtpOjM7czoyOiI2MCI7aTo0O3M6MjoiNjkiO319', 41, 0),
(5762, 'content', 'listproduct_home3.YjI8D4', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjM4NzUwOTQ3MjI0OTgzNTU2IjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTMuWWpJOEQ0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTMuWWpJOEQ0IjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTg6IkRpZXQgJmFtcDsgZml0bmVzcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiRElFVCAmYW1wOyBGSVRORVNTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTU6Imxpbmtfdmlld19hbGxfMSI7czoxOiIjIjtzOjE1OiJsaW5rX3ZpZXdfYWxsXzIiO3M6MToiIyI7czo5OiJ0aXRsZV8xXzEiO3M6ODoiRmVhdHVyZWQiO3M6OToidGl0bGVfMV8yIjtzOjg6IkZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8xIjtzOjA6IiI7czo5OiJwcm9kdWN0XzEiO2E6NTp7aTowO3M6MjoiNjQiO2k6MTtzOjI6IjYxIjtpOjI7czoyOiI1NiI7aTozO3M6MjoiNjUiO2k6NDtzOjI6IjYzIjt9czo5OiJ0aXRsZV8yXzEiO3M6MTI6Ik5ldyBBcnJpdmFscyI7czo5OiJ0aXRsZV8yXzIiO3M6MTI6Ik5ldyBBcnJpdmFscyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMiI7czowOiIiO3M6OToicHJvZHVjdF8yIjthOjQ6e2k6MDtzOjI6IjU2IjtpOjE7czoyOiI3MCI7aToyO3M6MjoiNTgiO2k6MztzOjI6IjYwIjt9czo5OiJ0aXRsZV8zXzEiO3M6ODoiU2FsZSBPZmYiO3M6OToidGl0bGVfM18yIjtzOjg6IlNhbGUgT2ZmIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8zIjtzOjA6IiI7czo5OiJwcm9kdWN0XzMiO2E6NDp7aTowO3M6MjoiNjkiO2k6MTtzOjI6IjY4IjtpOjI7czoyOiI2MiI7aTozO3M6MjoiNTQiO31zOjk6InRpdGxlXzRfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjk6InRpdGxlXzRfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF80IjtzOjA6IiI7czo5OiJwcm9kdWN0XzQiO2E6NDp7aTowO3M6MjoiNjEiO2k6MTtzOjI6IjYzIjtpOjI7czoyOiI2NCI7aTozO3M6MjoiNTYiO319', 41, 0),
(5763, 'content', 'product_deal.q1AmoI', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjI4Njk2MjA3OTYwMTE0ODk0IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9kZWFsLnExQW1vSSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfZGVhbC5xMUFtb0kiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfZGVhbCI7czoxMToid2lkZ2V0X25hbWUiO3M6OToiSG90IGRlYWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6IkhPVCBERUFMUyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiSE9UIERFQUxTIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDE0LTEyLTIzIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDE3LTAyLTE1IjtzOjU6ImxpbWl0IjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiIxIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMSI7czo5OiJpbWdfd2lkdGgiO3M6MzoiMjcwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjM2MCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjI4OntpOjA7czoyOiI3OSI7aToxO3M6MjoiNjQiO2k6MjtzOjI6IjgwIjtpOjM7czoyOiI2NSI7aTo0O3M6MjoiODEiO2k6NTtzOjI6IjY2IjtpOjY7czoyOiI4MiI7aTo3O3M6MjoiNjciO2k6ODtzOjI6IjgzIjtpOjk7czoyOiI2OCI7aToxMDtzOjI6Ijg0IjtpOjExO3M6MjoiNjkiO2k6MTI7czoyOiI4NSI7aToxMztzOjI6IjcwIjtpOjE0O3M6MjoiODYiO2k6MTU7czoyOiI3MSI7aToxNjtzOjI6Ijg3IjtpOjE3O3M6MjoiNzIiO2k6MTg7czoyOiI4OCI7aToxOTtzOjI6IjczIjtpOjIwO3M6MjoiODkiO2k6MjE7czoyOiI3NCI7aToyMjtzOjI6IjkwIjtpOjIzO3M6MjoiNzUiO2k6MjQ7czoyOiI5MSI7aToyNTtzOjI6Ijc2IjtpOjI2O3M6MjoiNzciO2k6Mjc7czoyOiI3OCI7fX0=', 41, 0),
(5764, 'content', 'product_list.q0Co3B', 'YToxNzp7czo0OiJyYW5kIjtzOjE2OiIwLjI2NjA2MTYzNzM4MjUxIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LnEwQ28zQiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5xMENvM0IiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQmVzdCBTZWxsZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiI2MDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMyI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 41, 0),
(4543, 'content', 'icon_box.0TXe2c', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkyMzUyMjMzODA5MDM5NzIiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4wVFhlMmMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4wVFhlMmMiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE2OiIyNC83IEhlbHAgQ2VudGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNjoiMjQvNyBIZWxwIENlbnRlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4544, 'content', 'icon_box.Axkdek', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjE5Nzg5MDYyMzEzNDcyOTk0IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guQXhrZGVrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guQXhrZGVrIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiS25pdHRpbmcgV29vbCAmYW1wOyBZYXJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJLbml0dGluZyBXb29sICZhbXA7IFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJLbml0dGluZyBXb29sICZhbXA7IFlhcm4iO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxODoic3BhY2UtbWFyZ2luLWwtNDAgIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYxLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7ZGl2Jmd0O0NsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQgaW4gYSBzZWxlY3Rpb24gb2YgbmF0dXJhbCAmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtkaXYmZ3Q7Q2xhc3NpYyB5YXJucyBmb3Iga25pdHRpbmcgJmFtcDsgY3JvY2hldCBpbiBhIHNlbGVjdGlvbiBvZiBuYXR1cmFsICZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4545, 'content', 'icon_box.dWKtaH', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyNzYzMzQ5NDQ1NzYzODciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5kV0t0YUgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5kV0t0YUgiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJWLkkuUCBtZW1iZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlYuSS5QIG1lbWJlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlYuSS5QIG1lbWJlciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12NC5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3MjoiJmx0O3AmZ3Q7U2ltcGx5IGFkZCB0aGUgaXRlbSB0byB5b3VyIHNob3BwaW5nIGJhZyBhbmQgcHJvY2VlZC4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjcyOiImbHQ7cCZndDtTaW1wbHkgYWRkIHRoZSBpdGVtIHRvIHlvdXIgc2hvcHBpbmcgYmFnIGFuZCBwcm9jZWVkLiZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 42, 0),
(4546, 'content', 'icon_box.E0GR2C', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU3NDgzMjE3OTI4ODQwMDEiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5FMEdSMkMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5FMEdSMkMiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiUGVyZmVjdCBDaG9pY2UiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE4OiJzcGFjZS1tYXJnaW4tci00MCAiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODM6IiZsdDtkaXYmZ3Q7QmxhY2sgU2hlZXAgV29vbHMgYXJlIG9uZSBvZiB0aGUgVUsncyB0b3AgcmV0YWlsZXJzIG9mIHlhcm4uJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjgzOiImbHQ7ZGl2Jmd0O0JsYWNrIFNoZWVwIFdvb2xzIGFyZSBvbmUgb2YgdGhlIFVLJ3MgdG9wIHJldGFpbGVycyBvZiB5YXJuLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4547, 'content', 'icon_box.mWVY76', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0NjMzNzc5MDE1NzUxODMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5tV1ZZNzYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5tV1ZZNzYiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiIxMDAlIFdvb2wgWWFybiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiMTAwJSBXb29sIFlhcm4iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiIxMDAlIFdvb2wgWWFybiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12Mi5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo4MjoiJmx0O2RpdiZndDtXb29sIGlzIGFuIHVucGFyYWxsZWxlZCBjaG9pY2UgZm9yIGtuaXR0ZXJzIGFuZCBjcm9jaGV0ZXJzLiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo4MjoiJmx0O2RpdiZndDtXb29sIGlzIGFuIHVucGFyYWxsZWxlZCBjaG9pY2UgZm9yIGtuaXR0ZXJzIGFuZCBjcm9jaGV0ZXJzLiZsdDsvZGl2Jmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 42, 0),
(4548, 'content', 'icon_box.TptTDz', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIzMTY4ODM5MDc3ODQ3NzM2IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guVHB0VER6IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guVHB0VER6IjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJXb3JsZHdpZGUgRGVsaXZlcnkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJXb3JsZHdpZGUgRGVsaXZlcnkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6OTA6IiZsdDtwJmd0O1dpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7IHJlZ2lvbnMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo5MDoiJmx0O3AmZ3Q7V2l0aCBzaXRlcyBpbiA1IGxhbmd1YWdlcywgd2Ugc2hpcCB0byBvdmVyIDIwMCBjb3VudHJpZXMgJmFtcDsgcmVnaW9ucy4mbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 42, 0),
(4549, 'content', 'image.0QqtqB', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc2NzE1MTQ1NDU1MzAwMTciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4wUXF0cUIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4wUXF0cUIiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4550, 'content', 'image.6rFvAA', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU2MzcwMDA5MzAzNTc5MjkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS42ckZ2QUEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS42ckZ2QUEiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI1LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 42, 0),
(4541, 'content', 'html.6R0d7U', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjQ4NTM5MTE3OTU4NTk0NTgiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLjZSMGQ3VSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuNlIwZDdVIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjIzOiJXaW50ZXIgSGF0IFNjYXJmIENvdXBsZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMzoiV2ludGVyIEhhdCBTY2FyZiBDb3VwbGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIzOiJXaW50ZXIgSGF0IFNjYXJmIENvdXBsZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxOTc6IiZsdDtkaXYmZ3Q7V2hhdCB0byBkbyB3aXRoIGFsbCB0aGUgc2NhcnZlcyB5b3UgaGF2ZSB0dW1ibGVkIHRvZ2V0aGVyIGluIGEgZHJhd2VyIG9yIGJhc2tldCxJZiB5b3UgYXJlIG9uZSBvZiB0aG9zZSB3aG8gY2FuIG5vdCAgYmUgYXNrZWQsIHRvIG5lYXRseSBmb2xkIGV2ZXJ5IGl0ZW0gYW5kIHNlY3VyZSB0aGVtIGZyb20gJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjE5NzoiJmx0O2RpdiZndDtXaGF0IHRvIGRvIHdpdGggYWxsIHRoZSBzY2FydmVzIHlvdSBoYXZlIHR1bWJsZWQgdG9nZXRoZXIgaW4gYSBkcmF3ZXIgb3IgYmFza2V0LElmIHlvdSBhcmUgb25lIG9mIHRob3NlIHdobyBjYW4gbm90ICBiZSBhc2tlZCwgdG8gbmVhdGx5IGZvbGQgZXZlcnkgaXRlbSBhbmQgc2VjdXJlIHRoZW0gZnJvbSAmbHQ7L2RpdiZndDsiO30=', 42, 0),
(4542, 'content', 'icon_box.0ApLAK', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk1MzA5MTczNDY4MTQyODYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC4wQXBMQUsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC4wQXBMQUsiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjU6ImZpcnN0IjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYxLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjc5OiImbHQ7cCZndDtQYXkgd2l0aCB0aGUgd29ybGRzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4mbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjc5OiImbHQ7cCZndDtQYXkgd2l0aCB0aGUgd29ybGRzIG1vc3QgcG9wdWxhciBhbmQgc2VjdXJlIHBheW1lbnQgbWV0aG9kcy4mbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 42, 0),
(4539, 'content', 'bloglatest.k5LmEn', 'YToxNDp7czo0OiJyYW5kIjtzOjE3OiIwLjczNzE2MTg5NzAwNDMyNSI7czo2OiJtb2R1bGUiO3M6MTc6ImJsb2dsYXRlc3QuazVMbUVuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNzoiYmxvZ2xhdGVzdC5rNUxtRW4iO3M6NToid3R5cGUiO3M6MTA6ImJsb2dsYXRlc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJMYXRlc3QgYmxvZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToiTGF0ZXN0IGJsb2ciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJMYXRlc3QgYmxvZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEzOiJub25lLXJlYWRtb3JlIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEzNSI7czo0OiJjb2xzIjtzOjE6IjMiO30=', 42, 0),
(4540, 'content', 'featured_category.OSYS7K', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjg0ODgwNjgxMDgxMjE3NzEiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PU1lTN0siO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PU1lTN0siO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiY29sbGVjdGlvbiAwMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiY29sbGVjdGlvbiAwMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6ImNvbGxlY3Rpb24gMDEiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Mzp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC5qcGciO3M6MjoiaWQiO3M6MjoiMjUiO31pOjE7YToyOntzOjU6ImltYWdlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIzLmpwZyI7czoyOiJpZCI7czoyOiIzNCI7fWk6MjthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjYuanBnIjtzOjI6ImlkIjtzOjI6IjM0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjMyMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjE2MCI7czo0OiJjb2xzIjtzOjE6IjMiO30=', 42, 0),
(4653, 'content', 'product_list.HGlsc2', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjMxMzMzNTM5OTA4MDQ2MzE1IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkhHbHNjMiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5IR2xzYzIiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJCZXN0IFNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 37, 0),
(4642, 'content', 'icon_box.BehSiR', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM1NDc0MzA2NzM3MTI4MzI1IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guQmVoU2lSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guQmVoU2lSIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMzoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyAiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjM6IlNoaXBwaW5nICZhbXA7IFJldHVybnMgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMzoiU2hpcHBpbmcgJmFtcDsgUmV0dXJucyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9tb2R1bGUvbWljb24tdjIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6ODg6IiZsdDtkaXYmZ3Q7RnJlZSByZXR1cm4gc2hpcHBpbmcgd2l0aCBwcmVwYWlkIG1haWxlciBmb3IgYWxsIGRvbWVzdGljIG9yZGVycy4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6ODg6IiZsdDtkaXYmZ3Q7RnJlZSByZXR1cm4gc2hpcHBpbmcgd2l0aCBwcmVwYWlkIG1haWxlciBmb3IgYWxsIGRvbWVzdGljIG9yZGVycy4mbHQ7L2RpdiZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 37, 0),
(4698, 'content', 'product_list.drZcjK', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjI2MTg4NzgzMTg0NjI1MjEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuZHJaY2pLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmRyWmNqSyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiTGF0ZXN0IFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJMYXRlc3QgUHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE2OiJGZWF0dXJlIFByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InBhbmVsLWNlbnRlciI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiOCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNjAwIjtzOjY6ImhlaWdodCI7czozOiI1MzMiO3M6OToibGlzdF90eXBlIjtzOjg6ImZlYXR1cmVkIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO3M6NzoicHJvZHVjdCI7YTo1OntpOjA7czoyOiIzMCI7aToxO3M6MjoiNDIiO2k6MjtzOjI6IjQ3IjtpOjM7czoyOiIyOCI7aTo0O3M6MjoiNDEiO319', 33, 0),
(9895, 'content', 'product_tabs.bXd6dw', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjEwMTY5Mzg1MzI2NzQ0ODA2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLmJYZDZkdyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5iWGQ2ZHciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjE3OiI2MCw2MSw2Miw2Myw2NCw1NyI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjEiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjEiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIwIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjEiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjI3MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 32, 0),
(9893, 'content', 'product_list.VqxtHw', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjA5MjQ3NTUyNjc3NDI4MzgzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LlZxeHRIdyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5WcXh0SHciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkJlc3Qgc2VsbGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiQkVTVCBTRUxMRVJTIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTM6Ik1PU1RMWSBCT1VHSFQiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 32, 0),
(9894, 'content', 'product_list_v2.vfGYBd', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg5NzMxOTA2ODI3MzYwNzQiO3M6NjoibW9kdWxlIjtzOjIyOiJwcm9kdWN0X2xpc3RfdjIudmZHWUJkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMjoicHJvZHVjdF9saXN0X3YyLnZmR1lCZCI7czo1OiJ3dHlwZSI7czoxNToicHJvZHVjdF9saXN0X3YyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGF0ZXN0IGl0ZW1zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMQVRFU1QgSVRFTVMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjM2MCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 32, 0),
(9892, 'content', 'product_list.640z0N', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjQwMjUyMzMwNjc5MjU3NTUzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LjY0MHowTiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC42NDB6ME4iO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IlBvcHVsYXIgaXRlbXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlBPUFVMQVIgSVRFTVMiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJQT1BVTEFSIElURU1TIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjc6ImNhcHRpb24iO3M6MTE6IlNUQUZGIFBJQ0tTIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToid2lkdGgiO3M6MzoiMjcwIjtzOjY6ImhlaWdodCI7czozOiIzNjAiO3M6OToibGlzdF90eXBlIjtzOjc6InBvcHVsYXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 32, 0),
(9891, 'content', 'image.vkVmpd', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjQ4OTMzODI0MzIyNDQ3MzA2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UudmtWbXBkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UudmtWbXBkIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiQURWIFdPTUVOUyBXRUFSIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2Mi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6NDQ6ImluZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDtwYXRoPTY0IjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 32, 0),
(9890, 'content', 'image.tnam7a', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjAzNjY1NTg0OTA5NzY1ODczIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UudG5hbTdhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UudG5hbTdhIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiQURWIEFDQ0VTU09SSUVTIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2My5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6NDQ6ImluZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDtwYXRoPTY5IjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 32, 0),
(9887, 'content', 'image.H2NfNg', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjEyMzk2ODU5ODMwMzUyMDM2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuSDJOZk5nIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuSDJOZk5nIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItaG9tZS0zLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czo2MToiaW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvcHJvZHVjdCZhbXA7cGF0aD02NCZhbXA7cHJvZHVjdF9pZD01MiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 32, 0),
(9889, 'content', 'image.RHcrFC', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjU2NjYyNjM2Nzc3MTk1MSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlJIY3JGQyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlJIY3JGQyI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyLWhvbWUxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 32, 0),
(9888, 'content', 'image.kGkcKX', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjQyNTExOTYzMzAwMTE0NDQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5rR2tjS1giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5rR2tjS1giO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJBRFYgTUVOUyBXRUFSIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czoyOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2MS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6NDQ6ImluZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDtwYXRoPTgxIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 32, 0),
(5068, 'content', 'interactive_banner.W0wmB0', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MDQzNjY0MjM2NzMyMzgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuVzB3bUIwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlcwd21CMCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiTmF0dXJhbCBXb29sIEZpYmVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiTmF0dXJhbCBXb29sIEZpYmVycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6Ik5hdHVyYWwgV29vbCBGaWJlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjM3MCI7czo2OiJoZWlnaHQiO3M6MzoiMzIwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjExNzoiJmx0O2RpdiZndDtXb29sIFlhcm5zICBjYXJyaWVzIGEgd2lkZSByYW5nZSBvZiB3b29sIHlhcm4uIFNhdmUgdXAgdG8gMjUlIHdpdGggb3VyIHlhcm4gYW5kIGJvb2sgZGlzY291bnQhJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjExNzoiJmx0O2RpdiZndDtXb29sIFlhcm5zICBjYXJyaWVzIGEgd2lkZSByYW5nZSBvZiB3b29sIHlhcm4uIFNhdmUgdXAgdG8gMjUlIHdpdGggb3VyIHlhcm4gYW5kIGJvb2sgZGlzY291bnQhJmx0Oy9kaXYmZ3Q7IjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMToiTW9yZSBkZXRhaWwiO3M6MTE6InRpdGxlbGlua18yIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjQiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 39, 0),
(5066, 'content', 'interactive_banner.qKkdut', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NjM4MDc0NDM5NjM1MTIyIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnFLa2R1dCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5xS2tkdXQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6NDA6IkNsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NDA6IkNsYXNzaWMgeWFybnMgZm9yIGtuaXR0aW5nICZhbXA7IGNyb2NoZXQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjQwOiJDbGFzc2ljIHlhcm5zIGZvciBrbml0dGluZyAmYW1wOyBjcm9jaGV0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMSI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8yIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjExLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMyMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxMTc6IiZsdDtkaXYmZ3Q7V29vbCBZYXJucyAgY2FycmllcyBhIHdpZGUgcmFuZ2Ugb2Ygd29vbCB5YXJuLiBTYXZlIHVwIHRvIDI1JSB3aXRoIG91ciB5YXJuIGFuZCBib29rIGRpc2NvdW50ISZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxMTc6IiZsdDtkaXYmZ3Q7V29vbCBZYXJucyAgY2FycmllcyBhIHdpZGUgcmFuZ2Ugb2Ygd29vbCB5YXJuLiBTYXZlIHVwIHRvIDI1JSB3aXRoIG91ciB5YXJuIGFuZCBib29rIGRpc2NvdW50ISZsdDsvZGl2Jmd0OyI7czoxMToidGl0bGVsaW5rXzEiO3M6MTE6Ik1vcmUgZGV0YWlsIjtzOjExOiJ0aXRsZWxpbmtfMiI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InY1IjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjEiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 39, 0),
(5056, 'content', 'icon_box.wOE7CT', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjE0NjQzODUwMjkzMjM5NjkiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC53T0U3Q1QiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC53T0U3Q1QiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE2OiIxNS4wMDArIFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiIxNS4wMDArIFBST0RVQ1RTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiMTUuMDAwKyBQUk9EVUNUUyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjEwOiJmYSBmYS10YWdzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjI1ODoiJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0ICZsdDsvcCZndDsNCiZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTg1JnF1b3Q7Jmd0OysgTU9SRSBERVRBSUwmbHQ7L2EmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjI1ODoiJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0ICZsdDsvcCZndDsNCiZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTg1JnF1b3Q7Jmd0OysgTU9SRSBERVRBSUwmbHQ7L2EmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjMiO3M6MTA6InRleHRfYWxpZ24iO3M6MTg6ImZlYXR1cmUtYm94LWNlbnRlciI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 39, 0),
(5057, 'content', 'icon_box.YLULgF', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc1NjM4NDE4MTM2NzEyMTMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5ZTFVMZ0YiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5ZTFVMZ0YiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiUGVyZmVjdCBDaG9pY2UiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE0OiJQZXJmZWN0IENob2ljZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12My5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7Um91bmQtdGhlLWNsb2NrIGFzc2lzdGFuY2UgZm9yIGEgc21vb3RoIHNob3BwaW5nIGV4cGVyaWVuY2UuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(5058, 'content', 'image.85jz2U', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjE1ODU5MjEwNzM3NTY4Nzk2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuODVqejJVIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuODVqejJVIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJIYW5kYmFncyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjUtaG9tZTIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7fQ==', 39, 0),
(5059, 'content', 'image.bEQhIk', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjYwNjQwNTYwNTUzMzcxMTciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5iRVFoSWsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5iRVFoSWsiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6IlNuZWFrZXJzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMy1ob21lMi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1Ijt9', 39, 0),
(5053, 'content', 'icon_box.8vako2', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgzNDU0MTc5NzQ3MDc2NzYiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC44dmFrbzIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC44dmFrbzIiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJTYWZlIFBheW1lbnQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IlNhZmUgUGF5bWVudCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL21vZHVsZS9taWNvbi12MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo3OToiJmx0O3AmZ3Q7UGF5IHdpdGggdGhlIHdvcmxkcyBtb3N0IHBvcHVsYXIgYW5kIHNlY3VyZSBwYXltZW50IG1ldGhvZHMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo3OToiJmx0O3AmZ3Q7UGF5IHdpdGggdGhlIHdvcmxkcyBtb3N0IHBvcHVsYXIgYW5kIHNlY3VyZSBwYXltZW50IG1ldGhvZHMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(5060, 'content', 'image.bGWoY6', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjM2OTM0ODc3MzcwMDA3MiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLmJHV29ZNiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLmJHV29ZNiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI3LWhvbWUyLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO30=', 39, 0),
(5061, 'content', 'image.dfftn3', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjU2MzEzNzk4NDQ0OTY3MzYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5kZmZ0bjMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5kZmZ0bjMiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJTdW5nbGFzc2VzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC1ob21lMi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MToiIyI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjAiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7fQ==', 39, 0),
(5062, 'content', 'image.kO6doG', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU5MjgxNzUxMzY4NDg1MjIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5rTzZkb0ciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5rTzZkb0ciO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjY6InN0eWxlMSI7czo5OiJpbWFnZWZpbGUiO3M6Mjk6ImNhdGFsb2cvZGVtby9tb2R1bGUvYmctdjEucG5nIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 39, 0),
(5063, 'content', 'image.S1F4Q9', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjEwMzMyNzk4Mzg2NjIyMDg4IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuUzFGNFE5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuUzFGNFE5IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo1OiJ3YXRjaCI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjItaG9tZTIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMCI7czo0OiJsaW5rIjtzOjE6IiMiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIwIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO30=', 39, 0),
(5051, 'content', 'bloglatest_home2.dEhsRl', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjYzMjU4NTk2MjU5Mjc2MzIiO3M6NjoibW9kdWxlIjtzOjIzOiJibG9nbGF0ZXN0X2hvbWUyLmRFaHNSbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjM6ImJsb2dsYXRlc3RfaG9tZTIuZEVoc1JsIjtzOjU6Ind0eXBlIjtzOjE2OiJibG9nbGF0ZXN0X2hvbWUyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiRnJvbSBvdXIgYmxvZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoiRlJPTSBPVVIgQkxPRyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6IkZST00gT1VSIEJMT0ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjU6IndpZHRoIjtzOjM6IjQ5MCI7czo2OiJoZWlnaHQiO3M6MzoiMjUwIjt9', 39, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(5052, 'content', 'html_home_2.huOIgo', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjE4NjExMjU0MDYzMDM1NzIiO3M6NjoibW9kdWxlIjtzOjE4OiJodG1sX2hvbWVfMi5odU9JZ28iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE4OiJodG1sX2hvbWVfMi5odU9JZ28iO3M6NToid3R5cGUiO3M6MTE6Imh0bWxfaG9tZV8yIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiT3VyIGNvbGxlY3Rpb24iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6Ik9VUiBDT0xMRUNUSU9OIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiT1VSIENPTExFQ1RJT04iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NzoiY2FwdGlvbiI7czoxMjoiU0hPUCBCWSBMT09LIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjIyMzY6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLTE1IHNwYWNlLXRvcC0xNSZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtpbWFnZS1sb29rIGVmZmVjdC12MTAmcXVvdDsmZ3Q7CQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJJmx0O2ltZyBjbGFzcz0mcXVvdDtpbWctcmVzcG9uc2l2ZSZxdW90OyBhbHQ9JnF1b3Q7JnF1b3Q7IHRpdGxlPSZxdW90OyZxdW90OyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9kZW1vL2Jhbm5lcnMvbG9vay0xLmpwZyZxdW90OyZndDsJCSZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtsb29rLW1ldGEmcXVvdDsmZ3Q7CQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCQlMT09LQk9PSzogUFJFLUZBTEwgMjAxNQkJCSZsdDsvYSZndDsJCSZsdDsvaDQmZ3Q7DQoJCSZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0OwkJCVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0CQkmbHQ7L3AmZ3Q7DQoJCSZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7IyZxdW90OyZndDsrIFNIT1AgVEhJUyBMT09LJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0Ow0KJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgc3BhY2UtMTUgc3BhY2UtdG9wLTE1JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O2ltYWdlLWxvb2sgZWZmZWN0LXYxMCZxdW90OyZndDsJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTIuanBnJnF1b3Q7Jmd0OwkJJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCSZsdDtoNCBjbGFzcz0mcXVvdDt0aXRsZSZxdW90OyZndDsJCQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJCUxPT0tCT09LOiBQUkUtRkFMTCAyMDE1CQkJJmx0Oy9hJmd0OwkJJmx0Oy9oNCZndDsNCgkJJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CQkJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQJCSZsdDsvcCZndDsNCgkJJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OysgU0hPUCBUSElTIExPT0smbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiBzcGFjZS0xNSBzcGFjZS10b3AtMTUmcXVvdDsmZ3Q7CSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayBlZmZlY3QtdjEwJnF1b3Q7Jmd0OwkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCSZsdDtpbWcgY2xhc3M9JnF1b3Q7aW1nLXJlc3BvbnNpdmUmcXVvdDsgYWx0PSZxdW90OyZxdW90OyB0aXRsZT0mcXVvdDsmcXVvdDsgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvZGVtby9iYW5uZXJzL2xvb2stMy5qcGcmcXVvdDsmZ3Q7CQkmbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7bG9vay1tZXRhJnF1b3Q7Jmd0OwkJJmx0O2g0IGNsYXNzPSZxdW90O3RpdGxlJnF1b3Q7Jmd0OwkJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkJTE9PS0JPT0s6IFBSRS1GQUxMIDIwMTUJCQkmbHQ7L2EmZ3Q7CQkmbHQ7L2g0Jmd0Ow0KCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJCQlUaGlzIGlzIFBob3Rvc2hvcCdzIHZlcnNpb24gb2YgTG9yZW0gSXBzdW0uIFByb2luIGdyYXZpZGEgbmliaCB2ZWxpdCBhdWN0b3IgYWxpcXVldAkJJmx0Oy9wJmd0Ow0KCQkmbHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7KyBTSE9QIFRISVMgTE9PSyZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQombHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MjIzNjoiJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTIgc3BhY2UtMTUgc3BhY2UtdG9wLTE1JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O2ltYWdlLWxvb2sgZWZmZWN0LXYxMCZxdW90OyZndDsJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTEuanBnJnF1b3Q7Jmd0OwkJJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCSZsdDtoNCBjbGFzcz0mcXVvdDt0aXRsZSZxdW90OyZndDsJCQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJCUxPT0tCT09LOiBQUkUtRkFMTCAyMDE1CQkJJmx0Oy9hJmd0OwkJJmx0Oy9oNCZndDsNCgkJJmx0O3AgY2xhc3M9JnF1b3Q7ZGVzY3JpcHRpb24mcXVvdDsmZ3Q7CQkJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQJCSZsdDsvcCZndDsNCgkJJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OysgU0hPUCBUSElTIExPT0smbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7DQombHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiBzcGFjZS0xNSBzcGFjZS10b3AtMTUmcXVvdDsmZ3Q7CSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayBlZmZlY3QtdjEwJnF1b3Q7Jmd0OwkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCSZsdDtpbWcgY2xhc3M9JnF1b3Q7aW1nLXJlc3BvbnNpdmUmcXVvdDsgYWx0PSZxdW90OyZxdW90OyB0aXRsZT0mcXVvdDsmcXVvdDsgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvZGVtby9iYW5uZXJzL2xvb2stMi5qcGcmcXVvdDsmZ3Q7CQkmbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7bG9vay1tZXRhJnF1b3Q7Jmd0OwkJJmx0O2g0IGNsYXNzPSZxdW90O3RpdGxlJnF1b3Q7Jmd0OwkJCSZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsJCQkJTE9PS0JPT0s6IFBSRS1GQUxMIDIwMTUJCQkmbHQ7L2EmZ3Q7CQkmbHQ7L2g0Jmd0Ow0KCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJCQlUaGlzIGlzIFBob3Rvc2hvcCdzIHZlcnNpb24gb2YgTG9yZW0gSXBzdW0uIFByb2luIGdyYXZpZGEgbmliaCB2ZWxpdCBhdWN0b3IgYWxpcXVldAkJJmx0Oy9wJmd0Ow0KCQkmbHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7KyBTSE9QIFRISVMgTE9PSyZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQombHQ7L2RpdiZndDsNCiZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLTE1IHNwYWNlLXRvcC0xNSZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtpbWFnZS1sb29rIGVmZmVjdC12MTAmcXVvdDsmZ3Q7CQkmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7CQkJJmx0O2ltZyBjbGFzcz0mcXVvdDtpbWctcmVzcG9uc2l2ZSZxdW90OyBhbHQ9JnF1b3Q7JnF1b3Q7IHRpdGxlPSZxdW90OyZxdW90OyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9kZW1vL2Jhbm5lcnMvbG9vay0zLmpwZyZxdW90OyZndDsJCSZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtsb29rLW1ldGEmcXVvdDsmZ3Q7CQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OwkJCQlMT09LQk9PSzogUFJFLUZBTEwgMjAxNQkJCSZsdDsvYSZndDsJCSZsdDsvaDQmZ3Q7DQoJCSZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0OwkJCVRoaXMgaXMgUGhvdG9zaG9wJ3MgdmVyc2lvbiBvZiBMb3JlbSBJcHN1bS4gUHJvaW4gZ3JhdmlkYSBuaWJoIHZlbGl0IGF1Y3RvciBhbGlxdWV0CQkmbHQ7L3AmZ3Q7DQoJCSZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7IyZxdW90OyZndDsrIFNIT1AgVEhJUyBMT09LJmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0OyI7fQ==', 39, 0),
(5055, 'content', 'icon_box.IAjfqf', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjYwMjQ3NzI5OTQyMDk4NSI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94LklBamZxZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94LklBamZxZiI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjM6IkZyZWUgd29ybGR3aWRlIHNoaXBwaW5nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIzOiJGUkVFIFdPUkxEV0lERSBTSElQUElORyI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjM6IkZSRUUgV09STERXSURFIFNISVBQSU5HIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjA6IiI7czo5OiJpY29uY2xhc3MiO3M6MTk6ImZhIGZhLXBhcGVyLXBsYW5lLW8iO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MjM2OiImbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQgJmx0Oy9wJmd0Ow0KJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDs/cm91dGU9aW5mb3JtYXRpb24vY29udGFjdCZxdW90OyZndDsrIE1PUkUgREVUQUlMJmx0Oy9hJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoyMzY6IiZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0OwlUaGlzIGlzIFBob3Rvc2hvcCdzIHZlcnNpb24gb2YgTG9yZW0gSXBzdW0uIFByb2luIGdyYXZpZGEgbmliaCB2ZWxpdCBhdWN0b3IgYWxpcXVldCAmbHQ7L3AmZ3Q7DQombHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90Oz9yb3V0ZT1pbmZvcm1hdGlvbi9jb250YWN0JnF1b3Q7Jmd0OysgTU9SRSBERVRBSUwmbHQ7L2EmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjMiO3M6MTA6InRleHRfYWxpZ24iO3M6MTg6ImZlYXR1cmUtYm94LWNlbnRlciI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 39, 0),
(5054, 'content', 'icon_box.8wJ50j', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjY3MTMzNjc5MjYzMDU1NCI7czo2OiJtb2R1bGUiO3M6MTU6Imljb25fYm94Ljh3SjUwaiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTU6Imljb25fYm94Ljh3SjUwaiI7czo1OiJ3dHlwZSI7czo4OiJpY29uX2JveCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTg6Ildvcmxkd2lkZSBEZWxpdmVyeSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiV29ybGR3aWRlIERlbGl2ZXJ5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vbW9kdWxlL21pY29uLXYyLnBuZyI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjkwOiImbHQ7cCZndDtXaXRoIHNpdGVzIGluIDUgbGFuZ3VhZ2VzLCB3ZSBzaGlwIHRvIG92ZXIgMjAwIGNvdW50cmllcyAmYW1wOyByZWdpb25zLiZsdDsvcCZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6OTA6IiZsdDtwJmd0O1dpdGggc2l0ZXMgaW4gNSBsYW5ndWFnZXMsIHdlIHNoaXAgdG8gb3ZlciAyMDAgY291bnRyaWVzICZhbXA7IHJlZ2lvbnMuJmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYyIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(5074, 'content', 'icon_box.c9ISsB', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjQxNDY4Mzc2NzI2OTIxNjUiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5jOUlTc0IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5jOUlTc0IiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIwOiJPbmxpbmUgb3JkZXIgc2VydmljZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiT05MSU5FIE9SREVSIFNFUlZJQ0UiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIwOiJPTkxJTkUgT1JERVIgU0VSVklDRSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjEyOiJmYSBmYS1tb2JpbGUiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MjQwOiImbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQgJmx0Oy9wJmd0Ow0KJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cGF2ZGVhbHMvZGVhbHMmcXVvdDsmZ3Q7KyBNT1JFIERFVEFJTCZsdDsvYSZndDsiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MjQwOiImbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDsJVGhpcyBpcyBQaG90b3Nob3AncyB2ZXJzaW9uIG9mIExvcmVtIElwc3VtLiBQcm9pbiBncmF2aWRhIG5pYmggdmVsaXQgYXVjdG9yIGFsaXF1ZXQgJmx0Oy9wJmd0Ow0KJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cGF2ZGVhbHMvZGVhbHMmcXVvdDsmZ3Q7KyBNT1JFIERFVEFJTCZsdDsvYSZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MyI7czoxMDoidGV4dF9hbGlnbiI7czoxODoiZmVhdHVyZS1ib3gtY2VudGVyIjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 39, 0),
(5760, 'content', 'listproduct_home3.8oPaFm', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjgzOTMzNTYyMjkzNjQ0MTUiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy44b1BhRm0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy44b1BhRm0iO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMToiTWVkaWNpbmUgJmFtcDsgaGVhbHRoIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiJNRURJQ0lORSAmYW1wOyBIRUFMVEgiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiJNRURJQ0lORSAmYW1wOyBIRUFMVEgiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTU6Imxpbmtfdmlld19hbGxfMSI7czoxOiIjIjtzOjE1OiJsaW5rX3ZpZXdfYWxsXzIiO3M6MToiIyI7czo5OiJ0aXRsZV8xXzEiO3M6ODoiRmVhdHVyZWQiO3M6OToidGl0bGVfMV8yIjtzOjg6IkZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8xIjtzOjA6IiI7czo5OiJwcm9kdWN0XzEiO2E6Njp7aTowO3M6MjoiNjEiO2k6MTtzOjI6IjYzIjtpOjI7czoyOiI2NCI7aTozO3M6MjoiNTYiO2k6NDtzOjI6IjY1IjtpOjU7czoyOiI2NyI7fXM6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTY6ImNob29zZV9wcm9kdWN0XzIiO3M6MDoiIjtzOjk6InByb2R1Y3RfMiI7YTo0OntpOjA7czoyOiI2NSI7aToxO3M6MjoiNTIiO2k6MjtzOjI6IjY2IjtpOjM7czoyOiI1NSI7fXM6OToidGl0bGVfM18xIjtzOjg6IlNhbGUgT2ZmIjtzOjk6InRpdGxlXzNfMiI7czo4OiJTYWxlIE9mZiI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMyI7czowOiIiO3M6OToicHJvZHVjdF8zIjthOjQ6e2k6MDtzOjI6IjYyIjtpOjE7czoyOiI1NSI7aToyO3M6MjoiNTkiO2k6MztzOjI6IjU4Ijt9czo5OiJ0aXRsZV80XzEiO3M6MTI6IkJlc3QgU2VsbGVycyI7czo5OiJ0aXRsZV80XzIiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfNCI7czowOiIiO3M6OToicHJvZHVjdF80IjthOjQ6e2k6MDtzOjI6IjY3IjtpOjE7czoyOiI1NSI7aToyO3M6MjoiNTkiO2k6MztzOjI6IjU4Ijt9fQ==', 41, 0),
(5759, 'content', 'listproduct_home3.2fqOaM', 'YToyODp7czo0OiJyYW5kIjtzOjE3OiIwLjMxNzc3MDY2OTEyOTU1OSI7czo2OiJtb2R1bGUiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUzLjJmcU9hTSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUzLjJmcU9hTSI7czo1OiJ3dHlwZSI7czoxNzoibGlzdHByb2R1Y3RfaG9tZTMiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJCYWJ5IG5lZWRzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJCQUJZIE5FRURTIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiQkFCWSBORUVEUyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxNToibGlua192aWV3X2FsbF8xIjtzOjE6IiMiO3M6MTU6Imxpbmtfdmlld19hbGxfMiI7czoxOiIjIjtzOjk6InRpdGxlXzFfMSI7czo4OiJGZWF0dXJlZCI7czo5OiJ0aXRsZV8xXzIiO3M6ODoiRmVhdHVyZWQiO3M6MTY6ImNob29zZV9wcm9kdWN0XzEiO3M6MDoiIjtzOjk6InByb2R1Y3RfMSI7YTo1OntpOjA7czoyOiI2MiI7aToxO3M6MjoiNTQiO2k6MjtzOjI6IjYzIjtpOjM7czoyOiI1NiI7aTo0O3M6MjoiNjUiO31zOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8yIjtzOjA6IiI7czo5OiJwcm9kdWN0XzIiO2E6Mzp7aTowO3M6MjoiNjUiO2k6MTtzOjI6IjUyIjtpOjI7czoyOiI1NSI7fXM6OToidGl0bGVfM18xIjtzOjg6IlNhbGUgT2ZmIjtzOjk6InRpdGxlXzNfMiI7czo4OiJTYWxlIE9mZiI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMyI7czowOiIiO3M6OToicHJvZHVjdF8zIjthOjQ6e2k6MDtzOjI6IjU1IjtpOjE7czoyOiI1OSI7aToyO3M6MjoiNzAiO2k6MztzOjI6IjUzIjt9czo5OiJ0aXRsZV80XzEiO3M6MTI6IkJlc3QgU2VsbGVycyI7czo5OiJ0aXRsZV80XzIiO3M6MTI6IkJlc3QgU2VsbGVycyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfNCI7czowOiIiO3M6OToicHJvZHVjdF80IjthOjU6e2k6MDtzOjI6IjY0IjtpOjE7czoyOiI1NiI7aToyO3M6MjoiNjMiO2k6MztzOjI6IjY1IjtpOjQ7czoyOiI2MSI7fX0=', 41, 0),
(5757, 'content', 'image.tU3cDx', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjg1NzY1NDU2MzUzNjc1OSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLnRVM2NEeCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLnRVM2NEeCI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyLWhvbWUzLnBuZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjAiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 41, 0),
(5758, 'content', 'image.W90h2u', 'YToxNjp7czo0OiJyYW5kIjtzOjIwOiIwLjAxMzQzNTE3OTc1OTY1NjI0NiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLlc5MGgydSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLlc5MGgydSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY0IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjAuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(5756, 'content', 'image.PD9WQh', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjg2NjEyNDUwMzgzOTUwOTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5QRDlXUWgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5QRDlXUWgiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJlZmZlY3QtdjEwIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjcuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(5754, 'content', 'image.i6xgcC', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwNTM2NDQ1NzY1NjIxNzkiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5pNnhnY0MiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5pNnhnY0MiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI2LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(5743, 'content', 'html.PKfliD', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjc2ODcxNTEyMjAxNDk0NzYiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLlBLZmxpRCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuUEtmbGlEIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6IkhhbmQgTWFkZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJIYW5kIE1hZGUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6IkhhbmQgTWFkZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxNjI6IiZsdDtwJmd0O0EgY2VyYW1pYyBpcyBhbiBpbm9yZ2FuaWMsIG5vbm1ldGFsbGljIHNvbGlkIG1hdGVyaWFsIGNvbXByaXNpbmcgbWV0YWwsIG5vbm1ldGFsIG9yIG1ldGFsbG9pZCBhdG9tcyBwcmltYXJpbHkgaGVsZCBpbiBpb25pYyBhbmQgY292YWxlbnQgYm9uZHMuJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxNjI6IiZsdDtwJmd0O0EgY2VyYW1pYyBpcyBhbiBpbm9yZ2FuaWMsIG5vbm1ldGFsbGljIHNvbGlkIG1hdGVyaWFsIGNvbXByaXNpbmcgbWV0YWwsIG5vbm1ldGFsIG9yIG1ldGFsbG9pZCBhdG9tcyBwcmltYXJpbHkgaGVsZCBpbiBpb25pYyBhbmQgY292YWxlbnQgYm9uZHMuJmx0Oy9wJmd0OyI7fQ==', 41, 0),
(5744, 'content', 'html.WR6CLr', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjMwODM0NTQ4NTk5MDY3NzEiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLldSNkNMciI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuV1I2Q0xyIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjI0OiJUZWFwb3QgLSBBa2loaXJvIE5pa2FpZG8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjQ6IlRlYXBvdCAtIEFraWhpcm8gTmlrYWlkbyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjQ6IlRlYXBvdCAtIEFraWhpcm8gTmlrYWlkbyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxOTA6IiZsdDtkaXYmZ3Q7QSBiZWF1dGlmdWwgdGVhcG90IGhhbmRtYWRlIGJ5IEFraWhpcm8gTmlrYWlkbyBhdCBoaXMgc3R1ZGlvIGluIE1hc2hpa28sIEphcGFuLiBBcyBwYXJ0IG9mIGhpcyAnTWlzdCcgY29sbGVjdGlvbiB0aGlzIHRlYXBvdCBmZWF0dXJlcyBhIHVuaXF1ZSBnbGF6ZSB0aGF0J3MgcXVpdGUgd2lzcHkmbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MTkwOiImbHQ7ZGl2Jmd0O0EgYmVhdXRpZnVsIHRlYXBvdCBoYW5kbWFkZSBieSBBa2loaXJvIE5pa2FpZG8gYXQgaGlzIHN0dWRpbyBpbiBNYXNoaWtvLCBKYXBhbi4gQXMgcGFydCBvZiBoaXMgJ01pc3QnIGNvbGxlY3Rpb24gdGhpcyB0ZWFwb3QgZmVhdHVyZXMgYSB1bmlxdWUgZ2xhemUgdGhhdCdzIHF1aXRlIHdpc3B5Jmx0Oy9kaXYmZ3Q7Ijt9', 41, 0),
(5745, 'content', 'icon_box.a4NAu9', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU0MDI2MjM5MjkxNjM3MTkiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5hNE5BdTkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5hNE5BdTkiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjI1OiJTYWZlICZhbXA7IHNlY3VyZSBwYXltZW50IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI1OiJTQUZFICZhbXA7IFNFQ1VSRSBQQVlNRU5UIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyNToiU0FGRSAmYW1wOyBTRUNVUkUgUEFZTUVOVCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjEwOiJmYSBmYS1sb2NrIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjQ0OiImbHQ7cCZndDsxMjgtYml0IFNlY3VyZSBFbmNyeXB0aW9uJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo0NDoiJmx0O3AmZ3Q7MTI4LWJpdCBTZWN1cmUgRW5jcnlwdGlvbiZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 41, 0),
(5746, 'content', 'icon_box.dfHL3h', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg2MzIzMDczOTQ0NjcyMjciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5kZkhMM2giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5kZkhMM2giO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjIyOiJHZXQgMTAlIG9mZiBvbiByZW9yZGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIyOiJHRVQgMTAlIE9GRiBPTiBSRU9SREVSIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiR0VUIDEwJSBPRkYgT04gUkVPUkRFUiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjk6ImZhIGZhLXRhZyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czozOToiJmx0O3AmZ3Q7TW9uZXkgU2F2aW5nIFByb2dhbXMmbHQ7L3AmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjM5OiImbHQ7cCZndDtNb25leSBTYXZpbmcgUHJvZ2FtcyZsdDsvcCZndDsiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjE0OiJmZWF0dXJlLWJveC12MSI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 41, 0),
(5747, 'content', 'icon_box.KAuB1e', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM0NTY2NTI2MDc4NzQwOTMzIjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3guS0F1QjFlIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3guS0F1QjFlIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiMTAwJSBNb25leSBiYWNrIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiIxMDAlIE1PTkVZIEJBQ0siO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiIxMDAlIE1PTkVZIEJBQ0siO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czoxMToiZmEgZmEtbW9uZXkiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MzY6IiZsdDtwJmd0OzMwIERheXMgR3VhcmFudGVlJmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czozNjoiJmx0O3AmZ3Q7MzAgRGF5cyBHdWFyYW50ZWUmbHQ7L3AmZ3Q7IjtzOjE0OiJpY29uX2JveF9zdHlsZSI7czoxNDoiZmVhdHVyZS1ib3gtdjEiO3M6MTA6InRleHRfYWxpZ24iO3M6MTY6ImZlYXR1cmUtYm94LWxlZnQiO3M6MTA6ImJhY2tncm91bmQiO3M6MDoiIjt9', 41, 0),
(5755, 'content', 'image.laA8AJ', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjA3MTUzMzYzMTY1OTQ0MDYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5sYUE4QUoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5sYUE4QUoiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjIzLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(5753, 'content', 'image.hYey2N', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjM5NjY4MjE0MDAwMDY1MTQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5oWWV5Mk4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5oWWV5Mk4iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjIxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(5751, 'content', 'image.E1M8lP', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUxNDMwMjM3NTA3Mzg1OTEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5FMU04bFAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5FMU04bFAiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjI0LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 41, 0),
(5752, 'content', 'image.GfJbSo', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjMwNjE5NTU2NjAyNDA5OTYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5HZkpiU28iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5HZkpiU28iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImFkdiBob21lIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMy1ob21lMy5wbmciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMCI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 41, 0),
(5750, 'content', 'image.DjgelO', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjIzNjc0NTUxNTY3Mzg4NTgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5EamdlbE8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5EamdlbE8iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImFkdiBob21lIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMS1ob21lMy5wbmciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIwIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 41, 0),
(5748, 'content', 'icon_box.L7hRuZ', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjI4MjkwNDkzOTc4MTAyMTciO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5MN2hSdVoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5MN2hSdVoiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJPZGVyIG9ubGluZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiT1JERVIgT05MSU5FIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiT1JERVIgT05MSU5FIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjA6IiI7czo5OiJpY29uY2xhc3MiO3M6MTI6ImZhIGZhLW1vYmlsZSI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo0MzoiJmx0O3AmZ3Q7Q2FsbCB1czogKDAxNjkpLTM4OC0xNTU0Jmx0Oy9wJmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo0MzoiJmx0O3AmZ3Q7Q2FsbCB1czogKDAxNjkpLTM4OC0xNTU0Jmx0Oy9wJmd0OyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MTQ6ImZlYXR1cmUtYm94LXYxIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 41, 0),
(5749, 'content', 'image.2zKx2a', 'YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjgyODc3OTY4ODYwODk3NSI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjJ6S3gyYSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjJ6S3gyYSI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiaW1nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjM6ImltZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzoiaW1nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY0IjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMjIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 41, 0),
(9297, 'content', 'product_list.d6BWci', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjI2MjY0OTc3MTI1Nzg1NjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuZDZCV2NpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmQ2QldjaSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQmVzdHNlbGxlciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiQmVzdHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdC1saXN0LXYxIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 48, 0),
(9298, 'content', 'product_list.ES9kMR', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjkwNjk5MzM4NjQ2NjgwMjkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuRVM5a01SIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkVTOWtNUiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJGZWFydHVyZWQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiRmVhcnR1cmVkIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJGZWFydHVyZWQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdC1saXN0LXYxIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjg6ImZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiI1MCI7aToyO3M6MjoiMzQiO2k6MztzOjI6IjQ1IjtpOjQ7czoyOiIyOCI7fX0=', 48, 0),
(9299, 'content', 'product_list.IDQQYK', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjg4Mjc1MzgzNjc5OTcwNyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC5JRFFRWUsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QuSURRUVlLIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjc6IlBvcHVsYXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NzoiUG9wdWxhciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NzoiUG9wdWxhciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIyMCI7czo2OiJoZWlnaHQiO3M6MzoiMjYwIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 48, 0),
(9300, 'content', 'product_list.IWdYE8', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc4MDU2OTgzMDc0NDI4MzkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuSVdkWUU4IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LklXZFlFOCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIHJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIHJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCByYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNjoicHJvZHVjdC1saXN0LXYyIHRvcC1yYXRpbmciO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI1IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 48, 0),
(9301, 'content', 'product_list.MDSCbt', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjkyMzQ3NTA0Mzk0OTU0MTIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuTURTQ2J0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0Lk1EU0NidCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJGZWFydHVyZWQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiRmVhcnR1cmVkIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJGZWFydHVyZWQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdC1saXN0LXYxIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjg6ImZlYXR1cmVkIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiIzNCI7aToyO3M6MjoiNTAiO2k6MztzOjI6IjMwIjtpOjQ7czoyOiIyOCI7fX0=', 48, 0),
(9302, 'content', 'product_list.TZbVyT', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYzODQyMDc5NzY3NzcwMTQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuVFpiVnlUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlRaYlZ5VCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJTcGVjaWFsIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlNwZWNpYWwiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlNwZWNpYWwiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 48, 0),
(9303, 'content', 'product_list.wM3Sz6', 'YToxNzp7czo0OiJyYW5kIjtzOjIxOiIwLjAwMDg5OTU3NDYwNTQyNTQ0NjEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Qud00zU3o2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LndNM1N6NiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIHJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIHJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCByYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNjoicHJvZHVjdC1saXN0LXYyIHRvcC1yYXRpbmciO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI1IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 48, 0),
(9304, 'content', 'product_list.xLd4km', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUzODM3Njg2Nzc5MjUwMTQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QueExkNGttIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnhMZDRrbSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiU2FsZSBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiU2FsZSBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlNhbGUgcHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdC1saXN0LXYyIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNSI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 48, 0),
(9305, 'content', 'product_list_toprating.TA0d7S', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjg3NTkwOTQzMTQ0MjIzMzgiO3M6NjoibW9kdWxlIjtzOjI5OiJwcm9kdWN0X2xpc3RfdG9wcmF0aW5nLlRBMGQ3UyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6Mjk6InByb2R1Y3RfbGlzdF90b3ByYXRpbmcuVEEwZDdTIjtzOjU6Ind0eXBlIjtzOjIyOiJwcm9kdWN0X2xpc3RfdG9wcmF0aW5nIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIHJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIHJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCByYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 48, 0),
(9306, 'content', 'product_tabs.fD8rXK', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjc5NDA1OTIwMTU5MzEwNDUiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuZkQ4clhLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLmZEOHJYSyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiIgc3BhY2UtMzAiO3M6NToibGltaXQiO3M6MjoiMTYiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMCI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MTE6IjQyLDQ0LDQ3LDQ4IjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMCI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjEiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12NSI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjAwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjAwIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 48, 0),
(9307, 'content', 'product_tabs.hnvCfU', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjIwMTc5MjY3NTc0MzQwNTg3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLmhudkNmVSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5obnZDZlUiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE2IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjEiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjUiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 48, 0),
(9287, 'content', 'interactive_banner.IUDBA0', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQyOTM4ODA4MjE3NTUwMDczIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLklVREJBMCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5JVURCQTAiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkFkdiBiYW5uZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJzcGFjZS0zMCI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWx1bWlhLUE2MzUuanBnIjtzOjU6IndpZHRoIjtzOjM6IjkwNiI7czo2OiJoZWlnaHQiO3M6MzoiMTc2IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjA6IiI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 48, 0),
(9367, 'content', 'product_list.cZz5QA', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjcxMTkwMzM4MzM5ODk3ODciO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuY1p6NVFBIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmNaejVRQSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 58, 0),
(9368, 'content', 'product_list.FAryIp', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjYwMjU4NDA2MTgzNzI2NzUiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuRkFyeUlwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkZBcnlJcCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJTcGVjaWFsIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlNwZWNpYWwiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlNwZWNpYWwiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo0MToicHJvZHVjdC1saXN0LXYxIHNwYWNlLXRvcC0zMCBib3JkZXItaG9tZTIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 58, 0),
(9369, 'content', 'product_list.JO3mDi', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjA5MDYwMjQxOTE0MDYyODUiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuSk8zbURpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkpPM21EaSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQmVzdHNlbGxlciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiQmVzdHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyODoicHJvZHVjdC1saXN0LXYxIHNwYWNlLXRvcC0zMCI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 58, 0),
(9370, 'content', 'product_list.KgsSS3', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIyMzkxMzI3NjA0MjQ0MTgyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lktnc1NTMyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5LZ3NTUzMiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiUG9wdWxhciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo3OiJQb3B1bGFyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo3OiJQb3B1bGFyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Mjg6InByb2R1Y3QtbGlzdC12MSBzcGFjZS10b3AtMzAiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 58, 0),
(9371, 'content', 'product_list.PYnmi9', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk4MTk4MzIzOTE4MDU0NDgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuUFlubWk5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlBZbm1pOSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJTcGVjaWFsIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlNwZWNpYWwiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlNwZWNpYWwiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 58, 0),
(9372, 'content', 'product_list.tvVd4I', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjcyODcyNTU0OTEyNzg5NzkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QudHZWZDRJIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LnR2VmQ0SSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IGFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyOToiYm94LXByb2R1Y3QtZnVsbCBzcGFjZS10b3AtMzAiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyNTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI1MCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 58, 0),
(9373, 'content', 'product_list.UEVjJf', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjExMjUwNzM4MTYxMzg5MDE4IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LlVFVmpKZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5VRVZqSmYiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6Ikxhc3Rlc3QgcHJvZHVjdCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiTGFzdGVzdCBwcm9kdWN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiTGFzdGVzdCBwcm9kdWN0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Mjk6ImJveC1wcm9kdWN0LWZ1bGwgc3BhY2UtdG9wLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjUwIjtzOjY6ImhlaWdodCI7czozOiIyNTAiO3M6OToibGlzdF90eXBlIjtzOjY6ImxhdGVzdCI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 58, 0),
(9374, 'content', 'product_list.VaSku2', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjUwNTE4MTIwNzk1NzQ5MDkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuVmFTa3UyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlZhU2t1MiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyODoicHJvZHVjdC1saXN0LXYxIHNwYWNlLXRvcC0zMCI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJwb3B1bGFyIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 58, 0),
(9375, 'content', 'product_list.VhyqEc', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgxOTY4NjkyNjk1OTIxNDkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuVmh5cUVjIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlZoeXFFYyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQmVzdHNlbGxlciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiQmVzdHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyODoicHJvZHVjdC1saXN0LXYxIHNwYWNlLXRvcC0zMCI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 58, 0),
(9376, 'content', 'product_list_link.kgiixk', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjQzNTc2NjQ4OTEwNTg2NzI0IjtzOjY6Im1vZHVsZSI7czoyNDoicHJvZHVjdF9saXN0X2xpbmsua2dpaXhrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoicHJvZHVjdF9saXN0X2xpbmsua2dpaXhrIjtzOjU6Ind0eXBlIjtzOjE3OiJwcm9kdWN0X2xpc3RfbGluayI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6IlBvcHVsYXIgcHJvZHVjdCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiUG9wdWxhciBwcm9kdWN0IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiUG9wdWxhciBwcm9kdWN0IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjE4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNiI7czo0OiJjb2xzIjtzOjE6IjYiO3M6NToid2lkdGgiO3M6MzoiMjIwIjtzOjY6ImhlaWdodCI7czozOiIyNjAiO3M6OToibGlzdF90eXBlIjtzOjc6InBvcHVsYXIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7fQ==', 58, 0),
(9377, 'content', 'product_list_toprating.zRVCRP', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjMzMDM5NjE4NTc0NjI3NjI3IjtzOjY6Im1vZHVsZSI7czoyOToicHJvZHVjdF9saXN0X3RvcHJhdGluZy56UlZDUlAiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI5OiJwcm9kdWN0X2xpc3RfdG9wcmF0aW5nLnpSVkNSUCI7czo1OiJ3dHlwZSI7czoyMjoicHJvZHVjdF9saXN0X3RvcHJhdGluZyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IlRvcCByYXRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IlRvcCByYXRpbmciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJUb3AgcmF0aW5nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjIwIjtzOjY6ImhlaWdodCI7czozOiIyNjAiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 58, 0),
(9296, 'content', 'product_list.9Wgt8U', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk3ODk1NDc0NzMwNjI4NDUiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuOVdndDhVIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LjlXZ3Q4VSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiU2FsZSBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiU2FsZSBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlNhbGUgcHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdC1saXN0LXYyIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNSI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 48, 0),
(9291, 'content', 'interactive_banner.sAOIJj', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwNDI4NTY5ODE2NTUwODkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuc0FPSUpqIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnNBT0lKaiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAyLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzciO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 48, 0),
(9292, 'content', 'listproduct_home3.R6Q7Er', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjYzNTE4NTg0MDMwNjA3NjgiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy5SNlE3RXIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMy5SNlE3RXIiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiUG9wdWxhciBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiUG9wdWxhciBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IlBvcHVsYXIgcHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NDoibGluayI7czo0NDoiaW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO3BhdGg9NzQiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6MTE6e2k6MDtzOjI6IjYxIjtpOjE7czoyOiI2MyI7aToyO3M6MjoiNjQiO2k6MztzOjI6IjU2IjtpOjQ7czoyOiI2NSI7aTo1O3M6MjoiNTMiO2k6NjtzOjI6IjU4IjtpOjc7czoyOiI1MiI7aTo4O3M6MjoiNzEiO2k6OTtzOjI6IjYyIjtpOjEwO3M6MjoiNTQiO319', 48, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(9293, 'content', 'product_deal.lxpE1I', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjU0NzU1NjkwMzE3MjMyMzMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwubHhwRTFJIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLmx4cEUxSSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiRGVhbCBvZiB0aGUgZGF5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJEZWFsIG9mIHRoZSBkYXkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJEZWFsIG9mIHRoZSBkYXkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTMtMDEtMjkiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMzItMDEtMjgiO3M6NToibGltaXQiO3M6MjoiMTAiO3M6NDoiY29scyI7czoxOiIzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo5OiJpbWdfd2lkdGgiO3M6MzoiMjAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjIwMCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjI1OntpOjA7czoyOiI1OSI7aToxO3M6MjoiNjAiO2k6MjtzOjI6IjYxIjtpOjM7czoyOiI2MiI7aTo0O3M6MjoiNjMiO2k6NTtzOjI6IjM1IjtpOjY7czoyOiIzNiI7aTo3O3M6MjoiNDIiO2k6ODtzOjI6IjQ1IjtpOjk7czoyOiI0NiI7aToxMDtzOjI6IjI2IjtpOjExO3M6MjoiMjgiO2k6MTI7czoyOiIyOSI7aToxMztzOjI6IjMwIjtpOjE0O3M6MjoiMzEiO2k6MTU7czoyOiIzMiI7aToxNjtzOjI6IjIwIjtpOjE3O3M6MjoiMjciO2k6MTg7czoyOiIxOCI7aToxOTtzOjI6IjU3IjtpOjIwO3M6MjoiMjUiO2k6MjE7czoyOiIxNyI7aToyMjtzOjI6IjI0IjtpOjIzO3M6MjoiMzMiO2k6MjQ7czoyOiIzNCI7fX0=', 48, 0),
(9294, 'content', 'product_deal.zi0WkX', 'YToyMDp7czo0OiJyYW5kIjtzOjE3OiIwLjQyNDYyMzUzNTU5MzMyMyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfZGVhbC56aTBXa1giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2RlYWwuemkwV2tYIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2RlYWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjE1OiJEZWFsIG9mIHRoZSBkYXkiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTU6IkRlYWwgb2YgdGhlIGRheSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTU6IkRlYWwgb2YgdGhlIGRheSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6NzoiMjAweDIwMCI7czoxMDoic3RhcnRfZGF0ZSI7czoxMDoiMjAxMy0wMS0yOSI7czo4OiJlbmRfZGF0ZSI7czoxMDoiMjAxNi0xMC0xNCI7czo1OiJsaW1pdCI7czoyOiIxMCI7czo0OiJjb2xzIjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjk6ImltZ193aWR0aCI7czozOiIyMDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiMjAwIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiI0NSI7aToyO3M6MjoiNDYiO2k6MztzOjI6IjU5IjtpOjQ7czoyOiI2MCI7aTo1O3M6MjoiNjEiO2k6NjtzOjI6IjYyIjtpOjc7czoyOiI2MyI7aTo4O3M6MjoiMzUiO2k6OTtzOjI6IjM2IjtpOjEwO3M6MjoiMjAiO2k6MTE7czoyOiIyNiI7aToxMjtzOjI6IjI4IjtpOjEzO3M6MjoiMjkiO2k6MTQ7czoyOiIzMCI7aToxNTtzOjI6IjMxIjtpOjE2O3M6MjoiMzIiO2k6MTc7czoyOiIxOCI7aToxODtzOjI6IjI3IjtpOjE5O3M6MjoiNTciO2k6MjA7czoyOiIyNSI7aToyMTtzOjI6IjE3IjtpOjIyO3M6MjoiMjQiO2k6MjM7czoyOiIzMyI7aToyNDtzOjI6IjM0Ijt9fQ==', 48, 0),
(9295, 'content', 'product_list.4hiu0z', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjMwNDc5MjE4MjExMjE2MTk3IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LjRoaXUweiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC40aGl1MHoiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MjQ6InByb2R1Y3QtbGlzdC12MSBzcGFjZS0zMCI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 48, 0),
(9290, 'content', 'interactive_banner.NkjUdF', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjE1NjExOTUxODEzNTM3ODA1IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLk5ralVkRiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5Oa2pVZEYiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Mjg6InNwYWNlLTMwIGhpZGRlbi14cyBoaWRkZW4tc20iO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MzY6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi1zaWRlYmFyLmpwZyI7czo1OiJ3aWR0aCI7czozOiIyODAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI4MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czowOiIiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 48, 0),
(9289, 'content', 'interactive_banner.jYMppe', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjQyODkwNzQ5NDE1ODA5MDYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuallNcHBlIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmpZTXBwZSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQWR2IHNpZGViYXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyODoic3BhY2UtMzAgaGlkZGVuLXhzIGhpZGRlbi1zbSI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LXNpZGViYXIuanBnIjtzOjU6IndpZHRoIjtzOjM6IjI4MCI7czo2OiJoZWlnaHQiO3M6MzoiMjgwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjA6IiI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 48, 0),
(9288, 'content', 'interactive_banner.Jj6GPn', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjcyNjAxNDAzNjQ4NDQ2NjciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuSmo2R1BuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkpqNkdQbiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAxLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzciO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 48, 0),
(9282, 'content', 'html.WyjWnO', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjYxMDI2NjEzMTI2MTAzNjUiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLld5alduTyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuV3lqV25PIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6Imh0bWwiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czozOiJyb3ciO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTM4NDoiJmx0O2RpdiBjbGFzcz0mcXVvdDtjdXN0b20tZnVsbCBjbGVhcmZpeCZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1hcXVhJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O2FxdWEgZmEgZmEgZmEtcGxhbmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtGUkVFIFNISVBQSU5HJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29uIG9yZGVycyBvZiAkMjUrICZhbXA7YW1wOyBmcmVlIHJldHVybnMgb24gZXZlcnl0aGluZy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItZ29sZHYmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7Z29sZHYgZmEgZmEtcmVmcmVzaCZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0Z1bGx5IEN1c3RvbWl6YWJsZSZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtvcmRlciBvbmxpbmUgJmFtcDthbXA7IHBpY2sgaXQgdXAgdG9kYXkgZm9yIGZyZWUuJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiBzcGFjZS10b3AtMzAmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLXR1cnF1b2lzZSZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDt0dXJxdW9pc2UgZmEgZmEtdXNlciZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0N1c3RvbWVyIFN1cHBvcnQmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7UG9ydG8geW91IGNhbiBjdXN0b21pemUgbGF5b3V0IGNvbG9ycyBmZXcgbWludXRlcy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdmlvbGV0JnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3Zpb2xldCBmYSBmYS1lbXBpcmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtQb3dlcmZ1bCBBZG1pbiZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtMb3JlbSBkb2xvciBpdGVtIGxvcmVtIGRvbG9yIGl0ZW0uJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxMzg0OiImbHQ7ZGl2IGNsYXNzPSZxdW90O2N1c3RvbS1mdWxsIGNsZWFyZml4JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiBzcGFjZS10b3AtMzAmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLWFxdWEmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7YXF1YSBmYSBmYSBmYS1wbGFuZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0ZSRUUgU0hJUFBJTkcmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7b24gb3JkZXJzIG9mICQyNSsgJmFtcDthbXA7IGZyZWUgcmV0dXJucyBvbiBldmVyeXRoaW5nLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1nb2xkdiZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDtnb2xkdiBmYSBmYS1yZWZyZXNoJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7RnVsbHkgQ3VzdG9taXphYmxlJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29yZGVyIG9ubGluZSAmYW1wO2FtcDsgcGljayBpdCB1cCB0b2RheSBmb3IgZnJlZS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdHVycXVvaXNlJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3R1cnF1b2lzZSBmYSBmYS11c2VyJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7Q3VzdG9tZXIgU3VwcG9ydCZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtQb3J0byB5b3UgY2FuIGN1c3RvbWl6ZSBsYXlvdXQgY29sb3JzIGZldyBtaW51dGVzLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi12aW9sZXQmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7dmlvbGV0IGZhIGZhLWVtcGlyZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O1Bvd2VyZnVsIEFkbWluJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O0xvcmVtIGRvbG9yIGl0ZW0gbG9yZW0gZG9sb3IgaXRlbS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7Ijt9', 48, 0),
(9279, 'content', 'beautystore_tablist.igN0dx', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjIxNjA5NDY5MzQ0ODQ2Mzc3IjtzOjY6Im1vZHVsZSI7czoyNjoiYmVhdXR5c3RvcmVfdGFibGlzdC5pZ04wZHgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI2OiJiZWF1dHlzdG9yZV90YWJsaXN0LmlnTjBkeCI7czo1OiJ3dHlwZSI7czoxOToiYmVhdXR5c3RvcmVfdGFibGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IkJlc3Qgc2VsbGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJCZXN0IHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6IkJlc3Qgc2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbmtzIjthOjY6e2k6MDtzOjI6IjY5IjtpOjE7czoyOiI3NCI7aToyO3M6MjoiNzciO2k6MztzOjI6IjgxIjtpOjQ7czoyOiI2NCI7aTo1O3M6MjoiODUiO31zOjU6ImxpbWl0IjtzOjI6IjE4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNiI7czo0OiJjb2xzIjtzOjE6IjYiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIyMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjI2MCI7fQ==', 48, 0),
(9280, 'content', 'bloglatest.1RPg24', 'YToxNTp7czo0OiJyYW5kIjtzOjIwOiIwLjAxNDcxNDkzNzA1MTM0NjYzMyI7czo2OiJtb2R1bGUiO3M6MTc6ImJsb2dsYXRlc3QuMVJQZzI0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNzoiYmxvZ2xhdGVzdC4xUlBnMjQiO3M6NToid3R5cGUiO3M6MTA6ImJsb2dsYXRlc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJMYXN0ZXN0IGJsb2ciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6Ikxhc3Rlc3QgYmxvZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6Ikxhc3Rlc3QgYmxvZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIzIjtzOjU6ImxpbWl0IjtzOjE6IjkiO3M6NToid2lkdGgiO3M6MzoiNjg3IjtzOjY6ImhlaWdodCI7czozOiI0NTEiO30=', 48, 0),
(9281, 'content', 'html.ar95jG', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjMzNDY4MDcxODIzMDY1MDgiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLmFyOTVqRyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuYXI5NWpHIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czoxMzg0OiImbHQ7ZGl2IGNsYXNzPSZxdW90O2N1c3RvbS1mdWxsIGNsZWFyZml4JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiBzcGFjZS10b3AtMzAmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLWFxdWEmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7YXF1YSBmYSBmYSBmYS1wbGFuZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0ZSRUUgU0hJUFBJTkcmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7b24gb3JkZXJzIG9mICQyNSsgJmFtcDthbXA7IGZyZWUgcmV0dXJucyBvbiBldmVyeXRoaW5nLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1nb2xkdiZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDtnb2xkdiBmYSBmYS1yZWZyZXNoJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7RnVsbHkgQ3VzdG9taXphYmxlJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29yZGVyIG9ubGluZSAmYW1wO2FtcDsgcGljayBpdCB1cCB0b2RheSBmb3IgZnJlZS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdHVycXVvaXNlJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3R1cnF1b2lzZSBmYSBmYS11c2VyJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7Q3VzdG9tZXIgU3VwcG9ydCZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtQb3J0byB5b3UgY2FuIGN1c3RvbWl6ZSBsYXlvdXQgY29sb3JzIGZldyBtaW51dGVzLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi12aW9sZXQmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7dmlvbGV0IGZhIGZhLWVtcGlyZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O1Bvd2VyZnVsIEFkbWluJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O0xvcmVtIGRvbG9yIGl0ZW0gbG9yZW0gZG9sb3IgaXRlbS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEzODQ6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7Y3VzdG9tLWZ1bGwgY2xlYXJmaXgmcXVvdDsmZ3Q7CSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItYXF1YSZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDthcXVhIGZhIGZhIGZhLXBsYW5lJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7RlJFRSBTSElQUElORyZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtvbiBvcmRlcnMgb2YgJDI1KyAmYW1wO2FtcDsgZnJlZSByZXR1cm5zIG9uIGV2ZXJ5dGhpbmcuJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiBzcGFjZS10b3AtMzAmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLWdvbGR2JnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O2dvbGR2IGZhIGZhLXJlZnJlc2gmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtGdWxseSBDdXN0b21pemFibGUmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7b3JkZXIgb25saW5lICZhbXA7YW1wOyBwaWNrIGl0IHVwIHRvZGF5IGZvciBmcmVlLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi10dXJxdW9pc2UmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7dHVycXVvaXNlIGZhIGZhLXVzZXImcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtDdXN0b21lciBTdXBwb3J0Jmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O1BvcnRvIHlvdSBjYW4gY3VzdG9taXplIGxheW91dCBjb2xvcnMgZmV3IG1pbnV0ZXMuJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiBzcGFjZS10b3AtMzAmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLXZpb2xldCZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDt2aW9sZXQgZmEgZmEtZW1waXJlJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7UG93ZXJmdWwgQWRtaW4mbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7TG9yZW0gZG9sb3IgaXRlbSBsb3JlbSBkb2xvciBpdGVtLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQombHQ7L2RpdiZndDsiO30=', 48, 0),
(9364, 'content', 'product_cols.wnhyBL', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjE0NDg5NzY4NjU0NzA4MjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2NvbHMud25oeUJMIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9jb2xzLnduaHlCTCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9jb2xzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiUmVjb21tZW5lZCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiUmVjb21tZW5lZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlJlY29tbWVuZWQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiZmlyc3RfaWQiO3M6MjoiNDkiO3M6NzoibGlzdF9pZCI7czoyNjoiMjgsNDMsMzMsMzQsNDUsMzYsNDAsMzEsMzAiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjI6Ijk0IjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MjoiOTQiO30=', 58, 0),
(9351, 'content', 'interactive_banner.4XerpN', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjA5MjM5MjYzNjcwODY2NTE1IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjRYZXJwTiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci40WGVycE4iO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoic3BhY2UtdG9wLTMwIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItM2luMy1ob21lMi5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MDoiIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 58, 0),
(9352, 'content', 'interactive_banner.8E48Zr', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjA3MDQ4MzY1NjM5MjgwMTUyIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjhFNDhaciI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci44RTQ4WnIiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czozMjoic3BhY2UtdG9wLTMwIGhpZGRlbi14cyBoaWRkZW4tc20iO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1vcmFuZ2UtNzAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjI3MCI7czo2OiJoZWlnaHQiO3M6MzoiMjg1IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjA6IiI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 58, 0),
(9353, 'content', 'interactive_banner.Dt5Dwb', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjMxNjMwNjE0NTU3Mjg4ODE2IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkR0NUR3YiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5EdDVEd2IiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoic3BhY2UtdG9wLTMwIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItM2luMy1ob21lMi5qcGciO3M6NToid2lkdGgiO3M6MzoiMzcwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 58, 0),
(9354, 'content', 'interactive_banner.e0DFRu', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYzNDE3MTg2MjA0OTE5NDciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZTBERlJ1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmUwREZSdSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0xaW4zLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 58, 0),
(9355, 'content', 'interactive_banner.gIu8Ri', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc2NzE2NTgwNDA3OTQ3MjIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZ0l1OFJpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmdJdThSaSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0yaW4zLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czowOiIiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 58, 0),
(9356, 'content', 'interactive_banner.GNVYjt', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjExNTQ4NTQ0Mzg1ODM3NjExIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkdOVllqdCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5HTlZZanQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkFkdiBiYW5uZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi0wMS1ob21lMS5qcGciO3M6NToid2lkdGgiO3M6MzoiNTc3IjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 58, 0),
(9357, 'content', 'interactive_banner.HJm6z5', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk0MzY0MDUxMTY1MjAxMTciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuSEptNno1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkhKbTZ6NSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0xMTcwLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czo0OiIxMTcwIjtzOjY6ImhlaWdodCI7czozOiIxNDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MDoiIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 58, 0),
(9358, 'content', 'interactive_banner.KsKnYC', 'YToyNjp7czo0OiJyYW5kIjtzOjE3OiIwLjMxNjExNzAxOTY5MTA1OSI7czo2OiJtb2R1bGUiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5Lc0tuWUMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuS3NLbllDIjtzOjU6Ind0eXBlIjtzOjE4OiJpbnRlcmFjdGl2ZV9iYW5uZXIiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImFkdiBob21lIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTk6ImhpZGRlbi14cyBoaWRkZW4tc20iO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci14aWFvLW5va2lhLmpwZyI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI4NSI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czowOiIiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 58, 0),
(9359, 'content', 'interactive_banner.N4bWm0', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjg0OTg3Mjg1MzQ4Nzg4MDgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuTjRiV20wIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLk40YldtMCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0xMTcwLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czo0OiIxMTcwIjtzOjY6ImhlaWdodCI7czozOiIxNDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 58, 0),
(9360, 'content', 'interactive_banner.SfCabk', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQ4Mjg1NDE4NTI3MjMwOTE3IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlNmQ2FiayI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5TZkNhYmsiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkFkdiBiYW5uZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi0wMy1ob21lMS5qcGciO3M6NToid2lkdGgiO3M6NDoiMTE3MCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYzIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 58, 0),
(9361, 'content', 'interactive_banner.u5u4ve', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjg1NTIwMzgwMDEzNTkzNjEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIudTV1NHZlIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnU1dTR2ZSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAyLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzciO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 58, 0),
(9362, 'content', 'interactive_banner.XGIB3a', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjgxNzgxMzc1MDI1NTc4MjUiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuWEdJQjNhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlhHSUIzYSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTA0LWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czo0OiIxMTcwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 58, 0),
(9363, 'content', 'interactive_banner.zUlF4H', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk1MzM4MTMxMzY0NDUwMDIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuelVsRjRIIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnpVbEY0SCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0yaW4zLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 58, 0),
(9507, 'content', 'product_tabs.aF3pbL', 'YToyODp7czo0OiJyYW5kIjtzOjE3OiIwLjEzNjcyNjU2NzUwMDI4NiI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfdGFicy5hRjNwYkwiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X3RhYnMuYUYzcGJMIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X3RhYnMiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjQwOiJzcGFjZS10b3AtMzAgc3BhY2UtMzAgcHJvZHVjdC10YWJzLWhvbWUzIjtzOjU6ImxpbWl0IjtzOjI6IjE2IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjEiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjEiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIwIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjUiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 69, 0),
(9506, 'content', 'product_list_toprating.6XQqvG', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc1NDgzNTkzNTg3MzU0MDgiO3M6NjoibW9kdWxlIjtzOjI5OiJwcm9kdWN0X2xpc3RfdG9wcmF0aW5nLjZYUXF2RyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6Mjk6InByb2R1Y3RfbGlzdF90b3ByYXRpbmcuNlhRcXZHIjtzOjU6Ind0eXBlIjtzOjIyOiJwcm9kdWN0X2xpc3RfdG9wcmF0aW5nIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIHJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIHJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCByYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 69, 0),
(9505, 'content', 'product_list.X64QdR', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjEwMDA3ODI1NzI4MTg5MzkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuWDY0UWRSIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0Llg2NFFkUiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQmVzdHNlbGxlciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiQmVzdHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdC1saXN0LXYxIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 69, 0),
(9504, 'content', 'product_list.vfWUvz', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjMyMzU0MTk3MTQ3NjIxMzMzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LnZmV1V2eiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC52ZldVdnoiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IlRvcCByYXRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IlRvcCByYXRpbmciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJUb3AgcmF0aW5nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MzU6InByb2R1Y3QtbGlzdC12MiBzcGFjZS0zMCB0b3AtcmF0aW5nIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNSI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 69, 0),
(9503, 'content', 'product_list.QmlA4N', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjczMDcxMDQ2OTQzNTg4NyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC5RbWxBNE4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QuUW1sQTROIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6Ik5ldyBhcnJpdmFscyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6Ik5ldyBhcnJpdmFscyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE1OiJwcm9kdWN0LWxpc3QtdjEiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJsaXN0X3R5cGUiO3M6NjoibGF0ZXN0IjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 69, 0),
(9502, 'content', 'product_list.KJFp0X', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjgxMTI3MjcwOTA1NjM5MjkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuS0pGcDBYIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LktKRnAwWCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 69, 0),
(9501, 'content', 'product_list.bmifm9', 'YToxNzp7czo0OiJyYW5kIjtzOjIwOiIwLjAwNDA3MTc0MTA0MTM0MDIyNyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC5ibWlmbTkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QuYm1pZm05IjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjc6IlNwZWNpYWwiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NzoiU3BlY2lhbCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NzoiU3BlY2lhbCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIyMCI7czo2OiJoZWlnaHQiO3M6MzoiMjYwIjtzOjk6Imxpc3RfdHlwZSI7czo3OiJzcGVjaWFsIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 69, 0),
(9500, 'content', 'product_list.A3CPmJ', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjE4MjU0NzA1NzA1NDMyMDYyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LkEzQ1BtSiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5BM0NQbUoiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiRmVhdHVyZWQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiRmVhdHVyZWQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6IkZlYXR1cmVkIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Mzc6InByb2R1Y3QtbGlzdC12MSBzcGFjZS0zMCBib3JkZXItaG9tZTMiO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJsaXN0X3R5cGUiO3M6ODoiZmVhdHVyZWQiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6NTp7aTowO3M6MjoiNDIiO2k6MTtzOjI6IjUwIjtpOjI7czoyOiIzMCI7aTozO3M6MjoiMjgiO2k6NDtzOjI6IjM0Ijt9fQ==', 69, 0),
(9496, 'content', 'interactive_banner.R4pNqF', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjI4NzAyOTQ2Mjc2MjE5NjMiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuUjRwTnFGIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlI0cE5xRiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1sdW1pYS1BNjM1LmpwZyI7czo1OiJ3aWR0aCI7czozOiI5MDYiO3M6NjoiaGVpZ2h0IjtzOjM6IjE3NiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 69, 0),
(9497, 'content', 'interactive_banner.TRFRRY', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkwMjY3NzkyNzIwMzYwNTYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuVFJGUlJZIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlRSRlJSWSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAxLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzciO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 69, 0),
(9498, 'content', 'product_cols.6bfOBr', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjY4Njc1ODgwMzU4MTY4MTYiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2NvbHMuNmJmT0JyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9jb2xzLjZiZk9CciI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9jb2xzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IGFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiZmlyc3RfaWQiO3M6MjoiNTEiO3M6NzoibGlzdF9pZCI7czoxNzoiMzMsMzQsNTAsNDMsNDUsMzYiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpbWFnZV93aWR0aCI7czozOiIyMDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyMDAiO30=', 69, 0),
(9499, 'content', 'product_deal.83eLR4', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjk3ODUwNTU5Mjg1NTM1MjEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuODNlTFI0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLjgzZUxSNCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiRGVhbCBvZiB0aGUgZGF5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJEZWFsIG9mIHRoZSBkYXkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJEZWFsIG9mIHRoZSBkYXkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNjoiZGVhbC1yaWdodC1ob21lMyI7czoxMDoic3RhcnRfZGF0ZSI7czoxMDoiMjAxMS0xMi0yNSI7czo4OiJlbmRfZGF0ZSI7czoxMDoiMjAyOS0xMS0yOSI7czo1OiJsaW1pdCI7czoyOiIxMCI7czo0OiJjb2xzIjtzOjE6IjEiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIxIjtzOjk6ImltZ193aWR0aCI7czozOiIyMDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiMjAwIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MjU6e2k6MDtzOjI6IjQ2IjtpOjE7czoyOiI1OSI7aToyO3M6MjoiNjAiO2k6MztzOjI6IjYxIjtpOjQ7czoyOiI2MiI7aTo1O3M6MjoiNjMiO2k6NjtzOjI6IjM1IjtpOjc7czoyOiIzNiI7aTo4O3M6MjoiNDIiO2k6OTtzOjI6IjQ1IjtpOjEwO3M6MjoiMjAiO2k6MTE7czoyOiIyNiI7aToxMjtzOjI6IjI4IjtpOjEzO3M6MjoiMjkiO2k6MTQ7czoyOiIzMCI7aToxNTtzOjI6IjMxIjtpOjE2O3M6MjoiMzIiO2k6MTc7czoyOiIyNyI7aToxODtzOjI6IjE4IjtpOjE5O3M6MjoiNTciO2k6MjA7czoyOiIyNSI7aToyMTtzOjI6IjE3IjtpOjIyO3M6MjoiMjQiO2k6MjM7czoyOiIzMyI7aToyNDtzOjI6IjM0Ijt9fQ==', 69, 0),
(8996, 'content', 'product_list.Kul5jA', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjk4MDA2OTAyNjQyNDk4NTIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuS3VsNWpBIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0Lkt1bDVqQSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiU2FsZSBwcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiU2FsZSBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IlNhbGUgcHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicHJvZHVjdC1saXN0LXYyIHNwYWNlLTMwIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNSI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 75, 0),
(8997, 'content', 'product_list.mO628e', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjM0MjY5MTk4MzAyNzA3NjA0IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lm1PNjI4ZSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5tTzYyOGUiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTY6Ikxhc3Rlc3QgcHJvZHVjdHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTY6Ikxhc3Rlc3QgcHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE2OiJMYXN0ZXN0IHByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MjQ6InByb2R1Y3QtbGlzdC12MSBzcGFjZS0zMCI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJsYXRlc3QiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 75, 0),
(8998, 'content', 'product_list.NWgGuO', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjU1NzQyMDI4ODE1NDY2NDIiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuTldnR3VPIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0Lk5XZ0d1TyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIHJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIHJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCByYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czozNToicHJvZHVjdC1saXN0LXYyIHNwYWNlLTMwIHRvcC1yYXRpbmciO3M6NToibGltaXQiO3M6MjoiMTUiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI1IjtzOjQ6ImNvbHMiO3M6MToiMSI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE2OiJjaG9vc2VfcHJvZHVjdF8wIjtzOjA6IiI7fQ==', 75, 0),
(8999, 'content', 'product_list.NyMRwH', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjQ4MTMyNzUxNzg2MDAzNTM2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lk55TVJ3SCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5OeU1Sd0giO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTU6InByb2R1Y3QtbGlzdC12MSI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjk6Imxpc3RfdHlwZSI7czoxMDoiYmVzdHNlbGxlciI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 75, 0),
(9000, 'content', 'product_tabs.ASRXaA', 'YToyODp7czo0OiJyYW5kIjtzOjE4OiIwLjczNjY4MTk4MDYxNDI3ODEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuQVNSWGFBIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLkFTUlhhQSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJzcGFjZS0zMCI7czo1OiJsaW1pdCI7czoyOiIxNiI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6MTE6Imljb25fbmV3ZXN0IjtzOjA6IiI7czoxMzoiZW5hYmxlX25ld2VzdCI7czoxOiIxIjtzOjEzOiJpY29uX2ZlYXR1cmVkIjtzOjA6IiI7czoxMDoicHJvZHVjdF9pZCI7czoxMToiNDIsNDQsNDcsNDgiO3M6MTU6ImVuYWJsZV9mZWF0dXJlZCI7czoxOiIwIjtzOjE1OiJpY29uX2Jlc3RzZWxsZXIiO3M6MDoiIjtzOjE3OiJlbmFibGVfYmVzdHNlbGxlciI7czoxOiIxIjtzOjEyOiJpY29uX3NwZWNpYWwiO3M6MDoiIjtzOjE0OiJlbmFibGVfc3BlY2lhbCI7czoxOiIxIjtzOjE0OiJpY29uX21vc3R2aWV3cyI7czowOiIiO3M6MTY6ImVuYWJsZV9tb3N0dmlld3MiO3M6MToiMCI7czo5OiJ0YWJzc3R5bGUiO3M6NjoidGFiLXY1IjtzOjExOiJpbWFnZV93aWR0aCI7czozOiIyMDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyMDAiO3M6OToiYXV0b19wbGF5IjtzOjQ6IjMwMDAiO30=', 75, 0),
(8994, 'content', 'interactive_banner.vbissS', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkyNDU4ODAwODk4NTMwODkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIudmJpc3NTIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnZiaXNzUyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyODoic3BhY2UtMzAgaGlkZGVuLXNtIGhpZGRlbi14cyI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo1MzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMDEtc2lkZWJhci1yaWdodC1kZW1vNC5qcGciO3M6NToid2lkdGgiO3M6MzoiMjcwIjtzOjY6ImhlaWdodCI7czozOiIzMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 75, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(8990, 'content', 'interactive_banner.6LkoZr', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU2NTIyMjM4MTQ0OTkzMzEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuNkxrb1pyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjZMa29aciI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJBZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMTgiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1jYXRlZ29yeS1ob21lLTQtNi5qcGciO3M6NToid2lkdGgiO3M6MzoiNzc1IjtzOjY6ImhlaWdodCI7czozOiI1MzAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 75, 0),
(8991, 'content', 'interactive_banner.dPAcAH', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjI2Njc2Nzg0MzAxNzg2NjYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZFBBY0FIIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmRQQWNBSCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMTgiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1ob21lLTQtMDAyLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzODAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 75, 0),
(8992, 'content', 'interactive_banner.jfZV0U', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjg4NTY1OTUzMTA4MzAxNjkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuamZaVjBVIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmpmWlYwVSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMTgiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1ob21lLTQtMDAxLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzODAiO3M6NjoiaGVpZ2h0IjtzOjM6IjUzMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 75, 0),
(9546, 'content', 'product_list.zrROas', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjE1MzQyMDkwMzA1NjA1MzE2IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LnpyUk9hcyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC56clJPYXMiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IlRvcCByYXRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6IlRvcCByYXRpbmciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJUb3AgcmF0aW5nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MjY6InByb2R1Y3QtbGlzdC12MiB0b3AtcmF0aW5nIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjk6InRvcHJhdGluZyI7czoxNjoiY2hvb3NlX3Byb2R1Y3RfMCI7czowOiIiO30=', 77, 0),
(9547, 'content', 'product_list_link_rating.nS24iI', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjE1NDc2OTkxODc4MTY4ODkiO3M6NjoibW9kdWxlIjtzOjMxOiJwcm9kdWN0X2xpc3RfbGlua19yYXRpbmcublMyNGlJIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czozMToicHJvZHVjdF9saXN0X2xpbmtfcmF0aW5nLm5TMjRpSSI7czo1OiJ3dHlwZSI7czoyNDoicHJvZHVjdF9saXN0X2xpbmtfcmF0aW5nIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiVG9wIFJhdGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiVG9wIFJhdGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IlRvcCBSYXRpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMTgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI2IjtzOjQ6ImNvbHMiO3M6MToiNiI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6OToidG9wcmF0aW5nIjtzOjE0OiJjaG9vc2VfcHJvZHVjdCI7czowOiIiO30=', 77, 0),
(9538, 'content', 'interactive_banner.vX9yzo', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjczMjIyODQ0NTI4MDM4NDkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIudlg5eXpvIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnZYOXl6byI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0xaW4zLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 77, 0),
(9539, 'content', 'interactive_banner.YKOVNs', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjc3NTE3Nzk1NzA5MTI1OTYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuWUtPVk5zIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLllLT1ZOcyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjAzLWRlbW81LmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 77, 0),
(9540, 'content', 'product_cols.htEij8', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjgyODcyNjcwOTMyMTI4MjciO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2NvbHMuaHRFaWo4IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9jb2xzLmh0RWlqOCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9jb2xzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQmVzdHNlbGxlciI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiQmVzdHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkJlc3RzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiZmlyc3RfaWQiO3M6MjoiNTEiO3M6NzoibGlzdF9pZCI7czoxNzoiMzMsMzQsNTAsNDMsNDUsMzYiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==', 77, 0),
(9541, 'content', 'product_cols.NkawYq', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk2Mjc1MjAxMzk5NzE4NTkiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2NvbHMuTmthd1lxIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9jb2xzLk5rYXdZcSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9jb2xzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJQb3B1bGFyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IlBvcHVsYXIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjc6IlBvcHVsYXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6ODoiZmlyc3RfaWQiO3M6MjoiNDkiO3M6NzoibGlzdF9pZCI7czoyNjoiMjgsNDMsMzMsMzQsNDUsMzYsNDAsMzEsMzAiO3M6NToibGltaXQiO3M6MToiNiI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==', 77, 0),
(9542, 'content', 'product_deal.L6y2yj', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjEwNDUyMzMzNTI2MTQxODMzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9kZWFsLkw2eTJ5aiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfZGVhbC5MNnkyeWoiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfZGVhbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6IkRlYWwgb2YgdGhlIGRheSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiRGVhbCBvZiB0aGUgZGF5IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiRGVhbCBvZiB0aGUgZGF5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDEyLTA2LTEzIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDM1LTA3LTEyIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjQ6ImNvbHMiO3M6MToiMyI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjMiO3M6OToiaW1nX3dpZHRoIjtzOjM6IjIwMCI7czoxMDoiaW1nX2hlaWdodCI7czozOiIyMDAiO3M6MTI6ImNhdGVnb3J5X2lkcyI7YToyNTp7aTowO3M6MjoiMzUiO2k6MTtzOjI6IjM2IjtpOjI7czoyOiI0MiI7aTozO3M6MjoiNDUiO2k6NDtzOjI6IjQ2IjtpOjU7czoyOiI1OSI7aTo2O3M6MjoiNjAiO2k6NztzOjI6IjYxIjtpOjg7czoyOiI2MiI7aTo5O3M6MjoiNjMiO2k6MTA7czoyOiIyMCI7aToxMTtzOjI6IjI2IjtpOjEyO3M6MjoiMjgiO2k6MTM7czoyOiIyOSI7aToxNDtzOjI6IjMwIjtpOjE1O3M6MjoiMzEiO2k6MTY7czoyOiIzMiI7aToxNztzOjI6IjE4IjtpOjE4O3M6MjoiMjciO2k6MTk7czoyOiI1NyI7aToyMDtzOjI6IjI1IjtpOjIxO3M6MjoiMTciO2k6MjI7czoyOiIyNCI7aToyMztzOjI6IjMzIjtpOjI0O3M6MjoiMzQiO319', 77, 0),
(9543, 'content', 'product_deal.vnWIjG', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjkxNTc1MjA3MjI2MzkwMDMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwudm5XSWpHIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLnZuV0lqRyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo5OiJIb3QgZGVhbHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6OToiSG90IGRlYWxzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo5OiJIb3QgZGVhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjc6IjM0MHg0MDIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDYtMTUiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMjUtMDctMDgiO3M6NToibGltaXQiO3M6MToiNSI7czo0OiJjb2xzIjtzOjE6IjEiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIxIjtzOjk6ImltZ193aWR0aCI7czozOiIzNDAiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNDAyIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6Mjg6e2k6MDtzOjI6IjY2IjtpOjE7czoyOiI4MiI7aToyO3M6MjoiNjciO2k6MztzOjI6IjgzIjtpOjQ7czoyOiI2OCI7aTo1O3M6MjoiODQiO2k6NjtzOjI6IjY5IjtpOjc7czoyOiI4NSI7aTo4O3M6MjoiNzAiO2k6OTtzOjI6Ijg2IjtpOjEwO3M6MjoiNzEiO2k6MTE7czoyOiI4NyI7aToxMjtzOjI6IjcyIjtpOjEzO3M6MjoiODgiO2k6MTQ7czoyOiI3MyI7aToxNTtzOjI6Ijg5IjtpOjE2O3M6MjoiNzQiO2k6MTc7czoyOiI5MCI7aToxODtzOjI6Ijc1IjtpOjE5O3M6MjoiOTEiO2k6MjA7czoyOiI3NiI7aToyMTtzOjI6Ijc3IjtpOjIyO3M6MjoiNzgiO2k6MjM7czoyOiI3OSI7aToyNDtzOjI6IjY0IjtpOjI1O3M6MjoiODAiO2k6MjY7czoyOiI2NSI7aToyNztzOjI6IjgxIjt9fQ==', 77, 0),
(9544, 'content', 'product_list.DjxusX', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjY4MTQzMDY5MzEzNzU0MTEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuRGp4dXNYIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LkRqeHVzWCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiUG9wdWxhciBQcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IlBvcHVsYXIgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGltaXQiO3M6MjoiMzIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjQ6ImNvbHMiO3M6MToiMiI7czo1OiJ3aWR0aCI7czozOiIyMjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI2MCI7czo5OiJsaXN0X3R5cGUiO3M6NzoicG9wdWxhciI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjt9', 77, 0),
(9545, 'content', 'product_list.z4t8oj', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjkxNTM5MTk5ODk2MjMwNDMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuejR0OG9qIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0Lno0dDhvaiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IGFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNToiYm94LXByb2R1Y3QtZnVsbCBzcGFjZS0zMCI7czo1OiJsaW1pdCI7czoyOiIxNSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NDoiY29scyI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjI1MCI7czo2OiJoZWlnaHQiO3M6MzoiMjUwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJsYXRlc3QiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 77, 0),
(9537, 'content', 'interactive_banner.uWZGCT', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk4NTgzNzEwMzYzMjYxNDEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIudVdaR0NUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnVXWkdDVCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzk6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjAyLWRlbW81LmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 77, 0),
(9536, 'content', 'interactive_banner.uTIvzb', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjMyODkzMjI4NDAwMjUxNDQiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIudVRJdnpiIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLnVUSXZ6YiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAzLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czo0OiIxMTcwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 77, 0),
(9534, 'content', 'interactive_banner.LVl1dY', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUzOTQxMDU1NjkxNDU1ODkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuTFZsMWRZIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLkxWbDFkWSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAxLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzciO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 77, 0),
(9528, 'content', 'beautystore_tablist.QGcdKs', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjEzODk3MTM1ODY3NTI0MzY4IjtzOjY6Im1vZHVsZSI7czoyNjoiYmVhdXR5c3RvcmVfdGFibGlzdC5RR2NkS3MiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI2OiJiZWF1dHlzdG9yZV90YWJsaXN0LlFHY2RLcyI7czo1OiJ3dHlwZSI7czoxOToiYmVhdXR5c3RvcmVfdGFibGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IkJlc3Qgc2VsbGVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJCZXN0IHNlbGxlciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6IkJlc3Qgc2VsbGVyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbmtzIjthOjY6e2k6MDtzOjI6IjY5IjtpOjE7czoyOiI3NCI7aToyO3M6MjoiNzciO2k6MztzOjI6IjgxIjtpOjQ7czoyOiI2NCI7aTo1O3M6MjoiODUiO31zOjU6ImxpbWl0IjtzOjI6IjE4IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNiI7czo0OiJjb2xzIjtzOjE6IjYiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIyMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjI2MCI7fQ==', 77, 0),
(9529, 'content', 'bloglatest.na7n0O', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjk1NDQyNzkwMzk3OTEzNjEiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0Lm5hN24wTyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QubmE3bjBPIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTGFzdGVzdCBibG9nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJMYXN0ZXN0IGJsb2ciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJMYXN0ZXN0IGJsb2ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJsaW1pdCI7czoxOiI5IjtzOjU6IndpZHRoIjtzOjM6IjY4NyI7czo2OiJoZWlnaHQiO3M6MzoiNDUxIjt9', 77, 0),
(9530, 'content', 'html.M2zyxK', 'YToxMjp7czo0OiJyYW5kIjtzOjE5OiIwLjMxNTU3NjczMzk3MTM4MjY0IjtzOjY6Im1vZHVsZSI7czoxMToiaHRtbC5NMnp5eEsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjExOiJodG1sLk0yenl4SyI7czo1OiJ3dHlwZSI7czo0OiJodG1sIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTM4NDoiJmx0O2RpdiBjbGFzcz0mcXVvdDtjdXN0b20tZnVsbCBjbGVhcmZpeCZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1hcXVhJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O2FxdWEgZmEgZmEgZmEtcGxhbmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtGUkVFIFNISVBQSU5HJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29uIG9yZGVycyBvZiAkMjUrICZhbXA7YW1wOyBmcmVlIHJldHVybnMgb24gZXZlcnl0aGluZy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItZ29sZHYmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7Z29sZHYgZmEgZmEtcmVmcmVzaCZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0Z1bGx5IEN1c3RvbWl6YWJsZSZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtvcmRlciBvbmxpbmUgJmFtcDthbXA7IHBpY2sgaXQgdXAgdG9kYXkgZm9yIGZyZWUuJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiBzcGFjZS10b3AtMzAmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLXR1cnF1b2lzZSZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDt0dXJxdW9pc2UgZmEgZmEtdXNlciZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0N1c3RvbWVyIFN1cHBvcnQmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7UG9ydG8geW91IGNhbiBjdXN0b21pemUgbGF5b3V0IGNvbG9ycyBmZXcgbWludXRlcy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdmlvbGV0JnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3Zpb2xldCBmYSBmYS1lbXBpcmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtQb3dlcmZ1bCBBZG1pbiZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtMb3JlbSBkb2xvciBpdGVtIGxvcmVtIGRvbG9yIGl0ZW0uJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxMzg0OiImbHQ7ZGl2IGNsYXNzPSZxdW90O2N1c3RvbS1mdWxsIGNsZWFyZml4JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiBzcGFjZS10b3AtMzAmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLWFxdWEmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7YXF1YSBmYSBmYSBmYS1wbGFuZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0ZSRUUgU0hJUFBJTkcmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7b24gb3JkZXJzIG9mICQyNSsgJmFtcDthbXA7IGZyZWUgcmV0dXJucyBvbiBldmVyeXRoaW5nLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1nb2xkdiZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDtnb2xkdiBmYSBmYS1yZWZyZXNoJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7RnVsbHkgQ3VzdG9taXphYmxlJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29yZGVyIG9ubGluZSAmYW1wO2FtcDsgcGljayBpdCB1cCB0b2RheSBmb3IgZnJlZS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyIHNwYWNlLXRvcC0zMCZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdHVycXVvaXNlJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3R1cnF1b2lzZSBmYSBmYS11c2VyJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7Q3VzdG9tZXIgU3VwcG9ydCZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtQb3J0byB5b3UgY2FuIGN1c3RvbWl6ZSBsYXlvdXQgY29sb3JzIGZldyBtaW51dGVzLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTIgc3BhY2UtdG9wLTMwJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi12aW9sZXQmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7dmlvbGV0IGZhIGZhLWVtcGlyZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O1Bvd2VyZnVsIEFkbWluJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O0xvcmVtIGRvbG9yIGl0ZW0gbG9yZW0gZG9sb3IgaXRlbS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7Ijt9', 77, 0),
(9286, 'content', 'interactive_banner.eCgAA9', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjcyNTc0MTU5NDQxMjAwNzgiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZUNnQUE5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmVDZ0FBOSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiYWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6IiBzcGFjZS0zMCI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWx1bWlhLUE2MzUuanBnIjtzOjU6IndpZHRoIjtzOjM6IjkwNiI7czo2OiJoZWlnaHQiO3M6MzoiMTc2IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjA6IiI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 48, 0),
(9283, 'content', 'image.wzgfix', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjg3NzE1MDk3NzQ5MDE4NTYiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS53emdmaXgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS53emdmaXgiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjA6IiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6MjI6ImNhdGFsb2cvYmFubmVyLWVyNC5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7fQ==', 48, 0),
(9284, 'content', 'interactive_banner.9d8fHe', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjkwODc4NzQwNzE0MDM5NDciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuOWQ4ZkhlIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjlkOGZIZSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTA0LWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czo0OiIxMTcwIjtzOjY6ImhlaWdodCI7czozOiIxOTkiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 48, 0),
(9285, 'content', 'interactive_banner.cXG05m', 'YToyNjp7czo0OiJyYW5kIjtzOjIxOiIwLjAwMDYyOTE1MDE5OTQ1MDg2NzUiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuY1hHMDVtIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmNYRzA1bSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiYWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAzLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czo0OiIxMTcwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 48, 0),
(9366, 'content', 'product_list.7mgMB7', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjExNzg3MTI3MDk3MTE1NzEzIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0LjdtZ01CNyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC43bWdNQjciO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiU3BlY2lhbCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo3OiJTcGVjaWFsIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czo3OiJTcGVjaWFsIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NDE6InByb2R1Y3QtbGlzdC12MSBzcGFjZS10b3AtMzAgYm9yZGVyLWhvbWUyIjtzOjU6ImxpbWl0IjtzOjI6IjE1IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo0OiJjb2xzIjtzOjE6IjEiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6MTY6ImNob29zZV9wcm9kdWN0XzAiO3M6MDoiIjt9', 58, 0),
(9365, 'content', 'product_cols.xtiESa', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjA4MzI0ODAyNjc4MjMyNTAxIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9jb2xzLnh0aUVTYSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfY29scy54dGlFU2EiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfY29scyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6Ik1vc3Qgdmlld2VkIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjExOiJNb3N0IHZpZXdlZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTE6Ik1vc3Qgdmlld2VkIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6ImZpcnN0X2lkIjtzOjI6IjUxIjtzOjc6Imxpc3RfaWQiO3M6MTc6IjMzLDM0LDUwLDQzLDQ1LDM2IjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjExOiJpbWFnZV93aWR0aCI7czoyOiI5NCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjI6Ijk0Ijt9', 58, 0),
(9350, 'content', 'interactive_banner.428PNN', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQwNjkxMzM3MTE2MjU5Mjc0IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjQyOFBOTiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci40MjhQTk4iO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6ImFkdiBiYW5uZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxOToiaGlkZGVuLXhzIGhpZGRlbi1zbSI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czo0MjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLXhpYW8tbm9raWEuanBnIjtzOjU6IndpZHRoIjtzOjM6IjI3MCI7czo2OiJoZWlnaHQiO3M6MzoiMjg1IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 58, 0),
(9349, 'content', 'interactive_banner.3f4ER6', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk3NjI2ODIwODg0Njc2MTYiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuM2Y0RVI2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjNmNEVSNiI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJzcGFjZS10b3AtMzAiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci0xaW4zLWhvbWUyLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czowOiIiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 58, 0),
(9343, 'content', 'beautystore_tablist.TbX4ZS', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU1MDU5NTMzNTQ2OTkyMTYiO3M6NjoibW9kdWxlIjtzOjI2OiJiZWF1dHlzdG9yZV90YWJsaXN0LlRiWDRaUyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6ImJlYXV0eXN0b3JlX3RhYmxpc3QuVGJYNFpTIjtzOjU6Ind0eXBlIjtzOjE5OiJiZWF1dHlzdG9yZV90YWJsaXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBzZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3Qgc2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Njp7aTowO3M6MjoiNjkiO2k6MTtzOjI6Ijc0IjtpOjI7czoyOiI3NyI7aTozO3M6MjoiODEiO2k6NDtzOjI6IjY0IjtpOjU7czoyOiI4NSI7fXM6NToibGltaXQiO3M6MjoiMTgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI2IjtzOjQ6ImNvbHMiO3M6MToiNiI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjIwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjYwIjt9', 58, 0),
(9348, 'content', 'interactive_banner.31SLnd', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjM2ODg4NTY4NTUwMDAzMjY1IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjMxU0xuZCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci4zMVNMbmQiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czozMjoic3BhY2UtdG9wLTMwIGhpZGRlbi14cyBoaWRkZW4tc20iO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6NDE6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lci1vcmFuZ2UtNzAuanBnIjtzOjU6IndpZHRoIjtzOjM6IjI3MCI7czo2OiJoZWlnaHQiO3M6MzoiMjg1IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 58, 0),
(9344, 'content', 'featured_category.cK7Xij', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjE5MjkyODk4ODQyOTA0ODM4IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuY0s3WGlqIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuY0s3WGlqIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzY6IkJhbm5lciBjYXRlZ29yeSA6IFRvb2wgJmFtcDsgYnJ1c2hlZCI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJncmVlbmxpZ2h0IjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6MDoiIjtzOjI6ImlkIjtzOjI6Ijg1Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjI6IjMwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MjoiMzAiO30=', 58, 0),
(9345, 'content', 'featured_category.TXeBmD', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjg0NDY0MTcxMjI4OTk1NzQiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5UWGVCbUQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5UWGVCbUQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyOToiQmFubmVyIGNhdGVnb3J5IDogT3RoZXIgbmVlZHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMToib3JhbmdlbGlnaHQiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czowOiIiO3M6MjoiaWQiO3M6MjoiNzIiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MjoiMzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czoyOiIzMCI7fQ==', 58, 0),
(9346, 'content', 'featured_category.XPWfR7', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjQ0NjY3MzUwNjM1MDEwMjgzIjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuWFBXZlI3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuWFBXZlI3IjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjc6IkJhbm5lciBjYXRlZ29yeSA6IFNraW4gQ2FyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJibHVldmlvbGV0IjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6MDoiIjtzOjI6ImlkIjtzOjI6IjY5Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjI6IjMwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MjoiMzAiO30=', 58, 0),
(9347, 'content', 'html.XKBU4r', 'YToxMjp7czo0OiJyYW5kIjtzOjE5OiIwLjM4NTY4NDQyNjkzNTcxMDAzIjtzOjY6Im1vZHVsZSI7czoxMToiaHRtbC5YS0JVNHIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjExOiJodG1sLlhLQlU0ciI7czo1OiJ3dHlwZSI7czo0OiJodG1sIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czozOiJyb3ciO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTM4NDoiJmx0O2RpdiBjbGFzcz0mcXVvdDtjdXN0b20tZnVsbCBjbGVhcmZpeCZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtzcGFjZS10b3AtMzAgY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1hcXVhJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O2FxdWEgZmEgZmEgZmEtcGxhbmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtGUkVFIFNISVBQSU5HJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29uIG9yZGVycyBvZiAkMjUrICZhbXA7YW1wOyBmcmVlIHJldHVybnMgb24gZXZlcnl0aGluZy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7c3BhY2UtdG9wLTMwIGNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItZ29sZHYmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7Z29sZHYgZmEgZmEtcmVmcmVzaCZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0Z1bGx5IEN1c3RvbWl6YWJsZSZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtvcmRlciBvbmxpbmUgJmFtcDthbXA7IHBpY2sgaXQgdXAgdG9kYXkgZm9yIGZyZWUuJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O3NwYWNlLXRvcC0zMCBjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLXR1cnF1b2lzZSZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDt0dXJxdW9pc2UgZmEgZmEtdXNlciZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0N1c3RvbWVyIFN1cHBvcnQmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7UG9ydG8geW91IGNhbiBjdXN0b21pemUgbGF5b3V0IGNvbG9ycyBmZXcgbWludXRlcy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7c3BhY2UtdG9wLTMwIGNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdmlvbGV0JnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3Zpb2xldCBmYSBmYS1lbXBpcmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtQb3dlcmZ1bCBBZG1pbiZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtMb3JlbSBkb2xvciBpdGVtIGxvcmVtIGRvbG9yIGl0ZW0uJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxMzg0OiImbHQ7ZGl2IGNsYXNzPSZxdW90O2N1c3RvbS1mdWxsIGNsZWFyZml4JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O3NwYWNlLXRvcC0zMCBjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLWFxdWEmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7YXF1YSBmYSBmYSBmYS1wbGFuZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0ZSRUUgU0hJUFBJTkcmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7b24gb3JkZXJzIG9mICQyNSsgJmFtcDthbXA7IGZyZWUgcmV0dXJucyBvbiBldmVyeXRoaW5nLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtzcGFjZS10b3AtMzAgY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1nb2xkdiZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDtnb2xkdiBmYSBmYS1yZWZyZXNoJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7RnVsbHkgQ3VzdG9taXphYmxlJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29yZGVyIG9ubGluZSAmYW1wO2FtcDsgcGljayBpdCB1cCB0b2RheSBmb3IgZnJlZS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7c3BhY2UtdG9wLTMwIGNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdHVycXVvaXNlJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3R1cnF1b2lzZSBmYSBmYS11c2VyJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7Q3VzdG9tZXIgU3VwcG9ydCZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtQb3J0byB5b3UgY2FuIGN1c3RvbWl6ZSBsYXlvdXQgY29sb3JzIGZldyBtaW51dGVzLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtzcGFjZS10b3AtMzAgY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi12aW9sZXQmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7dmlvbGV0IGZhIGZhLWVtcGlyZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O1Bvd2VyZnVsIEFkbWluJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O0xvcmVtIGRvbG9yIGl0ZW0gbG9yZW0gZG9sb3IgaXRlbS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7Ijt9', 58, 0),
(9494, 'content', 'interactive_banner.niRj9H', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjE0ODUwNDI5ODk1ODQ5NzI2IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm5pUmo5SCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5uaVJqOUgiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkFkdiBiYW5uZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi0wMi1ob21lMS5qcGciO3M6NToid2lkdGgiO3M6MzoiNTc3IjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 69, 0),
(9495, 'content', 'interactive_banner.np4EOC', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjcyNDM3ODIyMzM2NzMxNTciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIubnA0RU9DIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm5wNEVPQyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTA0LWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czo0OiIxMTcwIjtzOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjMiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 69, 0),
(9493, 'content', 'interactive_banner.4V254q', 'YToyNjp7czo0OiJyYW5kIjtzOjE5OiIwLjI4NzMwMTM1NzI4ODYwNTg0IjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjRWMjU0cSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci40VjI1NHEiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkFkdiBiYW5uZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToic3ViX3RpdGxlIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzc6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Fkdi0wMy1ob21lMS5qcGciO3M6NToid2lkdGgiO3M6NDoiMTE3MCI7czo2OiJoZWlnaHQiO3M6MzoiMjAwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYzIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 69, 0),
(9492, 'content', 'html.enA1Ra', 'YToxMjp7czo0OiJyYW5kIjtzOjE5OiIwLjMxMTIxNDQ5NjgxNTYyNDk2IjtzOjY6Im1vZHVsZSI7czoxMToiaHRtbC5lbkExUmEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjExOiJodG1sLmVuQTFSYSI7czo1OiJ3dHlwZSI7czo0OiJodG1sIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czozOiJyb3ciO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MTM4NDoiJmx0O2RpdiBjbGFzcz0mcXVvdDtjdXN0b20tZnVsbCBjbGVhcmZpeCZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtzcGFjZS10b3AtMzAgY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1hcXVhJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O2FxdWEgZmEgZmEgZmEtcGxhbmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtGUkVFIFNISVBQSU5HJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29uIG9yZGVycyBvZiAkMjUrICZhbXA7YW1wOyBmcmVlIHJldHVybnMgb24gZXZlcnl0aGluZy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7c3BhY2UtdG9wLTMwIGNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItZ29sZHYmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7Z29sZHYgZmEgZmEtcmVmcmVzaCZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0Z1bGx5IEN1c3RvbWl6YWJsZSZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtvcmRlciBvbmxpbmUgJmFtcDthbXA7IHBpY2sgaXQgdXAgdG9kYXkgZm9yIGZyZWUuJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O3NwYWNlLXRvcC0zMCBjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLXR1cnF1b2lzZSZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDt0dXJxdW9pc2UgZmEgZmEtdXNlciZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0N1c3RvbWVyIFN1cHBvcnQmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7UG9ydG8geW91IGNhbiBjdXN0b21pemUgbGF5b3V0IGNvbG9ycyBmZXcgbWludXRlcy4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7c3BhY2UtdG9wLTMwIGNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdmlvbGV0JnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3Zpb2xldCBmYSBmYS1lbXBpcmUmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OwkJCSZsdDtoNSZndDtQb3dlcmZ1bCBBZG1pbiZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtMb3JlbSBkb2xvciBpdGVtIGxvcmVtIGRvbG9yIGl0ZW0uJmx0Oy9wJmd0Ow0KCQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCiZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czoxMzg0OiImbHQ7ZGl2IGNsYXNzPSZxdW90O2N1c3RvbS1mdWxsIGNsZWFyZml4JnF1b3Q7Jmd0OwkmbHQ7ZGl2IGNsYXNzPSZxdW90O3NwYWNlLXRvcC0zMCBjb2wtbGctMyBjb2wtbWQtMyBjb2wtc20tNiBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JvcmRlci0yLWFxdWEmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7YXF1YSBmYSBmYSBmYS1wbGFuZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O0ZSRUUgU0hJUFBJTkcmbHQ7L2g1Jmd0Ow0KCQkJJmx0O3AmZ3Q7b24gb3JkZXJzIG9mICQyNSsgJmFtcDthbXA7IGZyZWUgcmV0dXJucyBvbiBldmVyeXRoaW5nLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtzcGFjZS10b3AtMzAgY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi1nb2xkdiZxdW90OyZndDsJCQkmbHQ7aSBjbGFzcz0mcXVvdDtnb2xkdiBmYSBmYS1yZWZyZXNoJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7RnVsbHkgQ3VzdG9taXphYmxlJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O29yZGVyIG9ubGluZSAmYW1wO2FtcDsgcGljayBpdCB1cCB0b2RheSBmb3IgZnJlZS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7c3BhY2UtdG9wLTMwIGNvbC1sZy0zIGNvbC1tZC0zIGNvbC1zbS02IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Ym9yZGVyLTItdHVycXVvaXNlJnF1b3Q7Jmd0OwkJCSZsdDtpIGNsYXNzPSZxdW90O3R1cnF1b2lzZSBmYSBmYS11c2VyJnF1b3Q7Jmd0OyZsdDsvaSZndDsJCQkmbHQ7aDUmZ3Q7Q3VzdG9tZXIgU3VwcG9ydCZsdDsvaDUmZ3Q7DQoJCQkmbHQ7cCZndDtQb3J0byB5b3UgY2FuIGN1c3RvbWl6ZSBsYXlvdXQgY29sb3JzIGZldyBtaW51dGVzLiZsdDsvcCZndDsNCgkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtzcGFjZS10b3AtMzAgY29sLWxnLTMgY29sLW1kLTMgY29sLXNtLTYgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O2RpdiBjbGFzcz0mcXVvdDtib3JkZXItMi12aW9sZXQmcXVvdDsmZ3Q7CQkJJmx0O2kgY2xhc3M9JnF1b3Q7dmlvbGV0IGZhIGZhLWVtcGlyZSZxdW90OyZndDsmbHQ7L2kmZ3Q7CQkJJmx0O2g1Jmd0O1Bvd2VyZnVsIEFkbWluJmx0Oy9oNSZndDsNCgkJCSZsdDtwJmd0O0xvcmVtIGRvbG9yIGl0ZW0gbG9yZW0gZG9sb3IgaXRlbS4mbHQ7L3AmZ3Q7DQoJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KJmx0Oy9kaXYmZ3Q7Ijt9', 69, 0),
(9491, 'content', 'featured_category_home3.xyGV2b', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjcyNTA1NTIwMjE4ODg2MzIiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy54eUdWMmIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy54eUdWMmIiO3M6NToid3R5cGUiO3M6MjM6ImZlYXR1cmVkX2NhdGVnb3J5X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozNDoiQ2F0ZWdvcnk6IEZMQVQgSVJPTlMgJmFtcDsgU1RZTEVSUyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItY2F0ZWdvcnktMDMuanBnIjtzOjI6ImlkIjtzOjI6Ijg5Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjE2NSI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwNSI7fQ==', 69, 0),
(9490, 'content', 'featured_category_home3.SlwOVt', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjMwMjA3NjUyOTcyNTYzNDA0IjtzOjY6Im1vZHVsZSI7czozMDoiZmVhdHVyZWRfY2F0ZWdvcnlfaG9tZTMuU2x3T1Z0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czozMDoiZmVhdHVyZWRfY2F0ZWdvcnlfaG9tZTMuU2x3T1Z0IjtzOjU6Ind0eXBlIjtzOjIzOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTk6IkNhdGVnb3J5OiBTS0lOIENBUkUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWNhdGVnb3J5LTAyLmpwZyI7czoyOiJpZCI7czoyOiI2OSI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIxNjUiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyMDUiO30=', 69, 0),
(9489, 'content', 'featured_category_home3.Ntrg4O', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjc2OTAzMzk2OTIxMTYyMTkiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy5OdHJnNE8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy5OdHJnNE8iO3M6NToid3R5cGUiO3M6MjM6ImZlYXR1cmVkX2NhdGVnb3J5X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiQ2F0ZWdvcnk6IEZSQUdSQU5DRSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItY2F0ZWdvcnktMDQuanBnIjtzOjI6ImlkIjtzOjI6Ijc0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjE2NSI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwNSI7fQ==', 69, 0),
(9487, 'content', 'featured_category_home3.bJcNFv', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjQ5MzA4OTg3Mjg5ODIwNTgiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy5iSmNORnYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy5iSmNORnYiO3M6NToid3R5cGUiO3M6MjM6ImZlYXR1cmVkX2NhdGVnb3J5X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNzoiQ2F0ZWdvcnk6IFNIQU1QT08iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWNhdGVnb3J5LTA2LmpwZyI7czoyOiJpZCI7czoyOiI5MCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIxNjUiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyMDUiO30=', 69, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(9488, 'content', 'featured_category_home3.hkmmNc', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjUwMjUyMDcxNTAzMTUzNzYiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy5oa21tTmMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy5oa21tTmMiO3M6NToid3R5cGUiO3M6MjM6ImZlYXR1cmVkX2NhdGVnb3J5X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNToiQ2F0ZWdvcnk6IEZPVU5EQVRJT04gU0VUUyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItY2F0ZWdvcnktMDUuanBnIjtzOjI6ImlkIjtzOjI6Ijg3Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjE2NSI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwNSI7fQ==', 69, 0),
(9482, 'content', 'beautystore_tablist.MwkKS6', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU5MzcxMzY2MjAwNzU1OTgiO3M6NjoibW9kdWxlIjtzOjI2OiJiZWF1dHlzdG9yZV90YWJsaXN0Lk13a0tTNiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjY6ImJlYXV0eXN0b3JlX3RhYmxpc3QuTXdrS1M2IjtzOjU6Ind0eXBlIjtzOjE5OiJiZWF1dHlzdG9yZV90YWJsaXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBzZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3Qgc2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBzZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Njp7aTowO3M6MjoiNjkiO2k6MTtzOjI6Ijc0IjtpOjI7czoyOiI3NyI7aTozO3M6MjoiODEiO2k6NDtzOjI6IjY0IjtpOjU7czoyOiI4NSI7fXM6NToibGltaXQiO3M6MjoiMTgiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI2IjtzOjQ6ImNvbHMiO3M6MToiNiI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjIwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjYwIjt9', 69, 0),
(9483, 'content', 'featured_category.o2UjId', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjQyMDc0OTAzODEzNjYzMDM0IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkubzJVaklkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkubzJVaklkIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzY6IkJhbm5lciBjYXRlZ29yeSA6IFRvb2wgJmFtcDsgYnJ1c2hlZCI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJncmVlbmxpZ2h0IjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6MDoiIjtzOjI6ImlkIjtzOjI6Ijg1Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjI6IjMwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MjoiMzAiO30=', 69, 0),
(9484, 'content', 'featured_category.OipeDd', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyNjg1NTY0MjA3MTczMjYiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PaXBlRGQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5PaXBlRGQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyOToiQmFubmVyIGNhdGVnb3J5IDogT3RoZXIgbmVlZHMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMToib3JhbmdlbGlnaHQiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czowOiIiO3M6MjoiaWQiO3M6MjoiNzIiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MjoiMzAiO3M6MTI6ImltYWdlX2hlaWdodCI7czoyOiIzMCI7fQ==', 69, 0),
(9485, 'content', 'featured_category.OuefnR', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjI1MzQ1MDM0OTU5NTI1MTE1IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuT3VlZm5SIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuT3VlZm5SIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjc6IkJhbm5lciBjYXRlZ29yeSA6IFNraW4gQ2FyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJibHVldmlvbGV0IjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjE6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6MDoiIjtzOjI6ImlkIjtzOjI6IjY5Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjI6IjMwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MjoiMzAiO30=', 69, 0),
(9486, 'content', 'featured_category_home3.0t6wM4', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjc0OTc4Nzk4Njg5MDIxNzUiO3M6NjoibW9kdWxlIjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy4wdDZ3TTQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjMwOiJmZWF0dXJlZF9jYXRlZ29yeV9ob21lMy4wdDZ3TTQiO3M6NToid3R5cGUiO3M6MjM6ImZlYXR1cmVkX2NhdGVnb3J5X2hvbWUzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMzoiQ2F0ZWdvcnk6IE5BSUxTIEVGRkVDVFMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWNhdGVnb3J5LTAxLmpwZyI7czoyOiJpZCI7czoyOiI4MCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIxNjUiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyMDUiO30=', 69, 0),
(8995, 'content', 'product_deal.q8Jm7a', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjY2NTI5NTU5NjkyNTkzMzgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwucThKbTdhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLnE4Sm03YSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiRGVhbCBvZiB0aGUgZGF5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJEZWFsIG9mIHRoZSBkYXkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJEZWFsIG9mIHRoZSBkYXkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTMtMDItMDUiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMzEtMDItMjciO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NDoiY29scyI7czoxOiIzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMyI7czo5OiJpbWdfd2lkdGgiO3M6MzoiMjAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjIwMCI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjI1OntpOjA7czoyOiIzNiI7aToxO3M6MjoiNDIiO2k6MjtzOjI6IjQ1IjtpOjM7czoyOiI0NiI7aTo0O3M6MjoiNTkiO2k6NTtzOjI6IjYwIjtpOjY7czoyOiI2MSI7aTo3O3M6MjoiNjIiO2k6ODtzOjI6IjYzIjtpOjk7czoyOiIzNSI7aToxMDtzOjI6IjIwIjtpOjExO3M6MjoiMjYiO2k6MTI7czoyOiIyOCI7aToxMztzOjI6IjI5IjtpOjE0O3M6MjoiMzAiO2k6MTU7czoyOiIzMSI7aToxNjtzOjI6IjMyIjtpOjE3O3M6MjoiMTgiO2k6MTg7czoyOiIyNyI7aToxOTtzOjI6IjU3IjtpOjIwO3M6MjoiMjUiO2k6MjE7czoyOiIxNyI7aToyMjtzOjI6IjI0IjtpOjIzO3M6MjoiMzMiO2k6MjQ7czoyOiIzNCI7fX0=', 75, 0),
(8993, 'content', 'interactive_banner.oRDsFX', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjQyMjE0NDMyNTU0NjYyODQiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIub1JEc0ZYIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm9SRHNGWCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjg6InNwYWNlLTMwIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIwMi1kZW1vNC5qcGciO3M6NToid2lkdGgiO3M6MzoiOTAwIjtzOjY6ImhlaWdodCI7czozOiIxNTQiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjA6IiI7czoxMjoiZmFjZWJvb2tfdXNlIjtzOjA6IiI7czoxMDoidHdpdHRlcl9pZCI7czowOiIiO3M6MTQ6InBpbnRlcmVzdF91c2VyIjtzOjA6IiI7czoxMToiZ29vZ2xlX3BsdXMiO3M6MDoiIjtzOjEwOiJ2aW1lb191c2VyIjtzOjA6IiI7czoxMjoieW91dHViZV91c2VyIjtzOjA6IiI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12NSI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 75, 0),
(8989, 'content', 'html.Bl6lei', 'YToxMjp7czo0OiJyYW5kIjtzOjE3OiIwLjc4MTYyMDE3MDIyMzY5MiI7czo2OiJtb2R1bGUiO3M6MTE6Imh0bWwuQmw2bGVpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMToiaHRtbC5CbDZsZWkiO3M6NToid3R5cGUiO3M6NDoiaHRtbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MzE6ImNvbnRhaW5lciBzcGFjZS0yNSBzcGFjZS10b3AtMjUiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NzY5OiImbHQ7ZGl2IGNsYXNzPSZxdW90O2Jhbm5lci1ob21lNCBlZmZlY3QtdjUmcXVvdDsmZ3Q7CSAgICZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsmbHQ7aW1nIHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2Jhbm5lci1lcjEuanBnJnF1b3Q7IGFsdD0mcXVvdDtDbGljayBTaG9wJnF1b3Q7Jmd0OyZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtiYW5uZXItaG9tZTQgZWZmZWN0LXY1JnF1b3Q7Jmd0OwkgICAmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7Jmx0O2ltZyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9iYW5uZXItZXIyLmpwZyZxdW90OyBhbHQ9JnF1b3Q7Q2xpY2sgU2hvcCZxdW90OyZndDsmbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7YmFubmVyLWhvbWU0IGVmZmVjdC12NSZxdW90OyZndDsJICAgJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OyZsdDtpbWcgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvYmFubmVyLWVyMy5qcGcmcXVvdDsgYWx0PSZxdW90O0NsaWNrIFNob3AmcXVvdDsmZ3Q7Jmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2Jhbm5lci1ob21lNCBlZmZlY3QtdjUmcXVvdDsmZ3Q7CSAgICZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsmbHQ7aW1nIHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2Jhbm5lci1lcjQuanBnJnF1b3Q7IGFsdD0mcXVvdDtDbGljayBTaG9wJnF1b3Q7Jmd0OyZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjc2OToiJmx0O2RpdiBjbGFzcz0mcXVvdDtiYW5uZXItaG9tZTQgZWZmZWN0LXY1JnF1b3Q7Jmd0OwkgICAmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7Jmx0O2ltZyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9iYW5uZXItZXIxLmpwZyZxdW90OyBhbHQ9JnF1b3Q7Q2xpY2sgU2hvcCZxdW90OyZndDsmbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7YmFubmVyLWhvbWU0IGVmZmVjdC12NSZxdW90OyZndDsJICAgJmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7Jmd0OyZsdDtpbWcgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvYmFubmVyLWVyMi5qcGcmcXVvdDsgYWx0PSZxdW90O0NsaWNrIFNob3AmcXVvdDsmZ3Q7Jmx0Oy9hJmd0OwkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2Jhbm5lci1ob21lNCBlZmZlY3QtdjUmcXVvdDsmZ3Q7CSAgICZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyZndDsmbHQ7aW1nIHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2Jhbm5lci1lcjMuanBnJnF1b3Q7IGFsdD0mcXVvdDtDbGljayBTaG9wJnF1b3Q7Jmd0OyZsdDsvYSZndDsJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtiYW5uZXItaG9tZTQgZWZmZWN0LXY1JnF1b3Q7Jmd0OwkgICAmbHQ7YSBocmVmPSZxdW90OyMmcXVvdDsmZ3Q7Jmx0O2ltZyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9iYW5uZXItZXI0LmpwZyZxdW90OyBhbHQ9JnF1b3Q7Q2xpY2sgU2hvcCZxdW90OyZndDsmbHQ7L2EmZ3Q7CSZsdDsvZGl2Jmd0OyI7fQ==', 75, 0),
(8986, 'content', 'featured_category.4tTfes', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjA2NjUzMDU2MDM2NDcwMzI4IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuNHRUZmVzIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuNHRUZmVzIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjc6IkJhbm5lciBjYXRlZ29yeSA6IFNraW4gQ2FyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjExOiJvcmFuZ2VsaWdodCI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQ5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItY2F0ZWdvcnktaG9tZS00LTEuanBnIjtzOjI6ImlkIjtzOjI6IjY5Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM4MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjI5MCI7fQ==', 75, 0),
(8987, 'content', 'featured_category.rH1pMi', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjA4NDQ1MDUzOTAyNzEwNTMxIjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuckgxcE1pIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuckgxcE1pIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjg6IkJhbm5lciBjYXRlZ29yeSA6IE90aGVyIG5lZWQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNjoiYmx1ZXZpb2xldCBob21lNCI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YToxOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjQ5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItY2F0ZWdvcnktaG9tZS00LTMuanBnIjtzOjI6ImlkIjtzOjI6IjcyIjt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjM4MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjI5MCI7fQ==', 75, 0),
(8988, 'content', 'featured_category.yq5yRk', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY4MTEzMjY0Nzk4NzA1ODciO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS55cTV5UmsiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS55cTV5UmsiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czozNjoiQmFubmVyIGNhdGVnb3J5IDogVG9vbCAmYW1wOyBicnVzaGVzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTA6ImdyZWVubGlnaHQiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6MTp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0OToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyLWNhdGVnb3J5LWhvbWUtNC0yLmpwZyI7czoyOiJpZCI7czoyOiI4NSI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIzODAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyOTAiO30=', 75, 0),
(9535, 'content', 'interactive_banner.m9gLms', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjM0NTg2MTE2MDAzNjQ5MDciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIubTlnTG1zIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLm05Z0xtcyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMToic3BhY2UtMzAgc3BhY2UtdG9wLTMwIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM5OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIwNC1kZW1vNS5qcGciO3M6NToid2lkdGgiO3M6NDoiMTE3MCI7czo2OiJoZWlnaHQiO3M6MzoiMTQwIjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 77, 0),
(9533, 'content', 'interactive_banner.eejFXw', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjk2MzQzNzYyMjUzNzE3MTIiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuZWVqRlh3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmVlakZYdyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiQWR2IGJhbm5lciI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYWR2LTAyLWhvbWUxLmpwZyI7czo1OiJ3aWR0aCI7czozOiI1NzciO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MyI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 77, 0),
(9531, 'content', 'interactive_banner.3CvXpp', 'YToyNjp7czo0OiJyYW5kIjtzOjE4OiIwLjIzMDQzNzgzMjk4NDcwNjEiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuM0N2WHBwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjNDdlhwcCI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJzdWJfdGl0bGUiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozOToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMDEtaG9tZTUuanBnIjtzOjU6IndpZHRoIjtzOjM6IjI3MCI7czo2OiJoZWlnaHQiO3M6MzoiMjg1IjtzOjEzOiJodG1sY29udGVudF8xIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czowOiIiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjUiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 77, 0),
(9532, 'content', 'interactive_banner.6wpZHe', 'YToyNjp7czo0OiJyYW5kIjtzOjE3OiIwLjk4MTA5NTQwNTMwODI3NyI7czo2OiJtb2R1bGUiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci42d3BaSGUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuNndwWkhlIjtzOjU6Ind0eXBlIjtzOjE4OiJpbnRlcmFjdGl2ZV9iYW5uZXIiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJhZHYgYmFubmVyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6InN1Yl90aXRsZSI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjQxOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXItb3JhbmdlLTcwLmpwZyI7czo1OiJ3aWR0aCI7czozOiIyNzAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI4NSI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6MDoiIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXY1IjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 77, 0),
(9885, 'content', 'image.1nJrbv', 'YToyMDp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMTExOTY5OTc0MjkxNzEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4xbkpyYnYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4xbkpyYnYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6ImFkdiBob21lIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC1ob21lMS5wbmciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8yIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMSI7czowOiIiO3M6ODoic2hvd19kZXMiO3M6MToiMSI7czoxMToiZWZmZWN0X3R5cGUiO3M6MTA6ImVmZmVjdC12MTAiO30=', 32, 0),
(9886, 'content', 'image.ea9Nld', 'YToyMDp7czo0OiJyYW5kIjtzOjE5OiIwLjE2NTQ1NDYzMTE1MTExMjAzIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuZWE5TmxkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuZWE5TmxkIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo4OiJhZHYgaG9tZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMtaG9tZTEuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiI0IjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjA6IiI7czoxMzoiZGVzY3JpcHRpb25fMiI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzEiO3M6MDoiIjtzOjg6InNob3dfZGVzIjtzOjE6IjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjEwOiJlZmZlY3QtdjEwIjt9', 32, 0),
(9884, 'content', 'image.05ga1R', 'YToyMDp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNzE2NDI0MDY3ODA4MjA5NyI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjA1Z2ExUiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjA1Z2ExUiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiYWR2IGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLWhvbWUxLmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiNCI7czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czowOiIiO3M6MTM6ImRlc2NyaXB0aW9uXzIiO3M6MDoiIjtzOjEzOiJkZXNjcmlwdGlvbl8xIjtzOjA6IiI7czo4OiJzaG93X2RlcyI7czoxOiIxIjtzOjExOiJlZmZlY3RfdHlwZSI7czoxMDoiZWZmZWN0LXYxMCI7fQ==', 32, 0),
(9880, 'content', 'bloglatest.ImSXkx', 'YToxNTp7czo0OiJyYW5kIjtzOjE5OiIwLjIzMzA0MzI3NTI2MDc0Mzg3IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC5JbVNYa3giO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0LkltU1hreCI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTM6IkZyb20gb3VyIGJsb2ciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IkZST00gT1VSIEJMT0ciO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJGUk9NIE9VUiBCTE9HIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMiI7czo0OiJjb2xzIjtzOjE6IjIiO3M6NToibGltaXQiO3M6MToiNiI7czo1OiJ3aWR0aCI7czozOiI0OTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjI1MCI7fQ==', 32, 0),
(9881, 'content', 'featured_category.KaVf9D', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjkyNDA0MDAwNjA2MzY2MDkiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5LYVZmOUQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5LYVZmOUQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNDoiT3VyIGNhdGVnb3JpZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTQ6Ik9VUiBDT0xMRUNUSU9OIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNDoiT1VSIENBVEVHT1JJRVMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6NDp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0NToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZS1jYXRlZ29yeS1kb2cucG5nIjtzOjI6ImlkIjtzOjI6IjcxIjt9aToxO2E6Mjp7czo1OiJpbWFnZSI7czo0NToiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZS1jYXRlZ29yeS1jYXQucG5nIjtzOjI6ImlkIjtzOjI6Ijg2Ijt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czo0NzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvZmVhdHVyZS1jYXRlZ29yeS1iaXJ0aC5wbmciO3M6MjoiaWQiO3M6MjoiNzUiO31pOjM7YToyOntzOjU6ImltYWdlIjtzOjQ4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9mZWF0dXJlLWNhdGVnb3J5LWZpc2hlZC5wbmciO3M6MjoiaWQiO3M6MjoiOTAiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMjQ4IjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiMjQ4Ijt9', 32, 0),
(9882, 'content', 'html.cLuvI0', 'YToxMjp7czo0OiJyYW5kIjtzOjIwOiIwLjAwMzk4NTIzOTc1NzIxMzA5OSI7czo2OiJtb2R1bGUiO3M6MTE6Imh0bWwuY0x1dkkwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMToiaHRtbC5jTHV2STAiO3M6NToid3R5cGUiO3M6NDoiaHRtbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MDoiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjQwOToiJmx0O2RpdiBjbGFzcz0mcXVvdDtiZy1yZWQgY29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O3AmZ3Q7RlJFRSBXT1JMRFdJREUgU0hJUFBJTkcmbHQ7L3AmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQoJJmx0O2RpdiBjbGFzcz0mcXVvdDtiZy1nb2xkIGNvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtwJmd0O0JVWSBPTkxJTkUgLSBQSUNLIFVQIEFUIFNUT1JFJmx0Oy9wJmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7YmctYmx1ZSBjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7cCZndDtPTkxJTkUgQk9PS0lORyBTRVJWSUNFJmx0Oy9wJmd0Ow0KCSZsdDsvZGl2Jmd0OyI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo0MDk6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7YmctcmVkIGNvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiZxdW90OyZndDsJCSZsdDtwJmd0O0ZSRUUgV09STERXSURFIFNISVBQSU5HJmx0Oy9wJmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7YmctZ29sZCBjb2wtbGctNCBjb2wtbWQtNCBjb2wtc20tNCBjb2wteHMtMTImcXVvdDsmZ3Q7CQkmbHQ7cCZndDtCVVkgT05MSU5FIC0gUElDSyBVUCBBVCBTVE9SRSZsdDsvcCZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2JnLWJsdWUgY29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyJnF1b3Q7Jmd0OwkJJmx0O3AmZ3Q7T05MSU5FIEJPT0tJTkcgU0VSVklDRSZsdDsvcCZndDsNCgkmbHQ7L2RpdiZndDsiO30=', 32, 0),
(9883, 'content', 'html.jocaMD', 'YToxMjp7czo0OiJyYW5kIjtzOjE5OiIwLjMxOTAyOTQ0NTM5MDY3NDM1IjtzOjY6Im1vZHVsZSI7czoxMToiaHRtbC5qb2NhTUQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjExOiJodG1sLmpvY2FNRCI7czo1OiJ3dHlwZSI7czo0OiJodG1sIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMDoiU0hPUCBPVVIgQ09MTEVDVElPTlMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6IlNIT1AgT1VSIENPTExFQ1RJT05TIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiU0hPUCBPVVIgQ09MTEVDVElPTlMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6Mjc2MjoiJmx0O2RpdiBjbGFzcz0mcXVvdDtyb3cmcXVvdDsmZ3Q7CSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLXRvcC0yNSZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayZxdW90OyZndDsJCQkmbHQ7YSBjbGFzcz0mcXVvdDtlZmZlY3QtdjEwJnF1b3Q7IHN0eWxlPSZxdW90O2Rpc3BsYXk6IGJsb2NrOyZxdW90OyBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD04MSZxdW90OyZndDsmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTEuanBnJnF1b3Q7Jmd0OyZsdDsvYSZndDsJCSZsdDsvZGl2Jmd0Ow0KCQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJCSZsdDthIGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTgxJnF1b3Q7Jmd0O01FTlNXRUFSIDIwMTYgTE9PS0JPT0smbHQ7L2EmZ3Q7CQkJJmx0Oy9oNCZndDsNCgkJCSZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0O0F2YWlsYWJsZSBJbiBTdG9jayZsdDsvcCZndDsNCgkJCSZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTgxJnF1b3Q7Jmd0O1NIT1AgTk9XICZsdDtpIGNsYXNzPSZxdW90O2ZhIGZhLWNhcmV0LXJpZ2h0JnF1b3Q7Jmd0OyZsdDsvaSZndDsmbHQ7L2EmZ3Q7CQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiBzcGFjZS10b3AtMjUmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2ltYWdlLWxvb2smcXVvdDsmZ3Q7CQkJJmx0O2EgY2xhc3M9JnF1b3Q7ZWZmZWN0LXYxMCZxdW90OyBzdHlsZT0mcXVvdDtkaXNwbGF5OiBibG9jazsmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cHJvZHVjdC9jYXRlZ29yeSZhbXA7YW1wO3BhdGg9NjQmcXVvdDsmZ3Q7Jmx0O2ltZyBjbGFzcz0mcXVvdDtpbWctcmVzcG9uc2l2ZSZxdW90OyBhbHQ9JnF1b3Q7JnF1b3Q7IHRpdGxlPSZxdW90OyZxdW90OyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9kZW1vL2Jhbm5lcnMvbG9vay0yLmpwZyZxdW90OyZndDsmbHQ7L2EmZ3Q7CQkmbHQ7L2RpdiZndDsNCgkJJmx0O2RpdiBjbGFzcz0mcXVvdDtsb29rLW1ldGEmcXVvdDsmZ3Q7CQkJJmx0O2g0IGNsYXNzPSZxdW90O3RpdGxlJnF1b3Q7Jmd0OwkJCQkmbHQ7YSBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD02NCZxdW90OyZndDtXT01FTidTIEFDQ0VTU09SSUVTJmx0Oy9hJmd0OwkJCSZsdDsvaDQmZ3Q7DQoJCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtTcGVjaWFsIERpc2NvdW50Jmx0Oy9wJmd0Ow0KCQkJJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cHJvZHVjdC9jYXRlZ29yeSZhbXA7YW1wO3BhdGg9NjQmcXVvdDsmZ3Q7R08gJmx0O2kgY2xhc3M9JnF1b3Q7ZmEgZmEtY2FyZXQtcmlnaHQmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OyZsdDsvYSZndDsJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLXRvcC0yNSZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayZxdW90OyZndDsJCQkmbHQ7YSBjbGFzcz0mcXVvdDtlZmZlY3QtdjEwJnF1b3Q7IHN0eWxlPSZxdW90O2Rpc3BsYXk6IGJsb2NrOyZxdW90OyBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD02OSZxdW90OyZndDsmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTMuanBnJnF1b3Q7Jmd0OyZsdDsvYSZndDsJCSZsdDsvZGl2Jmd0Ow0KCQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJCSZsdDthIGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTY5JnF1b3Q7Jmd0O0JFU1QgU0VMTEVSUyBIRUFEUEhPTkVTJmx0Oy9hJmd0OwkJCSZsdDsvaDQmZ3Q7DQoJCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtCZXN0IGhlYWRlcGhvbmVzIG9mIDIwMTYmbHQ7L3AmZ3Q7DQoJCQkmbHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD02OSZxdW90OyZndDtTRUUgTU9SRSAmbHQ7aSBjbGFzcz0mcXVvdDtmYSBmYS1jYXJldC1yaWdodCZxdW90OyZndDsmbHQ7L2kmZ3Q7Jmx0Oy9hJmd0OwkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQombHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6Mjc2MjoiJmx0O2RpdiBjbGFzcz0mcXVvdDtyb3cmcXVvdDsmZ3Q7CSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLXRvcC0yNSZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayZxdW90OyZndDsJCQkmbHQ7YSBjbGFzcz0mcXVvdDtlZmZlY3QtdjEwJnF1b3Q7IHN0eWxlPSZxdW90O2Rpc3BsYXk6IGJsb2NrOyZxdW90OyBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD04MSZxdW90OyZndDsmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTEuanBnJnF1b3Q7Jmd0OyZsdDsvYSZndDsJCSZsdDsvZGl2Jmd0Ow0KCQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJCSZsdDthIGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTgxJnF1b3Q7Jmd0O01FTlNXRUFSIDIwMTYgTE9PS0JPT0smbHQ7L2EmZ3Q7CQkJJmx0Oy9oNCZndDsNCgkJCSZsdDtwIGNsYXNzPSZxdW90O2Rlc2NyaXB0aW9uJnF1b3Q7Jmd0O0F2YWlsYWJsZSBJbiBTdG9jayZsdDsvcCZndDsNCgkJCSZsdDthIGNsYXNzPSZxdW90O3ZpZXdzJnF1b3Q7IGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTgxJnF1b3Q7Jmd0O1NIT1AgTk9XICZsdDtpIGNsYXNzPSZxdW90O2ZhIGZhLWNhcmV0LXJpZ2h0JnF1b3Q7Jmd0OyZsdDsvaSZndDsmbHQ7L2EmZ3Q7CQkmbHQ7L2RpdiZndDsNCgkmbHQ7L2RpdiZndDsNCgkmbHQ7ZGl2IGNsYXNzPSZxdW90O2NvbC1sZy00IGNvbC1tZC00IGNvbC1zbS00IGNvbC14cy0xMiBzcGFjZS10b3AtMjUmcXVvdDsmZ3Q7CQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2ltYWdlLWxvb2smcXVvdDsmZ3Q7CQkJJmx0O2EgY2xhc3M9JnF1b3Q7ZWZmZWN0LXYxMCZxdW90OyBzdHlsZT0mcXVvdDtkaXNwbGF5OiBibG9jazsmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cHJvZHVjdC9jYXRlZ29yeSZhbXA7YW1wO3BhdGg9NjQmcXVvdDsmZ3Q7Jmx0O2ltZyBjbGFzcz0mcXVvdDtpbWctcmVzcG9uc2l2ZSZxdW90OyBhbHQ9JnF1b3Q7JnF1b3Q7IHRpdGxlPSZxdW90OyZxdW90OyBzcmM9JnF1b3Q7aW1hZ2UvY2F0YWxvZy9kZW1vL2Jhbm5lcnMvbG9vay0yLmpwZyZxdW90OyZndDsmbHQ7L2EmZ3Q7CQkmbHQ7L2RpdiZndDsNCgkJJmx0O2RpdiBjbGFzcz0mcXVvdDtsb29rLW1ldGEmcXVvdDsmZ3Q7CQkJJmx0O2g0IGNsYXNzPSZxdW90O3RpdGxlJnF1b3Q7Jmd0OwkJCQkmbHQ7YSBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD02NCZxdW90OyZndDtXT01FTidTIEFDQ0VTU09SSUVTJmx0Oy9hJmd0OwkJCSZsdDsvaDQmZ3Q7DQoJCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtTcGVjaWFsIERpc2NvdW50Jmx0Oy9wJmd0Ow0KCQkJJmx0O2EgY2xhc3M9JnF1b3Q7dmlld3MmcXVvdDsgaHJlZj0mcXVvdDtpbmRleC5waHA/cm91dGU9cHJvZHVjdC9jYXRlZ29yeSZhbXA7YW1wO3BhdGg9NjQmcXVvdDsmZ3Q7R08gJmx0O2kgY2xhc3M9JnF1b3Q7ZmEgZmEtY2FyZXQtcmlnaHQmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OyZsdDsvYSZndDsJCSZsdDsvZGl2Jmd0Ow0KCSZsdDsvZGl2Jmd0Ow0KCSZsdDtkaXYgY2xhc3M9JnF1b3Q7Y29sLWxnLTQgY29sLW1kLTQgY29sLXNtLTQgY29sLXhzLTEyIHNwYWNlLXRvcC0yNSZxdW90OyZndDsJCSZsdDtkaXYgY2xhc3M9JnF1b3Q7aW1hZ2UtbG9vayZxdW90OyZndDsJCQkmbHQ7YSBjbGFzcz0mcXVvdDtlZmZlY3QtdjEwJnF1b3Q7IHN0eWxlPSZxdW90O2Rpc3BsYXk6IGJsb2NrOyZxdW90OyBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD02OSZxdW90OyZndDsmbHQ7aW1nIGNsYXNzPSZxdW90O2ltZy1yZXNwb25zaXZlJnF1b3Q7IGFsdD0mcXVvdDsmcXVvdDsgdGl0bGU9JnF1b3Q7JnF1b3Q7IHNyYz0mcXVvdDtpbWFnZS9jYXRhbG9nL2RlbW8vYmFubmVycy9sb29rLTMuanBnJnF1b3Q7Jmd0OyZsdDsvYSZndDsJCSZsdDsvZGl2Jmd0Ow0KCQkmbHQ7ZGl2IGNsYXNzPSZxdW90O2xvb2stbWV0YSZxdW90OyZndDsJCQkmbHQ7aDQgY2xhc3M9JnF1b3Q7dGl0bGUmcXVvdDsmZ3Q7CQkJCSZsdDthIGhyZWY9JnF1b3Q7aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvY2F0ZWdvcnkmYW1wO2FtcDtwYXRoPTY5JnF1b3Q7Jmd0O0JFU1QgU0VMTEVSUyBIRUFEUEhPTkVTJmx0Oy9hJmd0OwkJCSZsdDsvaDQmZ3Q7DQoJCQkmbHQ7cCBjbGFzcz0mcXVvdDtkZXNjcmlwdGlvbiZxdW90OyZndDtCZXN0IGhlYWRlcGhvbmVzIG9mIDIwMTYmbHQ7L3AmZ3Q7DQoJCQkmbHQ7YSBjbGFzcz0mcXVvdDt2aWV3cyZxdW90OyBocmVmPSZxdW90O2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L2NhdGVnb3J5JmFtcDthbXA7cGF0aD02OSZxdW90OyZndDtTRUUgTU9SRSAmbHQ7aSBjbGFzcz0mcXVvdDtmYSBmYS1jYXJldC1yaWdodCZxdW90OyZndDsmbHQ7L2kmZ3Q7Jmx0Oy9hJmd0OwkJJmx0Oy9kaXYmZ3Q7DQoJJmx0Oy9kaXYmZ3Q7DQombHQ7L2RpdiZndDsiO30=', 32, 0),
(9879, 'content', 'bloglatest.GNYeC1', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjM4MzQxNzMyMjc1NzAyNzIiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0LkdOWWVDMSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3QuR05ZZUMxIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo1OiJCTE9HUyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo1OiJCTE9HUyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NToiQkxPR1MiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjQ6ImNvbHMiO3M6MToiMyI7czo1OiJsaW1pdCI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6IjQ5MCI7czo2OiJoZWlnaHQiO3M6MzoiMjUwIjt9', 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(68, 'Black &amp; white', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/035.jpg', 7, 1, 300.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 3, '2015-09-16 10:56:19', '2016-04-13 16:18:20'),
(66, 'White', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/029.jpg', 0, 1, 150.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2015-09-16 10:36:55', '2016-04-13 16:17:44'),
(67, 'Black', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/017.jpg', 8, 1, 150.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2015-09-16 10:48:19', '2016-04-13 16:15:42'),
(53, 'Green light', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/025.jpg', 0, 1, 100.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 44, '2015-09-16 08:48:26', '2016-04-13 16:19:26'),
(54, 'White', '', '', '', '', '', '', '', 992, 6, 'catalog/demo/product/home2/041.jpg', 0, 1, 100.0000, 4, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 33, '2015-09-16 08:54:23', '2016-04-13 16:20:30'),
(55, 'Red', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/032.jpg', 9, 1, 80.0000, 10, 9, '2015-09-16', 0.00000000, 1, 8.00000000, 7.00000000, 6.00000000, 1, 1, 1, 1, 1, 196, '2015-09-16 09:09:38', '2016-04-13 16:18:02'),
(56, 'Pink', '', '', '', '', '', '', '', 999, 7, 'catalog/demo/product/home2/013.jpg', 0, 1, 100.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 100, '2015-09-16 09:22:02', '2016-04-13 16:20:00'),
(57, 'Black', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/023.jpg', 5, 1, 120.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 90, '2015-09-16 09:37:53', '2016-04-13 16:16:59'),
(58, 'Orange', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/004.jpg', 0, 1, 150.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 5, '2015-09-16 09:41:10', '2016-04-13 16:19:41'),
(59, 'Pink', '', '', '', '', '', '', '', 998, 6, 'catalog/demo/product/home2/014.jpg', 0, 1, 220.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 48, '2015-09-16 09:45:17', '2016-04-13 16:14:07'),
(60, 'Black', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/038.jpg', 0, 1, 99.0000, 4, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 68, '2015-09-16 09:48:39', '2016-04-13 16:18:36'),
(61, 'White', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/037.jpg', 8, 1, 180.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 52, '2015-09-16 09:54:04', '2016-04-13 16:13:03'),
(62, 'White', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/040.jpg', 0, 1, 100.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 5, '2015-09-16 09:57:03', '2016-04-13 16:20:15'),
(63, 'White', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/027.jpg', 0, 1, 80.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 8, '2015-09-16 09:59:33', '2016-04-13 16:17:19'),
(64, 'Gold', '', '', '', '', '', '', '', 997, 6, 'catalog/demo/product/home2/005.jpg', 0, 1, 300.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 53, '2015-09-16 10:22:49', '2016-04-13 16:12:53'),
(65, 'Red', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/011.jpg', 0, 1, 99.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 3, '2015-09-16 10:28:56', '2016-04-13 16:13:46'),
(52, 'White', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/008.jpg', 0, 1, 100.0000, 0, 9, '2015-09-15', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 40, '2015-09-15 17:27:04', '2016-04-13 16:13:25'),
(69, 'Gold', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/home2/036.jpg', 0, 1, 150.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 11, '2015-09-16 11:00:20', '2016-04-13 16:18:52'),
(70, 'Gold', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/020.jpg', 0, 1, 150.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 62, '2015-09-16 11:07:11', '2016-04-13 16:16:01'),
(71, 'Red', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/home2/016.jpg', 9, 1, 99.0000, 0, 9, '2015-09-16', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 17, '2015-09-16 11:16:01', '2016-04-13 16:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(71, 2, 'Nail lacquer lance', '&lt;p&gt;What it is: A heavily pigmented, high-fashion nail polish. What it does: Created backstage at fashion week for the world’s top fashion designers, Butter LONDON’s lacquers are rich in color, giving your nails a look that is more vibrant. The vitamin-enriched formula promotes nail strength and provides beautifully consistent coverage. What else you need to know: Butter LONDON is a new-era design house, creating extraordinary moments in color by living on the inside edge of fashion. Butter LONDON does not add formaldehyde, toluene, or DBP to any of its nail formulas. It''s color without compromise. For brilliant results, use butter LONDON lacquers with the corresponding butter LONDON base and topcoats. When used together, the products last significantly longer than a typical manicure.&lt;br&gt;&lt;/p&gt;', '', 'Nail lacquer lance', '', ''),
(52, 1, 'Cover stick foundation', '&lt;p&gt;What it is: A long-lasting, multitasking cover stick with invisible coverage for foundation touch-ups and contouring. What it does: Ultra HD Invisible Cover Stick Foundation creates a flawless complexion on camera, and to the naked eye. Developed specifically for the film and TV industry''s most advanced technology, it is completely invisible under the latest, super-focused 4k lens. The revolutionary foundation contains amino acid coated pigments that provide medium-to-full coverage with a lightweight, second-skin texture that looks just like skin. It leaves a natural-looking, radiant finish, and it’s formulated with hyaluronic spheres for time-released hydration that is perfect for normal to dry skin. Ideal for foundation touch-ups and contouring, it can be applied at home or on-the-go for a flawless complexion. &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;What else you need to know: MAKE UP FOR EVER is once again leading the beauty industry into the next era of makeup innovation and technology. As the original pioneer of the HD makeup category, it continues to redefine and elevate beauty standards with the launch of its ULTRA HD FOUNDATION, the first and only foundation designed for 4K technology. With 4K technology, the next generation of digital devices will display images with unbelievable detail, stunning clarity, and heightened color. Completely invisible under the latest, ultra-magnified resolution, these innovative foundation formulas look completely natural on camera. &quot;My goal was to cope with the new 4k technology while keeping the main benefits of HD Foundation.Ultra HD Foundation had to meet the perfection needs of Pros as well as the everyday needs of all women.&quot;—Dany Sanz, Founder &amp;amp; Creative Director&lt;br&gt;&lt;/p&gt;', '', 'Cover stick foundation', '', ''),
(54, 2, 'Viseart eyeshadow palette', '&lt;p&gt;What it is: A coveted professional eye shadow palette that can be used for shading, highlighting, and defining eyes, brows, and the contours of the face. What it does: Get professional quality eye looks with these versatile 12-shade palettes. Viseart’s coveted, bestselling palettes are reliable film-tested professional products, a staple in every artist’s kit, and they’re the work horse of all professional artists. These palettes have a dynamic cult following throughout all levels of artistry. Manufactured in France, Viseart’s proprietary formula is created in small tightly-controlled batches to maintain pigment quality, powder integrity, and consistency. Viseart is the “secret sauce” for top Hollywood makeup artists, as well as makeup artist enthusiasts of all genres. What else you need to know: This collection features eye shadow palettes with 12 shades (sold separately): The Neutral Matte eye shadow palette is perfect for creating a “nude face,” and it features a core neutral palette in beige to brown tones that are ideal for shading, highlighting, and defining eyes, brows, or facial contours. The 01 Neutral Matte palette: Cannelle, Beige, Sable, Ivoire, Chocolat, Brique, Taupe, Café, Charbon, Souris, Cendre, and Tabac shades. The 03 Bridal Satin eye shades feature soft, satin-textured shadows for smooth and even application. These shades photograph beautifully, and they are ideal for adding light and accentuating dimension. The 03 Bridal Satin palette: Champagne, Sterling, Peony, Blue Diamond, Orange Topaz, Velvet, Violet, Sapphire, Cashmere, Copper, Prune, and Tuxedo shades. The opulent shades of the 05 Sultry Muse palette offer a myriad of satin to metallic textures. They were created backstage on Hollywood sets by top makeup artists, and they’re perfect for creating chic, elegant, or fashion forward eye looks, as well as for highlighting and contouring the face. Use them to illuminate and define with a subtle glow or show-stopping smoky eyes with this palette’s gold to black smoke to espresso hues. The 05 Sultry Muse palette: Yves, Camille, Kifu, Gitte, Tym, Jori, CIndi, Chantille, Chloé, Melonié, Diane, and Ceska shades. Create saturated eye looks with the 06 Paris Nudes palette, inspired by Parisian fashion week collections. This sophisticated palette features radiant textures in satins and shimmers in colors that range from sage to smoky plum to brun rose colors, and it combines sheer and deep pigments for a smooth, even application. This versatile palette will ensure that you flaunt modern and chic makeup looks. The 06 Paris Nudes palette: Pont des Arts, Champs- Élysées, Beax-Arts, Alexandre Trois, Saint-Honoré, Orangerie, Marais, Montaigne, Vendome, Jeu de Paume, Grand-Palais, Saint Germain shades. These products are not tested on animals, contain organic ingredients, and they are free of silicone, petrochemicals, and mineral oil.&lt;br&gt;&lt;/p&gt;', '', 'Viseart eyeshadow palette', '', ''),
(54, 1, 'Viseart eyeshadow palette', '&lt;p&gt;What it is: A coveted professional eye shadow palette that can be used for shading, highlighting, and defining eyes, brows, and the contours of the face. What it does: Get professional quality eye looks with these versatile 12-shade palettes. Viseart’s coveted, bestselling palettes are reliable film-tested professional products, a staple in every artist’s kit, and they’re the work horse of all professional artists. These palettes have a dynamic cult following throughout all levels of artistry. Manufactured in France, Viseart’s proprietary formula is created in small tightly-controlled batches to maintain pigment quality, powder integrity, and consistency. Viseart is the “secret sauce” for top Hollywood makeup artists, as well as makeup artist enthusiasts of all genres. What else you need to know: This collection features eye shadow palettes with 12 shades (sold separately): The Neutral Matte eye shadow palette is perfect for creating a “nude face,” and it features a core neutral palette in beige to brown tones that are ideal for shading, highlighting, and defining eyes, brows, or facial contours. The 01 Neutral Matte palette: Cannelle, Beige, Sable, Ivoire, Chocolat, Brique, Taupe, Café, Charbon, Souris, Cendre, and Tabac shades. The 03 Bridal Satin eye shades feature soft, satin-textured shadows for smooth and even application. These shades photograph beautifully, and they are ideal for adding light and accentuating dimension. The 03 Bridal Satin palette: Champagne, Sterling, Peony, Blue Diamond, Orange Topaz, Velvet, Violet, Sapphire, Cashmere, Copper, Prune, and Tuxedo shades. The opulent shades of the 05 Sultry Muse palette offer a myriad of satin to metallic textures. They were created backstage on Hollywood sets by top makeup artists, and they’re perfect for creating chic, elegant, or fashion forward eye looks, as well as for highlighting and contouring the face. Use them to illuminate and define with a subtle glow or show-stopping smoky eyes with this palette’s gold to black smoke to espresso hues. The 05 Sultry Muse palette: Yves, Camille, Kifu, Gitte, Tym, Jori, CIndi, Chantille, Chloé, Melonié, Diane, and Ceska shades. Create saturated eye looks with the 06 Paris Nudes palette, inspired by Parisian fashion week collections. This sophisticated palette features radiant textures in satins and shimmers in colors that range from sage to smoky plum to brun rose colors, and it combines sheer and deep pigments for a smooth, even application. This versatile palette will ensure that you flaunt modern and chic makeup looks. The 06 Paris Nudes palette: Pont des Arts, Champs- Élysées, Beax-Arts, Alexandre Trois, Saint-Honoré, Orangerie, Marais, Montaigne, Vendome, Jeu de Paume, Grand-Palais, Saint Germain shades. These products are not tested on animals, contain organic ingredients, and they are free of silicone, petrochemicals, and mineral oil.&lt;br&gt;&lt;/p&gt;', '', 'Viseart eyeshadow palette', '', ''),
(55, 1, 'Rouge couture lipstick collection', '&lt;p&gt;What it is: A collection featuring a Kiss &amp;amp; Love Collector Edition lipstick and Rouge Pur Couture lip shades—now in satin and matte finishes. What it does: Edgy and feminine, Yves Saint Laurent’s Rouge Pur Couture Lipstick Collection delivers lip colors that exude ultimate feminine strength and edgy style. Give lips luxurious, rich color with intense hydration and antioxidant care in just one stroke.&lt;br&gt;&lt;/p&gt;', '', 'Rouge couture lipstick collection', '', ''),
(56, 2, 'Vernis gel Shine Long', '&lt;p&gt;What it is: A couture, gel-effect nail lacquer. What it does: This advanced nail formula provides glassy, long-wearing shine. A precision brush applies the ideal amount of polish in a single sweep, allowing for a smooth application, vibrant color intensity, and a perfect finish. What else you need to know: This product is easily removed with nail polish remover, and was not made with harmful ingredients.&lt;br&gt;&lt;/p&gt;', '', 'Vernis gel Shine Long', '', ''),
(56, 1, 'Vernis gel Shine Long', '&lt;p&gt;What it is: A couture, gel-effect nail lacquer. What it does: This advanced nail formula provides glassy, long-wearing shine. A precision brush applies the ideal amount of polish in a single sweep, allowing for a smooth application, vibrant color intensity, and a perfect finish. What else you need to know: This product is easily removed with nail polish remover, and was not made with harmful ingredients.&lt;br&gt;&lt;/p&gt;', '', 'Vernis gel Shine Long', '', ''),
(57, 2, 'Purity made simple', '&lt;p&gt;What it is: An award-winning, highly effective one-step facial cleanser to tone and hydrate skin. What it is formulated to do: Begin with the most basic step of all. Purity Made Simple one-step facial cleanser is an award-winning cleanser that melts away dirt, oil, and makeup. It tones and lightly hydrates in one simple step for skin that feels perfectly clean and comfortably balanced. Formulated for all skin types and gentle enough for the sensitive eye area, it deep cleans pores while natural oil extracts help condition skin. What else you need to know: Purity Made Simple is part of a collection of philosophy products designed to soothe even the most dry and sensitive skin. It is a 2008 &quot;Best of Sephora&quot; Winner. You may also use this fragrance-free formula to clean your makeup brushes. Research results: Clinical results: - 100% reported that the cleanser is gentle enough for the eye area - 97% reported effective removal of dirt, oil, and makeup - 97% reported a clean, residue-free finish&lt;br&gt;&lt;/p&gt;', '', 'Purity made simple', '', ''),
(58, 1, 'Truth serum vitamin C', '&lt;p&gt;What it is: An antioxidant-rich brightening and nourishing serum enriched with vitamin C. What it is formulated to do: Look forward to a bright future—daily. Formulated with a proprietary five-source vitamin C complex to support natural collagen production, brighten, and minimize fine lines, this must-have serum defends from environmental aggressors and free radical damage, leaving skin healthy and protected. It is enriched with green tea extract and sodium hyaluronate to nurture and nourish. This lightweight and oil-free formula quickly absorbs into skin while the iconic uplifting citrus scent pampers your skin and your senses. What it is formulated WITHOUT: - Parabens - Sulfates - Phthalates What else you need to know: Not all vitamin C is created equal. Vitamin C is the primary water-soluble antioxidant in the body, disarming free radicals and preventing damage both inside and outside cells. Ole Henriksen has harnessed the power of vitamin C by creating a proprietary “5-C” complex to repair, protect, and nourish. How the complex works: - Orange extract supports natural cell turnover and purifies. - Grapefruit extract brightens with antiseptic and aromatic qualities. - Rose hips seed extract heals, repairs damage, and soothes. - Sodium Ascorbyl Phosphate is very stable, safe, and non-irritating—the key to production of collagen. - Ester-c (Calcium Ascorbate) is a highly stable natural form of vitamin C found naturally in the body.&lt;br&gt;&lt;/p&gt;', '', 'Truth serum vitamin C', '', ''),
(58, 2, 'Truth serum vitamin C', '&lt;p&gt;What it is: An antioxidant-rich brightening and nourishing serum enriched with vitamin C. What it is formulated to do: Look forward to a bright future—daily. Formulated with a proprietary five-source vitamin C complex to support natural collagen production, brighten, and minimize fine lines, this must-have serum defends from environmental aggressors and free radical damage, leaving skin healthy and protected. It is enriched with green tea extract and sodium hyaluronate to nurture and nourish. This lightweight and oil-free formula quickly absorbs into skin while the iconic uplifting citrus scent pampers your skin and your senses. What it is formulated WITHOUT: - Parabens - Sulfates - Phthalates What else you need to know: Not all vitamin C is created equal. Vitamin C is the primary water-soluble antioxidant in the body, disarming free radicals and preventing damage both inside and outside cells. Ole Henriksen has harnessed the power of vitamin C by creating a proprietary “5-C” complex to repair, protect, and nourish. How the complex works: - Orange extract supports natural cell turnover and purifies. - Grapefruit extract brightens with antiseptic and aromatic qualities. - Rose hips seed extract heals, repairs damage, and soothes. - Sodium Ascorbyl Phosphate is very stable, safe, and non-irritating—the key to production of collagen. - Ester-c (Calcium Ascorbate) is a highly stable natural form of vitamin C found naturally in the body.&lt;br&gt;&lt;/p&gt;', '', 'Truth serum vitamin C', '', ''),
(59, 2, 'Marks survival belly &amp; bust', '&lt;p&gt;What it is: A set of two specially-formulated products to safely support and care for the changing skin of new and expecting mothers. What it is formulated to do: This essential starter set offers two specially-formulated products to carefully maintain the altering skin of new and expecting mothers. Stretch Marks Double Action prevents and minimizes new stretch marks. This bestselling Mustela product reinforces skin’s elasticity and suppleness and supports natural cell renewal to prevent stretch marks while also moisturizing to soothe the sensitivity of the skin. Specific Support Bust firms breasts, soothes tightness, and improves resistance to variations in breast volume while toning the skin. This set contains: - 5 oz Stretch Marks Double Action - 4.2 oz Specific Support Bust What it is formulated WITHOUT: - Parabens - Phthalates Research results: - 96% of women who used Stretch Marks Double Action did not develop stretch marks&lt;br&gt;&lt;/p&gt;', '', 'Marks survival belly &amp; bust', '', ''),
(60, 1, 'Supermud clearning treatment', '&lt;p&gt;What it is: A scientifically advanced SUPERMUD™ clearing treatment to target, prevent, and heal problem skin. What it is formulated to do: This formula was clinically developed by GLAMGLOW® dermatological chemists to help fight all common skin concerns including breakouts, discoloration, black and white heads, razor bumps, and in-grown hair. Powerful, skin-clearing mud visibly draws out dirt and congestion while a proprietary six-acid blend dramatically brightens and softens skin. It works to magnetically draw out dirt and pores with Activated-X Charcoal, leaving skin smooth and healthy-looking. What it is formulated WITHOUT: - Parabens - Sulfates - Phthalates Research results: Based on consumer trials: After 1 day of use: - 94% felt their skin looked renewed - 91% saw an improvement in skin clarity - 94% felt it gently cleared their skin On day 7 after using it 3 times in a week: - 98% felt their skin looked renewed - 97% saw an improvement in skin clarity - 97% felt it gently cleared their skin&lt;br&gt;&lt;/p&gt;', '', 'Supermud clearning treatment', '', ''),
(61, 2, 'Acqua di gio pour', '&lt;p&gt;A resolutely masculine fragrance born from the sea, the sun, the earth, and the breeze of a Mediterranean island. Transparent, aromatic, and woody in nature Aqua Di Gio Pour Homme is a contemporary expression of masculinity, in an aura of marine notes, fruits, herbs, and woods. Giorgio Armani Acqua Di Gio Pour Homme is an Allure Best of Beauty Award Winner. Notes: Marine Notes, Mandarin, Bergamot, Neroli, Persimmon, Rosemary, Nasturtium, Jasmine, Amber, Patchouli, Cistus. Style: Transparent. Modern. Masculine.&lt;br&gt;&lt;/p&gt;', 'Acqua', 'Acqua di gio pour', '', ''),
(62, 1, 'Versace eros dog', '&lt;p&gt;Love, passion, beauty, and desire are the key concepts behind the new men’s fragrance by Versace. As Greek mythology and classic sculpture have characterized the Versace world since the beginning, so the perfection of the male body is evoked with an allusion to Eros, the god of love. Versace Eros is a fragrance for a strong, passionate man, who is master of himself. Eros interprets the sublime masculine through a luminous aura with an intense, vibrant, and glowing combination of fresh mint leaves, Italian lemon zest, and green apple. An addictive sensuality accented by oriental, intriguing, and enveloping notes like tonka beans, amrboxan amber, geranium flower, and vanilla melds with a racy virility symbolized by woods—such as cedarwood from Atlas and Virginia—while vetiver and oak moss provide intensity and power. Notes: Mint Oil, Italian Lemon, Green Apple, Tonka Bean, Geranium Flower, Vanilla, Vetiver, Moss, Cedarwood. Style: Passionate. Sexy. Strong.&lt;br&gt;&lt;/p&gt;', '', 'Versace eros dog', '', ''),
(63, 1, 'Rollerball di gioia acqua', '&lt;p&gt;Off the coast of Italy, the island of Pantelleria is a place where the deep blue-green Mediterranean Sea meets the sun and earth, creating a sense of happiness, serenity, and optimism. This fresh, aquatic fragrance, whose name means, &quot;water of joy,&quot; captures the simple happiness one can experience at this extraordinary destination. The fragrance''s top notes rise like a soft sea breeze, bringing forward a sensual blend of cool mint, warm brown sugar, and the zest of Italian lemon. Next, the heart notes emerge with beautiful floral hints of jasmine, dew of peony, and traces of pink pepper. The base lingers on a uniquely Mediterranean trail of cedarwood and the complex, herbaceous accords of labdanum. Notes: Mint, Brown Sugar, Lemon, Jasmine, Peony, Pink Pepper, Cedarwood, Labdanum. Style: Joyous. Aquatic.&lt;br&gt;&lt;/p&gt;', '', 'Rollerball di gioia acqua', '', ''),
(64, 2, 'Chloe eau de parfum', '&lt;p&gt;Capturing the spirit of women, the Chloé vision is not about one singular woman, but rather about the rich and varied personalities of all Chloé women. This fresh, smooth floral fragrance evokes sublime powdery rose. The effect is chic, comfortable, and entirely addictive. Top notes of pink peony, freesia, and lychee embody subtle freshness. At the heart, midnotes of magnolia flower, lily of the valley, and rose rise to sublimated femininity. A base of velvety elegance comes to fruition through cedarwood, amber, and honey. Inspired by the details in Chloé''s fashion, the flacon''s heavy but softly curved and grooved glass reflects femininity and strength. The plated-silver top is embossed with the Chloé mark and adorned with a hand-tied ribbon.&lt;br&gt;&lt;/p&gt;', 'Chloe', 'Chloe eau de parfum', '', ''),
(65, 1, 'Hairdresser invisible oil home', '&lt;p&gt;What it is: A multitasking conditioner for an immediate touchable transformation. What it does: This multitasking conditioner is infused with six different feather-light oils for complete hair transformation. It has been shown to make hair softer, smoother, silkier, and less tangled as it tames frizz and protects against breakage from heat and UV radiation—all without weighing hair down. It is safe for colored and chemically treated hair and features a pleasant scent with sweet, fruity hints and tropical touches.&lt;br&gt;&lt;/p&gt;', '', 'Hairdresser invisible oil home', '', ''),
(65, 2, 'Hairdresser invisible oil home', '&lt;p&gt;What it is: A multitasking conditioner for an immediate touchable transformation. What it does: This multitasking conditioner is infused with six different feather-light oils for complete hair transformation. It has been shown to make hair softer, smoother, silkier, and less tangled as it tames frizz and protects against breakage from heat and UV radiation—all without weighing hair down. It is safe for colored and chemically treated hair and features a pleasant scent with sweet, fruity hints and tropical touches.&lt;br&gt;&lt;/p&gt;', '', 'Hairdresser invisible oil home', '', ''),
(66, 1, 'Rosarco milk for cat', '&lt;p&gt;What it is: A ultra-lightweight leave-in conditioning spray fortified with nourishing rosehip, argan, and coconut oils. What it is formulated to do: One product—multiple benefits. This leave-in conditioning spray enhances hair''s softness, strength, manageability, and moisture levels while acting as a barrier against heat. The antioxidant-rich, milky blend contains a unique complex of nutrient-rich argan, rosehip, and coconut oils for superior nourishment without weighing hair down. It helps protect the hair from UV and free-radical damage, reduces frizz, and hydrates for hair that is smooth and healthy-looking. What it is formulated WITHOUT: - Parabens - Phthalates What else you need to know: This cruelty-free, 95 percent naturally-derived formula is vegan-friendly and formulated without silicone or synethic fragrances and dyes.&lt;/p&gt;&lt;p&gt;Suggested Usage: -Spray throughout clean, damp hair with focus on mid-length to ends of hair. -Blow-dry or air-dry and style per usual Precautions: -Avoid contact with eyes. -For external use only.&lt;br&gt;&lt;/p&gt;', '', 'Rosarco milk for cat', '', ''),
(67, 2, 'Perfect hair dry shampoo', '&lt;p&gt;What it is: A dry shampoo that absorbs oil, sweat, and odor for ultra-clean hair, plus a time-release fragrance that delivers a light, clean scent all day. What it is formulated to do: Living Proof Perfect Hair Day Dry Shampoo contains fast-absorbing powders that soak up oil and sweat. Great for all hair types and colors, a patented OFPMA molecule reduces the surface friction on hair—leaving virtually no visible residue or powdery build-up—making it easy to remove the powder. Odor neutralizers eliminate unwanted smells, and a time-release fragrance releases a light, refreshing, long-lasting scent. What it is formulated WITHOUT: - Parabens - Sulfates - Phthalates What else you need to know: See white residue? A little residue that can be easily removed is expected (that’s the cleaning in the works). If you experience more than that, make sure you shake the can and hold it farther from your head. Use a bristle brush and/or blow dryer to remove visible powders.&lt;br&gt;&lt;/p&gt;', '', 'Perfect hair dry shampoo', '', ''),
(68, 2, 'Singlepass professional', '&lt;p&gt;What it is: An award-winning T3® flatiron for smoothing and shaping world-class hair. What it does: The digital SinglePass™ heating perfectly maintains the selected plate temperature for effortless, high-speed styling and smooth, shiny, long-lasting results. Pioneering T3® technology infuses only the highest-quality Tourmaline gemstones that emit ionic, infrared heat to seal in moisture and reduce static electricity. The result delivers frizz-free, healthy, cuticle-smoothing styling. Designed with a curved body and beveled plate edges, you''re able to style flips, add body and shape, and create waves or curls. This set contains: - T3® SinglePass with 1&quot; plates - Adjustable digital SinglePass™ instant heating up to 450°F - Precision engineered, Tourmaline infused, Ceramic plates for smooth glide - 9-ft professional swivel cord - Heat resistant cleaning mat - World voltage - Two-year warranty Research Results: -Four out of five people experienced faster styling times with good to excellent straightening when they used their T3® flat iron.&lt;br&gt;&lt;/p&gt;', '', 'Singlepass professional', '', ''),
(60, 2, 'Supermud clearning treatment', '&lt;p&gt;What it is: A scientifically advanced SUPERMUD™ clearing treatment to target, prevent, and heal problem skin. What it is formulated to do: This formula was clinically developed by GLAMGLOW® dermatological chemists to help fight all common skin concerns including breakouts, discoloration, black and white heads, razor bumps, and in-grown hair. Powerful, skin-clearing mud visibly draws out dirt and congestion while a proprietary six-acid blend dramatically brightens and softens skin. It works to magnetically draw out dirt and pores with Activated-X Charcoal, leaving skin smooth and healthy-looking. What it is formulated WITHOUT: - Parabens - Sulfates - Phthalates Research results: Based on consumer trials: After 1 day of use: - 94% felt their skin looked renewed - 91% saw an improvement in skin clarity - 94% felt it gently cleared their skin On day 7 after using it 3 times in a week: - 98% felt their skin looked renewed - 97% saw an improvement in skin clarity - 97% felt it gently cleared their skin&lt;br&gt;&lt;/p&gt;', '', 'Supermud clearning treatment', '', ''),
(53, 2, 'The porefessional face primer', '&lt;p&gt;What it is: A professional balm that minimizes the appearance of pores. What it does: Quickly minimize the appearance of pores and fine lines and help makeup stay put with this priming phenomenon. The silky and lightweight formula can be worn under makeup to create a smoother-than-smooth canvas or used throughout the day to mattify shine and touch up problem areas. It’s so translucent, no one will know you’re wearing anything! What else you need to know: The oil-free formula contains vitamin E, which is known to protect skin from free radicals.&lt;/p&gt;&lt;p&gt;Suggested Usage: -To prime in the morning: Apply a thin layer of this PRO balm to moisturized skin from the center of the face outward. Wait a few seconds and apply makeup as usual or wear alone. -To touch up over makeup: If pores come out of hiding, pat delicately over makeup on problem areas and blend. Remember, just a dab’ll do ya! -To smooth on a brighter face: Give your POREfect complexion an instant perk-me-up! Layer the POREfessional smoothing balm over &quot;That Gal&quot; Brightening Face Primer. -To lock down your look: To help foundation stay put, always start with the POREfessional. Then blend Hello Flawless Oxygen Wow from the center of the face, out. Skin will look smooth and flawless all day long. -To spot-conceal: Apply the POREfessional over blemishes, then blend Boi-ing on top. It''ll keep skin looking smooth and lock the industrial-strength concealer in place. - To rock the photo op: Prime face with the POREfessional to minimize the look of pores and mattify skin. Apply your favorite Benefit makeup products...then reapply the POREfessional. The lens will love you! Precautions: -Please read the ingredient list on the packaging of your product to be sure that the ingredients are appropriate for your personal use.&lt;/p&gt;', '', 'The porefessional face primer', '', ''),
(69, 1, 'Sweet almond hair', '&lt;p&gt;What it is: An intensely nourishing weekly mask designed to give your hair more body and a beautiful, healthy shine. What it does: Pamper your locks with the ultimate spa treatment of this concentrated, moisturizing mask infused with botanical extracts to condition the hair and impart shine and softness. Envelop each strand with an invisible veil of nutrients, including hydrating shea butter and restorative hydrolyzed wheat protein. Beneficial for all hair types, this formula promises to leave hair looking and feeling soft, manageable, and extremely touchable. What it is formulated WITHOUT: - Sulfates - Synthetic Dyes - Petrochemicals - Phthalates - Triclosan&lt;br&gt;&lt;/p&gt;', '', 'Sweet almond hair', '', ''),
(70, 1, 'Pure treatment oil', '&lt;p&gt;What it is: A luxurious hair treatment oil enriched with nourishing argan, jojoba, and coffee oils. What it is formulated to do: This Pure Treatment Oil incorporates a blend of three hydrating oils to deliver shine, repair, condition, and protect against moisture loss. Ginger root extract supports blood circulation to the scalp while a bright floral fragrance enhances this indulgent experience.&lt;/p&gt;&lt;p&gt;Suggested Usage: -Apply on damp hair throughout, from roots to tips. -Use on ends between washes to soften tips. -For the ultimate nourishing treatment, apply on dry hair and leave on overnight. Wash away in the morning.&lt;br&gt;&lt;/p&gt;', '', 'Pure treatment oil', '', ''),
(61, 1, 'Acqua di gio pour', '&lt;p&gt;A resolutely masculine fragrance born from the sea, the sun, the earth, and the breeze of a Mediterranean island. Transparent, aromatic, and woody in nature Aqua Di Gio Pour Homme is a contemporary expression of masculinity, in an aura of marine notes, fruits, herbs, and woods. Giorgio Armani Acqua Di Gio Pour Homme is an Allure Best of Beauty Award Winner. Notes: Marine Notes, Mandarin, Bergamot, Neroli, Persimmon, Rosemary, Nasturtium, Jasmine, Amber, Patchouli, Cistus. Style: Transparent. Modern. Masculine.&lt;br&gt;&lt;/p&gt;', 'Acqua', 'Acqua di gio pour', '', ''),
(53, 1, 'The porefessional face primer', '&lt;p&gt;What it is: A professional balm that minimizes the appearance of pores. What it does: Quickly minimize the appearance of pores and fine lines and help makeup stay put with this priming phenomenon. The silky and lightweight formula can be worn under makeup to create a smoother-than-smooth canvas or used throughout the day to mattify shine and touch up problem areas. It’s so translucent, no one will know you’re wearing anything! What else you need to know: The oil-free formula contains vitamin E, which is known to protect skin from free radicals.&lt;/p&gt;&lt;p&gt;Suggested Usage: -To prime in the morning: Apply a thin layer of this PRO balm to moisturized skin from the center of the face outward. Wait a few seconds and apply makeup as usual or wear alone. -To touch up over makeup: If pores come out of hiding, pat delicately over makeup on problem areas and blend. Remember, just a dab’ll do ya! -To smooth on a brighter face: Give your POREfect complexion an instant perk-me-up! Layer the POREfessional smoothing balm over &quot;That Gal&quot; Brightening Face Primer. -To lock down your look: To help foundation stay put, always start with the POREfessional. Then blend Hello Flawless Oxygen Wow from the center of the face, out. Skin will look smooth and flawless all day long. -To spot-conceal: Apply the POREfessional over blemishes, then blend Boi-ing on top. It''ll keep skin looking smooth and lock the industrial-strength concealer in place. - To rock the photo op: Prime face with the POREfessional to minimize the look of pores and mattify skin. Apply your favorite Benefit makeup products...then reapply the POREfessional. The lens will love you! Precautions: -Please read the ingredient list on the packaging of your product to be sure that the ingredients are appropriate for your personal use.&lt;br&gt;&lt;/p&gt;', '', 'The porefessional face primer', '', ''),
(64, 1, 'Chloe eau de parfum', '&lt;p&gt;Capturing the spirit of women, the Chloé vision is not about one singular woman, but rather about the rich and varied personalities of all Chloé women. This fresh, smooth floral fragrance evokes sublime powdery rose. The effect is chic, comfortable, and entirely addictive. Top notes of pink peony, freesia, and lychee embody subtle freshness. At the heart, midnotes of magnolia flower, lily of the valley, and rose rise to sublimated femininity. A base of velvety elegance comes to fruition through cedarwood, amber, and honey. Inspired by the details in Chloé''s fashion, the flacon''s heavy but softly curved and grooved glass reflects femininity and strength. The plated-silver top is embossed with the Chloé mark and adorned with a hand-tied ribbon.&lt;br&gt;&lt;/p&gt;', 'Chloe', 'Chloe eau de parfum', '', ''),
(63, 2, 'Rollerball di gioia acqua', '&lt;p&gt;Off the coast of Italy, the island of Pantelleria is a place where the deep blue-green Mediterranean Sea meets the sun and earth, creating a sense of happiness, serenity, and optimism. This fresh, aquatic fragrance, whose name means, &quot;water of joy,&quot; captures the simple happiness one can experience at this extraordinary destination. The fragrance''s top notes rise like a soft sea breeze, bringing forward a sensual blend of cool mint, warm brown sugar, and the zest of Italian lemon. Next, the heart notes emerge with beautiful floral hints of jasmine, dew of peony, and traces of pink pepper. The base lingers on a uniquely Mediterranean trail of cedarwood and the complex, herbaceous accords of labdanum. Notes: Mint, Brown Sugar, Lemon, Jasmine, Peony, Pink Pepper, Cedarwood, Labdanum. Style: Joyous. Aquatic.&lt;br&gt;&lt;/p&gt;', '', 'Rollerball di gioia acqua', '', ''),
(71, 1, 'Nail lacquer lance', '&lt;p&gt;What it is: A heavily pigmented, high-fashion nail polish. What it does: Created backstage at fashion week for the world’s top fashion designers, Butter LONDON’s lacquers are rich in color, giving your nails a look that is more vibrant. The vitamin-enriched formula promotes nail strength and provides beautifully consistent coverage. What else you need to know: Butter LONDON is a new-era design house, creating extraordinary moments in color by living on the inside edge of fashion. Butter LONDON does not add formaldehyde, toluene, or DBP to any of its nail formulas. It''s color without compromise. For brilliant results, use butter LONDON lacquers with the corresponding butter LONDON base and topcoats. When used together, the products last significantly longer than a typical manicure.&lt;br&gt;&lt;/p&gt;', '', 'Nail lacquer lance', '', ''),
(67, 1, 'Perfect hair dry shampoo', '&lt;p&gt;What it is: A dry shampoo that absorbs oil, sweat, and odor for ultra-clean hair, plus a time-release fragrance that delivers a light, clean scent all day. What it is formulated to do: Living Proof Perfect Hair Day Dry Shampoo contains fast-absorbing powders that soak up oil and sweat. Great for all hair types and colors, a patented OFPMA molecule reduces the surface friction on hair—leaving virtually no visible residue or powdery build-up—making it easy to remove the powder. Odor neutralizers eliminate unwanted smells, and a time-release fragrance releases a light, refreshing, long-lasting scent. What it is formulated WITHOUT: - Parabens - Sulfates - Phthalates What else you need to know: See white residue? A little residue that can be easily removed is expected (that’s the cleaning in the works). If you experience more than that, make sure you shake the can and hold it farther from your head. Use a bristle brush and/or blow dryer to remove visible powders.&lt;br&gt;&lt;/p&gt;', '', 'Perfect hair dry shampoo', '', ''),
(70, 2, 'Pure treatment oil', '&lt;p&gt;What it is: A luxurious hair treatment oil enriched with nourishing argan, jojoba, and coffee oils. What it is formulated to do: This Pure Treatment Oil incorporates a blend of three hydrating oils to deliver shine, repair, condition, and protect against moisture loss. Ginger root extract supports blood circulation to the scalp while a bright floral fragrance enhances this indulgent experience.&lt;/p&gt;&lt;p&gt;Suggested Usage: -Apply on damp hair throughout, from roots to tips. -Use on ends between washes to soften tips. -For the ultimate nourishing treatment, apply on dry hair and leave on overnight. Wash away in the morning.&lt;/p&gt;', '', 'Pure treatment oil', '', ''),
(55, 2, 'Rouge couture lipstick collection', '&lt;p&gt;What it is: A collection featuring a Kiss &amp;amp; Love Collector Edition lipstick and Rouge Pur Couture lip shades—now in satin and matte finishes. What it does: Edgy and feminine, Yves Saint Laurent’s Rouge Pur Couture Lipstick Collection delivers lip colors that exude ultimate feminine strength and edgy style. Give lips luxurious, rich color with intense hydration and antioxidant care in just one stroke.&lt;br&gt;&lt;/p&gt;', '', 'Rouge couture lipstick collection', '', ''),
(62, 2, 'Versace eros dog', '&lt;p&gt;Love, passion, beauty, and desire are the key concepts behind the new men’s fragrance by Versace. As Greek mythology and classic sculpture have characterized the Versace world since the beginning, so the perfection of the male body is evoked with an allusion to Eros, the god of love. Versace Eros is a fragrance for a strong, passionate man, who is master of himself. Eros interprets the sublime masculine through a luminous aura with an intense, vibrant, and glowing combination of fresh mint leaves, Italian lemon zest, and green apple. An addictive sensuality accented by oriental, intriguing, and enveloping notes like tonka beans, amrboxan amber, geranium flower, and vanilla melds with a racy virility symbolized by woods—such as cedarwood from Atlas and Virginia—while vetiver and oak moss provide intensity and power. Notes: Mint Oil, Italian Lemon, Green Apple, Tonka Bean, Geranium Flower, Vanilla, Vetiver, Moss, Cedarwood. Style: Passionate. Sexy. Strong.&lt;br&gt;&lt;/p&gt;', '', 'Versace eros dog', '', ''),
(52, 2, 'Cover stick foundation', '&lt;p&gt;What it is: A long-lasting, multitasking cover stick with invisible coverage for foundation touch-ups and contouring. What it does: Ultra HD Invisible Cover Stick Foundation creates a flawless complexion on camera, and to the naked eye. Developed specifically for the film and TV industry''s most advanced technology, it is completely invisible under the latest, super-focused 4k lens. The revolutionary foundation contains amino acid coated pigments that provide medium-to-full coverage with a lightweight, second-skin texture that looks just like skin. It leaves a natural-looking, radiant finish, and it’s formulated with hyaluronic spheres for time-released hydration that is perfect for normal to dry skin. Ideal for foundation touch-ups and contouring, it can be applied at home or on-the-go for a flawless complexion. What else you need to know: MAKE UP FOR EVER is once again leading the beauty industry into the next era of makeup innovation and technology. As the original pioneer of the HD makeup category, it continues to redefine and elevate beauty standards with the launch of its ULTRA HD FOUNDATION, the first and only foundation designed for 4K technology. With 4K technology, the next generation of digital devices will display images with unbelievable detail, stunning clarity, and heightened color. Completely invisible under the latest, ultra-magnified resolution, these innovative foundation formulas look completely natural on camera. &quot;My goal was to cope with the new 4k technology while keeping the main benefits of HD Foundation.Ultra HD Foundation had to meet the perfection needs of Pros as well as the everyday needs of all women.&quot;—Dany Sanz, Founder &amp;amp; Creative Director&lt;br&gt;&lt;/p&gt;', '', 'Cover stick foundation', '', ''),
(59, 1, 'Marks survival belly &amp; bust', '&lt;p&gt;What it is: A set of two specially-formulated products to safely support and care for the changing skin of new and expecting mothers. What it is formulated to do: This essential starter set offers two specially-formulated products to carefully maintain the altering skin of new and expecting mothers. Stretch Marks Double Action prevents and minimizes new stretch marks. This bestselling Mustela product reinforces skin’s elasticity and suppleness and supports natural cell renewal to prevent stretch marks while also moisturizing to soothe the sensitivity of the skin. Specific Support Bust firms breasts, soothes tightness, and improves resistance to variations in breast volume while toning the skin. This set contains: - 5 oz Stretch Marks Double Action - 4.2 oz Specific Support Bust What it is formulated WITHOUT: - Parabens - Phthalates Research results: - 96% of women who used Stretch Marks Double Action did not develop stretch marks&lt;br&gt;&lt;/p&gt;', '', 'Marks survival belly &amp; bust', '', ''),
(68, 1, 'Singlepass professional', '&lt;p&gt;What it is: An award-winning T3® flatiron for smoothing and shaping world-class hair. What it does: The digital SinglePass™ heating perfectly maintains the selected plate temperature for effortless, high-speed styling and smooth, shiny, long-lasting results. Pioneering T3® technology infuses only the highest-quality Tourmaline gemstones that emit ionic, infrared heat to seal in moisture and reduce static electricity. The result delivers frizz-free, healthy, cuticle-smoothing styling. Designed with a curved body and beveled plate edges, you''re able to style flips, add body and shape, and create waves or curls. This set contains: - T3® SinglePass with 1&quot; plates - Adjustable digital SinglePass™ instant heating up to 450°F - Precision engineered, Tourmaline infused, Ceramic plates for smooth glide - 9-ft professional swivel cord - Heat resistant cleaning mat - World voltage - Two-year warranty Research Results: -Four out of five people experienced faster styling times with good to excellent straightening when they used their T3® flat iron.&lt;br&gt;&lt;/p&gt;', '', 'Singlepass professional', '', ''),
(69, 2, 'Sweet almond hair', '&lt;p&gt;What it is: An intensely nourishing weekly mask designed to give your hair more body and a beautiful, healthy shine. What it does: Pamper your locks with the ultimate spa treatment of this concentrated, moisturizing mask infused with botanical extracts to condition the hair and impart shine and softness. Envelop each strand with an invisible veil of nutrients, including hydrating shea butter and restorative hydrolyzed wheat protein. Beneficial for all hair types, this formula promises to leave hair looking and feeling soft, manageable, and extremely touchable. What it is formulated WITHOUT: - Sulfates - Synthetic Dyes - Petrochemicals - Phthalates - Triclosan&lt;br&gt;&lt;/p&gt;', '', 'Sweet almond hair', '', ''),
(66, 2, 'Rosarco milk for cat', '&lt;p&gt;What it is: A ultra-lightweight leave-in conditioning spray fortified with nourishing rosehip, argan, and coconut oils. What it is formulated to do: One product—multiple benefits. This leave-in conditioning spray enhances hair''s softness, strength, manageability, and moisture levels while acting as a barrier against heat. The antioxidant-rich, milky blend contains a unique complex of nutrient-rich argan, rosehip, and coconut oils for superior nourishment without weighing hair down. It helps protect the hair from UV and free-radical damage, reduces frizz, and hydrates for hair that is smooth and healthy-looking. What it is formulated WITHOUT: - Parabens - Phthalates What else you need to know: This cruelty-free, 95 percent naturally-derived formula is vegan-friendly and formulated without silicone or synethic fragrances and dyes.&lt;/p&gt;&lt;p&gt;Suggested Usage: -Spray throughout clean, damp hair with focus on mid-length to ends of hair. -Blow-dry or air-dry and style per usual Precautions: -Avoid contact with eyes. -For external use only.&lt;/p&gt;', '', 'Rosarco milk for cat', '', ''),
(57, 1, 'Purity made simple', '&lt;p&gt;What it is: An award-winning, highly effective one-step facial cleanser to tone and hydrate skin. What it is formulated to do: Begin with the most basic step of all. Purity Made Simple one-step facial cleanser is an award-winning cleanser that melts away dirt, oil, and makeup. It tones and lightly hydrates in one simple step for skin that feels perfectly clean and comfortably balanced. Formulated for all skin types and gentle enough for the sensitive eye area, it deep cleans pores while natural oil extracts help condition skin. What else you need to know: Purity Made Simple is part of a collection of philosophy products designed to soothe even the most dry and sensitive skin. It is a 2008 &quot;Best of Sephora&quot; Winner. You may also use this fragrance-free formula to clean your makeup brushes. Research results: Clinical results: - 100% reported that the cleanser is gentle enough for the eye area - 97% reported effective removal of dirt, oil, and makeup - 97% reported a clean, residue-free finish&lt;br&gt;&lt;/p&gt;', '', 'Purity made simple', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=499 ;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(498, 55, 1, 10, 1, 20.0000, '2015-12-12', '2017-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(53, 2),
(54, 2),
(55, 1),
(55, 4),
(56, 2),
(56, 5),
(57, 3),
(57, 4),
(58, 2),
(59, 3),
(59, 5),
(60, 1),
(60, 4),
(61, 2),
(61, 4),
(62, 2),
(62, 4),
(63, 1),
(63, 5),
(64, 3),
(64, 5),
(65, 1),
(65, 5),
(66, 2),
(67, 2),
(67, 4),
(68, 3),
(68, 5),
(69, 2),
(70, 1),
(70, 4),
(71, 1),
(71, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3301 ;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(3264, 59, 'catalog/demo/product/home2/002.jpg', 0),
(3268, 67, 'catalog/demo/product/home2/019.jpg', 0),
(3258, 61, 'catalog/demo/product/home2/003.jpg', 0),
(3255, 64, 'catalog/demo/product/home2/006.jpg', 0),
(3278, 66, 'catalog/demo/product/home2/030.jpg', 0),
(3285, 60, 'catalog/demo/product/home2/041.jpg', 0),
(3280, 55, 'catalog/demo/product/home2/034.jpg', 0),
(3279, 55, 'catalog/demo/product/home2/033.jpg', 0),
(3293, 56, 'catalog/demo/product/home2/012.jpg', 0),
(3292, 56, 'catalog/demo/product/home2/011.jpg', 0),
(3266, 71, 'catalog/demo/product/home2/001.jpg', 0),
(3265, 71, 'catalog/demo/product/home2/003.jpg', 0),
(3260, 52, 'catalog/demo/product/home2/009.jpg', 0),
(3257, 61, 'catalog/demo/product/home2/002.jpg', 0),
(3256, 61, 'catalog/demo/product/home2/004.jpg', 0),
(3284, 60, 'catalog/demo/product/home2/040.jpg', 0),
(3276, 63, 'catalog/demo/product/home2/028.jpg', 0),
(3275, 63, 'catalog/demo/product/home2/026.jpg', 0),
(3254, 64, 'catalog/demo/product/home2/007.jpg', 0),
(3253, 64, 'catalog/demo/product/home2/002.jpg', 0),
(3262, 65, 'catalog/demo/product/home2/013.jpg', 0),
(3261, 65, 'catalog/demo/product/home2/012.jpg', 0),
(3267, 67, 'catalog/demo/product/home2/018.jpg', 0),
(3270, 70, 'catalog/demo/product/home2/022.jpg', 0),
(3269, 70, 'catalog/demo/product/home2/021.jpg', 0),
(3274, 57, 'catalog/demo/product/home2/024.jpg', 0),
(3273, 57, 'catalog/demo/product/home2/025.jpg', 0),
(3277, 66, 'catalog/demo/product/home2/031.jpg', 0),
(3282, 68, 'catalog/demo/product/home2/037.jpg', 0),
(3281, 68, 'catalog/demo/product/home2/036.jpg', 0),
(3263, 59, 'catalog/demo/product/home2/015.jpg', 0),
(3283, 60, 'catalog/demo/product/home2/039.jpg', 0),
(3289, 53, 'catalog/demo/product/home2/010.jpg', 0),
(3291, 58, 'catalog/demo/product/home2/001.jpg', 0),
(3290, 58, 'catalog/demo/product/home2/002.jpg', 0),
(3300, 54, 'catalog/demo/product/home2/009.jpg', 0),
(3298, 62, 'catalog/demo/product/home2/038.jpg', 0),
(3299, 54, 'catalog/demo/product/home2/031.jpg', 0),
(3259, 52, 'catalog/demo/product/home2/010.jpg', 0),
(3287, 69, 'catalog/demo/product/home2/005.jpg', 0),
(3286, 69, 'catalog/demo/product/home2/006.jpg', 0),
(3297, 62, 'catalog/demo/product/home2/010.jpg', 0),
(3296, 62, 'catalog/demo/product/home2/039.jpg', 0),
(3295, 62, 'catalog/demo/product/home2/024.jpg', 0),
(3294, 62, 'catalog/demo/product/home2/023.jpg', 0),
(3288, 53, 'catalog/demo/product/home2/023.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=234 ;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(231, 55, 10, '', 1),
(228, 65, 10, '2015-07-27 10:28', 1),
(232, 55, 12, '', 1),
(230, 55, 8, '2015-09-08', 1),
(229, 55, 2, '', 1),
(233, 55, 7, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(19, 229, 55, 2, 24, 14, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(18, 229, 55, 2, 23, 12, 1, 0.0000, '+', 5, '+', 0.00000000, '+'),
(20, 229, 55, 2, 44, 16, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(21, 229, 55, 2, 45, 18, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_recurring`
--

INSERT INTO `oc_product_recurring` (`product_id`, `recurring_id`, `customer_group_id`) VALUES
(55, 0, 1),
(56, 0, 1),
(61, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(52, 55),
(52, 56),
(52, 57),
(53, 55),
(53, 56),
(53, 57),
(53, 59),
(53, 60),
(54, 55),
(54, 57),
(55, 52),
(55, 53),
(55, 54),
(55, 56),
(55, 57),
(55, 59),
(55, 60),
(55, 62),
(55, 64),
(56, 52),
(56, 53),
(56, 55),
(56, 57),
(56, 59),
(56, 60),
(56, 62),
(56, 64),
(56, 65),
(56, 67),
(56, 69),
(56, 70),
(57, 52),
(57, 53),
(57, 54),
(57, 55),
(57, 56),
(57, 59),
(57, 60),
(57, 62),
(57, 64),
(57, 65),
(58, 59),
(59, 53),
(59, 55),
(59, 56),
(59, 57),
(59, 58),
(59, 60),
(59, 62),
(60, 53),
(60, 55),
(60, 56),
(60, 57),
(60, 59),
(61, 62),
(61, 64),
(61, 65),
(61, 67),
(61, 69),
(61, 70),
(62, 55),
(62, 56),
(62, 57),
(62, 59),
(62, 61),
(63, 64),
(63, 65),
(63, 67),
(63, 69),
(63, 70),
(64, 55),
(64, 56),
(64, 57),
(64, 61),
(64, 63),
(64, 65),
(64, 67),
(64, 69),
(64, 70),
(65, 56),
(65, 57),
(65, 61),
(65, 63),
(65, 64),
(65, 67),
(65, 69),
(65, 70),
(67, 56),
(67, 61),
(67, 63),
(67, 64),
(67, 65),
(69, 56),
(69, 61),
(69, 63),
(69, 64),
(69, 65),
(70, 56),
(70, 61),
(70, 63),
(70, 64),
(70, 65);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=646 ;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(645, 54, 1, 4),
(642, 55, 1, 9),
(643, 60, 1, 4),
(644, 56, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=616 ;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(610, 59, 1, 220, 200.0000, '2015-09-16', '2019-07-16'),
(615, 56, 1, 100, 80.0000, '2015-09-01', '2018-07-06'),
(609, 52, 1, 100, 80.0000, '2015-09-15', '2018-04-13'),
(608, 61, 1, 180, 150.0000, '2014-09-01', '2020-07-31'),
(613, 55, 1, 80, 66.0000, '2015-09-16', '2022-07-14'),
(614, 53, 1, 100, 80.0000, '2015-09-16', '2023-08-18'),
(611, 71, 1, 99000, 90.0000, '2015-12-10', '2021-07-15'),
(612, 70, 1, 150, 100.0000, '2015-12-10', '2020-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(52, 64),
(52, 65),
(52, 85),
(52, 86),
(52, 87),
(52, 88),
(53, 64),
(53, 65),
(53, 85),
(54, 64),
(54, 66),
(54, 85),
(55, 64),
(55, 67),
(55, 85),
(56, 64),
(56, 68),
(56, 69),
(56, 70),
(56, 85),
(57, 64),
(57, 65),
(57, 69),
(57, 70),
(57, 77),
(57, 79),
(57, 86),
(57, 87),
(57, 88),
(58, 69),
(58, 71),
(58, 85),
(59, 69),
(59, 72),
(59, 85),
(59, 86),
(59, 87),
(59, 88),
(60, 69),
(60, 73),
(60, 85),
(61, 74),
(61, 76),
(61, 77),
(61, 78),
(61, 86),
(61, 87),
(62, 74),
(62, 76),
(62, 85),
(63, 74),
(63, 75),
(63, 76),
(63, 81),
(63, 83),
(64, 74),
(64, 75),
(64, 81),
(64, 84),
(65, 81),
(65, 83),
(65, 85),
(66, 81),
(66, 83),
(66, 85),
(67, 77),
(67, 80),
(67, 81),
(67, 82),
(67, 86),
(67, 87),
(67, 88),
(68, 81),
(68, 82),
(68, 85),
(68, 86),
(68, 87),
(68, 88),
(69, 81),
(69, 84),
(69, 85),
(70, 69),
(70, 73),
(70, 77),
(70, 79),
(70, 81),
(70, 84),
(71, 77),
(71, 78),
(71, 80),
(71, 86),
(71, 87),
(71, 88);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(66, 0, 0),
(52, 0, 0),
(54, 0, 0),
(65, 0, 0),
(57, 0, 0),
(56, 0, 0),
(63, 0, 0),
(62, 0, 0),
(64, 0, 0),
(58, 0, 0),
(55, 0, 0),
(61, 0, 0),
(60, 0, 0),
(59, 0, 0),
(53, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(19, 62, 0, 'Tung', 'Good product !!!!', 4, 1, '2015-10-01 14:48:56', '2016-04-07 15:28:48'),
(20, 61, 0, 'Admin', 'Good product !!!!', 4, 1, '2015-10-01 14:54:46', '2016-04-07 15:28:44'),
(21, 54, 0, 'Admin', 'Good product !!!!', 2, 1, '2015-10-01 15:02:50', '2016-04-07 15:28:40'),
(22, 52, 0, 'Admin', 'Good product !!!!', 3, 1, '2015-10-01 15:03:59', '2016-04-07 15:28:36'),
(23, 58, 0, 'Admin', 'Good product !!!!', 5, 1, '2015-10-01 15:05:22', '2016-04-07 15:28:31'),
(24, 53, 0, 'Admin', 'Good product !!!!', 5, 1, '2015-10-01 15:06:26', '2016-04-07 15:28:11'),
(25, 68, 0, 'Admin', 'Good product !!!!', 2, 1, '2015-10-01 15:08:16', '2016-04-07 15:28:04'),
(26, 55, 0, 'Admin', 'Good product !!!!', 3, 1, '2015-10-01 15:09:05', '2016-04-07 15:27:45'),
(27, 66, 0, 'Admin', 'Good product !!!!', 3, 1, '2015-10-01 15:12:05', '2016-04-07 15:27:40'),
(29, 70, 0, 'Admin', 'Good product !!!!', 2, 1, '2015-10-01 15:17:57', '2016-04-07 15:27:36'),
(30, 67, 0, 'Admin', 'Good product !!!!', 1, 1, '2015-10-01 15:18:45', '2016-04-07 15:27:29'),
(31, 69, 0, 'Admin', 'Good product !!!!', 2, 1, '2015-10-01 15:21:41', '2016-04-07 15:27:25'),
(32, 60, 0, 'Admin', 'Good product !!!!', 3, 1, '2015-10-01 15:22:38', '2016-04-07 15:27:20'),
(33, 59, 0, 'Admin', 'Good product !!!!', 4, 1, '2015-10-01 15:23:33', '2016-04-13 10:02:34'),
(34, 57, 0, 'Yui Hatano', 'GLWS beauty !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 3, 1, '2016-04-13 09:52:45', '2016-04-13 10:02:25'),
(35, 56, 0, 'Luis Kane', 'GLWS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 2, 1, '2016-04-13 10:01:26', '2016-04-13 10:02:19'),
(36, 64, 0, 'Anthony Martial', 'Good good beauty bag !!!!!!!!!!!!!!!!!!!!!!!!!!!!', 5, 1, '2016-04-13 10:06:35', '2016-04-13 10:07:26'),
(37, 63, 0, 'Memphis Depay', 'I like this shoe !!!!!!!!!!!!!!', 4, 1, '2016-04-13 10:08:37', '2016-04-13 10:12:06'),
(38, 65, 0, 'Daley Blind', 'Good Shoe for woman !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 2, 1, '2016-04-13 10:10:20', '2016-04-13 10:12:00'),
(39, 71, 0, 'De Gea', 'Bad T-Shirt !!!!!!!!!!!!!!!!!!!!!!!', 1, 1, '2016-04-13 10:13:41', '2016-04-13 10:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4589 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(4584, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{"submenu":1,"subwidth":800,"id":42,"align":"aligned-fullwidth","cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-17","colwidth":2},{"widgets":"wid-18","colwidth":2},{"widgets":"wid-26","colwidth":3},{"colwidth":5,"widgets":"wid-27"}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":44,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":48,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"align":"aligned-left","submenu":1,"cols":1,"group":0,"id":50,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(4389, 0, 'theme_default', 'theme_default_image_cart_width', '65', 0),
(4388, 0, 'theme_default', 'theme_default_image_wishlist_height', '87', 0),
(4387, 0, 'theme_default', 'theme_default_image_wishlist_width', '65', 0),
(4386, 0, 'theme_default', 'theme_default_image_compare_height', '87', 0),
(4385, 0, 'theme_default', 'theme_default_image_compare_width', '65', 0),
(4384, 0, 'theme_default', 'theme_default_image_related_height', '360', 0),
(4383, 0, 'theme_default', 'theme_default_image_related_width', '270', 0),
(4382, 0, 'theme_default', 'theme_default_image_additional_height', '760', 0),
(4381, 0, 'theme_default', 'theme_default_image_additional_width', '570', 0),
(4380, 0, 'theme_default', 'theme_default_image_product_height', '360', 0),
(2843, 0, 'google_captcha', 'google_captcha_status', '1', 0),
(4571, 0, 'config', 'config_file_max_size', '300000', 0),
(4572, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(4573, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(4570, 0, 'config', 'config_encryption', 'SdIo7E5fU1YvZpKwFbg5x0VEp3vFVXWKCHioPVneLAFhVNyTmCtVtu5pylbaY2Y5wld08pprVDlfmH7kwIjN4L4lUnKkq4UcfTIZ5faNeGaL12huszZsZ81OdDyO9wzK66cATvbdfbIW4bbkvujHUKoYgIV6CCfd4oaOJVLUbiGozyTrsg5rJtRIiblKxFWrqj3j22xmbJUqkKFbn2Xa6NVEIHyWOIqLP1rB9YdWw1yVBb9X4ssh4Z9vqkcVg93qZJXO9XrzthYCCClk2dJ6oYLZGOysyrBy6lPJ0yq6VhCb04vCoF9xPZsYMwMdgaeSxlHmxx1CzbexQLZFg608Txdlx41nUMjsWYPBPzWwo5BoLbgLsE84hwBGqporiUC94qvQl2ngUv3blQtjkl2tx7syNdTS7IARcXRUiIRHYLMsv3Kdkd4sL4WGz6lnlI1aNMVUzD3O9eB2NWeO28lkxWiUiYfCrJMZHuQZTOgzzCUqxvwvOMQ9F66ErpjrMJM5nr3QFyNdFFefDTr2WBKrsU2yluvQdfOBaztjfipYIlCQIz6g2XfH4WmYvKtplrFV61zpiJFDM9XHwjRsGlxiudtzhmxGWL19VdkMHPL5XEYP8gDIyrZTes54lbea6YOGELKjKFAhOziEJsfKgfWzZ7fDuqcey1IW3zO36GvBA9xBgDSIOssorjAuaz9Zu7lPQOrVOvfn0ISZgWwzr0R2C19XasW0Cm8rvMYuyKuWpafL5mpqqm5u6XOiLPVDqU9ElmgfQAIceYsyiQA5gE9F2U4VRV434zRt1SLSYTNRMaT3kNCCf6kjeaxh3wnwmrmAr889xYYI0ywzT77Nh0LCAJ0WF5fGnqSmUMkL5n2v6IuhqqqnCto6nQRcX9HAdlnuWHMNdxrZY7OIILj8g4wuSMRFtg8175qoHpb5UmJrj3wcSEnstpaIOawvmTK6aJPLdHOvUaBZpbLKHyRgmeLYY1orkootRii33u9f8GNNEjDx4AAqZz6g99gjv0FdtlDR', 0),
(4576, 0, 'config', 'config_error_filename', 'error.log', 0),
(4574, 0, 'config', 'config_error_display', '1', 0),
(4575, 0, 'config', 'config_error_log', '1', 0),
(867, 0, 'basic_captcha', 'basic_captcha_status', '1', 0),
(4379, 0, 'theme_default', 'theme_default_image_product_width', '270', 0),
(4378, 0, 'theme_default', 'theme_default_image_popup_height', '760', 0),
(4377, 0, 'theme_default', 'theme_default_image_popup_width', '570', 0),
(4376, 0, 'theme_default', 'theme_default_image_thumb_height', '760', 0),
(4256, 0, 'pavblog', 'pavblog', '{"general_lwidth":"870","general_lheight":"444","general_swidth":"870","general_sheight":"444","general_xwidth":"80","general_xheight":"80","rss_limit_item":"12","keyword_listing_blogs_page":"blogs","children_columns":"3","general_cwidth":"250","general_cheight":"250","cat_limit_leading_blog":"1","cat_limit_secondary_blog":"5","cat_leading_image_type":"l","cat_secondary_image_type":"s","cat_columns_leading_blog":"1","cat_columns_secondary_blogs":"2","cat_show_title":"1","cat_show_description":"1","cat_show_readmore":"1","cat_show_image":"1","cat_show_author":"1","cat_show_category":"1","cat_show_created":"1","cat_show_hits":"1","cat_show_comment_counter":"1","blog_image_type":"l","blog_show_title":"1","blog_show_image":"1","blog_show_author":"1","blog_show_category":"1","blog_show_created":"1","blog_show_comment_counter":"1","blog_show_hits":"1","blog_show_comment_form":"1","comment_engine":"local","diquis_account":"pavothemes","facebook_appid":"100858303516","comment_limit":"10","facebook_width":"600","auto_publish_comment":"0","enable_recaptcha":"1"}', 1),
(862, 0, 'filter', 'filter_status', '1', 0),
(2842, 0, 'google_captcha', 'google_captcha_secret', '6LcTyAYTAAAAAFh2-uDzQ_2N-npBtZS1oZbXe31z', 0),
(2841, 0, 'google_captcha', 'google_captcha_key', '6LcTyAYTAAAAAD3hKJNuJVIZbRjJRo33MbF4qF7n', 0),
(4195, 0, 'pavverticalmenu_params', 'params', '[{"submenu":1,"subwidth":700,"id":55,"cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-83","colwidth":4},{"widgets":"wid-84","colwidth":4},{"widgets":"wid-85","colwidth":4}]}]},{"submenu":1,"subwidth":400,"id":56,"cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-86","colwidth":12}]}]},{"submenu":1,"subwidth":700,"id":58,"cols":1,"group":0,"rows":[{"cols":[{"widgets":"wid-87","colwidth":6},{"widgets":"wid-88","colwidth":6}]}]}]', 0),
(4375, 0, 'theme_default', 'theme_default_image_thumb_width', '570', 0),
(4374, 0, 'theme_default', 'theme_default_image_category_height', '180', 0),
(4373, 0, 'theme_default', 'theme_default_image_category_width', '880', 0),
(4372, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(4588, 0, 'themecontrol', 'themecontrol', '{"layout_id":"1","position":"1","cateogry_display_mode":"grid","listing_products_columns":"4","listing_products_columns_small":"2","listing_products_columns_minismall":"1","category_pzoom":"1","product_enablezoom":"1","product_zoomgallery":"slider","product_zoommode":"basic","product_zoomlenssize":"150","product_zoomeasing":"1","product_zoomlensshape":"basic","product_related_column":"0","enable_product_customtab":"1","product_customtab_name":{"1":"Custom tab","2":"Custom tab"},"product_customtab_content":{"1":"&lt;p&gt;Welcome to My Store&lt;\\/p&gt;","2":"&lt;p&gt;Welcome to My Store&lt;\\/p&gt;"},"location_address":"79-99 Beaver Street, New York, NY 10005, USA","location_latitude":"40.705423","location_longitude":"-74.008616","contact_customhtml":{"1":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;","2":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"skin":"","theme_width":"auto","enable_custom_copyright":"0","copyright":"Copyright 2013 Pavothemes.com","enable_offsidebars":"0","enable_paneltool":"1","quickview":"1","logo_type":"logo-theme","footer_layout":"footer-bottom","offcanvas":"megamenu","home_container_full":"1","layout":"fullwidth","icon_box_header":{"1":"&lt;div class=&quot;feature-box clearfix feature-box-v1 feature-box-left &quot;&gt;    &lt;div class=&quot;fbox-icon&quot;&gt;                                    &lt;i class=&quot;fa fa fa-paper-plane-o&quot;&gt;&lt;\\/i&gt;                        &lt;\\/div&gt;    &lt;div class=&quot;fbox-body&quot;&gt;        &lt;h4&gt;            FREE SHIPPING        &lt;\\/h4&gt;                &lt;p&gt;Oder Over $29.00&lt;\\/p&gt;            &lt;\\/div&gt;&lt;\\/div&gt;","2":"&lt;div class=&quot;feature-box clearfix feature-box-v1 feature-box-left &quot;&gt;    &lt;div class=&quot;fbox-icon&quot;&gt;                                    &lt;i class=&quot;fa fa fa-paper-plane-o&quot;&gt;&lt;\\/i&gt;                        &lt;\\/div&gt;    &lt;div class=&quot;fbox-body&quot;&gt;        &lt;h4&gt;            FREE SHIPPING        &lt;\\/h4&gt;                &lt;p&gt;Oder Over $29.00&lt;\\/p&gt;            &lt;\\/div&gt;&lt;\\/div&gt;"},"widget_social_network":{"1":"&lt;ul class=&quot;list-inline social-icon-list&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-linkedin&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;","2":"&lt;ul class=&quot;list-inline social-icon-list&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-google-plus&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;bo-social-outline-light radius-x fa fa-linkedin&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;"},"widget_about_us":{"1":"&lt;div class=&quot;panel-heading&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;h4 class=&quot;panel-title&quot;&gt;CONTACT US&lt;\\/h4&gt;\\t\\t\\t\\t\\t\\t&lt;\\/div&gt;\\t\\t\\t\\t\\t\\t&lt;ul class=&quot;list-unstyled&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;PO Box 1612 Collins Street NYC&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;+801 123 456 78 &lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;textbox&quot;&gt;Contact@Domain.com&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;","2":"&lt;div class=&quot;panel-heading&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;h4 class=&quot;panel-title&quot;&gt;CONTACT US&lt;\\/h4&gt;\\t\\t\\t\\t\\t\\t&lt;\\/div&gt;\\t\\t\\t\\t\\t\\t&lt;ul class=&quot;list-unstyled&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;PO Box 1612 Collins Street NYC&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;+801 123 456 78 &lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;textbox&quot;&gt;Contact@Domain.com&lt;\\/a&gt;&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;"},"widget_business_hours":{"1":"&lt;div class=&quot;panel-heading&quot;&gt;  \\t\\t\\t\\t\\t\\t\\t&lt;h4 class=&quot;panel-title&quot;&gt;OPENING TIME&lt;\\/h4&gt;  \\t\\t\\t\\t\\t\\t&lt;\\/div&gt;  \\t\\t\\t\\t\\t\\t&lt;ul class=&quot;list-unstyled&quot;&gt;  \\t\\t\\t\\t\\t\\t\\t&lt;li&gt;Mon - Fri: ------------- 8am - 5pm&lt;\\/li&gt;  \\t\\t\\t\\t\\t\\t\\t&lt;li&gt;Sat - Sun: ------------- 8am - 11am&lt;\\/li&gt;  \\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;","2":"&lt;div class=&quot;panel-heading&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;h4 class=&quot;panel-title&quot;&gt;OPENING TIME&lt;\\/h4&gt;\\t\\t\\t\\t\\t\\t&lt;\\/div&gt;\\t\\t\\t\\t\\t\\t&lt;ul class=&quot;list-unstyled&quot;&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;Mon - Fri: ------------- 8am - 5pm&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t\\t&lt;li&gt;Sat - Sun: ------------- 8am - 11am&lt;\\/li&gt;\\t\\t\\t\\t\\t\\t&lt;\\/ul&gt;"},"enable_customfont":"0","type_fonts1":"standard","normal_fonts1":"inherit","google_url1":"","google_family1":"","fontsize1":"inherit","type_fonts2":"standard","normal_fonts2":"inherit","google_url2":"","google_family2":"","fontsize2":"inherit","type_fonts3":"standard","normal_fonts3":"inherit","google_url3":"","google_family3":"","fontsize3":"inherit","type_fonts4":"standard","normal_fonts4":"Verdana, Geneva, sans-serif","google_url4":"","google_family4":"","body_selector4":"","block_showcase":"","block_promotion":"","block_footer_top":"","block_footer_center":"","block_footer_bottom":"","enable_compress_css":"","exclude_css_files":"bootstrap.css","customize_theme":"","custom_css":"","custom_javascript":""}', 1),
(4566, 0, 'config', 'config_compression', '0', 0),
(4567, 0, 'config', 'config_secure', '0', 0),
(4568, 0, 'config', 'config_password', '1', 0),
(4569, 0, 'config', 'config_shared', '0', 0),
(4563, 0, 'config', 'config_maintenance', '0', 0),
(4564, 0, 'config', 'config_seo_url', '0', 0),
(4565, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4562, 0, 'config', 'config_mail_alert', '', 0),
(4536, 0, 'config', 'config_stock_warning', '0', 0),
(4537, 0, 'config', 'config_stock_checkout', '0', 0),
(4538, 0, 'config', 'config_affiliate_approval', '0', 0),
(4539, 0, 'config', 'config_affiliate_auto', '0', 0),
(4540, 0, 'config', 'config_affiliate_commission', '5', 0),
(4541, 0, 'config', 'config_affiliate_id', '4', 0),
(4542, 0, 'config', 'config_affiliate_mail', '0', 0),
(4543, 0, 'config', 'config_return_id', '0', 0),
(4544, 0, 'config', 'config_return_status_id', '2', 0),
(4545, 0, 'config', 'config_captcha', 'google_captcha', 0),
(4546, 0, 'config', 'config_captcha_page', '["register","review","return","contact"]', 1),
(4547, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(4548, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(4549, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(4550, 0, 'config', 'config_ftp_port', '21', 0),
(4551, 0, 'config', 'config_ftp_username', '', 0),
(4552, 0, 'config', 'config_ftp_password', '', 0),
(4553, 0, 'config', 'config_ftp_root', '', 0),
(4554, 0, 'config', 'config_ftp_status', '0', 0),
(4555, 0, 'config', 'config_mail_protocol', 'mail', 0),
(4556, 0, 'config', 'config_mail_parameter', '', 0),
(4557, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(4558, 0, 'config', 'config_mail_smtp_username', '', 0),
(4559, 0, 'config', 'config_mail_smtp_password', '', 0),
(4560, 0, 'config', 'config_mail_smtp_port', '25', 0),
(4561, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(4532, 0, 'config', 'config_fraud_status_id', '7', 0),
(4533, 0, 'config', 'config_order_mail', '0', 0),
(4534, 0, 'config', 'config_api_id', '6', 0),
(4535, 0, 'config', 'config_stock_display', '0', 0),
(4531, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(4530, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(4529, 0, 'config', 'config_order_status_id', '1', 0),
(4528, 0, 'config', 'config_checkout_id', '5', 0),
(4527, 0, 'config', 'config_checkout_guest', '1', 0),
(4526, 0, 'config', 'config_cart_weight', '1', 0),
(4525, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(4524, 0, 'config', 'config_account_mail', '0', 0),
(4523, 0, 'config', 'config_account_id', '3', 0),
(4371, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(4370, 0, 'theme_default', 'theme_default_status', '1', 0),
(4369, 0, 'theme_default', 'theme_default_directory', 'pav_krstore', 0),
(4522, 0, 'config', 'config_login_attempts', '5', 0),
(4521, 0, 'config', 'config_customer_price', '0', 0),
(4520, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(4519, 0, 'config', 'config_customer_group_id', '1', 0),
(4518, 0, 'config', 'config_customer_online', '0', 0),
(4517, 0, 'config', 'config_tax_customer', 'shipping', 0),
(4516, 0, 'config', 'config_tax_default', 'shipping', 0),
(4515, 0, 'config', 'config_tax', '1', 0),
(4514, 0, 'config', 'config_voucher_max', '1000', 0),
(4513, 0, 'config', 'config_voucher_min', '1', 0),
(4512, 0, 'config', 'config_review_mail', '0', 0),
(4511, 0, 'config', 'config_review_guest', '1', 0),
(4508, 0, 'config', 'config_product_count', '1', 0),
(4509, 0, 'config', 'config_limit_admin', '20', 0),
(4510, 0, 'config', 'config_review_status', '1', 0),
(4507, 0, 'config', 'config_weight_class_id', '1', 0),
(4506, 0, 'config', 'config_length_class_id', '1', 0),
(4505, 0, 'config', 'config_currency_auto', '1', 0),
(4503, 0, 'config', 'config_admin_language', 'en-gb', 0),
(4504, 0, 'config', 'config_currency', 'USD', 0),
(4502, 0, 'config', 'config_language', 'en-gb', 0),
(4499, 0, 'config', 'config_comment', '', 0),
(4500, 0, 'config', 'config_country_id', '222', 0),
(4501, 0, 'config', 'config_zone_id', '3563', 0),
(4498, 0, 'config', 'config_open', 'Mon - Fri: --------------- 8am - 5pm\r\nSat: -------------------- 8am - 11am\r\nSun: --------------------- Closed\r\nWe work all the holidays', 0),
(4497, 0, 'config', 'config_image', '', 0),
(4496, 0, 'config', 'config_fax', '+84 169 388 1554', 0),
(4495, 0, 'config', 'config_telephone', '0169 388 1554', 0),
(4494, 0, 'config', 'config_email', 'tdesign91@gmail.com', 0),
(4492, 0, 'config', 'config_address', 'Beauty Store Online, 6762 33 Ave N, St Petersburg FL 33710', 0),
(4493, 0, 'config', 'config_geocode', '', 0),
(4491, 0, 'config', 'config_owner', 'Pav Kr Store - Responsive Opencart', 0),
(4490, 0, 'config', 'config_name', 'Pav Kr Store - Responsive Opencart', 0),
(4489, 0, 'config', 'config_layout_id', '4', 0),
(4488, 0, 'config', 'config_theme', 'theme_default', 0),
(4487, 0, 'config', 'config_meta_keyword', '', 0),
(4486, 0, 'config', 'config_meta_description', 'Pav Kr Store - Responsive Opencart', 0),
(4485, 0, 'config', 'config_meta_title', 'Pav Kr Store - Responsive Opencart', 0),
(4390, 0, 'theme_default', 'theme_default_image_cart_height', '87', 0),
(4391, 0, 'theme_default', 'theme_default_image_location_width', '65', 0),
(4392, 0, 'theme_default', 'theme_default_image_location_height', '87', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2016-04-13 16:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', 90.0000, 'P', '2011-03-09 21:17:10', '2016-04-12 13:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(130, 9, 86, 'store', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=905 ;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(836, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(835, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(877, 'product_id=42', 'test'),
(789, 'category_id=34', 'mp3-players'),
(781, 'category_id=36', 'test2'),
(774, 'category_id=18', 'laptop-notebook'),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(777, 'category_id=25', 'component'),
(778, 'category_id=29', 'mouse'),
(779, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(782, 'category_id=30', 'printer'),
(783, 'category_id=31', 'scanner'),
(784, 'category_id=32', 'web-camera'),
(785, 'category_id=57', 'tablet'),
(786, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(788, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(878, 'product_id=30', 'canon-eos-5d'),
(840, 'product_id=47', 'hp-lp3065'),
(879, 'product_id=28', 'htc-touch-hd'),
(886, 'product_id=43', 'macbook'),
(813, 'product_id=44', 'macbook-air'),
(881, 'product_id=45', 'macbook-pro'),
(889, 'product_id=31', 'nikon-d300'),
(882, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(884, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(883, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(837, 'product_id=41', 'imac'),
(887, 'product_id=40', 'iphone'),
(885, 'product_id=36', 'ipod-nano'),
(880, 'product_id=34', 'ipod-shuffle'),
(888, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(858, 'blog_id=7', ''),
(859, 'blog_id=9', ''),
(860, 'blog_id=10', ''),
(861, 'blog_id=11', ''),
(893, 'blog_id=14', ''),
(891, 'blog_id=12', ''),
(892, 'blog_id=13', ''),
(897, 'blogcategory_id=21', ''),
(896, 'blogcategory_id=22', ''),
(898, 'blogcategory_id=20', ''),
(899, 'blogcategory_id=26', ''),
(900, 'blogcategory_id=24', ''),
(901, 'blogcategory_id=23', ''),
(902, 'blogcategory_id=27', ''),
(903, 'blogcategory_id=28', ''),
(904, 'blogcategory_id=29', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'e0aa28dc94efd42433bec002da4fc1fcda2bc9d6', 'NOmeUFHWx', 'John', 'Doe', 'tdesign91@gmail.com', '', '', '::1', 1, '2016-04-12 08:03:52'),
(2, 10, 'demo', 'b248350b6465cfff83254b8911ed2c89f5c97d47', '0NqbjJmXA', 'demo', 'demo', 'demo@gmail.com', '', '', '', 1, '2016-03-31 15:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","startup\\/error","startup\\/event","startup\\/language","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/setting","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/themecontrol","module\\/pavmegamenu","module\\/pavverticalmenu","module\\/pavblogcategory","module\\/pavblogcomment","module\\/pavcarousel","module\\/pavhomebuilder","module\\/pavsliderlayer","module\\/special","module\\/bestseller","module\\/html","module\\/pavbloglatest","module\\/pavnewsletter","module\\/pavtestimonial","module\\/pavblog","module\\/filter","module\\/banner","captcha\\/google_captcha","captcha\\/basic_captcha","captcha\\/google_captcha","module\\/pavdeals","module\\/pavautosearch","module\\/pavtestimonial","module\\/latest","module\\/pavsliderlayer","module\\/pavsliderlayer","module\\/pavcarousel"],"modify":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","startup\\/error","startup\\/event","startup\\/language","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/setting","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/themecontrol","module\\/pavmegamenu","module\\/pavverticalmenu","module\\/pavblogcategory","module\\/pavblogcomment","module\\/pavcarousel","module\\/pavhomebuilder","module\\/pavsliderlayer","module\\/special","module\\/bestseller","module\\/html","module\\/pavbloglatest","module\\/pavnewsletter","module\\/pavtestimonial","module\\/pavblog","module\\/filter","module\\/banner","captcha\\/google_captcha","captcha\\/basic_captcha","captcha\\/google_captcha","module\\/pavdeals","module\\/pavautosearch","module\\/pavtestimonial","module\\/latest","module\\/pavsliderlayer","module\\/pavsliderlayer","module\\/pavcarousel"]}'),
(10, 'Demonstration', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/pavautosearch","module\\/pavblog","module\\/pavblogcategory","module\\/pavblogcomment","module\\/pavbloglatest","module\\/pavcarousel","module\\/pavdeals","module\\/pavhomebuilder","module\\/pavmegamenu","module\\/pavnewsletter","module\\/pavsliderlayer","module\\/pavtestimonial","module\\/pavverticalmenu","module\\/pp_button","module\\/pp_login","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/slideshow","module\\/special","module\\/store","module\\/themecontrol","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission"]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu`
--

CREATE TABLE IF NOT EXISTS `oc_verticalmenu` (
  `verticalmenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `icon` text,
  PRIMARY KEY (`verticalmenu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `oc_verticalmenu`
--

INSERT INTO `oc_verticalmenu` (`verticalmenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `icon`) VALUES
(1, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', -5, 34, 47, 0, ''),
(45, '', 0, 2, '', '', '', '', '', '1', '', 2, 1, '1', 0, 1, 0, 0, 0, '', '', 0, 'top', '', '', '', '', 0, 0, 0, 0, ''),
(64, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=74', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, ''),
(65, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=81', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, ''),
(66, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=64', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, ''),
(67, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=77', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, ''),
(68, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=69', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, ''),
(69, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=85', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, ''),
(70, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=74_76', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, ''),
(71, '', 1, 0, '', '', '', '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, 'index.php?route=product/category&amp;path=69_84', '', 0, 'top', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_description`
--

CREATE TABLE IF NOT EXISTS `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`verticalmenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_description`
--

INSERT INTO `oc_verticalmenu_description` (`verticalmenu_id`, `language_id`, `title`, `description`) VALUES
(65, 1, 'BEAUTY', ''),
(65, 2, 'BEAUTY', ''),
(66, 1, 'PERSONAL CARE', ''),
(66, 2, 'PERSONAL CARE', ''),
(67, 1, 'VITAMINS &amp; SUPPLEMENTS', ''),
(67, 2, 'VITAMINS &amp; SUPPLEMENTS', ''),
(68, 1, 'BABY NEEDS', ''),
(68, 2, 'BABY NEEDS', ''),
(69, 1, 'DIET &amp; FITNESS', ''),
(64, 1, 'MEDICINE &amp; HEALTH', ''),
(64, 2, 'MEDICINE &amp; HEALTH', ''),
(69, 2, 'DIET &amp; FITNESS', ''),
(70, 1, 'SEXUAL HEALTH', ''),
(70, 2, 'SEXUAL HEALTH', ''),
(71, 1, 'SUPPORT &amp; BRACES', ''),
(71, 2, 'SUPPORT &amp; BRACES', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_widgets`
--

CREATE TABLE IF NOT EXISTS `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

INSERT INTO `oc_verticalmenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(2, 'Dermo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(10, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:27:"Video Opencart Installation";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:27:"Video Opencart Installation";s:12:"addition_cls";s:0:"";s:10:"video_link";s:40:"http://www.youtube.com/embed/cUhPA5qIxDQ";s:5:"width";s:3:"500";s:6:"height";s:3:"281";s:9:"subinfo_3";s:3:"300";s:9:"subinfo_1";s:3:"300";}', 0),
(8, '', 'html', 'a:9:{s:4:"wkey";s:1:"8";s:5:"wtype";s:4:"html";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_3";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:13:"htmlcontent_1";s:991:"&lt;ul class=&quot;list&quot;&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=62&quot;&gt;Dresses&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=63&quot;&gt;New&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=64&quot;&gt;Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=65&quot;&gt;Tops&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=66&quot;&gt;Bottoms&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=67&quot;&gt;Jewellery&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=68&quot;&gt;Hair Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=69&quot;&gt;Sunglasses&lt;/a&gt;  &lt;/li&gt;&lt;/ul&gt;";}', 0),
(9, '', 'product', 'a:10:{s:4:"wkey";s:1:"0";s:5:"wtype";s:7:"product";s:11:"widget_name";s:15:"Products Latest";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:15:"Products Latest";s:12:"addition_cls";s:7:"sidebar";s:10:"product_id";s:2:"34";s:11:"image_width";s:3:"200";s:12:"image_height";s:3:"200";}', 0),
(11, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"11";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:4:"list";s:6:"catids";s:23:"17,34,24,33,25,26,27,57";}', 0),
(15, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:6:"newest";}', 0),
(16, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:15:"Products Latest";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:15:"Products Latest";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:7:"special";}', 0),
(17, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:27:"Video Opencart Installation";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:27:"Video Opencart Installation";s:12:"addition_cls";s:0:"";s:10:"video_link";s:40:"http://www.youtube.com/embed/cUhPA5qIxDQ";s:5:"width";s:3:"500";s:6:"height";s:3:"281";s:9:"subinfo_3";s:3:"300";s:9:"subinfo_1";s:3:"300";}', 0),
(18, '', 'categories_list', 'a:8:{s:4:"wkey";s:1:"0";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:6:"catids";s:20:"17,34,24,33,25,26,57";}', 0),
(19, '', 'product_list', 'a:15:{s:4:"wkey";s:2:"19";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:16:"Products Spacial";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:15:"Products Latest";s:14:"widget_title_2";s:15:"Products Latest";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:0:"";s:4:"size";s:0:"";s:5:"limit";s:1:"4";s:6:"column";s:1:"4";s:12:"itemsperpage";s:1:"4";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:10:"bestseller";}', 0),
(58, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"58";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:10:"Automative";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Automative";s:14:"widget_title_2";s:10:"Automative";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"8";}', 0),
(21, '', 'html', 'a:9:{s:4:"wkey";s:2:"21";s:5:"wtype";s:4:"html";s:11:"widget_name";s:17:"Makes a photoshop";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:17:"Makes a photoshop";s:14:"widget_title_2";s:17:"Makes a photoshop";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:295:"&lt;div class=&quot;content &quot;&gt;    &lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;&lt;/div&gt;";s:13:"htmlcontent_2";s:293:"&lt;div class=&quot;content &quot;&gt;    &lt;h3 class=&quot;widget-title&quot;&gt;&lt;span&gt;Makes a photoshop&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;/div&gt;";}', 0),
(23, '', 'html', 'a:9:{s:4:"wkey";s:2:"23";s:5:"wtype";s:4:"html";s:11:"widget_name";s:17:"Makes a photoshop";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:17:"Makes a photoshop";s:14:"widget_title_4";s:17:"Makes a photoshop";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:145:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;";s:13:"htmlcontent_4";s:145:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;";}', 0),
(27, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"27";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"categories";s:14:"widget_title_4";s:10:"categories";s:12:"addition_cls";s:7:"bullets";s:6:"catids";s:20:"17,24,33,42,45,46,57";}', 0),
(29, '', 'product_list', 'a:9:{s:4:"wkey";s:2:"29";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:16:"Products Special";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:16:"Products Special";s:14:"widget_title_4";s:16:"Products Special";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"3";s:9:"list_type";s:7:"special";}', 0),
(31, '', 'video', 'a:12:{s:4:"wkey";s:2:"31";s:5:"wtype";s:5:"video";s:11:"widget_name";s:20:"Video Install Widget";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:20:"Video Install Widget";s:14:"widget_title_4";s:20:"Video Install Widget";s:12:"addition_cls";s:0:"";s:10:"video_link";s:42:"http://www.youtube.com/watch?v=lzY4lkT8ElU";s:5:"width";s:5:"465px";s:6:"height";s:5:"281px";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_4";s:3:"300";}', 0),
(32, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"10";}', 0),
(33, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"10";}', 0),
(34, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"11";}', 0),
(35, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"11";}', 0),
(36, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(37, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(38, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(39, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(40, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(41, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(42, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(43, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"asdfasdf";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"asdfadsf";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(44, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(45, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(46, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(47, '', 'button', 'a:13:{s:4:"wkey";s:1:"0";s:5:"wtype";s:6:"button";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:12:"button_title";s:4:"Save";s:4:"href";s:23:"http://www.leotheme.com";s:12:"color_button";s:11:"btn-default";s:4:"icon";s:0:"";s:4:"size";s:6:"btn-sm";s:8:"el_class";s:0:"";}', 0),
(48, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(49, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(50, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(51, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(52, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(53, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(54, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(55, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"55";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"8";}', 0),
(56, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"56";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"8";}', 0),
(60, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"60";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:6:"Makeup";s:14:"widget_title_2";s:6:"Makeup";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(62, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"62";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(63, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(67, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"67";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Popular";s:14:"widget_title_2";s:7:"Popular";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"4";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"1";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:7:"popular";s:14:"choose_product";s:0:"";}', 0),
(69, '', 'html', 'a:9:{s:4:"wkey";s:2:"69";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"WELCOME TO THE CLUB";s:14:"widget_title_2";s:19:"WELCOME TO THE CLUB";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:853:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by Dominique Mandonnaud in 1970. Sephora''s unique, open-sell environment features an ever-increasing amount of classic and emerging brands across a broad range of product categories including skincare, color, fragrance, body, smilecare, and haircare, in addition to Sephora''s own private label.&lt;/p&gt;&lt;p&gt; Today, Sephora is not only the leading chain of perfume and cosmetics stores in France, but also a powerful beauty presence in countries around the world. To build the most knowledgeable and professional team of product consultants in the beauty industry, Sephora developed &quot;Science of Sephora.&quot; This program ensures that our team is skilled to identify skin types, have knowledge of skin physiology, the history of makeup, application techniques.&lt;/p&gt;";s:13:"htmlcontent_2";s:852:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by Dominique Mandonnaud in 1970. Sephora''s unique, open-sell environment features an ever-increasing amount of classic and emerging brands across a broad range of product categories including skincare, color, fragrance, body, smilecare, and haircare, in addition to Sephora''s own private label.&lt;/p&gt;&lt;p&gt;Today, Sephora is not only the leading chain of perfume and cosmetics stores in France, but also a powerful beauty presence in countries around the world. To build the most knowledgeable and professional team of product consultants in the beauty industry, Sephora developed &quot;Science of Sephora.&quot; This program ensures that our team is skilled to identify skin types, have knowledge of skin physiology, the history of makeup, application techniques.&lt;/p&gt;";}', 0),
(70, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:27:"Styling product &amp; tools";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"15";}', 0),
(71, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:6:"Makeup";s:14:"widget_title_2";s:6:"Makeup";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(72, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(73, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(74, '', 'product_list', 'a:14:{s:4:"wkey";s:2:"74";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Popular";s:14:"widget_title_2";s:7:"Popular";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"4";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"1";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:7:"special";s:14:"choose_product";s:0:"";}', 0),
(75, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"WELCOME TO THE CLUB";s:14:"widget_title_2";s:19:"WELCOME TO THE CLUB";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:875:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;&lt;p&gt; Today, Sephora is not only the leading chain of \r\nperfume and cosmetics stores in France, but also a powerful beauty \r\npresence in countries around the world. To build the most knowledgeable \r\nand professional team of product consultants in the beauty industry, \r\nSephora developed &quot;Science of Sephora.&quot; This program ensures that our \r\nteam is skilled to identify skin types, have knowledge of skin \r\nphysiology, the history of makeup, application techniques.&lt;/p&gt;";s:13:"htmlcontent_2";s:875:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;&lt;p&gt; Today, Sephora is not only the leading chain of \r\nperfume and cosmetics stores in France, but also a powerful beauty \r\npresence in countries around the world. To build the most knowledgeable \r\nand professional team of product consultants in the beauty industry, \r\nSephora developed &quot;Science of Sephora.&quot; This program ensures that our \r\nteam is skilled to identify skin types, have knowledge of skin \r\nphysiology, the history of makeup, application techniques.&lt;/p&gt;";}', 0),
(76, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:27:"Styling product &amp; tools";s:14:"widget_title_2";s:27:"Styling product &amp; tools";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"15";}', 0),
(77, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:6:"Makeup";s:14:"widget_title_2";s:6:"Makeup";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(78, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(79, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:4:"Hair";s:14:"widget_title_2";s:4:"Hair";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"10";}', 0),
(80, '', 'product_list', 'a:14:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Popular";s:14:"widget_title_2";s:7:"Popular";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"4";s:12:"itemsperpage";s:1:"4";s:4:"cols";s:1:"1";s:5:"width";s:3:"100";s:6:"height";s:3:"100";s:9:"list_type";s:7:"popular";s:14:"choose_product";s:0:"";}', 0),
(81, '', 'html', 'a:9:{s:4:"wkey";s:2:"81";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:19:"WELCOME TO THE CLUB";s:14:"widget_title_2";s:19:"WELCOME TO THE CLUB";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:386:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;/p&gt;";s:13:"htmlcontent_2";s:396:"&lt;p&gt;Sephora is a visionary beauty-retail concept founded in France by \r\nDominique Mandonnaud in 1970. Sephora''s unique, open-sell environment \r\nfeatures an ever-increasing amount of classic and emerging brands across\r\n a broad range of product categories including skincare, color, \r\nfragrance, body, smilecare, and haircare, in addition to Sephora''s own \r\nprivate label.&lt;br&gt;&lt;/p&gt;";}', 0),
(82, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:27:"Styling product &amp; tools";s:14:"widget_title_2";s:27:"Styling product &amp; tools";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"81";s:5:"limit";s:2:"15";}', 0),
(83, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:9:"Skin care";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Skin care";s:14:"widget_title_2";s:9:"Skin care";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:2:"10";}', 0),
(84, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:7:"Make up";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:7:"Make up";s:14:"widget_title_2";s:7:"Make up";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"64";s:5:"limit";s:2:"10";}', 0),
(85, '', 'html', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:8:"Pharmacy";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Pharmacy";s:14:"widget_title_2";s:8:"Pharmacy";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:258:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris.&lt;/p&gt;";s:13:"htmlcontent_2";s:258:"&lt;p&gt;Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris. Proin gravida nibh Velit auctor bibendum auctor. Nisi elituat ipsum odio sit Amet nibh ulpate Cursus a sit amet mauris.&lt;/p&gt;";}', 0),
(86, '', 'product_category', 'a:12:{s:4:"wkey";s:2:"86";s:5:"wtype";s:16:"product_category";s:11:"widget_name";s:12:"Best sellers";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"Best sellers";s:14:"widget_title_2";s:12:"Best sellers";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"69";s:5:"limit";s:1:"3";s:6:"column";s:1:"3";s:11:"image_width";s:3:"270";s:12:"image_height";s:3:"360";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4232 ;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
