SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL,
  `par_id` int(11) DEFAULT NULL,
  `user_role_ids` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin_menu` (`id`, `par_id`, `user_role_ids`, `title`, `icon`, `link`, `sort_order`, `created`, `updated`) VALUES
(1, 0, ',1,2,3,', 'Dashboard', 'fa fa-tachometer-alt', '/', 1, '2019-03-30 03:05:59', '2019-12-18 04:35:21'),
(2, 0, ',1,2,3,', 'Content', 'fa fa-file-alt', '/content', 2, '2019-03-30 03:24:19', '2019-12-18 04:35:21'),
(3, 2, ',1,2,3,', 'Category', 'fa fa-list', '/content/category', 21, '2019-03-30 03:26:22', '2019-12-18 04:35:21'),
(4, 2, ',1,2,3,', 'Add Content', 'fa fa-pencil-alt', '/content/edit', 22, '2019-03-30 03:35:27', '2019-12-18 04:35:21'),
(5, 2, ',1,2,3,', 'Content List', 'fa fa-list', '/content/list', 23, '2019-03-30 03:35:44', '2019-12-18 04:35:21'),
(6, 2, ',1,2,3,', 'Tag', 'fa fa-list', '/content/tag', 24, '2019-03-30 03:36:06', '2019-12-18 04:35:21'),
(7, 0, ',1,2,3,', 'Gallery', 'fa fa-images', '/gallery', 3, '2019-03-31 22:53:29', '2019-12-18 04:35:21'),
(8, 7, ',1,2,3,', 'Images', 'fa fa-image', '/gallery', 31, '2019-03-31 22:53:57', '2019-12-18 04:35:21'),
(9, 0, ',1,2,', 'User', 'fa fa-user', '/user', 4, '2019-03-31 22:54:25', '2019-12-18 04:35:21'),
(10, 9, ',1,2,', 'User List', 'fa fa-dot-circle', '/user/list', 41, '2019-03-31 22:55:32', '2019-12-18 04:35:21'),
(11, 9, ',1,2,', 'User Edit', 'fa fa-dot-circle', '/user/edit', 42, '2019-03-31 22:58:48', '2019-12-18 04:35:21'),
(12, 9, ',1,', 'User Role', 'fa fa-dot-circle', '/user/role', 43, '2019-03-31 22:59:13', '2019-12-18 04:35:21'),
(13, 0, ',1,2,', 'Menu', 'fa fa-list', '/menu', 5, '2019-03-31 22:59:33', '2019-12-18 04:35:21'),
(14, 13, ',1,2,', 'Add Menu', 'fa fa-pencil-alt', '/menu/edit', 51, '2019-03-31 22:59:58', '2019-12-18 04:35:21'),
(15, 13, ',1,2,', 'Menu List', 'fa fa-pencil-alt', '/menu/list', 52, '2019-03-31 23:00:18', '2019-12-18 04:35:21'),
(16, 13, ',1,2,', 'Menu Position', 'fa fa-list', '/menu/position', 53, '2019-03-31 23:00:37', '2019-12-18 04:35:21'),
(17, 0, ',1,', 'Admin Menu', 'fa fa-list', '/admin_menu', 6, '2019-03-31 23:01:10', '2019-12-18 04:35:21'),
(18, 17, ',1,', 'Add Menu', 'fa fa-pencil-alt', '/admin_menu/edit', 61, '2019-04-01 05:45:00', '2019-12-18 04:35:21'),
(19, 17, ',1,', 'Menu List', 'fa fa-list', '/admin_menu/list', 62, '2019-04-01 05:45:20', '2019-12-18 04:35:21'),
(20, 17, ',1,', 'Menu Parent', 'fa fa-list', '/admin_menu/list?id=0', 63, '2019-04-01 05:46:00', '2019-12-18 04:35:21'),
(21, 0, ',1,2,', 'Data', 'fa fa-database', '/visitor', 7, '2019-04-01 05:46:34', '2019-12-18 04:35:21'),
(22, 21, ',1,2,', 'Visitor', 'fa fa-chart-bar', '/visitor', 72, '2019-04-01 05:46:56', '2019-12-18 04:35:21'),
(23, 0, ',1,2,', 'Configuration', 'fa fa-cog', '/config', 8, '2019-04-01 06:03:37', '2019-12-18 04:35:21'),
(24, 23, ',1,2,', 'Logo', 'fa fa-cog', '/config/logo', 81, '2019-04-01 06:04:28', '2019-12-18 04:35:21'),
(25, 23, ',1,2,', 'Site', 'fa fa-cog', '/config/site', 82, '2019-04-01 06:04:41', '2019-12-18 04:35:21'),
(26, 23, ',1,2,', 'Templates', 'fa fa-cog', '/config/templates', 83, '2019-04-01 06:04:57', '2019-12-18 04:35:21'),
(27, 23, ',1,2,', 'Contact', 'fa fa-cog', '/config/contact', 84, '2019-04-01 06:05:14', '2019-12-18 04:35:21'),
(28, 23, ',1,2,', 'Style', 'fa fa-cog', '/config/style', 86, '2019-04-01 06:06:52', '2019-12-18 04:35:21'),
(29, 23, ',1,2,', 'Script', 'fa fa-cog', '/config/script', 87, '2019-04-01 06:07:29', '2019-12-18 04:35:21'),
(30, 21, ',1,2,', 'Backup', 'fa fa-download', '/backup', 73, '2019-04-01 06:08:04', '2019-12-18 04:35:21'),
(31, 21, ',1,2,', 'Restore', 'fa fa-upload', '/restore', 74, '2019-04-01 06:08:15', '2019-12-18 04:35:21'),
(32, 21, ',1,2,', 'Delete Cache', 'fa fa-trash', '/config/delete_cache', 75, '2019-04-04 00:08:10', '2019-12-18 04:35:21'),
(33, 21, ',1,2,', 'Invoice', 'fa fa-money', '/invoice', 71, '2019-04-05 23:07:23', '2019-12-18 04:35:21'),
(34, 23, ',1,2,', 'Bank Account', 'fa fa-user', '/config/bank_account', 85, '2019-04-06 01:37:09', '2019-12-18 04:35:21'),
(35, 23, ',1,', 'Dashboard', 'fa fa-chart-bar', '/config/dashboard', 88, '2019-04-19 18:37:39', '2019-12-18 04:35:21'),
(37, 21, ',1,', 'Subscribers', 'fa fa-user', '/subscriber', 1, '2019-04-22 06:37:13', '2019-12-18 04:35:21'),
(38, 0, ',1,2,', 'Question', 'fa fa-chart-bar', '#', 1, '2019-12-14 00:19:00', '2019-12-19 03:26:31'),
(39, 38, ',1,', 'Category', 'fa fa-list', '/question/category', 3, '2019-12-14 00:19:27', '2019-12-19 03:03:39'),
(40, 38, ',1,', 'Question', 'fa fa-list', '/question', 2, '2019-12-14 00:19:56', '2019-12-19 03:03:36'),
(41, 38, ',1,', 'Add Question', 'fa fa-plus', '/question/edit', 1, '2019-12-14 00:20:45', '2019-12-19 03:05:14'),
(42, 38, ',1,2,', 'Survey', 'fa fa-chart-bar', '/question/survey', 4, '2019-12-19 03:04:33', '2019-12-19 03:05:19');

DROP TABLE IF EXISTS `bank_account`;
CREATE TABLE `bank_account` (
  `id` int(11) UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bank_number` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `bank_account` (`id`, `bank_name`, `person_name`, `icon`, `bank_number`, `created`, `updated`) VALUES
