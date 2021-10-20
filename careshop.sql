-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 07:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `careshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_abandonedcart`
--

CREATE TABLE `oc_abandonedcart` (
  `abandonedcart_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `email_notify` tinyint(4) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `lastvisit` text NOT NULL,
  `lastvisit_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_abandonedcart_history`
--

CREATE TABLE `oc_abandonedcart_history` (
  `abandonedcart_history_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `email_notify` tinyint(4) NOT NULL,
  `email_notify_order` tinyint(4) NOT NULL,
  `order_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_abandoned_template`
--

CREATE TABLE `oc_abandoned_template` (
  `abandoned_template_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_abandoned_template`
--

INSERT INTO `oc_abandoned_template` (`abandoned_template_id`, `status`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_abandoned_template_description`
--

CREATE TABLE `oc_abandoned_template_description` (
  `abandoned_template_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_abandoned_template_description`
--

INSERT INTO `oc_abandoned_template_description` (`abandoned_template_id`, `language_id`, `title`, `subject`, `message`) VALUES
(5, 1, 'Abandoned Cart', 'You have amazing products waiting for you...', '&lt;p&gt;Thank you {firstname} {lastname} for becoming a member at {store} !&lt;/p&gt;&lt;p&gt;You recently added items in your shopping cart. If you have not purchased and removed them, then simply login to your &lt;a href=&quot;http://localhost/careshop/index.php?route=account/login&quot;&gt;account&lt;/a&gt; and visit your shopping cart at the url given below and complete your order.&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;http://localhost/careshop/&quot;&gt;http://localhost/careshop/&lt;/a&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;{cart}&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(67, 60, 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 223, 3669, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
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
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '9hj9XkuSJ90K0aGXClydEqSv0NGu7ITWuEWD0wegIdU2nXO1GkSGGQsUtXXXDbfDLMJTk9mlyeIAX0S7KaXKp3Fq1WXlDYVbD3TqYFBVSUNYMFGN6BxNRe5N0aIk0dxCA4GD9v4i6ubOFpIk5vFEq25VFB6iYy0KJaJGRFbNucAF5MKAnx314c6NKtp5tkKNREUaozRoAlTXktZh6FQe6OAbQvzJxocwywgvgWcnT1PDgmRtsZHpMp9QUzitYBnT', 1, '2019-03-03 14:39:12', '2019-03-03 14:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '24.229.186.138'),
(2, 1, '10.0.1.36'),
(3, 1, '10.0.2.36'),
(4, 1, '10.0.2.77'),
(5, 1, '10.0.1.31'),
(6, 1, '10.0.2.69'),
(7, 1, '10.0.1.151'),
(8, 1, '10.0.1.147'),
(9, 1, '10.0.1.95'),
(10, 1, '10.0.2.60'),
(11, 1, '10.0.2.97'),
(12, 1, '10.0.1.206'),
(13, 1, '10.0.1.19'),
(14, 1, '10.0.2.149'),
(15, 1, '10.0.1.42'),
(16, 1, '10.0.2.182'),
(17, 1, '10.0.2.20'),
(18, 1, '10.0.1.144'),
(19, 1, '10.0.2.14'),
(20, 1, '10.0.1.207'),
(21, 1, '10.0.1.195'),
(22, 1, '10.0.2.153'),
(23, 1, '10.0.2.95'),
(24, 1, '10.0.1.216'),
(25, 1, '10.0.2.200'),
(26, 1, '10.0.1.89'),
(27, 1, '10.0.1.130'),
(28, 1, '10.0.2.127'),
(29, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(304, 1, 'T8xWrfTyzxikRhhpc2d72pLYWD7ARWW6', 'cnjlen6pdiqq3h50lohuedf5k9', '', '::1', '2021-10-18 23:09:51', '2021-10-18 23:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(12, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(12, 1, 'Short Description');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Description');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(106, 7, 1, 'Bodiscinece', '', 'catalog/slider/bodisence_2.jpg', 2),
(105, 7, 1, 'Free Shipping', '', 'catalog/slider/bodisence.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(80, 0, 10, '2a9fnisa9n0943e5138gih1cv4', 161, 0, '[]', 1, '2020-09-22 18:04:37'),
(81, 0, 10, '2a9fnisa9n0943e5138gih1cv4', 190, 0, '{\"251\":\"86\"}', 1, '2020-09-22 18:04:37'),
(82, 0, 10, '2a9fnisa9n0943e5138gih1cv4', 156, 0, '[]', 1, '2020-09-22 18:04:37'),
(162, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 145, 0, '[]', 2, '2020-11-13 18:58:44'),
(163, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 147, 0, '[]', 2, '2020-11-13 18:58:44'),
(164, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 149, 0, '[]', 1, '2020-11-13 18:58:44'),
(165, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 150, 0, '[]', 2, '2020-11-13 18:58:44'),
(166, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 152, 0, '[]', 2, '2020-11-13 18:58:44'),
(167, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 154, 0, '[]', 1, '2020-11-13 18:58:44'),
(168, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 175, 0, '[]', 1, '2020-11-13 18:58:44'),
(169, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 178, 0, '{\"245\":\"73\"}', 1, '2020-11-13 18:58:44'),
(170, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 179, 0, '{\"246\":\"75\"}', 1, '2020-11-13 18:58:44'),
(171, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 182, 0, '[]', 1, '2020-11-13 18:58:44'),
(173, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 343, 0, '{\"254\":\"92\"}', 3, '2020-11-13 18:58:44'),
(184, 0, 18, '2bk77d18q0n5to089l4c9j1b45', 148, 0, '[]', 1, '2020-11-17 19:54:38'),
(193, 0, 3, '9sohimvgulkq8l57a8u4dpea60', 178, 0, '{\"245\":\"73\"}', 1, '2020-11-23 23:04:20'),
(330, 0, 26, 'ui5glciv60ov7qol1kh4gnmcs7', 184, 0, '[]', 1, '2020-12-07 16:50:32'),
(331, 0, 26, 'ui5glciv60ov7qol1kh4gnmcs7', 203, 0, '[]', 1, '2020-12-07 16:50:32'),
(332, 0, 26, 'ui5glciv60ov7qol1kh4gnmcs7', 227, 0, '[]', 1, '2020-12-07 16:50:32'),
(382, 0, 25, 'leiqe0qafjt6v426e7qjmf54t4', 394, 0, '[]', 1, '2020-12-11 14:26:10'),
(406, 0, 0, 'vsjucjl42e4s29qse8jfvjgo01', 384, 0, '[]', 2, '2020-12-15 11:39:19'),
(407, 0, 0, 'vsjucjl42e4s29qse8jfvjgo01', 306, 0, '[]', 1, '2020-12-15 11:46:54'),
(420, 0, 0, 'dcut6nmv7ej4gmftfgmvjds341', 384, 0, '[]', 1, '2020-12-16 02:09:50'),
(421, 0, 0, 'dcut6nmv7ej4gmftfgmvjds341', 192, 0, '{\"250\":\"84\"}', 1, '2020-12-16 02:11:23'),
(451, 0, 0, 'c58k9b5qqqqnodscurutjqpnt3', 385, 0, '[]', 1, '2020-12-17 20:09:32'),
(467, 0, 0, 'rl309vji3bingp5jg5l1vhqlc6', 389, 0, '[]', 1, '2020-12-17 21:58:13'),
(472, 0, 0, '25sctjpme5q3n96jc17vve92e0', 121, 0, '[]', 1, '2020-12-17 22:47:14'),
(473, 0, 0, 'ba441l2u6vmg8uo16k45bierm6', 153, 0, '[]', 1, '2020-12-18 00:18:32'),
(480, 0, 0, 'thsddhdq8h532l16qp4a0cm8p6', 420, 0, '[]', 1, '2020-12-18 01:17:43'),
(481, 0, 0, 'thsddhdq8h532l16qp4a0cm8p6', 168, 0, '[]', 1, '2020-12-18 01:18:09'),
(482, 0, 0, 'thsddhdq8h532l16qp4a0cm8p6', 149, 0, '[]', 1, '2020-12-18 01:19:06'),
(483, 0, 0, 'thsddhdq8h532l16qp4a0cm8p6', 159, 0, '[]', 1, '2020-12-18 01:21:50'),
(484, 0, 0, 'thsddhdq8h532l16qp4a0cm8p6', 417, 0, '[]', 1, '2020-12-18 01:23:37'),
(485, 0, 0, 'thsddhdq8h532l16qp4a0cm8p6', 418, 0, '[]', 1, '2020-12-18 01:24:16'),
(492, 0, 0, '4dke4rfgvg60qsn6odlk8jpmn2', 386, 0, '[]', 1, '2020-12-18 03:36:25'),
(493, 0, 0, 'o5js4fd8osu8lvhjtp3sfr8210', 420, 0, '[]', 2, '2020-12-19 16:47:25'),
(503, 0, 0, 'ianibbn0904k0jc6faq03gq4l7', 389, 0, '[]', 1, '2020-12-20 18:41:50'),
(504, 0, 0, 'mvh04rh7ss526enugv6bmlq4p1', 125, 0, '[]', 1, '2020-12-21 00:57:20'),
(505, 0, 0, 'mvh04rh7ss526enugv6bmlq4p1', 135, 0, '[]', 1, '2020-12-21 00:58:10'),
(506, 0, 0, 'mvh04rh7ss526enugv6bmlq4p1', 129, 0, '{\"243\":\"69\"}', 1, '2020-12-21 00:58:23'),
(507, 0, 0, 'mvh04rh7ss526enugv6bmlq4p1', 134, 0, '{\"241\":\"66\"}', 1, '2020-12-21 01:01:37'),
(523, 0, 0, 'c2kr0cfqptal4aqrko63oouaj7', 347, 0, '[]', 1, '2020-12-21 01:44:35'),
(524, 0, 0, 'k5nv1rdjohgtm4ls33o2end0b7', 124, 0, '[]', 1, '2020-12-21 03:44:28'),
(527, 0, 0, 'bdd6bsmaopqoh5cjtep49bd2o7', 143, 0, '[]', 1, '2020-12-21 20:29:20'),
(540, 0, 0, 'r92p8c5kvdfl0648umrphmkeg2', 138, 0, '[]', 1, '2020-12-24 15:24:16'),
(552, 0, 0, 'rbc5h3buhbcqrgdgli622muja5', 158, 0, '[]', 1, '2020-12-24 16:33:50'),
(558, 1, 0, '5j8rfhrioo3cjeh460co7im672', 387, 0, '[]', 1, '2021-01-02 14:45:55'),
(559, 1, 0, '5j8rfhrioo3cjeh460co7im672', 391, 0, '[]', 1, '2021-01-02 14:45:55'),
(561, 0, 0, 'ihd80q192mdjt3n3h6g0m1j8a6', 167, 0, '[]', 1, '2021-01-06 19:33:17'),
(562, 0, 0, 'ihd80q192mdjt3n3h6g0m1j8a6', 171, 0, '{\"244\":\"72\"}', 1, '2021-01-06 19:35:09'),
(564, 0, 0, 'ihd80q192mdjt3n3h6g0m1j8a6', 128, 0, '[]', 1, '2021-01-06 19:38:10'),
(565, 0, 0, 'ihd80q192mdjt3n3h6g0m1j8a6', 149, 0, '[]', 1, '2021-01-06 19:39:58'),
(566, 0, 0, 'ihd80q192mdjt3n3h6g0m1j8a6', 137, 0, '[]', 1, '2021-01-06 19:42:24'),
(567, 0, 0, 'jgf25c1f47c4i4lgg1u04fjtk7', 152, 0, '[]', 1, '2021-01-09 00:46:48'),
(568, 0, 0, '1edhfuseg7b63bjm1vd13sd2f4', 159, 0, '[]', 1, '2021-01-13 14:57:08'),
(569, 0, 0, '1edhfuseg7b63bjm1vd13sd2f4', 175, 0, '[]', 1, '2021-01-13 14:57:31'),
(576, 0, 0, 'u2top2u7sbcaedqgdvpt6qbkq2', 143, 0, '[]', 1, '2021-01-25 12:49:45'),
(577, 0, 0, 'u2top2u7sbcaedqgdvpt6qbkq2', 121, 0, '[]', 1, '2021-01-25 12:50:58'),
(578, 0, 0, 'u2top2u7sbcaedqgdvpt6qbkq2', 134, 0, '{\"241\":\"65\"}', 1, '2021-01-25 12:56:12'),
(579, 0, 0, 'jj3ioc03gtb3qt5gqrcjh7bb82', 135, 0, '[]', 1, '2021-01-28 13:30:31'),
(580, 0, 0, 'jj3ioc03gtb3qt5gqrcjh7bb82', 129, 0, '{\"243\":\"70\"}', 1, '2021-01-28 13:30:40'),
(581, 0, 0, 'jj3ioc03gtb3qt5gqrcjh7bb82', 121, 0, '[]', 1, '2021-01-28 13:35:20'),
(582, 0, 0, '1fqkl5h93r9j70dchd8qiv0ud5', 121, 0, '[]', 1, '2021-01-28 13:36:59'),
(627, 0, 0, 'k4gk62ph3bt2m7piiiov1em2a3', 171, 0, '{\"244\":\"72\"}', 1, '2021-02-08 14:04:11'),
(628, 0, 0, '4voj3q0hu9l9usj9am340nn7f4', 385, 0, '[]', 1, '2021-02-10 03:49:57'),
(629, 0, 0, 'k75lbdl2u9lvd35s4h76oht104', 170, 0, '[]', 1, '2021-02-11 04:07:14'),
(630, 0, 0, 'k75lbdl2u9lvd35s4h76oht104', 174, 0, '[]', 1, '2021-02-11 04:08:17'),
(631, 0, 0, 'k75lbdl2u9lvd35s4h76oht104', 121, 0, '[]', 1, '2021-02-11 04:11:15'),
(632, 0, 0, 'mapqnjoh1g33bl7ina6kbetqg0', 170, 0, '[]', 1, '2021-02-11 23:51:09'),
(634, 0, 0, 'mapqnjoh1g33bl7ina6kbetqg0', 174, 0, '[]', 1, '2021-02-11 23:52:50'),
(636, 0, 0, 'mapqnjoh1g33bl7ina6kbetqg0', 171, 0, '{\"244\":\"71\"}', 1, '2021-02-11 23:58:58'),
(637, 0, 0, 'mapqnjoh1g33bl7ina6kbetqg0', 173, 0, '[]', 1, '2021-02-11 23:59:59'),
(638, 0, 0, 'mapqnjoh1g33bl7ina6kbetqg0', 172, 0, '[]', 1, '2021-02-12 00:00:21'),
(639, 0, 0, 'u8orbtmlfd2emv3ednmfsa2gq1', 346, 0, '[]', 1, '2021-02-14 14:45:52'),
(640, 0, 0, 'beqs08qarhqo112a8n9clrf894', 122, 0, '[]', 1, '2021-02-17 18:00:23'),
(647, 0, 0, 'm63jekdsmh4cfmb3222fdvtpe1', 385, 0, '[]', 4, '2021-03-05 02:39:41'),
(648, 0, 0, 'arkcpufm1th4t6aso9066r6bh5', 121, 0, '[]', 1, '2021-03-11 11:45:08'),
(649, 0, 0, 'arkcpufm1th4t6aso9066r6bh5', 146, 0, '[]', 1, '2021-03-11 11:47:04'),
(650, 0, 0, 'arkcpufm1th4t6aso9066r6bh5', 131, 0, '{\"239\":\"61\"}', 1, '2021-03-11 11:47:51'),
(651, 0, 0, 'arkcpufm1th4t6aso9066r6bh5', 141, 0, '[]', 1, '2021-03-11 11:48:53'),
(652, 0, 0, 'a25kp6a2aab02jr2foi9infel6', 343, 0, '{\"254\":\"92\"}', 1, '2021-03-16 16:49:11'),
(653, 0, 0, 'soebths5s9fk321e7p7ca111a3', 155, 0, '[]', 1, '2021-03-22 01:33:33'),
(654, 0, 0, 'soebths5s9fk321e7p7ca111a3', 160, 0, '[]', 1, '2021-03-22 01:34:10'),
(660, 0, 0, '5mknvn4m05k99q27hldvb3j6s6', 134, 0, '{\"241\":\"66\"}', 1, '2021-04-02 02:13:51'),
(661, 0, 0, '5mknvn4m05k99q27hldvb3j6s6', 144, 0, '[]', 1, '2021-04-02 02:14:34'),
(662, 0, 0, 'ig9n90iase42f3fkvsme5romf7', 170, 0, '[]', 1, '2021-04-02 11:47:08'),
(664, 0, 0, 'av5vdb9e7c88t63lai9lghn7j5', 149, 0, '[]', 1, '2021-04-04 11:58:36'),
(671, 0, 0, 'cj18854631fjvb4avksovmcjh7', 196, 0, '[]', 1, '2021-04-06 23:14:34'),
(672, 0, 0, 'cj18854631fjvb4avksovmcjh7', 188, 0, '[]', 1, '2021-04-06 23:15:13'),
(681, 0, 0, 'fi3mvokfojiruvuitgm768oq06', 175, 0, '[]', 1, '2021-04-08 00:04:46'),
(682, 0, 0, 'fi3mvokfojiruvuitgm768oq06', 138, 0, '[]', 1, '2021-04-08 00:05:47'),
(691, 0, 0, '17fod10pksne4ri49mkmqfln87', 198, 0, '{\"253\":\"91\"}', 1, '2021-04-17 15:13:34'),
(693, 0, 0, 'o2etl12klat6b8odkie7e7e342', 130, 0, '{\"238\":\"59\"}', 1, '2021-04-30 03:50:14'),
(694, 0, 0, 'o2etl12klat6b8odkie7e7e342', 134, 0, '{\"241\":\"65\"}', 1, '2021-04-30 03:50:26'),
(695, 0, 0, 'm6q4ot191grdov5her82198413', 350, 0, '[]', 1, '2021-05-03 17:57:45'),
(706, 0, 0, '886m2caij0n9kpv21vkit2h7h7', 341, 0, '[]', 1, '2021-05-14 17:03:44'),
(723, 0, 0, 'sv9rm276ncrnruuqs4tfq6j124', 171, 0, '{\"244\":\"71\"}', 1, '2021-06-08 01:30:31'),
(726, 0, 0, 'sv9rm276ncrnruuqs4tfq6j124', 129, 0, '{\"243\":\"69\"}', 1, '2021-06-08 01:32:07'),
(727, 0, 0, 'sv9rm276ncrnruuqs4tfq6j124', 146, 0, '[]', 1, '2021-06-08 01:32:32'),
(728, 0, 0, 'sv9rm276ncrnruuqs4tfq6j124', 126, 0, '[]', 1, '2021-06-08 01:32:47'),
(729, 0, 0, 's6eko662tk9idm5trm4s7b9qd6', 358, 0, '[]', 1, '2021-06-10 13:01:56'),
(731, 0, 0, 'btdvpeajsm30dkvn83rand7ol6', 174, 0, '[]', 1, '2021-06-16 01:05:23'),
(732, 0, 0, 'btdvpeajsm30dkvn83rand7ol6', 171, 0, '{\"244\":\"72\"}', 1, '2021-06-16 01:05:41'),
(741, 0, 0, 'k4cp3le6kqm7p7svial6atn4a2', 181, 0, '[]', 1, '2021-06-26 12:28:13'),
(742, 0, 0, 'd5kfl9p0ci4aneeo6ol0jlavh3', 358, 0, '[]', 1, '2021-06-28 19:24:29'),
(743, 0, 0, 'd5kfl9p0ci4aneeo6ol0jlavh3', 357, 0, '[]', 1, '2021-06-28 19:25:32'),
(746, 0, 0, '2u37edlosnqq2amq7alfu05a57', 162, 0, '[]', 1, '2021-07-01 10:33:33'),
(747, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 121, 0, '[]', 1, '2021-07-01 16:25:35'),
(748, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 160, 0, '[]', 1, '2021-07-01 16:26:05'),
(749, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 129, 0, '{\"243\":\"69\"}', 1, '2021-07-01 16:26:37'),
(750, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 141, 0, '[]', 1, '2021-07-01 16:26:54'),
(751, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 176, 0, '[]', 1, '2021-07-01 16:27:52'),
(752, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 169, 0, '[]', 1, '2021-07-01 16:28:42'),
(753, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 170, 0, '[]', 1, '2021-07-01 16:28:51'),
(754, 0, 0, 's5f2t5gccdiho3usqp1i5humk5', 358, 0, '[]', 1, '2021-07-01 16:29:21'),
(757, 0, 0, '9d0lkg96ehv28hnfu52e3m1j26', 121, 0, '[]', 1, '2021-07-06 16:42:54'),
(758, 0, 0, '9d0lkg96ehv28hnfu52e3m1j26', 133, 0, '{\"240\":\"63\"}', 1, '2021-07-06 16:45:41'),
(760, 0, 0, '5vvjspp67i7nqcvp5egvnk9877', 125, 0, '[]', 1, '2021-07-10 18:34:33'),
(761, 0, 0, 'lbrke8uo8l0oidloio32ssd8t5', 121, 0, '[]', 1, '2021-07-11 22:23:31'),
(763, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 121, 0, '[]', 1, '2021-07-19 17:45:58'),
(764, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 160, 0, '[]', 1, '2021-07-19 17:48:05'),
(765, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 141, 0, '[]', 1, '2021-07-19 17:48:44'),
(766, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 159, 0, '[]', 1, '2021-07-19 17:49:29'),
(767, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 157, 0, '[]', 1, '2021-07-19 17:50:24'),
(768, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 149, 0, '[]', 1, '2021-07-19 17:51:17'),
(769, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 176, 0, '[]', 1, '2021-07-19 17:56:52'),
(770, 0, 0, 'fnh79pt5g9aheesqf5jeoo6t96', 358, 0, '[]', 1, '2021-07-19 18:01:50'),
(797, 0, 0, '8uk5jsfr3hd9ov5fgsvjmqmru7', 162, 0, '[]', 1, '2021-08-05 13:08:54'),
(798, 0, 0, '8uk5jsfr3hd9ov5fgsvjmqmru7', 123, 0, '[]', 1, '2021-08-05 13:09:36'),
(805, 0, 0, 'pre2c218cate100jocerf0o867', 157, 0, '[]', 1, '2021-08-05 17:56:34'),
(828, 0, 0, 'rbsu5laulotjad29cr08krgbt2', 142, 0, '[]', 1, '2021-08-30 12:28:19'),
(833, 0, 0, 'ckiuh5liv7ut7k34r4509di166', 177, 0, '[]', 1, '2021-10-03 21:25:42'),
(834, 0, 0, 'ckiuh5liv7ut7k34r4509di166', 249, 0, '[]', 1, '2021-10-03 21:27:55'),
(835, 0, 0, 'ckiuh5liv7ut7k34r4509di166', 385, 0, '[]', 1, '2021-10-03 21:30:38'),
(845, 0, 0, 'naq9kinakq846rjgvc7psf4lk1', 154, 0, '[]', 1, '2021-10-09 15:34:32'),
(846, 0, 0, 'naq9kinakq846rjgvc7psf4lk1', 144, 0, '[]', 1, '2021-10-09 15:34:45'),
(847, 0, 0, 'naq9kinakq846rjgvc7psf4lk1', 161, 0, '[]', 2, '2021-10-09 15:35:03'),
(859, 0, 0, '234rb37ammr27h5trk5r7vutkb', 121, 0, '[]', 1, '2021-10-18 21:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(108, 'catalog/category/spa-banner.jpg', 0, 1, 1, 5, 1, '2020-05-27 10:03:12', '2021-10-18 22:27:56'),
(104, 'catalog/category/skincare.jpg', 0, 1, 1, 1, 1, '2020-05-27 10:00:36', '2020-05-29 11:45:20'),
(105, 'catalog/category/bodycare.jpg', 0, 1, 1, 2, 1, '2020-05-27 10:01:00', '2020-06-01 07:40:51'),
(107, 'catalog/category/supplement-category.jpg', 0, 1, 1, 4, 1, '2020-05-27 10:02:16', '2021-10-18 22:32:31'),
(110, 'catalog/category/cleasner.jpg', 104, 1, 1, 0, 1, '2020-05-27 10:03:38', '2020-06-03 11:20:55'),
(111, 'catalog/category/toners.jpg', 104, 1, 1, 0, 1, '2020-05-27 10:03:38', '2020-06-04 05:39:42'),
(112, 'catalog/category/day-cream.jpg', 104, 1, 1, 0, 1, '2020-05-27 10:03:38', '2020-06-03 11:26:56'),
(113, 'catalog/category/skincare.jpg', 104, 1, 1, 0, 1, '2020-05-27 10:03:38', '2020-06-01 07:54:05'),
(115, 'catalog/category/mask.jpg', 104, 1, 1, 0, 1, '2020-05-27 10:03:38', '2020-06-03 11:44:55'),
(116, 'catalog/category/eye.jpg', 104, 1, 1, 0, 1, '2020-05-27 10:03:38', '2020-06-04 05:39:23'),
(117, 'catalog/category/suncare.jpg', 104, 1, 1, 0, 1, '2020-05-27 10:03:38', '2020-06-04 05:39:57'),
(119, 'catalog/category/additional-skin.jpg', 104, 1, 1, 1, 0, '2020-05-27 10:03:38', '2021-10-18 21:22:10'),
(120, 'catalog/category/haircare.jpg', 0, 1, 1, 3, 1, '2020-05-27 10:03:38', '2020-06-02 11:08:12'),
(121, '', 0, 1, 1, 4, 1, '2020-06-29 10:46:20', '2020-06-29 10:46:20'),
(122, '', 121, 1, 1, 0, 1, '2020-06-29 10:53:18', '2020-06-29 10:53:18'),
(123, '', 121, 1, 1, 0, 1, '2020-06-29 10:53:40', '2020-06-29 10:54:15'),
(124, '', 121, 1, 1, 0, 1, '2020-06-29 10:54:03', '2020-06-29 10:54:03'),
(125, '', 121, 1, 1, 0, 1, '2020-06-29 10:54:39', '2020-06-29 10:54:39'),
(135, '', 121, 1, 1, 0, 1, '2020-12-08 11:55:51', '2020-12-08 13:12:35'),
(136, '', 0, 1, 1, 6, 1, '2020-12-11 09:35:08', '2020-12-11 09:35:55'),
(138, '', 136, 1, 1, 0, 1, '2020-12-11 09:40:14', '2020-12-11 09:40:14'),
(139, '', 136, 1, 1, 0, 1, '2020-12-11 09:40:33', '2020-12-11 09:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(104, 1, 'SKIN CARE', '', 'SKIN CARE', '', ''),
(105, 1, 'BODY CARE', '', 'BODY CARE', '', ''),
(110, 1, 'CLEANSERS', '', 'CLEANSERS', '', ''),
(111, 1, 'TONERS', '', 'TONERS', '', ''),
(112, 1, 'DAY CREAMS', '', 'DAY CREAMS', '', ''),
(113, 1, 'NIGHT CREAMS', '', 'NIGHT CREAMS', '', ''),
(115, 1, 'MASKS', '', 'MASKS', '', ''),
(116, 1, 'EYE CREAMS', '', 'EYE CREAMS', '', ''),
(117, 1, 'SUNSCREEN', '', 'SUNSCREEN', '', ''),
(119, 1, 'ADDITIONAL SKIN CARE PRODUCTS', '', 'ADDITIONAL SKIN CARE PRODUCTS', '', ''),
(120, 1, 'HAIR CARE', '', 'HAIR CARE', '', ''),
(107, 1, 'SUPPLEMENTS', '', 'SUPPLEMENTS', '', ''),
(108, 1, 'SCENTERED AROMATHERAPY', '', 'SCENTERED AROMATHERAPY', '', ''),
(121, 1, 'GEMS', '', 'GEMS', '', ''),
(122, 1, 'Mantra Gemstone Collection', '', 'Mantra Gemstone Collection', '', ''),
(123, 1, 'Lucky Buddha Beads', '', 'Lucky Buddha Beads', '', ''),
(124, 1, 'Chakra Mala Collection', '', 'Chakra Mala Collection', '', ''),
(125, 1, 'Birthstone Gems Collection', '', 'Birthstone Gems Collection', '', ''),
(135, 1, 'Gemstone Gift Set', '', 'GEMSTONE GIFT SET', '', ''),
(136, 1, 'Makeup', '', 'Makeup', '', ''),
(138, 1, 'Face', '', 'Face', '', ''),
(139, 1, 'Lips', '', 'Lips', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(111, 111, 1),
(111, 104, 0),
(110, 110, 1),
(110, 104, 0),
(104, 104, 0),
(108, 108, 0),
(112, 104, 0),
(112, 112, 1),
(113, 104, 0),
(113, 113, 1),
(115, 104, 0),
(115, 115, 1),
(116, 104, 0),
(116, 116, 1),
(117, 104, 0),
(117, 117, 1),
(119, 104, 0),
(119, 119, 1),
(105, 105, 0),
(107, 107, 0),
(120, 120, 0),
(121, 121, 0),
(122, 121, 0),
(122, 122, 1),
(123, 123, 1),
(124, 121, 0),
(124, 124, 1),
(123, 121, 0),
(125, 121, 0),
(125, 125, 1),
(135, 121, 0),
(135, 135, 1),
(136, 136, 0),
(138, 136, 0),
(138, 138, 1),
(139, 136, 0),
(139, 139, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(119, 0, 0),
(115, 0, 0),
(112, 0, 0),
(110, 0, 0),
(120, 0, 0),
(116, 0, 0),
(111, 0, 0),
(117, 0, 0),
(107, 0, 0),
(108, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(135, 0, 0),
(136, 0, 0),
(138, 0, 0),
(139, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(104, 0),
(105, 0),
(107, 0),
(108, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(115, 0),
(116, 0),
(117, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(135, 0),
(136, 0),
(138, 0),
(139, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
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
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
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
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 1, 1),
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

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18'),
(7, 'Body Contouring Kur', 'Bodi20', 'P', '20.0000', 0, 0, '0.0000', '2020-11-27', '2021-08-15', 0, '0', 1, '2020-11-27 06:56:22'),
(8, 'BodiScience Sip &amp; Shop Guests', 'SipShop20', 'P', '20.0000', 0, 0, '100.0000', '2020-12-07', '2020-12-21', 0, '0', 1, '2020-12-07 15:46:27'),
(9, 'Snow Day 2020 ', 'SnowDay20', 'P', '20.0000', 1, 0, '100.0000', '2020-12-17', '2021-01-18', 0, '0', 1, '2020-12-17 17:09:53'),
(10, 'PHYTO5 25% off discount ', 'PHYTO5  25', 'P', '25.0000', 1, 0, '100.0000', '2020-12-18', '2021-01-24', 0, '0', 1, '2020-12-18 17:15:59'),
(11, 'Last Minute Shopping', 'Grace20', 'P', '20.0000', 0, 0, '10.0000', '2020-12-23', '2021-01-01', 0, '0', 1, '2020-12-19 16:00:45'),
(12, 'Spring2021', 'Spring21', 'P', '20.0000', 1, 0, '100.0000', '2021-03-12', '2021-04-17', 0, '0', 1, '2021-03-12 19:52:17'),
(13, 'Consultation 2021', 'Consult21', 'P', '10.0000', 1, 0, '100.0000', '2021-04-02', '2021-05-02', 0, '0', 1, '2021-04-02 04:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon_category`
--

INSERT INTO `oc_coupon_category` (`coupon_id`, `category_id`) VALUES
(9, 105),
(9, 136),
(10, 104);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon_history`
--

INSERT INTO `oc_coupon_history` (`coupon_history_id`, `coupon_id`, `order_id`, `customer_id`, `amount`, `date_added`) VALUES
(1, 7, 57, 6, '-39.1500', '2020-11-28 04:10:46'),
(14, 13, 136, 49, '-19.2410', '2021-04-09 15:00:04'),
(15, 7, 152, 48, '-138.2000', '2021-07-20 13:10:57'),
(4, 7, 69, 23, '-29.9500', '2020-11-28 21:31:02'),
(5, 7, 70, 0, '-58.6000', '2020-11-28 21:50:27'),
(7, 8, 94, 33, '-21.6000', '2020-12-17 19:09:56'),
(8, 9, 96, 35, '-13.6000', '2020-12-17 21:26:18'),
(9, 8, 97, 22, '-99.1960', '2020-12-17 21:49:41'),
(10, 9, 100, 36, '-11.2000', '2020-12-18 01:00:17'),
(11, 11, 104, 34, '-34.0000', '2020-12-19 23:42:16'),
(12, 11, 106, 38, '-55.6000', '2020-12-21 01:10:48'),
(16, 7, 154, 48, '-28.8000', '2021-07-22 11:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon_product`
--

INSERT INTO `oc_coupon_product` (`coupon_product_id`, `coupon_id`, `product_id`) VALUES
(9, 12, 130),
(8, 12, 140),
(6, 12, 422);

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2021-10-18 19:57:57'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(60, 1, 0, 1, 'shivansh', 'thakur', 'anshu04t@gmail.com', '6524397801', '', '792343aca2922e48e996a6c0d3100cf1c50fbde6', 'xdAAuKt5r', NULL, NULL, 0, 67, '', '::1', 1, 1, 0, '', '', '2021-10-18 17:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(122, 60, '::1', '2021-10-18 17:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'jcameronedwards@gmail.com', '10.0.2.235', 1, '2020-08-20 13:01:12', '2020-08-20 13:01:12'),
(4, 'sh122w@gmail.com', '10.0.1.36', 2, '2020-08-29 17:26:10', '2020-08-29 17:27:03'),
(7, '', '10.0.2.77', 1, '2020-09-26 23:48:16', '2020-09-26 23:48:16'),
(6, 'r.cefalu714@gmail.com', '10.0.1.176', 1, '2020-09-10 20:36:31', '2020-09-10 20:36:31'),
(9, 'rkaylin11@gmail.com', '10.0.1.133', 1, '2020-10-02 13:32:26', '2020-10-02 13:32:26'),
(10, 'nansdillon@gmail.com', '10.0.1.133', 1, '2020-10-02 17:32:44', '2020-10-02 17:32:44'),
(12, 'rkaylin11@gmail.com', '10.0.2.77', 1, '2020-10-03 14:47:40', '2020-10-03 14:47:40'),
(13, 'winthropfarm@verizon.net', '10.0.2.77', 3, '2020-10-14 16:50:57', '2020-10-14 16:51:10'),
(15, 'keith@patriotfence.com', '10.0.2.77', 2, '2020-10-22 23:00:42', '2020-10-22 23:00:58'),
(17, '7817101268', '10.0.1.133', 1, '2020-11-13 22:52:23', '2020-11-13 22:52:23'),
(20, 'karinh@protonmail.com', '10.0.1.31', 3, '2020-11-25 08:23:35', '2020-11-25 08:31:53'),
(21, 'carahigg@gmail.com', '10.0.1.31', 6, '2020-11-27 12:34:22', '2020-11-28 19:46:39'),
(24, 'melindaahamel@aol.com', '10.0.1.31', 2, '2020-11-27 16:29:06', '2020-11-27 16:29:08'),
(25, '8572226063', '10.0.2.77', 3, '2020-11-27 17:02:07', '2020-11-27 17:03:52'),
(40, 'marydougherty21@comcast.net', '10.0.2.69', 3, '2020-12-13 15:48:22', '2020-12-13 15:48:44'),
(27, 'drmeiches@aol.com', '10.0.2.77', 1, '2020-11-28 15:01:55', '2020-11-28 15:01:55'),
(31, 'craigvaccaro10@gmail.com', '10.0.2.69', 1, '2020-12-08 14:33:30', '2020-12-08 14:33:30'),
(39, 'lharrington6268@hotmail.com', '10.0.2.69', 1, '2020-12-12 16:50:05', '2020-12-12 16:50:05'),
(34, 'jayles77@verizon.net', '10.0.2.69', 3, '2020-12-10 02:23:36', '2020-12-10 02:25:05'),
(51, 'marydougherty21@comcast.net', '10.0.1.151', 1, '2020-12-23 18:25:41', '2020-12-23 18:25:41'),
(53, 'admin', '10.0.2.69', 1, '2020-12-24 15:13:49', '2020-12-24 15:13:49'),
(55, '', '10.0.1.151', 1, '2020-12-26 21:03:27', '2020-12-26 21:03:27'),
(58, 'rakitor12@mail.ru', '10.0.1.151', 1, '2020-12-31 22:16:37', '2020-12-31 22:16:37'),
(59, 'drmeiches@aol.com', '10.0.1.151', 1, '2021-01-13 14:58:09', '2021-01-13 14:58:09'),
(60, 'acbecker243@gmail.com', '10.0.2.69', 3, '2021-01-28 14:51:12', '2021-01-28 14:51:28'),
(61, 'miriah8481@yahoo.com', '10.0.2.69', 1, '2021-02-02 01:34:58', '2021-02-02 01:34:58'),
(65, 'pcosta0617@gmail.com', '10.0.2.33', 2, '2021-03-06 22:00:56', '2021-03-06 22:01:04'),
(63, '', '10.0.1.147', 1, '2021-02-07 13:11:38', '2021-02-07 13:11:38'),
(66, 'mack.nello@gmail.com', '10.0.1.44', 3, '2021-03-20 03:45:01', '2021-03-20 03:45:23'),
(68, 'drfern@marbleheaddental.com', '10.0.1.206', 1, '2021-04-02 19:43:16', '2021-04-02 19:43:16'),
(69, '', '10.0.1.145', 1, '2021-04-09 14:53:42', '2021-04-09 14:53:42'),
(70, 'winthropfarm@gmail.com', '10.0.2.182', 2, '2021-04-29 01:15:40', '2021-04-29 01:15:44'),
(71, 'admin', '10.0.1.42', 1, '2021-05-01 17:37:09', '2021-05-01 17:37:09'),
(72, 'melindaahamel@aol.com', '10.0.2.20', 2, '2021-05-17 14:02:42', '2021-05-17 14:02:45'),
(75, 'raesak@verizon.net', '10.0.1.203', 1, '2021-06-10 13:03:27', '2021-06-10 13:03:27'),
(77, 'ldeleon11@gmail.com', '10.0.2.95', 4, '2021-06-16 01:06:00', '2021-06-16 01:08:14'),
(78, 'r.cefalu714@gmail.com', '10.0.1.89', 1, '2021-08-08 12:51:42', '2021-08-08 12:51:42'),
(79, 'lucylash@huelebela.tk', '10.0.1.130', 5, '2021-08-20 07:13:19', '2021-08-23 16:58:47'),
(80, 'lucylash@huelebela.tk', '10.0.2.200', 4, '2021-08-20 07:24:03', '2021-08-23 16:52:03'),
(81, 'shmycocoa@hotmail.com', '10.0.1.130', 1, '2021-08-24 10:48:14', '2021-08-24 10:48:14'),
(82, '', '10.0.1.130', 1, '2021-09-14 20:54:05', '2021-09-14 20:54:05'),
(85, 'adriana.mirra@yahoo.com', '10.0.2.127', 3, '2021-10-13 02:58:41', '2021-10-13 02:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(2, 50, '2020-04-01 13:42:48'),
(32, 347, '2020-12-14 22:50:07'),
(32, 344, '2020-12-14 22:50:11'),
(32, 146, '2020-12-14 22:50:55'),
(32, 121, '2020-12-14 22:52:12'),
(60, 242, '2021-10-18 23:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
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
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'payment', 'stripe'),
(30, 'captcha', 'basic_captcha'),
(31, 'module', 'advanced_popup_cart'),
(32, 'shipping', 'free'),
(33, 'payment', 'stripe_payments'),
(34, 'shipping', 'pickup'),
(35, 'analytics', 'google_analytics');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(4, 'US Shipping', 'US Shipping Zones', '2020-06-05 08:32:01', '2009-06-23 01:14:53'),
(5, 'Massachusetts', 'Massachusetts', '0000-00-00 00:00:00', '2020-06-05 08:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 0, 1, 1),
(5, 1, 4, 1),
(6, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(6, 0, 0),
(4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
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

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(78, 1, 'featured.28', 'content_bottom', 0),
(80, 3, 'category', 'column_left', 0),
(77, 1, 'slideshow.27', 'content_top', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(58, 3, 0, 'product/category'),
(55, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(14, 'PHYTO5', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu`
--

CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_description`
--

CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_module`
--

CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"121\",\"154\",\"181\",\"175\",\"171\",\"184\",\"223\",\"339\"],\"limit\":\"12\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1400\",\"height\":\"450\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(11, 'select', 1),
(12, 'date', 11),
(13, 'radio', 1),
(14, 'radio', 1),
(15, 'radio', 1),
(16, 'radio', 1),
(17, 'radio', 1),
(18, 'radio', 1),
(19, 'radio', 1),
(20, 'radio', 1),
(21, 'radio', 1),
(22, 'radio', 1),
(23, 'radio', 1),
(24, 'radio', 1),
(25, 'radio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
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
(13, 1, 'Season5'),
(14, 1, 'Season4'),
(15, 1, 'Season3'),
(16, 1, 'Season2'),
(17, 1, 'Color'),
(18, 1, 'Season1'),
(19, 1, 'Season'),
(20, 1, 'Beyond Matte Liquid Foundation'),
(21, 1, 'Glow Time Full Coverage Mineral BB Cream'),
(22, 1, 'Select Shade'),
(23, 1, 'DREAM TINT TINTED MOISTURIZER'),
(24, 1, 'Circle\\Delete Concealer'),
(25, 1, 'Active Light Under-eye Concealer');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(94, 11, '', 14),
(93, 11, '', 13),
(92, 11, '', 12),
(53, 13, 'catalog/products/phyto-ceresal-cream-water.png', 5),
(52, 13, 'catalog/products/phyto-ceresal-cream-metal.png', 4),
(51, 13, 'catalog/products/phyto-ceresal-cream-earth.png', 3),
(50, 13, 'catalog/products/phyto-ceresal-cream-fire.png', 2),
(49, 13, 'catalog/products/phyto-ceresal-cream-wood.png', 1),
(91, 11, '', 11),
(60, 14, 'catalog/products/phyto-element-cream-water.png', 5),
(59, 14, 'catalog/products/phyto-element-cream-metal.png', 4),
(58, 14, 'catalog/products/phyto-element-cream-earth.png', 3),
(57, 14, 'catalog/products/phyto-element-cream-fire.png', 2),
(56, 14, 'catalog/products/phyto-element-cream-wood.png', 1),
(90, 11, '', 10),
(66, 15, 'catalog/products/water-element-phytether-serum.png', 5),
(65, 15, 'catalog/products/metal-element-phytether-serum.png', 4),
(64, 15, 'catalog/products/earth-element-phytether-serum.png', 3),
(63, 15, 'catalog/products/fire-phytether.png', 2),
(62, 15, 'catalog/products/wood-phytether.png', 1),
(70, 16, 'catalog/products/metal-skin-toner-shadow.png', 4),
(71, 16, 'catalog/products/water-skin-toner-shadow.png', 5),
(69, 16, 'catalog/products/earth-skin-toner-shadow.png', 3),
(67, 16, 'catalog/products/wood-skin-toner-shadow.png', 1),
(68, 16, 'catalog/products/fire-skin-toner-shadow.png', 2),
(72, 17, 'catalog/products/rsz_robe_lilac.jpg', 1),
(73, 17, 'catalog/products/tan.jpg', 2),
(74, 17, 'catalog/products/plum.jpg', 3),
(75, 17, 'catalog/products/white.jpg', 4),
(79, 18, 'catalog/products/metal-element-white-clay-mask.png', 4),
(80, 18, 'catalog/products/water-element-black-clay-mask.png', 5),
(78, 18, 'catalog/products/earth-element-yellow-clay-mask.png', 3),
(76, 18, 'catalog/products/wood-element-green-clay-mask.png', 1),
(77, 18, 'catalog/products/fire-element-red-clay-mask.png', 2),
(84, 19, 'catalog/products/metal-element-yogi-body-gel.jpg', 4),
(83, 19, 'catalog/products/earth-element-yogi-body-gel.png', 3),
(82, 19, 'catalog/products/fire-yogi-body-gel.png', 2),
(81, 19, 'catalog/products/wood-yogi-body-gel.png', 1),
(85, 19, 'catalog/products/water-element-yogi-body-gel.png', 5),
(55, 11, '', 9),
(89, 11, '', 8),
(54, 11, '', 7),
(88, 11, '', 6),
(87, 11, '', 5),
(86, 11, '', 4),
(61, 11, '', 3),
(47, 11, '', 2),
(46, 11, '', 1),
(95, 11, '', 15),
(96, 11, '', 16),
(97, 20, 'catalog/makeup/m1.png', 1),
(98, 20, 'catalog/makeup/m2.png', 2),
(99, 20, 'catalog/makeup/m3.png', 3),
(100, 20, 'catalog/makeup/m4.png', 4),
(101, 20, 'catalog/makeup/m5.png', 5),
(102, 20, 'catalog/makeup/m6.png', 6),
(103, 20, 'catalog/makeup/m7.png', 7),
(104, 20, 'catalog/makeup/m8.png', 8),
(105, 20, 'catalog/makeup/m9.png', 9),
(106, 20, 'catalog/makeup/m10.png', 10),
(107, 20, 'catalog/makeup/m11.png', 11),
(108, 20, 'catalog/makeup/m12.png', 12),
(109, 20, 'catalog/makeup/m13.png', 13),
(110, 20, 'catalog/makeup/m14.png', 14),
(111, 20, 'catalog/makeup/m15.png', 15),
(112, 20, 'catalog/makeup/m16.png', 16),
(113, 20, 'catalog/makeup/m17.png', 17),
(114, 20, 'catalog/makeup/m18.png', 18),
(115, 21, 'catalog/makeup/bb1.png', 1),
(116, 21, 'catalog/makeup/bb3.png', 2),
(117, 21, 'catalog/makeup/bb4.png', 3),
(118, 21, 'catalog/makeup/bb6.png', 4),
(119, 21, 'catalog/makeup/bb7.png', 8),
(120, 21, 'catalog/makeup/bb8.png', 6),
(121, 21, 'catalog/makeup/bb9.png', 7),
(122, 21, 'catalog/makeup/bb11.png', 8),
(123, 21, 'catalog/makeup/bb12.png', 9),
(136, 22, 'catalog/makeup/13.png', 13),
(135, 22, 'catalog/makeup/12.png', 12),
(134, 22, 'catalog/makeup/11.png', 11),
(133, 22, 'catalog/makeup/10.png', 10),
(132, 22, 'catalog/makeup/9.png', 9),
(131, 22, 'catalog/makeup/8.png', 8),
(130, 22, 'catalog/makeup/7.png', 7),
(129, 22, 'catalog/makeup/6.png', 6),
(128, 22, 'catalog/makeup/5.png', 5),
(127, 22, 'catalog/makeup/4.png', 4),
(126, 22, 'catalog/makeup/3.png', 3),
(125, 22, 'catalog/makeup/2.png', 2),
(124, 22, 'catalog/makeup/1.png', 1),
(137, 23, 'catalog/makeup/a1.png', 1),
(138, 23, 'catalog/makeup/a2.png', 2),
(139, 23, 'catalog/makeup/a3.png', 3),
(140, 23, 'catalog/makeup/a4.png', 4),
(141, 23, 'catalog/makeup/a5.png', 5),
(142, 23, 'catalog/makeup/a6.png', 6),
(143, 23, 'catalog/makeup/a7.png', 7),
(144, 22, 'catalog/makeup/14.png', 14),
(145, 22, 'catalog/makeup/15.png', 15),
(146, 22, 'catalog/makeup/16.png', 16),
(147, 22, 'catalog/makeup/17.png', 17),
(148, 22, 'catalog/makeup/18.png', 18),
(149, 22, 'catalog/makeup/19.png', 19),
(150, 22, 'catalog/makeup/20.png', 20),
(151, 22, 'catalog/makeup/21.png', 21),
(152, 22, 'catalog/makeup/22.png', 22),
(153, 22, 'catalog/makeup/23.png', 23),
(154, 22, 'catalog/makeup/24.png', 24),
(155, 22, 'catalog/makeup/25.png', 25),
(156, 22, 'catalog/makeup/26.png', 26),
(157, 24, 'catalog/makeup/b1.png', 1),
(158, 24, 'catalog/makeup/b2.png', 2),
(159, 25, 'catalog/makeup/face/n1.png', 1),
(160, 25, 'catalog/makeup/face/n2.png', 2),
(161, 25, 'catalog/makeup/face/n3.png', 3),
(162, 25, 'catalog/makeup/face/n4.png', 4),
(163, 25, 'catalog/makeup/face/n5.png', 5),
(164, 25, 'catalog/makeup/face/n6.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
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
(93, 1, 11, '8.8oz'),
(53, 1, 13, 'Water'),
(52, 1, 13, 'Metal'),
(51, 1, 13, 'Earth'),
(50, 1, 13, 'Fire'),
(49, 1, 13, 'Wood'),
(91, 1, 11, '4oz'),
(60, 1, 14, 'Water'),
(59, 1, 14, 'Metal'),
(58, 1, 14, 'Earth'),
(57, 1, 14, 'Fire'),
(56, 1, 14, 'Wood'),
(92, 1, 11, '8oz'),
(90, 1, 11, '240 tablets'),
(66, 1, 15, 'Water'),
(65, 1, 15, 'Metal'),
(64, 1, 15, 'Earth'),
(63, 1, 15, 'Fire'),
(62, 1, 15, 'Wood'),
(71, 1, 16, 'Water'),
(70, 1, 16, 'Metal'),
(69, 1, 16, 'Earth'),
(68, 1, 16, 'Fire'),
(67, 1, 16, 'Wood'),
(72, 1, 17, 'Lilac'),
(73, 1, 17, 'Tan Fleur'),
(74, 1, 17, 'Plum'),
(75, 1, 17, 'White'),
(80, 1, 18, 'Water'),
(79, 1, 18, 'Metal'),
(78, 1, 18, 'Earth'),
(77, 1, 18, 'Fire'),
(76, 1, 18, 'Wood'),
(85, 1, 19, 'Water'),
(84, 1, 19, 'Metal'),
(83, 1, 19, 'Earth'),
(82, 1, 19, 'Fire'),
(81, 1, 19, 'Wood'),
(55, 1, 11, '180 tablets'),
(89, 1, 11, '120 tablets'),
(54, 1, 11, '90 tablets'),
(88, 1, 11, '60 tablets'),
(87, 1, 11, '17oz'),
(86, 1, 11, '6.75oz'),
(61, 1, 11, '3.75oz'),
(47, 1, 11, '1.75oz'),
(46, 1, 11, '3.5oz'),
(94, 1, 11, '17.6oz'),
(95, 1, 11, '7oz'),
(96, 1, 11, '2oz'),
(97, 1, 20, 'M1'),
(98, 1, 20, 'M2'),
(99, 1, 20, 'M3'),
(100, 1, 20, 'M4'),
(101, 1, 20, 'M5'),
(102, 1, 20, 'M6'),
(103, 1, 20, 'M7'),
(104, 1, 20, 'M8'),
(105, 1, 20, 'M9'),
(106, 1, 20, 'M10'),
(107, 1, 20, 'M11'),
(108, 1, 20, 'M12'),
(109, 1, 20, 'M13'),
(110, 1, 20, 'M14'),
(111, 1, 20, 'M15'),
(112, 1, 20, 'M16'),
(113, 1, 20, 'M17'),
(114, 1, 20, 'M18'),
(115, 1, 21, 'BB1'),
(116, 1, 21, 'BB3'),
(117, 1, 21, 'BB4'),
(118, 1, 21, 'BB6'),
(119, 1, 21, 'BB7'),
(120, 1, 21, 'BB8'),
(121, 1, 21, 'BB9'),
(122, 1, 21, 'BB11'),
(123, 1, 21, 'BB12'),
(134, 1, 22, 'honey bronze'),
(133, 1, 22, 'golden glow'),
(132, 1, 22, 'suntan'),
(131, 1, 22, 'warm sienna'),
(130, 1, 22, 'natural'),
(129, 1, 22, 'amber'),
(128, 1, 22, 'satin'),
(127, 1, 22, 'warm silk'),
(126, 1, 22, 'radiant'),
(125, 1, 22, 'light beige'),
(124, 1, 22, 'bisque'),
(137, 1, 23, 'light'),
(138, 1, 23, 'medium light'),
(139, 1, 23, 'medium'),
(140, 1, 23, 'medium dark'),
(141, 1, 23, 'dark'),
(142, 1, 23, 'warm bronze'),
(143, 1, 23, 'peach brightener'),
(135, 1, 22, 'latte'),
(136, 1, 22, 'caramel'),
(144, 1, 22, 'ivory'),
(145, 1, 22, 'sweet honey'),
(146, 1, 22, 'riviera'),
(147, 1, 22, 'teakwood'),
(148, 1, 22, 'golden tan'),
(149, 1, 22, 'autumn'),
(150, 1, 22, 'fawn'),
(151, 1, 22, 'cognac'),
(152, 1, 22, 'velvet'),
(153, 1, 22, 'warm brown'),
(154, 1, 22, 'mahogony'),
(155, 1, 22, 'bittersweet'),
(156, 1, 22, 'cocoa'),
(157, 1, 24, 'Yellow'),
(158, 1, 24, 'Peach'),
(159, 1, 25, 'light yellow'),
(160, 1, 25, 'medium yellow'),
(161, 1, 25, 'light peach'),
(162, 1, 25, 'medium peach'),
(163, 1, 25, 'medium yellow gold'),
(164, 1, 25, 'medium dark peachy brown');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
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
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(10, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 6, 1, 'Stacy', 'Ho', 'bodiscience-shopping@s-ho.net', '7815304725', '', '', 'Stacy', 'Ho', '', '738 Main St, PMB #338', '', 'Waltham', '02451', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Stacy', 'Ho', '', '155 ASH ST', '', 'WALTHAM', '02453', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '265.6250', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.235', '146.115.170.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'en-US,en;q=0.9,und;q=0.8', '2020-08-29 17:31:24', '2020-08-29 17:31:24'),
(11, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 6, 1, 'Stacy', 'Ho', 'bodiscience-shopping@s-ho.net', '7815304725', '', '', 'Stacy', 'Ho', '', '738 Main St, PMB #338', '', 'Waltham', '02451', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Stacy', 'Ho', '', '155 ASH ST', '', 'WALTHAM', '02453', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'This is tax free weekend (8/29 and 8/30) in Massachusetts. Please refund my tax when you receive the order.', '265.6250', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.235', '146.115.170.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'en-US,en;q=0.9,und;q=0.8', '2020-08-29 17:33:32', '2020-08-29 17:33:32'),
(17, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Allison', 'Souza', 'allison_souza@hotmail.com', '8609122681', '', '[]', 'Allison', 'Souza', '', '12 Pickett Street', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Allison', 'Souza', '', '12 Pickett Street', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '164.0606', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.15', '73.69.50.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', '2020-09-22 17:57:56', '2020-09-22 17:57:56'),
(18, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Allison', 'Souza', 'allison_souza@hotmail.com', '8609122681', '', '[]', 'Allison', 'Souza', '', '12 Pickett Street', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Allison', 'Souza', '', '12 Pickett Street', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'I would like to pay with a gift card', '164.0606', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.15', '73.69.50.102', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15', 'en-us', '2020-09-22 17:58:36', '2020-09-22 17:58:36'),
(19, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 11, 1, 'jean', 'ayles', 'jayles77@gmail.com', '978 884-3259', '', '', 'jean', 'ayles', '', '11 Patton Ridge', '', 'Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'jean', 'ayles', '', '11 Patton Ridge', '', 'Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'Deliver to 11 Patton RIDGE ......not...... 11 Patton DRIVE', '116.5456', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '173.76.16.89', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15', 'en-us', '2020-09-27 00:02:24', '2020-09-27 00:02:24'),
(23, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 5, 1, 'Monica', 'QuinonezHamilton', 'herculitas@verizon.net', '6177194926', '', '', 'Monica', 'QuinonezHamilton', '', '14 Brewster St', '', 'South Boston', '02127', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Monica', 'QuinonezHamilton', '', '14 Brewster St', '', 'South Boston', '02127', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'Thank you', '305.9894', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '107.77.224.54', 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-A102U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/12.1 Chrome/79.0.3945.136 Mobile Safari/537.36', 'en-US,en;q=0.9,es-US;q=0.8,es;q=0.7', '2020-10-06 13:46:41', '2020-10-06 13:46:41'),
(35, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 5, 1, 'Monica', 'QuinonezHamilton', 'herculitas@verizon.net', '6177194926', '', '', 'Monica', 'QuinonezHamilton', '', '14 Brewster St', '', 'South Boston', '02127', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Monica', 'QuinonezHamilton', '', '14 Brewster St', '', 'South Boston', '02127', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '86.6250', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '107.77.224.232', 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-A102U) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/12.1 Chrome/79.0.3945.136 Mobile Safari/537.36', 'en-US,en;q=0.9,es-US;q=0.8,es;q=0.7', '2020-11-19 14:29:56', '2020-11-19 14:29:56'),
(39, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Cara', 'Higgins', 'Carahigg@gmail.com', '9797587602', '', '[]', 'Cara', 'Higgins', '', '114 Coachmans Lane ', '', 'North Andover ', '01845', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Cara', 'Higgins', '', '114 Coachmans Lane ', '', 'North Andover ', '01845', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '267.7500', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '66.30.88.181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', 'en-us', '2020-11-27 12:38:41', '2020-11-27 12:38:41'),
(40, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Cara', 'Higgins', 'Carahigg@gmail.com', '9797587602', '', '[]', 'Cara', 'Higgins', '', '114 Coachmans Lane ', '', 'North Andover ', '01845', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Cara', 'Higgins', '', '114 Coachmans Lane ', '', 'North Andover ', '01845', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'Grateful', '267.7500', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '66.30.88.181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', 'en-us', '2020-11-27 12:39:52', '2020-11-27 12:39:52'),
(41, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', '', '88.9844', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 15:07:31', '2020-11-27 15:07:31'),
(42, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'Kindly  deduct 20% from regular price as suggested in your email offer.  Grateful!  ', '88.9844', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 15:11:21', '2020-11-27 15:11:21'),
(43, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'Kindly  deduct 20% from regular price as suggested in your email offer.  Grateful!  ', '88.9844', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 15:13:36', '2020-11-27 15:13:36'),
(45, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Melinda', 'Hamel-Graziano', 'melindaahamel@aol.com', '6173089642', '', '[]', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '364.4375', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '24.63.91.208', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 16:27:50', '2020-11-27 16:27:50'),
(46, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Melinda', 'Hamel-Graziano', 'melindaahamel@aol.com', '6173089642', '', '[]', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '364.4375', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '24.63.91.208', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 16:28:35', '2020-11-27 16:28:35'),
(47, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Melinda', 'Hamel-Graziano', 'melindaahamel@aol.com', '6173089642', '', '[]', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '364.4375', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '24.63.91.208', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 16:29:41', '2020-11-27 16:29:41'),
(48, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Melinda', 'Hamel-Graziano', 'melindaahamel@aol.com', '6173089642', '', '[]', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'GRATEFUL', '364.4375', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '24.63.91.208', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 16:30:19', '2020-11-27 16:30:19'),
(49, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Melinda', 'Hamel-Graziano', 'melindaahamel@aol.com', '6173089642', '', '[]', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Melinda', 'Hamel-Graziano', '', '8 Davis St', '', 'BEVERLY', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'GRATEFUL', '364.4375', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '24.63.91.208', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 16:31:33', '2020-11-27 16:31:33'),
(50, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'Hello Dawn and team, Please apply the 20% discount as offered in your email today.  Thank you!  Grateful!  Susan Young ', '219.4063', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 17:06:47', '2020-11-27 17:06:47'),
(51, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'Hello Dawn and team, \nI hope you are all well and enjoyed a nice Thanksgiving.  \nPlease apply a 20% discount as offered in today\'s email using the code &quot;Gratitude.&quot;  \nThank you!  Best regards, Susan Young ', '130.4219', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 17:23:04', '2020-11-27 17:23:04'),
(52, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'Hello Dawn and team, \nI hope you are all well and enjoyed a nice Thanksgiving.  \nPlease apply a 20% discount as offered in today\'s email using the code &quot;Gratitude.&quot;  \nThank you!  Best regards, Susan Young ', '130.4219', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9', '2020-11-27 17:36:50', '2020-11-27 17:36:50'),
(53, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Leslie', 'Tapper', 'Lmtapper@msn.com', '9782658385', '', '[]', 'Leslie', 'Tapper', '', '3 Treetops Lsne', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Leslie', 'Tapper', '', '3 Treetops Lsne', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'GRATEFUL', '179.5625', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '108.7.43.191', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', 'en-us', '2020-11-27 23:17:44', '2020-11-27 23:17:44'),
(55, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 4, 1, 'Melanie', 'Martin', 'MelanieMartin@comcast.net', '6179921712', '', '', 'Melanie', 'Martin', '', '138 Rockford Street', '', 'BROCKTON ', '02301', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Melanie', 'Martin', '', '138 Rockford Street', '', 'BROCKTON ', '02301', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', '', '98.8125', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '174.242.78.160', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Mobile/15E148 Safari/604.1', 'en-us', '2020-11-28 01:38:09', '2020-11-28 01:38:09'),
(56, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 6, 1, 'Stacy', 'Ho', 'bodiscience-shopping@s-ho.net', '7815304725', '', '', 'Stacy', 'Ho', '', '738 Main St, PMB #338', '', 'Waltham', '02451', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Stacy', 'Ho', '', '4402 Riley Drive', '', 'Knightdale', '27545', 'United States', 223, 'North Carolina', 3656, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '195.7500', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '67.237.198.248', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9,und;q=0.8', '2020-11-28 04:08:50', '2020-11-28 04:08:50'),
(58, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'Hello Dawn and team!  \n\nThank you for filling this order and for the 20% off discount.  I think &quot;Gratitude&quot; is the key word!  I can pick up the products whenever they are ready.  \n\n I hope you are well and have a good holiday season.  Stay safe.  \n\nWarm regards, Susan Young ', '219.4063', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9', '2020-11-28 15:42:16', '2020-11-28 15:42:16'),
(59, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'Hello Dawn and team!  \n\nThank you for filling this order and for the 20% off discount.  I think &quot;Gratitude&quot; is the key word!  I can pick up the products whenever they are ready.  \n\n I hope you are well and have a good holiday season.  Stay safe.  \n\nWarm regards, Susan Young ', '219.4063', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9', '2020-11-28 15:42:44', '2020-11-28 15:42:44'),
(60, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'Hello Dawn and team!  \n\nThank you for filling this order and for the 20% off discount.  I think &quot;Gratitude&quot; is the key word!  I can pick up the products whenever they are ready.  \n\n I hope you are well and have a good holiday season.  Stay safe.  \n\nWarm regards, Susan Young ', '219.4063', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9', '2020-11-28 15:43:19', '2020-11-28 15:43:19'),
(61, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'Hello Dawn and team!  \n\nThank you for filling this order and for the 20% off discount.  I think &quot;Gratitude&quot; is the key word!  I can pick up the products whenever they are ready.  \n\n I hope you are well and have a good holiday season.  Stay safe.  \n\nWarm regards, Susan Young ', '219.4063', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9', '2020-11-28 15:43:48', '2020-11-28 15:43:48'),
(62, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 20, 1, 'Susan', 'Young', 'sryoung526@comcast.net', '8572226063', '', '', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Susan', 'Young', '', '5A Ober St.', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'Hello Dawn and team!  \n\nThank you for filling this order and for the 20% off discount.  I think &quot;Gratitude&quot; is the key word!  I can pick up the products whenever they are ready.  \n\n I hope you are well and have a good holiday season.  Stay safe.  \n\nWarm regards, Susan Young ', '130.4219', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.119.119.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'en-US,en;q=0.9', '2020-11-28 15:45:12', '2020-11-28 15:45:12'),
(64, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 8, 1, 'Rachael', 'Charest', 'rachael.charest714@gmail.com', '978-290-6950', '', '', 'Rachael', 'Charest', '', '2 Halsey Way Unit 40C', '', 'Salem', '01970', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Rachael', 'Charest', '', '2 Halsey Way Unit 40C', '', 'Salem', '01970', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '134.4063', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '73.60.132.174', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.2 Safari/605.1.15', 'en-us', '2020-11-28 18:25:37', '2020-11-28 18:25:37'),
(67, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 22, 1, 'Jennifer', 'Woodin', 'jenwoodin@gmail.com', '9788085083', '', '', 'Jennifer', 'Woodin', '', '6 Bridge Street', '', 'South Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Jennifer', 'Woodin', '', '6 Bridge Street', '', 'South Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '301.7500', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '173.76.17.51', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 'en-US,en;q=0.9', '2020-11-28 21:18:33', '2020-11-28 21:18:33'),
(71, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'susan', 'deluca', 'smdeluca4@gmail.com', '9789735470', '', '[]', 'susan', 'deluca', '', '45 brimbal ave', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'susan', 'deluca', '', '45 brimbal ave', '', 'Beverly', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '326.1875', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.77', '73.143.189.5', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'en-US,en;q=0.9', '2020-12-01 01:54:31', '2020-12-01 01:54:31'),
(76, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 26, 1, 'Teresa', 'Deleon', 'tdeleon421@gmail.com', '5163180839', '', '', 'Teresa', 'Deleon', '', '27 Junction Ln', '', 'South Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Teresa', 'Deleon', '', '27 Junction Ln', '', 'South Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '149.4831', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '165.225.39.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', 'en-US,en;q=0.9,es-US;q=0.8,es;q=0.7', '2020-12-07 16:50:56', '2020-12-07 16:50:56'),
(77, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 27, 1, 'Antigone', 'McHugh', 'antigoneg00@gmail.com', '978-314-1766', '', '', 'Antigone', 'McHugh', '', '35 Eden Glen Avenue', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Antigone', 'McHugh', '', '35 Eden Glen Avenue', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'I can pick up my other order also (2 speciality gift boxes)', '217.5469', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '108.26.168.158', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'en-us', '2020-12-07 19:06:45', '2020-12-07 19:06:45'),
(78, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 27, 1, 'Antigone', 'McHugh', 'antigoneg00@gmail.com', '978-314-1766', '', '', 'Antigone', 'McHugh', '', '35 Eden Glen Avenue', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Antigone', 'McHugh', '', '35 Eden Glen Avenue', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'I can pick up my other order also (2 speciality gift boxes)', '217.5469', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '108.26.168.158', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'en-us', '2020-12-07 19:07:52', '2020-12-07 19:07:52'),
(80, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 28, 1, 'Carol', 'Collins', 'carol.collins24@yahoo.com', '978-998-2279', '', '', 'Carol', 'Collins', '', '14 Old Planters Road ', '', 'Beverly ', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Carol', 'Collins', '', '14 Old Planters Road ', '', 'Beverly ', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '166.8125', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '71.235.168.155', 'Mozilla/5.0 (iPad; CPU OS 12_4_9 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1', 'en-us', '2020-12-07 20:35:12', '2020-12-07 20:35:12'),
(84, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 25, 1, 'Christine', 'Bavaro', 'chriscare@verizon.net', '781-246-2315', '', '', 'Christine', 'Bavaro', '', '55 Ash Street', '', 'Danvers', 'o1923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Christine', 'Bavaro', '', '55 Ash Street', '', 'Danvers', 'o1923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', '', '102.0000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.31', '108.26.168.169', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15', 'en-us', '2020-12-11 14:27:02', '2020-12-11 14:27:02'),
(85, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 22, 1, 'Jennifer', 'Woodin', 'jenwoodin@gmail.com', '9788085083', '', '', 'Jennifer', 'Woodin', '', '6 Bridge Street', '', 'South Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Jennifer', 'Woodin', '', '6 Bridge Street', '', 'South Hamilton', '01982', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', 'I have an appointment on Thursday. I will pick up my order then.\nPlease put aside a bottle of krill oil for me too! \nThank you-', '194.4163', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.151', '173.76.17.51', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Safari/605.1.15', 'en-us', '2020-12-14 20:52:43', '2020-12-14 20:52:43'),
(87, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Lisa', 'Carnevale', 'lisajcarnevale@gmail.com', '5089542010', '', '[]', 'Lisa', 'Carnevale', '', '1 Old Salem Path', '', 'Gloucester', '01930', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Lisa', 'Carnevale', '', '1 Old Salem Path', '', 'Gloucester', '01930', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '286.7581', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '73.16.28.63', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'en-US,en;q=0.9', '2020-12-15 15:02:48', '2020-12-15 15:02:48'),
(88, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 33, 1, 'Laurie', 'Bottiger', 'laurieleebottiger@gmail.com', '2036232657', '', '', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '69.0000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '172.100.134.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'en-US,en;q=0.9', '2020-12-15 20:58:50', '2020-12-15 20:58:50'),
(89, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 33, 1, 'Laurie', 'Bottiger', 'laurieleebottiger@gmail.com', '2036232657', '', '', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', '', '61.0000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '172.100.134.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'en-US,en;q=0.9', '2020-12-15 20:59:37', '2020-12-15 20:59:37'),
(90, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 31, 1, 'Teresa', 'Castellano', 'mtccastellano@gmail.com', '9786186112', '', '', 'Teresa', 'Castellano', '', '8 Sarafina Way', '', 'Wilmington', '01887', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Teresa', 'Castellano', '', '8 Sarafina Way', '', 'Wilmington', '01887', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '137.4663', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '73.4.136.214', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'en-US,en;q=0.9', '2020-12-17 01:42:00', '2020-12-17 01:42:00'),
(92, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 33, 1, 'Laurie', 'Bottiger', 'laurieleebottiger@gmail.com', '2036232657', '', '', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '136.0000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '172.100.134.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'en-US,en;q=0.9', '2020-12-17 17:37:21', '2020-12-17 17:37:21'),
(93, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 33, 1, 'Laurie', 'Bottiger', 'laurieleebottiger@gmail.com', '2036232657', '', '', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Laurie', 'Bottiger', '', '4042 Bemus Creek Road', '', 'Bemus Point', '14712', 'United States', 223, 'New York', 3655, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', 'thank you!!', '172.8000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '172.100.134.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 'en-US,en;q=0.9', '2020-12-17 19:08:41', '2020-12-17 19:08:41'),
(95, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 19, 1, 'Diane', 'Bee', 'dm.bee@comcast.net', '978-317-7919', '', '', 'Diane', 'Bee', '', '47 County Way', '', 'Beverly ', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Diane', 'Bee', '', '47 County Way', '', 'Beverly ', '01915', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '190.8038', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.2.69', '169.148.251.130, 104.129.194.108', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'en-US,en;q=0.9', '2020-12-17 19:55:24', '2020-12-17 19:55:24');
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(98, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 0, 1, 'Cynthia', 'Parker', 'Parkercindy87@gmail.com', '978-317-4377', '', '[]', 'Cynthia', 'Parker', '', '10 Larchmont Rd.', '', 'Salem ', '01970', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Cynthia', 'Parker', '', '10 Larchmont Rd.', '', 'Salem ', '01970', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '189.1250', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.151', '73.60.106.236', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15', 'en-us', '2020-12-17 22:40:52', '2020-12-17 22:40:52'),
(101, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'https://bodiscience.salonclouds.io/', 34, 1, 'Ann', 'Gleason', 'anngleason12@gmail.com', '9783956021', '', '', 'Ann', 'Gleason', '', '31 Poplar St', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'Ann', 'Gleason', '', '31 Poplar St', '', 'Danvers', '01923', 'United States', 223, 'Massachusetts', 3644, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Free Shipping', 'free.free', '', '333.6250', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '10.0.1.151', '108.7.179.153', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', 'en-us', '2020-12-18 01:51:13', '2020-12-18 01:51:13'),
(166, 0, 'INV-2013-00', 0, 'BodiScience Wellness Center &amp; Spa', 'http://localhost/bodiscience/', 0, 1, 'shivansh', 'thakur', 'anshu04t@gmail.com', '6234589710', '', '[]', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '64.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2021-10-18 17:43:27', '2021-10-18 17:43:49'),
(167, 0, 'INV-2013-00', 0, 'CareShop', 'http://localhost/careshop/', 60, 1, 'shivansh', 'thakur', 'anshu04t@gmail.com', '6524397801', '', '', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Curbside Pickup', 'pickup.pickup', '', '35.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2021-10-18 23:01:34', '2021-10-18 23:05:08'),
(168, 0, 'INV-2013-00', 0, 'CareShop', 'http://localhost/careshop/', 60, 1, 'shivansh', 'thakur', 'anshu04t@gmail.com', '6524397801', '', '', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Pay Securely & Safely with Credit / Debit Card', 'stripe_payments', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '43.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2021-10-18 23:05:45', '2021-10-18 23:06:06'),
(169, 0, 'INV-2013-00', 0, 'CareShop', 'http://localhost/careshop/', 60, 1, 'shivansh', 'thakur', 'anshu04t@gmail.com', '6524397801', '', '', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Cash On Delivery', 'cod', 'shivansh', 'thakur', '', '#2280 sector 21C', '', 'frisco', '75034', 'United States', 223, 'Texas', 3669, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '43.0000', 3, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2021-10-18 23:07:03', '2021-10-18 23:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(203, 166, 1, 0, '', '2021-10-18 17:43:49'),
(204, 167, 1, 0, '', '2021-10-18 23:05:08'),
(205, 168, 1, 0, '', '2021-10-18 23:06:06'),
(206, 169, 1, 0, '', '2021-10-18 23:07:11'),
(207, 169, 3, 0, '', '2021-10-18 23:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(8, 17, 43, 251, 86, 'Size', '4oz', 'select'),
(9, 18, 46, 251, 86, 'Size', '4oz', 'select'),
(13, 23, 59, 249, 82, 'Size', '240 tablets', 'select'),
(19, 39, 97, 243, 70, 'Size', '1.75oz', 'select'),
(20, 40, 101, 243, 70, 'Size', '1.75oz', 'select'),
(21, 41, 105, 254, 92, 'Size', '8oz', 'select'),
(22, 42, 107, 254, 92, 'Size', '8oz', 'select'),
(23, 43, 109, 254, 92, 'Size', '8oz', 'select'),
(26, 45, 114, 240, 63, 'Size', '3.5oz', 'select'),
(27, 46, 119, 240, 63, 'Size', '3.5oz', 'select'),
(28, 47, 124, 240, 63, 'Size', '3.5oz', 'select'),
(29, 48, 129, 240, 63, 'Size', '3.5oz', 'select'),
(30, 49, 134, 240, 63, 'Size', '3.5oz', 'select'),
(31, 50, 139, 254, 92, 'Size', '8oz', 'select'),
(32, 51, 142, 254, 92, 'Size', '8oz', 'select'),
(33, 52, 145, 254, 92, 'Size', '8oz', 'select'),
(34, 56, 153, 244, 71, 'Size', '6.75oz', 'select'),
(35, 56, 155, 254, 92, 'Size', '8oz', 'select'),
(38, 58, 161, 254, 92, 'Size', '8oz', 'select'),
(39, 59, 164, 254, 92, 'Size', '8oz', 'select'),
(40, 60, 167, 254, 92, 'Size', '8oz', 'select'),
(41, 61, 170, 254, 92, 'Size', '8oz', 'select'),
(42, 62, 173, 254, 92, 'Size', '8oz', 'select'),
(44, 64, 176, 244, 71, 'Size', '6.75oz', 'select'),
(45, 64, 178, 254, 92, 'Size', '8oz', 'select'),
(47, 67, 186, 243, 69, 'Size', '3.5oz', 'select'),
(48, 67, 187, 240, 64, 'Size', '1.75oz', 'select'),
(54, 71, 203, 244, 72, 'Size', '17oz', 'select'),
(57, 77, 226, 254, 92, 'Size', '8oz', 'select'),
(58, 78, 232, 254, 92, 'Size', '8oz', 'select'),
(61, 80, 242, 243, 69, 'Size', '3.5oz', 'select'),
(62, 80, 243, 241, 66, 'Size', '1.75oz', 'select'),
(66, 85, 253, 249, 82, 'Size', '240 tablets', 'select'),
(67, 87, 260, 252, 88, 'Size', '8.8oz', 'select'),
(68, 87, 261, 257, 117, 'Glow Time Full Coverage Mineral BB Cream', 'BB6', 'radio'),
(69, 87, 262, 261, 175, 'DREAM TINT TINTED MOISTURIZER', 'medium light', 'radio'),
(70, 90, 269, 251, 86, 'Size', '4oz', 'select'),
(71, 90, 270, 251, 87, 'Size', '8oz', 'select'),
(75, 101, 306, 243, 70, 'Size', '1.75oz', 'select'),
(121, 166, 489, 244, 71, 'Size', '6.75oz', 'select'),
(122, 167, 490, 245, 73, 'Size', '6.75oz', 'select'),
(123, 168, 491, 245, 73, 'Size', '6.75oz', 'select'),
(124, 169, 492, 245, 73, 'Size', '6.75oz', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(16, 10, 122, 'Le Phyt\'acid -Phyt\'Acid Cleansing Face and Body Gel', 'CLEANSERS', 1, '39.0000', '39.0000', '2.4375', 0),
(17, 10, 182, 'Horsetail–Buckwheat Gel Shampoo–Water Element', 'HAIR CARE', 1, '62.0000', '62.0000', '3.8750', 0),
(18, 10, 167, 'Yogi Body Gel–Earth Element', 'BODY CARE', 1, '68.0000', '68.0000', '4.2500', 0),
(19, 10, 176, 'L\'alguessence bain Algae-Essence Bath, Balancing and Relaxing', 'BODY CARE', 1, '81.0000', '81.0000', '5.0625', 0),
(20, 11, 122, 'Le Phyt\'acid -Phyt\'Acid Cleansing Face and Body Gel', 'CLEANSERS', 1, '39.0000', '39.0000', '2.4375', 0),
(21, 11, 182, 'Horsetail–Buckwheat Gel Shampoo–Water Element', 'HAIR CARE', 1, '62.0000', '62.0000', '3.8750', 0),
(22, 11, 167, 'Yogi Body Gel–Earth Element', 'BODY CARE', 1, '68.0000', '68.0000', '4.2500', 0),
(23, 11, 176, 'L\'alguessence bain Algae-Essence Bath, Balancing and Relaxing', 'BODY CARE', 1, '81.0000', '81.0000', '5.0625', 0),
(42, 17, 161, 'Le gommage marin -Marine Exfoliation–Face', 'EXFOLIANTS', 1, '57.0000', '57.0000', '3.5625', 0),
(43, 17, 190, 'ConcenTrace Mineral Drops', 'SUPPLEMENTS', 1, '24.4100', '24.4100', '1.5256', 0),
(44, 17, 156, 'Le masque gel visage -Face and Scalp Gel Mask', 'MASKS', 1, '73.0000', '73.0000', '4.5625', 0),
(45, 18, 161, 'Le gommage marin -Marine Exfoliation–Face', 'EXFOLIANTS', 1, '57.0000', '57.0000', '3.5625', 0),
(46, 18, 190, 'ConcenTrace Mineral Drops', 'SUPPLEMENTS', 1, '24.4100', '24.4100', '1.5256', 0),
(47, 18, 156, 'Le masque gel visage -Face and Scalp Gel Mask', 'MASKS', 1, '73.0000', '73.0000', '4.5625', 0),
(48, 19, 184, 'ActivJoint', 'SUPPLEMENTS', 1, '31.6900', '31.6900', '1.9806', 0),
(49, 19, 355, 'ASTRA-C', 'Health Concerns', 3, '26.0000', '78.0000', '1.6250', 0),
(57, 23, 126, 'Skin Toner-METAL', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(58, 23, 175, 'Le sérum silhouette -Contouring Serum', 'BODY CARE', 2, '93.0000', '186.0000', '5.8125', 0),
(59, 23, 189, 'Complete Foods Multi', 'SUPPLEMENTS', 1, '54.9900', '54.9900', '3.4369', 0),
(88, 35, 146, 'Phyt\'Ether Serum- FIRE', 'PHYT\'ETHERS', 1, '74.0000', '74.0000', '4.6250', 0),
(96, 39, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(97, 39, 129, 'Le Crème Acide- PH Cream', 'DAY CREAMS', 1, '60.0000', '60.0000', '3.7500', 0),
(98, 39, 154, 'Black Clay Mask–Water', 'MASKS', 1, '64.0000', '64.0000', '4.0000', 0),
(99, 39, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(100, 40, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(101, 40, 129, 'Le Crème Acide- PH Cream', 'DAY CREAMS', 1, '60.0000', '60.0000', '3.7500', 0),
(102, 40, 154, 'Black Clay Mask–Water', 'MASKS', 1, '64.0000', '64.0000', '4.0000', 0),
(103, 40, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(104, 41, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 1, '68.0000', '68.0000', '4.2500', 0),
(105, 41, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(106, 42, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 1, '68.0000', '68.0000', '4.2500', 0),
(107, 42, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(108, 43, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 1, '68.0000', '68.0000', '4.2500', 0),
(109, 43, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(112, 45, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(113, 45, 126, 'Skin Toner-METAL', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(114, 45, 133, 'Ceresal Day Crème - METAL', 'DAY CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(115, 45, 143, 'Element (Night) Crème -METAL', 'NIGHT CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(116, 45, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(117, 46, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(118, 46, 126, 'Skin Toner-METAL', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(119, 46, 133, 'Ceresal Day Crème - METAL', 'DAY CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(120, 46, 143, 'Element (Night) Crème -METAL', 'NIGHT CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(121, 46, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(122, 47, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(123, 47, 126, 'Skin Toner-METAL', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(124, 47, 133, 'Ceresal Day Crème - METAL', 'DAY CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(125, 47, 143, 'Element (Night) Crème -METAL', 'NIGHT CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(126, 47, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(127, 48, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(128, 48, 126, 'Skin Toner-METAL', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(129, 48, 133, 'Ceresal Day Crème - METAL', 'DAY CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(130, 48, 143, 'Element (Night) Crème -METAL', 'NIGHT CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(131, 48, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(132, 49, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(133, 49, 126, 'Skin Toner-METAL', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(134, 49, 133, 'Ceresal Day Crème - METAL', 'DAY CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(135, 49, 143, 'Element (Night) Crème -METAL', 'NIGHT CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(136, 49, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(137, 50, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 2, '68.0000', '136.0000', '4.2500', 0),
(138, 50, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(139, 50, 343, 'Avocado Body Lotion', 'Bodiscience', 2, '15.7500', '31.5000', '0.9844', 0),
(140, 51, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 1, '68.0000', '68.0000', '4.2500', 0),
(141, 51, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(142, 51, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(143, 52, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 1, '68.0000', '68.0000', '4.2500', 0),
(144, 52, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(145, 52, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(146, 53, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(147, 53, 127, 'Skin Toner- WATER', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(148, 53, 158, 'La crème contour des yeux    Eye Cream–All Skin Conditions', 'EYE CREAMS', 1, '72.0000', '72.0000', '4.5000', 0),
(152, 55, 175, 'Le sérum silhouette -Contouring Serum', 'BODY CARE', 1, '93.0000', '93.0000', '5.8125', 0),
(153, 56, 171, 'Le lait corporel -Hydrating Body Milk', 'BODY CARE', 1, '56.0000', '56.0000', '0.0000', 0),
(154, 56, 182, 'Horsetail–Buckwheat Gel Shampoo–Water Element', 'HAIR CARE', 2, '62.0000', '124.0000', '0.0000', 0),
(155, 56, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.0000', 0),
(159, 58, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 2, '68.0000', '136.0000', '4.2500', 0),
(160, 58, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(161, 58, 343, 'Avocado Body Lotion', 'Bodiscience', 2, '15.7500', '31.5000', '0.9844', 0),
(162, 59, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 2, '68.0000', '136.0000', '4.2500', 0),
(163, 59, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(164, 59, 343, 'Avocado Body Lotion', 'Bodiscience', 2, '15.7500', '31.5000', '0.9844', 0),
(165, 60, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 2, '68.0000', '136.0000', '4.2500', 0),
(166, 60, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(167, 60, 343, 'Avocado Body Lotion', 'Bodiscience', 2, '15.7500', '31.5000', '0.9844', 0),
(168, 61, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 2, '68.0000', '136.0000', '4.2500', 0),
(169, 61, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(170, 61, 343, 'Avocado Body Lotion', 'Bodiscience', 2, '15.7500', '31.5000', '0.9844', 0),
(171, 62, 160, 'La crème soleil-formerly Extreme Yang OE Crème ', 'SUNSCREEN', 1, '68.0000', '68.0000', '4.2500', 0),
(172, 62, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(173, 62, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(176, 64, 171, 'Le lait corporel -Hydrating Body Milk', 'BODY CARE', 1, '56.0000', '56.0000', '3.5000', 0),
(177, 64, 172, 'La crème mains -Extreme Hydrating Hand Cream', 'BODY CARE', 1, '39.0000', '39.0000', '2.4375', 0),
(178, 64, 343, 'Avocado Body Lotion', 'Bodiscience', 2, '15.7500', '31.5000', '0.9844', 0),
(185, 67, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(186, 67, 129, 'Le Crème Acide- PH Cream', 'DAY CREAMS', 1, '86.0000', '86.0000', '5.3750', 0),
(187, 67, 133, 'Ceresal Day Crème - METAL', 'DAY CREAMS', 1, '71.0000', '71.0000', '4.4375', 0),
(188, 67, 148, 'Phyt\'Ether Serum- METAL', 'PHYT\'ETHERS', 1, '74.0000', '74.0000', '4.6250', 0),
(189, 67, 149, 'Phyt\'Ether Serum- WATER', 'PHYT\'ETHERS', 1, '74.0000', '74.0000', '4.6250', 0),
(200, 71, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(201, 71, 143, 'Element (Night) Crème -METAL', 'NIGHT CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(202, 71, 158, 'La crème contour des yeux    Eye Cream–All Skin Conditions', 'EYE CREAMS', 1, '72.0000', '72.0000', '4.5000', 0),
(203, 71, 171, 'Le lait corporel -Hydrating Body Milk', 'BODY CARE', 1, '101.0000', '101.0000', '6.3125', 0),
(219, 76, 184, 'ActivJoint', 'SUPPLEMENTS', 1, '31.6900', '31.6900', '1.9806', 0),
(220, 76, 203, 'SLEEP WELL Travel Aromatherapy Candle', 'Scentered Aromatherapy', 1, '29.0000', '29.0000', '1.8125', 0),
(221, 76, 227, 'Ultimate Survival Kit', 'Scentered Aromatherapy', 1, '80.0000', '80.0000', '5.0000', 0),
(222, 77, 222, 'I Want To ESCAPE Gift Set', 'Scentered Aromatherapy', 1, '39.0000', '39.0000', '2.4375', 0),
(223, 77, 255, 'Green Adventurite Triple Happiness Bracelet with Anahata Charm', 'Chakra Mala Collection', 1, '34.0000', '34.0000', '2.1250', 0),
(224, 77, 276, 'Tree Agate Faceted Stretch Bracelet', 'Lucky Buddha Beads', 2, '38.0000', '76.0000', '2.3750', 0),
(225, 77, 299, 'Detachable Elephant Charm', 'Lucky Buddha Beads', 1, '12.0000', '12.0000', '0.7500', 0),
(226, 77, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(227, 77, 353, 'Sugar Butter Travel Kit', 'Bodiscience', 1, '28.0000', '28.0000', '1.7500', 0),
(228, 78, 222, 'I Want To ESCAPE Gift Set', 'Scentered Aromatherapy', 1, '39.0000', '39.0000', '2.4375', 0),
(229, 78, 255, 'Green Adventurite Triple Happiness Bracelet with Anahata Charm', 'Chakra Mala Collection', 1, '34.0000', '34.0000', '2.1250', 0),
(230, 78, 276, 'Tree Agate Faceted Stretch Bracelet', 'Lucky Buddha Beads', 2, '38.0000', '76.0000', '2.3750', 0),
(231, 78, 299, 'Detachable Elephant Charm', 'Lucky Buddha Beads', 1, '12.0000', '12.0000', '0.7500', 0),
(232, 78, 343, 'Avocado Body Lotion', 'Bodiscience', 1, '15.7500', '15.7500', '0.9844', 0),
(233, 78, 353, 'Sugar Butter Travel Kit', 'Bodiscience', 1, '28.0000', '28.0000', '1.7500', 0),
(242, 80, 129, 'Le Crème Acide- PH Cream', 'DAY CREAMS', 1, '86.0000', '86.0000', '5.3750', 0),
(243, 80, 134, 'Ceresal Day Crème -WATER ', 'DAY CREAMS', 1, '71.0000', '71.0000', '4.4375', 0),
(250, 84, 394, 'SERENITY: AMETHYST + ROSEWOOD NAMASTE MALA WITH GEMSTONE', 'GEMSTONE GIFT SET', 1, '96.0000', '96.0000', '6.0000', 0),
(251, 85, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(252, 85, 170, 'L\'émulsion corporelle -Body Lotion', 'BODY CARE', 1, '56.0000', '56.0000', '3.5000', 0),
(253, 85, 189, 'Complete Foods Multi', 'SUPPLEMENTS', 1, '54.9900', '54.9900', '3.4369', 0),
(254, 85, 385, 'I Sleep Soundly™ tablets', 'SUPPLEMENTS', 1, '21.9900', '21.9900', '1.3744', 0),
(257, 87, 157, 'Ageless Clay Mask (Pink/Soothing)', 'MASKS', 1, '57.0000', '57.0000', '3.5625', 0),
(258, 87, 181, 'Sweet Almond Oil Shampoo–Metal Element', 'HAIR CARE', 1, '62.0000', '62.0000', '3.8750', 0),
(259, 87, 183, 'Phyt\'liss Hair Conditioner', 'HAIR CARE', 1, '33.0000', '33.0000', '2.0625', 0),
(260, 87, 194, 'Stress-X Magnesium Powder', 'SUPPLEMENTS', 1, '23.8900', '23.8900', '1.4931', 0),
(261, 87, 400, 'Glow Time® Full Coverage Mineral BB Cream', 'Face', 1, '50.0000', '50.0000', '3.1250', 0),
(262, 87, 405, 'Dream Tint® Tinted Moisturizer SPF 15', 'Face', 1, '44.0000', '44.0000', '2.7500', 0),
(263, 88, 206, 'SLEEP WELL Mini Wellbeing Ritual Aromatherapy Balm', 'Scentered Aromatherapy', 2, '7.0000', '14.0000', '0.0000', 0),
(264, 88, 224, 'LOVE Mini Aromatherapy Balm', 'Scentered Aromatherapy', 2, '7.0000', '14.0000', '0.0000', 0),
(265, 88, 228, 'Wellbeing Ritual Aromatherapy Tin', 'Scentered Aromatherapy', 1, '33.0000', '33.0000', '0.0000', 0),
(266, 89, 206, 'SLEEP WELL Mini Wellbeing Ritual Aromatherapy Balm', 'Scentered Aromatherapy', 2, '7.0000', '14.0000', '0.0000', 0),
(267, 89, 224, 'LOVE Mini Aromatherapy Balm', 'Scentered Aromatherapy', 2, '7.0000', '14.0000', '0.0000', 0),
(268, 89, 228, 'Wellbeing Ritual Aromatherapy Tin', 'Scentered Aromatherapy', 1, '33.0000', '33.0000', '0.0000', 0),
(269, 90, 190, 'ConcenTrace Mineral Drops', 'SUPPLEMENTS', 1, '24.4100', '24.4100', '1.5256', 0),
(270, 90, 190, 'ConcenTrace Mineral Drops', 'SUPPLEMENTS', 1, '34.9700', '34.9700', '2.1856', 0),
(271, 90, 259, 'Seven Chakra Om Charm Bracelet', 'Chakra Mala Collection', 1, '38.0000', '38.0000', '2.3750', 0),
(272, 90, 371, 'CRANBERRY-ELDERBERRY SERVING SIZE: 1 ml (1 dropper full) SERVINGS PER BOTTLE: 60 ', 'Teas', 1, '32.0000', '32.0000', '2.0000', 0),
(276, 92, 206, 'SLEEP WELL Mini Wellbeing Ritual Aromatherapy Balm', 'Scentered Aromatherapy', 2, '7.0000', '14.0000', '0.0000', 0),
(277, 92, 224, 'LOVE Mini Aromatherapy Balm', 'Scentered Aromatherapy', 2, '7.0000', '14.0000', '0.0000', 0),
(278, 92, 228, 'Wellbeing Ritual Aromatherapy Tin', 'Scentered Aromatherapy', 2, '33.0000', '66.0000', '0.0000', 0),
(279, 92, 421, '24-Karat Gold Dust ', '24-Karat Gold Dust ', 3, '14.0000', '42.0000', '0.0000', 0),
(280, 93, 228, 'Wellbeing Ritual Aromatherapy Tin', 'Scentered Aromatherapy', 4, '33.0000', '132.0000', '0.0000', 0),
(281, 93, 421, '24-Karat Gold Dust ', '24-Karat Gold Dust ', 6, '14.0000', '84.0000', '0.0000', 0),
(284, 95, 125, 'Skin Toner-EARTH', 'TONERS', 1, '47.0000', '47.0000', '2.9375', 0),
(285, 95, 162, 'Ageless PHYTO Peel', 'EXFOLIANTS', 1, '78.0000', '78.0000', '4.8750', 0),
(286, 95, 191, 'Coral Calcium with ConcenTrace®', 'SUPPLEMENTS', 1, '31.2900', '31.2900', '1.9556', 0),
(287, 95, 199, 'Liquid Vitamin D3', 'SUPPLEMENTS', 1, '23.2900', '23.2900', '1.4556', 0),
(297, 98, 121, 'Ageless Cleansing Foam', 'CLEANSERS', 1, '50.0000', '50.0000', '3.1250', 0),
(298, 98, 128, 'Ageless Skin Toner', 'TONERS', 1, '44.0000', '44.0000', '2.7500', 0),
(299, 98, 144, 'Element (Night) Crème -WATER', 'NIGHT CREAMS', 1, '84.0000', '84.0000', '5.2500', 0),
(306, 101, 129, 'Le Crème Acide- PH Cream', 'DAY CREAMS', 2, '60.0000', '120.0000', '3.7500', 0),
(307, 101, 141, 'Element (Night)  Crème-FIRE', 'NIGHT CREAMS', 2, '84.0000', '168.0000', '5.2500', 0),
(308, 101, 350, 'Sugar Sweet Body Wash', 'Bodiscience', 1, '26.0000', '26.0000', '1.6250', 0),
(489, 166, 171, 'Le lait corporel -Hydrating Body Milk', 'BODY CARE', 1, '56.0000', '56.0000', '0.0000', 0),
(490, 167, 178, 'Algae Shampoo–Wood Element', 'HAIR CARE', 1, '35.0000', '35.0000', '0.0000', 0),
(491, 168, 178, 'Algae Shampoo–Wood Element', 'HAIR CARE', 1, '35.0000', '35.0000', '0.0000', 0),
(492, 169, 178, 'Algae Shampoo–Wood Element', 'HAIR CARE', 1, '35.0000', '35.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(32, 10, 'sub_total', 'Sub-Total', '250.0000', 1),
(33, 10, 'shipping', 'Free Shipping', '0.0000', 3),
(34, 10, 'tax', 'Tax', '15.6250', 5),
(35, 10, 'total', 'Total', '265.6250', 9),
(36, 11, 'sub_total', 'Sub-Total', '250.0000', 1),
(37, 11, 'shipping', 'Free Shipping', '0.0000', 3),
(38, 11, 'tax', 'Tax', '15.6250', 5),
(39, 11, 'total', 'Total', '265.6250', 9),
(64, 17, 'sub_total', 'Sub-Total', '154.4100', 1),
(65, 17, 'shipping', 'Free Shipping', '0.0000', 3),
(66, 17, 'tax', 'Tax', '9.6506', 5),
(67, 17, 'total', 'Total', '164.0606', 9),
(68, 18, 'sub_total', 'Sub-Total', '154.4100', 1),
(69, 18, 'shipping', 'Free Shipping', '0.0000', 3),
(70, 18, 'tax', 'Tax', '9.6506', 5),
(71, 18, 'total', 'Total', '164.0606', 9),
(72, 19, 'sub_total', 'Sub-Total', '109.6900', 1),
(73, 19, 'shipping', 'Free Shipping', '0.0000', 3),
(74, 19, 'tax', 'Tax', '6.8556', 5),
(75, 19, 'total', 'Total', '116.5456', 9),
(86, 23, 'sub_total', 'Sub-Total', '287.9900', 1),
(87, 23, 'shipping', 'Free Shipping', '0.0000', 3),
(88, 23, 'tax', 'Tax', '17.9994', 5),
(89, 23, 'total', 'Total', '305.9894', 9),
(133, 35, 'sub_total', 'Sub-Total', '74.0000', 1),
(134, 35, 'shipping', 'Flat Shipping Rate', '8.0000', 3),
(135, 35, 'tax', 'Tax', '4.6250', 5),
(136, 35, 'total', 'Total', '86.6250', 9),
(148, 39, 'sub_total', 'Sub-Total', '252.0000', 1),
(149, 39, 'shipping', 'Free Shipping', '0.0000', 3),
(150, 39, 'tax', 'Tax', '15.7500', 5),
(151, 39, 'total', 'Total', '267.7500', 9),
(152, 40, 'sub_total', 'Sub-Total', '252.0000', 1),
(153, 40, 'shipping', 'Free Shipping', '0.0000', 3),
(154, 40, 'tax', 'Tax', '15.7500', 5),
(155, 40, 'total', 'Total', '267.7500', 9),
(156, 41, 'sub_total', 'Sub-Total', '83.7500', 1),
(157, 41, 'shipping', 'Curbside Pickup', '0.0000', 3),
(158, 41, 'tax', 'Tax', '5.2344', 5),
(159, 41, 'total', 'Total', '88.9844', 9),
(160, 42, 'sub_total', 'Sub-Total', '83.7500', 1),
(161, 42, 'shipping', 'Curbside Pickup', '0.0000', 3),
(162, 42, 'tax', 'Tax', '5.2344', 5),
(163, 42, 'total', 'Total', '88.9844', 9),
(164, 43, 'sub_total', 'Sub-Total', '83.7500', 1),
(165, 43, 'shipping', 'Curbside Pickup', '0.0000', 3),
(166, 43, 'tax', 'Tax', '5.2344', 5),
(167, 43, 'total', 'Total', '88.9844', 9),
(172, 45, 'sub_total', 'Sub-Total', '343.0000', 1),
(173, 45, 'shipping', 'Free Shipping', '0.0000', 3),
(174, 45, 'tax', 'Tax', '21.4375', 5),
(175, 45, 'total', 'Total', '364.4375', 9),
(176, 46, 'sub_total', 'Sub-Total', '343.0000', 1),
(177, 46, 'shipping', 'Free Shipping', '0.0000', 3),
(178, 46, 'tax', 'Tax', '21.4375', 5),
(179, 46, 'total', 'Total', '364.4375', 9),
(180, 47, 'sub_total', 'Sub-Total', '343.0000', 1),
(181, 47, 'shipping', 'Free Shipping', '0.0000', 3),
(182, 47, 'tax', 'Tax', '21.4375', 5),
(183, 47, 'total', 'Total', '364.4375', 9),
(184, 48, 'sub_total', 'Sub-Total', '343.0000', 1),
(185, 48, 'shipping', 'Free Shipping', '0.0000', 3),
(186, 48, 'tax', 'Tax', '21.4375', 5),
(187, 48, 'total', 'Total', '364.4375', 9),
(188, 49, 'sub_total', 'Sub-Total', '343.0000', 1),
(189, 49, 'shipping', 'Free Shipping', '0.0000', 3),
(190, 49, 'tax', 'Tax', '21.4375', 5),
(191, 49, 'total', 'Total', '364.4375', 9),
(192, 50, 'sub_total', 'Sub-Total', '206.5000', 1),
(193, 50, 'shipping', 'Free Shipping', '0.0000', 3),
(194, 50, 'tax', 'Tax', '12.9063', 5),
(195, 50, 'total', 'Total', '219.4063', 9),
(196, 51, 'sub_total', 'Sub-Total', '122.7500', 1),
(197, 51, 'shipping', 'Free Shipping', '0.0000', 3),
(198, 51, 'tax', 'Tax', '7.6719', 5),
(199, 51, 'total', 'Total', '130.4219', 9),
(200, 52, 'sub_total', 'Sub-Total', '122.7500', 1),
(201, 52, 'shipping', 'Free Shipping', '0.0000', 3),
(202, 52, 'tax', 'Tax', '7.6719', 5),
(203, 52, 'total', 'Total', '130.4219', 9),
(204, 53, 'sub_total', 'Sub-Total', '169.0000', 1),
(205, 53, 'shipping', 'Free Shipping', '0.0000', 3),
(206, 53, 'tax', 'Tax', '10.5625', 5),
(207, 53, 'total', 'Total', '179.5625', 9),
(212, 55, 'sub_total', 'Sub-Total', '93.0000', 1),
(213, 55, 'shipping', 'Curbside Pickup', '0.0000', 3),
(214, 55, 'tax', 'Tax', '5.8125', 5),
(215, 55, 'total', 'Total', '98.8125', 9),
(216, 56, 'sub_total', 'Sub-Total', '195.7500', 1),
(217, 56, 'shipping', 'Free Shipping', '0.0000', 3),
(218, 56, 'total', 'Total', '195.7500', 9),
(223, 58, 'sub_total', 'Sub-Total', '206.5000', 1),
(224, 58, 'shipping', 'Curbside Pickup', '0.0000', 3),
(225, 58, 'tax', 'Tax', '12.9063', 5),
(226, 58, 'total', 'Total', '219.4063', 9),
(227, 59, 'sub_total', 'Sub-Total', '206.5000', 1),
(228, 59, 'shipping', 'Curbside Pickup', '0.0000', 3),
(229, 59, 'tax', 'Tax', '12.9063', 5),
(230, 59, 'total', 'Total', '219.4063', 9),
(231, 60, 'sub_total', 'Sub-Total', '206.5000', 1),
(232, 60, 'shipping', 'Free Shipping', '0.0000', 3),
(233, 60, 'tax', 'Tax', '12.9063', 5),
(234, 60, 'total', 'Total', '219.4063', 9),
(235, 61, 'sub_total', 'Sub-Total', '206.5000', 1),
(236, 61, 'shipping', 'Curbside Pickup', '0.0000', 3),
(237, 61, 'tax', 'Tax', '12.9063', 5),
(238, 61, 'total', 'Total', '219.4063', 9),
(239, 62, 'sub_total', 'Sub-Total', '122.7500', 1),
(240, 62, 'shipping', 'Curbside Pickup', '0.0000', 3),
(241, 62, 'tax', 'Tax', '7.6719', 5),
(242, 62, 'total', 'Total', '130.4219', 9),
(247, 64, 'sub_total', 'Sub-Total', '126.5000', 1),
(248, 64, 'shipping', 'Free Shipping', '0.0000', 3),
(249, 64, 'tax', 'Tax', '7.9063', 5),
(250, 64, 'total', 'Total', '134.4063', 9),
(260, 67, 'sub_total', 'Sub-Total', '355.0000', 1),
(261, 67, 'shipping', 'Free Shipping', '0.0000', 3),
(262, 67, 'coupon', 'Coupon (Grateful)', '-71.0000', 4),
(263, 67, 'tax', 'Tax', '17.7500', 5),
(264, 67, 'total', 'Total', '301.7500', 9),
(280, 71, 'sub_total', 'Sub-Total', '307.0000', 1),
(281, 71, 'shipping', 'Free Shipping', '0.0000', 3),
(282, 71, 'tax', 'Tax', '19.1875', 5),
(283, 71, 'total', 'Total', '326.1875', 9),
(300, 76, 'sub_total', 'Sub-Total', '140.6900', 1),
(301, 76, 'shipping', 'Free Shipping', '0.0000', 3),
(302, 76, 'tax', 'Tax', '8.7931', 5),
(303, 76, 'total', 'Total', '149.4831', 9),
(304, 77, 'sub_total', 'Sub-Total', '204.7500', 1),
(305, 77, 'shipping', 'Curbside Pickup', '0.0000', 3),
(306, 77, 'tax', 'Tax', '12.7969', 5),
(307, 77, 'total', 'Total', '217.5469', 9),
(308, 78, 'sub_total', 'Sub-Total', '204.7500', 1),
(309, 78, 'shipping', 'Curbside Pickup', '0.0000', 3),
(310, 78, 'tax', 'Tax', '12.7969', 5),
(311, 78, 'total', 'Total', '217.5469', 9),
(317, 80, 'sub_total', 'Sub-Total', '157.0000', 1),
(318, 80, 'shipping', 'Free Shipping', '0.0000', 3),
(319, 80, 'tax', 'Tax', '9.8125', 5),
(320, 80, 'total', 'Total', '166.8125', 9),
(333, 84, 'sub_total', 'Sub-Total', '96.0000', 1),
(334, 84, 'shipping', 'Curbside Pickup', '0.0000', 3),
(335, 84, 'tax', 'Tax', '6.0000', 5),
(336, 84, 'total', 'Total', '102.0000', 9),
(337, 85, 'sub_total', 'Sub-Total', '182.9800', 1),
(338, 85, 'shipping', 'Curbside Pickup', '0.0000', 3),
(339, 85, 'tax', 'Tax', '11.4363', 5),
(340, 85, 'total', 'Total', '194.4163', 9),
(345, 87, 'sub_total', 'Sub-Total', '269.8900', 1),
(346, 87, 'shipping', 'Free Shipping', '0.0000', 3),
(347, 87, 'tax', 'Tax', '16.8681', 5),
(348, 87, 'total', 'Total', '286.7581', 9),
(349, 88, 'sub_total', 'Sub-Total', '61.0000', 1),
(350, 88, 'shipping', 'Flat Shipping Rate', '8.0000', 3),
(351, 88, 'total', 'Total', '69.0000', 9),
(352, 89, 'sub_total', 'Sub-Total', '61.0000', 1),
(353, 89, 'shipping', 'Curbside Pickup', '0.0000', 3),
(354, 89, 'total', 'Total', '61.0000', 9),
(355, 90, 'sub_total', 'Sub-Total', '129.3800', 1),
(356, 90, 'shipping', 'Free Shipping', '0.0000', 3),
(357, 90, 'tax', 'Tax', '8.0863', 5),
(358, 90, 'total', 'Total', '137.4663', 9),
(363, 92, 'sub_total', 'Sub-Total', '136.0000', 1),
(364, 92, 'shipping', 'Free Shipping', '0.0000', 3),
(365, 92, 'total', 'Total', '136.0000', 9),
(366, 93, 'sub_total', 'Sub-Total', '216.0000', 1),
(367, 93, 'shipping', 'Free Shipping', '0.0000', 3),
(368, 93, 'coupon', 'Coupon (SipShop20)', '-43.2000', 4),
(369, 93, 'total', 'Total', '172.8000', 9),
(374, 95, 'sub_total', 'Sub-Total', '179.5800', 1),
(375, 95, 'shipping', 'Free Shipping', '0.0000', 3),
(376, 95, 'tax', 'Tax', '11.2238', 5),
(377, 95, 'total', 'Total', '190.8038', 9),
(387, 98, 'sub_total', 'Sub-Total', '178.0000', 1),
(388, 98, 'shipping', 'Free Shipping', '0.0000', 3),
(389, 98, 'tax', 'Tax', '11.1250', 5),
(390, 98, 'total', 'Total', '189.1250', 9),
(400, 101, 'sub_total', 'Sub-Total', '314.0000', 1),
(401, 101, 'shipping', 'Free Shipping', '0.0000', 3),
(402, 101, 'tax', 'Tax', '19.6250', 5),
(403, 101, 'total', 'Total', '333.6250', 9),
(655, 166, 'total', 'Total', '64.0000', 9),
(654, 166, 'shipping', 'Flat Shipping Rate', '8.0000', 3),
(653, 166, 'sub_total', 'Sub-Total', '56.0000', 1),
(656, 167, 'sub_total', 'Sub-Total', '35.0000', 1),
(657, 167, 'shipping', 'Curbside Pickup', '0.0000', 3),
(658, 167, 'total', 'Total', '35.0000', 9),
(659, 168, 'sub_total', 'Sub-Total', '35.0000', 1),
(660, 168, 'shipping', 'Flat Shipping Rate', '8.0000', 3),
(661, 168, 'total', 'Total', '43.0000', 9),
(662, 169, 'sub_total', 'Sub-Total', '35.0000', 1),
(663, 169, 'shipping', 'Flat Shipping Rate', '8.0000', 3),
(664, 169, 'total', 'Total', '43.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
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
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(107, 'SKINCARE', '', '', '', '', '', '6.75 oz', '', 9998, 5, 'catalog/products/cleansing-milk-1.png', 0, 1, '48.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 41, '2020-05-28 06:09:24', '2021-08-23 15:07:41'),
(120, 'CLEANSERS', '', '', '', '', '', '', '', 9999, 5, 'catalog/products/Purifying-cleansing-Gel.png', 0, 1, '47.0000', 0, 9, '2020-06-02', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 186, '2020-06-02 05:52:50', '2020-06-02 08:03:40'),
(121, 'CLEANSERS', '', '', '', '', '', '4.75 oz', '', 9986, 5, 'catalog/products/Ageless-Cleansing-Foam.png', 0, 1, '48.0000', 0, 9, '2020-05-28', '4.70000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 468, '2020-06-02 06:03:05', '2021-07-06 03:22:43'),
(185, 'SUPPLEMENTS', '', '', '', '', '', '', '', 9998, 5, 'catalog/new-products/sup/ActivJoint-Platinum.jpg', 0, 1, '34.9900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 130, '2020-06-02 06:03:05', '2020-06-22 09:17:51'),
(184, 'SUPPLEMENTS', '', '', '', '', '', '180 Tabs', '', 10000, 5, 'catalog/new-products/sup/activejoint.jpg', 0, 1, '31.6900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 274, '2020-06-02 06:03:05', '2020-06-22 09:14:12'),
(122, 'CLEANSERS', '', '', '', '', '', '6.8 OZ', '', 9997, 5, 'catalog/new-products/Le-Phytacid--PhytAcid-Cleansing-Face-and-Body-Gel_6.jpg', 0, 1, '38.0000', 0, 9, '2020-05-28', '6.80000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 257, '2020-06-02 06:03:05', '2021-07-06 03:15:34'),
(123, 'TONERS', '', '', '', '', '', '6.75 oz', '', 9998, 5, 'catalog/new-products/Skin-Toner-WOOD_6.jpg', 0, 1, '47.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 175, '2020-06-02 06:03:05', '2021-10-01 05:30:52'),
(124, 'TONERS', '', '', '', '', '', '6.75 OZ', '', 9998, 5, 'catalog/new-products/Skin-Toner-FIRE_6.jpg', 0, 1, '47.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 162, '2020-06-02 06:03:05', '2021-10-01 05:31:33'),
(125, 'TONERS', '', '', '', '', '', '6.75 OZ', '', 9997, 5, 'catalog/new-products/Skin-Toner-EARTH_6.jpg', 0, 1, '47.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 256, '2020-06-02 06:03:05', '2021-10-01 05:31:16'),
(126, 'TONERS', '', '', '', '', '', '6.75 OZ', '', 9997, 5, 'catalog/new-products/Skin-Toner-METAL_6.jpg', 0, 1, '47.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 153, '2020-06-02 06:03:05', '2021-10-01 05:31:54'),
(127, 'TONERS', '', '', '', '', '', '6.75 OZ', '', 9997, 5, 'catalog/new-products/Skin-Toner--WATER_6.jpg', 0, 1, '47.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 174, '2020-06-02 06:03:05', '2021-10-01 05:31:04'),
(128, 'TONERS', '', '', '', '', '', '6.75 OZ', '', 9997, 5, 'catalog/new-products/Ageless-Skin-Toner_6.jpg', 0, 1, '47.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 285, '2020-06-02 06:03:05', '2021-07-06 03:23:12'),
(129, 'DAY CREAMS', '', '', '', '', '', '', '', 9990, 5, 'catalog/new-products/Le-Creme-Acide--PH-Cream_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 254, '2020-06-02 06:03:05', '2020-06-02 08:35:28'),
(130, 'DAY CREAMS', '', '', '', '', '', '', '', 9997, 5, 'catalog/new-products/Ceresal-Day-Creme---WOOD_1.jpg', 0, 1, '84.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 214, '2020-06-02 06:03:05', '2021-10-01 05:23:38'),
(131, 'DAY CREAMS', '', '', '', '', '', '', '', 9998, 5, 'catalog/new-products/Ceresal-Day-Creme--FIRE_1.jpg', 0, 1, '84.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 212, '2020-06-02 06:03:05', '2021-10-01 05:23:51'),
(132, 'DAY CREAMS', '', '', '', '', '', '', '', 9999, 5, 'catalog/new-products/Ceresal-Day-Creme--EARTH_1.jpg', 0, 1, '84.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 252, '2020-06-02 06:03:05', '2021-10-01 05:24:43'),
(133, 'DAY CREAMS', '', '', '', '', '', '', '', 9994, 5, 'catalog/new-products/Ceresal-Day-Creme---METAL_1.jpg', 0, 1, '84.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 308, '2020-06-02 06:03:05', '2021-10-01 05:24:03'),
(134, 'DAY CREAMS', '', '', '', '', '', '', '', 9996, 5, 'catalog/new-products/Ceresal-Day-Creme--WATER_1.jpg', 0, 1, '84.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 229, '2020-06-02 06:03:05', '2021-10-01 05:24:28'),
(135, 'DAY CREAMS', '', '', '', '', '', '1.75 OZ', '', 9994, 5, 'catalog/new-products/La-creme-visage-Face-Cream-with-Vitamin-E-Biostimulant_1.jpg', 0, 1, '74.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 216, '2020-06-02 06:03:05', '2020-06-02 08:21:56'),
(136, 'DAY CREAMS', '', '', '', '', '', '1.75 OZ', '', 9999, 5, 'catalog/new-products/Le-gel-visage--Face-Gel_1.jpg', 0, 1, '70.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 164, '2020-06-02 06:03:05', '2020-06-02 08:24:35'),
(137, 'DAY CREAMS', '', '', '', '', '', '1.75 OZ', '', 9996, 5, 'catalog/new-products/Ageless-Extreme-Hydrating-Cream_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 369, '2020-06-02 06:03:05', '2021-07-06 03:20:04'),
(138, 'DAY CREAMS', '', '', '', '', '', '1.75 OZ', '', 9999, 5, 'catalog/new-products/Ageless-Nourishing-Cream_1.jpg', 0, 1, '79.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 340, '2020-06-02 06:03:05', '2021-07-06 03:19:23'),
(139, 'DAY CREAMS', '', '', '', '', '', '1.75 OZ', '', 9999, 5, 'catalog/new-products/Ageless-Perfection-Cream-Pigmentation-Cream_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 309, '2020-06-02 06:03:05', '2021-07-06 03:18:40'),
(140, 'NIGHT CREAMS', '', '', '', '', '', '1.75 OZ', '', 9997, 5, 'catalog/new-products/Element-Night--Creme-WOOD_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 200, '2020-06-02 06:03:05', '2021-10-01 05:26:03'),
(141, 'NIGHT CREAMS', '', '', '', '', '', '1.75 OZ', '', 9997, 5, 'catalog/new-products/Element-Night--Creme-FIRE_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 265, '2020-06-02 06:03:05', '2021-10-01 05:26:27'),
(142, 'NIGHT CREAMS', '', '', '', '', '', '1.75 OZ', '', 9999, 5, 'catalog/new-products/Element-Night--Creme-EARTH_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 189, '2020-06-02 06:03:05', '2021-10-01 05:26:17'),
(143, 'NIGHT CREAMS', '', '', '', '', '', '1.75 oz', '', 9998, 5, 'catalog/new-products/Element-Night-Creme--METAL_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 278, '2020-06-02 06:03:05', '2021-10-01 05:26:38'),
(144, 'NIGHT CREAMS', '', '', '', '', '', '1.75 OZ', '', 9997, 5, 'catalog/new-products/Element-Night-Creme--WATER_1.jpg', 0, 1, '86.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 187, '2020-06-02 06:03:05', '2021-10-01 05:26:51'),
(150, 'MASKS', '', '', '', '', '', '3.5 OZ', '', 9999, 5, 'catalog/new-products/Green-Clay-MaskWood_3.jpg', 0, 1, '66.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 228, '2020-06-02 06:03:05', '2021-10-01 05:19:13'),
(151, 'MASKS', '', '', '', '', '', '3.5 OZ', '', 9999, 5, 'catalog/new-products/Red-Clay-Mask-Fire-_3.jpg', 0, 1, '66.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 221, '2020-06-02 06:03:05', '2021-10-01 05:21:08'),
(152, 'MASKS', '', '', '', '', '', '3.5 OZ', '', 10000, 5, 'catalog/new-products/Yellow-Clay-MaskEarth_3.jpg', 0, 1, '66.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 233, '2020-06-02 06:03:05', '2021-10-01 05:21:34'),
(153, 'MASKS', '', '', '', '', '', '3.5 OZ', '', 9997, 5, 'catalog/new-products/White-Clay-MaskMetal_3.jpg', 0, 1, '66.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 250, '2020-06-02 06:03:05', '2021-10-01 05:21:21'),
(154, 'MASKS', '', '', '', '', '', '3.5 OZ', '', 9997, 5, 'catalog/new-products/Black-Clay-MaskWater_3.jpg', 0, 1, '66.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 305, '2020-06-02 06:03:05', '2021-10-01 05:20:25'),
(155, 'MASKS', '', '', '', '', '', '3.5 OZ', '', 10000, 5, 'catalog/new-products/Lalgoderme--Algoderm-Mask_3.jpg', 0, 1, '62.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 260, '2020-06-02 06:03:05', '2020-06-02 07:51:40'),
(156, 'MASKS', '', '', '', '', '', '3.5 OZ', '', 10000, 5, 'catalog/new-products/Le-masque-gel-visage--Face-and-Scalp-Gel-Mask_3.jpg', 0, 1, '73.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 176, '2020-06-02 06:03:05', '2020-06-02 07:53:49'),
(157, 'MASKS', '', '', '', '', '', '1.75 OZ', '', 9999, 5, 'catalog/new-products/Ageless-Clay-Mask-Pink_Soothing_1.jpg', 0, 1, '64.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 377, '2020-06-02 06:03:05', '2021-07-06 03:21:04'),
(158, 'EYE CREAMS', '', '', '', '', '', '.05 OZ', '', 9994, 5, 'catalog/new-products/La-creme-contour-des-yeux----Eye-Cream-All-Skin-Conditions_0.jpg', 0, 1, '72.0000', 0, 9, '2020-05-28', '0.05000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 196, '2020-06-02 06:03:05', '2020-06-02 11:45:46'),
(159, 'EYE CREAMS', '', '', '', '', '', '0.5 OZ', '', 9995, 5, 'catalog/new-products/Ageless-Eye-Serum-Firming_0.jpg', 0, 1, '90.0000', 0, 9, '2020-05-28', '0.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 294, '2020-06-02 06:03:05', '2021-07-06 03:21:32'),
(160, 'SUNSCREEN', '', '', '', '', '', '3.5 OZ', '', 9999, 5, 'catalog/new-products/Lacreme-soleil-formerly-Extreme-Yang-OE-Creme_3.jpg', 0, 1, '68.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 243, '2020-06-02 06:03:05', '2020-06-02 11:51:04'),
(163, 'ADDITIONAL SKIN CARE PRODUCTS', '', '', '', '', '', '1.75 OZ', '', 10000, 5, 'catalog/new-products/Loligo5--Oligo-5-Mineral-Spray_1.jpg', 0, 1, '59.0000', 0, 9, '2020-05-28', '1.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 185, '2020-06-02 06:03:05', '2021-07-06 03:39:59'),
(164, 'ADDITIONAL SKIN CARE PRODUCTS', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/The-Five-Secrets-Serum-and-Five-Secrets-Cream-Duo-for-a-3-Week-Cure.jpg', 0, 1, '222.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 312, '2020-06-02 06:03:05', '2020-06-02 09:39:20'),
(165, 'BODY CARE', '', '', '', '', '', '6.75 OZ', '', 10000, 5, 'catalog/new-products/Yogi-Body-GelWood-Element_6.jpg', 0, 1, '68.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 176, '2020-06-02 06:03:05', '2021-10-01 05:34:07'),
(166, 'BODY CARE', '', '', '', '', '', '6.75 OZ', '', 10000, 5, 'catalog/new-products/Yogi-Body-GelFire-Element_6.jpg', 0, 1, '68.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 139, '2020-06-02 06:03:05', '2021-10-01 05:33:27'),
(167, 'BODY CARE', '', '', '', '', '', '6.75 OZ', '', 9999, 5, 'catalog/new-products/Yogi-Body-GelEarth-Element_6.jpg', 0, 1, '68.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 227, '2020-06-02 06:03:05', '2021-10-01 05:33:14'),
(168, 'BODY CARE', '', '', '', '', '', '6.75 OZ', '', 9998, 5, 'catalog/new-products/Yogi-Body-GelMetal-Element_6.jpg', 0, 1, '68.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 150, '2020-06-02 06:03:05', '2021-10-01 05:33:39'),
(169, 'BODY CARE', '', '', '', '', '', '6.75 OZ', '', 9997, 5, 'catalog/new-products/Yogi-Body-GelWater-Element_6.jpg', 0, 1, '68.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 148, '2020-06-02 06:03:05', '2021-10-01 05:33:52'),
(170, 'BODY CARE', '', '', '', '', '', '6.8 OZ', '', 9998, 5, 'catalog/new-products/Lemulsion-corporelle--Body-Lotion_6.jpg', 0, 1, '50.0000', 0, 9, '2020-05-28', '6.80000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 170, '2020-06-02 06:03:05', '2021-07-06 03:38:41'),
(171, 'BODY CARE', '', '', '', '', '', '', '', 9994, 5, 'catalog/new-products/Le-lait-corporel--Hydrating-Body-Milk_6.jpg', 0, 1, '56.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 317, '2020-06-02 06:03:05', '2020-06-02 10:13:32'),
(172, 'BODY CARE', '', '', '', '', '', '3.5 OZ', '', 10000, 5, 'catalog/new-products/La-creme-mains--Extreme-Hydrating-Hand-Cream_3.jpg', 0, 1, '39.0000', 0, 9, '2020-05-28', '3.50000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 178, '2020-06-02 06:03:05', '2020-06-02 10:10:01'),
(173, 'BODY CARE', '', '', '', '', '', '6.8 OZ', '', 10000, 5, 'catalog/new-products/Le-Phytacid--PhytAcid-Cleansing-Face-and-Body-Gel_6.jpg', 0, 1, '38.0000', 0, 9, '2020-05-28', '6.80000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 117, '2020-06-02 06:03:05', '2021-07-06 03:15:57'),
(174, 'BODY CARE', '', '', '', '', '', '6.75 OZ', '', 9999, 5, 'catalog/new-products/Le-gommage-zen--Zen-Body-Exfoliation_6.jpg', 0, 1, '79.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 157, '2020-06-02 06:03:05', '2020-06-02 10:11:39'),
(175, 'BODY CARE', '', '', '', '', '', '3.4 OZ', '', 9994, 5, 'catalog/new-products/Le-serum-silhouette--Contouring-Serum_3.jpg', 0, 1, '93.0000', 0, 9, '2020-05-28', '3.40000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 348, '2020-06-02 06:03:05', '2020-06-02 11:51:49'),
(176, 'BODY CARE', '', '', '', '', '', '17 OZ', '', 9996, 5, 'catalog/new-products/Lalguessence-bain-Algae-Essence-Bath-Balancing-and-Relaxing_17oz.jpg', 0, 1, '71.0000', 0, 9, '2020-05-28', '17.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 168, '2020-06-02 06:03:05', '2021-07-06 03:37:00'),
(177, 'BODY CARE', '', '', '', '', '', 'Each oil is 0.5 OZ', '', 9999, 5, 'catalog/new-products/Set-of-All-7-Chakra-Balancing-Essential-Oil-Blends_0.jpg', 0, 1, '189.0000', 0, 9, '2020-05-28', '0.35000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 164, '2020-06-02 06:03:05', '2021-08-23 15:06:24'),
(178, 'HAIR CARE', '', '', '', '', '', '', '', 9996, 5, 'catalog/new-products/Algae-ShampooWood-Element_6.jpg', 0, 1, '35.0000', 0, 9, '2020-05-28', '6.75000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 136, '2020-06-02 06:03:05', '2021-10-01 05:40:15'),
(181, 'HAIR CARE', '', '', '', '', '', '17 OZ', '', 10000, 5, 'catalog/new-products/Sweet-Almond-Oil-ShampooMetal-Element_17oz.jpg', 0, 1, '62.0000', 0, 9, '2020-05-28', '17.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 247, '2020-06-02 06:03:05', '2021-10-01 05:40:43'),
(182, 'HAIR CARE', '', '', '', '', '', '17 OZ', '', 9997, 5, 'catalog/new-products/HorsetailBuckwheat-Gel-ShampooWater-Element_17oz.jpg', 0, 1, '62.0000', 0, 9, '2020-05-28', '17.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 194, '2020-06-02 06:03:05', '2021-10-01 05:40:59'),
(186, 'SUPPLEMENTS', '', '', '', '', '', '60 Chewable Wafers', '', 10000, 5, 'catalog/new-products/sup/Complete-Children-Chewable.jpg', 0, 1, '16.5900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 94, '2020-06-02 06:03:05', '2020-06-22 09:26:21'),
(188, 'SUPPLEMENTS', '', '', '', '', '', '30 Chewables', '', 10000, 5, 'catalog/new-products/sup/Children-Chewable-Probiotic.jpg', 0, 1, '14.9900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 120, '2020-06-02 06:03:05', '2020-06-22 09:26:42'),
(189, 'SUPPLEMENTS', '', '', '', '', '', '', '', 9996, 5, 'catalog/new-products/sup/Complete-Foods-Multi.jpg', 0, 1, '29.9900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 128, '2020-06-02 06:03:05', '2020-06-22 09:27:35'),
(190, 'SUPPLEMENTS', '', '', '', '', '', '', '', 9998, 5, 'catalog/new-products/sup/ConcenTrace-Mineral-Drops.jpg', 0, 1, '24.4100', 0, 9, '2020-05-28', '4.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 118, '2020-06-02 06:03:05', '2020-06-22 09:28:48'),
(191, 'SUPPLEMENTS', '', '', '', '', '', '60 Vegetarian Caps', '', 10000, 5, 'catalog/new-products/sup/Coral-Calcium-with-ConcenTrace.jpg', 0, 1, '31.2900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 94, '2020-06-02 06:03:05', '2020-06-22 09:30:41'),
(192, 'SUPPLEMENTS', '', '', '', '', '', '', '', 9999, 5, 'catalog/new-products/sup/Electro-Vita-Min.jpg', 0, 1, '21.7100', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 148, '2020-06-02 06:03:05', '2020-06-22 09:31:05'),
(193, 'SUPPLEMENTS', '', '', '', '', '', '30 Fl. Oz.', '', 10000, 5, 'catalog/new-products/sup/Liquid-Multi-Vitamin-Mineral.jpg', 0, 1, '41.8900', 0, 9, '2020-05-28', '30.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 73, '2020-06-02 06:03:05', '2020-06-22 09:34:07'),
(194, 'SUPPLEMENTS', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/sup/Stress-X-Magnesium-Powder.jpg', 0, 1, '23.8900', 0, 9, '2020-05-28', '8.80000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 75, '2020-06-02 06:03:05', '2020-06-22 09:47:32'),
(195, 'SUPPLEMENTS', '', '', '', '', '', '16 Fl. Oz.', '', 10000, 5, 'catalog/new-products/sup/ConcenTrace-Mineral-Mouth-Rinse.jpg', 0, 1, '11.8900', 0, 9, '2020-05-28', '16.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 113, '2020-06-02 06:03:05', '2020-06-22 09:42:01'),
(196, 'SUPPLEMENTS', '', '', '', '', '', '30 Capsules', '', 9998, 5, 'catalog/new-products/sup/Probiotic-55-Billion.jpg', 0, 1, '38.9900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 72, '2020-06-02 06:03:05', '2020-06-22 09:36:43'),
(197, 'SUPPLEMENTS', '', '', '', '', '', '1 Bar', '', 10000, 5, 'catalog/new-products/sup/Protein-Bar.jpg', 0, 1, '5.9500', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 55, '2020-06-02 06:03:05', '2020-06-22 09:38:52'),
(198, 'SUPPLEMENTS', '', '', '', '', '', '', '', 9999, 5, 'catalog/new-products/sup/Stress-X-Tablets.jpg', 0, 1, '21.9400', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 79, '2020-06-02 06:03:05', '2020-06-22 09:40:59'),
(199, 'SUPPLEMENTS', '', '', '', '', '', '16 Fl. Oz.', '', 9998, 5, 'catalog/new-products/sup/Liquid-Vitamin-D3.jpg', 0, 1, '23.2900', 0, 9, '2020-05-28', '16.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 69, '2020-06-02 06:03:05', '2020-06-22 09:35:57'),
(203, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/SLEEP WELL Travel Aromatherapy Candle.jpg', 0, 1, '29.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 77, '2020-06-02 06:03:05', '2020-06-29 10:02:48'),
(204, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/I Want To SLEEP WELL Gift Set2.jpg', 0, 1, '39.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 92, '2020-06-02 06:03:05', '2020-06-29 09:56:24'),
(205, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/SLEEP WELL Essentials Sleep Set.jpg', 0, 1, '33.5000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 56, '2020-06-02 06:03:05', '2020-06-29 10:01:07'),
(211, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/DE-STRESS Essentials Kit2.jpg', 0, 1, '39.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 268, '2020-06-02 06:03:05', '2020-06-29 09:45:28'),
(208, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/DE-STRESS Mini Aromatherapy Balm.jpg', 0, 1, '7.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 123, '2020-06-02 06:03:05', '2020-06-29 09:46:31'),
(210, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/DE-STRESS Travel Aromatherapy Candle.jpg', 0, 1, '29.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 110, '2020-06-02 06:03:05', '2020-06-29 09:47:11'),
(218, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/ESCAPE Aromatherapy Balm.jpg', 0, 1, '24.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 116, '2020-06-02 06:03:05', '2020-06-29 09:48:19'),
(201, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/SLEEP WELL Aromatherapy Balm.jpg', 0, 1, '24.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 74, '2020-06-02 06:03:05', '2020-06-29 10:19:43'),
(212, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/FOCUS Aromatherapy Balm.png', 0, 1, '24.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 154, '2020-06-02 06:03:05', '2020-06-29 09:52:10'),
(216, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/HAPPY Travel Aromatherapy Candle.jpg', 0, 1, '29.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 121, '2020-06-02 06:03:05', '2020-06-29 09:54:43'),
(217, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/I Want To Be HAPPY Gift Box2.jpg', 0, 1, '39.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 93, '2020-06-02 06:03:05', '2020-06-29 09:55:10'),
(221, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/ESCAPE Travel Aromatherapy Candle.jpg', 0, 1, '29.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 123, '2020-06-02 06:03:05', '2020-06-29 09:51:27'),
(222, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/I Want To ESCAPE Gift Set2.jpg', 0, 1, '39.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 104, '2020-06-02 06:03:05', '2020-06-29 09:55:42'),
(223, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 9998, 5, 'catalog/new-products/aromatherapy/LOVE Aromatherapy Balm.png', 0, 1, '24.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 178, '2020-06-02 06:03:05', '2020-06-29 09:57:00'),
(225, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/LOVE Home Aromatherapy Candle.jpg', 0, 1, '52.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 83, '2020-06-02 06:03:05', '2020-06-29 09:57:33'),
(226, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/LOVE Travel Aromatherapy Candle.jpg', 0, 1, '29.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 70, '2020-06-02 06:03:05', '2020-06-29 09:59:12'),
(207, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/DE-STRESS Aromatherapy Balm.jpg', 0, 1, '24.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 131, '2020-06-02 06:03:05', '2020-06-29 09:44:34'),
(229, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/Ultimate Relaxation Trio.jpg', 0, 1, '48.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 71, '2020-06-02 06:03:05', '2020-06-29 10:11:41'),
(214, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/HAPPY Aromatherapy Balm.jpg', 0, 1, '24.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 107, '2020-06-02 06:03:05', '2020-06-29 09:53:39'),
(227, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/Ultimate Survival Kit.jpg', 0, 1, '80.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 60, '2020-06-02 06:03:05', '2020-06-29 10:08:54'),
(228, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 9997, 5, 'catalog/new-products/aromatherapy/Wellbeing Ritual Aromatherapy Tin2.jpg', 0, 1, '33.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 163, '2020-06-02 06:03:05', '2020-06-29 10:17:43'),
(224, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/LOVE Mini Aromatherapy Balm.jpg', 0, 1, '7.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 66, '2020-06-02 06:03:05', '2020-06-29 09:58:00'),
(206, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/SLEEP WELL Mini Wellbeing Ritual Aromatherapy Balm.jpg', 0, 1, '7.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 75, '2020-06-02 06:03:05', '2020-06-29 10:02:20'),
(219, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/ESCAPE Mini  Aromatherapy Balm.jpg', 0, 1, '7.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 104, '2020-06-02 06:03:05', '2020-06-29 09:50:15'),
(213, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/aromatherapy/FOCUS Mini Aromatherapy Balm.jpg', 0, 1, '7.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 106, '2020-06-02 06:03:05', '2020-06-29 09:53:04'),
(215, 'Scentered Aromatherapy', '', '', '', '', '', '', '', 9988, 5, 'catalog/new-products/aromatherapy/HAPPY Mini Aromatherapy Balm.jpg', 0, 1, '7.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 115, '2020-06-02 06:03:05', '2020-06-29 09:54:13'),
(230, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/January.jpg', 0, 1, '84.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 138, '2020-06-02 06:03:05', '2020-06-29 11:49:02'),
(231, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/February.jpg', 0, 1, '103.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 159, '2020-06-02 06:03:05', '2020-06-29 11:48:55'),
(232, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/March.jpg', 0, 1, '101.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 131, '2020-06-02 06:03:05', '2020-06-29 11:49:20'),
(234, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/May.jpg', 0, 1, '82.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 96, '2020-06-02 06:03:05', '2020-06-29 11:49:26'),
(235, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/June.jpg', 0, 1, '110.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 131, '2020-06-02 06:03:05', '2020-06-29 11:49:15'),
(236, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/July.jpg', 0, 1, '108.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 127, '2020-06-02 06:03:05', '2020-06-29 11:49:09'),
(237, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/August.jpg', 0, 1, '108.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 129, '2020-06-02 06:03:05', '2020-06-29 11:48:44'),
(238, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/September.jpg', 0, 1, '108.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 112, '2020-06-02 06:03:05', '2020-06-29 11:49:42'),
(239, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/October.jpg', 0, 1, '103.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 123, '2020-06-02 06:03:05', '2020-06-29 11:49:37'),
(240, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/November.jpg', 0, 1, '106.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 124, '2020-06-02 06:03:05', '2020-06-29 11:49:32'),
(241, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/December.jpg', 0, 1, '127.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 118, '2020-06-02 06:03:05', '2020-06-29 11:48:50'),
(242, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Amethyst Mala Bracelet with Sahaswara Charm.jpg', 0, 1, '67.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 140, '2020-06-02 06:03:05', '2020-06-29 11:51:25'),
(244, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Amazonite Mala Bracelet with Vishudda Charm.jpg', 0, 1, '53.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 136, '2020-06-02 06:03:05', '2020-06-29 11:50:48'),
(247, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Red Adventurine Mala Bracelet with Svandhistana Charm.jpg', 0, 1, '50.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 160, '2020-06-02 06:03:05', '2020-06-29 11:51:54'),
(248, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Red Jasper Mala Bracelet with Muladhara Charm.jpg', 0, 1, '48.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 134, '2020-06-02 06:03:05', '2020-06-29 11:52:05'),
(250, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Seven Chakra Ombre Charm Bracelet with Seven Charms.jpg', 0, 1, '98.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 114, '2020-06-02 06:03:05', '2020-06-29 11:52:40'),
(251, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Seven Chakras Tassel Bracelet.jpg', 0, 1, '36.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 118, '2020-06-02 06:03:05', '2020-06-29 11:53:01'),
(253, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Sodalite Triple Happiness Bracelet with Ajna Charm.jpg', 0, 1, '34.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 126, '2020-06-02 06:03:05', '2020-06-29 11:53:12'),
(255, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Green Adventurite Triple Happiness Bracelet with Anahata Charm.jpg', 0, 1, '34.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 183, '2020-06-02 06:03:05', '2020-06-29 11:51:48'),
(261, 'Chakra Mala Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Seven Chakra Namaste 108 Bead Mala Necklace.jpg', 0, 1, '89.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 152, '2020-06-02 06:03:05', '2020-06-29 11:52:28'),
(273, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Rhodonite Faceted Stretch Bracelet.jpg', 0, 1, '38.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 51, '2020-06-02 06:03:05', '2020-06-29 11:58:28'),
(274, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Silver Grey Quartz Faceted Stretch Bracelet.jpg', 0, 1, '38.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 69, '2020-06-02 06:03:05', '2020-06-29 11:58:39'),
(277, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Unakite Faceted Stretch Bracelet.jpg', 0, 1, '38.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 101, '2020-06-02 06:03:05', '2020-06-29 12:03:20'),
(279, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Yellow Jade Faceted Stretch Bracelet.jpg', 0, 1, '38.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 75, '2020-06-02 06:03:05', '2020-06-29 12:03:42'),
(288, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Picasso Jasper Faceted Stretch Bracelet with Buddha Head.jpg', 0, 1, '43.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 94, '2020-06-02 06:03:05', '2020-06-29 11:57:58'),
(291, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Rhodonite Faceted Stretch Bracelet with Buddha Head.jpg', 0, 1, '43.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 63, '2020-06-02 06:03:05', '2020-06-29 11:58:33'),
(295, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Unakite Faceted Stretch Bracelet with Buddha Head.jpg', 0, 1, '43.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 92, '2020-06-02 06:03:05', '2020-06-29 12:03:26'),
(297, 'Lucky Buddha Beads', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Yellow Jade Faceted Stretch Bracelet with Buddha Head.jpg', 0, 1, '43.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 98, '2020-06-02 06:03:05', '2020-06-29 12:03:48'),
(308, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Smoky Quartz Om Charm Bracelet.jpg', 0, 1, '58.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 81, '2020-06-02 06:03:05', '2020-06-29 12:10:11'),
(310, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Rose Quartz Om Charm Bracelet.jpg', 0, 1, '41.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 90, '2020-06-02 06:03:05', '2020-06-29 12:10:01'),
(311, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Sodalite Om Charm Bracelet.jpg', 0, 1, '50.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 83, '2020-06-02 06:03:05', '2020-06-29 12:10:23'),
(312, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Tiger\'s Eye Om Charm Bracelet.jpg', 0, 1, '50.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 53, '2020-06-02 06:03:05', '2020-06-29 12:10:30'),
(314, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Amazonite Tassel Bracelet.jpg', 0, 1, '50.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 97, '2020-06-02 06:03:05', '2020-06-29 12:07:16'),
(319, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Pyrite Tassel Bracelet.jpg', 0, 1, '50.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 76, '2020-06-02 06:03:05', '2020-06-29 12:09:56'),
(320, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Rose Quartz Tassel Bracelet.jpg', 0, 1, '41.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 79, '2020-06-02 06:03:05', '2020-06-29 12:10:06'),
(321, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Tiger\'s Eye Tassel Bracelet.jpg', 0, 1, '46.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 83, '2020-06-02 06:03:05', '2020-06-29 12:10:36'),
(323, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/Smoky Quartz Tassel Bracelet.jpg', 0, 1, '55.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 84, '2020-06-02 06:03:05', '2020-06-29 12:10:16'),
(329, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/108 Bead Amazonite Mala Necklace1.jpg', 0, 1, '151.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 229, '2020-06-02 06:03:05', '2020-12-11 10:07:58'),
(332, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/108 Bead Botswana Agate Mala Necklace.jpg', 0, 1, '214.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 255, '2020-06-02 06:03:05', '2020-06-29 12:05:20'),
(339, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/108 Bead Botswana Agate Wrap Mala.jpg', 0, 1, '254.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 234, '2020-06-02 06:03:05', '2020-06-29 12:05:28'),
(342, 'Mantra Gemstone Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/108 Bead Amethyst Wrap Mala.jpg', 0, 1, '204.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 268, '2020-06-02 06:03:05', '2020-06-29 12:04:59'),
(233, 'Birthstone Gems Collection', '', '', '', '', '', '', '', 10000, 5, 'catalog/new-products/gems/April.jpg', 0, 1, '77.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 138, '2020-06-02 06:03:05', '2020-06-29 11:48:22'),
(356, 'Health Concerns', '', '', '', '', '', '', '', 10000, 5, 'catalog/health/CHZYME.png', 0, 1, '30.7500', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 248, '2020-06-02 06:03:05', '2020-09-17 01:57:43'),
(357, 'Health Concerns', '', '', '', '', '', '', '', 9995, 5, 'catalog/health/CURCUMA FLOW.png', 0, 1, '43.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 232, '2020-06-02 06:03:05', '2020-09-17 01:55:15'),
(358, 'Health Concerns', '', '', '', '', '', '', '', 9998, 5, 'catalog/health/EPA-Q.png', 0, 1, '44.0000', 0, 9, '2021-01-06', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 98, '2020-06-02 06:03:05', '2020-11-27 07:48:21'),
(359, 'Health Concerns', '', '', '', '', '', '', '', 10000, 5, 'catalog/health/ISATIS GOLD.png', 0, 1, '25.7500', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 78, '2020-06-02 06:03:05', '2020-09-17 02:04:05'),
(360, 'Health Concerns', '', '', '', '', '', '', '', 10000, 5, 'catalog/health/TAMU OIL.png', 0, 1, '27.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 82, '2020-06-02 06:03:05', '2020-09-17 02:13:28'),
(361, 'Health Concerns', '', '', '', '', '', '', '', 10000, 5, 'catalog/health/NASAL TABS.png', 0, 1, '22.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 110, '2020-06-02 06:03:05', '2020-09-17 02:04:59'),
(363, 'Health Concerns', '', '', '', '', '', '', '', 9999, 5, 'catalog/health/SKIN BALANCE.png', 0, 1, '26.0000', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 64, '2020-06-02 06:03:05', '2020-09-17 02:06:28'),
(364, 'Health Concerns', '', '', '', '', '', '', '', 10000, 5, 'catalog/health/STEM CELL.png', 0, 1, '49.9500', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 60, '2020-06-02 06:03:05', '2020-09-27 19:06:30'),
(399, 'Face', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/makeup/face1.jpg', 0, 1, '50.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 165, '2020-12-08 12:27:25', '2020-12-11 10:47:22'),
(384, 'SUPPLEMENTS', '', '', '', '', '', '1 oz.', '', 10000, 5, 'catalog/new-products/sup/naysa-oil.jpg', 0, 1, '12.9900', 0, 9, '2020-05-28', '1.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 54, '2020-11-25 14:53:36', '2020-11-25 14:57:02'),
(385, 'SUPPLEMENTS', '', '', '', '', '', '90 tablets', '', 9999, 5, 'catalog/new-products/sup/i-sleep.jpg', 0, 1, '21.9900', 0, 9, '2020-05-28', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 81, '2020-11-25 14:53:42', '2020-11-25 15:01:23'),
(386, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 10000, 6, 'catalog/products/new/abundance.jpg', 0, 1, '38.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 195, '2020-12-08 12:12:00', '2020-12-08 12:53:52'),
(387, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 998, 5, 'catalog/products/new/calarity.jpg', 0, 1, '38.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 141, '2020-12-08 12:14:51', '2020-12-08 12:57:33'),
(388, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/new/LOVE.jpg', 0, 1, '38.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 122, '2020-12-08 12:18:25', '2020-12-08 13:10:58'),
(389, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 1000, 5, 'catalog/products/new/GIFTSETTRIPLEHAPPINESS.jpg', 14, 1, '38.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 176, '2020-12-08 12:21:19', '2020-12-08 12:55:53'),
(390, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 9999, 5, 'catalog/products/new/INTUITION.jpg', 0, 1, '38.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 132, '2020-12-08 12:27:25', '2020-12-08 13:01:40'),
(391, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 9999, 5, 'catalog/products/new/BLACKWOOD.jpg', 0, 1, '96.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 173, '2020-12-08 12:30:46', '2020-12-08 12:55:02'),
(392, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/new/COURAGE.jpg', 14, 1, '96.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 176, '2020-12-08 12:32:40', '2020-12-08 12:58:10'),
(393, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/new/GOODLUCK.jpg', 0, 1, '96.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 129, '2020-12-08 12:35:01', '2020-12-08 12:58:55'),
(394, 'GEMSTONE GIFT SET', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/new/SERENITY.jpg', 0, 1, '96.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 120, '2020-12-08 12:36:49', '2020-12-08 13:01:21'),
(404, 'Face', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/makeup/face6.jpg', 0, 1, '18.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 106, '2020-12-08 12:27:25', '2020-12-11 11:48:56'),
(406, 'Face', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/makeup/face8.jpg', 0, 1, '32.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 151, '2020-12-08 12:27:25', '2020-12-11 11:56:34'),
(407, 'Face', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/makeup/face9.jpg', 0, 1, '30.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 155, '2020-12-08 12:27:25', '2020-12-11 12:09:32'),
(411, 'Face', '', '', '', '', '', '', '', 10000, 5, 'catalog/products/makeup/face13.jpg', 0, 1, '34.0000', 0, 9, '2020-12-08', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 157, '2020-12-08 12:27:25', '2020-12-11 12:49:42'),
(414, 'Face', '', '', '', '', '', '3.04 oz', '', 10000, 5, 'catalog/products/makeup/face16.jpg', 0, 1, '33.0000', 0, 9, '2020-12-08', '3.40000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 149, '2020-12-08 12:27:25', '2020-12-11 12:52:49'),
(415, 'Face', '', '', '', '', '', '3.04 oz', '', 10000, 5, 'catalog/products/makeup/face17.jpg', 0, 1, '33.0000', 0, 9, '2020-12-08', '3.40000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 130, '2020-12-08 12:27:25', '2020-12-11 12:53:25'),
(416, 'Makeup ', '', '', '', '', '', '', '', 10000, 7, 'catalog/Holiday2020_ALTimages_PDP_VaultwithProduct_1_500x.jpg', 0, 1, '125.0000', 0, 9, '2020-12-12', '0.10000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 213, '2020-12-13 15:46:42', '2020-12-15 04:59:42'),
(417, 'Starry Eyes Mascara ', '', '', '', '', '', '', 'Makeup', 9999, 7, 'catalog/65299_Holiday2020_StarryEyes_PDP_1_500x.jpg', 0, 1, '45.0000', 0, 0, '2020-12-13', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 122, '2020-12-13 18:15:42', '2020-12-17 13:02:11'),
(418, 'Illuminating Face Palette', '', '', '', '', '', '', '', 10000, 7, 'catalog/14467_Holiday2020_Palette_PDP_500x.jpg', 0, 1, '69.0000', 0, 0, '2020-12-15', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 62, '2020-12-15 04:47:45', '2020-12-15 04:55:18'),
(419, 'Holiday Lip Kit ', '', '', '', '', '', '', '', 10000, 7, 'catalog/65300_Holiday2020_Shimmer_PDP_1_77d3c4a3-b214-4850-befc-d9f377aa6ca2_500x.jpg', 0, 1, '25.0000', 0, 0, '2020-12-15', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 143, '2020-12-15 05:02:36', '2020-12-15 05:05:20'),
(420, 'Lounging Socks', '', '', '', '', '', '', '', 10000, 7, 'catalog/Kashwere Slippers.jpg', 0, 1, '15.0000', 0, 0, '2020-12-17', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 59, '2020-12-17 13:09:25', '2020-12-17 13:12:37'),
(421, '24-Karat Gold Dust ', '', '', '', '', '', '', '', 9997, 7, 'catalog/24 Karat Gold.png', 0, 1, '14.0000', 0, 0, '2020-12-17', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 100, '2020-12-17 14:34:04', '0000-00-00 00:00:00'),
(422, 'Wood Trio', '', '', '', '', '', '', '', 6, 6, 'catalog/finalwood-trio.jpg', 0, 1, '188.0000', 0, 0, '2021-01-31', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 125, '2021-01-31 14:56:05', '2021-10-01 05:35:35'),
(423, 'Earth Trio ', '', '', '', '', '', '', '', 1, 6, 'catalog/XYb0l_eg.jpeg', 14, 1, '188.0000', 0, 0, '2021-04-18', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 190, '2021-04-18 16:31:49', '2021-10-12 00:37:09'),
(424, 'Earth Yogi Body Gel &amp; Serum ', '', '', '', '', '', '', '', 1, 6, 'catalog/earth-yogi-body-gel-and-contouring-serum.jpg', 14, 1, '144.9000', 0, 0, '2021-04-18', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 107, '2021-04-18 16:41:59', '0000-00-00 00:00:00'),
(425, 'Metal Trio ', '', '', '', '', '', '', '', 1, 6, 'catalog/7jjolyiQ.png', 14, 1, '188.0000', 0, 0, '2021-08-20', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 45, '2021-08-20 04:07:09', '2021-10-01 05:37:18');
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(426, 'Fire Trio', '', '', '', '', '', '', '', 1, 6, 'catalog/LUVRt3DA.jpeg', 0, 1, '188.0000', 0, 0, '2021-08-20', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 6, 1, 1, 28, '2021-08-20 17:51:54', '2021-10-01 05:36:34'),
(427, 'Water Trio ', '', '', '', '', '', '', '', 6, 6, 'catalog/s9rr7wAA.png', 0, 1, '188.0000', 0, 0, '2021-08-20', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 21, '2021-08-20 18:06:53', '2021-10-01 05:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(107, 12, 1, 'A very mild cleanser for all skin types, particularly for sensitive skin. The milky consistency removes bacteria and impurities without drying the skin. Tangerine essential oil is a principle unique ingredient delivered in a base of flavonoid- and essential fatty acid rich grapeseed oil and organic jojoba oil. This cleanser is an excellent make-up remover.'),
(120, 12, 1, 'This strong facial cleansing gel is recommended for oily or toxic skin. It deeply cleanses and helps balance oil production. Formulated with wheat bran (gluten-free), corn, millet, rice, buckwheat and horsetail extracts and zinc, manganese, cobalt, and copper, it soothes, nourishes, stimulates, and revitalizes the skin. Use 2-3 times a week and alternate with Le phyt’acid [Phyt’Acid Face and Body Cleansing Gel] or Le lait demaquillant douceur [Cleansing Milk]. Use during a treatment phase and not continuously.'),
(121, 12, 1, 'An award-winning gentle cleanser suitable for all skin types and skin conditions including sensitive skin. Natural, environmentally friendly, and hypoallergenic, Cleansing Foam provides hydration and restores the natural protective pH of the skin. With nourishing apricot kernel oil for anti-wrinkle action and verbena essential oil and extract for soothing, cooling and firming Certified organic by Ecocert® and Cosmebio® and contains a minimum of 95% plant-based ingredients. Free of all GMOs, parabens, sulfates, phenoxyethanol, nanoparticles, silicon, PEG, synthetic perfumes and dyes, or animal-derived ingredients.'),
(157, 12, 1, 'Essential oil of damask rose is blended into kaolin clay silica and other natural cosmetic actives for improved hydration and the gentle removal of dead skin cells and toxins. The naturally pink colored mask in a base of kaolin clay improves circulation, encourages natural regeneration, and works to restore balance and reduce common visible signs of aging. With soothing, protecting, and hydrating damask rose, verbena and sweet almond essential oils, extracts of verbena and calendula and aloe vera to work on collagen fibers and promote skin’s elasticity. Clay Mask leaves your skin toned and revitalized in just 15 minutes; it jumpstarts natural regeneration. This clay mask is ideal for sensitive, dry, aging skin. '),
(154, 12, 1, 'With essential oils, this naturally colored kaolin clay-based Clay Mask softens lines, hydrates, and tones the skin. Black Clay Mask has a toning and firming action improving water circulation. If your skin is in balance use this mask during energetic Winter. Apply on face or body after cleansing and toning. Rinse after 15 minutes and follow with toner. With essential oils of juniper berry, eucalyptus, and thyme'),
(150, 12, 1, 'Clay Mask purifies, nourishes, and revitalizes oily skin and skin presenting blackheads and hyper-pigmentation (spots). Green Clay Mask has a stimulating action improving energetic circulation. If your skin is in balance use this mask during energetic Spring. Apply on face or body after cleansing and toning. Rinse after 15 minutes and follow with toner. With essential oils of lemon and cypress.'),
(155, 12, 1, 'A creamy mask with mineral-rich algae (Laminaria digital), Algoderm’s mineral content stabilizes moisture in the skin drawing it to the surface from deep within the skin\'s layers. Apply after cleansing and toning and let the mask penetrate the skin for several minutes before washing off or removing with a warm wet terrycloth. With gluten-free wheat germ oil, glycerin, antioxidants vitamin E and rosemary extract and bigarade essential oil (Chinese bitter orange) to soothe and relax the skin.  '),
(156, 12, 1, 'The soft and light texture of this face and scalp Gel Mask refreshes, intensely hydrates and regenerates skin on a deeper level. It helps to strengthen and revitalize skin.'),
(151, 12, 1, 'With essential oils, this naturally colored kaolin clay-based Clay Mask soothes, calms and balances irritated, sensitive, blotchy, allergic skin. Red Clay Mask supports red blood circulation. If your skin is already in balance use this mask during energetic Summer. Apply on face or body after cleansing and toning. Rinse after 15 minutes and follow with toner. With essential oils of rosemary, lavender and ylang ylang.'),
(153, 12, 1, 'With essential oils, this naturally colored kaolin clay-based Clay Mask hydrates, oxygenates, mineralizes, and combats puffy, dry congested skin. White Clay Mask supports venous circulation as it works to help minimize the appearance of fine lines. If your skin is already in balance use this mask during energetic Fall. Apply on face or body after cleansing and toning. Rinse after 15 minutes and follow with toner. With essential oils of niaouli, lemon, eucalyptus, and thyme.'),
(152, 12, 1, 'With essential oils, this naturally colored kaolin clay-based Clay Mask facilitates removal of toxins and normalizes the skin. Yellow Clay Mask provides a detoxifying action which supports circulation of lymph. If your skin is already in balance use this mask during the periods between energetic seasons. Apply on face or body after cleansing and toning. Rinse after 15 minutes and follow with toner. With essential oils of lemon, cypress, and eucalyptus'),
(122, 12, 1, 'With the citrusy scent of petitgrain essential oil, this foaming face and body cleansing gel is pH balanced to restore the acid mantle and protect the skin. This is an excellent cleanser for skin with acne and blemishes. Phyt’acid Gel gently exfoliates dead skin cells. The antibacterial properties of this oil clear and tone the skin while neutralizing the overactive sebaceous glands that cause oily and combination skin'),
(137, 12, 1, 'Perfect for very dry and extreme weather, as well as aging skin in need of constant hydration, Extreme Hydrating Cream is a potent blend of sunflower oil, arctic lingonberry seed oil, and Aquaxyl, alongside a thoughtful combination of essential oils that work together to leave skin hydrated, deeply nourished, and rejuvenated in as little as six hours. Rated by the Swiss Skin Test Institute an &quot;Excellent Moisturizer,&quot; their highest score This rich cream is formulated with organic oils, essential oil of arctic lingonberry seed and compounds designed to provide extreme hydration and protection when skin needs it most. It is clinically proven to deliver a 50% increase moisture improvement in a few hours and up to 60% in two weeks. '),
(138, 12, 1, 'An incredibly nourishing and hydrating cream with organic jojoba and shea butter. It is especially effective for sensitive, cracked, or dry skin. The cream’s pure ingredients and essential oils easily absorb into your skin to provide non-greasy protection and rich, glowing skin. Ageless Nourishing Cream is a rich moisturizing cream proven to increase hydration for sensitive, dry skin, no matter the climate. Its foundation is jojoba oil and shea butter, two of the most effective natural hydrating compounds in the world, and is balanced by a blend of lemon, lavender, orange, cypress, and thyme essential oils that soothe and soften the skin long after use.'),
(139, 12, 1, 'A pigment balancing cream that reduces and eliminates brown spots associated with aging or sun damaged skin. It works to inhibit melanin production that causes new spots to form. With essential oil of alpine edelweiss and Japanese seaweed both known for their skin lightening properties'),
(130, 12, 1, 'Wonderful for balancing oil production and leaving the skin with a clear matte finish. If your skin is already balanced use this cream during energetic Spring. Apply mornings on face and neck after cleansing and toning. With gluten-free wheat bran extract and wheat bran germ oil and essential oils of rosemary and lemon. '),
(131, 12, 1, 'Wonderful for soothing and calming, this cream leaves the skin feeling cool promoting a healthy even skin tone. If your skin is already balanced use this cream during energetic Summer.  Apply mornings on face and neck after cleansing and toning. With corn seed oil and extract and essential oils of lavender and sweet marjoram. '),
(133, 12, 1, 'An excellent mineralizing and hydrating protection against dryness. If your skin is already balanced use this cream during energetic Fall.  Apply mornings on face and neck after cleansing and toning. With gluten-free wheat bran extract and wheat bran germ oil and essential oils of rosemary and lemon.'),
(134, 12, 1, 'Wonderful for balancing dehydrated skin, lack of tone and wrinkles and helping to restore skin’s elasticity. If your skin is already balanced use this cream during energetic Winter. Apply mornings on face and neck after cleansing and toning. With buckwheat extract and essential oils of rosemary, sage, juniper berry and thyme.'),
(132, 12, 1, 'An excellent cream for purifying and normalizing conditions of toxicity. If your skin is already balanced use this cream during the periods between energetic seasons.  Apply mornings on face and neck after cleansing and toning. With millet extract verbena essential oil.'),
(135, 12, 1, 'Face Cream with Vit. E is a nourishing treatment cream for all skin types to lift and tone the skin. A gel-cream consistency, this cream is made with a balancing blend of essential oils in a base of jojoba oil and shea butter.  It contains very potent anti-age vegetal ingredients like horsetail, birch, nettle, sage, milfoil, and rosemary. Face Cream can be used day and/or night. It leaves the skin feeling smooth and looking radiantly healthy '),
(129, 12, 1, 'Using a razor on the skin makes it more vulnerable and after waxing skin is left parched and even irritated. Essential oil of petitgrain bigarade is rich in linalool (a naturally occurring organic compound found in the leaves of orange trees) and acts as a local anesthetic and accelerates healing. It tones and regenerates, repairs, and revitalizes the skin. La crème acide, originally developed for the face, can also be used on the body. As the name indicates, its pH level is close to the pH of healthy skin and is an excellent skin maintenance cream. Use La crème acide daily on areas of the skin that have become irritated from razors or epilation and enjoy the soft light fragrance of citrus leaves.'),
(136, 12, 1, 'Extremely hydrating and soothing, Face Gel\'s gel-cream texture is very pleasant for use during warm or humid periods and in hot climates. It is protective and an excellent anti-age product. This cream is recommended for all skin types and for dry and sensitive skin. With essential oils of edelweiss, lavender and ylang ylang and aloe vera and calendula extract, Face Gel soothes, moisturizes, and heals the skin. Plant-based compound Aquaxyl works to rejuvenate and hydrate the skin while helping to smooth fine lines and protect the body against environmental stressors '),
(159, 12, 1, 'A preventative and restorative serum balanced to strengthen, tighten, and tone around the eye where signs of age are most visible. Eye Serum is formulated with ancient beech tree bud extract and Easyliance, a high-tech fair-trade natural compound proven to provide instant tightening. Also, with anti-wrinkle apricot kernel oil, essential oil of damask rose and witch hazel and damask rose flower waters. This preventative and restorative eye serum is balanced perfectly to tighten, hydrate and tone, where signs of age are most visible. The ancient beech tree bud extract is a natural compound proven to increase the skin’s natural oxygen consumption, hydration, and cell regeneration.'),
(158, 12, 1, 'This extraordinarily rich cream is recommended for the sensitive skin and fine lines around the eyes. It balances puffiness and/or dark circles and creates a smooth, firm, and healthy look around the eyes. Eye Cream contains a proprietary blend of essential oils and very potent anti-age and tensor vegetal ingredients. Vegetal extract blend called Special Extract N°5 (birch leaf, nettle, sage, and milfoil) stimulates circulation around the eyes necessary for brightness and smoothness. Tormentil (from rose) and horsetail extracts, jojoba oil and shea nut butter from West Africa revitalize, moisturize, protect, and heal '),
(140, 12, 1, 'Excellent for clarifying oily skin and blackheads, lightening hyper-pigmentation (spots) or during energetic Spring if your skin is in balance. This cream is very concentrated and rich in nutrients making it a treatment cream, though it can be worn day or night. Apply on face and neck after cleansing and toning.  With gluten-free wheat bran extract and wheat germ oil and essential oils of rosemary and lemon '),
(142, 12, 1, 'Excellent for clearing blemishes and acne, this cream reduces toxicity and enlarged pores. If your skin is already in balance use this cream during the periods between energetic seasons. This cream is very concentrated and rich in nutrients making it a treatment cream, though it can be worn day or night. Apply on face and neck after cleansing and toning. With millet extract and verbena essential oil.'),
(141, 12, 1, 'Excellent for soothing, this cream calms sensitive red blotchy skin. If your skin is already in balance use during energetic summer. This cream is very concentrated and rich in nutrients making it a treatment cream, though it can be worn day or night. Apply on face and neck after cleansing and toning. With corn seed oil and extract and essential oils of lavender and sweet marjoram'),
(143, 12, 1, 'This mineralizing night treatment cream hydrates and rejuvenates leaving skin glowing. If your skin is already in balance use this cream during energetic Fall. This cream is very concentrated and rich in nutrients making it a treatment cream, though it can be worn day or night. Apply on face and neck after cleansing and toning. With rice brain oil and extract and essential oils of ylang ylang, eucalyptus and thyme.'),
(144, 12, 1, 'Excellent for hydrating and toning skin and smoothing fine lines and for use during energetic Winter if your skin is in balance. This cream is very concentrated and rich in nutrients making it a treatment cream, though it can be worn day or night. Apply on face and neck after cleansing and toning.  With buckwheat extract and essential oils of rosemary, juniper berry, sage and thyme'),
(160, 12, 1, 'This is a high protection cream for face and neck which includes natural mineral filters and anti-wrinkle and anti-aging agents aloe, shea butter, jojoba oil and vitamin E. Lavender, peppermint, cypress and ylang ylang essential oils combine with aloe vera and shea nut butter from West Africa to create an excellent moisturizing effect. This cream is intended and perfect for daily use.'),
(128, 12, 1, 'A proprietary blend of organic witch hazel and organic rose flower waters to tone, soothe, and regenerate the skin. It is extra gentle and effective Ageless La Cure Skin Toner is the perfect complement to Ageless Hydrating Cleansing Foam, or to use after a mask treatment. It provides age-defying antioxidants, and mineralizes the skin, soothing redness, and irritation. This extra gentle toner is ideal for all skin types, particularly sensitive skin.'),
(123, 12, 1, 'Mild and alcohol-free for use with Wood condition (oily skin, blackheads, hyper-pigmentation) or during energetic Spring if your skin is in balance. It helps lighten age spots while energizing the skin. Apply to cotton pad and wipe after cleansing. With algae and essential oils of rosemary, cypress, lavender, Sylvester pine, thyme, and sage'),
(127, 12, 1, 'Mild and alcohol-free for use with Water condition (dehydrated skin, poor tone, and wrinkles) or during energetic Winter if your skin is already in balance. Apply to cotton pad and wipe after cleansing. With essential oils of lemon, juniper berry, sweet orange, peppermint, rosemary, sage, and thyme.'),
(125, 12, 1, 'Mild and alcohol-free for use with Earth condition (blemishes, acne, toxicity, psoriasis, enlarged pores) or during the periods between energetic seasons if your skin is in balance. Apply to cotton pad and wipe after cleansing. With algae and essential oils of lemon, eucalyptus, lavender, peppermint, niaouli, rosemary and thyme.'),
(124, 12, 1, 'Mild and alcohol-free for use with Fire condition (irritated, red, sensitive, allergic, blotchy skin, couperose and excessive perspiration) or during energetic Summer if your skin is already in balance. It soothes and calms the skin. Apply to cotton pad and wipe after cleansing. With algae and essential oils of lavender, lemon, cypress, sweet marjoram, thyme and ylang ylang.'),
(126, 12, 1, 'Mild and alcohol-free for use with Metal condition (slightly more mature akin, mineral deficient skin, surface flakiness, dryness, dull skin) or during energetic Fall if your skin is already in balance. Apply to cotton pad and wipe after cleansing. With algae and essential oils of cypress, juniper berry, sage, lavender, pine, and rosemary. '),
(163, 12, 1, 'We all lose minerals as we age or live in stressful environmental conditions. Certain minerals are needed to hold hydration in the skin. Without them, creams will not help. Skin cannot be properly hydrated without a sufficient mineral delivery such as the proprietary formula found in Oligo 5. \'Oligo\' comes from the Greek \'oligoi,\' meaning few or containing a relatively small number of units. In this case, these units are manganese, cobalt, zinc, magnesium, and copper (plus algae) in this 100% natural origin Oligo5 sensational product.'),
(164, 12, 1, 'A restorative facial Serum and Cream two-product kit that mineralizes the skin and diminishes wrinkles from the inside out in just three weeks. Both serum and cream work to hydrate, mineralize, restructure, provide antioxidants, and tone and lift the skin. Commiphora mukul extract in the serum helps fill in lines and wrinkles. Nutrient rich Amazonian cupuaçu butter in the cream is an exceptionally hydrating butter from the rainforest with a high-water absorption capacity of 440%. '),
(176, 12, 1, 'PHYTO5\'s Algae-Essence Bath additive which regulates superficial circulation and inhibits fluid retention (especially for heavy legs). Made of high-grade essential oils of lemon, lavender, cypress, sweet marjoram, thyme and ylang ylang, algae concentrate and plankton and marine minerals, Algae-Essence Bath hydrates, mineralizes, and promotes vital energy balance and fluid circulation. It is very beneficial in a bath before bedtime.'),
(170, 12, 1, 'Body Lotion has a delicate vegetal base and is a very viscous, neutral moisturizer. Many say our Swiss line Body Lotion the queen of PHYTO5 skincare. An excellent approach to hydration, it is an ultra-light fluid with a silky soft feel. Quickly absorbed, it restores suppleness to the skin in seconds, the embodiment of simplicity and speed. Body Lotion contains several unique ingredients known for their skin enhancing properties such as jojoba seed oil for softening, wheat germ oil for nourishing and regenerating, corn germ oil for moisturizing, lemon essential oil for toning, ylang ylang essential oil for regenerating, lavender essential oil for soothing, and thyme essential oil for energizing.'),
(172, 12, 1, 'Extreme Hydrating Hand Cream makes rough and dry hands soft and smooth and regenerates the acid protection mantle of the skin. Formulated with the plant-based compound Aquaxyl, it works to rejuvenate and hydrate the skin while helping to smooth the skin and protect the body against environmental stressors. Formulated with squalane derived from olive and blended with essential oils of lavender, cypress, juniper berry, sage, rosemary, Sylvester pine, thyme, and lemon; with pro-vitamin B5, an essential ingredient for healing wounded or dry skin. Panthenol regenerates skin cells and stimulates the healing process. It is also recommended for itching skin and for eczema.'),
(174, 12, 1, 'Zen Body Exfoliation is an incredibly soft product for mild exfoliation essential to healthy glowing skin. Tiny non-invasive granules from bamboo and lotus contribute to the removal of dry dead skin cells and sebum leaving the skin smooth and soft. This exfoliating product contributes to cell renewal and stimulates circulation. Sunflower seed oil and organic jojoba oil deliver essential oils of sweet orange, ylang ylang and naturally fragrant guaiac wood while shea nut butter works to protect and retain moisture in the skin'),
(171, 12, 1, 'Very hydrating with anti-age and regenerating properties, hydrating Body Milk is recommended for dry and/or sensitive skin. Its natural fragrance opens on a note of white jasmine that blends into a core of peach, violet, and mimosa with a lasting aroma the sweetness of vanilla. Tamanu leaf oil, also known as “beauty leaf oil,” together with aloe, anti-aging squalene derived from olive and plant-based compound Aquaxyl work to rejuvenate and hydrate the skin while helping to smooth fine lines and protect the body against environmental stressors.'),
(173, 12, 1, 'With the citrusy scent of petitgrain essential oil, this foaming face and body cleansing gel is pH balanced to restore the acid mantle and protect the skin. This is an excellent cleanser for skin with acne and blemishes. Phyt’acid Gel gently exfoliates dead skin cells. The antibacterial properties of this oil clear and tone the skin while neutralizing the overactive sebaceous glands that cause oily and combination skin'),
(175, 12, 1, 'Contouring Serum protects the DNA of skin cells and supports the stimulation of microcirculation, vital energy flow and lymph drainage. It encourages destruction of unnecessary fat cells and the elimination of dead fat cells. Rich in minerals and Omega 3 fatty acids (among other unique ingredients), it is hydrating, softening, nourishing, and mineralizing. With algae and organic green tea plus essential oils of cinnamon, thyme, peppermint, niaouli, rosemary, lemon, eucalyptus and lavender, Contouring Serum assists with weight loss, diminishing cellulite while leaving the skin firmed, soft, and silky.'),
(177, 12, 1, 'Place a small amount on your fingertip and lightly massage into the center point of the chakra you are targeting.'),
(167, 12, 1, 'A purifying and normalizing gel that supports detoxification and the flow of lymph. It revitalizes the skin and helps balance emotions. Use wherever energy stimulation is needed. Apply to entire body especially the abdominal area, the solar plexus, to help balance the Earth emotion of overthinking and feeling stuck to restore your sense of knowing and creative true nature. Do not wash away. With anti-cellulite Delipidol from pomegranate proven to significantly reduce fat nodes after 28 days of treatment, green tea for contouring, aloe and apricot kernel oils to hydrate and nourish, and essential oils of lemon '),
(166, 12, 1, 'A hydrating gel that helps refresh and revitalize the skin and balance the energy of red blood circulation. It revitalizes the skin and helps balance emotions. It calms the skin and helps balance emotions. Apply to entire body especially the abdominal area, the solar plexus, to encourage a sense of joyful well-being. Do not wash away. With Defensil Plus, a natural high-tech compound of anti-inflammatory black currant and balloon vine essential oils for soothing; also, with aloe and apricot kernel oils to hydrate and nourish and menthyl lactate for cooling.'),
(168, 12, 1, 'Mineralizing and hydrating, Metal Yogi Body Gel supports the energy of venous circulation and is recommended for heavy legs and an overall sense of well-being. Apply to entire body especially the abdominal area, the solar plexus, to encourage a sense of emotional contentment. With five minerals: iron, copper, zinc, magnesium, and silica; aloe and apricot kernel oils hydrate and nourish and horse chestnut derivate serves as an excellent astringent, anti-inflammatory and decongestant that supports venous circulatory energy and helps keep legs light during long periods of travel, especially flights. '),
(169, 12, 1, 'Hydrating and toning, this gel improves skin’s appearance and helps to balance water retention in the body. It strengthens the skin while providing an overall sense of serene well-being. Apply to entire body especially the abdominal area, the solar plexus, to encourage inner serenity. Do not wash away. With high tech natural compound Aquaxyl to hydrate and revitalize the skin, horsetail silica for the synthesis of collagen, the amino acid hydroxyproline to wake up and rejuvenate the skin, aloe and apricot kernel oil to hydrate and nourish and essential oils of juniper berry and eucalyptus.'),
(165, 12, 1, 'An energizing and hydrating gel that helps purify the skin and balance the flow of energy in the body. It revitalizes the skin and helps balance emotions. Use wherever energy stimulation is needed. Apply to entire body especially the abdominal area, the solar plexus, to encourage a sense of certainty and confident well-being. Do not wash away. With chili pepper ferment extract to activate circulation, absynthe extract derived from herbs picked right near our Swiss factory and which balance the liver and gall bladder, aloe and apricot kernel oil to hydrate and nourish, and essential oils of lime, rosemary, cypress and lemon.'),
(178, 12, 1, 'For oily scalp and hair, this toning and astringent shampoo is formulated with hydrating and mineralizing algae helps normalize secretions of the sebaceous glands, balance the scalp, and revitalize both scalp and hair. Use for these conditions or if your hair and scalp are already in balance use during energetic Spring. With essential oils of rosemary, cypress, and lemon'),
(182, 12, 1, 'For dehydrated scalp and hair lacking volume, this toning shampoo promotes luster of hair and elasticity of the scalp. Use for these conditions or if your hair and scalp are already in balance use during energetic Winter. With cider vinegar and essential oils of eucalyptus and juniper berry.'),
(181, 12, 1, 'For brittle hair and dry scalp, the Metal element shampoo mineralizes, nourishes, softens, and deeply hydrates hair and scalp. If your hair and scalp are already in balance use during energetic Fall. With sweet almond oils and essential oils of lavender, ylang ylang, lemon, thyme, cypress, and sweet marjoram'),
(184, 12, 1, 'ActivJoint™ is a certified vegan dietary supplement made from the highest quality sea minerals from ConcenTrace®, calcium, herbs and nutrients. It’s designed to provide nutritional support to help maintain mobility and functionality of healthy bones and joints of the body.'),
(185, 12, 1, 'ActivJoint™ Platinum provides complete and effective nutritional support to help you maintain an active lifestyle. It’s formulated with the highest quality glucosamine, chondroitin, MSM, herbs, enzymes and nutrients that are then activated with Ionic Trace Minerals. ActivJoint™ Platinum is a complete dietary supplement designed to support healthy bone, joint, and ligament mobility.'),
(188, 12, 1, 'Children’s Chewable Probiotic is a delicious chewable your children will love! It has been specifically formulated for children and includes prebiotic inulin and 4 strains of viable organisms, including Bifidobacterium and Lactobacillus, the bacteria most dominantly found in the large and small intestines.'),
(186, 12, 1, 'Complete Children’s Chewable™ is a great tasting complete multivitamin with vitamins, minerals, trace minerals and essential nutrients your active child needs to stay healthy and grow up strong.'),
(189, 12, 1, 'Complete Foods Multi™ provides natural food factors, vitamins and minerals, activated with Ionic Trace Mineral Complex, to provide one of the most complete multi-food/multi-vitamins available for higher energy and better overall health.'),
(190, 12, 1, 'ConcenTrace® Trace Mineral Drops is an all natural mineral concentrate that’s made by using ConcenFlo™, our proprietary harvesting process. ConcenTrace® contains naturally occurring ionic trace minerals from the Great Salt Lake with 99% sodium removed. It’s impossible to overestimate the importance of minerals and trace minerals for the human body. They are the catalysts for all the vitamins and other nutrients your body uses for developing and maintaining good health.'),
(195, 12, 1, 'ConcenTrace® Mineral Mouth Rinse is a alcohol free, gentle rinse that helps to promote fresh breath, and a clean feeling the natural way. It’s made with ConcenTrace® ionic trace minerals, America’s #1 selling trace mineral supplement, colloidal silver, and peppermint essential oil. This unique blend helps rinse your teeth and gums of food debris while the minerals help to neutralize odors and acidic foods that cause bad breath, leaving your mouth clean and your breath fresh.'),
(191, 12, 1, 'Coral Calcium is a dietary supplement sourced from pure ecologically safe, bio-available coral calcium, combined with a proprietary nutritional blend to provide one of the best pH balanced coral calcium formulas available. No other coral calcium formula can offer that same benefit. Also added are vitamins and minerals to support bone health &amp; immunity.'),
(192, 12, 1, 'Electro-Vita-Min is the original food-based multi with over 30 years on the market! It is formulated to provide a complete synergistic blend of essential vitamins, minerals, green foods, omega fatty acids and enzymes that have been supercharged with a full-spectrum of electrolytes from Ionic Trace Minerals to help maintain optimum health and energy.'),
(193, 12, 1, 'Liquid Multi Vitamin-Mineral with Ionic Trace Minerals has been formulated for the nutritional needs of all genders and contains over 90 nutrients for superior health.'),
(199, 12, 1, 'Liquid Vitamin D3 is a dietary supplement that provides 125mcg (5000 IU) of vitamin D3 per serving, plus a concentrated complex of full spectrum ionic trace minerals.'),
(196, 12, 1, 'Probiotic 55 Billion is formulated with 10 strains of viable organisms, including 11 billion Bifidobacterium CFUs and 44 billion Lactobacillus CFUs, the bacteria most dominantly found in the large and small intestines. Since intestinal flora often decreases with age, taking a probiotic can help your body maintain a healthy functioning digestive system. Plus, we use special delayed release capsules that are optimized to help prevent probiotics from being damaged by stomach acid, allowing them to reach the small intestine for maximum effectiveness.'),
(197, 12, 1, 'TMRSPORT Clean Protein Bar is the clean protein bar you’ve been searching for. It provides 20 grams of protein, is cold-processed, has NO sugar alcohols, NO preservatives, NO refined sugars, and it’s Non-GMO Project Verified. Plus, it tastes great and provides you the healthy fats you need to achieve your goals.'),
(194, 12, 1, 'Stress-X Magnesium Powder is a natural magnesium supplement formulated with magnesium malate and a special blend of magnesium carbonate and citric acid, which creates a highly absorbable form of magnesium citrate to help maintain healthy magnesium levels in the body to help you stay calm and relaxed and to feel overall wellness in body and mind.'),
(198, 12, 1, 'Everyone experiences periods of stress. These periods can last just hours or many days. Any period of stress depletes the body of minerals, vitamins and other nutrients that cause fatigue and decreased health and wellness.'),
(201, 12, 1, 'GREAT FOR BEDTIME\nAwake well-rested with SLEEP WELL to give yourself the best chance for a wonderful day by embracing this nightly bedtime ritual to help you drift off into restful sleep.  Delivers an alluring blend to relax your body and quiet your mind.\nOur 100% natural, essential oil-based Aromatherapy Balm is mess-free and will not leak or spill in your bag. \n 5g / 0.17oz'),
(203, 12, 1, '&quot;GREAT FOR BEDTIME&quot;\nAwake well-rested with SLEEP WELL to give yourself the best chance for a wonderful day by embracing this nightly bedtime ritual to help you drift off into restful sleep.  Delivers an alluring blend to relax your body and quiet your mind. \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n85g / 3.0oz \nBurn Time: 18'),
(204, 12, 1, '&quot;GREAT FOR BEDTIME&quot;\nAwake well-rested with SLEEP WELL to give yourself the best chance for a wonderful day by embracing this nightly bedtime ritual to help you drift off into restful sleep.  Delivers an alluring blend to relax your body and quiet your mind.\nOur 100% natural, essential oil-based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use SLEEP WELL as part of our Wellbeing Ritual.  \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n5g / 0.17 oz Balm\n85g / 3 oz Candle\nBurn Time: 18 hours'),
(205, 12, 1, 'A great gift for travellers and those chasing the dream of restorative sleep. Our SLEEP WELL Essentials Set contains the perfect two-some - a super soft, 100% silk eye pillow to block out unwanted light and our SLEEP WELL (5g) Wellbeing Ritual Aromatherapy Balm\n5g / 0.17 oz Balm'),
(206, 12, 1, 'GREAT FOR BEDTIME\nAwake well-rested with SLEEP WELL to give yourself the best chance for a wonderful day by embracing this nightly bedtime ritual to help you drift off into restful sleep.  Delivers an alluring blend to relax your body and quiet your mind.\nOur 100% natural, essential oil-based Aromatherapy Balm is mess-free and will not leak or spill in your bag. \n 1.5g / 0.05oz\n'),
(207, 12, 1, '&quot;STAY SCENTERED&quot;\nDE-STRESS our remarkably soothing blend to help you juggle more throughout your day, keeping you calm and in control. It’s your portable companion to support you through life’s everyday journey. Our 100% natural, essential oil-based Aromatherapy Balm is mess-free and will not leak or spill in your bag. Use DE-STRESS as part of our Wellbeing Ritual.  5g / 0.17 oz'),
(208, 12, 1, '&quot;STAY SCENTERED&quot;\nDE-STRESS our remarkably soothing blend to help you juggle more throughout your day, keeping you calm and in control. It’s your portable companion to support you through life’s everyday journey. Our 100% natural, essential oil-based Aromatherapy Balm is mess-free and will not leak or spill in your bag. Use DE-STRESS as part of our Wellbeing Ritual.  1.5g / 0.05oz'),
(210, 12, 1, '&quot;STAY SCENTERED&quot;\nDE-STRESS our remarkably soothing blend to help you juggle more throughout your day, keeping you calm and in control. It’s your portable companion to support you through life’s everyday journey. \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n85g / 3.0oz \nBurn Time: 18'),
(211, 12, 1, 'STAY SCENTERED\'\nDE-STRESS our remarkably soothing blend to help you juggle more throughout your day, keeping you calm and in control. It’s your portable companion to support you through life’s everyday journey. \nOur 100% natural, essential oil-based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use DE-STRESS as part of our Wellbeing Ritual.  \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n5g / 0.17 oz Balm\n85g / 3 oz Candle\nBurn Time: 18 hours'),
(212, 12, 1, '&quot;BETTER THAN COFFEE&quot;\nPrepare for the day ahead with FOCUS, an invigorating blend that will help direct your mind and boost concentration. Use it throughout the day whenever you need to refocus your efforts to accomplish the goals and tasks on your to-do list.\nOur 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use FOCUS as part of our Wellbeing Ritual.  \n\n5g / 0.17oz'),
(213, 12, 1, '&quot;BETTER THAN COFFEE&quot;\nPrepare for the day ahead with FOCUS, an invigorating blend that will help direct your mind and boost concentration. Use it throughout the day whenever you need to refocus your efforts to accomplish the goals and tasks on your to-do list.\nOur 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use FOCUS as part of our Wellbeing Ritual.  \n1.5g / 0.05oz'),
(214, 12, 1, '&quot;SUNSHINE ANYTIME&quot;\nStart your day with HAPPY. Our uplifting citrus and mint blend delivers an instant burst of positivity and is perfect when expressing moments of gratitude. \n\nOur 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use HAPPY as part of our Wellbeing Ritual.  \n5g / 0.17 oz '),
(215, 12, 1, '&quot;SUNSHINE ANYTIME&quot;\nStart your day with HAPPY. Our uplifting citrus and mint blend delivers an instant burst of positivity and is perfect when expressing moments of gratitude. \n\nOur 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use HAPPY as part of our Wellbeing Ritual.  \n1.5g / 0.05oz'),
(216, 12, 1, '&quot;SUNSHINE ANYTIME&quot;\nStart your day with HAPPY. Our uplifting citrus and mint blend delivers an instant burst of positivity and is perfect when expressing moments of gratitude. \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n85g / 3 oz\nBurn Time: 18 hours'),
(217, 12, 1, '&quot;SUNSHINE ANYTIME&quot;\nStart your day with HAPPY. Our uplifting citrus and mint blend delivers an instant burst of positivity and is perfect when expressing moments of gratitude. \nOur 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use HAPPY as part of our Wellbeing Ritual.  \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n5g / 0.17 oz Balm\n85g / 3 oz Candle\nBurn Time: 18 hours'),
(218, 12, 1, '&quot;ME TIME&quot;\nWhen it’s time to shift gears from doing what you “have to do” to doing what you “want to do”, this grounding blend instantly transports you mentally to “me time”, whether that’s a yoga class or a good book.  \nOur 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use ESCAPE as part of our Wellbeing Ritual.  \n5g / 0.17 oz Balm'),
(219, 12, 1, '&quot;ME TIME&quot;\nWhen it’s time to shift gears from doing what you “have to do” to doing what you “want to do”, this grounding blend instantly transports you mentally to “me time”, whether that’s a yoga class or a good book.  Our 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use ESCAPE as part of our Wellbeing Ritual.  \n1.5g / 0.05oz'),
(221, 12, 1, '&quot;ME TIME&quot;\nWhen it’s time to shift gears from doing what you “have to do” to doing what you “want to do”, this grounding blend instantly transports you mentally to “me time”, whether that’s a yoga class or a good book.  \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. 85g / 3 oz\nBurn Time: 18 hours'),
(222, 12, 1, '&quot;ME TIME&quot;\nWhen it’s time to shift gears from doing what you “have to do” to doing what you “want to do”, the grounding ESCAPE blend instantly transports you mentally to “me time”, whether that’s a yoga class or a good book.  Our 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use ESCAPE as part of our Wellbeing Ritual.  \nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n5g / 0.17 oz Balm\n85g / 3 oz Candle\nBurn Time: 18 hours'),
(223, 12, 1, '&quot;FEEL CONNECTED&quot;\nLOVE is a warm, romantic blend that stimulates the emotions to enhance sensuality and emotional connectivity. For when you want to feel connected with others physically or emotionally or times when you need soothing self-care, it’s like a hug you give to yourself.Our 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use LOVE as part of our Wellbeing Ritual.  \n5g / 0.17oz'),
(224, 12, 1, '&quot;FEEL CONNECTED&quot;\nLOVE is a warm, romantic blend that stimulates the emotions to enhance sensuality and emotional connectivity. For when you want to feel connected with others physically or emotionally or times when you need soothing self-care, it’s like a hug you give to yourself.Our 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use LOVE as part of our Wellbeing Ritual.  \n1.5g / 0.05oz\n'),
(225, 12, 1, '&quot;FEEL CONNECTED&quot;\nLOVE is a warm, romantic blend that stimulates the emotions to enhance sensuality and emotional connectivity. For when you want to feel connected with others physically or emotionally or times when you need soothing self-care, it’s like a hug you give to yourself.\nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n220g / 7.8 oz\nBurn Time: 35 hours'),
(226, 12, 1, '&quot;FEEL CONNECTED&quot;\nLOVE is a warm, romantic blend that stimulates the emotions to enhance sensuality and emotional connectivity. For when you want to feel connected with others physically or emotionally or times when you need soothing self-care, it’s like a hug you give to yourself.\nOur therapeutic candles are made from a custom blend of natural waxes, sustainably sourced and non-GM, with pure essentials oils for a clean burn and natural fragrance. \n85g / 3 oz\nBurn Time: 18 hours'),
(227, 12, 1, 'The perfect solution for anyone that deserves a little of everything, and that includes you! Our Ultimate Survival Kit contains one of each of the fab five Scentered Wellbeing Ritual Aromatherapy Balms; SLEEP WELL, LOVE, ESCAPE, DE-STRESSand FOCUS with a neat zip up and go travel bag. A portable toolkit to you stay Scentered throughout life\'s everyday journey. Our 100% natural, essential oil based Aromatherapy Balm is mess-free and won\'t leak or spill in your bag. Use  as part of our Wellbeing Ritual.  \nAn excellent value!\n5 X 5g / 0.17oz'),
(228, 12, 1, 'Our Wellbeing Ritual Aromatherapy Mini Tin contains five of our best-selling 100% natural balms - SLEEP WELL, DE-STRESS, HAPPY, FOCUS AND ESCAPE. The travel-friendly tin is perfect for transporting your Balms, helping you mindfully transition throughout your daily journey. \nEach 1.5g mess-free mini balm contains up to 25 essential oils, which deliver a uniquely glorious 100% natural fragrance. Our portable, nourishing balms have been carefully formulated with a blend of moringa and shea butter, to ensure a non-greasy finish to help you mindfully transition throughout your daily journey.\nEach balm can be used individually to target a specific need or together, as a personal mood and lifestyle support \'tool kit\'. \n5x 1.5g'),
(229, 12, 1, 'For anyone who lives life in the fast lane, this trio of our best-selling HAPPY, DE-STRESS and SLEEP WELL 100% natural Wellbeing Ritual Aromatherapy Balms will help you mindfully transition from moment to moment throughout your daily journey.  Made with therapeutic grade essential oils and botanicals, chosen for both their proven aromatherapy based well-being benefits and their fine fragrances. No spill, easy to use, and generously sized (5g). \n3 x 5g / 0.17 oz'),
(230, 12, 1, 'Garnet Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm). \r\nGarnet is an energizing stone that helps promote love, strengthen relationships, and attract abundance into your life. As a balancing stone, garnet stimulates your desires, lifts your spirits, increases your passion, and proves emotional stability and acts as a personal protector against negativity. be energy. be hope. be inspired. Beads: 3mm\r\nCircumference: 6'),
(231, 12, 1, 'Amethyst Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm). Amethyst is a spiritual stone that stills the mind, provides a sense of serenity, and eases you into a meditative state. It helps you remain centered while enhancing wisdom and understanding. Aligned with the crown chakra, it brings a greater sense of spirituality .be centered. be spiritual. be serene. Beads: 3mm Circumference: 6”'),
(232, 12, 1, 'Aquamarine Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm). Aquamarine is a calming stone that helps one reach a higher state of consciousness. As a reflective stone, it is wonderful for meditation. As a healing stone, it helps provide greater courage and clarity, while encouraging its wearer to approach humanity with compassion.be aware. be calm. be renewed. Beads: 3mm Circumference: 6”'),
(233, 12, 1, 'Crystal Quartz Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Crystal Quartz is a purifying stone that removes negative energy, fights emotional exhaustion, and increases your motivation. As a master healing stone, it lifts your spirits, enhances your optimism, and increases your physical + emotional levels.be energy. be motion. be positive. Beads: 3mm Circumference: 6”'),
(234, 12, 1, 'Green Agate Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Green Agate is a confidence-boosting stone that enhances your sense of compassion, generosity, and justice. Green agate helps attract lasting love into your life and is a stone that brings you closer to your inner self, bringing self-knowledge, expansion + personal growth.be love. be generous. be harmony. Beads: 3mmCircumference: 6”'),
(235, 12, 1, 'White Moonstone Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm)Moonstone is an empowering stone known as the “Goddess Stone” which sharpens your intuition, opens your heart, and enhances your ability to nurture and love. As a stone of new beginnings, its eases meditation, and your journey inward, and aids in achieving enlightenment. be hope. be love. be enlightened. Beads: 3mmCircumference: 6”'),
(236, 12, 1, 'Rubine Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Rubine is a strengthening stone from the Ruby family, which assists in you recharging your energy levels. It is a stone of manifestation which restores your vitality and passion for life, shields you from negativity, and allows you to be more extroverted and outgoing.      be strong. be passion. be grounded.                        Beads: 3mm Circumference: 6”'),
(237, 12, 1, 'Peridot Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Peridot is a powerful cleansing stone that protects you from harm and attracts prosperity. As a stone of transformation, it helps reveal your soul’s purpose, brings about necessary change, and allows you to let go of the past and move forward with confidence. be confident. be protected. be transformed. Beads: 3mm Circumference: 6”'),
(238, 12, 1, 'Sapphire Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Sapphire is a focus enhancing stone that calms your mind, increases your wisdom, and provides clarity. It reduces feelings of envy, alleviates fear and anxiety, opens your heart to love and helps you more easily express yourself.  be focused. be abundant. be wise. Beads: 3mm Circumference: 6”'),
(239, 12, 1, 'Pink Opal Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Pink Opal is a calming stone that brings joy into your life and balances your emotions. It helps you honestly express your feelings to others, increases your sense of self-worth, and allows you to understand your full power + potential.  be authentic. be balanced. be empowered. Beads: 3mm Circumference: 6”'),
(240, 12, 1, 'Citrine Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Citrine is an energizing stone that eliminates negative energy, gives you more optimism + enthusiasm, and boosts your self-esteem. Known as the “Success Stone,” it helps you manifest abundance + prosperity. As a healing stone, it emanates happiness and positivity, and encourages generosity.  be creative. be generous. be happy. Beads: 3mm Circumference: 6”'),
(241, 12, 1, 'Tanzanite Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Tanzanite is a soothing stone that enhances your ability to communicate, as well as express and release your emotions. It sharpens your intuition, aids in meditation connecting the mind and heart. It inspires one to feel more compassionate, loving + centered.  be truth. be peace. be joy. Beads: 3mm Circumference: 6”');
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(242, 12, 1, 'Represents: Crown Chakra and consciousness\r\nExperience a state of pure consciousness while wearing our Amethyst Mala Bracelet, made with all-natural, semi-precious amethyst gemstone beads. Amethyst aligns with the Crown Chakra and represents consciousness, bringing you a greater sense of enlightenment, mindfulness and spirituality. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Sahaswara charm (Sanskrit for thousandfold) to represent the Crown Chakra. Beads: 6mm Circumference: 7” (adjustable)'),
(244, 12, 1, 'Represents: Throat Chakra and expression\r\nExperience fluency of thought and expression while wearing our Amazonite Mala Bracelet, made with all-natural, semi-precious amazonite gemstone beads. Amazonite aligns with the Throat Chakra and represents expression, filling you with life, empowerment and truth. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Vishuddha charm (Sanskrit for purification) to represent the Throat Chakra. Beads: 6mm Circumference: 7” (adjustable)'),
(247, 12, 1, 'Represents: Sacral Chakra and creativity\r\nChannel creative energy while wearing our Red Aventurine Mala Bracelet, made with all-natural, semi-precious red aventurine gemstone beads. Red Aventurine aligns with the Sacral Chakra and represents creativity, bringing you a greater sense of abundance, joy and love. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Svadhisthana charm (Sanskrit for sacred home of the self) to represent the Sacral Chakra. Beads: 6mm Circumference: 7” (adjustable)'),
(248, 12, 1, 'Represents: Root Chakra and survival\r\nStay balanced and secure while wearing our Red Jasper Mala Bracelet, made with all-natural, semi-precious red jasper gemstone beads. Red Jasper aligns with the Root Chakra and represents survival, keeping you confident, grounded and strong. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Muladhara charm (Sanskrit for support) to represent the Root Chakra. Beads: 6mm Circumference: 7” (adjustable)'),
(250, 12, 1, 'Stay centered, balanced and uplifted while wearing our Seven Chakra Ombre Charm Bracelet, designed with an ombre pattern featuring seven all-natural, semi-precious gemstone beads. Each gemstone featured in the bracelet represents one of the seven chakras, helping you align your chakras for a greater sense of well-being. The handcrafted bracelet also features a macrame slide closure for easily adjustable sizing, as well as an array of seven dangling charms, which represent the Sanskrit symbol for each chakra. Beads: 6mm Circumference: 7” (adjustable)'),
(251, 12, 1, 'This hand-knotted, unisex mala bracelet combines sustainable robles wood beads with seven all-natural, semi-precious gemstones. Each gemstone featured in the bracelet represents one of the seven chakras, helping you align your chakras for a greater sense of well-being. The handcrafted bracelet also features a macrame slide closure for easily adjustable sizing, as well as a dangling tassel with threads representing all seven gemstones. Beads: 8mm Circumference: 7.5” (adjustable)'),
(253, 12, 1, 'Represents: Third Eye Chakra and intuition\r\nThis hand-knotted, unisex mala bracelet combines sustainable robles wood beads with three all-natural, semi-precious sodalite gemstones. Sodalite aligns with the Third Eye Chakra and represents intuition, bringing you a greater sense of purity, soulfulness and wisdom. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Ajna charm (Sanskrit for perception) to represent the Third Eye Chakra. Beads: 8mm Circumference: 7.5” (adjustable)'),
(255, 12, 1, 'Represents: Heart Chakra and love\r\nThis hand-knotted, unisex mala bracelet combines sustainable robles wood beads with three all-natural, semi-precious green aventurine gemstones. Green Aventurine aligns with the Heart Chakra and represents love, bringing you a greater sense of compassion, generosity and gratitude. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Anahata charm (Sanskrit for unstruck) to represent the Heart Chakra. Beads: 8mm Circumference: 7.5” (adjustable)'),
(261, 12, 1, 'This 108-bead, unisex mala necklace combines hand-strung, sustainable robles wood beads with seven all-natural, semi-precious gemstones. Inspired by the Namaste hand position, the hand-knotted gemstone pattern at the bottom of the mala is designed to look like two hands in prayer when turned upside down. Each gemstone in the necklace represents one of the seven chakras, helping you align your chakras for a greater sense of well-being. Made with 8mm beads for a longer-hanging necklace, the handcrafted mala features a tassel with threads representing all seven gemstones. It also includes a dangling Om charm and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.” Beads: 8mm Circumference: 36&quot;'),
(273, 12, 1, 'Balance your emotions and remove anger and resentment, while wearing our Rhodonite Faceted Stretch Bracelet. This handcrafted bracelet promotes humanity and features all-natural, semi-precious faceted Rhodonite stones.\r\nBe Compassion. \r\nThis bracelet also goes well with our Lucky Buddha Bead Detachable Charm!\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(274, 12, 1, 'Strengthen your spirit and enhance mental power, while wearing our Silver Grey Quartz Faceted Stretch Bracelet. This handcrafted bracelet promotes awareness and features all-natural, semi-precious faceted Silver Grey Quartz beads. \r\nBe Enlightened. \r\nThis bracelet also goes well with our Lucky Buddha Bead Detachable Charm!\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(277, 12, 1, 'Unakite is a balancing stone that balances your emotions and brings calm  to any situation.  Also called Epidote - from the Greek word epidosus, meaning “growing together” - Unakite combines  red jasper, pink feldspar, and green epidote gemstones.\r\nIt helps you break through barriers that are holding you back, aids in  spiritual growth and enhances optimism about the future. As a visionary stone, Unakite helps you visualize the things you want in life. \r\nIt encourages self-love and acceptance, and is known to relieve stress and improve sleep.This bracelet also goes well with our Lucky Buddha Bead Detachable Charm!\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(279, 12, 1, 'Be thoughtful while wearing our Yellow Jade Faceted Stretch Bracelet. This handcrafted bracelet promotes energy and features all-natural, semi-precious faceted Yellow Jade stones. \r\nThis bracelet also goes well with our Lucky Buddha Bead Detachable Charm!\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(288, 12, 1, 'Bring an openness to each day and a celebration of every experience, while wearing our Picasso Jasper Faceted Stretch Bracelet. This handcrafted bracelet promotes optimism and features all-natural, semi-precious faceted Picasso Jasper stones and our Lucky Buddha Bead. \r\nBe Grounded. \r\nBeads: 6mm\r\nCircumference: 7.25”'),
(291, 12, 1, 'Balance your emotions and remove anger and resentment, while wearing our Rhodonite Faceted Stretch Bracelet. This handcrafted bracelet promotes humanity and features all-natural, semi-precious faceted Rhodonite stones and our Lucky Buddha Bead. \r\nBe Compassion. \r\nBeads: 6mm\r\nCircumference: 7.25”'),
(295, 12, 1, 'Unakite is a balancing stone that balances your emotions and brings calm  to any situation.  Also called Epidote - from the Greek word epidosus, meaning “growing together” - Unakite combines red jasper, pink feldspar, and green epidote gemstones.\r\nIt helps you break through barriers that are holding you back, aids in spiritual growth and enhances optimism about the future. As a visionary stone, Unakite helps you visualize the things you want in life. \r\nIt encourages self-love and acceptance, and is known to relieve stress and improve sleep.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(297, 12, 1, 'Be thoughtful while wearing our Yellow Jade Faceted Stretch Bracelet. This handcrafted bracelet promotes energy and features all-natural, semi-precious faceted Yellow Jade stones and our Lucky Buddha Bead. \r\nBeads: 6mm\r\nCircumference: 7.25”'),
(308, 12, 1, 'Boost your confidence and inner strength while wearing our Smoky Quartz Om Charm Bracelet. Handcrafted with all-natural, semi-precious smoky quartz beads and a beaded slide closure, this bracelet promotes courage and builds self-belief. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(310, 12, 1, 'Known to promote love, compassion and sensuality, our Rose Quartz Om Charm Bracelet helps rejuvenate your mind and nourish your spirit. Featuring all-natural, semi-precious rose quartz beads and a beaded slide closure, this handcrafted bracelet encourages empathy and kindness toward both yourself and others. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(311, 12, 1, 'Enhance intuition and increase creativity while wearing our Sodalite Om Charm Bracelet. Featuring all-natural, semi-precious sodalite beads and a beaded slide closure, this piece will leave you feeling inspired, balanced and full of bright ideas. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(312, 12, 1, 'Stay grounded and present in the moment while wearing our Tiger’s Eye Om Charm Bracelet. Featuring all-natural, semi-precious gemstone beads and a beaded slide closure, this bracelet promotes courage, strength and mindfulness to help you live more fully in the present moment. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(314, 12, 1, 'Soothe your spirit, find your truth and calm your mind while wearing our Amazonite Tassel Bracelet. Featuring all-natural, semi-precious amazonite beads and a charming threaded tassel, this handcrafted piece is known for easing communication and promoting harmony with yourself and others.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(319, 12, 1, 'Sharpen your focus and guard yourself against negative energy while wearing our Pyrite Tassel Bracelet. Made with all-natural, semi-precious pyrite beads and a beautifully threaded tassel, this bracelet will shield you from harm and provide greater enlightenment.\r\n\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(320, 12, 1, 'Known to promote love, compassion and sensuality, our Rose Quartz Tassel Bracelet helps rejuvenate your mind and nourish your spirit. Featuring all-natural, semi-precious faceted rose quartz beads and a beautifully threaded tassel, this handcrafted bracelet was created to encourage empathy and kindness toward both yourself and others.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(321, 12, 1, 'Stay grounded and present in the moment while wearing our Tiger’s Eye Tassel Bracelet. Featuring all-natural, semi-precious gemstone beads and a matching threaded tassel, this bracelet promotes courage, strength and mindfulness to help you live more fully in the present moment.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(323, 12, 1, 'Boost your confidence and inner strength while wearing our Smoky Quartz Tassel Bracelet. Handcrafted with all-natural, semi-precious smoky quartz beads and a charming multicolored tassel, this bracelet promotes courage and builds self-belief.\r\nBeads: 6mm\r\nCircumference: 7.25”'),
(329, 12, 1, 'Soothe your spirit, find your truth and calm your mind while wearing our Amazonite Mala Necklace. This mala features 108 all-natural, semi-precious amazonite beads, known for easing communication and promoting harmony with yourself and others. It also includes a threaded tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”\r\nBeads: 6mm\r\nCircumference: 31-33”\r\nTassel: 2.5”'),
(332, 12, 1, 'Featuring 108 all-natural, semi-precious gemstone beads, the Botswana Agate Necklace provides a sense of freedom, calm and creativity to its wearer. It also includes a threaded tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”\r\nBeads: 6mm\r\nCircumference: 31-33”\r\nTassel: 2.5”'),
(339, 12, 1, 'Find a sense of freedom, calm and creativity with our Botswana Agate Wrap Mala. Known to provide stability and balance your emotions, this adjustable mala is made of 108 all-natural, semi-precious Botswana agate beads, and can be worn as a necklace or wrapped around the wrist for a stacked-bracelet look. It also includes a detachable mini tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”\r\nBeads: 6mm\r\nCircumference: 31-35”\r\nKnotted loop closure: 4”'),
(342, 12, 1, 'Channel serenity and balance while wearing our Amethyst Wrap Mala. Known for enhancing spirituality, this adjustable mala is made of 108 all-natural, semi-precious amethyst beads, and can be worn as a necklace or wrapped around the wrist for a stacked-bracelet look. It also includes a detachable mini tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”\r\nBeads: 6mm\r\nCircumference: 33-38”\r\nKnotted loop closure: 4”'),
(356, 12, 1, 'Chzyme contains digestive enzymes used to promote food assimilation and to reduce indigestion and other digestive symptoms, with a well-known herbal formula. It was recently reformulated and is now gluten free. Peppermint oil (bo he) has been added for it\'s anti gas and anti spasmodic effects. Poria (fu ling), cardamom (sha ren), and red atractylodes (cang zhu) supplement the spleen and eliminate dampness. Magnolia (hou pu), vladimiria souliei (mu xiang), pogostemon (huo xiang), citrus (chen pi), regulate stomach Qi, relieve nausea and vomiting, and dry dampness. Radish seed (lai fu zi) and blue citrus (qing pi) reduce food stagnation and eliminate distension. Citrus fruit (aurantium) (chen pi) and lindera (wu yao) reduce distension and treat abdominal pain. Cyperus (xiang fu) is a harmonizing herb that releases emotional constraint in the liver and gallbladder channel and redirects rebellious qi. Ginger (gan jiang) relieves nausea and treats abdominal pain. Licorice (gan cao) treats ulcers and harmonizes the characteristics of the other herbs.'),
(357, 12, 1, '&quot;Curcuma Flow is a clinically proven patented delivery form of curcumin. This system protects curcumins from breakdown by water and uses PC (phosphatidylcholine) to carry curcumins across the intestinal lining.\r\n\r\nCurcuma Flow is supported by 25 clinical studies, involving more than 1400 subjects. Curcumin typically exhibits poor oral absorption in the body. Pharmacokinetic comparison studies have shown Curcuma Flow to improve bioavailability of curcuminoids by about 30-fold.2,3 Curcuma Flow can help patients lower their pain, reduce their need for pharmaceutical analgesics, and improve quality of life. &quot;'),
(359, 12, 1, 'Isatis Gold is a combination of Western and Chinese herbs designed as an herbal antibiotic and anti-viral. Echinacea and goldenseal are used in combination to reduce swelling and treat inflammatory conditions of the upper respiratory tract. Isatis extract (da qing ye and ban lan gen) are widely studied and used in China as a broad-spectrum antibiotic and anti-viral agent. Platycodon (jie geng) is an anti-inflammatory herb that resolves phlegm, relieves cough, moistens the throat, and helps reduce pus. Platycodon (jie geng) and ligusticum (chuan xiong) direct the formula to the upper body. Ligusticum dispels wind and treats sinus congestion, sore throat, and headache.'),
(358, 12, 1, '&quot;EPAQ is comprised of 100% Antarctica krill oil. It contains an ideal balance of essential fatty acids, phospholipids, and antioxidants. It has been clinically proven to be more effective than fish oil for PMS and hyperlipidemia. It reduces joint pain and stiffness, and has a protectant effect against UV radiation. The phospholipids: PC (phosphatidylcholine) and PS (phosphatidylserine) are contained in EPAQ. In addition, EPAQ contains a naturally occurring antioxidant, astaxanthin. Astaxanthin is particularly good at protecting against ultraviolet (UV) light. It also has anti-inflammatory effects and protects against oxidation.&quot;'),
(360, 12, 1, 'Tamu is a proprietary blend of three healing oils, which have soothing effects on the skin as well as pain relieving properties.Tamu oil contains Tamanu oil, a rare ingredient from the South Pacific used to promote new skin tissue, and accelerate wound healing. It is traditionally used topically in the treatment of wounds, insect bites, burns, (sunburn, chemical, radiation), acne, psoriasis, diabetic sores, anal fissures, herpes, dry skin, diaper rash. It is also traditionally used to treat nerve, joint, and muscle pain; for example, it has been used to treat sciatica, shingles, rheumatism and neuritis associated with leprosy. Tamanu oil must be specially processed to insure its therapeutic effect.'),
(361, 12, 1, 'Nasal Tabs 2 is based on several traditional formulas. Xanthium (cang er zi) is used to open nasal passages. It also has antibacterial properties. Cinnamon twig (gui zhi) is a warming botanical that reduces edema and stagnant phlegm with antibacterial and fever reducing effects. Angelica (bai zhi) reduces nasal congestion and pain. Ligusticum (chuan xiong) and Red Peony (chi shao) activate blood circulation. Cimicifuga (sheng ma) is used to guide the herbs upward, it also reduces pathogenic fungus. Eucalyptus leaf is processed to be rich in essential oil content. It reduces phlegm and nasal congestion. Thyme reduces bronchial spasms and possesses anti-fungal and antibacterial activity. Licorice (gan cao) is a harmonizing ingredient.'),
(363, 12, 1, 'This is an empirical formula based on Dr. Fung\'s 60 years experience.Skin Balance can be used for minor cases like pimples and localized itching to serious cases such as eczema or psoriasis. According to TCM these conditions are caused by heat, dampness, and toxins.Skin Balance is designed to treat skin inflammation. It is able to do four things: eliminate toxins, evaluating, reduce heat and dampness, and to nourish the skin through nourishing the blood.The following herbs are used to reduce the toxins: oldenlandia (bai hua she she cao), viola (zi hua di ding), and barbat skullcap (ban zhi lian). The following herbs are used to reduce the factors of heat and dampness: rehmannia root (sheng di huang), siler (fang feng), lonicera (jin yin hua), and coptis root (huang lian). Liver heat is also reduced by using gentiana (long dan cao) and bupleurum (chai hu).The following herbs are used to smooth bowel and water movements so as to purge the toxins out of the body: Senna leaf (fan xie ye), rhubarb (da huang), carthamus (hong hua), and lysimachia (jin qian cao).The following herb is used to nourish the blood, which will nourish the skin to facilitate recovery of skin tissues: Tang kuei (dang gui).'),
(364, 12, 1, 'StemCell is a proprietary herbal formula designed to improve the functioning of the body’s own(endogenous) stem cells. Current case studies with chronic pain patients indicate that this formula may help to initiate cellular repair, improve mood and reduce pain in patients with osteoarthritis, low back pain, carpal tunnel syndrome, and peripheral neuropathy.StemCell helps patients in chronic pain through a variety of mechanisms including tissue injury repair. In may be a benefit to other patients with chronic disease associated with aging. Many patients using the formula have reported improved mood and energy levels.'),
(384, 12, 1, 'Nasal Drops for Clear Breathing Lubricates the nasal passages Soothes and cleanses the tissues Promotes awareness and concentration The nose is the direct route to the brain and also the doorway to consciousness. It is the entrance for prana, the life force, which comes into the body through the breath.'),
(385, 12, 1, 'In order to experience a deep, restful sleep the body must be fully relaxed and the mind calm. I Sleep Soundly contains natural muscle relaxants that help release the accumulated tension from a stressful day. In addition, the herbs also have a subtle, soothing effect on the mind that helps to ease the mental restlessness that can keep one tossing and turning throughout the night.');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(107, 1, 'Mild Facial Cleansing Milk', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Grapeseed oil: &lt;/b&gt;flavonoid-rich oil abounding in essential fatty acids (omegas 6 and 9); protects and moisturizes; helps to fight against free radicals and aging; softening, nourishing, exfoliating, cooling and revitalizing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Jojoba oil: &lt;/b&gt;moisturizing with a non-greasy touch; because of its unsaponifiable components (precious components found in some oils with softening, revitalizing and moisturizing properties), it spreads easily; easily penetrates epidermis leaving no film, mainly because its characteristics are very close to those of the skin’s natural sebum; antioxidant/anti-age; revitalizes and nourishes skin and hair&lt;/div&gt;&lt;div&gt;&lt;b&gt;Tangerine essential oil: &lt;/b&gt;anti-inflammatory, anti-irritant and disinfectant; very relaxing; recommended for depression, sleeping disorders or anxiety; fragrance develops imagination and creativity&lt;/div&gt;', 'Cleanser ', 'Mild Facial Cleansing Milk', '', ''),
(120, 1, 'Purifying Cleansing Gel', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&amp;nbsp;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Wheat bran extract:&lt;/b&gt; revitalizes, nourishes and softens skin&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Zinc gluconate:&lt;/b&gt; trace mineral and antioxidant; stimulates synthesis of collagen and elastin; very beneficial for the alleviation of acne Magnesium gluconate: trace mineral that relaxes muscles; acts on cellular renewal and production of energy within cells by contributing to glucose transport; very beneficial for tired and overworked people&lt;/p&gt;&lt;p&gt;&lt;b&gt;Copper gluconate:&lt;/b&gt; trace mineral, anti-inflammatory and antioxidant; anti-aging action in the skin by stimulating synthesis of keratin, collagen, and elastin proteins&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manganese gluconate: &lt;/b&gt;trace mineral involved in synthesis of vitamin B1; acts against free radicals; soothes, calms, protects&lt;/p&gt;&lt;p&gt;&lt;b&gt;Cobalt gluconate:&lt;/b&gt; trace mineral and antioxidant found in vitamin B12 and necessary for hemoglobin&lt;/p&gt;&lt;p&gt;&lt;b&gt;Corn extract:&lt;/b&gt; soothes inflammation, itching; nourishes, softens and revitalizes; excellent emollient and skin tonic Horsetail extract: contains silicium, an anti-age ingredient that increases the synthesis of collagen and skin elasticity; highly recommended for wrinkles, stretch marks and scars; very mineralizing and astringent, tonifying and anti-acne&lt;/p&gt;&lt;p&gt;&lt;b&gt;Millet extract: &lt;/b&gt;soothes, nourishes, stimulates and revitalizes skin; also an emollient&lt;/p&gt;&lt;p&gt;&lt;b&gt;Rice extract: &lt;/b&gt;very effective moisturizer; antioxidant, astringent and anti-inflammatory; softening properties; tonic&lt;/p&gt;&lt;p&gt;&lt;b&gt;Buckwheat extract:&lt;/b&gt; rich in vitamins, minerals and proteins; mineralizing, astringent and antioxidant; supports blood circulation.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', '', 'Purifying Cleansing Gel', '', ''),
(121, 1, 'Ageless Cleansing Foam', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Apricot kernel essential oil:&lt;/b&gt; contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sodium cocoyl glutamate: &lt;/b&gt;of natural origin, environmentally friendly, hypoallergenic; very mild to the skin; forms a protective layer on the skin that reduces moisture loss; conditioning effects that contribute to prolonged soft skin&lt;/div&gt;&lt;div&gt;&lt;b&gt;Organic verbena flower water: &lt;/b&gt;herbaceous anti-inflammatory; calming; relaxant; cooling; firming; healing; softens and soothes wounded skin; recommended for nervousness or depression; recommended for cases of psoriasis of nervous origin&lt;/div&gt;', '', 'Ageless Cleansing Foam', '', ''),
(128, 1, 'Ageless Skin Toner', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Witch hazel flower water:&lt;/b&gt; astringent and soothing; anti-inflammatory; naturally, antioxidant-rich&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rose flower water: &lt;/b&gt;astringent and refreshing; tones skin; reduces redness; calms allergic reactionse for all skin types, including sensitive skin.&amp;nbsp;&lt;/div&gt;', '', 'Ageless Skin Toner', '', ''),
(129, 1, 'Le Crème Acide- PH Cream', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Citrus aurantium amara (bitter orange essential oil): &lt;/b&gt;recommended for acne treatment; antiseptic; soothing; relaxing; toning&lt;/div&gt;&lt;div&gt;&lt;b&gt;Gerianol:&lt;/b&gt; an extracted plant oil derived from geraniums and lemongrass; antimicrobial; antioxidant; anti-inflammatory; toning&lt;/div&gt;&lt;div&gt;&lt;b&gt;Limonene: &lt;/b&gt;a scent ingredient and solvent naturally occurring in the rind of citrus fruit; antioxidant; calming to the skin&lt;/div&gt;&lt;div&gt;&lt;b&gt;Petitgrain essential oil:&lt;/b&gt; extracted from the leaves and twigs of the bitter orange tree; often used to treat acne and blemishes; antibacterial; clarifying and toning to skin; neutralizes overactive sebaceous glands causing oily and combination skin; also used to reduce stress and anxiety&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lactic acid: &lt;/b&gt;an alpha hydroxy acid (AHA) which helps to reduce acne breakouts and the appearance of wrinkles and other signs of aging&lt;/div&gt;', '', 'Le Crème Acide- PH Cream', '', ''),
(131, 1, 'Ceresal Day Crème - FIRE', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Corn seed oil: &lt;/b&gt;rich in vitamins A, D, E and K; nourishing, protecting, mineralizing; rich in essential unsaturated fatty acids–containing about 60% omega 6; energizing and a potent antioxidant&lt;/div&gt;&lt;div&gt;&lt;b&gt;Corn extract: &lt;/b&gt;soothes inflammation, itching; nourishes, softens and revitalizes; excellent emollient and skin tonic&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet marjoram essential oil: &lt;/b&gt;antiseptic, anti-irritant and relaxantRosemary extract: a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'Ceresal Day Crème - FIRE', '', ''),
(133, 1, 'Ceresal Day Crème - METAL', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rice bran oil: &lt;/b&gt;very moisturizing; potent antioxidant&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rice extract:&lt;/b&gt; a very effective moisturizer; antioxidant; astringent; anti-inflammatory; skin softener; skin tonic&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; soothing; relaxing; purifying&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;an excellent natural preservative; anti-infectious and antioxidantGlycerin: of vegetal origin, smoothes and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'Ceresal Day Crème - METAL', '', ''),
(132, 1, 'Ceresal Day Crème- EARTH', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Millet extract: &lt;/b&gt;soothes, nourishes, stimulates and revitalizes skin; also an emollient&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera extract:&lt;/b&gt; acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;b&gt;Verbena essential oil:&lt;/b&gt; herbaceous anti-inflammatory, sedative and relaxant; soothes wounded skin&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract:&lt;/b&gt; a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'Ceresal Day Crème- EARTH', '', ''),
(134, 1, 'Ceresal Day Crème -WATER ', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Gingko extract: &lt;/b&gt;strengthens skin; revitalizing as it stimulates both collagen and the synthesis of the neurotransmitter dopamine in the skin; anti-inflammatory; moisturizing; antioxidant; tonic; supports blood circulation&lt;/div&gt;&lt;div&gt;&lt;b&gt;Buckwheat extract: &lt;/b&gt;rich in vitamins, minerals and proteins; mineralizing, astringent and antioxidant; supports blood circulation&lt;/div&gt;&lt;div&gt;&lt;b&gt;Avocado oil: &lt;/b&gt;with an abundance of omegas 6 and 9, proteins, minerals and vitamins (A, B, C, D, E, H, K and PP); moisturizing, anti-wrinkle and revitalizing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil: &lt;/b&gt;supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Juniper berry essential oil: &lt;/b&gt;anti-inflammatory; calming; anti-irritating; lipolitic; acts against water retention&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sage essential oil: &lt;/b&gt;healing lipolitic and antiseptic; helps balance blood circulation&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;potent anti-infectious; antioxidant; invigorating&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'Ceresal Day Crème -WATER ', '', ''),
(135, 1, 'La crème visage-Face Cream with Vitamin E (Biostimulant)', '&lt;div&gt;&lt;b&gt;Unique Ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Horsetail extract: &lt;/b&gt;contains silicium, an anti-age ingredient that increases the synthesis of collagen and skin elasticity; highly recommended for wrinkles, stretch marks and scars; very mineralizing and astringent, tonifying and anti-acne&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Special extract No. 5: &lt;/b&gt;a vegetal extract blend of birch leaf, nettle, sage and milfoil; astringent; anti-inflammatory; encourages circulationLemon essential oil: anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil: &lt;/b&gt;the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious Lavender essential oil: regenerates and quickens healing; soothing; creates sensation of well-being and relaxation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious; antioxidant; invigorating&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet marjoram essential oil: &lt;/b&gt;antiseptic, anti-irritant and relaxantJojoba oil: moisturizing with a non-greasy touch; because of its unsaponifiable components (precious components found in some oils with softening, revitalizing and moisturizing properties), it spreads easily; easily penetrates epidermis leaving no film, mainly because its characteristics are very close to those of the skin’s natural sebum; antioxidant/anti-age; revitalizes and nourishes skin and hair&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Shea butter:&lt;/b&gt; from the nut of the West African shea tree; very moisturizing; healing; anti-inflammatory; softening and smoothing to skin and hair; stimulates collagen synthesis; recommended for the prevention of wrinkles and aging of the skin while protecting it from harsh weather conditions Rosemary extract: a preservative and anti-age antioxidant (free radical scavenger)&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin B2:&lt;/b&gt; also known as riboflavin; a micronutrient beneficial in the treatment of rosacea, acne, eczema, dermatitis, and sun damaged skin; helps to counter visible signs of aging, skin dryness and hyper-pigmentation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'La crème visage-Face Cream with Vitamin E (Biostimulant)', '', ''),
(136, 1, 'Le gel visage -Face Gel', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Edelweiss essential oil:&lt;/b&gt; clinically proven to reduce brown spots and decrease melanin; attenuates dark spots; anti-aging; regenerating; encourages skin’s elasticity; antioxidant; protective&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera extract: &lt;/b&gt;acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Calendula extract:&lt;/b&gt; soothing; moisturizing; healing properties; anti-inflammatory; antioxidant; antiseptic&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aquaxyl: &lt;/b&gt;a high tech compound composed of three natural sugars found in fruits, vegetables and plant-life; gluten-free; promotes effective circulation of moisture throughout all skin layers; boosts hyaluronic acid levels which act as a cushion and lubricant in tissues; reinforces the skin barrier within 24 hours by limiting water loss and increasing water reserves; provides results of softer smoother skin in 21 days with normal desquamation and smoothing of fine lines; protects the skin against environmental stressors&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'Le gel visage -Face Gel', '', ''),
(137, 1, 'Ageless Extreme [Hydrating] Cream', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lingonberry seed essential oil: &lt;/b&gt;a berry from the Arctic region; extremely rich in omega fatty acids 3, 6 and 9 (for moisturizing and anti-age action) and in tocotrienols (antioxidants more powerful than vitamin E); these ingredients are essential to lingonberry in order for it to survive in temperatures as low as minus 50°C; also contains plant sterols that reduce skin sensitivity; anti-inflammatory and revitalizing properties&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Jojoba oil:&lt;/b&gt; moisturizing with a non-greasy touch; because of its unsaponifiable components (precious components found in some oils with softening, revitalizing and moisturizing properties), it spreads easily; easily penetrates epidermis leaving no film, mainly because its characteristics are very close to those of the skin’s natural sebum; antioxidant/anti-age; revitalizes and nourishes skin and hair&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sunflower seed oil:&lt;/b&gt; high-grade; very rich in essential unsaturated fatty acids (more than 85%) and vitamins E and F; well known for its nourishing, soothing and revitalizing properties; penetrates easily since its composition is very similar to the body\'s natural sebum&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aquaxyl: &lt;/b&gt;a high tech compound composed of three natural sugars found in fruits, vegetables and plant-life; gluten-free; promotes effective circulation of moisture throughout all skin layers; boosts hyaluronic acid levels which act as a cushion and lubricant in tissues; reinforces the skin barrier within 24 hours by limiting water loss and increasing water reserves; provides results of softer smoother skin in 21 days with normal desquamation and smoothing of fine lines; protects the skin against environmental stressors&lt;/div&gt;', '', 'Ageless Extreme [Hydrating] Cream', '', ''),
(138, 1, 'Ageless Nourishing Cream', '&lt;p&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Jojoba oil: &lt;/b&gt;moisturizing with a non-greasy touch; because of its unsaponifiable components (precious components found in some oils with softening, revitalizing and moisturizing properties), it spreads easily; easily penetrates epidermis leaving no film, mainly because its characteristics are very close to those of the skin’s natural sebum; antioxidant/anti-age; revitalizes and nourishes skin and hair&lt;/p&gt;&lt;p&gt;&lt;b&gt;Shea butter: &lt;/b&gt;a from the nut of the West African shea tree; very moisturizing; healing; anti-inflammatory; softening and smoothing to skin and hair; stimulates collagen synthesis; recommended for the prevention of wrinkles and aging of the skin while protecting it from harsh weather conditions&lt;/p&gt;&lt;p&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/p&gt;&lt;p&gt;&lt;b&gt;Lavender essential oil:&lt;/b&gt; quickens healing; soothing; creates sensation of well-being and relaxation&lt;/p&gt;&lt;p&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; venous and lymphatic circulation support; recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/p&gt;&lt;p&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious; antioxidant; invigorating&lt;/p&gt;&lt;p&gt;&lt;b&gt;Guaiac wood essential oil: &lt;/b&gt;known for its distinctive wonderful fragrance; a powerful anti-inflammatory and venous and lymphatic decongestant; helpful for providing relief from arthritis and rheumatism as it calms and relaxes; a potent antioxidant&lt;/p&gt;', '', 'Ageless Nourishing Cream', '', ''),
(139, 1, 'Ageless Perfection Cream-Pigmentation Cream', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Edelweiss essential oil: &lt;/b&gt;clinically proven to reduce brown spots and decrease melanin; attenuates dark spots; anti-aging; regenerating; encourages skins elasticity; antioxidant; protective&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wakame (Japanese brown algae): &lt;/b&gt;proven to lighten skin and smooth out dark spots&lt;/div&gt;&lt;div&gt;Phytic acid: a natural acid extracted from wheat; prevents brown spots by decreasing the synthesis of melanin&lt;/div&gt;&lt;div&gt;&lt;b&gt;Shea butter: &lt;/b&gt;a from the nut of the West African shea tree; very moisturizing; healing; anti-inflammatory; softening and smoothing to skin and hair; stimulates collagen synthesis; recommended for the prevention of wrinkles and aging of the skin while protecting it from harsh weather conditions&lt;/div&gt;', '', 'Ageless Perfection Cream-Pigmentation Cream', '', ''),
(130, 1, 'Ceresal Day Crème  - Wood ', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Plankton blue green algae extract (Spirulina platensis): &lt;/b&gt;rich in vitamins, proteins and minerals; stimulating, anti-inflammatory and very moisturizing; antioxidant; encourages blood circulation; mineralizes, revitalizes, strengthens skin; also a potent anti-aging ingredient&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wheat bran extract: &lt;/b&gt;revitalizes, nourishes and softens&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wheat germ oil: &lt;/b&gt;an antioxidant, anti-inflammatory, healing agent; encourages blood circulation; protects and moisturizes; rich in polyunsaturated fatty acids (omegas 3, 6 and 9; anti-wrinkle properties&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil:&lt;/b&gt; stimulates blood circulation’anti-rheumatic, analgesic, anti-infectious and healing agent&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil: &lt;/b&gt;anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Avocado oil: &lt;/b&gt;with an abundance of omegas 6 and 9, proteins, minerals and vitamins (A, B, C, D, E, H, K and PP); moisturizing, anti-wrinkle and revitalizing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'Ceresal Day Crème  - Wood ', '', ''),
(140, 1, 'Element (Night)  Crème -WOOD', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Plankton blue green algae extract (Spirulina platensis): &lt;/b&gt;rich in vitamins, proteins, and minerals; stimulating, anti-inflammatory and very moisturizing; antioxidant; encourages blood circulation; mineralizes, revitalizes, strengthens skin; a potent anti-aging ingredient&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wheat bran extract:&lt;/b&gt; revitalizes, nourishes and softens&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wheat germ oil:&lt;/b&gt; an antioxidant, anti-inflammatory, healing agent; encourages blood circulation; protects and moisturizes; rich in polyunsaturated fatty acids (omegas 3, 6 and 9; anti-wrinkle properties&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil:&lt;/b&gt; stimulates blood circulation; anti-rheumatic, analgesic, anti-infectious and healing agent&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating, and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Avocado oil: &lt;/b&gt;with an abundance of omegas 6 and 9, proteins, minerals, and vitamins (A, B, C, D, E, H, K and PP); moisturizing, anti-wrinkle and revitalizing&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Manganese gluconate:&lt;/b&gt; trace mineral involved in vitamin B1 synthesis; protects skin; acts against free radicals; soothes and calms skin&lt;/div&gt;', '', 'Element (Night)  Crème -WOOD', '', ''),
(141, 1, 'Element (Night)  Crème-FIRE', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Corn seed oil: &lt;/b&gt;rich in vitamins A, D, E and K; nourishing, protecting, mineralizing; rich in essential unsaturated fatty acids, containing about 60% omega 6; energizing and a potent antioxidant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Corn extract:&lt;/b&gt; soothes inflammation, itching; nourishes, softens and revitalizes; excellent emollient and skin tonic&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil:&lt;/b&gt; quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet marjoram essential oil: &lt;/b&gt;antiseptic, anti-irritant and relaxant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cobalt gluconate:&lt;/b&gt; trace mineral and antioxidant found in vitamin B12 and necessary for hemoglobin&lt;/div&gt;', '', 'Element (Night)  Crème-FIRE', '', ''),
(142, 1, 'Element (Night)  Crème-EARTH', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Millet extract: &lt;/b&gt;soothes, nourishes, stimulates and revitalizes skin; also an emollient&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Zinc gluconate:&lt;/b&gt; trace mineral and antioxidant; stimulates synthesis of collagen and elastin; very beneficial for the alleviation of acne&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera extract:&lt;/b&gt; acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Verbena essential oil:&lt;/b&gt; herbaceous anti-inflammatory, sedative and relaxant; soothes wounded skin&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract:&lt;/b&gt; a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;b&gt;Vitamin B2: &lt;/b&gt;Also known as riboflavin, this B-complex vitamin stimulates and revitalizes the growth of skin cells..', '', 'Element (Night)  Crème-EARTH', '', ''),
(143, 1, 'Element (Night) Crème -METAL', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rice bran oil:&lt;/b&gt; very moisturizing; potent antioxidant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rice extract: &lt;/b&gt;a very effective moisturizer; antioxidant; astringent; anti-inflammatory; skin softener; skin tonic&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;an excellent natural preservative; anti-infectious and antioxidant Glycerin: of vegetal origin, soothes and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Magnesium gluconate:&lt;/b&gt; trace mineral that relaxes muscles; acts on cellular renewal and&amp;nbsp; production of energy within cells by contributing to glucose transport; very beneficial for tired and overworked people&lt;/div&gt;', '', 'Element (Night) Crème -METAL', '', ''),
(144, 1, 'Element (Night) Crème -WATER', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Gingko extract:&lt;/b&gt; strengthens skin; revitalizing as it stimulates both collagen and the synthesis of the neurotransmitter dopamine in the skin; anti-inflammatory; moisturizing; antioxidant; tonic; supports blood circulation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Buckwheat extract:&amp;nbsp;&lt;/b&gt; rich in vitamins, minerals and proteins; mineralizing, astringent and antioxidant; supports blood circulation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Avocado oil:&lt;/b&gt; with an abundance of omegas 6 and 9, proteins, minerals and vitamins (A, B, C, D, E, H, K and PP); moisturizing, anti-wrinkle and revitalizing&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil: &lt;/b&gt;supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Juniper berry essential oil: &lt;/b&gt;anti-inflammatory; calming; anti-irritating; lipolitic; acts against water retention&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sage essential oil:&lt;/b&gt; lipolitic; antiseptic; healing; balances blood circulation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;potent anti-infectious; antioxidant; invigorating&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin C:&lt;/b&gt; a potent antioxidant necessary for collagen and blood synthesis; excellent anti-aging&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Copper gluconate:&lt;/b&gt; trace mineral, anti-inflammatory and antioxidant; anti-aging action in the skin by stimulating synthesis of keratin, collagen, and elastin proteins&lt;/div&gt;', '', 'Element (Night) Crème -WATER', '', ''),
(160, 1, 'La crème soleil-formerly Extreme Yang OE Crème ', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil:&lt;/b&gt; quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Peppermint essential oil: &lt;/b&gt;a cooling and relaxing decongestant; recommended on “heavy legs&quot;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil:&lt;/b&gt; calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera gel: &lt;/b&gt;acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Shea butter: &lt;/b&gt;a from the nut of the West African shea tree; very moisturizing; healing; anti-inflammatory; softening and smoothing to skin and hair; stimulates collagen synthesis; recommended for the prevention of wrinkles and aging of the skin while protecting it from harsh weather conditions&lt;/div&gt;', '', 'La crème soleil-formerly Extreme Yang OE Crème ', '', ''),
(123, 1, 'Skin Toner - Wood', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata): &lt;/b&gt;rich in trace minerals, proteins, vitamins, and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil:&lt;/b&gt; supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil: &lt;/b&gt;venous and lymphatic circulation support; recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil:&lt;/b&gt; quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sylvester pine essential oil: &lt;/b&gt;stimulates energy; anti-inflammatory, decongestant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious, antioxidant agent&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sage essential oil:&lt;/b&gt; healing lipolitic and antiseptic; helps balance blood circulation&lt;/div&gt;', '', 'Skin Toner - Wood', '', ''),
(150, 1, 'Green Clay Mask–Wood ', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Kaolin clay: &lt;/b&gt;natural white clay; soothing and astringent; protects and cleanses; absorbs toxins and oil on skin’s surface; very rich in minerals: silicium, magnesium, calcium, zinc and copper&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin C:&lt;/b&gt; potent antioxidant necessary for collagen and blood synthesis; excellent anti-aging&lt;/div&gt;&lt;div&gt;Rosemary essential oil: stimulates blood circulation, anti-rheumatic, analgesic, anti-infectious and healing agent&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;', '', 'Green Clay Mask–Wood ', '', ''),
(151, 1, 'Red Clay Mask–Fire ', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Kaolin clay:&lt;/b&gt; natural white clay; soothing and astringent; protects and cleanses; absorbs toxins and oil on skin’s surface; very rich in minerals: silicium, magnesium, calcium, zinc and copper&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin C: &lt;/b&gt;a potent antioxidant necessary for collagen and blood synthesis; excellent anti-aging&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil: &lt;/b&gt;supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil:&lt;/b&gt; calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin:&lt;/b&gt; of vegetal origin, soothes and moisturizes skin and serves as an effective skin lubricant&lt;br&gt;&lt;/div&gt;', '', 'Red Clay Mask–Fire ', '', ''),
(152, 1, 'Yellow Clay Mask–Earth ', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Kaolin clay:&lt;/b&gt; natural white clay; soothing and astringent; protects and cleanses; absorbs toxins and oil on skin’s surface; very rich in minerals: silicium, magnesium, calcium, zinc and copper&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin C:&lt;/b&gt; a potent antioxidant necessary for collagen and blood synthesis; excellent anti-aging&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil: &lt;/b&gt;the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil: &lt;/b&gt;very soothing to the skin; often used in the treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin: &lt;/b&gt;of vegetal origin, smoothes and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;', '', 'Yellow Clay Mask–Earth ', '', ''),
(122, 1, 'Le Phyt\'acid -Phyt\'Acid Cleansing Face and Body Gel', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Petitgrain essential oil: &lt;/b&gt;extracted from the leaves and twigs of the bitter orange tree; often used to treat acne and blemishes; antibacterial; clarifying and toning to skin; neutralizes overactive sebaceous glands causing oily and combination skin; also used to reduce stress and anxiety&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;potent anti-infectious; antioxidant; invigorating&lt;/div&gt;&lt;div&gt;&lt;b&gt;Salicylic acid:&lt;/b&gt; analgesic; anti-inflammatory action; bactericide; exfoliating as it gently dissolves dead skin cells to improve skin’s beauty and softness of skin; recommended for acne treatment&lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin:&lt;/b&gt; of vegetal origin, smooth and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;PRODUCT TIPS&lt;/b&gt;&lt;/div&gt;&lt;div&gt;• only a very small amount needed for each use; concentrated cleanser&lt;/div&gt;&lt;div&gt;• foams when emulsified with water&lt;/div&gt;&lt;div&gt;• with salicylic acid for acne and oily skin&lt;/div&gt;&lt;div&gt;• perfect for male skin&lt;/div&gt;&lt;div&gt;• add a bit of Le gommage marin (Marine Face Peel) for an even stronger cleanse&lt;/div&gt;&lt;div&gt;• keep in the shower and by every sink&lt;/div&gt;', '', 'Le Phyt\'acid -Phyt\'Acid Cleansing Face and Body Gel', '', ''),
(153, 1, 'White Clay Mask–Metal', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Kaolin clay: &lt;/b&gt;natural white clay; soothing and astringent; protects and cleanses; absorbs toxins and oil on skin’s surface; very rich in minerals: silicium, magnesium, calcium, zinc and copper&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin C: &lt;/b&gt;a potent antioxidant necessary for collagen and blood synthesis; excellent anti-aging&lt;/div&gt;&lt;div&gt;&lt;b&gt;Niaouli essential oil: &lt;/b&gt;a skin tonic that easily penetrates the epidermis and stimulates venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; antibacterial; anti-inflammatory&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; soothing; relaxing; purifying&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil: &lt;/b&gt;anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;potent anti-infectious, antioxidant agent&lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin: &lt;/b&gt;of vegetal origin, smoothes and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;', '', 'White Clay Mask–Metal', '', ''),
(154, 1, 'Black Clay Mask–Water', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Marine sediments:&lt;/b&gt; composed of extremely thin naturally micronized particles that have settled on sea beds over centuries of time; interstitial water contained in these sediments is very rich in minerals and marine ions; very cleansing for skin and hair; detoxifying; anti-aging; decongestant; astringent; contouring&lt;/div&gt;&lt;div&gt;&lt;b&gt;Kaolin clay:&lt;/b&gt; natural white clay; soothing and astringent; protects and cleanses; absorbs toxins and oil on skin’s surface; very rich in minerals: silicium, magnesium, calcium, zinc and copper&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin C: &lt;/b&gt;a potent antioxidant necessary for collagen and blood synthesis; excellent anti-aging&lt;/div&gt;&lt;div&gt;&lt;b&gt;Horsetail extract:&lt;/b&gt; contains silicium, an anti-age ingredient that increases the synthesis of collagen and skin elasticity; highly recommended for wrinkles, stretch marks and scars; very mineralizing and astringent, tonifying and anti-acne&lt;/div&gt;&lt;div&gt;&lt;b&gt;Juniper berry essential oil:&lt;/b&gt; anti-inflammatory; calming; anti-irritating; lipolitic; acts against water retention&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; soothing; relaxing; purifying; refreshing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious; antioxidant; invigorating&lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin:&lt;/b&gt; of vegetal origin, smoothes and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;', '', 'Black Clay Mask–Water', '', ''),
(155, 1, 'L\'algoderme -Algoderm Mask', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata): &lt;/b&gt;rich in trace minerals, proteins, vitamins and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Bigarade essential oil:&lt;/b&gt; also known as Chinese bitter orange; recommended for acne treatment; antiseptic; soothing; relaxing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wheat germ oil: &lt;/b&gt;an antioxidant, anti-inflammatory, healing agent; encourages blood circulation; protects and moisturizes; rich in polyunsaturated fatty acids (omegas 3, 6 and 9; anti-wrinkle properties &lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary extract: &lt;/b&gt;a preservative and anti-age antioxidant (free radical scavenger)&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid &lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin: &lt;/b&gt;of vegetal origin, smooth and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;', '', 'L\'algoderme -Algoderm Mask', '', ''),
(156, 1, 'Le masque gel visage -Face and Scalp Gel Mask', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Edelweiss essential oil:&lt;/b&gt; clinically proven to reduce brown spots and decrease melanin; attenuates dark spots; anti-aging; regenerating; encourages skin’s elasticity; antioxidant; protective Aloe vera extract: acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Calendula extract:&lt;/b&gt; soothing; moisturizing; healing properties; anti-inflammatory; antioxidant; antiseptic&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aquaxyl:&lt;/b&gt; a high tech compound composed of three natural sugars found in fruits, vegetables and plant-life; gluten-free; promotes effective circulation of moisture throughout all skin layers; boosts hyaluronic acid levels which act as a cushion and lubricant in tissues; reinforces the skin barrier within 24 hours by limiting water loss and increasing water reserves; provides results of softer smoother skin in 21 days with normal desquamation and smoothing of fine lines; protects the skin against environmental stressors&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;quickens healing; soothing; creates sensation of well-being and relaxation Ylang ylang essential oil: calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'Le masque gel visage -Face and Scalp Gel Mask', '', ''),
(157, 1, 'Ageless Clay Mask (Pink/Soothing)', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Kaolin clay: &lt;/b&gt;natural white clay; soothing and astringent; protects and cleanses; absorbs toxins and oil on skin’s surface; very rich in minerals: silicium, magnesium, calcium, zinc and copper&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rose essential oil:&lt;/b&gt; from the prized damask rose, soothes irritation and redness; tones and regenerates skin &lt;/div&gt;&lt;div&gt;&lt;b&gt;Organic sweet almond oil: &lt;/b&gt;rich in essential unsaturated fatty acids ( about 70% Omega 9) and in vitamins; nourishing, soothing, protective and hydrating for skin; anti-inflammatory; skin and hair tonic and softener; recommended for dry dandruff&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera extract:&lt;/b&gt; acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious &lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin: &lt;/b&gt;of vegetal origin, smooths and moisturizes skin and serves as an effective skin lubricant &lt;/div&gt;&lt;div&gt;&lt;b&gt;Calendula extract: &lt;/b&gt;soothing; moisturizing; healing properties; anti-inflammatory; antioxidant; antiseptic&lt;/div&gt;', '', 'Ageless Clay Mask (Pink/Soothing)', '', ''),
(127, 1, 'Skin Toner- WATER', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata):&lt;/b&gt; rich in trace minerals, proteins, vitamins and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil: &lt;/b&gt;anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Juniper berry essential oil: &lt;/b&gt;anti-inflammatory; calming; anti-irritating; lipolitic; acts against water retention&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet orange essential oil: &lt;/b&gt;toning; calming; mood enhancing, anti-anxiety; anti-irritating; antibacterial; anti-inflammatory; immune-boosting; improves complexion; lessens wrinkles; increases circulation; reduces muscle, bone and joint pain&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Peppermint essential oil:&lt;/b&gt; a cooling and relaxing decongestant; recommended on “heavy legs&quot;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil: &lt;/b&gt;supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sage essential oil: &lt;/b&gt;healing lipolitic and antiseptic; helps balance blood circulation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious; antioxidant; invigorating&lt;/div&gt;', '', 'Skin Toner- WATER', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(158, 1, 'La crème contour des yeux    Eye Cream–All Skin Conditions', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Tormentil extract: &lt;/b&gt;from the rose family, often used as an herbal remedy; healing, astringent and stimulating&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Horsetail extract: &lt;/b&gt;contains silicium, an anti-age ingredient that increases the synthesis of collagen and skin elasticity; highly recommended for wrinkles, stretch marks and scars; very mineralizing and astringent, tonifying and anti-acne&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Special Extract N°5: &lt;/b&gt;a blend of birch leaf, nettle, sage and milfoil; astringent; anti-inflammatory; encourages circulation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Jojoba oil: &lt;/b&gt;moisturizing with a non-greasy touch; because of its unsaponifiable components (precious components found in some oils with softening, revitalizing and moisturizing properties), it spreads easily; easily penetrates epidermis leaving no film, mainly because its characteristics are very close to those of the skin’s natural sebum; antioxidant/anti-age; revitalizes and nourishes skin and hair&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Shea butter:&lt;/b&gt; produced from the shea nut tree of West Africa, very moisturizing and healing; anti-inflammatory; softens and smoothes skin and hair, stimulates collagen synthesis; recommended for the prevention of wrinkles and aging of the skin; protects skin from harsh weather conditions&lt;/div&gt;', '', 'La crème contour des yeux    Eye Cream–All Skin Conditions', '', ''),
(159, 1, 'Ageless Eye Serum-Firming', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Beech tree bud extract: &lt;/b&gt;a powerful extract formulated from naturally fallen beech tree buds which occur at a precise point in the more than 200 year old life of the tree; anti-aging, anti-wrinkle, moisturizing, revitalizing, firming, protecting&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Easyliance:&lt;/b&gt; a high-tech, naturally derived and synergistically optimized blend of acacia gum and rhizobian gum; offers fast visible results of plumping and filling wrinkles from within including crow\'s feet, cheeks and mouth contour especially where skin is thinner and more sensitive; naturally tightens on contact; smooths skin for a younger looking appearance&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rose essential oil: &lt;/b&gt;from the prized damask rose, soothes irritation and redness; tones and regenerates skin&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rose flower water:&lt;/b&gt; astringent and refreshing; tones skin; reduces redness; calms allergic reactions; from the prized damask rose&amp;nbsp;&lt;/div&gt;&lt;div&gt;Apricot kernel essential oil: contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Witch hazel flower water:&lt;/b&gt; astringent and soothing; anti-inflammatory; naturally antioxidant-rich; opposes blood vessel constriction; numerous flavonoids help to protect capillaries and increase resistance to skin eruptions; exceptional for the fragile area around the eyes (dark circles and bags) and for sensitive skin that is especially vulnerable to rashes, eczema, couperose and rosacea; works to refine and tone skin, close pores, and prevent lines and wrinkles&lt;/div&gt;', '', 'Ageless Eye Serum-Firming', '', ''),
(163, 1, 'L\'oligo5 -Oligo 5 Mineral Spray', '&lt;div&gt;&lt;b&gt;TIP:&lt;/b&gt; Put a small amount of cream in the palm of your hand and pump one or two sprays of Oligo 5 Spray over it. Mix with your finger and apply on the face and neck. It applies even more easily and covers a larger surface. You will use less cream and further improve the cream with the added minerals.&lt;/div&gt;&lt;div&gt;&lt;b&gt;TIP #2: &lt;/b&gt;In addition to enhancing your moisturizing cream, Oligo 5 mineral spray also delivers essential minerals necessary for hair growth when you apply it to the scalp.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Unique Ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Manganese :&lt;/b&gt; assists with vitamin B synthesis and protects the skin against free radicals. It has soothing and calming properties.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cobalt:&lt;/b&gt; is a potent antioxidant and supports hemoglobin.&lt;/div&gt;&lt;div&gt;&lt;b&gt;Zinc: &lt;/b&gt;stimulates synthesis of collagen and elastin so necessary for youthful skin.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cobalt:&lt;/b&gt; is an excellent anti-inflammatory and skin revitalizer.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Magnesium:&lt;/b&gt; acts on cell renewal and energy production within cells. It also helps to bind calcium which improves skin hydration.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Copper:&lt;/b&gt; is an anti-inflammatory and antioxidant with anti-aging properties because it stimulates production of keratin, collagen and elastin which make skin look toned and youthful.&lt;/div&gt;', '', 'L\'oligo5 -Oligo 5 Mineral Spray', '', ''),
(176, 1, 'L\'alguessence bain Algae-Essence Bath, Balancing and Relaxing', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata):&lt;/b&gt; rich in trace minerals, proteins, vitamins and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Plankton blue green algae extract (Spirulina platensis):&lt;/b&gt; rich in vitamins, proteins and minerals; stimulating, anti-inflammatory and very moisturizing; antioxidant; encourages blood circulation; mineralizes, revitalizes, strengthens skin; also a potent anti-aging ingredient&amp;nbsp;&lt;/div&gt;&lt;div&gt;Lemon essential oil: anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;quickens healing; soothing; creates sensation of well-being and relaxation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet marjoram essential oil:&lt;/b&gt; antiseptic, anti-irritant and relaxant Thyme essential oil: potent anti-infectious; antioxidant; invigorating &lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;', '', 'L\'alguessence bain Algae-Essence Bath, Balancing and Relaxing', '', ''),
(164, 1, 'The Five Secrets Serum and Five Secrets Cream Duo for a 3-Week Cure', '&lt;div&gt;&lt;b&gt;Unique ingredients – Serum :&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Commiphora mukul extract: &lt;/b&gt;well known in Ayurvedic medicine; extracted from a root similar to that of the myrrh tree; helps fill in wrinkles by increasing lipid synthesis; acts as a wrinkle-filling and plumping agent while it tones and offers a profound lifting action&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rose essential oil:&lt;/b&gt; from the prized damask rose, soothes irritation and redness; tones and regenerates skin&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Apricot kernel essential oil: &lt;/b&gt;contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Manganese gluconate:&lt;/b&gt; trace mineral involved in synthesis of vitamin B1; acts against free radicals; soothes, calms, protects&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Tara and acacia gums:&lt;/b&gt; food grade; natural gelling agent with good film-forming properties; provides a very velvety and non-greasy texture&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Unique ingredients – Cream:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Easyliance: &lt;/b&gt;a high-tech, naturally derived and synergistically optimized blend of acacia gum and rhizobian gum; offers fast visible results of plumping and filling wrinkles from within including crow\'s feet, cheeks and mouth contour especially where skin is thinner and more sensitive; naturally tightens on contact; smoothes skin for a younger looking appearance&lt;/div&gt;', '', 'The Five Secrets Serum and Five Secrets Cream Duo for a 3-Week Cure', '', ''),
(165, 1, 'Yogi Body Gel–Wood Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Chili pepper ferment extract:&lt;/b&gt; a stimulating agent with the active ingredient found in peppers, capsaicin; antioxidant, anti-inflammatory and anticancer effects in lab studies&lt;/div&gt;&lt;div&gt;&lt;b&gt;Absynthe extract: &lt;/b&gt;balances the organs of the Wood element–liver and gall bladder; used as a \'bitter,\' an effective herbal medicine for treating loss of appetite, dyspeptic disorders, and liver and gall bladder complaints&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil:&lt;/b&gt; stimulates blood circulation, anti-rheumatic, analgesic, anti-infectious and healing agent; revitalizing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lime essential oil:&lt;/b&gt; stimulating and refreshing; rich in antioxidants; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera extract:&lt;/b&gt; the resin from this succulent plant acts directly on the collagen fibers, fostering and revitalizing the skin’s elasticity; contains complex polysaccharides that encourage water retention; excellent moisturizing properties; soothes pain; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;b&gt;Apricot kernel essential oil: &lt;/b&gt;contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&lt;/div&gt;', '', 'Yogi Body Gel–Wood Element', '', ''),
(166, 1, 'Yogi Body Gel–Fire Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt; Black currant extract:&lt;/b&gt; eases inflammation; helps reduce joint and muscle pain and stiffness; read more about black currants here.&lt;/div&gt;&lt;div&gt;&lt;b&gt;Balloon vine extract:&lt;/b&gt; rich in antioxidants; anti-inflammatory; anti-arthritic; medical studies confirm this extract is effective in treating eczema; known for its ability to treat joint pain effectively&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil: &lt;/b&gt;supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;regenerates and quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil:&lt;/b&gt; calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera extract: &lt;/b&gt;acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;b&gt;Apricot kernel essential oil: &lt;/b&gt;contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&lt;/div&gt;', '', 'Yogi Body Gel–Fire Element', '', ''),
(167, 1, 'Yogi Body Gel–Earth Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Green tea extract:&lt;/b&gt; rich in antioxidants, especially the catechin polyphenol antioxidants; improves skin, brain, liver and heart function &lt;b&gt;Pomegranate essential oil: &lt;/b&gt;reinvigorating to the skin and improving skin texture; rich in antioxidants; anti-inflammatory; excellent for all skin types&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet orange essential oil:&lt;/b&gt; toning; calming; mood enhancing, anti-anxiety; anti-irritating; antibacterial; anti-inflammatory; immune-boosting; improves complexion; lessens wrinkles; increases circulation; reduces muscle, bone and joint pain &lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil: &lt;/b&gt;anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aloe vera extract&lt;/b&gt;: acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Apricot kernel essential oil: &lt;/b&gt;contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&lt;/div&gt;', '', 'Yogi Body Gel–Earth Element', '', ''),
(186, 1, 'Complete Children\'s Chewable', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Fructose, dextrose, natural flavors blend (black currant, grape, cherry juice, other natural flavor), citric acid, microcrystalline cellulose, stearic acid, magnesium stearate, silica, ExBerry® cherry red (color), steviol glycosides, peppermint (Mentha piperita) leaf powder. No known allergens. Gluten Free.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Flavor: &lt;/b&gt;Cherry&lt;br&gt;&lt;/p&gt;', '', 'Complete Children\'s Chewable', '', ''),
(168, 1, 'Yogi Body Gel–Metal Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Horse chestnut derivative extract: &lt;/b&gt;for chronic venous insufficiency; anti-inflammatory; supports venous tone and blood coagulability&lt;/div&gt;&lt;div&gt;Zinc, magnesium, iron, copper, silica: supportive of hydration; very important for healthy skin, hair and nails&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious; antioxidant; invigorating&lt;/div&gt;&lt;div&gt;&lt;b&gt;Niaouli essential oil: &lt;/b&gt;a skin tonic that easily penetrates the epidermis and stimulates venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; antibacterial; anti-inflammatory&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; soothing; relaxing; purifying; refreshing Aloe vera extract: acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious &lt;b&gt;Apricot kernel essential oil: &lt;/b&gt;contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&lt;/div&gt;', '', 'Yogi Body Gel–Metal Element', '', ''),
(169, 1, 'Yogi Body Gel–Water Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Horsetail extract:&lt;/b&gt; contains silicium, an anti-age ingredient that increases the synthesis of collagen and skin elasticity; highly recommended for wrinkles, stretch marks and scars; very mineralizing and astringent, tonifying and anti-acne Hydroxyproline (an amino acid): an important component of collage; helps manufacture tendons, ligaments and heart muscle; assists in the healing of cartilage and provides cushion for joints&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wheat germ oil: &lt;/b&gt;an antioxidant, anti-inflammatory, healing agent; encourages blood circulation; protects and moisturizes; rich in polyunsaturated fatty acids (omegas 3, 6 and 9; anti-wrinkle properties&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; soothing; relaxing; purifying; refreshing&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Juniper berry essential oil: &lt;/b&gt;anti-inflammatory; calming; anti-irritating; lipolitic; astringent; acts against water retention Aloe vera extract: acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Apricot kernel essential oil: &lt;/b&gt;contains approximately 90% polyunsaturated fatty acids (omegas 6 and 9); very rich in vitamins A and E; nourishing, hydrating; anti-wrinkle; naturally softens and revitalizes skin; particularly recommended for mature, dry or sensitive skin and skin lacking tone&lt;/div&gt;', '', 'Yogi Body Gel–Water Element', '', ''),
(184, 1, 'ActivJoint', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Stearic acid, croscarmellose sodium, microcrystalline cellulose, calcium stearate, hypromellose, silica, CarboWax™. No known allergens. Gluten free.&lt;/p&gt;', '', 'ActivJoint', '', ''),
(170, 1, 'L\'émulsion corporelle -Body Lotion', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil:&lt;/b&gt; calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stases; anti-infectious Lavender essential oil: regenerates and quickens healing; soothing; creates sensation of well-being and relaxation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious; antioxidant; invigorating&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet marjoram essential oil:&lt;/b&gt; antiseptic, anti-irritant and relaxant&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Jojoba oil: &lt;/b&gt;moisturizing with a non-greasy touch; because of its unsaponifiable components (precious components found in some oils with softening, revitalizing and moisturizing properties), it spreads easily; easily penetrates epidermis leaving no film, mainly because its characteristics are very close to those of the skin’s natural sebum; antioxidant/anti-age; revitalizes and nourishes skin and hair&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Wheat germ oil: &lt;/b&gt;an antioxidant, anti-inflammatory, healing agent; encourages blood circulation; protects and moisturizes; rich in polyunsaturated fatty acids (omegas 3, 6 and 9; anti-wrinkle properties&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Corn seed oil:&lt;/b&gt; rich in vitamins A, D, E and K; nourishing, protecting, mineralizing; rich in essential unsaturated fatty acids, containing about 60% omega 6; energizing and a potent antioxidant Vitamin E: the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;', '', 'L\'émulsion corporelle -Body Lotion', '', ''),
(171, 1, 'Le lait corporel -Hydrating Body Milk', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Tamanu leaf oil: &lt;/b&gt;also known as beauty leaf oil, especially effective in treating and soothing acne, stretch marks, dry skin and the effects of extremely drying conditions such as sun damage, rosacea and rashes including eczema Aloe vera extract: acts directly on collagen fibers, fostering and revitalizing skin’s elasticity; contains complex polysaccharides that encourage water retention and excellent moisturizing; soothes pain; anti-infectious&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E: &lt;/b&gt;the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Squalene:&lt;/b&gt; a 100% saturated and extremely stable oil, natural and organic; derived from olive; one of the most effective oils for combatting aging of the skin; antioxidants rich; moisture locking; revitalizing by promoting healthy cell growth; softening and smoothing; helps prevent formation of age spots&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aquaxyl:&lt;/b&gt; a high tech compound composed of three natural sugars found in fruits, vegetables and plant-life; gluten-free; promotes effective circulation of moisture throughout all skin layers; boosts hyaluronic acid levels which act as a cushion and lubricant in tissues; reinforces the skin barrier within 24 hours by limiting water loss and increasing water reserves; provides results of softer smoother skin in 21 days with normal desquamation and smoothing of fine lines; protects the skin against environmental stressors&lt;/div&gt;', '', 'Le lait corporel -Hydrating Body Milk', '', ''),
(173, 1, 'Le Phyt\'acid -Phyt\'Acid Cleansing Face and Body Gel', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Petitgrain essential oil:&lt;/b&gt; extracted from the leaves and twigs of the bitter orange tree; often used to treat acne and blemishes; antibacterial; clarifying and toning to skin; neutralizes overactive sebaceous glands causing oily and combination skin; also used to reduce stress and anxiety&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious; antioxidant; invigorating&lt;/div&gt;&lt;div&gt;&lt;b&gt;Salicylic acid:&lt;/b&gt; analgesic; anti-inflammatory action; bactericide; exfoliating as it gently dissolves dead skin cells to improve skin’s beauty and softness of skin; recommended for acne treatment&lt;/div&gt;&lt;div&gt;&lt;b&gt;Glycerin:&lt;/b&gt; of vegetal origin, smooth and moisturizes skin and serves as an effective skin lubricant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;PRODUCT TIPS&lt;/b&gt;&lt;/div&gt;&lt;div&gt;• only a very small amount needed for each use; concentrated cleanser&lt;/div&gt;&lt;div&gt;• foams when emulsified with water&lt;/div&gt;&lt;div&gt;• with salicylic acid for acne and oily skin&lt;/div&gt;&lt;div&gt;• perfect for male skin&lt;/div&gt;&lt;div&gt;• add a bit of Le gommage marin (Marine Face Peel) for an even stronger cleanse&lt;/div&gt;&lt;div&gt;• keep in the shower and by every sink&lt;/div&gt;', '', 'Le Phyt\'acid -Phyt\'Acid Cleansing Face and Body Gel', '', ''),
(175, 1, 'Le sérum silhouette -Contouring Serum', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Green tea extract:&lt;/b&gt; rich in antioxidants, especially the catechin polyphenol antioxidants which protect the DNA of the skin cells; improves skin, brain, liver and heart function&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata):&lt;/b&gt; rich in trace minerals, proteins, vitamins and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cinnamon essential oil:&lt;/b&gt; anti-inflammatory; helps regulate blood sugar; works to keep skin wrinkle free; assists in fat burning; energizing and toning&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;potent anti-infectious; antioxidant; invigorating&amp;nbsp;&lt;/div&gt;&lt;div&gt;Peppermint essential oil: a cooling and relaxing decongestant; recommended on “heavy legs;” helps burn fat; encourages lymph and blood circulation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Niaouli essential oil:&lt;/b&gt; a skin tonic that easily penetrates the epidermis and stimulates venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; antibacterial; anti-inflammatory&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil:&lt;/b&gt; supports blood and lymph circulation; anti-rheumatic, analgesic, anti-infectious, healing&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil: &lt;/b&gt;anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite; firming and toning; relaxes nervous energy&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; very soothing to the skin; often used in the treatment of cellulite; firming and toning to skin&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil:&lt;/b&gt; quickens healing; soothing; creates sensation of well-being and relaxation; excellent for firming, toning, and helping to reduce cellulite; recommended in cases of infection, allergic dermatitis, burns, wounds or acne&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', '', 'Le sérum silhouette -Contouring Serum', '', ''),
(172, 1, 'La crème mains -Extreme Hydrating Hand Cream', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Aquaxyl:&lt;/b&gt; a high tech compound composed of three natural sugars found in fruits, vegetables and plant-life; gluten-free; promotes effective circulation of moisture throughout all skin layers; boosts hyaluronic acid levels which act as a cushion and lubricant in tissues; reinforces the skin barrier within 24 hours by limiting water loss and increasing water reserves; provides results of softer smoother skin in 21 days with normal desquamation and smoothing of fine lines; protects the skin against environmental stressors&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Pro-vitamin B5 (Panthenol): &lt;/b&gt;an essential ingredient for healing wounded or dry skin; regenerates skin cells; stimulates healing process; recommended for itching skin and eczema&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Squalane:&lt;/b&gt; a 100% saturated and extremely stable oil, natural and organic; derived from olive; one of the most effective oils for combatting aging of the skin; antioxidants rich; moisture locking; revitalizing by promoting healthy cell growth; softening and smoothing; helps prevent formation of age spots&amp;nbsp;&lt;/div&gt;&lt;div&gt;Lavender essential oil: quickens healing; soothing; creates sensation of well-being and relaxation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil: &lt;/b&gt;venous and lymphatic circulation support; recommended for varicose veins, heavy legs or venous stasis; anti-infectious&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Juniper berry essential oil:&lt;/b&gt; anti-inflammatory; calming; anti-irritating; lipolitic; astringent; acts against water retention&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sage essential oil: &lt;/b&gt;lipolitic; antiseptic; healing; balances blood circulation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil:&lt;/b&gt; supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sylvester pine essential oil:&lt;/b&gt; stimulates energy; anti-inflammatory, decongestant Thyme essential oil: potent anti-infectious; antioxidant; invigorating&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;', '', 'La crème mains -Extreme Hydrating Hand Cream', '', ''),
(174, 1, 'Le gommage zen -Zen Body Exfoliation', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Jojoba oil:&lt;/b&gt; moisturizing with a non-greasy touch; because of its unsaponifiable components (precious components found in some oils with softening, revitalizing and moisturizing properties), it spreads easily; easily penetrates epidermis leaving no film, mainly because its characteristics are very close to those of the skin’s natural sebum; antioxidant/anti-age; revitalizes and nourishes skin and hair&amp;nbsp; &amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Bamboo powder:&lt;/b&gt; for natural and gentle exfoliation; rich in minerals and silica; beneficial for skin luster and vitality Lotus seed powder: a natural exfoliant; scientifically proven astringent and toning agent; from the ancient lotus flower&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Shea butter: &lt;/b&gt;a from the nut of the West African shea tree; very moisturizing; healing; anti-inflammatory; softening and smoothing to skin and hair; stimulates collagen synthesis; recommended for the prevention of wrinkles and aging of the skin while protecting it from harsh weather conditions&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet orange essential oil: &lt;/b&gt;toning; calming; mood enhancing, anti-anxiety; anti-irritating; antibacterial; anti-inflammatory; immune-boosting; improves complexion; lessens wrinkles; increases circulation; reduces muscle, bone and joint pain Limonene: a scent ingredient and solvent naturally occurring in the rind of citrus fruit; antioxidant; calming to the skin&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Guaiacwood essential oil: &lt;/b&gt;a natural fragrance ingredient; potent antioxidant; powerful anti-inflammatory&amp;nbsp;&lt;/div&gt;&lt;div&gt;Sunflower seed oil: high grade organic; very rich in essential unsaturated fatty acids (more than 85%) and vitamins (E and F; well-known for its nourishing, soothing and revitalizing properties; penetrates easily since with composition very similar to skin’s natural sebum&lt;/div&gt;', '', 'Le gommage zen -Zen Body Exfoliation', '', ''),
(178, 1, 'Algae Shampoo–Wood Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (kombu):&lt;/b&gt; from the coast of Brittany, France, rich in trace minerals, proteins, vitamins and omega 3; very mineralizing, moisturizing, toning and revitalizing; firms skin; recommended to prevent wrinkles and fine lines; normalizes secretion of sebaceous glands; strengthens skin and hair; possesses characteristics similar to hair enabling it to provide hydration and mineralization for healthy and brilliant hair&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil: &lt;/b&gt;stimulates blood circulation, anti-rheumatic, analgesic, anti-infectious and healing agent&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil: &lt;/b&gt;the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;', '', 'Algae Shampoo–Wood Element', '', ''),
(181, 1, 'Sweet Almond Oil Shampoo–Metal Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Organic sweet almond oil:&lt;/b&gt; rich in essential unsaturated fatty acids ( about 70% Omega 9) and in vitamins; nourishing, soothing, protective and hydrating for skin; anti-inflammatory; skin and hair tonic and softener; recommended for dry dandruff&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin C: &lt;/b&gt;a potent antioxidant necessary for collagen and blood synthesis; excellent anti-aging&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Vitamin E:&lt;/b&gt; the main antioxidant of the organism; protects cells against free radicals; prevents oils from going rancid&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil:&lt;/b&gt; quickens healing; soothing; creates sensation of well-being and relaxation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil:&lt;/b&gt; calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious, antioxidant agent&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet marjoram essential oil: &lt;/b&gt;antiseptic, anti-irritant and relaxant&lt;/div&gt;', '', 'Sweet Almond Oil Shampoo–Metal Element', '', ''),
(182, 1, 'Horsetail–Buckwheat Gel Shampoo–Water Element', '&lt;div&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Horsetail extract: &lt;/b&gt;contains silicium, an anti-age ingredient that increases the synthesis of collagen and skin elasticity; highly recommended for wrinkles, stretch marks and scars; very mineralizing and astringent, tonifying and anti-acne&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Buckwheat extract: &lt;/b&gt;rich in vitamins, minerals and proteins; mineralizing, astringent and antioxidant; supports blood circulation&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; soothing; relaxing; purifying; refreshing&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Juniper berry essential oil: &lt;/b&gt;anti-inflammatory; calming; anti-irritating; lipolitic; acts against water retention&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cider vinegar:&lt;/b&gt; regulates acidity; neutralizes harmful effects of limestone; antioxidant; makes hair look bright and offers astringency&lt;/div&gt;', '', 'Horsetail–Buckwheat Gel Shampoo–Water Element', '', ''),
(125, 1, 'Skin Toner-EARTH', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata): &lt;/b&gt;rich in trace minerals, proteins, vitamins and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil: &lt;/b&gt;anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Eucalyptus essential oil:&lt;/b&gt; very soothing to the skin; often used in the treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;regenerates and quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Peppermint essential oil: &lt;/b&gt;a cooling and relaxing decongestant; recommended on “heavy legs&quot;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Niaouli essential oil:&lt;/b&gt; a skin tonic that easily penetrates the epidermis and stimulates venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; antibacterial; anti-inflammatory&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil: &lt;/b&gt;supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil:&lt;/b&gt; potent anti-infectious, antioxidant agent&lt;/div&gt;', '', 'Skin Toner-EARTH', '', ''),
(124, 1, 'Skin Toner-FIRE', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata):&lt;/b&gt; rich in trace minerals, proteins, vitamins and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lemon essential oil:&lt;/b&gt; anti-inflammatory, anti-irritating and astringent; relaxes nervous energy; attenuates wrinkles; used in treatment of cellulite&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil: &lt;/b&gt;the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sweet marjoram essential oil:&lt;/b&gt; antiseptic, anti-irritant and relaxant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Thyme essential oil: &lt;/b&gt;an excellent natural preservative; anti-infectious and antioxidant&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Ylang ylang essential oil: &lt;/b&gt;calming, sedative, aphrodisiacal; assists as antidepressant helping maintain good temper; excellent skin and hair tonic&lt;/div&gt;', '', 'Skin Toner-FIRE', '', ''),
(126, 1, 'Skin Toner-METAL', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Algae (Laminaria digitata):&lt;/b&gt; rich in trace minerals, proteins, vitamins and omega 3; supports moisturization, firms and tones; recommended for prevention of wrinkles and fine lines&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Cypress essential oil:&lt;/b&gt; the best essential oil for venous and lymphatic circulation; especially recommended for varicose veins, heavy legs or venous stasis; anti-infectious&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sage essential oil:&lt;/b&gt; lipolitic; antiseptic; healing; balances blood circulation&amp;nbsp; Juniper berry essential oil: anti-inflammatory; calming; anti-irritating; lipolitic; acts against water retention&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Lavender essential oil: &lt;/b&gt;quickens healing; soothing; creates sensation of well-being and relaxation&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sylvester pine essential oil: &lt;/b&gt;stimulating; anti-inflammatory; decongestant; soothes pain&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Rosemary essential oil:&lt;/b&gt; supports circulation; anti-rheumatic, analgesic, anti-infectious, healing&lt;/div&gt;', '', 'Skin Toner-METAL', '', ''),
(177, 1, 'Set of All 7 Chakra Balancing Essential Oil Blends', '&lt;div&gt;&lt;b&gt;Unique ingredients:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Crown Chakra Balancing Essential Oil: &lt;/b&gt;With essential oils of lavender, sandalwood, spruce, frankincense; and fractionated coconut oil Place a small amount on your fingertip and lightly massage into the center point of the crown chakra on the top of the head. Third Eye Chakra&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Balancing Essential Oil:&amp;nbsp; &lt;/b&gt;With essential oils of atlas cedar, helichrysum, clary sage, frankincense, white thyme; in a carrier oil base of fractionated coconut oil Place a small amount on your fingertip and lightly massage into the center point of the third eye chakra one inch above and between the brows.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Throat Chakra Balancing Essential Oil:&amp;nbsp;&lt;/b&gt; With essential oils of roman chamomile, geranium rose, cypress, sandalwood, lavender; and fractionated coconut oil Place a small amount on your fingertip and lightly massage into the center point of the throat chakra in the well of the neck.&lt;/div&gt;&lt;div&gt;&lt;b&gt;Heart Chakra Balancing Essential Oil: &lt;/b&gt;With essential oils of rose, neroli, melissa, lavender, blue tansy; in a carrier oil base of fractionated coconut oil Place a small amount on your fingertip and lightly massage into the center point of the heart chakra in the center of the chest.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Solar Plexus Chakra Balancing Essential Oil:&amp;nbsp;&lt;/b&gt; With essential oils of rosemary, ginger, lemongrass, melissa, white thyme; in a carrier oil base of fractionated coconut oil Place a small amount on your fingertip and lightly massage into the center point of the solar plexus chakra just above the navel.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Sacral Chakra Balancing Essential Oil: &lt;/b&gt;With essential oils of jasmine absolute, petitgrain, patchouli, geranium rose, pine; in a carrier oil base of fractionated coconut oil Place a small amount on your fingertip and lightly massage into the center point of the sacral chakra just below the navel.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Root Chakra Balancing Essential Oil: &lt;/b&gt;Essential oils of peppermint, frankincense, sandalwood, clove, vetiver; in a carrier oil base of fractionated coconut oil Place a small amount on your fingertip and lightly massage into the center point of the root chakra at the tip of the tailbone&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', '', 'Set of All 7 Chakra Balancing Essential Oil Blends', '', ''),
(189, 1, 'Complete Foods Multi', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Stearic acid, croscarmellose sodium, hypromellose, microcrystalline cellulose, magnesium stearate, silicon dioxide, CarboWax™. No known allergens. Gluten Free.&lt;/p&gt;', '', 'Complete Foods Multi', '', ''),
(190, 1, 'ConcenTrace Mineral Drops', '&lt;p&gt;ConcenTrace® Trace Mineral Drops is an all natural mineral concentrate that’s made by using ConcenFlo™, our proprietary harvesting process. ConcenTrace® contains naturally occurring ionic trace minerals from the Great Salt Lake with 99% sodium removed. It’s impossible to overestimate the importance of minerals and trace minerals for the human body. They are the catalysts for all the vitamins and other nutrients your body uses for developing and maintaining good health. ConcenTrace® captures the perfect balance of trace minerals your body needs. Using ConcenTrace® every day may help maintain healthy energy levels in your body by providing your body’s entire electrical system the minerals it needs to function properly. Ideally, minerals should come from eating a raw food diet. However, even eating a raw food diet isn’t enough since researchers have proven that soils have been depleted of minerals. Therefore, if it’s not in the soil, it’s not in the food. Here’s where ConcenTrace® comes in–taking ConcenTrace® every day ensures you’re getting a full spectrum of ionic trace minerals, which are the same kind of bioavailable ionic trace minerals that are found in foods!&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Concentrated seawater from Utah’s inland sea, USA. CERTIFIED VEGAN, NON-GMO. Approved for use as an organic food additive and processing additive. No known allergens. Gluten Free.&lt;/p&gt;', '', 'ConcenTrace Mineral Drops', '', ''),
(191, 1, 'Coral Calcium with ConcenTrace®', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Stearic acid, hypromellose, microcrystalline cellulose, magnesium stearate. No known allergens. Gluten Free &amp;amp; Vegetarian.&lt;/p&gt;', '', 'Coral Calcium with ConcenTrace®', '', ''),
(192, 1, 'Electro-Vita-Min', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Stearic acid, croscarmellose sodium, magnesium stearate, hypromellose, silicon dioxide, microcrystalline cellulose, calcium stearate, CarboWax™. No known allergens. Gluten Free.&lt;/p&gt;', '', 'Electro-Vita-Min', '', ''),
(196, 1, 'Probiotic 55 Billion', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Stearic acid, hypromellose. Gluten Free. CONTAINS TRACES OF MILK &amp;amp; SOY.&lt;/p&gt;', '', 'Probiotic 55 Billion', '', ''),
(197, 1, 'Protein Bar', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Organic Peanut Butter, Protein Blend – No hormones or antibiotics (Milk Protein, Whey Protein Concentrate), Organic Tapioca, Organic Inulin (Organic Prebiotic Fiber), Organic Peanuts, Organic Lycii (Goji) Berries, ConcenTrace® Trace Mineral Complex, Unrefined Sea Salt, Organic Stevia. CONTAINS PEANUTS AND DAIRY. GLUTEN FREE. Manufactured in a facility that processes nuts, tree nuts, peanuts, seeds, soy, wheat and dairy (milk).&lt;/p&gt;&lt;p&gt;&lt;b&gt;Flavor:&amp;nbsp;&lt;/b&gt;Peanut Butter Goji&lt;/p&gt;', '', 'Protein Bar', '', ''),
(198, 1, 'Stress-X Tablets', '&lt;p&gt;Everyone experiences periods of stress. These periods can last just hours or many days. Any period of stress depletes the body of minerals, vitamins and other nutrients that cause fatigue and decreased health and wellness.&lt;/p&gt;&lt;p&gt;Now you can fight back with Stress-X, a nourishing blend of vitamins, minerals, herbs and enzymes to help you relax, adapt, replace and nourish.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Relax and adapt with our herbal blend that includes calming herbs like Valerian Root, Hops, and Chamomile.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Replace and nourish your body with an extensive blend of vitamins, including an extensive B—vitamin complex. We also added minerals including magnesium, calcium and over 72 ionic trace minerals from ConcenTrace® to supercharge the formula for increased absorption and assimilation.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Finally, we added a food concentrate complex that includes a Citrus Bioflavonoid complex, Rice Polishing concentrate, Spirulina and naturally occurring enzymes, including Amylase, Protease, Lipase and Cellulase.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Microcrystalline cellulose, stearic acid, croscarmellose sodium, magnesium stearate, hypromellose, silicon dioxide. No known allergens. Gluten Free.&lt;/p&gt;', '', 'Stress-X Tablets', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(199, 1, 'Liquid Vitamin D3', '&lt;p&gt;Liquid Vitamin D3 is a dietary supplement that provides 125mcg (5000 IU) of vitamin D3 per serving, plus a concentrated complex of full spectrum ionic trace minerals.&lt;/p&gt;&lt;p&gt;Supplementing your body with vitamin D3 may provide the following benefits:&lt;br&gt;&lt;/p&gt;&lt;p&gt;• Maintain healthy bone density&lt;/p&gt;&lt;p&gt;• Promote efficient utilization of calcium by the body&lt;/p&gt;&lt;p&gt;• Maintain healthy immune system function&lt;/p&gt;&lt;p&gt;• Promote healthy cognitive function and mood&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;• Plus many more nutritional benefits!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Purified water, organic cane sugar, peach concentrate, natural flavors blend (berry, cherry, citrus), citric acid, xanthan gum, steviol glycosides, potassium sorbate, potassium benzoate, organic turmeric (Curcuma longa) root extract. No known allergens. Gluten Free.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Flavor:&amp;nbsp;&lt;/b&gt;Tropical Cherry&lt;/p&gt;', '', 'Liquid Vitamin D3', '', ''),
(185, 1, 'ActivJoint Platinum', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Microcrystalline cellulose, stearic acid, croscarmellose sodium, magnesium stearate, silicon dioxide, hypromellose, calcium stearate, Carbowax™. Gluten Free. CONTAINS SHELLFISH (SHRIMP).&lt;/p&gt;', '', 'ActivJoint Platinum', '', ''),
(188, 1, 'Children\'s Chewable Probiotic', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Xylitol, natural grape flavor, stearic acid, citric acid, silica, magnesium stearate, steviol glycosides. No known allergens. Gluten Free.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Flavor: &lt;/b&gt;Grape&lt;/p&gt;', '', 'Children\'s Chewable Probiotic', '', ''),
(195, 1, 'ConcenTrace® Mineral Mouth Rinse', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Purified water, Utah Sea Minerals™, ConcenTrace® sea minerals, peppermint essential oil, xylitol, steviol glycosides, colloidal silver, citric acid, potassium sorbate (for freshness). No known allergens. Gluten Free.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Flavor:&lt;/b&gt; Mint&lt;/p&gt;', '', 'ConcenTrace® Mineral Mouth Rinse', '', ''),
(193, 1, 'Liquid Multi-Vitamin-Mineral', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Purified water, natural vegetable glycerin, xylitol, natural raspberry &amp;amp; strawberry flavors, Exberry® shade red (natural color), citric acid, stevia rebaudioside A, xanthan gum, potassium benzoate &amp;amp; potassium sorbate (for freshness).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Flavor: &lt;/b&gt;Berry; Orange Mango&lt;br&gt;&lt;/p&gt;', '', 'Liquid Multi-Vitamin-Mineral', '', ''),
(194, 1, 'Stress-X Magnesium Powder', '&lt;p&gt;&lt;b&gt;Unique ingredients:&amp;nbsp;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Non-GMO citric acid, organic cane sugar, natural _x001F_avors blend (raspberry, lemon), malic acid, silica, beet (Beta vulgaris) root powder (color), Reb A (stevia leaf extract). No known allergens. Gluten Free.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Flavor:&amp;nbsp;&lt;/b&gt;Raspberry Lemon; Lemon Lime&lt;/p&gt;', '', 'Stress-X Magnesium Powder', '', ''),
(201, 1, 'SLEEP WELL Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our sophisticated floral lavender blend harnesses the therapeutic benefits of Lavender, Chamomile, Palmarosa and Ho Wood, and balances them with Bois de Rose and Geranium. The Patchouli, &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend Clove and Ylang Ylang heart brings a modern oriental twist.&lt;/p&gt;', '', 'SLEEP WELL Aromatherapy Balm', '', ''),
(207, 1, 'DE-STRESS Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;/p&gt;&lt;b&gt; Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Blended with Chamomile to promotes calmness, uplifting and relaxing Neroli and Mandarin to help soothe tension and support feelings of well-being.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;', '', 'DE-STRESS Aromatherapy Balm', '', ''),
(211, 1, 'DE-STRESS Essentials Kit', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment.&lt;/p&gt;&lt;p&gt; &lt;b&gt;Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Blended with Chamomile to promotes calmness, uplifting and relaxing Neroli and Mandarin to help soothe tension and support feelings of well-being. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;', '', 'DE-STRESS Essentials Kit', '', ''),
(208, 1, 'DE-STRESS Mini Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Blended with Chamomile to promotes calmness, uplifting and relaxing Neroli and Mandarin to help soothe tension and support feelings of well-being. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;', '', 'DE-STRESS Mini Aromatherapy Balm', '', ''),
(210, 1, 'DE-STRESS Travel Aromatherapy Candle', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Blended with Chamomile to promotes calmness, uplifting and relaxing Neroli and Mandarin to help soothe tension and support feelings of well-being. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;', '', 'DE-STRESS Travel Aromatherapy Candle', '', ''),
(218, 1, 'ESCAPE Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning.&lt;/p&gt;&lt;p&gt; &lt;b&gt;Inhale – &lt;/b&gt;Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our enticing blend with Oud, as used in Eastern spiritual practices to enhance clarity of mind, Sandalwood for strengthening, beneficial for yoga and meditation practice, and Frankincense a grounding, balancing, useful for visualization. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;br&gt;&lt;/p&gt;', '', 'ESCAPE Aromatherapy Balm', '', ''),
(219, 1, 'ESCAPE Mini  Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our enticing blend with Oud, as used in Eastern spiritual practices to enhance clarity of mind, Sandalwood for strengthening, beneficial for yoga and meditation practice, and Frankincense a grounding, balancing, useful for visualization.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;', '', 'ESCAPE Mini  Aromatherapy Balm', '', ''),
(221, 1, 'ESCAPE Travel Aromatherapy Candle', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our enticing blend with Oud, as used in Eastern spiritual practices to enhance clarity of mind, Sandalwood for strengthening, beneficial for yoga and meditation practice, and Frankincense a grounding, balancing, useful for visualization. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;', '', 'ESCAPE Travel Aromatherapy Candle', '', ''),
(212, 1, 'FOCUS Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale – &lt;/b&gt;Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Blended with Rosemary, used for millennia to increase alertness and boost memory, Mint to helps stimulate mental activity and increase focus on cognitive tasks, and Clary Sage which aids in relieving mental fatigue and promoting mental clarity. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, eugenol, citronellol **100% natural essential oil blend&lt;/p&gt;', '', 'FOCUS Aromatherapy Balm', '', ''),
(213, 1, 'FOCUS Mini Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy&lt;/p&gt;&lt;p&gt; Blended with Rosemary, used for millennia to increase alertness and boost memory, Mint to helps stimulate mental activity and increase focus on cognitive tasks, and Clary Sage which aids in relieving mental fatigue and promoting mental clarity.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, eugenol, citronellol **100% natural essential oil blend&lt;/p&gt;', '', 'FOCUS Mini Aromatherapy Balm', '', ''),
(214, 1, 'HAPPY Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Delightful Grapefruit helps lifts your spirits, while Lemon Myrtle energizes and refreshes, and Spearmint is both uplifting and positive.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, benzyl benzoate, benzyl alcohol, citronellol, benzyl cinnamal. **100% natural essential oil blend &lt;/p&gt;', '', 'HAPPY Aromatherapy Balm', '', ''),
(215, 1, 'HAPPY Mini Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Delightful Grapefruit helps lifts your spirits, while Lemon Myrtle energizes and refreshes, and Spearmint is both uplifting and positive. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, benzyl benzoate, benzyl alcohol, citronellol, benzyl cinnamal. **100% natural essential oil blend &lt;/p&gt;', '', 'HAPPY Mini Aromatherapy Balm', '', ''),
(216, 1, 'HAPPY Travel Aromatherapy Candle', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Delightful Grapefruit helps lifts your spirits, while Lemon Myrtle energizes and refreshes, and Spearmint is both uplifting and positive.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, benzyl benzoate, benzyl alcohol, citronellol, benzyl cinnamal. **100% natural essential oil blend &lt;/p&gt;', '', 'HAPPY Travel Aromatherapy Candle', '', ''),
(217, 1, 'I Want To Be HAPPY Gift Box', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Delightful Grapefruit helps lifts your spirits, while Lemon Myrtle energizes and refreshes, and Spearmint is both uplifting and positive. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, benzyl benzoate, benzyl alcohol, citronellol, benzyl cinnamal. **100% natural essential oil blend &lt;/p&gt;', '', 'I Want To Be HAPPY Gift Box', '', ''),
(222, 1, 'I Want To ESCAPE Gift Set', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment.&amp;nbsp; &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy&lt;/p&gt;&lt;p&gt; Our enticing blend with Oud, as used in Eastern spiritual practices to enhance clarity of mind, Sandalwood for strengthening, beneficial for yoga and meditation practice, and Frankincense a grounding, balancing, useful for visualization. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;', '', 'I Want To ESCAPE Gift Set', '', ''),
(204, 1, 'I Want To SLEEP WELL Gift Set', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop - &lt;/b&gt;Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our sophisticated floral lavender blend harnesses the therapeutic benefits of Lavender, Chamomile, Palmarosa and Ho Wood, and balances them with Bois de Rose and Geranium. The Patchouli, &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend Clove and Ylang Ylang heart brings a modern oriental twist.&lt;/p&gt;', '', 'I Want To SLEEP WELL Gift Set', '', ''),
(223, 1, 'LOVE Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy&lt;/p&gt;&lt;p&gt; A sensual, woody oriental scent, with spicy citrus top notes of Orange and Clove, and heart-warming floral Rose and Jasmine notes, all wrapped in the rich base notes of Patchouli, Vanilla, Cedarwood &amp;amp; Cabreuva.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend &lt;/p&gt;', '', 'LOVE Aromatherapy Balm', '', ''),
(225, 1, 'LOVE Home Aromatherapy Candle', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy&lt;/p&gt;&lt;p&gt; A sensual, woody oriental scent, with spicy citrus top notes of Orange and Clove, and heart-warming floral Rose and Jasmine notes, all wrapped in the rich base notes of Patchouli, Vanilla, Cedarwood &amp;amp; Cabreuva.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend &lt;/p&gt;', '', 'LOVE Home Aromatherapy Candle', '', ''),
(224, 1, 'LOVE Mini Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset – &lt;/b&gt;Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;A sensual, woody oriental scent, with spicy citrus top notes of Orange and Clove, and heart-warming floral Rose and Jasmine notes, all wrapped in the rich base notes of Patchouli, Vanilla, Cedarwood &amp;amp; Cabreuva.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend &lt;/p&gt;', '', 'LOVE Mini Aromatherapy Balm', '', ''),
(226, 1, 'LOVE Travel Aromatherapy Candle', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment.&lt;/p&gt;&lt;p&gt;&lt;b&gt; Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;A sensual, woody oriental scent, with spicy citrus top notes of Orange and Clove, and heart-warming floral Rose and Jasmine notes, all wrapped in the rich base notes of Patchouli, Vanilla, Cedarwood &amp;amp; Cabreuva.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend &lt;/p&gt;', '', 'LOVE Travel Aromatherapy Candle', '', ''),
(205, 1, 'SLEEP WELL Essentials Sleep Set', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;Apply this fragrant blend of relaxing Palmarosa, calming Lavender and soothing Ylang Ylang to pulse points (wrist, neck, and temples) before going to bed, inhale deeply and reset your mood. This balm will clear the head, quieten the mind and relax the body with a unique blend of fourteen pure essential oils, allowing you to let go of everyday stress and tension and encourage deep sleep. Repeat this ritual nightly to support a long term healthy sleeping habit.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our sophisticated floral lavender blend harnesses the therapeutic benefits of Lavender, Chamomile, Palmarosa and Ho Wood, and balances them with Bois de Rose and Geranium. The Patchouli, &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend Clove and Ylang Ylang heart brings a modern oriental twist.&lt;br&gt;&lt;/p&gt;', '', 'SLEEP WELL Essentials Sleep Set', '', ''),
(206, 1, 'SLEEP WELL Mini Wellbeing Ritual Aromatherapy Balm', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our sophisticated floral lavender blend harnesses the therapeutic benefits of Lavender, Chamomile, Palmarosa and Ho Wood, and balances them with Bois de Rose and Geranium. The Patchouli, &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend Clove and Ylang Ylang heart brings a modern oriental twist.&lt;/p&gt;', '', 'SLEEP WELL Mini Wellbeing Ritual Aromatherapy Balm', '', ''),
(203, 1, 'SLEEP WELL Travel Aromatherapy Candle', '&lt;p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;Stop -&lt;/b&gt; Apply a balm directly to your wrist, neck and temples or light a Scentered candle to purposefully fill the room with mindful meaning. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Inhale –&lt;/b&gt; Raise your wrists or candle to your nose and deeply inhale, visualizing the mind state you wish to achieve in this moment. &lt;/p&gt;&lt;p&gt;&lt;b&gt;Reset –&lt;/b&gt; Exhale deeply as you step into the next moment of your daily journey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;Not recommended for use in pregnancy &lt;/p&gt;&lt;p&gt;Our sophisticated floral lavender blend harnesses the therapeutic benefits of Lavender, Chamomile, Palmarosa and Ho Wood, and balances them with Bois de Rose and Geranium. The Patchouli, &lt;/p&gt;&lt;p&gt;&lt;b&gt;Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend Clove and Ylang Ylang heart brings a modern oriental twist.&lt;/p&gt;', '', 'SLEEP WELL Travel Aromatherapy Candle', '', ''),
(227, 1, 'Ultimate Survival Kit', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;b&gt;DE-STRESS - &lt;/b&gt;A remarkably soothing blend to help you juggle more throughout your day, keeping you calm and in control. It’s your portable companion to support you through life’s everyday journey. &lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;SLEEP WELL -&lt;/b&gt; Awake well-rested to give yourself the best chance for a wonderful day by embracing this nightly bedtime ritual to help you drift off into restful sleep.  Delivers an alluring blend to relax your body and quiet your mind.&lt;/p&gt;&lt;p&gt;&lt;b&gt; FOCUS -&lt;/b&gt; “Better than coffee”, FOCUS helps you prepare for the day ahead with this invigorating blend that will help direct your mind and boost concentration. Use it throughout the day whenever you need to refocus your efforts to accomplish the goals and tasks on your to-do list.&lt;/p&gt;&lt;p&gt;&lt;b&gt;ESCAPE - &lt;/b&gt;When it’s time to shift gears from doing what you “have to do” to doing what you “want to do”, the grounding ESCAPE blend instantly transports you mentally to “me time”, whether that’s a yoga class or a good book. &lt;/p&gt;&lt;p&gt;&lt;b&gt;  LOVE - &lt;/b&gt;A warm, romantic blend that stimulates the emotions to enhance sensuality and emotionally connectivity. For when you want to feel connected with others physically or emotionally or times when you need soothing self-care, it’s like a hug you give to yourself. &lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;b&gt;DE-STRESS Balm Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend &lt;/p&gt;&lt;p&gt;&lt;b&gt;SLEEP WELL Balm Full Ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend &lt;/p&gt;&lt;p&gt;&lt;b&gt;FOCUS Balm Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, eugenol, citronellol **100% natural essential oil blend&lt;/p&gt;&lt;p&gt;&lt;b&gt;ESCAPE Balm Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend &lt;/p&gt;&lt;p&gt;&lt;b&gt;LOVE Balm Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend&lt;/p&gt;', '', 'Ultimate Survival Kit', '', ''),
(229, 1, 'Ultimate Relaxation Trio', '&lt;p&gt;&lt;b&gt;Wellness Ritual&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;DE-STRESS -&amp;nbsp;&lt;/b&gt;A remarkably soothing blend to help you juggle more throughout your day, keeping you calm and in control. It’s your portable companion to support you through life’s everyday journey.&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;SLEEP WELL -&lt;/b&gt;&amp;nbsp;Awake well-rested to give yourself the best chance for a wonderful day by embracing this nightly bedtime ritual to help you drift off into restful sleep. Delivers an alluring blend to relax your body and quiet your mind.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Happy -&amp;nbsp;&lt;/b&gt;Delightful Grapefruit helps lifts your spirits, while Lemon Myrtle energizes and refreshes, and Spearmint is both uplifting and positive.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;b&gt;DE-STRESS Balm Full Ingredients:&amp;nbsp;&lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;&lt;p&gt;&lt;b&gt;SLEEP WELL Balm Full Ingredients:&lt;/b&gt;&amp;nbsp;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend&lt;/p&gt;&lt;p&gt;&lt;b&gt;Happy Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, benzyl benzoate, benzyl alcohol, citronellol, benzyl cinnamal. **100% natural essential oil blend&lt;br&gt;&lt;/p&gt;', '', 'Ultimate Relaxation Trio', '', ''),
(228, 1, 'Wellbeing Ritual Aromatherapy Tin', '&lt;p&gt;&lt;b&gt;De-Stress Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;/p&gt;&lt;p&gt;&lt;b&gt;Foucs Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, eugenol, citronellol **100% natural essential oil blend&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Happy Full ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, benzyl benzoate, benzyl alcohol, citronellol, benzyl cinnamal. **100% natural essential oil blend&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Escape Full ingredients:&lt;/b&gt; coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, linalool, geraniol, citral, citronellol, coumarin, benzyl benzoate. **100% natural essential oil blend&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sleep Well Full Ingredients: &lt;/b&gt;coco-caprylate/caprate, euphorbia cerifera (candelilla) cera, butyrospermum parkii (shea) butter, parfum (fragrance)**, copernicia cerifera (carnauba) cera, cera alba (beeswax), moringa oil/hydrogenated moringa oil esters, tocopherol, helianthus annuus (sunflower) seed oil, limonene, geraniol, linalool, citral, eugenol, citronellol, benzyl benzoate, farnesol, benzyl salicylate, isoeugenol. **100% natural essential oil blend Clove and Ylang Ylang heart brings a modern oriental twist.&lt;br&gt;&lt;/p&gt;', '', 'Wellbeing Ritual Aromatherapy Tin', '', ''),
(230, 1, 'January', '&lt;p&gt;Garnet Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm). \r\nGarnet is an energizing stone that helps promote love, strengthen relationships, and attract abundance into your life. As a balancing stone, garnet stimulates your desires, lifts your spirits, increases your passion, and proves emotional stability and acts as a personal protector against negativity. be energy. be hope. be inspired.&lt;/p&gt;&lt;p&gt; Beads: 3mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 6&lt;/p&gt;', '', 'January', '', ''),
(231, 1, 'February', '&lt;p&gt;Amethyst Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm). Amethyst is a spiritual stone that stills the mind, provides a sense of serenity, and eases you into a meditative state. It helps you remain centered while enhancing wisdom and understanding. Aligned with the crown chakra, it brings a greater sense of spirituality .be centered. be spiritual. be serene.&lt;/p&gt;&lt;p&gt; Beads: 3mm &lt;/p&gt;&lt;p&gt;Circumference: 6”&lt;/p&gt;', '', 'February', '', ''),
(232, 1, 'March', '&lt;p&gt;Aquamarine Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm). Aquamarine is a calming stone that helps one reach a higher state of consciousness. As a reflective stone, it is wonderful for meditation. As a healing stone, it helps provide greater courage and clarity, while encouraging its wearer to approach humanity with compassion.be aware. be calm. be renewed. &lt;/p&gt;&lt;p&gt;Beads: 3mm&lt;/p&gt;&lt;p&gt; Circumference: 6”&lt;/p&gt;', '', 'March', '', ''),
(233, 1, 'April', '&lt;p&gt;Crystal Quartz Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Crystal Quartz is a purifying stone that removes negative energy, fights emotional exhaustion, and increases your motivation. As a master healing stone, it lifts your spirits, enhances your optimism, and increases your physical + emotional levels.be energy. be motion. be positive. &lt;/p&gt;&lt;p&gt;Beads: 3mm &lt;/p&gt;&lt;p&gt;Circumference: 6”&lt;/p&gt;', '', 'April', '', ''),
(234, 1, 'May', '&lt;p&gt;Green Agate Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Green Agate is a confidence-boosting stone that enhances your sense of compassion, generosity, and justice. Green agate helps attract lasting love into your life and is a stone that brings you closer to your inner self, bringing self-knowledge, expansion + personal growth.be love. be generous. be harmony. &lt;/p&gt;&lt;p&gt;Beads: 3mm&lt;/p&gt;&lt;p&gt;Circumference: 6”&lt;/p&gt;', '', 'May', '', ''),
(235, 1, 'June', '&lt;p&gt;White Moonstone Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm)Moonstone is an empowering stone known as the “Goddess Stone” which sharpens your intuition, opens your heart, and enhances your ability to nurture and love. As a stone of new beginnings, its eases meditation, and your journey inward, and aids in achieving enlightenment. be hope. be love. be enlightened.&lt;/p&gt;&lt;p&gt; Beads: 3mm&lt;/p&gt;&lt;p&gt;Circumference: 6”&lt;/p&gt;', '', 'June', '', ''),
(236, 1, 'July', '&lt;p&gt;Rubine Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Rubine is a strengthening stone from the Ruby family, which assists in you recharging your energy levels. It is a stone of manifestation which restores your vitality and passion for life, shields you from negativity, and allows you to be more extroverted and outgoing.      be strong. be passion. be grounded. &lt;/p&gt;&lt;p&gt;                       Beads: 3mm&lt;/p&gt;&lt;p&gt;Circumference: 6”&lt;/p&gt;', '', 'July', '', ''),
(237, 1, 'August', '&lt;p&gt;Peridot Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Peridot is a powerful cleansing stone that protects you from harm and attracts prosperity. As a stone of transformation, it helps reveal your soul’s purpose, brings about necessary change, and allows you to let go of the past and move forward with confidence. be confident. be protected. be transformed. &lt;/p&gt;&lt;p&gt;Beads: 3mm &lt;/p&gt;&lt;p&gt;Circumference: 6”&lt;/p&gt;', '', 'August', '', ''),
(238, 1, 'September', '&lt;p&gt;Sapphire Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Sapphire is a focus enhancing stone that calms your mind, increases your wisdom, and provides clarity. It reduces feelings of envy, alleviates fear and anxiety, opens your heart to love and helps you more easily express yourself.  be focused. be abundant. be wise. &lt;/p&gt;&lt;p&gt;Beads: 3mm &lt;/p&gt;&lt;p&gt;Circumference: 6”&lt;/p&gt;', '', 'September', '', ''),
(239, 1, 'October', '&lt;p&gt;Pink Opal Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Pink Opal is a calming stone that brings joy into your life and balances your emotions. It helps you honestly express your feelings to others, increases your sense of self-worth, and allows you to understand your full power + potential.  be authentic. be balanced. be empowered. &lt;/p&gt;&lt;p&gt;Beads: 3mm&lt;/p&gt;&lt;p&gt; Circumference: 6”&lt;/p&gt;', '', 'October', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(240, 1, 'November', '&lt;p&gt;Citrine Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Citrine is an energizing stone that eliminates negative energy, gives you more optimism + enthusiasm, and boosts your self-esteem. Known as the “Success Stone,” it helps you manifest abundance + prosperity. As a healing stone, it emanates happiness and positivity, and encourages generosity.  be creative. be generous. be happy. &lt;/p&gt;&lt;p&gt;Beads: 3mm&lt;/p&gt;&lt;p&gt; Circumference: 6”&lt;/p&gt;', '', 'November', '', ''),
(241, 1, 'December', '&lt;p&gt;Tanzanite Women\'s Delicate Faceted Birthstone Bracelet w/Matching Vermeil Teardrop Birthstone Pendant and Gold-Filled Extender Chain (3mm) Tanzanite is a soothing stone that enhances your ability to communicate, as well as express and release your emotions. It sharpens your intuition, aids in meditation connecting the mind and heart. It inspires one to feel more compassionate, loving + centered.  be truth. be peace. be joy.&lt;/p&gt;&lt;p&gt; Beads: 3mm&lt;/p&gt;&lt;p&gt; Circumference: 6”&lt;/p&gt;', '', 'December', '', ''),
(242, 1, 'Amethyst Mala Bracelet with Sahaswara Charm', '&lt;p&gt;Represents: Crown Chakra and consciousness\r\nExperience a state of pure consciousness while wearing our Amethyst Mala Bracelet, made with all-natural, semi-precious amethyst gemstone beads. Amethyst aligns with the Crown Chakra and represents consciousness, bringing you a greater sense of enlightenment, mindfulness and spirituality. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Sahaswara charm (Sanskrit for thousandfold) to represent the Crown Chakra. &lt;/p&gt;&lt;p&gt;Beads: 6mm &lt;/p&gt;&lt;p&gt;Circumference: 7” (adjustable)&lt;/p&gt;', '', 'Amethyst Mala Bracelet with Sahaswara Charm', '', ''),
(244, 1, 'Amazonite Mala Bracelet with Vishudda Charm', '&lt;p&gt;Represents: Throat Chakra and expression\r\nExperience fluency of thought and expression while wearing our Amazonite Mala Bracelet, made with all-natural, semi-precious amazonite gemstone beads. Amazonite aligns with the Throat Chakra and represents expression, filling you with life, empowerment and truth. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Vishuddha charm (Sanskrit for purification) to represent the Throat Chakra.&lt;/p&gt;&lt;p&gt; Beads: 6mm &lt;/p&gt;&lt;p&gt;Circumference: 7” (adjustable)&lt;/p&gt;', '', 'Amazonite Mala Bracelet with Vishudda Charm', '', ''),
(247, 1, 'Red Adventurine Mala Bracelet with Svandhistana Charm', '&lt;p&gt;Represents: Sacral Chakra and creativity\r\nChannel creative energy while wearing our Red Aventurine Mala Bracelet, made with all-natural, semi-precious red aventurine gemstone beads. Red Aventurine aligns with the Sacral Chakra and represents creativity, bringing you a greater sense of abundance, joy and love. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Svadhisthana charm (Sanskrit for sacred home of the self) to represent the Sacral Chakra. &lt;/p&gt;&lt;p&gt;Beads: 6mm &lt;/p&gt;&lt;p&gt;Circumference: 7” (adjustable)&lt;/p&gt;', '', 'Red Adventurine Mala Bracelet with Svandhistana Charm', '', ''),
(248, 1, 'Red Jasper Mala Bracelet with Muladhara Charm', '&lt;p&gt;Represents: Root Chakra and survival\r\nStay balanced and secure while wearing our Red Jasper Mala Bracelet, made with all-natural, semi-precious red jasper gemstone beads. Red Jasper aligns with the Root Chakra and represents survival, keeping you confident, grounded and strong. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Muladhara charm (Sanskrit for support) to represent the Root Chakra. &lt;/p&gt;&lt;p&gt;Beads: 6mm &lt;/p&gt;&lt;p&gt;Circumference: 7” (adjustable)&lt;/p&gt;', '', 'Red Jasper Mala Bracelet with Muladhara Charm', '', ''),
(250, 1, 'Seven Chakra Ombre Charm Bracelet with Seven Charms', '&lt;p&gt;Stay centered, balanced and uplifted while wearing our Seven Chakra Ombre Charm Bracelet, designed with an ombre pattern featuring seven all-natural, semi-precious gemstone beads. Each gemstone featured in the bracelet represents one of the seven chakras, helping you align your chakras for a greater sense of well-being. The handcrafted bracelet also features a macrame slide closure for easily adjustable sizing, as well as an array of seven dangling charms, which represent the Sanskrit symbol for each chakra. &lt;/p&gt;&lt;p&gt;Beads: 6mm &lt;/p&gt;&lt;p&gt;Circumference: 7” (adjustable)&lt;/p&gt;', '', 'Seven Chakra Ombre Charm Bracelet with Seven Charms', '', ''),
(251, 1, 'Seven Chakras Tassel Bracelet', '&lt;p&gt;This hand-knotted, unisex mala bracelet combines sustainable robles wood beads with seven all-natural, semi-precious gemstones. Each gemstone featured in the bracelet represents one of the seven chakras, helping you align your chakras for a greater sense of well-being. The handcrafted bracelet also features a macrame slide closure for easily adjustable sizing, as well as a dangling tassel with threads representing all seven gemstones. &lt;/p&gt;&lt;p&gt;Beads: 8mm &lt;/p&gt;&lt;p&gt;Circumference: 7.5” (adjustable)&lt;/p&gt;', '', 'Seven Chakras Tassel Bracelet', '', ''),
(253, 1, 'Sodalite Triple Happiness Bracelet with Ajna Charm', '&lt;p&gt;Represents: Third Eye Chakra and intuition\r\nThis hand-knotted, unisex mala bracelet combines sustainable robles wood beads with three all-natural, semi-precious sodalite gemstones. Sodalite aligns with the Third Eye Chakra and represents intuition, bringing you a greater sense of purity, soulfulness and wisdom. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Ajna charm (Sanskrit for perception) to represent the Third Eye Chakra. &lt;/p&gt;&lt;p&gt;Beads: 8mm &lt;/p&gt;&lt;p&gt;Circumference: 7.5” (adjustable)&lt;/p&gt;', '', 'Sodalite Triple Happiness Bracelet with Ajna Charm', '', ''),
(255, 1, 'Green Adventurite Triple Happiness Bracelet with Anahata Charm', '&lt;p&gt;Represents: Heart Chakra and love\r\nThis hand-knotted, unisex mala bracelet combines sustainable robles wood beads with three all-natural, semi-precious green aventurine gemstones. Green Aventurine aligns with the Heart Chakra and represents love, bringing you a greater sense of compassion, generosity and gratitude. The handcrafted bracelet features a macrame slide closure for easily adjustable sizing, as well as a dangling Anahata charm (Sanskrit for unstruck) to represent the Heart Chakra. &lt;/p&gt;&lt;p&gt;Beads: 8mm&lt;/p&gt;&lt;p&gt; Circumference: 7.5” (adjustable)&lt;/p&gt;', '', 'Green Adventurite Triple Happiness Bracelet with Anahata Charm', '', ''),
(261, 1, 'Seven Chakra Namaste 108 Bead Mala Necklace', '&lt;p&gt;This 108-bead, unisex mala necklace combines hand-strung, sustainable robles wood beads with seven all-natural, semi-precious gemstones. Inspired by the Namaste hand position, the hand-knotted gemstone pattern at the bottom of the mala is designed to look like two hands in prayer when turned upside down. Each gemstone in the necklace represents one of the seven chakras, helping you align your chakras for a greater sense of well-being. Made with 8mm beads for a longer-hanging necklace, the handcrafted mala features a tassel with threads representing all seven gemstones. It also includes a dangling Om charm and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.” &lt;/p&gt;&lt;p&gt;Beads: 8mm&lt;/p&gt;&lt;p&gt; Circumference: 36&quot;&lt;/p&gt;', '', 'Seven Chakra Namaste 108 Bead Mala Necklace', '', ''),
(273, 1, 'Rhodonite Faceted Stretch Bracelet', '&lt;p&gt;Balance your emotions and remove anger and resentment, while wearing our Rhodonite Faceted Stretch Bracelet. This handcrafted bracelet promotes humanity and features all-natural, semi-precious faceted Rhodonite stones.\r\nBe Compassion. \r\nThis bracelet also goes well with our Lucky Buddha Bead Detachable Charm!&lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Rhodonite Faceted Stretch Bracelet', '', ''),
(274, 1, 'Silver Grey Quartz Faceted Stretch Bracelet ', '&lt;p&gt;Strengthen your spirit and enhance mental power, while wearing our Silver Grey Quartz Faceted Stretch Bracelet. This handcrafted bracelet promotes awareness and features all-natural, semi-precious faceted Silver Grey Quartz beads. \r\nBe Enlightened. \r\nThis bracelet also goes well with our Lucky Buddha Bead Detachable Charm!\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Silver Grey Quartz Faceted Stretch Bracelet ', '', ''),
(277, 1, 'Unakite Faceted Stretch Bracelet', '&lt;p&gt;Unakite is a balancing stone that balances your emotions and brings calm  to any situation.  Also called Epidote - from the Greek word epidosus, meaning “growing together” - Unakite combines  red jasper, pink feldspar, and green epidote gemstones.\r\nIt helps you break through barriers that are holding you back, aids in  spiritual growth and enhances optimism about the future. As a visionary stone, Unakite helps you visualize the things you want in life. \r\nIt encourages self-love and acceptance, and is known to relieve stress and improve sleep.This bracelet also goes well with our Lucky Buddha Bead Detachable Charm!\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Unakite Faceted Stretch Bracelet', '', ''),
(279, 1, 'Yellow Jade Faceted Stretch Bracelet', '&lt;p&gt;Be thoughtful while wearing our Yellow Jade Faceted Stretch Bracelet. This handcrafted bracelet promotes energy and features all-natural, semi-precious faceted Yellow Jade stones. \r\nThis bracelet also goes well with our Lucky Buddha Bead Detachable Charm!\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Yellow Jade Faceted Stretch Bracelet', '', ''),
(288, 1, 'Picasso Jasper Faceted Stretch Bracelet with Buddha Head', '&lt;p&gt;Bring an openness to each day and a celebration of every experience, while wearing our Picasso Jasper Faceted Stretch Bracelet. This handcrafted bracelet promotes optimism and features all-natural, semi-precious faceted Picasso Jasper stones and our Lucky Buddha Bead. \r\nBe Grounded.&lt;/p&gt;&lt;p&gt; \r\nBeads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Picasso Jasper Faceted Stretch Bracelet with Buddha Head', '', ''),
(291, 1, 'Rhodonite Faceted Stretch Bracelet with Buddha Head', '&lt;p&gt;Balance your emotions and remove anger and resentment, while wearing our Rhodonite Faceted Stretch Bracelet. This handcrafted bracelet promotes humanity and features all-natural, semi-precious faceted Rhodonite stones and our Lucky Buddha Bead. \r\nBe Compassion. &lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Rhodonite Faceted Stretch Bracelet with Buddha Head', '', ''),
(295, 1, 'Unakite Faceted Stretch Bracelet with Buddha Head', '&lt;p&gt;Unakite is a balancing stone that balances your emotions and brings calm  to any situation.  Also called Epidote - from the Greek word epidosus, meaning “growing together” - Unakite combines red jasper, pink feldspar, and green epidote gemstones.\r\nIt helps you break through barriers that are holding you back, aids in spiritual growth and enhances optimism about the future. As a visionary stone, Unakite helps you visualize the things you want in life. \r\nIt encourages self-love and acceptance, and is known to relieve stress and improve sleep.\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Unakite Faceted Stretch Bracelet with Buddha Head', '', ''),
(297, 1, 'Yellow Jade Faceted Stretch Bracelet with Buddha Head', '&lt;p&gt;Be thoughtful while wearing our Yellow Jade Faceted Stretch Bracelet. This handcrafted bracelet promotes energy and features all-natural, semi-precious faceted Yellow Jade stones and our Lucky Buddha Bead. &lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Yellow Jade Faceted Stretch Bracelet with Buddha Head', '', ''),
(308, 1, 'Smoky Quartz Om Charm Bracelet', '&lt;p&gt;Boost your confidence and inner strength while wearing our Smoky Quartz Om Charm Bracelet. Handcrafted with all-natural, semi-precious smoky quartz beads and a beaded slide closure, this bracelet promotes courage and builds self-belief. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Smoky Quartz Om Charm Bracelet', '', ''),
(310, 1, 'Rose Quartz Om Charm Bracelet', '&lt;p&gt;Known to promote love, compassion and sensuality, our Rose Quartz Om Charm Bracelet helps rejuvenate your mind and nourish your spirit. Featuring all-natural, semi-precious rose quartz beads and a beaded slide closure, this handcrafted bracelet encourages empathy and kindness toward both yourself and others. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Rose Quartz Om Charm Bracelet', '', ''),
(311, 1, 'Sodalite Om Charm Bracelet', '&lt;p&gt;Enhance intuition and increase creativity while wearing our Sodalite Om Charm Bracelet. Featuring all-natural, semi-precious sodalite beads and a beaded slide closure, this piece will leave you feeling inspired, balanced and full of bright ideas. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Sodalite Om Charm Bracelet', '', ''),
(312, 1, 'Tiger\'s Eye Om Charm Bracelet', '&lt;p&gt;Stay grounded and present in the moment while wearing our Tiger’s Eye Om Charm Bracelet. Featuring all-natural, semi-precious gemstone beads and a beaded slide closure, this bracelet promotes courage, strength and mindfulness to help you live more fully in the present moment. A double-sided Om charm helps channel the sound of the universe, keeping you connected to the world around you.&lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm&lt;/p&gt;&lt;p&gt;\r\nCircumference: 7.25”&lt;/p&gt;', '', 'Tiger\'s Eye Om Charm Bracelet', '', ''),
(314, 1, 'Amazonite Tassel Bracelet', '&lt;p&gt;Soothe your spirit, find your truth and calm your mind while wearing our Amazonite Tassel Bracelet. Featuring all-natural, semi-precious amazonite beads and a charming threaded tassel, this handcrafted piece is known for easing communication and promoting harmony with yourself and others.&lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm&lt;/p&gt;&lt;p&gt;\r\nCircumference: 7.25”&lt;/p&gt;', '', 'Amazonite Tassel Bracelet', '', ''),
(319, 1, 'Pyrite Tassel Bracelet', '&lt;p&gt;Sharpen your focus and guard yourself against negative energy while wearing our Pyrite Tassel Bracelet. Made with all-natural, semi-precious pyrite beads and a beautifully threaded tassel, this bracelet will shield you from harm and provide greater enlightenment.\r\n&lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Pyrite Tassel Bracelet', '', ''),
(320, 1, 'Rose Quartz Tassel Bracelet', '&lt;p&gt;Known to promote love, compassion and sensuality, our Rose Quartz Tassel Bracelet helps rejuvenate your mind and nourish your spirit. Featuring all-natural, semi-precious faceted rose quartz beads and a beautifully threaded tassel, this handcrafted bracelet was created to encourage empathy and kindness toward both yourself and others.\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm&lt;/p&gt;&lt;p&gt;\r\nCircumference: 7.25”&lt;/p&gt;', '', 'Rose Quartz Tassel Bracelet', '', ''),
(321, 1, 'Tiger\'s Eye Tassel Bracelet', '&lt;p&gt;Stay grounded and present in the moment while wearing our Tiger’s Eye Tassel Bracelet. Featuring all-natural, semi-precious gemstone beads and a matching threaded tassel, this bracelet promotes courage, strength and mindfulness to help you live more fully in the present moment.&lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Tiger\'s Eye Tassel Bracelet', '', ''),
(323, 1, 'Smoky Quartz Tassel Bracelet', '&lt;p&gt;Boost your confidence and inner strength while wearing our Smoky Quartz Tassel Bracelet. Handcrafted with all-natural, semi-precious smoky quartz beads and a charming multicolored tassel, this bracelet promotes courage and builds self-belief.\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 7.25”&lt;/p&gt;', '', 'Smoky Quartz Tassel Bracelet', '', ''),
(332, 1, '108 Bead Botswana Agate Mala Necklace', '&lt;p&gt;Featuring 108 all-natural, semi-precious gemstone beads, the Botswana Agate Necklace provides a sense of freedom, calm and creativity to its wearer. It also includes a threaded tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”&lt;/p&gt;&lt;p&gt;\r\nBeads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 31-33”\r\n&lt;/p&gt;&lt;p&gt;Tassel: 2.5”&lt;/p&gt;', '', '108 Bead Botswana Agate Mala Necklace', '', ''),
(339, 1, '108 Bead Botswana Agate Wrap Mala', '&lt;p&gt;Find a sense of freedom, calm and creativity with our Botswana Agate Wrap Mala. Known to provide stability and balance your emotions, this adjustable mala is made of 108 all-natural, semi-precious Botswana agate beads, and can be worn as a necklace or wrapped around the wrist for a stacked-bracelet look. It also includes a detachable mini tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 31-35”\r\n&lt;/p&gt;&lt;p&gt;Knotted loop closure: 4”&lt;/p&gt;', '', '108 Bead Botswana Agate Wrap Mala', '', ''),
(342, 1, '108 Bead Amethyst Wrap Mala', '&lt;p&gt;Channel serenity and balance while wearing our Amethyst Wrap Mala. Known for enhancing spirituality, this adjustable mala is made of 108 all-natural, semi-precious amethyst beads, and can be worn as a necklace or wrapped around the wrist for a stacked-bracelet look. It also includes a detachable mini tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 33-38”\r\n&lt;/p&gt;&lt;p&gt;Knotted loop closure: 4”&lt;/p&gt;', '', '108 Bead Amethyst Wrap Mala', '', ''),
(329, 1, '108 Bead Amazonite Mala Necklace', '&lt;p&gt;Soothe your spirit, find your truth and calm your mind while wearing our Amazonite Mala Necklace. This mala features 108 all-natural, semi-precious amazonite beads, known for easing communication and promoting harmony with yourself and others. It also includes a threaded tassel and guru bead, whose Sanskrit mantra inscription is one of the most sacred in existence: Om Mani Padme Hum, “O radiant jewel in the lotus of my heart, please shine brightly. May my heart have the strength to feel compassion for all sentient beings.”\r\n&lt;/p&gt;&lt;p&gt;Beads: 6mm\r\n&lt;/p&gt;&lt;p&gt;Circumference: 31-33”\r\nTassel: 2.5”&lt;/p&gt;', '', '108 Bead Amazonite Mala Necklace', '', ''),
(358, 1, 'EPA-Q', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;100% pure Krill oil (500mg)&lt;br&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;Per Softgel:&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;EPA: 75mg&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;DHA: 35mg&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;Total Phospholipids: 280mg&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;Softgel (Gelatin, Glycerol, Sorbitol, Water and Ethyl Vanillin)&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;EPAQ is comprised of 100% Antarctica krill oil. It contains an ideal balance of essential fatty acids, phospholipids, and antioxidants. It has been clinically proven to be more effective than fish oil for PMS and hyperlipidemia. It reduces joint pain and stiffness, and has a protectant effect against UV radiation. The phospholipids: PC (phosphatidylcholine) and PS (phosphatidylserine) are contained in EPAQ. In addition, EPAQ contains a naturally occurring antioxidant, astaxanthin. Astaxanthin is particularly good at protecting against ultraviolet (UV) light. It also has anti-inflammatory effects and protects against oxidation.&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Internal: 2 - 3 softgels per day with meals for 30 days&lt;br&gt;&lt;/p&gt;&lt;p&gt;60 softgels, 20 to 30 day supply&lt;/p&gt;&lt;p&gt;Contraindications: Use with caution in bleeding disorders, if using anticoagulant medication, or for clients who have seafood allergies.&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Has anti-inflammatory activity, nourishes brain function, lowers LDL cholesterol, raises HDL cholesterol Useful in the treatment of: cardiovascular disease, stroke prevention, hypertension, hyperlipidemia, elevated triglycerides, diabetes, eczema, psoriasis, lupus, MS, migraine headaches, osteoarthritis, rheumatoid arthritis, ulcerative colitis, Crohn’s disease, PMS, psychological stress, learning, and behavioral disorders (ADD, ADHD), asthma, autoimmune diseases&lt;/p&gt;', '', 'EPA-Q', '', ''),
(357, 1, 'CURCUMA FLOW', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Turmeric (curcuma longa) extract bound to soy phosphatidylcholine&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Curcuma Flow is a clinically proven patented delivery form of curcumin. This system protects curcumins from breakdown by water and uses PC (phosphatidylcholine) to carry curcumins across the intestinal lining.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Curcuma Flow is supported by 25 clinical studies, involving more than 1400 subjects. Curcumin typically exhibits poor oral absorption in the body. Pharmacokinetic comparison studies have shown Curcuma Flow to improve bioavailability of curcuminoids by about 30-fold.2,3 Curcuma Flow can help patients lower their pain, reduce their need for pharmaceutical analgesics, and improve quality of life. &quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Internal: 1 to 2 capsules BID, with meals&lt;br&gt;&lt;/p&gt;&lt;p&gt;60 capsules, 500mg, 30 day supply&lt;/p&gt;&lt;p&gt;Contraindications: Contains soy&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Effective for joint health and rehabilitation, improving joint pain and mobility Lessens muscle soreness from oxidative stress and inflammation Encourages healthy inflammatory response after exercise Enhances circulation and reduces inflammation Supports healthy aging: blood vessel function, prostate, vision and eye health Helpful in managing effects of chemo and radiation therapy&lt;/p&gt;', 'Curcumin ', 'CURCUMA FLOW', '', ''),
(359, 1, 'ISATIS GOLD', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Isatis extract leaf &amp;amp; root (da qing ye &amp;amp; ban lan gen), Echinacea root and leaf (Echinacea purpurea), Platycodon root (jie geng), Goldenseal root (Hydrastis canadensis), Ligusticum root (chuan xiong)&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Isatis Gold is a combination of Western and Chinese herbs designed as an herbal antibiotic and anti-viral. Echinacea and goldenseal are used in combination to reduce swelling and treat inflammatory conditions of the upper respiratory tract. Isatis extract (da qing ye and ban lan gen) are widely studied and used in China as a broad-spectrum antibiotic and anti-viral agent. Platycodon (jie geng) is an anti-inflammatory herb that resolves phlegm, relieves cough, moistens the throat, and helps reduce pus. Platycodon (jie geng) and ligusticum (chuan xiong) direct the formula to the upper body. Ligusticum dispels wind and treats sinus congestion, sore throat, and headache.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Internal: 3 tablets, every two to four hours&lt;br&gt;&lt;/p&gt;&lt;p&gt;90 tablets, 625 mg&lt;/p&gt;&lt;p&gt;Contraindications: Should notice results within 24 hours. If patient does not show improvement within 48 hours, consider an alternate formula. If taken over 10 days, effectiveness diminishes. The herbs are cold and can cause intestinal cramping.&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Treats bacterial and viral infections that cause inflammation and fever, especially upper respiratory, colds, flu, and bronchitis&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'ISATIS GOLD', '', ''),
(356, 1, 'CHZYME', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Enzymes: Amylase, CereCalase, Protease, Catalase, alpha-Galactosidase, Lipase, Glucoamylase, Cellulase, Malt Diatase Herbs: Poria sclerotium (fu ling), Magnolia bark (hou po), Red Atractylodes rhizome (cang zhu), Vladimiria Souliei root (mu xiang), Pogostemon herb (huo xiang), Ginger rhizome (gan jiang), Blue Citrus fruit (qing pi), Citrus peel (chen pi), Lindera root (wu yao), Radish seed (lai fu zi), Cardamon fruit (sha ren), Licorice root (gan cao), Cyperus rhizome (xiang fu), Citrus fruit (zhi ke), Peppermint oil (bo he)&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Chzyme contains digestive enzymes used to promote food assimilation and to reduce indigestion and other digestive symptoms, with a well-known herbal formula. It was recently reformulated and is now gluten free. Peppermint oil (bo he) has been added for it\'s anti gas and anti spasmodic effects. Poria (fu ling), cardamom (sha ren), and red atractylodes (cang zhu) supplement the spleen and eliminate dampness. Magnolia (hou pu), vladimiria souliei (mu xiang), pogostemon (huo xiang), citrus (chen pi), regulate stomach Qi, relieve nausea and vomiting, and dry dampness. Radish seed (lai fu zi) and blue citrus (qing pi) reduce food stagnation and eliminate distension. Citrus fruit (aurantium) (chen pi) and lindera (wu yao) reduce distension and treat abdominal pain. Cyperus (xiang fu) is a harmonizing herb that releases emotional constraint in the liver and gallbladder channel and redirects rebellious qi. Ginger (gan jiang) relieves nausea and treats abdominal pain. Licorice (gan cao) treats ulcers and harmonizes the characteristics of the other herbs.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Internal: 2 capsules TID, with or between meals.&lt;br&gt;&lt;/p&gt;&lt;p&gt;90 capsules, 605 mg., 10 day supply&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Taken with meals it will help with food assimilation, and will reduce intestinal gas, bloating cramping, regurgitation, nausea, and diarrhea&lt;br&gt;&lt;/p&gt;&lt;p&gt;For gastroenteritis bacterial or viral&lt;/p&gt;&lt;p&gt;Treats motion sickness, hangover and the effects of jet lag&lt;/p&gt;&lt;p&gt;May be used to promote the absorption of herb and vitamin products&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'CHZYME', '', ''),
(360, 1, 'TAMU OIL', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Tamanu oil (Calophyllum inophyllum), Avocado oil, Peppermint essential oil&quot;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Tamu is a proprietary blend of three healing oils, which have soothing effects on the skin as well as pain relieving properties.Tamu oil contains Tamanu oil, a rare ingredient from the South Pacific used to promote new skin tissue, and accelerate wound healing. It is traditionally used topically in the treatment of wounds, insect bites, burns, (sunburn, chemical, radiation), acne, psoriasis, diabetic sores, anal fissures, herpes, dry skin, diaper rash. It is also traditionally used to treat nerve, joint, and muscle pain; for example, it has been used to treat sciatica, shingles, rheumatism and neuritis associated with leprosy. Tamanu oil must be specially processed to insure its therapeutic effect.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;External: Apply sparingly to the affected area, three or more times per day. For large areas can be mixed with other vegetable oils if desired. (Not to be used internally.)&lt;br&gt;&lt;/p&gt;&lt;p&gt;1 fluid ounce&lt;/p&gt;&lt;p&gt;Contraindications: Keep out of the eyes. Important to dilute if applied to the face. Contains tree nuts.&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Treats eczema, psoriasis, dry skin, skin burns, fungal skin infections, diabetic sores and ulcers, acne, anal fissures, hives, bedsores, chapped feet and hands, insect bites, diaper rash.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Nerve, muscle, and joint pain, especially of hot type such as shingles, sciatica, bursitis, post herpetic neuralgia, tendonitis&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'TAMU OIL', '', ''),
(361, 1, 'NASAL TABS', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Xanthium fruit (cang er zi), Cinnamon twig (gui zhi), Red Peony root (chi shao), Ligusticum root (chuan xiong), Angelica root (bai zhi), Eucalyptus leaf (Eucalyptus globulus), Cimicifuga rhizome (sheng ma), Licorice root (gan cao), Thyme leaf (Thymus vulgaris)&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Nasal Tabs 2 is based on several traditional formulas. Xanthium (cang er zi) is used to open nasal passages. It also has antibacterial properties. Cinnamon twig (gui zhi) is a warming botanical that reduces edema and stagnant phlegm with antibacterial and fever reducing effects. Angelica (bai zhi) reduces nasal congestion and pain. Ligusticum (chuan xiong) and Red Peony (chi shao) activate blood circulation. Cimicifuga (sheng ma) is used to guide the herbs upward, it also reduces pathogenic fungus. Eucalyptus leaf is processed to be rich in essential oil content. It reduces phlegm and nasal congestion. Thyme reduces bronchial spasms and possesses anti-fungal and antibacterial activity. Licorice (gan cao) is a harmonizing ingredient.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;May take up to 3 tablets QID. Highly sensitive patients should use this formula cautiously due to the essential oil content&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Treats acute and chronic sinus congestion with thick, yellow mucus, sinusitis, rhinitis, hay fever, colds and flu&lt;br&gt;&lt;/p&gt;&lt;p&gt;Addresses snoring due to facial congestion&lt;/p&gt;&lt;p&gt;Addresses earache due to sinus blockage&lt;/p&gt;&lt;p&gt;May be used for sinus headache&quot;&lt;/p&gt;', '', 'NASAL TABS', '', ''),
(363, 1, 'SKIN BALANCE', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Barbat Skullcap herb (ban zhi lian), Oldenlandia herb (bai hua she she cao), Gentiana root (long dan cao), Rehmannia (raw) root (sheng di huang), Viola herb / root (zi hua di ding), Siler root (fang feng), Lonicera flower (jin yin hua), Lysimachia herb (jin qian cao), Coptis rhizome (huang lian), Tang Kuei root (dang gui), Bupleurum root (chai hu), Carthamus flower (hong hua), Senna leaf (fan xie ye), Rhubarb rhizome (da huang)&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;This is an empirical formula based on Dr. Fung\'s 60 years experience.Skin Balance can be used for minor cases like pimples and localized itching to serious cases such as eczema or psoriasis. According to TCM these conditions are caused by heat, dampness, and toxins.Skin Balance is designed to treat skin inflammation. It is able to do four things: eliminate toxins, evaluating, reduce heat and dampness, and to nourish the skin through nourishing the blood.The following herbs are used to reduce the toxins: oldenlandia (bai hua she she cao), viola (zi hua di ding), and barbat skullcap (ban zhi lian). The following herbs are used to reduce the factors of heat and dampness: rehmannia root (sheng di huang), siler (fang feng), lonicera (jin yin hua), and coptis root (huang lian). Liver heat is also reduced by using gentiana (long dan cao) and bupleurum (chai hu).The following herbs are used to smooth bowel and water movements so as to purge the toxins out of the body: Senna leaf (fan xie ye), rhubarb (da huang), carthamus (hong hua), and lysimachia (jin qian cao).The following herb is used to nourish the blood, which will nourish the skin to facilitate recovery of skin tissues: Tang kuei (dang gui).&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Internal: 3 tablets TID to QID, between meals&lt;br&gt;&lt;/p&gt;&lt;p&gt;90 tablets, 650 mg., 10 day supply&lt;/p&gt;&lt;p&gt;Contraindications: Reduce dosage if diarrhea occurs&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Reduces itching and skin inflammation&lt;br&gt;&lt;/p&gt;&lt;p&gt;Treats conditions existing in psoriasis, eczema, rosacea, hives, and other inflammatory skin conditions&lt;/p&gt;&lt;p&gt;Removes toxins in blood which cause skin inflammation&lt;/p&gt;&lt;p&gt;Facilitates recovery of skin tissues once the itching and inflammation are under control&lt;/p&gt;&lt;p&gt;Moistens and nourishes the skin&quot;&lt;/p&gt;', '', 'SKIN BALANCE', '', ''),
(364, 1, 'STEM CELL', '&lt;p&gt;&lt;b&gt;INGREDIENTS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Vitamin D3 (as Cholecaliferol) 2000IU., Spirulina algae (Arthrospira spp.) 600mg., Blueberry fruit extract 5:1 (Vaccinum spp.) 500mg., Royal Jelly (enzyme treated) 333mg., Fucoidan 200mg.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Green Tea leaf extract (Camellia sinensis) 100mg., L-Carnosine 50mg.&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;FORMULA&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;StemCell is a proprietary herbal formula designed to improve the functioning of the body’s own(endogenous) stem cells. Current case studies with chronic pain patients indicate that this formula may help to initiate cellular repair, improve mood and reduce pain in patients with osteoarthritis, low back pain, carpal tunnel syndrome, and peripheral neuropathy.StemCell helps patients in chronic pain through a variety of mechanisms including tissue injury repair. In may be a benefit to other patients with chronic disease associated with aging. Many patients using the formula have reported improved mood and energy levels.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;ADMINISTRATION&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&quot;Internal: 2 capsules BID with or without meals.&lt;br&gt;&lt;/p&gt;&lt;p&gt;120 vegetarian capsules, 891.6mg., 30-day supply&quot;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;THERAPEUTIC ACTIONS&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;Chronic Pain Relief: peripheral neuropathy, arthritis, back pain, carpal tunnel,tendon problems.Improves healing response at the site of injuries.Improvement of energy, focus, mental function and relaxation.&lt;br&gt;&lt;/p&gt;&lt;p&gt;Promotes cerebral functioning.Supports cellular longevity.Anti-inflammatory and antioxidant effects.Increases the function of haemapoietic stem cell actions.&quot;&lt;/p&gt;', '', 'STEM CELL', '', ''),
(384, 1, 'Nasya Oil', '&lt;p&gt;Nasal Drops for Clear Breathing Lubricates the nasal passages Soothes and cleanses the tissues Promotes awareness and concentration The nose is the direct route to the brain and also the doorway to consciousness. It is the entrance for prana, the life force, which comes into the body through the breath. Healthy uncongested breathing is important to ensure proper flow of prana throughout the head and body. When an excess of bodily fluids accumulates in the sinus, throat, nose, or head areas, it is best eliminated through the nose. Administration of herbally infused oil, or nasya, helps facilitate this cleansing process. Nasya Oil soothes and protects the nasal passage while nourishing the tissues. Daily nasal lubrication helps to release tension in the head and relieve accumulated stress. Balancing for vata, pitta, and kapha, Nasya Oil is also traditionally said to improve quality of voice, strengthen vision, and promote mental clarity.&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Suggested Use:&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;With head tilted back, place 3 to 5 drops into each nostril and sniff.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Refined Sesame oil+, Olive oil+, Brahmi+, Calamus+, Skullcap+, Eucalyptus essential oil+, Certified Organic&lt;/p&gt;&lt;p&gt;Do not use if you are pregnant or have a cold, flu, or sinus infection.&lt;br&gt;&lt;/p&gt;', '', 'Nasya Oil', '', ''),
(385, 1, 'I Sleep Soundly™ tablets', '&lt;p&gt;Promotes Sound, Restful Sleep* Supports natural, healthy sleep*&lt;/p&gt;&lt;p&gt;Helps release tension from the muscles*&lt;/p&gt;&lt;p&gt;Soothes the nerves and calms the mind*&lt;/p&gt;&lt;p&gt;Promotes revitalization during sleep*&amp;nbsp;&lt;/p&gt;&lt;p&gt;In order to experience a deep, restful sleep the body must be fully relaxed and the mind calm. I Sleep Soundly contains natural muscle relaxants that help release the accumulated tension from a stressful day. In addition, the herbs also have a subtle, soothing effect on the mind that helps to ease the mental restlessness that can keep one tossing and turning throughout the night. Containing natural sleep promoters like chamomile and skullcap, I Sleep Soundly provides a deep sense of relaxation and calm that allows for a sound, healthy repose. As you rest, rejuvenating herbs like ashwagandha work to restore and revitalize the body and mind. Since I Sleep Soundly works to support the body\'s natural sleep process, you awake feeling rested, refreshed and full of vitality.*&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Suggested Use:&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Take 1–2 tablets 1/2 hour before going to bed, or as directed by your health practitioner.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Serving size:&lt;/b&gt; 2 tablets&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Servings per container: &lt;/b&gt;45&lt;/p&gt;&lt;p&gt;Each 500 mg tablet contains: Bhringaraj leaf (Eclipta alba)+, Valerian root (Valeriana officinalis )+, Skullcap herb (Scutellaria lateriflora )+, Passionflower herb (Passiflora incarnata )+, Guduchi stem (Tinospora cordifolia )+, Chamomile flower (Matricaria recutita )+, Ashwagandha root (Withania somnifera )+, Vidari Kanda root (Ipomoea digitata )+, Fennel seed (Foeniculum vulgare )+, Pippali fruit (Piper longum )+, Nutmeg seed (Myristica fragrans)+, Certified Organic&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Ayurvedic Energetics:&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Rasa (taste): bitter, pungent, sweet&lt;/p&gt;&lt;p&gt;Virya (action): slightly cooling&lt;/p&gt;&lt;p&gt;Vipaka (post-digestive effect): pungent&lt;/p&gt;&lt;p&gt;Doshas (constitutions): Balancing for all doshas&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Common Usage:&amp;nbsp;&lt;/b&gt;Used to promote sound, restful sleep.*&lt;/p&gt;&lt;p&gt;&lt;b&gt;Possible Contraindications:&amp;nbsp;&lt;/b&gt;Use with care during pregnancy&lt;/p&gt;', '', 'I Sleep Soundly™ tablets', '', ''),
(386, 1, 'ABUNDANCE TRIPLE HAPPINESS CITRINE CHARM BRACELET WITH GEMSTONE', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(255, 192, 0);&quot;&gt;CITRINE&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&lt;br&gt;- promotes abundance -&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; font-weight: bold;&quot;&gt;MANTRA:&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&amp;nbsp;be creative. be generous. be happy.&lt;br&gt;Citrine is an energizing stone that eliminates negative energy, gives you more optimism + enthusiasm, and boosts your self-esteem. Known as the “Success Stone,” it helps you manifest abundance + prosperity. As a healing stone, it emanates happiness and positivity, and encourages generosity.&lt;br&gt;Beads: 8mm&lt;br&gt;Circumference: 7.5&quot;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'ABUNDANCE TRIPLE HAPPINESS CITRINE CHARM BRACELET WITH GEMSTONE', '', ''),
(387, 1, 'CLARITY: TRIPLE HAPPINESS CRYSTAL QUARTZ CHARM BRACELET WITH GEMSTONE', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(208, 206, 206);&quot;&gt;CRYSTAL QUARTZ&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&lt;br&gt;- promotes clarity -&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; font-weight: bold;&quot;&gt;MANTRA:&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&amp;nbsp;be energy. be motion. be positive.&lt;br&gt;Crystal Quartz is a purifying stone that removes negative energy, fights emotional exhaustion and increases your motivation. As part of the quartz mineral family, crystal quartz is also called “rock crystal” or “clear quartz.”It aids in concentration, unlocks memories and promotes clear thinking. As a master healing stone, it lifts your spirits, enhances your optimism, and increases your physical and emotional energy levels.&lt;br&gt;Beads: 8mm&lt;br&gt;Circumference: 7.5&quot;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'CLARITY: TRIPLE HAPPINESS CRYSTAL QUARTZ CHARM BRACELET WITH GEMSTONE', '', ''),
(388, 1, 'LOVE: TRIPLE HAPPINESS ROSE QUARTZ CHARM BRACELET WITH GEMSTONE', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(255, 102, 204);&quot;&gt;ROSE QUARTZ&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&lt;br&gt;- promotes love -&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; font-weight: bold;&quot;&gt;MANTRA:&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&amp;nbsp;be love. be compassion. be restored.&lt;br&gt;Rose Quartz is a crystal of unconditional love that enhances compassion, peace, tenderness and comfort. Known as the &quot;Heart Stone&quot;, it helps you heal emotional wounds and resentments, allowing you to give and receive love from others.It attracts love, deepens your bond with friends and family, and helps you see the beauty in all beings and nature. As a nurturing stone, it is calming, reassuring and helps you find personal fulfillment. It strengthens your sense of empathy and helps you accept necessary change.&lt;br&gt;Beads: 8mm Circumference: 7.5&quot;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'LOVE: TRIPLE HAPPINESS ROSE QUARTZ CHARM BRACELET WITH GEMSTONE', '', ''),
(389, 1, 'CALMING: TRIPLE HAPPINESS AMAZONITE CHARM BRACELET WITH GEMSTONE', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(168, 208, 141);&quot;&gt;AMAZONITE&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&lt;br&gt;- promotes communication -&lt;br&gt;MANTRA: be calm. be truth. be harmony.&lt;br&gt;Amazonite is a healing stone that encourages you to discover your own truth, live in harmony, and more easily express your thoughts and feelings. Named after the Amazon River, where it was first discovered, amazonite helps to clear your head and manifest your dreams.It enhances loving communication toward yourself and others, while awakening compassion and empathy for those around you. As a soothing stone, it calms the mind, alleviates worry and provides balance in all aspects of your life.&lt;br&gt;Beads: 8mm&lt;br&gt;Circumference: 7.5&quot;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'CALMING: TRIPLE HAPPINESS AMAZONITE CHARM BRACELET WITH GEMSTONE', '', ''),
(390, 1, 'INTUITION: TRIPLE HAPPINESS SODALITE CHARM BRACELET WITH GEMSTONE	', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(0, 32, 96);&quot;&gt;SODALITE&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&lt;br&gt;- promotes intuition -&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; font-weight: bold;&quot;&gt;MANTRA:&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&amp;nbsp;be inspired. be creative. be balanced.&lt;br&gt;Sodalite is a calming stone that enhances creative thinking, promotes peace and tranquility, and leaves you feeling more inspired and balanced. As a mineral containing large amounts of salt, sodalite gets its name from the Greek words sodaand lithos, which means “salt stone.”&lt;br&gt;It enhances logic, truth and inner peace, while boosting positivity and filtering out negative energy. As an intuitive stone, it allows you to tap into your inner wisdom, trust your instincts and uncover your deepest dreams to help make them a reality.&lt;br&gt;Beads: 8mm&lt;br&gt;Circumference: 7.5&quot;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'INTUITION: TRIPLE HAPPINESS SODALITE CHARM BRACELET WITH GEMSTONE', '', ''),
(391, 1, 'CALMING: AMAZONITE + BLACKWOOD NAMASTE MALA WITH GEMSTONE	', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(0, 255, 204);&quot;&gt;&lt;br&gt;AMAZONITE&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;- promotes communication -&lt;br&gt;be calm. be truth. be harmony.&lt;br&gt;Amazonite is a healing stone that encourages you to discover your own truth, live in harmony, and more easily express your thoughts and feelings. Named after the Amazon River, where it was first discovered, Amazonite helps to clear your head and manifest your dreams.It enhances loving communication toward yourself and others, while awakening compassion and empathy for those around you. As a soothing stone, it calms the mind, alleviates worry and provides balance in all aspects of your life.&lt;br&gt;&lt;br&gt;Beads: 6mm&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'CALMING: AMAZONITE + BLACKWOOD NAMASTE MALA WITH GEMSTONE', '', ''),
(392, 1, 'COURAGE: TIGER\'S EYE + BLACKWOOD NAMASTE MALA WITH GEMSTONE', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(204, 153, 0);&quot;&gt;TIGER’S EYE&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&lt;br&gt;- promotes courage -&lt;br&gt;be powerful. be grounded. be mindful.&lt;br&gt;Tiger’s Eye is a grounding stone that provides harmony and balance, aids in releasing fear and anxiety, and attracts good luck and fortune. Named after its resemblance to the eye of a tiger, tiger’s eye makes you feel more powerful and gives you the confidence to try new things.It enhances creativity, helps you uncover your strengths and talents, and encourages you to use them to achieve your goals and dreams. As an intuitive stone, it sharpens your senses and perception, helps you remain focused and mindful, and allows you to stay grounded in the present moment.&lt;br&gt;Beads: 6mm&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'COURAGE: TIGER\'S EYE + BLACKWOOD NAMASTE MALA WITH GEMSTONE', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(393, 1, 'GOOD LUCK: GREEN AVENTURINE + ROBLES WOOD NAMASTE MALA WITH GEMSTONE', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(197, 224, 179);&quot;&gt;GREEN AVENTURINE&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;- promotes prosperity -&lt;br&gt;be compassion. be generous. be grateful.&lt;br&gt;Green Aventurine is a reaffirming stone that provides optimism, increases hope and opens your heart to new situations. Known as the “Stone of Opportunity,” it is believed to be one of the luckiest crystals in existence. It helps you manifest prosperity, enhances self-confidence and gives you the courage to embrace change. As a soothing stone, it eases emotional pain and helps you know that life’s challenges are never permanent.&lt;br&gt;Bead: 6mm&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'GOOD LUCK: GREEN AVENTURINE + ROBLES WOOD NAMASTE MALA WITH GEMSTONE', '', ''),
(394, 1, 'SERENITY: AMETHYST + ROSEWOOD NAMASTE MALA WITH GEMSTONE', '&lt;p&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial; color: rgb(112, 48, 160);&quot;&gt;AMETHYST&lt;/span&gt;&lt;span style=&quot;font-size: 11pt; font-family: Calibri, Arial;&quot;&gt;&lt;br&gt;- promotes spirituality -&lt;br&gt;be centered. be spiritual. be serene.&lt;br&gt;Amethyst is a spiritual stone that stills the mind, provides a sense of serenity and eases you into a meditative state. It helps you remain centered while enhancing wisdom and understanding. Aligned with the crown chakra, it brings a greater sense of spirituality.&lt;br&gt;Beads: 6mm&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'SERENITY: AMETHYST + ROSEWOOD NAMASTE MALA WITH GEMSTONE', '', ''),
(404, 1, 'Refillable Compact', '&lt;p&gt;For on-the-go touchups, bring the makeup you love with you in this elegant slim compact. Designed to keep makeup fresh and protected, our mirrored compact is refillable with PurePressed Base, PureMatte, Beyond Matte and Bronzer Refills.&amp;nbsp;Silver or Rose Gold&lt;br&gt;&lt;/p&gt;', '', 'Refillable Compact', '', ''),
(406, 1, 'Circle\\Delete® Concealer', '&lt;p&gt;An eye conditioner and concealer containing moringa butter and avocado oil, both high in vitamins A, C, D and E. Contains green tea extract, a potent antioxidant.Conceals and diminishes the appearance of dark under-eye circles.&lt;/p&gt;&lt;p&gt;Softens the appearance of fine lines around eyes.&lt;/p&gt;&lt;p&gt;The two colors can be blended in order to achieve the exact shade required.&lt;/p&gt;&lt;p&gt;No. 1 neutralizes redness.&lt;/p&gt;&lt;p&gt;No. 2 neutralizes blue, violet &amp;amp; grey.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;#1 - Yellow - light and medium yellow&lt;/p&gt;&lt;p&gt;#2 - Peach - light and medium peach&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Moringa Pterygosperma (Moringa) Seed Oil, Persea Gratissima (Avocado) Oil, Helianthus Annuus (Sunflower) Seed Oil, Ricinus Communis (Castor) Seed Oil, Moringa Oil/Hydrogenated Moringa Oil Esters, Copernicia Cerifera Cera, Cera Alba (Beeswax), Tribehenin, Boron Nitride, Caprylic/Capric Triglyceride, Cucumis Sativus (Cucumber) Fruit Extract, Camellia Sinensis (Green Tea) Leaf Extract, Pinus Strobus (Pine) Bark Extract, Crithmum Maritimum Extract, Laminaria Ochroleuca Extract, Bisabolol, Vitis Vinifera (Grape) Seed Extract, Ascorbyl Palmitate. [+/- (May Contain) Titanium Dioxide (Ci 77891), Iron Oxides (Ci 77489, Ci 77491, Ci 77492, Ci 77499)]&lt;/p&gt;', '', 'Circle\\Delete® Concealer', '', ''),
(407, 1, 'Active Light® Under-eye Concealer', '&lt;p&gt;A nourishing antioxidant formula that helps to reduce under-eye puffiness as it conceals and brightens dark shadows.An under-eye concealer and facial highlighter that refracts light for a soft-focus finish. Provides sheer to medium coverage for under-eye shadows.Conceals while it brightens.Cucumber and White Tea Extract calm tired eyes and help to reduce puffiness.Crambe Maritima Leaf Extract helps to lessen the appearance of dark circles and also helps to reduce puffiness.The added benefit of Avocado and Sunflower Oil gently nourishes the delicate eye area.Very little product is needed for complete coverage.&lt;/p&gt;&lt;p&gt;Apply to the whole under-eye area and even around the nose, lips or any area that needs highlighting. The brush is designed to fit easily into the recess between the nose and the inner corner of the eye.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;No. 1 - light yellow&lt;/p&gt;&lt;p&gt;No. 2 - medium yellow&lt;/p&gt;&lt;p&gt;No. 3 - light peach&lt;/p&gt;&lt;p&gt;No. 4 - medium peach&lt;/p&gt;&lt;p&gt;No. 5 - medium yellow gold&lt;/p&gt;&lt;p&gt;No. 6 - medium dark peachy brown&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Isopropyl Jojobate, Isostearyl Neopentanoate, Persea Gratissima (Avocado) Oil, Helianthus Annuus (Sunflower) Seed Oil, Mica, Titanium Dioxide (CI 77891), Cera Alba (Beeswax), Euphorbia Cerifera (Candelilla) Wax, Hydrated Silica, Boron Nitride, Rosa Canina (Rosehips) Fruit Oil, Caprylic/Capric Triglyceride, Cucumis Sativus (Cucumber) Fruit Extract, Camellia Sinensis (White Tea) Leaf Extract, Rosmarinus Officinalis (Rosemary) Leaf Extract, Crambe Maritima Leaf Extract, Laminaria Ochroleuca Extract, Ascorbyl Palmitate, [+/- (May Contain) Iron Oxides (CI 77489, CI 77491, CI 77492, CI 77499), Chromium Oxide Greens (CI 77288)]&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Active Light® Under-eye Concealer', '', ''),
(411, 1, 'Beyond Matte® HD Matifying Powder', '&lt;p&gt;Eliminate shine, refine the appearance of pores, reduce transfer and achieve a smooth, professional matte finish.Ultra water resistant. Sensitive-skin appropriate, HDTV approved.&lt;/p&gt;&lt;p&gt;Proprietary technology eliminates shine, lessens transference, refines the appearance of pores and gives skin a flawless, smooth appearance. Transclucent&lt;/p&gt;&lt;p&gt;&lt;b&gt;Ingredients: &lt;/b&gt;Mica (CI 77019), Titanium Dioxide (CI 77891), Simmondsia Chinensis (Jojoba) Seed Oil, Zinc Oxide (CI 77947), Acrylates Crosspolymer, Silica, Ascorbyl Palmitate. May Contain: Iron Oxides (CI 77489, CI77491, CI 77492, CI 77499), Ultramarines (CI 77007).&lt;/p&gt;', '', 'Beyond Matte® HD Matifying Powder', '', ''),
(414, 1, 'Balance Hydration Spray', '&lt;p&gt;Our Hydration Sprays have been reformulated and awarded ECOCERT’s Natural and Organic certification! You\'ll love their fresh, clean fragrances and you\'ll love what they do for the health of your skin.A hydration spritz formulated specifically to help balance skin’s oil production and pH.&lt;/p&gt;&lt;p&gt;Orange Essential Oil, Orange Peel Extract, Grapefruit Peel Extract and Algae Extract calm and feed the skin.&lt;/p&gt;&lt;p&gt;The added bonus to Balance is Green Tea Extract. Studies have shown that Green Tea Extract at 3% is measurably beneficial for acne-prone skin, and that’s the exact percentage we’ve used.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Ingredients: &lt;/b&gt;Aqua/Water/Eau, Aloe Barbadensis Leaf Juice Powder*, Citrus Grandis (Grapefruit) Peel Extract*, Citrus Aurantium Dulcis (Orange) Peel Extract*, Rosmarinus Officinalis (Rosemary) Leaf Extract*, Chamomilla Recutita (Matricaria) Flower Extract*, Olea Europaea (Olive) Leaf Extract*, Laminaria Digitata (Algae) Extract*, Camellia Sinensis (Green Tea) Leaf Extract*, Raphanus Sativus (Radish) Root Extract Citrus Aurantium Dulcis (Orange) Oil, Alcohol***INGREDIENT FROM ORGANIC FARMING&lt;/p&gt;&lt;p&gt;** MADE USING ORGANIC INGREDIENTS 100% of the total ingredients are from natural origin 30.01% of the total ingredients are from Organic Farming&lt;/p&gt;', '', 'Balance Hydration Spray', '', ''),
(415, 1, 'Lemongrass Love Hydration Spray', '&lt;p&gt;Must-have moisture with a refreshing hint of lemon.A soothing facial mist with a lemony scent.Hydrates, conditions and protects the skin.Minimizes oiliness and the appearance of pores.&lt;/p&gt;&lt;p&gt;An instant pick-me-up that helps alleviate the feeling of jet lag and stress.Created without the use of parabens, sulfates and phthalates.Certified ECOCERT Natural &amp;amp; Organic.&lt;/p&gt;&lt;p&gt;Ideal for all skin types.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Ingredients:&amp;nbsp;&lt;/b&gt;Aqua/Water/Eau, Aloe Barbadensis Leaf Juice*, Leuconostoc/Radish Root Ferment Filtrate, Glycerin**, Cymbopogon Flexuosus (Lemon Grass) Oil*, Citrus Sinensis (Orange) Peel Oil Expressed, Calendula Officinalis (Calendula) Flower Extract*, Chamomilla Recutita (Matricaria) Flower Extract*, Cymbopogon Citratus (Lemon Grass) Extract*, Citrus Limon (Lemon) Peel Extract*, Citrus Aurantium Dulcis (Orange) Oil*, Helianthus Annuus (Sunflower) Seed Oil*, Lavandula Angustifolia (Lavender) Oil*, Alcohol**&lt;/p&gt;', '', 'Lemongrass Love Hydration Spray', '', ''),
(399, 1, 'Beyond Matte Liquid Foundation', '&lt;p&gt;A clean, weightless, multitasking 3-in-1 foundation with buildable, stay-put coverage and a natural-looking semi-matte finish. Formulated with skin-nourishing, plant-based ingredients. 100% vegan and always cruelty-free.Three-in-one primer, concealer, foundation.Semi-matte, photo-ready finish.&lt;/p&gt;&lt;p&gt;Available in 18 self-adjusting shades.Lightweight and long-wearing.Medium-to-full, buildable coverage.&lt;/p&gt;&lt;p&gt;Reduces the appearance of shine and creates the look of smooth, even skin.Minimizes the appearance of pores.Suitable for all skin types.Free from phthalates, parabens, GMO, synthetic preservatives, synthetic fragrance, talc, nanoparticles and mineral oil.Clean and safe: clinically tested, dermatologist tested, allergy tested, sensitization tested, noncomedogenic.&lt;/p&gt;&lt;p&gt;M1 - fair neutral&lt;/p&gt;&lt;p&gt;M2 - fair to light with peach/yellow undertones&lt;/p&gt;&lt;p&gt;M3 - light to medium with peach/pink undertones&lt;/p&gt;&lt;p&gt;M4 - light to medium with neutral undertones&lt;/p&gt;&lt;p&gt;M5 - light to medium with gold undertones&lt;/p&gt;&lt;p&gt;M6 - medium with peach/gold undertones&lt;/p&gt;&lt;p&gt;M7 - medium with beige gold undertones&lt;/p&gt;&lt;p&gt;M8 - medium neutral&lt;/p&gt;&lt;p&gt;M9 - medium to dark with gold/brown undertones&lt;/p&gt;&lt;p&gt;M10 - medium to dark with gold/peach/brown undertones&lt;/p&gt;&lt;p&gt;M11 - dark with peach/pink undertones&lt;/p&gt;&lt;p&gt;M12 - dark with peach/yellow undertones&lt;/p&gt;&lt;p&gt;M13 - dark with gold/brown undertones&lt;/p&gt;&lt;p&gt;M14 - deep brown with golden undertones&lt;/p&gt;&lt;p&gt;M15 - deep brown with sienna undertones&lt;/p&gt;&lt;p&gt;M16 - Deep brown with red/pink undertones&lt;/p&gt;&lt;p&gt;M17 - deeper chocolate brown with red undertones&lt;/p&gt;&lt;p&gt;M18 - deeper rich chocolate brown with neutral undertones&lt;/p&gt;&lt;p&gt;&lt;b&gt;Ingredients&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Aqua/Water/Eau, Octyldodecyl Neopentanoate, Isononyl Isononanoate, Titanium Dioxide (CI 77891), PEG-10 Dimethicone, Glycerin, Stearic Acid, PEG/PPG-18/18 Dimethicone, Caprylic/Capric Triglyceride, Sorbitan Trioleate, Apium Graveolens (Celery) Seed Extract, Linum Usitatissimum (Linseed) Seed Extract, Lonicera Caprifolium (Honeysuckle) Flower Extract (and) Lonicera Japonica (Honeysuckle) Flower Extract, Simmondsia Chinensis (Jojoba) Seed Oil, Stearoxymethicone/Dimethicone Copolymer, Triethoxycaprylylsilane, Sodium Chloride, Tamarindus Indica (Tamarind) Extract, Tocopherol May Contain: Iron Oxides (CI 77489, CI 77491, CI 77492, CI 77499), Chromium Oxide Greens (CI 77288)Celery Seed and Linseed Extract&lt;/p&gt;&lt;p&gt;A proprietary blend that helps minimize the appearance of pores, creates the look of smooth, even skin and reduces the appearance of shine.&lt;/p&gt;&lt;p&gt;Tamarind Extract enhances the appearance of skin elasticity &amp;amp; smoothness and moisturizes the skin.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', '', 'Beyond Matte Liquid Foundation', '', ''),
(416, 1, '12 Days of Celestial Skincare Makeup Collection ', '&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;Exclusive collection of jane iredale best sellers and holiday favorites.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Contents:&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Smooth Affair&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Facial Primer &amp;amp; Brightener&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Champagne Silk Eye Shere&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Liquid Eye Shadow&lt;br style=&quot;box-sizing: inherit;&quot;&gt;24-Karat Gold Dust Shimmer Powder&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Spice Lip Pencil&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Black/Brown Eye Pencil&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Pencil Sharpener&lt;br style=&quot;box-sizing: inherit;&quot;&gt;PureLash&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Lash Extender &amp;amp; Conditioner Mini&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Sheer LipDrink&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Lip Balm Mini&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Forever Red Just Kissed&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Lip and Cheek Stain Mini&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Black Ice Longest Lash Thickening and Lengthening Mascara Mini&lt;br style=&quot;box-sizing: inherit;&quot;&gt;POMMISST™ Hydration Spray Mini&lt;br style=&quot;box-sizing: inherit;&quot;&gt;D20™ Hydration Spray Mini&lt;/p&gt;&lt;div class=&quot;is-flex is-justify-center&quot; style=&quot;box-sizing: inherit; display: flex; justify-content: center; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;&lt;strong class=&quot;is-uppercase text-center &quot; style=&quot;box-sizing: inherit; text-transform: uppercase;&quot;&gt;SKIN HEALTH IS THE ULTIMATE FOUNDATION&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&lt;/strong&gt;&lt;/div&gt;', '', '12 Days of Celestial Skincare Makeup Collection ', '12 Days of Celestial Skincare Makeup Collection ', ''),
(417, 1, 'Starry Eyes Mascara Set ', '&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;PureLash&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Lash Extender &amp;amp; Conditioner&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Primes and enhances the appearance of lash thickness and length.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• May be used on brows and as a nighttime lash conditioner.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;&lt;br style=&quot;box-sizing: inherit;&quot;&gt;&lt;em style=&quot;box-sizing: inherit;&quot;&gt;Black Ice&lt;/em&gt;&amp;nbsp;Longest Lash Thickening and Lengthening Mascara&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Triple-length cellulose fibers enhance the appearance of lash thickness and length.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• High-quality, jumbo-sized hollow fiber brush easily defines and separates lashes.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Reduces splitting and breaking.&lt;/p&gt;&lt;div class=&quot;is-flex is-justify-center&quot; style=&quot;box-sizing: inherit; display: flex; justify-content: center; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;&lt;strong class=&quot;is-uppercase text-center &quot; style=&quot;box-sizing: inherit; text-transform: uppercase;&quot;&gt;SKIN HEALTH IS THE ULTIMATE FOUNDATION&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&lt;/strong&gt;&lt;/div&gt;', '', 'Starry-Eyes-Mascara-Set', 'Mascara Set ', 'Mascara '),
(418, 1, 'Illuminating Lights Face Palette ', '&lt;p&gt;&lt;a href=&quot;https://janeiredale.com/products/illuminating-lights-face-palette#&quot; class=&quot;active&quot; style=&quot;box-sizing: inherit; color: rgb(65, 64, 66); cursor: pointer; transition: color 0.3s ease-in-out 0s; padding: 35px 0px; display: inline !important; border-top: 1px solid rgb(225, 220, 213); text-transform: uppercase; font-size: 14px; line-height: 16px; letter-spacing: 2px; font-family: Poppins, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;DETAILS&lt;/a&gt;&lt;br&gt;&lt;/p&gt;&lt;div class=&quot;content&quot; style=&quot;box-sizing: inherit; font-size: 15px; line-height: 23px; color: rgb(65, 64, 66); padding-bottom: 24px; font-family: Poppins, sans-serif;&quot;&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px;&quot;&gt;• Complementary powders create lit-from-within looks.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Buildable and blendable for controlled intensity.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Blush shades brighten any complexion.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Highlighter shades create subtle light on the high points of the face.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Bronzer highlights dark to deep skin tones &amp;amp; contours fair to medium-dark skin tones.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Finish powder delivers a perfect soft-focus finish.&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px;&quot;&gt;Blush&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Gleam – shimmery light apricot&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Beam – shimmery guava&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px;&quot;&gt;Bronzer&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Glow – luminous bronze&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px;&quot;&gt;Highlighter&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Twinkle – shimmery sheer peach&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Starlight – shimmery sheer gold&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px;&quot;&gt;Finish Powder&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Moonlight – soft yellow pearl&lt;/p&gt;&lt;div class=&quot;is-flex is-justify-center&quot; style=&quot;box-sizing: inherit; display: flex; justify-content: center;&quot;&gt;&lt;strong class=&quot;is-uppercase text-center &quot; style=&quot;box-sizing: inherit; text-transform: uppercase;&quot;&gt;SKIN HEALTH IS THE ULTIMATE FOUNDATION&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&lt;/strong&gt;&lt;/div&gt;&lt;/div&gt;', '', 'Illuminating Lights Face Palette', '', ''),
(419, 1, 'Holiday Lip Kit ', '&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;• Easy to blend with excellent color payoff.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Nourishing Castor Seed Oil and Vitamin E condition, soften and smooth lips.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Sleek pencil design gives precise application.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;• Pointed tip is easy to achieve with included Jumbo Pencil Sharpener.&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;&lt;em style=&quot;box-sizing: inherit;&quot;&gt;Shimmer Lip Kit&lt;/em&gt;&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Blissful PlayOn&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Lip Crayon – shimmering sheer nude&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Saucy PlayOn® Lip Crayon – creamy hot coral&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Jumbo Pencil Sharpener&lt;br style=&quot;box-sizing: inherit;&quot;&gt;&lt;br style=&quot;box-sizing: inherit;&quot;&gt;&lt;em style=&quot;box-sizing: inherit;&quot;&gt;Dazzle Lip Kit&lt;/em&gt;&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Naughty PlayOn&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&amp;nbsp;Lip Crayon – creamy brick red&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Sunny PlayOn® Lip Crayon – vivid rosy pink&lt;br style=&quot;box-sizing: inherit;&quot;&gt;Jumbo Pencil Sharpener&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; margin-bottom: 1em; padding: 0px; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;div class=&quot;is-flex is-justify-center&quot; style=&quot;box-sizing: inherit; display: flex; justify-content: center; color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;&lt;strong class=&quot;is-uppercase text-center &quot; style=&quot;box-sizing: inherit; text-transform: uppercase;&quot;&gt;SKIN HEALTH IS THE ULTIMATE FOUNDATION&lt;sup style=&quot;box-sizing: inherit; font-size: 11.25px;&quot;&gt;®&lt;/sup&gt;&lt;/strong&gt;&lt;/div&gt;', '', 'Holiday Lip Kit ', '', ''),
(420, 1, 'Lounging Sock ', '&lt;p&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Raleway, &amp;quot;Helvetica Neue&amp;quot;, Verdana, Arial, sans-serif; font-size: 14px;&quot;&gt;Keep your toes happy, relaxed and warm in our incredibly comfortable lounging socks.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: Raleway, &amp;quot;Helvetica Neue&amp;quot;, Verdana, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: Raleway, &amp;quot;Helvetica Neue&amp;quot;, Verdana, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Raleway, &amp;quot;Helvetica Neue&amp;quot;, Verdana, Arial, sans-serif; font-size: 14px;&quot;&gt;One Size fits most&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Lounging Socks ', '', ''),
(421, 1, '24-Karat Gold Dust ', '&lt;p&gt;&lt;span style=&quot;color: rgb(65, 64, 66); font-family: Poppins, sans-serif; font-size: 15px;&quot;&gt;For a shimmering, ethereal look, sweep our gold dust across cheeks, eyes, lips and even your décolletage. You can even blend it into your favorite hair product for glittering up-do.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', '24-Karat Gold Dust ', '', ''),
(422, 1, 'Wood Element Clariyfing and Regenerating Product Trio ', '&lt;p&gt;&lt;span style=&quot;color: rgb(92, 92, 92); font-family: proxima-nova; font-size: 20px; white-space: pre-wrap;&quot;&gt;The Wood element clarifying and regenerating package of energetic facial serum, clay mask and day cream &lt;/span&gt;&lt;span style=&quot;color: rgb(92, 92, 92); font-family: proxima-nova; font-size: 20px; white-space: pre-wrap;&quot;&gt;is formulated to clarify oily skin with blackheads or hyper-pigmentation (spots). This product trio cleanses and clarifies while balancing oil production. It is moisturizing, nourishing, revitalizing, circulation-promoting and anti-aging.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(92, 92, 92); font-family: proxima-nova; font-size: 20px; white-space: pre-wrap;&quot;&gt;Save 10% when you purchase all three products  of this synergistic trio! &lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Seasonal Skincare Energetic skincare ', 'Wood Element Energetic Skincare ', '', ''),
(423, 1, 'Earth Element Detoxifying and Normalizing Product Trio', '&lt;p class=&quot;&quot; id=&quot;yui_3_17_2_1_1618762520508_810&quot; style=&quot;font-family: proxima-nova; line-height: 2em; font-size: 20px; margin-bottom: 2em; color: rgb(92, 92, 92); white-space: pre-wrap;&quot;&gt;The Earth element detoxifying and normalizing package of phyt\'ether, clay mask  and day cream is formulated to clear skin and soothe areas of redness or irritation. This product trio helps to clear blemishes and acne, release toxicity, and reduce enlarged pores. It promotes circulation of the lymph vital to purified skin.&lt;/p&gt;&lt;p class=&quot;&quot; id=&quot;yui_3_17_2_1_1618762520508_810&quot; style=&quot;font-family: proxima-nova; line-height: 2em; font-size: 20px; margin-bottom: 2em; color: rgb(92, 92, 92); white-space: pre-wrap;&quot;&gt;&lt;strong&gt;Save 10% when you buy all three products in this synergistic product trio&lt;/strong&gt;&lt;/p&gt;', '', 'Earth Trio ', '', ''),
(424, 1, 'Earth Yogi Body Gel &amp; Le sérum silhouette -Contouring Serum', '&lt;p&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Combine our 2 Energetic Body Products to uncover results:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Yogi Body Gel: A purifying and normalizing gel that supports detoxification and the flow of lymph. It revitalizes the skin and helps balance emotions. Use wherever energy stimulation is needed. Apply to entire body especially the abdominal area, the solar plexus, to help balance the Earth emotion of overthinking and feeling stuck to restore your sense of knowing and creative true nature. Do not wash away. With anti-cellulite Delipidol from pomegranate proven to significantly reduce fat nodes after 28 days of treatment, green tea for contouring, aloe and apricot kernel oils to hydrate and nourish, and essential oils of lemon&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Contouring Serum: Contouring Body Serum protects the DNA of skin cells and supports the stimulation of microcirculation, vital energy flow and lymph drainage. It encourages destruction of unnecessary fat cells and the elimination of dead fat cells. Rich in minerals and Omega 3 fatty acids (among other unique ingredients), it is hydrating, softening, nourishing, and mineralizing. With algae and organic green tea plus essential oils of cinnamon, thyme, peppermint, niaouli, rosemary, lemon, eucalyptus and lavender, Contouring Serum assists with weight loss, diminishing cellulite while leaving the skin firmed, soft, and silky.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;b&gt;10% off Regularly $161.00 Now $144.90&lt;/b&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Earth Yogi Body Gel and Serum ', '', ''),
(425, 1, 'Metal Element Mineralizing and Regulating Product Trio', '&lt;p class=&quot;MsoNormal&quot;&gt;The Metal element mineralizing and regulating package of\r\nfacial serum, clay mask and day cream is formulated to mineralize and\r\nregulation dry dull, lifeless looking skin. Rich in essential trace minerals,\r\nthis product trio is hydrating with antioxidant properties and appropriately\r\nnourishes, moisturizes and revitalizes the skin.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;Save 10% when you buy all three products in this synergistic\r\nproduct trio.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;Due to the presence of potent natural essential oils, all\r\nproducts have the following warning: “Not suitable for pregnant and\r\nbreastfeeding women.&quot;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', '', 'Energetic Skincare, Trio ', '', ''),
(426, 1, 'Fire Element Calming and Soothing Product Trio', '&lt;p class=&quot;MsoNormal&quot;&gt;The Fire element calming and soothing package of facial\r\nserum, clay mask and day cream is formulated to balance sensitive skin and\r\nsoothe areas of redness or irritation. This product trio is calming to broken\r\ncapillaries (small blood vessels) as it cools down excessive heat that may be\r\ncaused by menopause or warming beverages like red wine and foods that are\r\nspicy.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;Save 10% when you buy all three products in this synergistic\r\nproduct trio.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;Due to the presence of potent natural essential oils, all\r\nproducts have the following warning: “Not suitable for pregnant and\r\nbreastfeeding women.&quot;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', '', 'Energetic Skincare, Trio ', '', ''),
(427, 1, 'Water Element Hydrating, Firming and Toning Trio ', '&lt;p class=&quot;MsoNormal&quot;&gt;The Water element hydrating, firming and toning package of\r\nfacial serum, clay mask and day cream is formulated to hydrate and provide\r\nenergetic protection to skin lacking tone and showing signs of aging. This\r\nproduct trio promotes water circulation in the skin, improving tone and\r\nincreasing elasticity.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot;&gt;Save 10% when you buy all three products in this synergistic\r\nproduct trio.&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot;&gt;Due to the presence of potent natural essential oils, all\r\nproducts have the following warning: “Not suitable for pregnant and\r\nbreastfeeding women.&quot;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;', '', 'Energetic Skincare, Trio ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(464, 416, 1, 0, 0, '0.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2548, 416, 'catalog/Holiday2020_ALTimages_PDP_VaultOpen_2000x.jpg', 0),
(2543, 418, '', 0),
(2549, 419, 'catalog/65301_Holiday2020_Dazzle_PDP_1_a82ae923-d569-4d8a-b52d-cad36fcdd296_200x.jpg', 0),
(2550, 419, 'catalog/Holiday2020_ALTimages_PDP_DazzleSwatches_200x.jpg', 0),
(2551, 419, 'catalog/Holiday2020_ALTimages_PDP_ShimmerSwatches_200x.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(237, 120, 11, '', 1),
(238, 130, 11, '', 1),
(239, 131, 11, '', 1),
(240, 133, 11, '', 1),
(241, 134, 11, '', 1),
(242, 132, 11, '', 1),
(243, 129, 11, '', 1),
(244, 171, 11, '', 1),
(245, 178, 11, '', 1),
(248, 185, 11, '', 1),
(249, 189, 11, '', 1),
(250, 192, 11, '', 1),
(251, 190, 11, '', 1),
(252, 194, 11, '', 1),
(253, 198, 11, '', 1),
(256, 399, 20, '', 1),
(262, 406, 24, '', 1),
(263, 407, 25, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
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
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(58, 237, 120, 11, 47, 10000, 1, '23.0000', '-', 0, '+', '1.75000000', '-'),
(57, 237, 120, 11, 46, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(60, 238, 130, 11, 47, 10000, 1, '13.0000', '-', 0, '+', '1.75000000', '-'),
(59, 238, 130, 11, 46, 9997, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(62, 239, 131, 11, 47, 9999, 1, '13.0000', '-', 0, '+', '1.75000000', '-'),
(61, 239, 131, 11, 46, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(64, 240, 133, 11, 47, 9998, 1, '13.0000', '-', 0, '-', '1.75000000', '+'),
(63, 240, 133, 11, 46, 9996, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(66, 241, 134, 11, 47, 9997, 1, '13.0000', '-', 0, '+', '1.75000000', '-'),
(65, 241, 134, 11, 46, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(68, 242, 132, 11, 47, 10000, 1, '13.0000', '-', 0, '+', '1.75000000', '-'),
(67, 242, 132, 11, 46, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(70, 243, 129, 11, 47, 9997, 1, '26.0000', '-', 0, '+', '1.75000000', '-'),
(69, 243, 129, 11, 46, 9993, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(72, 244, 171, 11, 87, 9999, 1, '45.0000', '+', 0, '+', '10.25000000', '+'),
(71, 244, 171, 11, 86, 9995, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(74, 245, 178, 11, 87, 10000, 1, '27.0000', '+', 0, '+', '10.25000000', '+'),
(73, 245, 178, 11, 86, 9996, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(80, 248, 185, 11, 55, 9998, 1, '22.4000', '+', 0, '+', '0.00000000', '+'),
(79, 248, 185, 11, 54, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(82, 249, 189, 11, 90, 9997, 1, '25.0000', '+', 0, '+', '0.00000000', '+'),
(81, 249, 189, 11, 89, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(85, 250, 192, 11, 90, 10000, 1, '51.1200', '+', 0, '+', '0.00000000', '+'),
(84, 250, 192, 11, 89, 9999, 1, '18.9000', '+', 0, '+', '0.00000000', '+'),
(83, 250, 192, 11, 54, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(87, 251, 190, 11, 92, 9999, 1, '10.5600', '+', 0, '+', '0.00000000', '+'),
(86, 251, 190, 11, 91, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(89, 252, 194, 11, 94, 10000, 1, '12.8000', '+', 0, '+', '0.00000000', '+'),
(88, 252, 194, 11, 93, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(91, 253, 198, 11, 89, 10000, 1, '16.4100', '+', 0, '+', '0.00000000', '+'),
(90, 253, 198, 11, 88, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(96, 256, 399, 20, 97, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(97, 256, 399, 20, 98, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(98, 256, 399, 20, 99, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(99, 256, 399, 20, 100, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(100, 256, 399, 20, 101, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(101, 256, 399, 20, 102, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(102, 256, 399, 20, 103, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(103, 256, 399, 20, 104, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(104, 256, 399, 20, 105, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(105, 256, 399, 20, 106, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(106, 256, 399, 20, 107, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(107, 256, 399, 20, 108, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(108, 256, 399, 20, 109, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(109, 256, 399, 20, 110, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(110, 256, 399, 20, 111, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(111, 256, 399, 20, 112, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(112, 256, 399, 20, 113, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(113, 256, 399, 20, 114, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(178, 262, 406, 24, 157, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(179, 262, 406, 24, 158, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(180, 263, 407, 25, 161, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(181, 263, 407, 25, 159, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(182, 263, 407, 25, 164, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(183, 263, 407, 25, 162, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(184, 263, 407, 25, 160, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(185, 263, 407, 25, 163, 10000, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(140, 423),
(167, 423),
(423, 140),
(423, 167);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(107, 104),
(107, 110),
(120, 104),
(120, 110),
(121, 104),
(121, 110),
(122, 104),
(122, 110),
(123, 104),
(123, 111),
(124, 104),
(124, 111),
(125, 104),
(125, 111),
(126, 104),
(126, 111),
(127, 104),
(127, 111),
(128, 104),
(128, 111),
(129, 104),
(129, 112),
(130, 104),
(130, 112),
(131, 104),
(131, 112),
(132, 104),
(132, 112),
(133, 104),
(133, 112),
(134, 104),
(134, 112),
(135, 104),
(135, 112),
(136, 104),
(136, 112),
(137, 104),
(137, 112),
(138, 104),
(138, 112),
(139, 104),
(139, 112),
(140, 104),
(140, 113),
(141, 104),
(141, 113),
(142, 104),
(142, 113),
(143, 104),
(143, 113),
(144, 104),
(144, 113),
(150, 104),
(150, 115),
(151, 104),
(151, 115),
(152, 104),
(152, 115),
(153, 104),
(153, 115),
(154, 104),
(154, 115),
(155, 104),
(155, 115),
(156, 104),
(156, 115),
(157, 104),
(157, 115),
(158, 104),
(158, 116),
(159, 104),
(159, 116),
(160, 104),
(160, 117),
(163, 104),
(163, 119),
(164, 104),
(164, 119),
(165, 105),
(166, 105),
(167, 105),
(168, 105),
(169, 105),
(170, 105),
(171, 105),
(172, 105),
(173, 105),
(174, 105),
(175, 105),
(176, 105),
(177, 105),
(177, 119),
(178, 120),
(181, 120),
(182, 120),
(184, 107),
(185, 107),
(186, 107),
(188, 107),
(189, 107),
(190, 107),
(191, 107),
(192, 107),
(193, 107),
(194, 107),
(195, 107),
(196, 107),
(197, 107),
(198, 107),
(199, 107),
(201, 108),
(203, 108),
(204, 108),
(205, 108),
(206, 108),
(207, 108),
(208, 108),
(210, 108),
(211, 108),
(212, 108),
(213, 108),
(214, 108),
(215, 108),
(216, 108),
(217, 108),
(218, 108),
(219, 108),
(221, 108),
(222, 108),
(223, 108),
(224, 108),
(225, 108),
(226, 108),
(227, 108),
(228, 108),
(229, 108),
(230, 121),
(230, 125),
(231, 121),
(231, 125),
(232, 121),
(232, 125),
(233, 121),
(233, 125),
(234, 121),
(234, 125),
(235, 121),
(235, 125),
(236, 121),
(236, 125),
(237, 121),
(237, 125),
(238, 121),
(238, 125),
(239, 121),
(239, 125),
(240, 121),
(240, 125),
(241, 121),
(241, 125),
(242, 121),
(242, 124),
(244, 121),
(244, 124),
(247, 121),
(247, 124),
(248, 121),
(248, 124),
(250, 121),
(250, 124),
(251, 121),
(251, 124),
(253, 121),
(253, 124),
(255, 121),
(255, 124),
(261, 121),
(261, 124),
(273, 121),
(273, 123),
(274, 121),
(274, 123),
(277, 121),
(277, 123),
(279, 121),
(279, 123),
(288, 121),
(288, 123),
(291, 121),
(291, 123),
(295, 121),
(295, 123),
(297, 121),
(297, 123),
(308, 121),
(308, 122),
(310, 121),
(310, 122),
(311, 121),
(311, 122),
(312, 121),
(312, 122),
(314, 121),
(314, 122),
(319, 121),
(319, 122),
(320, 121),
(320, 122),
(321, 121),
(321, 122),
(323, 121),
(323, 122),
(329, 121),
(329, 122),
(332, 121),
(332, 122),
(339, 121),
(339, 122),
(342, 121),
(342, 122),
(356, 107),
(357, 107),
(358, 107),
(359, 107),
(360, 107),
(361, 107),
(363, 107),
(364, 107),
(384, 107),
(385, 107),
(386, 121),
(386, 135),
(387, 121),
(387, 135),
(388, 121),
(388, 135),
(389, 121),
(389, 135),
(390, 121),
(390, 135),
(391, 121),
(391, 135),
(392, 121),
(392, 135),
(393, 121),
(393, 135),
(394, 121),
(394, 135),
(399, 136),
(399, 138),
(404, 136),
(404, 138),
(406, 136),
(406, 138),
(407, 136),
(407, 138),
(411, 136),
(411, 138),
(414, 136),
(414, 138),
(415, 136),
(415, 138),
(416, 136),
(416, 138),
(417, 136),
(417, 139),
(418, 136),
(419, 136),
(419, 139),
(421, 136),
(422, 104),
(422, 119),
(423, 119),
(424, 119),
(425, 104),
(425, 119),
(426, 104),
(426, 119),
(427, 104),
(427, 119);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(133, 0, 0),
(189, 0, 0),
(185, 0, 0),
(150, 0, 0),
(175, 0, 0),
(165, 0, 0),
(248, 0, 0),
(247, 0, 0),
(240, 0, 0),
(239, 0, 0),
(234, 0, 0),
(232, 0, 0),
(255, 0, 0),
(236, 0, 0),
(120, 0, 0),
(121, 0, 0),
(188, 0, 0),
(184, 0, 0),
(186, 0, 0),
(190, 0, 0),
(194, 0, 0),
(195, 0, 0),
(198, 0, 0),
(192, 0, 0),
(253, 0, 0),
(197, 0, 0),
(199, 0, 0),
(191, 0, 0),
(196, 0, 0),
(193, 0, 0),
(242, 0, 0),
(238, 0, 0),
(235, 0, 0),
(244, 0, 0),
(169, 0, 0),
(168, 0, 0),
(182, 0, 0),
(151, 0, 0),
(160, 0, 0),
(158, 0, 0),
(170, 0, 0),
(152, 0, 0),
(167, 0, 0),
(153, 0, 0),
(181, 0, 0),
(166, 0, 0),
(154, 0, 0),
(178, 0, 0),
(130, 0, 0),
(231, 0, 0),
(230, 0, 0),
(241, 0, 0),
(251, 0, 0),
(261, 0, 0),
(250, 0, 0),
(237, 0, 0),
(233, 0, 0),
(288, 0, 0),
(273, 0, 0),
(291, 0, 0),
(274, 0, 0),
(277, 0, 0),
(295, 0, 0),
(279, 0, 0),
(297, 0, 0),
(329, 0, 0),
(342, 0, 0),
(332, 0, 0),
(339, 0, 0),
(314, 0, 0),
(319, 0, 0),
(310, 0, 0),
(320, 0, 0),
(308, 0, 0),
(323, 0, 0),
(311, 0, 0),
(312, 0, 0),
(321, 0, 0),
(157, 0, 0),
(137, 0, 0),
(159, 0, 0),
(138, 0, 0),
(139, 0, 0),
(128, 0, 0),
(356, 0, 0),
(357, 0, 0),
(359, 0, 0),
(358, 0, 0),
(360, 0, 0),
(361, 0, 0),
(363, 0, 0),
(364, 0, 0),
(384, 0, 0),
(385, 0, 0),
(386, 0, 0),
(387, 0, 0),
(388, 0, 0),
(389, 0, 0),
(390, 0, 0),
(391, 0, 0),
(392, 0, 0),
(393, 0, 0),
(394, 0, 0),
(399, 0, 0),
(404, 0, 0),
(406, 0, 0),
(407, 0, 0),
(411, 0, 0),
(414, 0, 0),
(415, 0, 0),
(416, 0, 0),
(417, 0, 0),
(418, 0, 0),
(419, 0, 0),
(420, 0, 0),
(421, 0, 0),
(422, 0, 0),
(423, 0, 0),
(424, 0, 0),
(107, 0, 0),
(122, 0, 0),
(173, 0, 0),
(140, 0, 0),
(142, 0, 0),
(141, 0, 0),
(143, 0, 0),
(144, 0, 0),
(176, 0, 0),
(163, 0, 0),
(425, 0, 0),
(426, 0, 0),
(427, 0, 0),
(177, 0, 0),
(131, 0, 0),
(134, 0, 0),
(132, 0, 0),
(123, 0, 0),
(127, 0, 0),
(125, 0, 0),
(124, 0, 0),
(126, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(107, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(181, 0),
(182, 0),
(184, 0),
(185, 0),
(186, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(201, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(214, 0),
(215, 0),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(225, 0),
(226, 0),
(227, 0),
(228, 0),
(229, 0),
(230, 0),
(231, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(242, 0),
(244, 0),
(247, 0),
(248, 0),
(250, 0),
(251, 0),
(253, 0),
(255, 0),
(261, 0),
(273, 0),
(274, 0),
(277, 0),
(279, 0),
(288, 0),
(291, 0),
(295, 0),
(297, 0),
(308, 0),
(310, 0),
(311, 0),
(312, 0),
(314, 0),
(319, 0),
(320, 0),
(321, 0),
(323, 0),
(329, 0),
(332, 0),
(339, 0),
(342, 0),
(356, 0),
(357, 0),
(358, 0),
(359, 0),
(360, 0),
(361, 0),
(363, 0),
(364, 0),
(384, 0),
(385, 0),
(386, 0),
(387, 0),
(388, 0),
(389, 0),
(390, 0),
(391, 0),
(392, 0),
(393, 0),
(394, 0),
(399, 0),
(404, 0),
(406, 0),
(407, 0),
(411, 0),
(414, 0),
(415, 0),
(416, 0),
(417, 0),
(418, 0),
(419, 0),
(420, 0),
(421, 0),
(422, 0),
(423, 0),
(424, 0),
(425, 0),
(426, 0),
(427, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
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
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1183, 0, 'pickup', 'pickup_sort_order', '0', 0),
(1186, 0, 'abandoned_carts', 'abandoned_carts_deleteproduct_status', '1', 0),
(408, 0, 'voucher', 'voucher_sort_order', '8', 0),
(407, 0, 'voucher', 'voucher_status', '0', 0),
(1570, 0, 'cod', 'cod_sort_order', '5', 0),
(1020, 0, 'free', 'free_status', '1', 0),
(973, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(972, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1662, 0, 'config', 'config_compression', '0', 0),
(1663, 0, 'config', 'config_secure', '0', 0),
(1664, 0, 'config', 'config_password', '1', 0),
(1665, 0, 'config', 'config_shared', '0', 0),
(1666, 0, 'config', 'config_encryption', 'NWXvZIjInwxl96j9PM7xX8hO5PxAIz0PdLUd0lbailzPtbczadoXPLsaES7gi3uhQxxqMf8lywFnQ0IB978XH5evGbc2caRxY6SqxJkTTl4SjdanaEBTckjp2R6Tp34TbiF1CZO4cFVBHsvIypUssJq8Hqx30mWHd10RgUXY8fUowSQW0TElT7syPAJ7vBQAdnqSdGAY4O2aFQUjsemRNXoaR4hApKwuOnlqZIaieLQrrKrwbIPMaYkVkSpd5wfTOccfEGveuVhbgzuwr8vGEGCetQ1ggtEvyen7tZcP8ySSSbrDh60JmurpzmK4TJDnwbtK9dRd9dEKWxtkFthqF3ekJTQZaIqVtFNjKqziJ4yrtZg3YHbppkTNMKhUzYXTgS73VQvjGhSovgOvHLwvPJHl01dDzODRKHGFhLkwFSoquTifcANXHO8QzUDB4djC7MOFAv7RAQN4jLMHk3sVOvEND2OmxVkD7Mn28LHvW15FIvvGzlkvZZIS2VNV4AnRSgJWof89Kh3OxuzFt0jkGnYV2CjRAvy4KR2jJ3GVQzHlVJ6acWXtz5vqEYClEtGQV8otuU4MYIzKQap5DaxOo0TrF4blmfkBVSnK0N5UbWIt71QneIpwEDl1jQsydjfWur7oToCy2yeqzHyHQZ0P8ezculfNRUiJAg6WM08cmIUMrd7wvIZi5vbNVtkraKFIs7rwzwz6wgEqJEK3tXKfxrfXKQVOiRwjmuHir1Vn6wlFvwkeKIvwCxcEPoTurQefcmLZUAQgWhyBtupVkbcCPPHmP1rGxIhBq3YFvkWhqLzf7R7AKkfb3Il4jK4SempH9nauDNPz1pTjcyawdYK4Br3yQFAy8ft5iKxNTgEg76P9EfBm5CEgZka8Q43d9CfOjTebP5x2uN7ZEomveH8lpUQ5tsSxSr39XP60j8zYDZTHk5bXbQlD5Z9OpXTcHoXlb23RslSBwHNF9QI8J1k7OQoFRyfBbwzLecl6wwMjL9n7g72zv15949ewdZOth4Qa', 0),
(1653, 0, 'config', 'config_mail_smtp_username', '', 0),
(1654, 0, 'config', 'config_mail_smtp_password', '', 0),
(1655, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1656, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1657, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1658, 0, 'config', 'config_mail_alert_email', '', 0),
(1659, 0, 'config', 'config_maintenance', '0', 0),
(1660, 0, 'config', 'config_seo_url', '0', 0),
(1661, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1652, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1649, 0, 'config', 'config_ftp_status', '0', 0),
(1650, 0, 'config', 'config_mail_protocol', 'mail', 0),
(1651, 0, 'config', 'config_mail_parameter', '', 0),
(1639, 0, 'config', 'config_return_status_id', '2', 0),
(1640, 0, 'config', 'config_captcha', 'basic_captcha', 0),
(1641, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1642, 0, 'config', 'config_logo', '', 0),
(1643, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1644, 0, 'config', 'config_ftp_hostname', '13.58.82.33', 0),
(1645, 0, 'config', 'config_ftp_port', '21', 0),
(1646, 0, 'config', 'config_ftp_username', '', 0),
(1647, 0, 'config', 'config_ftp_password', '', 0),
(1648, 0, 'config', 'config_ftp_root', '', 0),
(95, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(96, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'shipping', 'shipping_sort_order', '3', 0),
(98, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(99, 0, 'sub_total', 'sub_total_status', '1', 0),
(100, 0, 'tax', 'tax_status', '1', 0),
(101, 0, 'total', 'total_sort_order', '9', 0),
(102, 0, 'total', 'total_status', '1', 0),
(103, 0, 'tax', 'tax_sort_order', '5', 0),
(104, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(1569, 0, 'cod', 'cod_status', '1', 0),
(1568, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(1567, 0, 'cod', 'cod_order_status_id', '1', 0),
(110, 0, 'shipping', 'shipping_status', '1', 0),
(111, 0, 'shipping', 'shipping_estimator', '1', 0),
(112, 0, 'coupon', 'coupon_sort_order', '4', 0),
(113, 0, 'coupon', 'coupon_status', '1', 0),
(1177, 0, 'flat', 'flat_sort_order', '1', 0),
(1176, 0, 'flat', 'flat_status', '1', 0),
(1175, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(1174, 0, 'flat', 'flat_tax_class_id', '0', 0),
(1173, 0, 'flat', 'flat_cost', '8.00', 0),
(119, 0, 'credit', 'credit_sort_order', '7', 0),
(120, 0, 'credit', 'credit_status', '1', 0),
(1185, 0, 'reward', 'reward_sort_order', '2', 0),
(1184, 0, 'reward', 'reward_status', '1', 0),
(123, 0, 'category', 'category_status', '1', 0),
(124, 0, 'account', 'account_status', '1', 0),
(125, 0, 'affiliate', 'affiliate_status', '1', 0),
(971, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(970, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(969, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(968, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(967, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(966, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(965, 0, 'theme_default', 'theme_default_image_related_height', '300', 0),
(964, 0, 'theme_default', 'theme_default_image_related_width', '300', 0),
(963, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(962, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(961, 0, 'theme_default', 'theme_default_image_product_height', '300', 0),
(960, 0, 'theme_default', 'theme_default_image_product_width', '300', 0),
(959, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(958, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(957, 0, 'theme_default', 'theme_default_image_thumb_height', '500', 0),
(956, 0, 'theme_default', 'theme_default_image_thumb_width', '500', 0),
(955, 0, 'theme_default', 'theme_default_image_category_height', '350', 0),
(954, 0, 'theme_default', 'theme_default_image_category_width', '1400', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(1638, 0, 'config', 'config_return_id', '0', 0),
(1637, 0, 'config', 'config_affiliate_id', '4', 0),
(1636, 0, 'config', 'config_affiliate_commission', '5', 0),
(1635, 0, 'config', 'config_affiliate_auto', '0', 0),
(1634, 0, 'config', 'config_affiliate_approval', '0', 0),
(1633, 0, 'config', 'config_stock_checkout', '0', 0),
(1632, 0, 'config', 'config_stock_warning', '0', 0),
(1631, 0, 'config', 'config_stock_display', '0', 0),
(1630, 0, 'config', 'config_api_id', '1', 0),
(1629, 0, 'config', 'config_fraud_status_id', '7', 0),
(1628, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1627, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1626, 0, 'config', 'config_order_status_id', '1', 0),
(1625, 0, 'config', 'config_checkout_id', '5', 0),
(1624, 0, 'config', 'config_checkout_guest', '1', 0),
(1623, 0, 'config', 'config_cart_weight', '0', 0),
(1622, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1621, 0, 'config', 'config_account_id', '3', 0),
(1620, 0, 'config', 'config_login_attempts', '5', 0),
(1619, 0, 'config', 'config_customer_price', '0', 0),
(1618, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(952, 0, 'theme_default', 'theme_default_product_limit', '16', 0),
(953, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(951, 0, 'theme_default', 'theme_default_status', '1', 0),
(950, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(996, 0, 'stripe', 'stripe_store_cards', '0', 0),
(995, 0, 'stripe', 'stripe_currency', 'usd', 0),
(993, 0, 'stripe', 'stripe_status', '0', 0),
(994, 0, 'stripe', 'stripe_order_status_id', '1', 0),
(992, 0, 'stripe', 'stripe_environment', 'live', 0),
(991, 0, 'stripe', 'stripe_live_publishable_key', '', 0),
(989, 0, 'stripe', 'stripe_test_publishable_key', '', 0),
(990, 0, 'stripe', 'stripe_live_secret_key', '', 0),
(988, 0, 'stripe', 'stripe_test_secret_key', '', 0),
(1566, 0, 'cod', 'cod_total', '0.01', 0),
(1617, 0, 'config', 'config_customer_group_id', '1', 0),
(1182, 0, 'pickup', 'pickup_status', '1', 0),
(1181, 0, 'pickup', 'pickup_geo_zone_id', '0', 0),
(1616, 0, 'config', 'config_customer_search', '0', 0),
(1615, 0, 'config', 'config_customer_activity', '0', 0),
(1614, 0, 'config', 'config_customer_online', '0', 0),
(1613, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1612, 0, 'config', 'config_tax_default', 'shipping', 0),
(1611, 0, 'config', 'config_tax', '0', 0),
(1610, 0, 'config', 'config_voucher_max', '1000', 0),
(1609, 0, 'config', 'config_voucher_min', '1', 0),
(1608, 0, 'config', 'config_review_guest', '1', 0),
(1607, 0, 'config', 'config_review_status', '1', 0),
(1606, 0, 'config', 'config_limit_admin', '20', 0),
(1605, 0, 'config', 'config_product_count', '1', 0),
(1604, 0, 'config', 'config_weight_class_id', '6', 0),
(714, 0, 'basic_captcha', 'basic_captcha_status', '1', 0),
(1007, 0, 'module_advanced_popup_cart', 'module_advanced_popup_cart_style', '{\"loader_bg_color\":\"\",\"loader_font_color\":\"\",\"btn_in_cart_bg_color\":\"\",\"btn_in_cart_font_color\":\"\",\"popup_width\":\"\",\"popup_border_radius\":\"\",\"heading_bg_color\":\"\",\"heading_font_color\":\"\",\"body_bg_color\":\"\",\"plain_text_color\":\"\",\"link_color\":\"\",\"image_border_color\":\"\",\"image_border_size\":\"\",\"image_border_radius\":\"\",\"btn_continue_bg_color\":\"\",\"btn_continue_font_color\":\"\",\"btn_view_cart_bg_color\":\"\",\"btn_view_cart_font_color\":\"\",\"btn_checkout_bg_color\":\"\",\"btn_checkout_font_color\":\"\",\"btn_qty_bg_color\":\"\",\"btn_qty_font_color\":\"\",\"btn_remove_bg_color\":\"\",\"btn_other_bg_color\":\"\",\"btn_other_font_color\":\"\",\"btn_qty_border_radius\":\"\",\"btn_other_border_radius\":\"\",\"related_block_bg_color\":\"\",\"related_heading_font_color\":\"\",\"related_thumb_bg_color\":\"\",\"related_border_color\":\"\",\"related_border_size\":\"\",\"related_border_radius\":\"\",\"related_addtocart_bg_color\":\"\",\"related_addtocart_font_color\":\"\",\"custom_css_code\":\"\"}', 1),
(1008, 0, 'module_advanced_popup_cart', 'module_advanced_popup_cart_version', '2.7.0', 0),
(1005, 0, 'module_advanced_popup_cart', 'module_advanced_popup_cart_status', '1', 0),
(1006, 0, 'module_advanced_popup_cart', 'module_advanced_popup_cart_config', '{\"click_on_cart\":\"1\",\"click_on_cart_link\":\"1\",\"open_when_added\":\"1\",\"autoclose\":\"0\",\"replace_button\":\"1\",\"column_image\":\"1\",\"column_price\":\"1\",\"column_quantity\":\"1\",\"btn_continue_status\":\"1\",\"btn_go_to_cart_status\":\"1\",\"btn_checkout_status\":\"1\",\"btn_start_shopping_status\":\"1\",\"related_status\":\"1\",\"related_set\":\"0\",\"rel_min_price\":\"0\",\"rel_max_price\":\"0\",\"rel_limit\":\"10\",\"recommended_set\":\"0\",\"rec_min_price\":\"0\",\"rec_max_price\":\"0\",\"rec_limit\":\"10\",\"content_top\":{\"en-gb\":\"\"},\"content_middle\":{\"en-gb\":\"\"},\"content_bottom\":{\"en-gb\":\"\"},\"lng_popup_heading\":{\"en-gb\":\"\"},\"lng_popup_subheading\":{\"en-gb\":\"\"},\"lng_btn_continue\":{\"en-gb\":\"\"},\"lng_btn_go_to_cart\":{\"en-gb\":\"\"},\"lng_btn_checkout\":{\"en-gb\":\"\"},\"lng_related_heading\":{\"en-gb\":\"\"},\"lng_empty_cart_text\":{\"en-gb\":\"\"},\"lng_btn_start_shopping\":{\"en-gb\":\"\"},\"lng_recommended_heading\":{\"en-gb\":\"\"},\"lng_btn_in_cart_cp\":{\"en-gb\":\"\"},\"lng_btn_in_cart_pp\":{\"en-gb\":\"\"}}', 1),
(1019, 0, 'free', 'free_geo_zone_id', '0', 0),
(1018, 0, 'free', 'free_total', '100', 0),
(1021, 0, 'free', 'free_sort_order', '0', 0),
(1603, 0, 'config', 'config_length_class_id', '1', 0),
(1579, 0, 'stripe_payments', 'stripe_payments_status', '0', 0),
(1578, 0, 'stripe_payments', 'stripe_payments_geo_zone_id', '0', 0),
(1577, 0, 'stripe_payments', 'stripe_payments_order_status_id', '1', 0),
(1576, 0, 'stripe_payments', 'stripe_payments_method', 'charge', 0),
(1575, 0, 'stripe_payments', 'stripe_payments_mode', 'test', 0),
(1574, 0, 'stripe_payments', 'stripe_payments_private_key_test', 'sk_test_07hBVqyxD8QlZJ21ZNMwJWDl', 0),
(1573, 0, 'stripe_payments', 'stripe_payments_public_key_test', 'pk_test_v7BktAO9xpXo7EghxgCE0SAv', 0),
(1572, 0, 'stripe_payments', 'stripe_payments_private_key', 'sk_live_X2qpItk88jSPuUK6NPH6eDG8', 0),
(1571, 0, 'stripe_payments', 'stripe_payments_public_key', 'pk_live_7HlyKZpcImEqx13GdsCKqs6p', 0),
(1187, 0, 'abandoned_carts', 'abandoned_carts_deletecart_status', '1', 0),
(1188, 0, 'abandoned_carts', 'abandoned_carts_email_send_status', '1', 0),
(1189, 0, 'abandoned_carts', 'abandoned_carts_crownjob_status', '1', 0),
(1190, 0, 'abandoned_carts', 'abandoned_carts_templatesetting', '[{\"template_id\":\"5\",\"days\":\"\",\"notified\":\"0\"}]', 1),
(1602, 0, 'config', 'config_currency_auto', '1', 0),
(1601, 0, 'config', 'config_currency', 'USD', 0),
(1600, 0, 'config', 'config_admin_language', 'en-gb', 0),
(1599, 0, 'config', 'config_language', 'en-gb', 0),
(1598, 0, 'config', 'config_zone_id', '', 0),
(1597, 0, 'config', 'config_country_id', '223', 0),
(1596, 0, 'config', 'config_comment', '', 0),
(1595, 0, 'config', 'config_open', '', 0),
(1594, 0, 'config', 'config_image', '', 0),
(1593, 0, 'config', 'config_fax', '', 0),
(1592, 0, 'config', 'config_telephone', '978.950.4512', 0),
(1591, 0, 'config', 'config_email', 'customerservice@careshop.in', 0),
(1590, 0, 'config', 'config_geocode', '', 0),
(1589, 0, 'config', 'config_address', '#2280 sector 21C\r\nFrisco, TX 75034', 0),
(1588, 0, 'config', 'config_owner', 'CareShop', 0),
(1587, 0, 'config', 'config_name', 'CareShop', 0),
(1586, 0, 'config', 'config_layout_id', '4', 0),
(1585, 0, 'config', 'config_theme', 'theme_default', 0),
(1584, 0, 'config', 'config_meta_keyword', '', 0),
(1583, 0, 'config', 'config_meta_description', 'CareShop', 0),
(1582, 0, 'config', 'config_meta_title', 'CareShop', 0),
(1580, 0, 'stripe_payments', 'stripe_payments_total', '1', 0),
(1581, 0, 'stripe_payments', 'stripe_payments_sort_order', '', 0),
(1667, 0, 'config', 'config_file_max_size', '300000', 0),
(1668, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1669, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1670, 0, 'config', 'config_error_display', '1', 0),
(1671, 0, 'config', 'config_error_log', '1', 0),
(1672, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_stripe_card`
--

CREATE TABLE `oc_stripe_card` (
  `stripe_card_id` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `last_four` varchar(4) NOT NULL,
  `exp_year` varchar(5) NOT NULL,
  `exp_month` varchar(5) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `environment` varchar(5) NOT NULL DEFAULT 'test'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_stripe_customer`
--

CREATE TABLE `oc_stripe_customer` (
  `customer_id` int(11) NOT NULL,
  `stripe_customer_id` varchar(255) NOT NULL,
  `environment` varchar(5) NOT NULL DEFAULT 'test'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stripe_customer`
--

INSERT INTO `oc_stripe_customer` (`customer_id`, `stripe_customer_id`, `environment`) VALUES
(2, 'cus_H1P43NZa8x8Jwo', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stripe_order`
--

CREATE TABLE `oc_stripe_order` (
  `stripe_order_id` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `environment` varchar(5) NOT NULL DEFAULT 'test'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stripe_order`
--

INSERT INTO `oc_stripe_order` (`stripe_order_id`, `order_id`, `environment`) VALUES
('ch_1GTMGoFZdNvn4AGPOKWV6ein', 2, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2020-06-05 08:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(87, 5, 'Tax', '6.2500', 'P', '2011-09-21 21:49:23', '2020-06-05 08:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(130, 9, 87, 'shipping', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(848, 'information_id=4', 'about_us'),
(847, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(1133, 'category_id=104', 'skincare'),
(1134, 'category_id=105', 'bodycare'),
(1966, 'product_id=107', 'MILD-CLEANSING-MILK'),
(1678, 'manufacturer_id=14', 'phyto5-all'),
(1228, 'product_id=120', 'Purifying-Cleansing-Gel'),
(1943, 'product_id=121', 'Ageless-Cleansing-Foam'),
(1318, 'category_id=110', 'CLEANSERS'),
(1325, 'category_id=111', 'TONERS'),
(1319, 'category_id=112', 'DAY-CREAMS'),
(1147, 'category_id=113', 'NIGHT-CREAMS'),
(1321, 'category_id=115', 'MASKS'),
(1324, 'category_id=116', 'EYE-CREAMS'),
(1326, 'category_id=117', 'SUNSCREEN'),
(2029, 'category_id=119', 'ADDITIONAL-SKIN-CARE-PRODUCTS'),
(1294, 'category_id=120', 'HAIR-PRODUCTS'),
(1935, 'product_id=122', 'Le-Phytacid-PhytAcid-Cleansing-Face-and-Body-Gel'),
(1995, 'product_id=123', 'Skin-Toner-Wood'),
(1998, 'product_id=124', 'Skin-Toner-FIRE'),
(1997, 'product_id=125', 'Skin-Toner-EARTH'),
(1999, 'product_id=126', 'Skin-Toner-METAL'),
(1996, 'product_id=127', 'Skin-Toner-WATER'),
(1944, 'product_id=128', 'Ageless-Skin-Toner'),
(1248, 'product_id=129', 'Le-Creme-Acide-PH-Cream'),
(1979, 'product_id=130', 'Ceresal-Day-Creme-Wood'),
(1980, 'product_id=131', 'Ceresal-Day-Creme-FIRE'),
(1983, 'product_id=132', 'Ceresal-Day-Creme-EARTH'),
(1981, 'product_id=133', 'Ceresal-Day-Creme-METAL'),
(1982, 'product_id=134', 'Ceresal-Day-Creme-WATER'),
(1238, 'product_id=135', 'La-creme-visage-Face-Cream-with-Vitamin-E-Biostimulant'),
(1240, 'product_id=136', 'Le-gel-visage-Face-Gel'),
(1939, 'product_id=137', 'Ageless-Extreme-Hydrating-Cream'),
(1938, 'product_id=138', 'Ageless-Nourishing-Cream'),
(1937, 'product_id=139', 'Ageless-Perfection-Cream-Pigmentation-Cream'),
(1984, 'product_id=140', 'Element-Night-Creme-WOOD'),
(1986, 'product_id=141', 'Element-Night-Creme-FIRE'),
(1985, 'product_id=142', 'Element-Night-Creme-EARTH'),
(1987, 'product_id=143', 'Element-Night-Creme-METAL'),
(1988, 'product_id=144', 'Element-Night-Creme-WATER'),
(1974, 'product_id=150', 'Green-Clay-Mask-Wood'),
(1976, 'product_id=151', 'Red-Clay-Mask-Fire'),
(1978, 'product_id=152', 'Yellow-Clay-Mask-Earth'),
(1977, 'product_id=153', 'White-Clay-Mask-Metal'),
(1975, 'product_id=154', 'Black-Clay-Mask-Water'),
(1221, 'product_id=155', 'Lalgoderme-Algoderm-Mask'),
(1222, 'product_id=156', 'Le-masque-gel-visage-Face-and-Scalp-Gel-Mask'),
(1940, 'product_id=157', 'Ageless-Clay-Mask-Pink-Soothing'),
(1304, 'product_id=158', 'La-creme-contour-des-yeux-Eye-Cream-All-Skin-Conditions'),
(1941, 'product_id=159', 'Ageless-Eye-Serum-Firming'),
(1306, 'product_id=160', 'La-creme-soleil-formerly-Extreme-Yang-OE-Creme'),
(1964, 'product_id=163', 'Loligo5-Oligo-5-Mineral-Spray'),
(1273, 'product_id=164', 'The-Five-Secrets-Serum-Five-Secrets-Cream-Duo-for-a-3-Week-Cure'),
(2004, 'product_id=165', 'Yogi-Body-Gel-Wood-Element'),
(2001, 'product_id=166', 'Yogi-Body-Gel-Fire-Element'),
(2000, 'product_id=167', 'Yogi-Body-Gel-Earth-Element'),
(2002, 'product_id=168', 'Yogi-Body-Gel-Metal-Element'),
(2003, 'product_id=169', 'Yogi-Body-Gel-Water-Element'),
(1963, 'product_id=170', 'Lemulsion-corporelle-Body-Lotion'),
(1278, 'product_id=171', 'Le-lait-corporel-Hydrating-Body-Milk'),
(1276, 'product_id=172', 'La-creme-mains-Extreme-Hydrating-Hand-Cream'),
(1936, 'product_id=173', 'Le-Phytacid-PhytAcid-Cleansing-Face-Body-Gel'),
(1277, 'product_id=174', 'Le-gommage-zen-Zen-Body-Exfoliation'),
(1307, 'product_id=175', 'Le-serum-silhouette-Contouring-Serum'),
(1962, 'product_id=176', 'Lalguessence-bain-Algae-Essence-Bath-Balancing-and-Relaxing'),
(1965, 'product_id=177', 'Set-of-All-7-Chakra-Balancing-Essential-Oil-Blends'),
(2005, 'product_id=178', 'Algae-Shampoo-Wood-Element'),
(2007, 'product_id=181', 'Sweet-Almond-Oil-Shampoo-Metal-Element'),
(2008, 'product_id=182', 'Horsetail-Buckwheat-Gel-Shampoo-Water-Element'),
(1353, 'product_id=184', 'ActivJoint'),
(1355, 'product_id=185', 'ActivJoint-Platinum'),
(1357, 'product_id=186', 'Complete-Childrens-Chewable'),
(1358, 'product_id=188', 'Childrens-Chewable-Probiotic'),
(1359, 'product_id=189', 'Complete-Foods-Multi'),
(1360, 'product_id=190', 'ConcenTrace-Mineral-Drops'),
(1362, 'product_id=191', 'Coral-Calcium-with-ConcenTrace'),
(1363, 'product_id=192', 'Electro-Vita-Min'),
(1366, 'product_id=193', 'Liquid-Multi-Vitamin-Mineral'),
(1374, 'product_id=194', 'Stress-X-Magnesium-Powder'),
(1373, 'product_id=195', 'ConcenTrace-Mineral-Mouth-Rinse'),
(1368, 'product_id=196', 'Probiotic-55-Billion'),
(1370, 'product_id=197', 'Protein-Bar'),
(1372, 'product_id=198', 'Stress-X-Tablets'),
(1367, 'product_id=199', 'Liquid-Vitamin-D3'),
(2034, 'category_id=107', 'supplements'),
(2032, 'category_id=108', 'scentered-aromatherapy'),
(1441, 'product_id=201', 'SLEEP-WELL-Aromatherapy-Balm'),
(1436, 'product_id=203', 'SLEEP-WELL-Travel-Aromatherapy-Candle'),
(1427, 'product_id=204', 'I-Want-To-SLEEP-WELL-Gift-Set'),
(1433, 'product_id=205', 'SLEEP-WELL-Essentials-Sleep-Set'),
(1435, 'product_id=206', 'SLEEP-WELL-Mini-Wellbeing-Ritual-Aromatherapy-Balm'),
(1411, 'product_id=207', 'DE-STRESS-Aromatherapy-Balm'),
(1414, 'product_id=208', 'DE-STRESS-Mini-Aromatherapy-Balm'),
(1415, 'product_id=210', 'DE-STRESS-Travel-Aromatherapy-Candle'),
(1412, 'product_id=211', 'DE-STRESS-Essentials-Kit'),
(1420, 'product_id=212', 'FOCUS-Aromatherapy-Balm'),
(1421, 'product_id=213', 'FOCUS-Mini-Aromatherapy-Balm'),
(1422, 'product_id=214', 'HAPPY-Aromatherapy-Balm'),
(1423, 'product_id=215', 'HAPPY-Mini-Aromatherapy-Balm'),
(1424, 'product_id=216', 'HAPPY-Travel-Aromatherapy-Candle'),
(1425, 'product_id=217', 'I-Want-To-Be-HAPPY-Gift-Box'),
(1416, 'product_id=218', 'ESCAPE-Aromatherapy-Balm'),
(1418, 'product_id=219', 'ESCAPE-Mini--Aromatherapy-Balm'),
(1419, 'product_id=221', 'ESCAPE-Travel-Aromatherapy-Candle'),
(1426, 'product_id=222', 'I-Want-To-ESCAPE-Gift-Set'),
(1428, 'product_id=223', 'LOVE-Aromatherapy-Balm'),
(1430, 'product_id=224', 'LOVE-Mini-Aromatherapy-Balm'),
(1429, 'product_id=225', 'LOVE-Home-Aromatherapy-Candle'),
(1431, 'product_id=226', 'LOVE-Travel-Aromatherapy-Candle'),
(1438, 'product_id=227', 'Ultimate-Survival-Kit'),
(1440, 'product_id=228', 'Wellbeing-Ritual-Aromatherapy-Tin'),
(1439, 'product_id=229', 'Ultimate-Relaxation-Trio'),
(1445, 'category_id=121', 'gems'),
(1447, 'category_id=122', 'Mantra-Gemstone-Collection'),
(1450, 'category_id=123', 'Lucky-Buddha-Beads'),
(1449, 'category_id=124', 'Chakra-Mala-Collection'),
(1451, 'category_id=125', 'Birthstone-Gems-Collection'),
(1569, 'product_id=230', 'January'),
(1568, 'product_id=231', 'February'),
(1572, 'product_id=232', 'March'),
(1565, 'product_id=233', 'April'),
(1573, 'product_id=234', 'May'),
(1571, 'product_id=235', 'June'),
(1570, 'product_id=236', 'July'),
(1566, 'product_id=237', 'August'),
(1576, 'product_id=238', 'September'),
(1575, 'product_id=239', 'October'),
(1574, 'product_id=240', 'November'),
(1567, 'product_id=241', 'December'),
(1579, 'product_id=242', 'Amethyst-Mala-Bracelet-with-Sahaswara-Charm'),
(1577, 'product_id=244', 'Amazonite-Mala-Bracelet-with-Vishudda-Charm'),
(1583, 'product_id=247', 'Red-Adventurine-Mala-Bracelet-with-Svandhistana-Charm'),
(1585, 'product_id=248', 'Red-Jasper-Mala-Bracelet-with-Muladhara-Charm'),
(1590, 'product_id=250', 'Seven-Chakra-Ombre-Charm-Bracelet-with-Seven-Charms'),
(1592, 'product_id=251', 'Seven-Chakras-Tassel-Bracelet'),
(1594, 'product_id=253', 'Sodalite-Triple-Happiness-Bracelet-with-Ajna-Charm'),
(1582, 'product_id=255', 'Green-Adventurite-Triple-Happiness-Bracelet-with-Anahata-Charm'),
(1588, 'product_id=261', 'Seven-Chakra-Namaste-108-Bead-Mala-Necklace'),
(1621, 'product_id=273', 'Rhodonite-Faceted-Stretch-Bracelet'),
(1623, 'product_id=274', 'Silver-Grey-Quartz-Faceted-Stretch-Bracelet-'),
(1629, 'product_id=277', 'Unakite-Faceted-Stretch-Bracelet'),
(1633, 'product_id=279', 'Yellow-Jade-Faceted-Stretch-Bracelet'),
(1616, 'product_id=288', 'Picasso-Jasper-Faceted-Stretch-Bracelet-with-Buddha-Head'),
(1622, 'product_id=291', 'Rhodonite-Faceted-Stretch-Bracelet-with-Buddha-Head'),
(1630, 'product_id=295', 'Unakite-Faceted-Stretch-Bracelet-with-Buddha-Head'),
(1634, 'product_id=297', 'Yellow-Jade-Faceted-Stretch-Bracelet-with-Buddha-Head'),
(1672, 'product_id=308', 'Smoky-Quartz-Om-Charm-Bracelet'),
(1670, 'product_id=310', 'Rose-Quartz-Om-Charm-Bracelet'),
(1674, 'product_id=311', 'Sodalite-Om-Charm-Bracelet'),
(1675, 'product_id=312', 'Tiger\'s-Eye-Om-Charm-Bracelet'),
(1652, 'product_id=314', 'Amazonite-Tassel-Bracelet'),
(1669, 'product_id=319', 'Pyrite-Tassel-Bracelet'),
(1671, 'product_id=320', 'Rose-Quartz-Tassel-Bracelet'),
(1676, 'product_id=321', 'Tiger\'s-Eye-Tassel-Bracelet'),
(1673, 'product_id=323', 'Smoky-Quartz-Tassel-Bracelet'),
(1860, 'product_id=329', '108-Bead-Amazonite-Mala-Necklace'),
(1640, 'product_id=332', '108-Bead-Botswana-Agate-Mala-Necklace'),
(1641, 'product_id=339', '108-Bead-Botswana-Agate-Wrap-Mala'),
(1637, 'product_id=342', '108-Bead-Amethyst-Wrap-Mala'),
(1789, 'product_id=356', 'chzyme'),
(1788, 'product_id=357', 'curcuma-flow'),
(1813, 'product_id=358', 'epa-q'),
(1793, 'product_id=359', 'isatis-gold'),
(1797, 'product_id=360', 'tamu-oil'),
(1794, 'product_id=361', 'nasal-tabs'),
(1795, 'product_id=363', 'skin-balance'),
(1798, 'product_id=364', 'stem-cell'),
(1808, 'product_id=384', 'nasya-oil'),
(1809, 'product_id=385', 'i-sleeep-soundly-tablets'),
(1850, 'category_id=135', 'gemstone-gift-set'),
(1837, 'product_id=386', 'abundance-triple-happiness-citrine-charm-bracelet-with-gemstone'),
(1841, 'product_id=387', 'clarity-triple-happiness-crystal-quartz-charm-bracelet-with-gemstone'),
(1849, 'product_id=388', 'love-triple-happiness-rose-quartz-charm-bracelet-with-gemstone'),
(1839, 'product_id=389', 'calming-triple-happiness-amazonite-charm-bracelet-with-gemstone'),
(1847, 'product_id=390', 'intuition-triple-happiness-sodalite-charm-bracelet-with-gemstone'),
(1838, 'product_id=391', 'calming-amazonite-blackwood-namaste-mala-with-gemstone'),
(1842, 'product_id=392', 'courage-tigers-eye-blackwood-namaste-mala-with-gemstone'),
(1843, 'product_id=393', 'good-luck-green-aventurine--robles-wood-namaste-mala-with-gemstone'),
(1846, 'product_id=394', 'serenity-amethyst-rosewood-namaste-mala-with-gemstone'),
(1855, 'category_id=136', 'makeup'),
(1857, 'category_id=138', 'face'),
(1858, 'category_id=139', 'lips'),
(1879, 'product_id=399', 'beyond-matte-liquid-foundation'),
(1886, 'product_id=404', 'refillable-compact'),
(1888, 'product_id=406', 'circle-delete-concealer'),
(1889, 'product_id=407', 'active-light-under-eye-concealer'),
(1893, 'product_id=411', 'beyond-matte-hd-matifying-powder'),
(1896, 'product_id=414', 'balance-hydration-spray'),
(1897, 'product_id=415', 'lemongrass-love-hydration-spray'),
(1921, 'product_id=416', '12-Days-of-celestial-skincare-makeup-collectiom '),
(1924, 'product_id=417', 'starry-eyes-mascara-set'),
(1916, 'product_id=418', 'Illuminating-Lights-Face-Palette'),
(1923, 'product_id=419', 'Holiday-lip-kit'),
(1927, 'product_id=420', 'Kashwere-Lounging-Socks'),
(1928, 'product_id=421', '24-Karat-Gold-Dust-Jane-Iredale');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '6e4f317c7a61df2f01e995c7f026f7c13243b2d4', 'N9to3zQuL', 'Care', 'Shop', 'customerservice@careshop.in', '', '8aqoLpDs56kh4EVZHED6tHj4J4qCdinNiFejnEKe', '::1', 1, '2019-03-03 14:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"abandoned_carts\\/abandoned_template\",\"abandoned_carts\\/abandonedcarts\",\"abandoned_carts\\/abandonedcarts_history\",\"abandoned_carts\\/coupons\",\"abandoned_carts\\/dashboard\",\"abandoned_carts\\/menu\",\"abandoned_carts\\/setting\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/advanced_popup_cart\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/stripe\",\"extension\\/payment\\/stripe_payments\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/export_import\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/analytics\\/google_analytics\",\"analytics\\/google_analytics\"],\"modify\":[\"abandoned_carts\\/abandoned_template\",\"abandoned_carts\\/abandonedcarts\",\"abandoned_carts\\/abandonedcarts_history\",\"abandoned_carts\\/coupons\",\"abandoned_carts\\/dashboard\",\"abandoned_carts\\/menu\",\"abandoned_carts\\/setting\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/advanced_popup_cart\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/stripe\",\"extension\\/payment\\/stripe_payments\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/export_import\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/analytics\\/google_analytics\",\"analytics\\/google_analytics\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(98, 3, 'M\'Sila', 'MSI', 1),
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
(118, 4, 'Manu\'a', 'M', 1),
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
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
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
(303, 16, 'Moore\'s Island', 'MOO', 1),
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
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
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
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
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
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
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
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
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
(919, 58, '\'Ali Sabih', 'S', 1),
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
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
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
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
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
(1209, 74, 'Val d\'Oise', '95', 1),
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
(1381, 93, 'Grand\'Anse', 'GA', 1),
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
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
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
(1584, 102, 'At Ta\'mim', 'TM', 1),
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
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
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
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
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
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
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
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
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
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
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
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
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
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
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
(2677, 173, 'Umm Sa\'id', 'UD', 1),
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
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
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
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
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
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
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
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
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
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
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
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
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
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
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
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
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
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
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
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
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
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
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
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
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
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(110, 223, 0, 4, '2020-06-05 08:32:01', '0000-00-00 00:00:00'),
(111, 223, 3644, 5, '2020-06-05 08:32:38', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_abandonedcart`
--
ALTER TABLE `oc_abandonedcart`
  ADD PRIMARY KEY (`abandonedcart_id`),
  ADD KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_abandonedcart_history`
--
ALTER TABLE `oc_abandonedcart_history`
  ADD PRIMARY KEY (`abandonedcart_history_id`),
  ADD KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_abandoned_template`
--
ALTER TABLE `oc_abandoned_template`
  ADD PRIMARY KEY (`abandoned_template_id`);

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_menu`
--
ALTER TABLE `oc_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `oc_menu_description`
--
ALTER TABLE `oc_menu_description`
  ADD PRIMARY KEY (`menu_id`,`language_id`);

--
-- Indexes for table `oc_menu_module`
--
ALTER TABLE `oc_menu_module`
  ADD PRIMARY KEY (`menu_module_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_stripe_card`
--
ALTER TABLE `oc_stripe_card`
  ADD PRIMARY KEY (`stripe_card_id`);

--
-- Indexes for table `oc_stripe_customer`
--
ALTER TABLE `oc_stripe_customer`
  ADD PRIMARY KEY (`stripe_customer_id`);

--
-- Indexes for table `oc_stripe_order`
--
ALTER TABLE `oc_stripe_order`
  ADD PRIMARY KEY (`stripe_order_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_abandonedcart`
--
ALTER TABLE `oc_abandonedcart`
  MODIFY `abandonedcart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `oc_abandonedcart_history`
--
ALTER TABLE `oc_abandonedcart_history`
  MODIFY `abandonedcart_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_abandoned_template`
--
ALTER TABLE `oc_abandoned_template`
  MODIFY `abandoned_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_menu`
--
ALTER TABLE `oc_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2556;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1673;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4236;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