(1, 'BCA', 'Iwan Safrudin', 'icon_BCA.png', '0312609779', '2019-04-14 16:18:57', '2019-12-18 04:35:21'),
(2, 'BNI', 'Iwan Safrudin', 'icon_BNI.png', '0813920638', '2019-04-14 16:19:55', '2019-12-18 04:35:21');

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `par_id` int(11) NOT NULL,
  `module` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=content,2=product',
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unread, 1=read',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `config` (`id`, `name`, `value`) VALUES
(1, 'templates', '{\"public_template\":\"village\",\"admin_template\":\"AdminLTE\"}'),
(2, 'site', '{\"title\":\"questioner\",\"link\":\"https:\\/\\/www.esoftgreat.com\",\"image\":\"image_questioner.png\",\"keyword\":\"questioner\",\"description\":\"questioner\",\"year\":\"2015\",\"lang\":\"id\",\"use_cache\":\"0\"}'),
(3, 'logo', '{\"title\":\"questioner\",\"image\":\"image_questioner.png\",\"width\":\"100\",\"height\":\"50\",\"display\":\"image\"}'),
(4, 'one-night_widget', '{\"template\":\"one-night\",\"menu_top\":{\"content\":\"1\"},\"content_slider\":{\"content\":\"latest\",\"limit\":\"7\"},\"content_hot\":{\"content\":\"latest\",\"limit\":\"7\"},\"content_top\":{\"content\":\"latest\",\"limit\":\"7\"},\"content\":{\"content\":\"latest\",\"limit\":\"7\"},\"content_bottom\":{\"content\":\"latest\",\"limit\":\"7\"},\"right\":{\"content\":\"1\",\"limit\":\"7\"},\"menu_right\":{\"content\":\"1\"},\"right_extra\":{\"content\":\"2\",\"limit\":\"7\"},\"menu_bottom_1\":{\"content\":\"2\"},\"menu_bottom_2\":{\"content\":\"2\"},\"menu_bottom_3\":{\"content\":\"2\"},\"menu_footer\":{\"content\":\"2\"}}'),
(5, 'contact', '{\"name\":\"esoftgreat\",\"description\":\"jasa pembuatan website dan software. sesuai kebutuhan dan keinginan anda\",\"address\":\"Jl Tulakan Km 1 \\r\\nDukuh Krajan \\r\\nDesa Tulakan Rt 06\\/02 \\r\\nKec Donorojo Kab Jepara \\r\\nJawa Tengah\\r\\nKode Pos 59454\",\"phone\":\"+6285290335332\",\"wa\":\"6285290335332\",\"email\":\"info@esoftgreat.com\",\"google\":\"https:\\/\\/plus.google.com\\/115611472723876300931\",\"facebook\":\"https:\\/\\/web.facebook.com\\/esoftgreat\\/\",\"twitter\":\"https:\\/\\/twitter.com\",\"instagram\":\"https:\\/\\/instagram.com\",\"linkedin\":\"https:\\/\\/linkedin.com\",\"wordpress\":\"https:\\/\\/esoftgreat.wordrpress.com\",\"yahoo\":\"\",\"youtube\":\"https:\\/\\/www.youtube.com\\/channel\\/UC7QNxh1R6eo3mO2hRJtj6xw?view_as=subscriber\"}'),
(6, 'header', '{\"image\":\"image_Selamat_Datang_di_Esoftgreat_1547957588.jpeg\",\"title\":\"Selamat Datang di Esoftgreat\",\"description\":\"JASA PEMBUATAN WEBSITE, DESAIN, ARTIKEL SEO, SOSIAL MEDIA MARKETING\"}'),
(7, 'Avilon_widget', '{\"template\":\"Avilon\",\"menu_top\":{\"content\":\"1\"},\"content_thumbnail\":{\"content\":\"4\",\"limit\":\"3\"},\"content_hot\":{\"content\":\"5\",\"limit\":\"1\"},\"content_top\":{\"content\":\"6\",\"limit\":\"4\"},\"content\":{\"content\":\"7\",\"limit\":\"3\"},\"content_banner\":{\"content\":\"8\",\"limit\":\"1\"},\"content_bottom\":{\"content\":\"9\",\"limit\":\"4\"},\"content_brand\":{\"content\":\"10\",\"limit\":\"10\"},\"content_pricing\":{\"content\":\"11\",\"limit\":\"3\"},\"content_question\":{\"content\":\"12\",\"limit\":\"7\"},\"content_team\":{\"content\":\"13\",\"limit\":\"7\"},\"content_gallery\":{\"content\":\"14\",\"limit\":\"6\"},\"content_photo\":{\"content\":\"4\",\"limit\":\"7\"},\"content_video\":{\"content\":\"24\",\"limit\":\"7\"},\"content_payment\":{\"content\":\"0\",\"limit\":\"7\"},\"menu_bottom\":{\"content\":\"0\"}}'),
(8, 'Avilon_script', '{\"script\":\"<!-- Go to www.addthis.com\\/dashboard to customize your tools -->\\r\\n<!-- <script type=\\\"text\\/javascript\\\" src=\\\"\\/\\/s7.addthis.com\\/js\\/300\\/addthis_widget.js#pubid=ra-5c2b7a98a617a916\\\"><\\/script> -->\"}'),
(9, 'Avilon_style', '{\"style\":\"<style>\\r\\n.credit{\\r\\npadding-bottom: 10px;\\r\\n}\\r\\n.product-screens img{\\r\\n border-radius: 25px;\\r\\n}\\r\\n#clients img{\\r\\n max-height: 150px;\\r\\n}\\r\\n#clients .col-md-4{\\r\\n text-align: center;\\r\\n}\\r\\n<\\/style>\\r\\n<!-- Global site tag (gtag.js) - Google Analytics -->\\r\\n<script async src=\\\"https:\\/\\/www.googletagmanager.com\\/gtag\\/js?id=UA-113848816-1\\\"><\\/script>\\r\\n<script>\\r\\n  window.dataLayer = window.dataLayer || [];\\r\\n  function gtag(){dataLayer.push(arguments);}\\r\\n  gtag(\'js\', new Date());\\r\\n\\r\\n  gtag(\'config\', \'UA-113848816-1\');\\r\\n<\\/script>\\r\\n<script async src=\\\"\\/\\/pagead2.googlesyndication.com\\/pagead\\/js\\/adsbygoogle.js\\\"><\\/script>\\r\\n<script>\\r\\n  (adsbygoogle = window.adsbygoogle || []).push({\\r\\n    google_ad_client: \\\"ca-pub-3145506515429478\\\",\\r\\n    enable_page_level_ads: true\\r\\n  });\\r\\n<\\/script>\"}'),
(10, 'dashboard', '{\"icon\":{\"bank_account\":\"fa fa-chart-bar\",\"comment\":\"fa fa-chart-bar\",\"content\":\"fa fa-chart-bar\",\"content_cat\":\"fa fa-chart-bar\",\"content_tag\":\"fa fa-chart-bar\",\"invoice\":\"fa fa-chart-bar\",\"menu\":\"fa fa-chart-bar\",\"menu_position\":\"fa fa-chart-bar\",\"message\":\"fa fa-chart-bar\",\"product\":\"fa fa-chart-bar\",\"product_cat\":\"fa fa-chart-bar\",\"product_tag\":\"fa fa-chart-bar\",\"subscriber\":\"\",\"user\":\"fa fa-chart-bar\",\"user_login\":\"fa fa-chart-bar\",\"user_login_failed\":\"fa fa-chart-bar\",\"user_role\":\"fa fa-chart-bar\",\"visitor\":\"fa fa-chart-bar\"},\"link\":{\"bank_account\":\"\\/admin\\/bank_account\",\"comment\":\"\",\"content\":\"\\/admin\\/content\\/list\",\"content_cat\":\"\\/admin\\/content\\/category\",\"content_tag\":\"\\/admin\\/content\\/tag\",\"invoice\":\"\\/admin\\/invoice\",\"menu\":\"\\/admin\\/menu\\/list\",\"menu_position\":\"\\/admin\\/menu\\/position\",\"message\":\"\\/admin\\/message\",\"product\":\"\",\"product_cat\":\"\",\"product_tag\":\"\",\"subscriber\":\"\",\"user\":\"\\/admin\\/user\\/list\",\"user_login\":\"\\/admin\\/user\\/login_list\",\"user_login_failed\":\"\\/admin\\/user\\/login_failed\",\"user_role\":\"\\/admin\\/user\\/role\",\"visitor\":\"\\/admin\\/visitor\"},\"publish_row\":[\"bank_account\",\"comment\",\"content\",\"content_cat\",\"content_tag\",\"invoice\",\"menu\",\"menu_position\",\"message\",\"user\",\"user_login\",\"user_login_failed\",\"user_role\",\"visitor\"],\"color_row\":{\"bank_account\":\"#00cccc\",\"comment\":\"#ff0000\",\"content\":\"#0000ff\",\"content_cat\":\"#00d100\",\"content_tag\":\"#ff00ff\",\"invoice\":\"#000000\",\"menu\":\"#00dede\",\"menu_position\":\"#ff0000\",\"message\":\"#0000ff\",\"product\":\"#00e300\",\"product_cat\":\"#c5c560\",\"product_tag\":\"#737c29\",\"subscriber\":\"#000000\",\"user\":\"#00e300\",\"user_login\":\"#ff00ff\",\"user_login_failed\":\"#000000\",\"user_role\":\"#e8e800\",\"visitor\":\"#000000\"}}'),
(11, 'subscriber', '{\"broadcast\":0}'),
(12, 'village_widget', '{\"template\":\"village\",\"menu_top\":{\"content\":\"1\"},\"content_slider\":{\"content\":\"3\",\"limit\":\"7\"},\"content_top\":{\"content\":\"5\",\"limit\":\"7\"},\"content\":{\"content\":\"6\",\"limit\":\"7\"},\"content_bottom\":{\"content\":\"7\",\"limit\":\"7\"},\"twitter_widget\":{\"content\":\"\",\"limit\":\"7\"},\"content_latest\":{\"content\":\"8\",\"limit\":\"7\"},\"content_popular\":{\"content\":\"10\",\"limit\":\"7\"},\"category\":{\"content\":\"1\",\"limit\":\"7\"},\"tag\":{\"content\":\"2\",\"limit\":\"7\"},\"menu_bottom_1\":{\"content\":\"2\"},\"menu_bottom_2\":{\"content\":\"2\"},\"menu_bottom_3\":{\"content\":\"2\"},\"menu_footer\":{\"content\":\"2\"}}'),
(13, 'magazine_widget', '{\"template\":\"magazine\",\"menu_top\":{\"content\":\"2\"},\"content_top_banner\":{\"content\":\"2\",\"limit\":\"7\"},\"menu_main\":{\"content\":\"1\"},\"content_news\":{\"content\":\"4\",\"limit\":\"7\"},\"content_slider\":{\"content\":\"4\",\"limit\":\"7\"},\"content_block_1\":{\"content\":\"0\",\"limit\":\"7\"},\"content_banner\":{\"content\":\"0\",\"limit\":\"7\"},\"content_block_2\":{\"content\":\"0\",\"limit\":\"7\"},\"content_gallery\":{\"content\":\"0\",\"limit\":\"7\"},\"content_grid\":{\"content\":\"12\",\"limit\":\"7\"},\"content_advertisement\":{\"content\":\"0\",\"limit\":\"7\"},\"category\":{\"content\":\"0\",\"limit\":\"7\"},\"twitter_widget\":{\"content\":\"\",\"limit\":\"7\"},\"content_popular\":{\"content\":\"0\",\"limit\":\"7\"},\"content_latest\":{\"content\":\"0\",\"limit\":\"7\"},\"content_banner_right\":{\"content\":\"5\",\"limit\":\"7\"},\"menu_bottom\":{\"content\":\"0\"},\"content_bottom\":{\"content\":\"0\",\"limit\":\"7\"}}');

DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `cat_ids` mediumtext NOT NULL,
  `tag_ids` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `source` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `document` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `hits` int(11) NOT NULL,
  `last_hits` datetime NOT NULL,
  `rating` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `content` (`id`, `cat_ids`, `tag_ids`, `title`, `slug`, `description`, `keyword`, `intro`, `content`, `source`, `image`, `icon`, `image_link`, `images`, `document`, `author`, `hits`, `last_hits`, `rating`, `params`, `created`, `updated`, `publish`) VALUES
(1, ',1,', '', 'Hello World', 'hello-world', 'Hello World\r\n', 'Hello World', 'Hello World\r\n', '<p>Hello World</p>\r\n', '', 'image_Hello_World_1541950550.png', '', '', '', '', 'root', 158, '0000-00-00 00:00:00', '', '', '2018-11-11 22:35:50', '2019-12-18 12:15:25', 1);

DROP TABLE IF EXISTS `content_cat`;
CREATE TABLE `content_cat` (
  `id` int(11) NOT NULL,
  `par_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `content_cat` (`id`, `par_id`, `title`, `slug`, `image`, `icon`, `description`, `publish`, `created`, `updated`) VALUES
(1, 0, 'Uncategorized', 'uncategorized', '', '', '', 1, '2018-11-11 22:23:38', '2019-12-18 04:35:21');

DROP TABLE IF EXISTS `content_tag`;
CREATE TABLE `content_tag` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `payment_method` tinyint(1) NOT NULL DEFAULT '1',
  `notes` varchar(255) NOT NULL,
  `items` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ppn` int(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `par_id` int(11) NOT NULL DEFAULT '0',
  `position_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` mediumtext NOT NULL,
  `tpl` varchar(255) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `menu_position`;
CREATE TABLE `menu_position` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `menu_position` (`id`, `title`, `created`, `updated`) VALUES
(1, 'Top Menu', '2018-11-12 02:16:02', '2019-12-18 04:35:21'),
(2, 'Bottom Menu', '2018-11-15 12:39:27', '2019-12-18 04:35:21');

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=unread,2=read',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_ids` text NOT NULL,
  `tag_ids` text NOT NULL,
  `image` varchar(11) NOT NULL,
  `images` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `qty` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = not publish, 1 = publish',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `product_cat`;
CREATE TABLE `product_cat` (
  `id` int(11) NOT NULL,
  `par_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE `product_tag` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `number` tinyint(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `question` (`id`, `cat_id`, `number`, `title`, `created`, `updated`) VALUES
(1, 1, 1, 'Pimpinan saya ikut bertanggung jawab terhadap pekerjaan bawahan', '2019-12-18 03:15:51', '2019-12-18 04:35:21'),
(2, 1, 2, 'Pimpinan saya memperhatikan kesejahteraan bawahan', '2019-12-18 03:16:06', '2019-12-18 04:35:21'),
(3, 1, 3, 'Pimpinan saya mendukung, memberikan support terhadap penyelesaian kinerja bawahan', '2019-12-18 03:16:20', '2019-12-18 04:35:21'),
(4, 1, 4, 'Staf di instansi saya menerima tugas yang tidak terstruktur', '2019-12-18 03:17:29', '2019-12-18 04:35:21'),
(5, 1, 5, 'Staf di instansi saya bekerja secara sukarela melakukan tugas tambahan', '2019-12-18 03:17:44', '2019-12-18 04:35:21'),
(6, 1, 6, 'Staf di instansi saya bersedia melaksanakan tugas yang diberikan pimpinan', '2019-12-18 04:05:19', '2019-12-18 04:35:21'),
(7, 2, 1, 'Saya bekerja tepat waktu dalam mengoperasionakan SIstem Informasi Desa (SID)', '2019-12-18 04:06:06', '2019-12-18 04:35:21'),
(8, 2, 2, 'Saya melakukan perencanaan yang tepat dalam mengoperasionakan SIstem Informasi Desa (SID)', '2019-12-18 04:06:19', '2019-12-18 04:35:21'),
(9, 3, 1, 'Saya memiliki dorongan kerja yang  unggul untuk mencapai target yang ditetapkan', '2019-12-18 04:06:52', '2019-12-18 04:35:21'),
(10, 3, 2, 'Saya menerima  umpan balik yang cepat atas kinerja yang telah saya lakukan', '2019-12-18 04:07:19', '2019-12-18 04:35:21'),
(11, 4, 1, 'Saya mengoperasionalkan, mengakses, menyimpan dan mengolah Sistem Informasi  Desa (SID)  sesuai dengan target kinerja yang sudah ditentukan', '2019-12-18 04:08:09', '2019-12-18 04:35:21'),
(12, 4, 2, 'Saya membantu dan memudahkan Pemerintah Desa dalam mengakses informasi dengan pemerintah kabupaten, propinsi dan pusat tentang rencana kerja Pemerintah', '2019-12-18 04:08:21', '2019-12-18 04:35:21'),
(13, 1, 7, 'Staf di instansi saya loyal terhadap pimpinan', '2019-12-18 04:43:33', '2019-12-18 04:43:33'),
(14, 1, 8, 'Pimpinan di isntasni saya memberikan kepercayaan terhadap bawahan', '2019-12-18 04:44:41', '2019-12-18 04:44:41'),
(16, 1, 9, 'Pimpinan Staf di instansi saya bertanggung jawan atas kinerja bawahannya', '2019-12-18 04:46:09', '2019-12-18 04:46:09'),
(17, 1, 10, 'Pegawai di instasni saya mempunyai komitmen yang besar dari atasan terhadap bawahan', '2019-12-18 04:46:44', '2019-12-18 04:46:44'),
(18, 1, 11, 'Staf di instansi saya mendapatkan kompensasi atas pekerjaan yang dilakukan', '2019-12-18 04:47:02', '2019-12-18 04:47:02'),
(19, 1, 12, 'Staf di instansi saya disiplin tidak toleransi absensi', '2019-12-18 04:47:23', '2019-12-18 04:47:23'),
(20, 1, 13, 'Pimpinan di instansi saya mengatur tugas sesuai dengan tugas pokok dan fungsinya dan bawahan melaksanakan dengan sebaik baiknya', '2019-12-18 04:47:34', '2019-12-18 04:47:34'),
(24, 2, 3, 'Saya memiliki inisiatif memperbaharui data, mempublikasikan data, merespon tanggapan dalam mengoperasionakan Sistem Informasi Desa (SID)', '2019-12-18 04:50:25', '2019-12-18 04:50:25'),
(25, 2, 4, 'Saya teliti dalam memasukkan data dalam SID', '2019-12-18 04:50:39', '2019-12-18 04:50:39'),
(29, 2, 5, 'Saya mengecek ulang, menerima masukan dan segala bentuk komunikasi  dalam mengoperasionakan Sistem Informasi Desa (SID)', '2019-12-18 04:51:59', '2019-12-18 04:51:59'),
(30, 2, 6, 'Saya fleksibel dalam mengoperasionakan Sistem Informasi Desa (SID)', '2019-12-18 04:52:08', '2019-12-18 04:52:08'),
(31, 2, 7, 'Saya memiliki rasa empati, terhadap rekan kerja yang kesusahan', '2019-12-18 04:52:21', '2019-12-18 04:52:21'),
(32, 2, 8, 'Persuatif', '2019-12-18 04:52:48', '2019-12-18 04:52:48'),
(33, 2, 9, 'Saya mengoperasionakan Sistem Informasi Desa (SID) dengan membetuk jaringan kerja', '2019-12-18 04:53:05', '2019-12-18 04:53:05'),
(34, 2, 10, 'Saya negoisasi terhadap segala bentuk komunikasi yang ada di SID ', '2019-12-18 04:53:26', '2019-12-18 04:53:26'),
(35, 2, 11, 'Saya percaya diri, dalam mengoperasionakan Sistem Informasi Desa (SID)', '2019-12-18 04:53:45', '2019-12-18 04:53:45'),
(36, 2, 12, 'Saya bekerja dalam tim dalam mengoperasionakan Sistem Informasi Desa (SID) ', '2019-12-18 04:53:59', '2019-12-18 04:53:59'),
(37, 2, 13, 'Pengembangan orang lain', '2019-12-18 04:54:20', '2019-12-18 04:54:20'),
(38, 2, 14, 'Saya berkomunikasi secara lisan dengan rekan kerja maupun pimpinan dalam  mengoperasionakan Sistem Informasi Desa (SID) ', '2019-12-18 04:54:41', '2019-12-18 04:54:41'),
(39, 2, 15, 'Saya menggunakan konsep sesuai dengan Peraturan Gubernur Jawa Tengah Nomor 47 Tahun 2016 dalam  mengoperasionakan Sistem Informasi Desa (SID) ', '2019-12-18 04:54:56', '2019-12-18 04:54:56'),
(40, 2, 16, 'Saya menggunakan pola yang sistematis dalam mengoperasionakan Sistem Informasi Desa (SID)', '2019-12-18 04:55:09', '2019-12-18 04:55:09'),
(41, 2, 17, 'Saya belajar dan mengembangkan pengetahuan dalam mengoperasionakan Sistem Informasi Desa (SID)', '2019-12-18 04:59:27', '2019-12-18 04:59:27'),
(42, 2, 18, 'Saya menggunakan teknologi dalam  mengoperasionakan Sistem Informasi Desa (SID) Manajemen lisan', '2019-12-18 05:00:00', '2019-12-18 05:00:00'),
(43, 2, 19, 'Saya menganalisis  jumlah pekerjaan yang harus diselesaikan  dalam  mengoperasionakan Sistem Informasi Desa (SID) Manajemen lisan', '2019-12-18 05:00:14', '2019-12-18 05:00:14'),
(44, 2, 20, 'Saya mempublikasikan data dan informasi dalam Sistem Informasi Desa sesuai dengan kondisi riil di masyarakat', '2019-12-18 05:00:29', '2019-12-18 05:00:29'),
(45, 2, 21, 'Saya berkomunikasi secara tertulis  dengan rekan kerja maupun pimpinan dalam  mengoperasionakan Sistem Informasi Desa (SID) Manajemen lisan', '2019-12-18 05:00:57', '2019-12-18 05:00:57'),
(46, 3, 3, 'Saya berusaha keras supaya sukses.', '2019-12-18 05:01:45', '2019-12-18 05:01:45'),
(47, 3, 4, 'Saya mempunyai hasrat untuk berpengaruh  dalam mencapai target kinerja', '2019-12-18 05:01:58', '2019-12-18 05:01:58'),
(48, 3, 5, 'Saya mampu mengendalikan orang lain dalam bekerja sebagai tim.', '2019-12-18 05:02:15', '2019-12-18 05:02:15'),
(49, 3, 6, 'Saya menyukai ditempatkan dalam situasi yang kompetitif ', '2019-12-18 05:03:10', '2019-12-18 05:03:10'),
(50, 3, 7, 'Saya lebih peduli terhadap pencapaian kinerja', '2019-12-18 05:03:46', '2019-12-18 05:03:46'),
(51, 3, 8, 'Saya berjuang keras untuk mendapatkan persahabatan', '2019-12-18 05:04:06', '2019-12-18 05:04:06'),
(52, 3, 9, 'Saya lebih menyukai situasi kooperatif ', '2019-12-18 05:04:23', '2019-12-18 05:04:23'),
(53, 3, 10, 'Saya tidak menyukai situasi kompetitif  yang tidak sehat', '2019-12-18 05:04:47', '2019-12-18 05:04:47'),
(54, 3, 11, 'Saya menginginkan hubungan dengan timbal balik yang tinggi dalam bekerja', '2019-12-18 05:05:04', '2019-12-18 05:05:04'),
(55, 4, 3, 'Saya mampu menyelesaikan pekerjaan sesuai dengan jumlah item kegiatan sebagai operator SID', '2019-12-18 05:06:07', '2019-12-18 05:06:07'),
(56, 4, 4, 'Saya mampu menyelesaikan pekerjaan sesuai rencana kegiatan sebagai operator SID', '2019-12-18 05:06:19', '2019-12-18 05:06:19'),
(57, 4, 5, 'Saya  menyelesaikan pekerjaan yaitu memasukkan data, merespon tanggapan, pertanyaan, masukan dan segala bentuk komunikasi yang ada di SID tepat waktu dan sesuai jadwal yang ditentukan', '2019-12-18 05:06:35', '2019-12-18 05:06:35'),
(58, 4, 6, 'Saya  menyelesaikan masalah dengan  meningkatkan kualitas pelayanan administrasi Desa', '2019-12-18 05:06:48', '2019-12-18 05:06:48'),
(59, 4, 7, 'Saya  menggunakan sumber daya yang ada secara efektif dalam bekerja sebagai operator SID', '2019-12-18 05:06:58', '2019-12-18 05:06:58'),
(60, 4, 8, 'Saya  menggunakan keuangan kantor secara efisien dalam mengoperasionalkan SID', '2019-12-18 05:07:15', '2019-12-18 05:07:15'),
(61, 4, 9, 'Saya  efisien menggunakan materiil  kantor dalam dalam mengoperasionalkan SID', '2019-12-18 05:07:27', '2019-12-18 05:07:27'),
(62, 4, 10, 'Saya menggunakan teknologi yang efektif dalam dalam mengoperasionalkan SID', '2019-12-18 05:07:41', '2019-12-18 05:07:41'),
(63, 4, 11, 'Saya menyelesaikan pekerjaan walaupun tanpa disupervisi pimpinan', '2019-12-18 05:09:30', '2019-12-18 05:09:30'),
(64, 4, 12, 'Saya menyelesaikan pekerjaan walaupun tanpa  intervensi  pimpinan', '2019-12-18 05:09:43', '2019-12-18 05:09:43'),
(65, 4, 13, 'Saya selalu meningkatkan kemampuan individu yang mendukung dalam mengoperasionalkan SID', '2019-12-18 05:10:03', '2019-12-18 05:10:03'),
(66, 4, 14, 'Saya selalu meningkatkan kemampuan individu  agar dapat membantu teman yang kesulitan dalam bekerja', '2019-12-18 05:10:11', '2019-12-18 05:10:11'),
(67, 4, 15, 'Saya bekerjasama dengan rekan kerja dalam menyelesaikan pekerjaan agar lebih efektif sebagai operator SID', '2019-12-18 05:10:30', '2019-12-18 05:10:30');

DROP TABLE IF EXISTS `question_cat`;
CREATE TABLE `question_cat` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `question_cat` (`id`, `title`, `description`, `created`, `updated`) VALUES
(1, 'Leader -Member Exchange (LMX)', '', '2019-12-15 02:14:00', '2019-12-18 04:35:21'),
(2, 'Kompetensi', '', '2019-12-15 02:14:08', '2019-12-18 04:35:21'),
(3, 'Motivasi', '', '2019-12-15 02:14:17', '2019-12-18 04:35:21'),
(4, 'Kinerja', '', '2019-12-15 02:14:20', '2019-12-18 04:35:21');

DROP TABLE IF EXISTS `responden`;
CREATE TABLE `responden` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `usia` tinyint(1) NOT NULL,
  `gol` tinyint(1) NOT NULL,
  `kelamin` tinyint(1) NOT NULL,
  `pend_terakhir` tinyint(1) NOT NULL,
  `masa_kerja` tinyint(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `responden` (`id`, `nama`, `usia`, `gol`, `kelamin`, `pend_terakhir`, `masa_kerja`, `created`) VALUES
(1, 'iwan safrudin', 1, 1, 1, 5, 1, '2019-12-19 04:48:41');

DROP TABLE IF EXISTS `responses`;
CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `responden_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` tinyint(1) NOT NULL COMMENT '1-7',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `subscriber` (`id`, `email`, `created`, `updated`) VALUES
(1, 'iwansafr@gmail.com', '2019-04-22 06:39:07', '2019-12-18 04:35:21');

DROP TABLE IF EXISTS `testimonial`;
CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `testimonial` text NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `testimonial` (`id`, `name`, `email`, `profession`, `testimonial`, `publish`, `created`, `updated`) VALUES
(2, 'iwan', 'iwansafr@gmail.com', 'guru', 'keren websitenya', 0, '2019-08-27 11:53:56', '2019-12-18 04:35:21');

DROP TABLE IF EXISTS `trash`;
CREATE TABLE `trash` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `table_title` varchar(255) NOT NULL,
  `table_content` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `trash` (`id`, `user_id`, `table_id`, `table_title`, `table_content`, `created`) VALUES
(1, 1, 15, 'question', '{\"id\":\"15\",\"cat_id\":\"0\",\"number\":\"9\",\"title\":\"Pimpinan Staf di instansi saya bertanggung jawan atas kinerja bawahannya\",\"created\":\"2019-12-18 11:44:59\",\"updated\":\"2019-12-18 11:44:59\"}', '2019-12-18 11:46:00'),
(2, 1, 21, 'question', '{\"id\":\"21\",\"cat_id\":\"4\",\"number\":\"3\",\"title\":\"Saya memiliki inisiatif memperbaharui data, mempublikasikan data, merespon tanggapan dalam mengoperasionakan Sistem Informasi Desa (SID)\",\"created\":\"2019-12-18 11:48:10\",\"updated\":\"2019-12-18 11:48:10\"}', '2019-12-18 11:49:25'),
(3, 1, 22, 'question', '{\"id\":\"22\",\"cat_id\":\"4\",\"number\":\"4\",\"title\":\"Saya teliti dalam memasukkan data dalam SID\",\"created\":\"2019-12-18 11:48:35\",\"updated\":\"2019-12-18 11:48:35\"}', '2019-12-18 11:49:25'),
(4, 1, 23, 'question', '{\"id\":\"23\",\"cat_id\":\"4\",\"number\":\"5\",\"title\":\"Saya mengecek ulang, menerima masukan dan segala bentuk komunikasi  dalam mengoperasionakan Sistem Informasi Desa (SID)\",\"created\":\"2019-12-18 11:48:59\",\"updated\":\"2019-12-18 11:48:59\"}', '2019-12-18 11:49:25'),
(5, 1, 26, 'question', '{\"id\":\"26\",\"cat_id\":\"0\",\"number\":\"5\",\"title\":\"Saya mengecek ulang, menerima masukan dan segala bentuk komunikasi  dalam mengoperasionakan Sistem Informasi Desa (SID)\",\"created\":\"2019-12-18 11:50:50\",\"updated\":\"2019-12-18 11:50:50\"}', '2019-12-18 11:51:41'),
(6, 1, 27, 'question', '{\"id\":\"27\",\"cat_id\":\"0\",\"number\":\"6\",\"title\":\"Saya fleksibel dalam mengoperasionakan Sistem Informasi Desa (SID)\",\"created\":\"2019-12-18 11:51:01\",\"updated\":\"2019-12-18 11:51:01\"}', '2019-12-18 11:51:41'),
(7, 1, 28, 'question', '{\"id\":\"28\",\"cat_id\":\"2\",\"number\":\"7\",\"title\":\"Saya memiliki rasa empati, terhadap rekan kerja yang kesusahan\",\"created\":\"2019-12-18 11:51:16\",\"updated\":\"2019-12-18 11:51:16\"}', '2019-12-18 11:51:41');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = not active',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `username`, `password`, `email`, `image`, `user_role_id`, `active`, `created`, `updated`) VALUES
(1, 'root', '$2y$10$.ux0EV2pJAwXywYZGEVZDOo4nmp5eb/mHI1QKLen9w.6uJNKFnSCq', 'root@esoftgreat.com', '', 1, 1, '2018-11-03 07:36:32', '2019-12-19 10:24:55'),
(2, 'admin', '$2y$10$xTTMoe4S/xAvIJ49qCihZeHqxO/K/bWT9f84L3/g/FX6c8YTKPfcO', 'question@mandesa.co.id', '', 2, 1, '2019-12-19 10:25:53', '2019-12-19 10:25:53');

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=failed, 1=success',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user_login` (`id`, `user_id`, `ip`, `browser`, `status`, `created`) VALUES
(1, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-14 07:02:41'),
(2, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-14 18:41:52'),
(3, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-15 01:48:53'),
(4, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 1, '2019-12-18 10:01:28'),
(5, 1, '36.73.33.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 1, '2019-12-18 11:36:33'),
(6, 1, '36.73.34.39', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-19 02:16:31'),
(7, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-19 05:30:06'),
(8, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-19 10:03:11'),
(9, 0, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 0, '2019-12-19 10:25:03'),
(10, 0, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 0, '2019-12-19 10:25:07'),
(11, 0, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 0, '2019-12-19 10:25:14'),
(12, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-19 10:25:18'),
(13, 0, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 0, '2019-12-19 10:26:03'),
(14, 2, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-19 10:26:10'),
(15, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2019-12-19 10:26:23');

DROP TABLE IF EXISTS `user_login_failed`;
CREATE TABLE `user_login_failed` (
  `id` int(11) NOT NULL,
  `user_login_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `level` tinyint(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user_role` (`id`, `level`, `title`, `description`, `created`, `updated`) VALUES
(1, 1, 'root', 'super user', '2018-11-02 22:57:22', '2019-12-18 04:35:21'),
(2, 2, 'admin', 'the administrator', '2018-11-02 22:57:22', '2019-12-18 04:35:21'),
(3, 5, 'Member', 'User member yang hanya berlangganan saja', '2018-11-04 12:59:26', '2019-12-18 04:35:21');

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `visited` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `country` varchar(10) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `content_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `content_tag`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `menu_position`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `product_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `question_cat`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `responden`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `trash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user_login_failed`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
ALTER TABLE `bank_account`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `content_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `content_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `menu_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `product_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `product_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
ALTER TABLE `question_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `trash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
ALTER TABLE `user_login_failed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `trash`
  ADD CONSTRAINT `trash_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
