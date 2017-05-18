# WordPress MySQL database migration
#
# Generated: Thursday 18. May 2017 22:08 UTC
# Hostname: localhost
# Database: `c4c`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-08 17:07:24', '2017-05-08 17:07:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 32, 'mike', 'dennison1969@gmail.com', '', '::1', '2017-05-16 20:51:56', '2017-05-16 20:51:56', 'test comment', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '', 0, 1),
(3, 32, 'mike', 'dennison1969@gmail.com', '', '::1', '2017-05-17 02:13:02', '2017-05-17 02:13:02', 'test2', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '', 0, 1),
(4, 32, 'mike', 'dennison1969@gmail.com', '', '::1', '2017-05-17 02:26:46', '2017-05-17 02:26:46', 'sweet!', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '', 2, 1),
(5, 32, 'mike', 'dennison1969@gmail.com', '', '::1', '2017-05-17 04:35:42', '2017-05-17 04:35:42', 'woot!', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '', 2, 1),
(6, 31, 'mike', 'dennison1969@gmail.com', '', '::1', '2017-05-18 21:11:59', '2017-05-18 21:11:59', 'test comment', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '', 0, 1) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/c4c', 'yes'),
(2, 'home', 'http://localhost:8888/c4c', 'yes'),
(3, 'blogname', 'Challenge for Change', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dennison1969@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:176:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:8:"story/?$";s:25:"index.php?post_type=story";s:38:"story/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=story&feed=$matches[1]";s:33:"story/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=story&feed=$matches[1]";s:25:"story/page/([0-9]{1,})/?$";s:43:"index.php?post_type=story&paged=$matches[1]";s:16:"conversations/?$";s:33:"index.php?post_type=conversations";s:46:"conversations/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=conversations&feed=$matches[1]";s:41:"conversations/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=conversations&feed=$matches[1]";s:33:"conversations/page/([0-9]{1,})/?$";s:51:"index.php?post_type=conversations&paged=$matches[1]";s:14:"custom_type/?$";s:31:"index.php?post_type=custom_type";s:44:"custom_type/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=custom_type&feed=$matches[1]";s:39:"custom_type/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=custom_type&feed=$matches[1]";s:31:"custom_type/page/([0-9]{1,})/?$";s:49:"index.php?post_type=custom_type&paged=$matches[1]";s:52:"custom-slug/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_cat=$matches[1]&feed=$matches[2]";s:47:"custom-slug/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_cat=$matches[1]&feed=$matches[2]";s:28:"custom-slug/([^/]+)/embed/?$";s:43:"index.php?custom_cat=$matches[1]&embed=true";s:40:"custom-slug/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?custom_cat=$matches[1]&paged=$matches[2]";s:22:"custom-slug/([^/]+)/?$";s:32:"index.php?custom_cat=$matches[1]";s:51:"custom_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_tag=$matches[1]&feed=$matches[2]";s:46:"custom_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?custom_tag=$matches[1]&feed=$matches[2]";s:27:"custom_tag/([^/]+)/embed/?$";s:43:"index.php?custom_tag=$matches[1]&embed=true";s:39:"custom_tag/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?custom_tag=$matches[1]&paged=$matches[2]";s:21:"custom_tag/([^/]+)/?$";s:32:"index.php?custom_tag=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:53:"story_series/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?story_series=$matches[1]&feed=$matches[2]";s:48:"story_series/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?story_series=$matches[1]&feed=$matches[2]";s:29:"story_series/([^/]+)/embed/?$";s:45:"index.php?story_series=$matches[1]&embed=true";s:41:"story_series/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?story_series=$matches[1]&paged=$matches[2]";s:23:"story_series/([^/]+)/?$";s:34:"index.php?story_series=$matches[1]";s:57:"conversation_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?conversation_tag=$matches[1]&feed=$matches[2]";s:52:"conversation_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?conversation_tag=$matches[1]&feed=$matches[2]";s:33:"conversation_tag/([^/]+)/embed/?$";s:49:"index.php?conversation_tag=$matches[1]&embed=true";s:45:"conversation_tag/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?conversation_tag=$matches[1]&paged=$matches[2]";s:27:"conversation_tag/([^/]+)/?$";s:38:"index.php?conversation_tag=$matches[1]";s:33:"story/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"story/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"story/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"story/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"story/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"story/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"story/([^/]+)/embed/?$";s:38:"index.php?story=$matches[1]&embed=true";s:26:"story/([^/]+)/trackback/?$";s:32:"index.php?story=$matches[1]&tb=1";s:46:"story/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?story=$matches[1]&feed=$matches[2]";s:41:"story/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?story=$matches[1]&feed=$matches[2]";s:34:"story/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?story=$matches[1]&paged=$matches[2]";s:41:"story/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?story=$matches[1]&cpage=$matches[2]";s:30:"story/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?story=$matches[1]&page=$matches[2]";s:22:"story/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"story/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"story/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"story/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"story/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"story/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"conversations/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"conversations/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"conversations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"conversations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"conversations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"conversations/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"conversations/([^/]+)/embed/?$";s:46:"index.php?conversations=$matches[1]&embed=true";s:34:"conversations/([^/]+)/trackback/?$";s:40:"index.php?conversations=$matches[1]&tb=1";s:54:"conversations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?conversations=$matches[1]&feed=$matches[2]";s:49:"conversations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?conversations=$matches[1]&feed=$matches[2]";s:42:"conversations/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?conversations=$matches[1]&paged=$matches[2]";s:49:"conversations/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?conversations=$matches[1]&cpage=$matches[2]";s:38:"conversations/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?conversations=$matches[1]&page=$matches[2]";s:30:"conversations/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"conversations/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"conversations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"conversations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"conversations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"conversations/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"custom_type/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"custom_type/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"custom_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"custom_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"custom_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"custom_type/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"custom_type/([^/]+)/embed/?$";s:44:"index.php?custom_type=$matches[1]&embed=true";s:32:"custom_type/([^/]+)/trackback/?$";s:38:"index.php?custom_type=$matches[1]&tb=1";s:52:"custom_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?custom_type=$matches[1]&feed=$matches[2]";s:47:"custom_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?custom_type=$matches[1]&feed=$matches[2]";s:40:"custom_type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?custom_type=$matches[1]&paged=$matches[2]";s:47:"custom_type/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?custom_type=$matches[1]&cpage=$matches[2]";s:36:"custom_type/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?custom_type=$matches[1]&page=$matches[2]";s:28:"custom_type/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"custom_type/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"custom_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"custom_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"custom_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"custom_type/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:29:"acf-repeater/acf-repeater.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:37:"post-types-order/post-types-order.php";i:3;s:45:"simple-page-ordering/simple-page-ordering.php";i:4;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:5;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";i:6;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'c4c', 'yes'),
(41, 'stylesheet', 'c4c', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '6', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:3;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:2:{i:0;s:12:"categories-2";i:1;s:14:"recent-posts-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1495170444;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1495213656;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1495213996;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1494263552;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(136, 'recently_activated', 'a:2:{s:31:"wp-spamshield/wp-spamshield.php";i:1495050530;s:43:"custom-taxonomy-order-ne/customtaxorder.php";i:1494525026;}', 'yes'),
(138, 'current_theme', 'Challenge for Change', 'yes'),
(139, 'theme_mods_c4c', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:8:"main-nav";i:2;s:12:"footer-links";i:2;}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(156, 'spamshield_wpssmid_cache', 'a:0:{}', 'yes'),
(157, 'spamshield_admins', 'a:0:{}', 'yes'),
(158, 'spamshield_options', 'a:52:{s:21:"init_user_approve_run";b:1;s:22:"form_message_recipient";s:22:"dennison1969@gmail.com";s:12:"install_date";s:10:"2017-05-09";s:7:"log_key";s:32:"f2919ab068e27bff9da9ce952ca53ef3";s:12:"wpss_version";s:6:"1.9.10";s:18:"auto_update_plugin";i:1;s:20:"block_all_trackbacks";i:0;s:19:"block_all_pingbacks";i:0;s:15:"comment_logging";i:0;s:19:"comment_logging_all";i:0;s:26:"comment_logging_start_date";i:0;s:24:"comment_logging_end_date";i:0;s:26:"enhanced_comment_blacklist";i:0;s:16:"enable_whitelist";i:0;s:18:"comment_min_length";i:15;s:17:"allow_proxy_users";i:1;s:15:"hide_extra_data";i:0;s:27:"registration_shield_disable";i:0;s:27:"registration_shield_level_1";i:0;s:18:"disable_cf7_shield";i:0;s:17:"disable_gf_shield";i:0;s:24:"disable_misc_form_shield";i:0;s:20:"disable_email_encode";i:0;s:29:"allow_comment_author_keywords";i:0;s:20:"form_include_website";i:1;s:20:"form_require_website";i:0;s:18:"form_include_phone";i:1;s:18:"form_require_phone";i:0;s:20:"form_include_company";i:0;s:20:"form_require_company";i:0;s:27:"form_include_drop_down_menu";i:0;s:27:"form_require_drop_down_menu";i:0;s:25:"form_drop_down_menu_title";s:0:"";s:26:"form_drop_down_menu_item_1";s:0:"";s:26:"form_drop_down_menu_item_2";s:0:"";s:26:"form_drop_down_menu_item_3";s:0:"";s:26:"form_drop_down_menu_item_4";s:0:"";s:26:"form_drop_down_menu_item_5";s:0:"";s:26:"form_drop_down_menu_item_6";s:0:"";s:26:"form_drop_down_menu_item_7";s:0:"";s:26:"form_drop_down_menu_item_8";s:0:"";s:26:"form_drop_down_menu_item_9";s:0:"";s:27:"form_drop_down_menu_item_10";s:0:"";s:16:"form_mail_encode";i:1;s:18:"form_message_width";i:40;s:19:"form_message_height";i:10;s:23:"form_message_min_length";i:25;s:31:"form_response_thank_you_message";s:46:"Your message was sent successfully. Thank you.";s:22:"form_include_user_meta";i:1;s:19:"promote_plugin_link";i:0;s:9:"surrogate";b:0;s:8:"web_host";b:0;}', 'yes'),
(159, 'spamshield_count', '0', 'yes'),
(161, 'widget_spamshield_widget_counter_sm', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(162, 'widget_wp_spamshield_counter_css', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'widget_wp_spamshield_end_blog_spam', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(166, 'acf_version', '4.4.11', 'yes'),
(182, 'story_series_3_image', '52', 'no'),
(183, '_story_series_3_image', 'field_5911f8ffd5dfc', 'no'),
(184, 'story_series_3_copy', 'Lead in copy (20 words). Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'no'),
(185, '_story_series_3_copy', 'field_5911f91dd5dfd', 'no'),
(186, 'story_series_6_image', '52', 'no'),
(187, '_story_series_6_image', 'field_5911f8ffd5dfc', 'no'),
(188, 'story_series_6_copy', 'Challenge For Change uses listening and the democratic power of media to foster connections and strengthen relationships between people and communities.', 'no'),
(189, '_story_series_6_copy', 'field_5911f91dd5dfd', 'no'),
(193, 'tto_options', 'a:3:{s:8:"autosort";s:1:"1";s:9:"adminsort";s:1:"1";s:10:"capability";s:15:"install_plugins";}', 'yes'),
(228, 'WPLANG', '', 'yes'),
(308, 'cpto_options', 'a:6:{s:23:"show_reorder_interfaces";a:5:{s:4:"post";s:4:"show";s:10:"attachment";s:4:"show";s:5:"story";s:4:"show";s:13:"conversations";s:4:"show";s:11:"custom_type";s:4:"show";}s:8:"autosort";i:1;s:9:"adminsort";i:1;s:17:"archive_drag_drop";i:1;s:10:"capability";s:4:"read";s:21:"navigation_sort_apply";i:1;}', 'yes'),
(309, 'CPT_configured', 'TRUE', 'yes'),
(315, 'story_series_3_featured', '1', 'no'),
(316, '_story_series_3_featured', 'field_591b3903146cd', 'no'),
(318, 'story_series_6_featured', '0', 'no'),
(319, '_story_series_6_featured', 'field_591b3903146cd', 'no'),
(324, 'story_series_3_location', 'Vancouver, BC', 'no'),
(325, '_story_series_3_location', 'field_591b4532d1931', 'no'),
(328, 'story_series_3_image_caption', 'Photo by the_sand_is_neon via Flickr', 'no'),
(329, '_story_series_3_image_caption', 'field_591b50e58f188', 'no'),
(368, 'story_series_children', 'a:0:{}', 'yes'),
(369, 'story_series_6_image_caption', 'This is a picture from the second series', 'no'),
(370, '_story_series_6_image_caption', 'field_591b50e58f188', 'no'),
(371, 'story_series_6_location', 'Victoria, BC', 'no'),
(372, '_story_series_6_location', 'field_591b4532d1931', 'no'),
(409, 'category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1494889115:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1495130946:1'),
(7, 6, '_wp_page_template', 'default'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1494263695'),
(10, 2, '_wp_desired_post_slug', 'sample-page'),
(11, 9, '_edit_last', '1'),
(12, 9, '_edit_lock', '1495044448:1'),
(13, 9, '_wp_page_template', 'default'),
(14, 11, '_edit_last', '1'),
(15, 11, '_edit_lock', '1495053386:1'),
(16, 11, '_wp_page_template', 'default'),
(17, 13, '_edit_last', '1'),
(18, 13, '_edit_lock', '1495145135:1'),
(19, 13, '_wp_page_template', 'default'),
(20, 15, '_menu_item_type', 'post_type'),
(21, 15, '_menu_item_menu_item_parent', '0'),
(22, 15, '_menu_item_object_id', '13'),
(23, 15, '_menu_item_object', 'page'),
(24, 15, '_menu_item_target', ''),
(25, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 15, '_menu_item_xfn', ''),
(27, 15, '_menu_item_url', ''),
(29, 16, '_menu_item_type', 'post_type'),
(30, 16, '_menu_item_menu_item_parent', '0'),
(31, 16, '_menu_item_object_id', '11'),
(32, 16, '_menu_item_object', 'page'),
(33, 16, '_menu_item_target', ''),
(34, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 16, '_menu_item_xfn', ''),
(36, 16, '_menu_item_url', ''),
(38, 17, '_menu_item_type', 'post_type'),
(39, 17, '_menu_item_menu_item_parent', '0'),
(40, 17, '_menu_item_object_id', '9'),
(41, 17, '_menu_item_object', 'page'),
(42, 17, '_menu_item_target', ''),
(43, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 17, '_menu_item_xfn', ''),
(45, 17, '_menu_item_url', ''),
(47, 18, '_menu_item_type', 'post_type'),
(48, 18, '_menu_item_menu_item_parent', '0'),
(49, 18, '_menu_item_object_id', '6'),
(50, 18, '_menu_item_object', 'page'),
(51, 18, '_menu_item_target', ''),
(52, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 18, '_menu_item_xfn', ''),
(54, 18, '_menu_item_url', ''),
(65, 30, '_edit_last', '1'),
(66, 30, '_edit_lock', '1495079762:1'),
(67, 31, '_edit_last', '1'),
(68, 31, '_edit_lock', '1495078873:1'),
(69, 32, '_edit_last', '1'),
(70, 32, '_edit_lock', '1494986472:1'),
(71, 33, '_edit_last', '1'),
(72, 33, '_edit_lock', '1494989332:1'),
(73, 34, '_edit_last', '1'),
(74, 34, 'field_5911f8ffd5dfc', 'a:11:{s:3:"key";s:19:"field_5911f8ffd5dfc";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(75, 34, 'field_5911f91dd5dfd', 'a:11:{s:3:"key";s:19:"field_5911f91dd5dfd";s:5:"label";s:4:"Copy";s:4:"name";s:4:"copy";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_591b3903146cd";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(77, 34, 'position', 'normal'),
(78, 34, 'layout', 'no_box'),
(79, 34, 'hide_on_screen', ''),
(80, 34, '_edit_lock', '1494962497:1'),
(81, 36, '_edit_last', '1'),
(82, 36, '_edit_lock', '1494969186:1'),
(83, 36, '_wp_page_template', 'page-series-landing.php'),
(84, 32, '_c3m_mbe_featured', 'Yes'),
(85, 38, '_edit_last', '1'),
(86, 38, 'field_59121de55c649', 'a:10:{s:3:"key";s:19:"field_59121de55c649";s:5:"label";s:21:"Featured Conversation";s:4:"name";s:21:"featured_conversation";s:4:"type";s:10:"true_false";s:12:"instructions";s:92:"Is this conversation featured?  Only a maximum TWO conversations will display as "Featured."";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(88, 38, 'position', 'normal'),
(89, 38, 'layout', 'no_box'),
(90, 38, 'hide_on_screen', ''),
(91, 38, '_edit_lock', '1494968192:1'),
(92, 33, 'featured_conversation', '1'),
(93, 33, '_featured_conversation', 'field_59121de55c649'),
(94, 32, 'featured_conversation', '1'),
(95, 32, '_featured_conversation', 'field_59121de55c649'),
(96, 41, '_edit_last', '1'),
(97, 41, '_edit_lock', '1494534001:1'),
(98, 41, '_wp_page_template', 'page-conversations.php'),
(99, 41, '_wp_trash_meta_status', 'publish'),
(100, 41, '_wp_trash_meta_time', '1494534152'),
(101, 41, '_wp_desired_post_slug', 'test'),
(102, 46, '_edit_last', '1'),
(103, 46, 'field_591a2fb163f9d', 'a:11:{s:3:"key";s:19:"field_591a2fb163f9d";s:5:"label";s:5:"Intro";s:4:"name";s:5:"intro";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:2:"no";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(105, 46, 'position', 'normal'),
(106, 46, 'layout', 'no_box'),
(107, 46, 'hide_on_screen', 'a:9:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:10:"categories";i:7;s:4:"tags";i:8;s:15:"send-trackbacks";}'),
(108, 46, '_edit_lock', '1494888438:1'),
(110, 47, 'intro', 'Challenge for Change uses listening and the democratic power of media to foster connections and strengthen relationships between people and communities.\r\n\r\nAlong the way, we are telling some pretty amazing stories.'),
(111, 47, '_intro', 'field_591a2fb163f9d'),
(112, 4, 'intro', 'Challenge for Change uses listening and the democratic power of media to foster connections and strengthen relationships between people and communities.\r\n\r\nAlong the way, we are telling some pretty amazing stories.'),
(113, 4, '_intro', 'field_591a2fb163f9d'),
(114, 46, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"4";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(116, 38, 'field_591a333aff017', 'a:11:{s:3:"key";s:19:"field_591a333aff017";s:5:"label";s:5:"Photo";s:4:"name";s:5:"photo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_59121de55c649";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(117, 38, 'field_591a3361ff018', 'a:14:{s:3:"key";s:19:"field_591a3361ff018";s:5:"label";s:7:"Caption";s:4:"name";s:7:"caption";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_59121de55c649";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(118, 38, 'field_591a3369ff019', 'a:14:{s:3:"key";s:19:"field_591a3369ff019";s:5:"label";s:5:"Quote";s:4:"name";s:5:"quote";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_59121de55c649";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(123, 33, '_wp_old_slug', 'conversation-2'),
(124, 33, 'photo', '50'),
(125, 33, '_photo', 'field_591a333aff017'),
(126, 33, 'caption', 'Anubha Momin and Miatta Gorvie'),
(127, 33, '_caption', 'field_591a3361ff018'),
(128, 33, 'quote', '“You think that by this age you’ll have things figured out.”'),
(129, 33, '_quote', 'field_591a3369ff019'),
(130, 32, '_wp_old_slug', 'conversation-1'),
(131, 32, 'photo', '48'),
(132, 32, '_photo', 'field_591a333aff017'),
(133, 32, 'caption', 'Fatouma Ahmed and Rochelle Bondy'),
(134, 32, '_caption', 'field_591a3361ff018'),
(135, 32, 'quote', 'You never say this is what I want to do....you’re always thinking what is my mom going to think...'),
(136, 32, '_quote', 'field_591a3369ff019'),
(137, 48, '_wp_attached_file', '2017/05/Fatouma-and-Rochelle.jpg'),
(138, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:835;s:6:"height";i:628;s:4:"file";s:32:"2017/05/Fatouma-and-Rochelle.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"Fatouma-and-Rochelle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"Fatouma-and-Rochelle-300x226.jpg";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"Fatouma-and-Rochelle-768x578.jpg";s:5:"width";i:768;s:6:"height";i:578;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:32:"Fatouma-and-Rochelle-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:32:"Fatouma-and-Rochelle-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:32:"Fatouma-and-Rochelle-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(141, 50, '_wp_attached_file', '2017/05/Anubha-and-Miatta.jpg'),
(142, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1055;s:6:"height";i:676;s:4:"file";s:29:"2017/05/Anubha-and-Miatta.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Anubha-and-Miatta-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"Anubha-and-Miatta-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"Anubha-and-Miatta-768x492.jpg";s:5:"width";i:768;s:6:"height";i:492;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"Anubha-and-Miatta-1024x656.jpg";s:5:"width";i:1024;s:6:"height";i:656;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:29:"Anubha-and-Miatta-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:29:"Anubha-and-Miatta-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"Anubha-and-Miatta-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(143, 52, '_wp_attached_file', '2017/05/Series-Image.jpg'),
(144, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1237;s:6:"height";i:641;s:4:"file";s:24:"2017/05/Series-Image.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Series-Image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Series-Image-300x155.jpg";s:5:"width";i:300;s:6:"height";i:155;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Series-Image-768x398.jpg";s:5:"width";i:768;s:6:"height";i:398;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Series-Image-1024x531.jpg";s:5:"width";i:1024;s:6:"height";i:531;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-600";a:4:{s:4:"file";s:24:"Series-Image-600x150.jpg";s:5:"width";i:600;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:15:"bones-thumb-300";a:4:{s:4:"file";s:24:"Series-Image-300x100.jpg";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"Series-Image-125x125.jpg";s:5:"width";i:125;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(145, 34, 'field_591b3903146cd', 'a:10:{s:3:"key";s:19:"field_591b3903146cd";s:5:"label";s:9:"Featured?";s:4:"name";s:8:"featured";s:4:"type";s:10:"true_false";s:12:"instructions";s:58:"Will only display ONE Featured Series series on Home Page.";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(150, 34, 'field_591b4532d1931', 'a:14:{s:3:"key";s:19:"field_591b4532d1931";s:5:"label";s:8:"Location";s:4:"name";s:8:"location";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_591b3903146cd";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(152, 34, 'field_591b50e58f188', 'a:14:{s:3:"key";s:19:"field_591b50e58f188";s:5:"label";s:13:"Image Caption";s:4:"name";s:13:"image_caption";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_591b3903146cd";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(153, 34, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:12:"story_series";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(154, 1, '_edit_lock', '1495132074:1'),
(155, 1, '_edit_last', '1'),
(157, 1, '_wp_old_slug', 'hello-world'),
(158, 55, '_edit_last', '1'),
(159, 55, '_edit_lock', '1495143615:1'),
(161, 57, '_edit_last', '1'),
(162, 57, '_edit_lock', '1495132102:1'),
(165, 38, 'field_591b67ee43173', 'a:14:{s:3:"key";s:19:"field_591b67ee43173";s:5:"label";s:13:"Soundcloud ID";s:4:"name";s:13:"soundcloud_id";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_59121de55c649";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(166, 38, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:13:"conversations";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(167, 32, 'soundcloud_id', '266781055'),
(168, 32, '_soundcloud_id', 'field_591b67ee43173'),
(169, 33, 'soundcloud_id', '266781055'),
(170, 33, '_soundcloud_id', 'field_591b67ee43173'),
(172, 60, '_edit_last', '1'),
(173, 60, '_edit_lock', '1495044687:1'),
(174, 60, 'soundcloud_id', '240810525'),
(175, 60, '_soundcloud_id', 'field_591b67ee43173'),
(176, 60, 'photo', '50'),
(177, 60, '_photo', 'field_591a333aff017'),
(178, 60, 'caption', 'Another Conversation'),
(179, 60, '_caption', 'field_591a3361ff018'),
(180, 60, 'quote', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(181, 60, '_quote', 'field_591a3369ff019'),
(182, 60, 'featured_conversation', '0'),
(183, 60, '_featured_conversation', 'field_59121de55c649'),
(184, 61, '_edit_last', '1'),
(185, 61, 'soundcloud_id', '240810525'),
(186, 61, '_soundcloud_id', 'field_591b67ee43173'),
(187, 61, 'photo', '48'),
(188, 61, '_photo', 'field_591a333aff017'),
(189, 61, 'caption', 'Fatouma Ahmed and Rochelle Bondy'),
(190, 61, '_caption', 'field_591a3361ff018'),
(191, 61, 'quote', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(192, 61, '_quote', 'field_591a3369ff019'),
(193, 61, 'featured_conversation', '0'),
(194, 61, '_featured_conversation', 'field_59121de55c649'),
(195, 61, '_edit_lock', '1495044789:1'),
(196, 63, '_edit_last', '1'),
(197, 63, '_edit_lock', '1495053455:1'),
(198, 63, '_wp_page_template', 'page-series-landing.php'),
(199, 67, '_edit_last', '1'),
(200, 67, '_edit_lock', '1495079766:1'),
(201, 68, '_edit_last', '1'),
(202, 68, 'field_591d1761220ee', 'a:11:{s:3:"key";s:19:"field_591d1761220ee";s:5:"label";s:5:"Photo";s:4:"name";s:5:"photo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(203, 68, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"story";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(204, 68, 'position', 'normal'),
(205, 68, 'layout', 'no_box'),
(206, 68, 'hide_on_screen', ''),
(207, 68, '_edit_lock', '1495078812:1'),
(208, 31, 'photo', '50'),
(209, 31, '_photo', 'field_591d1761220ee'),
(210, 30, 'photo', '48'),
(211, 30, '_photo', 'field_591d1761220ee'),
(212, 67, 'photo', '50'),
(213, 67, '_photo', 'field_591d1761220ee'),
(214, 69, '_edit_last', '1'),
(215, 69, '_edit_lock', '1495080123:1'),
(216, 69, 'photo', '50'),
(217, 69, '_photo', 'field_591d1761220ee'),
(218, 70, '_edit_last', '1'),
(219, 70, '_edit_lock', '1495080534:1'),
(220, 70, 'photo', '48'),
(221, 70, '_photo', 'field_591d1761220ee'),
(222, 70, '_wp_trash_meta_status', 'publish'),
(223, 70, '_wp_trash_meta_time', '1495080684'),
(224, 70, '_wp_desired_post_slug', 'test2'),
(225, 69, '_wp_trash_meta_status', 'publish'),
(226, 69, '_wp_trash_meta_time', '1495080684'),
(227, 69, '_wp_desired_post_slug', 'test'),
(228, 71, '_edit_last', '1'),
(229, 71, '_edit_lock', '1495080839:1'),
(230, 71, 'photo', ''),
(231, 71, '_photo', 'field_591d1761220ee'),
(232, 71, '_wp_trash_meta_status', 'publish'),
(233, 71, '_wp_trash_meta_time', '1495081155'),
(234, 71, '_wp_desired_post_slug', 'test') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(235, 73, '_edit_last', '1'),
(236, 73, 'field_591ddf2e06cac', 'a:11:{s:3:"key";s:19:"field_591ddf2e06cac";s:5:"label";s:5:"Intro";s:4:"name";s:5:"intro";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(237, 73, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(238, 73, 'position', 'normal'),
(239, 73, 'layout', 'no_box'),
(240, 73, 'hide_on_screen', 'a:12:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:6:"author";i:7;s:6:"format";i:8;s:14:"featured_image";i:9;s:10:"categories";i:10;s:4:"tags";i:11;s:15:"send-trackbacks";}'),
(241, 73, '_edit_lock', '1495129796:1'),
(242, 74, 'intro', '<p class="p1"><span class="s1">News and notes from the C4C team</span></p>'),
(243, 74, '_intro', 'field_591ddf2e06cac'),
(244, 6, 'intro', '<p class="p1"><span class="s1">News and notes from the C4C team</span></p>'),
(245, 6, '_intro', 'field_591ddf2e06cac'),
(246, 75, '_edit_last', '1'),
(247, 75, '_edit_lock', '1495132121:1'),
(249, 77, '_edit_last', '1'),
(250, 77, '_edit_lock', '1495132876:1'),
(252, 79, '_edit_last', '1'),
(253, 79, 'field_591de8174a72e', 'a:11:{s:3:"key";s:19:"field_591de8174a72e";s:5:"label";s:5:"Photo";s:4:"name";s:5:"photo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(254, 79, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(255, 79, 'position', 'normal'),
(256, 79, 'layout', 'no_box'),
(257, 79, 'hide_on_screen', ''),
(258, 79, '_edit_lock', '1495132063:1'),
(260, 80, 'photo', '50'),
(261, 80, '_photo', 'field_591de8174a72e'),
(262, 1, 'photo', '50'),
(263, 1, '_photo', 'field_591de8174a72e'),
(265, 81, 'photo', '48'),
(266, 81, '_photo', 'field_591de8174a72e'),
(267, 55, 'photo', '48'),
(268, 55, '_photo', 'field_591de8174a72e'),
(270, 82, 'photo', '50'),
(271, 82, '_photo', 'field_591de8174a72e'),
(272, 57, 'photo', '50'),
(273, 57, '_photo', 'field_591de8174a72e'),
(275, 83, 'photo', '48'),
(276, 83, '_photo', 'field_591de8174a72e'),
(277, 75, 'photo', '48'),
(278, 75, '_photo', 'field_591de8174a72e'),
(280, 84, 'photo', '48'),
(281, 84, '_photo', 'field_591de8174a72e'),
(282, 77, 'photo', '48'),
(283, 77, '_photo', 'field_591de8174a72e'),
(284, 77, '_wp_trash_meta_status', 'publish'),
(285, 77, '_wp_trash_meta_time', '1495133025'),
(286, 77, '_wp_desired_post_slug', 'test-post-2'),
(287, 75, '_wp_trash_meta_status', 'publish'),
(288, 75, '_wp_trash_meta_time', '1495133025'),
(289, 75, '_wp_desired_post_slug', 'test-post'),
(292, 85, 'photo', '48'),
(293, 85, '_photo', 'field_591de8174a72e'),
(297, 86, 'photo', '48'),
(298, 86, '_photo', 'field_591de8174a72e'),
(300, 87, 'photo', '48'),
(301, 87, '_photo', 'field_591de8174a72e'),
(302, 88, '_edit_last', '1'),
(303, 88, 'field_591e155cd4bad', 'a:11:{s:3:"key";s:19:"field_591e155cd4bad";s:5:"label";s:5:"Intro";s:4:"name";s:5:"intro";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(304, 88, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"13";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(305, 88, 'position', 'normal'),
(306, 88, 'layout', 'no_box'),
(307, 88, 'hide_on_screen', ''),
(308, 88, '_edit_lock', '1495143654:1'),
(309, 89, 'intro', '<p class="p1"><span class="s1">We put media in the hands of the people, empowering communities to make change and create opportunity.</span></p>'),
(310, 89, '_intro', 'field_591e155cd4bad'),
(311, 13, 'intro', '<p class="p1"><span class="s1">We put media in the hands of the people, empowering communities to make change and create opportunity.</span></p>'),
(312, 13, '_intro', 'field_591e155cd4bad'),
(313, 91, 'intro', '<p class="p1"><span class="s1">We put media in the hands of the people, empowering communities to make change and create opportunity.</span></p>'),
(314, 91, '_intro', 'field_591e155cd4bad'),
(315, 92, 'intro', '<p class="p1"><span class="s1">We put media in the hands of the people, empowering communities to make change and create opportunity.</span></p>'),
(316, 92, '_intro', 'field_591e155cd4bad'),
(317, 93, 'intro', '<p class="p1"><span class="s1">We put media in the hands of the people, empowering communities to make change and create opportunity.</span></p>'),
(318, 93, '_intro', 'field_591e155cd4bad') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-08 17:07:24', '2017-05-08 17:07:24', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\r\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>', 'Much, much, much,  looooonger title,  pushing the layout to extend further.  The text can be longer, if necessary.', '', 'publish', 'open', 'open', '', 'long-title', '', '', '2017-05-18 18:30:15', '2017-05-18 18:30:15', '', 0, 'http://192.168.0.99:8888/c4c/?p=1', 0, 'post', '', 1),
(2, 1, '2017-05-08 17:07:24', '2017-05-08 17:07:24', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://192.168.0.99:8888/c4c/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-05-08 17:14:55', '2017-05-08 17:14:55', '', 0, 'http://192.168.0.99:8888/c4c/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-05-08 17:13:32', '2017-05-08 17:13:32', 'This is the Home Page :)', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-05-15 22:49:54', '2017-05-15 22:49:54', '', 0, 'http://192.168.0.99:8888/c4c/?page_id=4', 1, 'page', '', 0),
(5, 1, '2017-05-08 17:13:32', '2017-05-08 17:13:32', 'This is the Home Page :)', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-08 17:13:32', '2017-05-08 17:13:32', '', 4, 'http://192.168.0.99:8888/c4c/2017/05/08/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-05-08 17:14:10', '2017-05-08 17:14:10', '<p class="p1"><span class="s1">News and notes from the C4C team</span></p>', 'Journal', '', 'publish', 'closed', 'closed', '', 'journal', '', '', '2017-05-18 17:52:36', '2017-05-18 17:52:36', '', 0, 'http://192.168.0.99:8888/c4c/?page_id=6', 2, 'page', '', 0),
(7, 1, '2017-05-08 17:14:10', '2017-05-08 17:14:10', 'Blog', 'Journal', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-08 17:14:10', '2017-05-08 17:14:10', '', 6, 'http://192.168.0.99:8888/c4c/2017/05/08/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-05-08 17:14:55', '2017-05-08 17:14:55', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://192.168.0.99:8888/c4c/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-05-08 17:14:55', '2017-05-08 17:14:55', '', 2, 'http://192.168.0.99:8888/c4c/2017/05/08/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-05-08 17:15:32', '2017-05-08 17:15:32', '<p class="p1"><span class="s1">Conversations are at the heart of C4C. We are creating opportunities for Canadians across the country to talk—to listen—to one another.<span class="Apple-converted-space">  </span>Now we’re sharing some of those conversations with you. </span></p>', 'Conversations', '', 'publish', 'closed', 'closed', '', 'conversations', '', '', '2017-05-17 18:05:18', '2017-05-17 18:05:18', '', 0, 'http://192.168.0.99:8888/c4c/?page_id=9', 2, 'page', '', 0),
(10, 1, '2017-05-08 17:15:32', '2017-05-08 17:15:32', '', 'Conversations', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-08 17:15:32', '2017-05-08 17:15:32', '', 9, 'http://192.168.0.99:8888/c4c/2017/05/08/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-05-08 17:15:39', '2017-05-08 17:15:39', '<p class="p1"><span class="s1">Sometimes conversations lead us to communities with particular challenges. Together with the community, we use participatory media to spark deeper conversations about possible solutions. Join us. </span></p>', 'Series', '', 'publish', 'closed', 'closed', '', 'series', '', '', '2017-05-17 19:21:27', '2017-05-17 19:21:27', '', 0, 'http://192.168.0.99:8888/c4c/?page_id=11', 3, 'page', '', 0),
(12, 1, '2017-05-08 17:15:39', '2017-05-08 17:15:39', '', 'Series', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-08 17:15:39', '2017-05-08 17:15:39', '', 11, 'http://192.168.0.99:8888/c4c/2017/05/08/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-05-08 17:15:46', '2017-05-08 17:15:46', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\r\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>\r\n\r\n<blockquote>\r\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\r\n</blockquote>\r\n<p class="p1"><span class="s1">The Fogo Process was the signature project of the original<span class="Apple-converted-space">  </span>Change for Change.<span class="Apple-converted-space">  </span>The island off Newfoundland was reeling from the collapse of the fishery and relocation was looming. Twenty-seven films were created by filmmaker Colin Low and the community and shared with other communities and government officials. Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board. Together they rebuilt their economy and were able to remain on Fogo Island.</span></p>\r\n<p class="p1"><span class="s1">The Fogo Process<span class="Apple-converted-space">  </span>is a beacon for us. We are seeking those same levels of impact: stronger communities and a tangible improvement in people’s lives.</span></p>\r\n\r\n<h2 class="p1">Mission</h2>\r\n<p class="p1"><span class="s1">Through listening and the democratic power of media, Challenge for Change will help build the country we want by strengthening relationships between people and communities.</span></p>\r\n<p class="p1"><span class="s1">We envision communities where people have the power to make change and create opportunity for themselves and others.</span></p>\r\n\r\n<h2 class="p1"><span class="s1">Guiding Principles</span></h2>\r\n<ol>\r\n<li>C4C is about deep, genuine listening.</li>\r\n<li>C4C takes time to build relationships.</li>\r\n<li>C4C is creating media for change with communities rather than about them.</li>\r\n<li>Communities influence all aspects of C4C’s activities.</li>\r\n<li>C4C listens to all Canadians with a special focus on youth, newcomers and Indigenous peoples.</li>\r\n</ol>\r\n', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-05-18 21:52:56', '2017-05-18 21:52:56', '', 0, 'http://192.168.0.99:8888/c4c/?page_id=13', 3, 'page', '', 0),
(14, 1, '2017-05-08 17:15:46', '2017-05-08 17:15:46', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-08 17:15:46', '2017-05-08 17:15:46', '', 13, 'http://192.168.0.99:8888/c4c/2017/05/08/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-05-08 17:16:44', '2017-05-08 17:16:44', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2017-05-11 19:37:42', '2017-05-11 19:37:42', '', 0, 'http://192.168.0.99:8888/c4c/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2017-05-08 17:16:44', '2017-05-08 17:16:44', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2017-05-11 19:37:42', '2017-05-11 19:37:42', '', 0, 'http://192.168.0.99:8888/c4c/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2017-05-08 17:16:44', '2017-05-08 17:16:44', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2017-05-11 19:37:42', '2017-05-11 19:37:42', '', 0, 'http://192.168.0.99:8888/c4c/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-05-08 17:16:44', '2017-05-08 17:16:44', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-05-11 19:37:42', '2017-05-11 19:37:42', '', 0, 'http://192.168.0.99:8888/c4c/?p=18', 3, 'nav_menu_item', '', 0),
(30, 1, '2017-05-08 20:13:51', '2017-05-08 20:13:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'As short as it gets.', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'publish', 'open', 'closed', '', 'story-1', '', '', '2017-05-18 03:58:25', '2017-05-18 03:58:25', '', 0, 'http://192.168.0.99:8888/c4c/?post_type=story&#038;p=30', 1, 'story', '', 0),
(31, 1, '2017-05-08 20:14:15', '2017-05-08 20:14:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'How we made Challenge for Change.', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'publish', 'open', 'closed', '', 'story-2', '', '', '2017-05-18 03:39:53', '2017-05-18 03:39:53', '', 0, 'http://192.168.0.99:8888/c4c/?post_type=story&#038;p=31', 0, 'story', '', 1),
(32, 1, '2017-05-07 20:18:00', '2017-05-07 20:18:00', '<p class="p1"><span class="s1">Fatouma Ahmed and Rochelle Bondy are friends, travel companions and freelancers carving out a space for themselves in the world. There are many experiences they share, from going to university, living and working in Nunavut to having deep connections to their family and food. But in reflecting on these experiences one thing becomes clear; maybe there isn’t just one way to get it right.</span></p>', 'Fatouma and Rochelle', '', 'publish', 'open', 'closed', '', 'fatouma-and-rochelle', '', '', '2017-05-16 22:32:46', '2017-05-16 22:32:46', '', 0, 'http://192.168.0.99:8888/c4c/?post_type=conversations&#038;p=32', 0, 'conversations', '', 4),
(33, 1, '2017-05-08 20:18:29', '2017-05-08 20:18:29', '<p class="p1"><span class="s1">Anubha and Miatta are friends, travel companions and freelancers carving out a space for themselves in the world. But in reflecting on these experiences one thing becomes clear; maybe there isn’t just one way to get it right.</span></p>', 'Anubha and Miatta', '', 'publish', 'open', 'closed', '', 'anubha-and-miatta', '', '', '2017-05-17 02:05:22', '2017-05-17 02:05:22', '', 0, 'http://192.168.0.99:8888/c4c/?post_type=conversations&#038;p=33', 1, 'conversations', '', 0),
(34, 1, '2017-05-09 17:15:29', '2017-05-09 17:15:29', '', 'Series', '', 'publish', 'closed', 'closed', '', 'acf_series', '', '', '2017-05-16 19:20:16', '2017-05-16 19:20:16', '', 0, 'http://192.168.0.99:8888/c4c/?post_type=acf&#038;p=34', 0, 'acf', '', 0),
(36, 1, '2017-05-09 18:27:10', '2017-05-09 18:27:10', '', 'Youth in Care', '', 'publish', 'closed', 'closed', '', 'youth-in-care', '', '', '2017-05-16 21:14:33', '2017-05-16 21:14:33', '', 11, 'http://192.168.0.99:8888/c4c/?page_id=36', 1, 'page', '', 0),
(37, 1, '2017-05-09 18:27:10', '2017-05-09 18:27:10', '', 'Youth in Care', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-05-09 18:27:10', '2017-05-09 18:27:10', '', 36, 'http://192.168.0.99:8888/c4c/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-05-09 19:53:09', '2017-05-09 19:53:09', '', 'Conversations', '', 'publish', 'closed', 'closed', '', 'acf_conversations', '', '', '2017-05-16 20:58:54', '2017-05-16 20:58:54', '', 0, 'http://192.168.0.99:8888/c4c/?post_type=acf&#038;p=38', 0, 'acf', '', 0),
(39, 1, '2017-05-11 20:18:45', '2017-05-11 20:18:45', '', 'Conversationss', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-11 20:18:45', '2017-05-11 20:18:45', '', 9, 'http://192.168.0.99:8888/c4c/9-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-05-11 20:20:11', '2017-05-11 20:20:11', '', 'Conversations', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-11 20:20:11', '2017-05-11 20:20:11', '', 9, 'http://192.168.0.99:8888/c4c/9-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-05-11 20:20:50', '2017-05-11 20:20:50', '', 'Test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2017-05-11 20:22:32', '2017-05-11 20:22:32', '', 0, 'http://192.168.0.99:8888/c4c/?page_id=41', 0, 'page', '', 0),
(42, 1, '2017-05-11 20:20:50', '2017-05-11 20:20:50', '', 'Test', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-05-11 20:20:50', '2017-05-11 20:20:50', '', 41, 'http://192.168.0.99:8888/c4c/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-05-11 20:22:39', '2017-05-11 20:22:39', '', 'Conversationss', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-11 20:22:39', '2017-05-11 20:22:39', '', 9, 'http://192.168.0.99:8888/c4c/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-05-11 20:23:33', '2017-05-11 20:23:33', '', 'Conversations', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-11 20:23:33', '2017-05-11 20:23:33', '', 9, 'http://192.168.0.99:8888/c4c/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-05-11 21:20:50', '2017-05-11 21:20:50', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-11 21:20:50', '2017-05-11 21:20:50', '', 13, 'http://localhost:8888/c4c/13-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-05-15 22:46:43', '2017-05-15 22:46:43', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'acf_home-page', '', '', '2017-05-15 22:49:40', '2017-05-15 22:49:40', '', 0, 'http://localhost:8888/c4c/?post_type=acf&#038;p=46', 0, 'acf', '', 0),
(47, 1, '2017-05-15 22:47:48', '2017-05-15 22:47:48', 'This is the Home Page :)', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-15 22:47:48', '2017-05-15 22:47:48', '', 4, 'http://localhost:8888/c4c/4-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-05-15 23:11:04', '2017-05-15 23:11:04', '', 'Fatouma-and-Rochelle', '', 'inherit', 'open', 'closed', '', 'fatouma-and-rochelle-2', '', '', '2017-05-15 23:11:04', '2017-05-15 23:11:04', '', 32, 'http://localhost:8888/c4c/wp-content/uploads/2017/05/Fatouma-and-Rochelle.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-05-15 23:13:06', '2017-05-15 23:13:06', '', 'Anubha-and-Miatta', '', 'inherit', 'open', 'closed', '', 'anubha-and-miatta-2', '', '', '2017-05-15 23:13:06', '2017-05-15 23:13:06', '', 33, 'http://localhost:8888/c4c/wp-content/uploads/2017/05/Anubha-and-Miatta.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-05-16 17:20:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-16 17:20:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/c4c/?p=51', 0, 'post', '', 0),
(52, 1, '2017-05-16 17:28:57', '2017-05-16 17:28:57', '', 'Series-Image', '', 'inherit', 'open', 'closed', '', 'series-image', '', '', '2017-05-16 17:28:57', '2017-05-16 17:28:57', '', 0, 'http://localhost:8888/c4c/wp-content/uploads/2017/05/Series-Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-05-16 20:06:16', '2017-05-16 20:06:16', '<p class="p1"><span class="s1"><b>Much, much, much,<span class="Apple-converted-space">  </span>looooonger title,<span class="Apple-converted-space">  </span>pushing the layout to extend further.<span class="Apple-converted-space">  </span>The text can be longer, if necessary.</b></span></p>', 'Much, much, much,  looooonger title,  pushing the layout to extend further.  The text can be longer, if necessary.', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-05-16 20:06:16', '2017-05-16 20:06:16', '', 1, 'http://localhost:8888/c4c/1-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2017-05-16 20:06:44', '2017-05-16 20:06:44', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\r\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>', 'Much, much, much,  looooonger title,  pushing the layout to extend further.  The text can be longer, if necessary.', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-16 20:06:44', '2017-05-16 20:06:44', '', 1, 'http://localhost:8888/c4c/1-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-05-16 20:09:11', '2017-05-16 20:09:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n<blockquote>\r\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\r\n</blockquote>\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n<h4 class="p1"><span class="s1"><b>SECONDARY HEADER</b></span></h4>\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'How we made Challenge for Change', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'publish', 'open', 'open', '', 'how-we-made-challenge-for-change', '', '', '2017-05-18 20:57:40', '2017-05-18 20:57:40', '', 0, 'http://localhost:8888/c4c/?p=55', 0, 'post', '', 0),
(56, 1, '2017-05-16 20:09:11', '2017-05-16 20:09:11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'How we made Challenge for Change', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-05-16 20:09:11', '2017-05-16 20:09:11', '', 55, 'http://localhost:8888/c4c/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-05-16 20:09:57', '2017-05-16 20:09:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'As short as it gets.', '', 'publish', 'open', 'open', '', 'as-short-as-it-gets', '', '', '2017-05-18 18:30:45', '2017-05-18 18:30:45', '', 0, 'http://localhost:8888/c4c/?p=57', 0, 'post', '', 0),
(58, 1, '2017-05-16 20:09:57', '2017-05-16 20:09:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'As short as it gets.', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-05-16 20:09:57', '2017-05-16 20:09:57', '', 57, 'http://localhost:8888/c4c/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-05-17 18:05:18', '2017-05-17 18:05:18', '<p class="p1"><span class="s1">Conversations are at the heart of C4C. We are creating opportunities for Canadians across the country to talk—to listen—to one another.<span class="Apple-converted-space">  </span>Now we’re sharing some of those conversations with you. </span></p>', 'Conversations', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-05-17 18:05:18', '2017-05-17 18:05:18', '', 9, 'http://localhost:8888/c4c/9-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-05-17 18:13:38', '2017-05-17 18:13:38', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.', 'Conversation 3', '', 'publish', 'open', 'closed', '', 'conversation-3', '', '', '2017-05-17 18:13:38', '2017-05-17 18:13:38', '', 0, 'http://localhost:8888/c4c/?post_type=conversations&#038;p=60', 2, 'conversations', '', 0),
(61, 1, '2017-05-17 18:14:57', '2017-05-17 18:14:57', 'Nam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'And another conversation', '', 'publish', 'open', 'closed', '', '61', '', '', '2017-05-17 18:15:32', '2017-05-17 18:15:32', '', 0, 'http://localhost:8888/c4c/?post_type=conversations&#038;p=61', 3, 'conversations', '', 0),
(62, 1, '2017-05-17 19:21:27', '2017-05-17 19:21:27', '<p class="p1"><span class="s1">Sometimes conversations lead us to communities with particular challenges. Together with the community, we use participatory media to spark deeper conversations about possible solutions. Join us. </span></p>', 'Series', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-05-17 19:21:27', '2017-05-17 19:21:27', '', 11, 'http://localhost:8888/c4c/11-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-05-17 20:39:31', '2017-05-17 20:39:31', 'This is the second series', 'Second Series', '', 'publish', 'closed', 'closed', '', 'second-series', '', '', '2017-05-17 20:39:31', '2017-05-17 20:39:31', '', 11, 'http://localhost:8888/c4c/?page_id=63', 0, 'page', '', 0),
(64, 1, '2017-05-17 20:39:31', '2017-05-17 20:39:31', 'This is the second series', 'Second Series', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-05-17 20:39:31', '2017-05-17 20:39:31', '', 63, 'http://localhost:8888/c4c/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-05-17 20:50:31', '2017-05-17 20:50:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\n\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\n\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'As short as it gets', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2017-05-17 20:50:31', '2017-05-17 20:50:31', '', 30, 'http://localhost:8888/c4c/30-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2017-05-17 20:53:04', '2017-05-17 20:53:04', 'This is Story 2', 'How we made Challenge for Change.', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2017-05-17 20:53:04', '2017-05-17 20:53:04', '', 31, 'http://localhost:8888/c4c/31-autosave-v1/', 0, 'revision', '', 0),
(67, 1, '2017-05-17 20:56:39', '2017-05-17 20:56:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'Much, much, much,  looooonger title,  pushing the layout to extend further.  The text can be longer, if necessary.', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'publish', 'open', 'closed', '', 'much-looooonger', '', '', '2017-05-18 03:40:17', '2017-05-18 03:40:17', '', 0, 'http://localhost:8888/c4c/?post_type=story&#038;p=67', 2, 'story', '', 0),
(68, 1, '2017-05-18 03:39:37', '2017-05-18 03:39:37', '', 'Stories', '', 'publish', 'closed', 'closed', '', 'acf_stories', '', '', '2017-05-18 03:39:37', '2017-05-18 03:39:37', '', 0, 'http://localhost:8888/c4c/?post_type=acf&#038;p=68', 0, 'acf', '', 0),
(69, 1, '2017-05-18 04:03:59', '2017-05-18 04:03:59', 'test', 'test', '', 'trash', 'open', 'closed', '', 'test__trashed', '', '', '2017-05-18 04:11:24', '2017-05-18 04:11:24', '', 0, 'http://localhost:8888/c4c/?post_type=story&#038;p=69', 0, 'story', '', 0),
(70, 1, '2017-05-18 04:04:41', '2017-05-18 04:04:41', 'test2', 'test2', '', 'trash', 'open', 'closed', '', 'test2__trashed', '', '', '2017-05-18 04:11:24', '2017-05-18 04:11:24', '', 0, 'http://localhost:8888/c4c/?post_type=story&#038;p=70', 0, 'story', '', 0),
(71, 1, '2017-05-18 04:16:21', '2017-05-18 04:16:21', '', 'test', '', 'trash', 'open', 'closed', '', 'test__trashed-2', '', '', '2017-05-18 04:19:15', '2017-05-18 04:19:15', '', 0, 'http://localhost:8888/c4c/?post_type=story&#038;p=71', 0, 'story', '', 0),
(72, 1, '2017-05-18 17:40:14', '2017-05-18 17:40:14', '<p class="p1"><span class="s1">News and notes from the C4C team</span></p>', 'Journal', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-18 17:40:14', '2017-05-18 17:40:14', '', 6, 'http://localhost:8888/c4c/6-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-05-18 17:52:18', '2017-05-18 17:52:18', '', 'Journal', '', 'publish', 'closed', 'closed', '', 'acf_journal', '', '', '2017-05-18 17:52:18', '2017-05-18 17:52:18', '', 0, 'http://localhost:8888/c4c/?post_type=acf&#038;p=73', 0, 'acf', '', 0),
(74, 1, '2017-05-18 17:52:36', '2017-05-18 17:52:36', '<p class="p1"><span class="s1">News and notes from the C4C team</span></p>', 'Journal', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-18 17:52:36', '2017-05-18 17:52:36', '', 6, 'http://localhost:8888/c4c/6-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-05-18 18:26:17', '2017-05-18 18:26:17', 'ddd', 'TEST POST', '', 'trash', 'open', 'open', '', 'test-post__trashed', '', '', '2017-05-18 18:43:45', '2017-05-18 18:43:45', '', 0, 'http://localhost:8888/c4c/?p=75', 0, 'post', '', 0),
(76, 1, '2017-05-18 18:26:17', '2017-05-18 18:26:17', 'ddd', 'TEST POST', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-05-18 18:26:17', '2017-05-18 18:26:17', '', 75, 'http://localhost:8888/c4c/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-05-18 18:26:37', '2017-05-18 18:26:37', 'testy', 'Test post 2', '', 'trash', 'open', 'open', '', 'test-post-2__trashed', '', '', '2017-05-18 18:43:45', '2017-05-18 18:43:45', '', 0, 'http://localhost:8888/c4c/?p=77', 0, 'post', '', 0),
(78, 1, '2017-05-18 18:26:37', '2017-05-18 18:26:37', 'testy', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-05-18 18:26:37', '2017-05-18 18:26:37', '', 77, 'http://localhost:8888/c4c/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-05-18 18:30:04', '2017-05-18 18:30:04', '', 'Journal Posts', '', 'publish', 'closed', 'closed', '', 'acf_journal-posts', '', '', '2017-05-18 18:30:04', '2017-05-18 18:30:04', '', 0, 'http://localhost:8888/c4c/?post_type=acf&#038;p=79', 0, 'acf', '', 0),
(80, 1, '2017-05-18 18:30:15', '2017-05-18 18:30:15', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\r\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>', 'Much, much, much,  looooonger title,  pushing the layout to extend further.  The text can be longer, if necessary.', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-18 18:30:15', '2017-05-18 18:30:15', '', 1, 'http://localhost:8888/c4c/1-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-05-18 18:30:32', '2017-05-18 18:30:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'How we made Challenge for Change', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-05-18 18:30:32', '2017-05-18 18:30:32', '', 55, 'http://localhost:8888/c4c/55-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2017-05-18 18:30:45', '2017-05-18 18:30:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'As short as it gets.', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-05-18 18:30:45', '2017-05-18 18:30:45', '', 57, 'http://localhost:8888/c4c/57-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-05-18 18:31:00', '2017-05-18 18:31:00', 'ddd', 'TEST POST', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2017-05-18 18:31:00', '2017-05-18 18:31:00', '', 75, 'http://localhost:8888/c4c/75-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-05-18 18:31:14', '2017-05-18 18:31:14', 'testy', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-05-18 18:31:14', '2017-05-18 18:31:14', '', 77, 'http://localhost:8888/c4c/77-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(85, 1, '2017-05-18 19:38:49', '2017-05-18 19:38:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'How we made Challenge for Change', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-05-18 19:38:49', '2017-05-18 19:38:49', '', 55, 'http://localhost:8888/c4c/55-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-05-18 20:48:35', '2017-05-18 20:48:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n<blockquote>\r\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\r\n</blockquote>\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'How we made Challenge for Change', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-05-18 20:48:35', '2017-05-18 20:48:35', '', 55, 'http://localhost:8888/c4c/55-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-05-18 20:57:40', '2017-05-18 20:57:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.\r\n<blockquote>\r\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\r\n</blockquote>\r\nSed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.\r\n<h4 class="p1"><span class="s1"><b>SECONDARY HEADER</b></span></h4>\r\nNam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.', 'How we made Challenge for Change', 'You never say this is what I want to do....you’re always thinking what is my mom going to think…', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-05-18 20:57:40', '2017-05-18 20:57:40', '', 55, 'http://localhost:8888/c4c/55-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-05-18 21:43:14', '2017-05-18 21:43:14', '', 'About C4C', '', 'publish', 'closed', 'closed', '', 'acf_about-c4c', '', '', '2017-05-18 21:43:14', '2017-05-18 21:43:14', '', 0, 'http://localhost:8888/c4c/?post_type=acf&#038;p=88', 0, 'acf', '', 0),
(89, 1, '2017-05-18 21:43:34', '2017-05-18 21:43:34', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-18 21:43:34', '2017-05-18 21:43:34', '', 13, 'http://localhost:8888/c4c/13-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-05-18 21:52:55', '2017-05-18 21:52:55', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>\n\n<blockquote>\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\n</blockquote>\n<p class="p1"><span class="s1">The Fogo Process was the signature project of the original<span class="Apple-converted-space">  </span>Change for Change.<span class="Apple-converted-space">  </span>The island off Newfoundland was reeling from the collapse of the fishery and relocation was looming. Twenty-seven films were created by filmmaker Colin Low and the community and shared with other communities and government officials. Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board. Together they rebuilt their economy and were able to remain on Fogo Island.</span></p>\n<p class="p1"><span class="s1">The Fogo Process<span class="Apple-converted-space">  </span>is a beacon for us. We are seeking those same levels of impact: stronger communities and a tangible improvement in people’s lives.</span></p>\n\n<h2 class="p1">Mission</h2>\n<p class="p1"><span class="s1">Through listening and the democratic power of media, Challenge for Change will help build the country we want by strengthening relationships between people and communities.</span></p>\n<p class="p1"><span class="s1">We envision communities where people have the power to make change and create opportunity for themselves and others.</span></p>\n\n<h2 class="p1"><span class="s1">Guiding Principles</span></h2>\n<ol>\n<li>C4C is about deep, genuine listening.</li>\n<li>C4C takes time to build relationships.</li>\n<li>C4C is creating media for change with communities rather than about them.</li>\n<li>Communities influence all aspects of C4C’s activities.</li>\n<li>C4C listens to all Canadians with a special focus on youth, newcomers and Indigenous peoples.</li>\n</ol>\n', 'About', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2017-05-18 21:52:55', '2017-05-18 21:52:55', '', 13, 'http://localhost:8888/c4c/13-autosave-v1/', 0, 'revision', '', 0),
(91, 1, '2017-05-18 21:50:16', '2017-05-18 21:50:16', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\r\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>\r\n\r\n<blockquote>\r\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\r\n</blockquote>\r\n<p class="p1"><span class="s1">The Fogo Process was the signature project of the original<span class="Apple-converted-space">  </span>Change for Change.<span class="Apple-converted-space">  </span>The island off Newfoundland was reeling from the collapse of the fishery and relocation was looming. Twenty-seven films were created by filmmaker Colin Low and the community and shared with other communities and government officials. Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board. Together they rebuilt their economy and were able to remain on Fogo Island.</span></p>\r\n<p class="p1"><span class="s1">The Fogo Process<span class="Apple-converted-space">  </span>is a beacon for us. We are seeking those same levels of impact: stronger communities and a tangible improvement in people’s lives.</span></p>\r\n\r\n<h2 class="p1">Mission</h2>\r\n<p class="p1"><span class="s1">Through listening and the democratic power of media, Challenge for Change will help build the country we want by strengthening relationships between people and communities.</span></p>\r\n<p class="p1"><span class="s1">We envision communities where people have the power to make change and create opportunity for themselves and others.</span></p>\r\n\r\n<h2 class="p1"><span class="s1">Guiding Principles</span></h2>\r\n<p class="p1"></p>', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-18 21:50:16', '2017-05-18 21:50:16', '', 13, 'http://localhost:8888/c4c/13-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-05-18 21:51:54', '2017-05-18 21:51:54', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\r\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>\r\n\r\n<blockquote>\r\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\r\n</blockquote>\r\n<p class="p1"><span class="s1">The Fogo Process was the signature project of the original<span class="Apple-converted-space">  </span>Change for Change.<span class="Apple-converted-space">  </span>The island off Newfoundland was reeling from the collapse of the fishery and relocation was looming. Twenty-seven films were created by filmmaker Colin Low and the community and shared with other communities and government officials. Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board. Together they rebuilt their economy and were able to remain on Fogo Island.</span></p>\r\n<p class="p1"><span class="s1">The Fogo Process<span class="Apple-converted-space">  </span>is a beacon for us. We are seeking those same levels of impact: stronger communities and a tangible improvement in people’s lives.</span></p>\r\n\r\n<h2 class="p1">Mission</h2>\r\n<p class="p1"><span class="s1">Through listening and the democratic power of media, Challenge for Change will help build the country we want by strengthening relationships between people and communities.</span></p>\r\n<p class="p1"><span class="s1">We envision communities where people have the power to make change and create opportunity for themselves and others.</span></p>\r\n\r\n<h2 class="p1"><span class="s1">Guiding Principles</span></h2>\r\n<ol>\r\n 	<li>C4C is about deep, genuine listening.\r\nC4C takes time to build relationships.\r\nC4C is creating media for change with communities rather than about them.\r\nCommunities influence all aspects of C4C’s activities.\r\nC4C listens to all Canadians with a special focus on youth, newcomers and Indigenous peoples.</li>\r\n</ol>\r\n&nbsp;', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-18 21:51:54', '2017-05-18 21:51:54', '', 13, 'http://localhost:8888/c4c/13-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-05-18 21:52:56', '2017-05-18 21:52:56', '<p class="p1"><span class="s1">Challenge for Change (C4C) is a not-for-profit media organization founded in 2016. It is the brainchild of The MacMillan Family Foundation, Inspirit Foundation and The National Film Board of Canada (NFB).</span></p>\r\n<p class="p1"><span class="s1">It is inspired by NFB’s groundbreaking program which ran from 1967 to 1980. The original<span class="Apple-converted-space">  </span>Challenge for Change / Société Nouvelle<span class="Apple-converted-space">  </span>brought together filmmakers, community organizers, and citizens to use participatory media-making as a tool to engage marginalized groups and address poverty.</span></p>\r\n\r\n<blockquote>\r\n<p class="p1"><span class="s1">“Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board.”</span></p>\r\n</blockquote>\r\n<p class="p1"><span class="s1">The Fogo Process was the signature project of the original<span class="Apple-converted-space">  </span>Change for Change.<span class="Apple-converted-space">  </span>The island off Newfoundland was reeling from the collapse of the fishery and relocation was looming. Twenty-seven films were created by filmmaker Colin Low and the community and shared with other communities and government officials. Through the process, the people of Fogo organized and persuaded the government to support a fishing cooperative and marketing board. Together they rebuilt their economy and were able to remain on Fogo Island.</span></p>\r\n<p class="p1"><span class="s1">The Fogo Process<span class="Apple-converted-space">  </span>is a beacon for us. We are seeking those same levels of impact: stronger communities and a tangible improvement in people’s lives.</span></p>\r\n\r\n<h2 class="p1">Mission</h2>\r\n<p class="p1"><span class="s1">Through listening and the democratic power of media, Challenge for Change will help build the country we want by strengthening relationships between people and communities.</span></p>\r\n<p class="p1"><span class="s1">We envision communities where people have the power to make change and create opportunity for themselves and others.</span></p>\r\n\r\n<h2 class="p1"><span class="s1">Guiding Principles</span></h2>\r\n<ol>\r\n<li>C4C is about deep, genuine listening.</li>\r\n<li>C4C takes time to build relationships.</li>\r\n<li>C4C is creating media for change with communities rather than about them.</li>\r\n<li>Communities influence all aspects of C4C’s activities.</li>\r\n<li>C4C listens to all Canadians with a special focus on youth, newcomers and Indigenous peoples.</li>\r\n</ol>\r\n', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-05-18 21:52:56', '2017-05-18 21:52:56', '', 13, 'http://localhost:8888/c4c/13-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(30, 3, 0),
(31, 3, 0),
(32, 4, 0),
(32, 5, 0),
(32, 8, 0),
(32, 9, 0),
(33, 5, 0),
(33, 10, 0),
(33, 11, 0),
(55, 1, 0),
(55, 7, 0),
(55, 12, 0),
(55, 13, 0),
(57, 1, 0),
(57, 7, 0),
(67, 3, 0),
(69, 3, 0),
(70, 3, 0),
(71, 3, 0),
(75, 1, 0),
(77, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'story_series', '', 0, 3),
(4, 4, 'tag', '', 0, 1),
(5, 5, 'tag', '', 0, 2),
(6, 6, 'story_series', '', 0, 0),
(7, 7, 'post_tag', '', 0, 2),
(8, 8, 'conversation-tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'conversation_tag', '', 0, 1),
(11, 11, 'conversation_tag', '', 0, 1),
(12, 12, 'category', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Main', 'main', 0, 0),
(3, 'Youth In Care', 'youth-in-care', 0, 1),
(4, 'Tag1', 'tag1', 0, 0),
(5, 'Tag2', 'tag2', 0, 0),
(6, 'Second Series', 'second-series', 0, 2),
(7, 'test', 'test', 0, 0),
(8, 'Tag 1', 'tag1', 0, 0),
(9, 'testing', 'testing', 0, 0),
(10, 'blah', 'blah', 0, 0),
(11, 'another tag', 'another-tag', 0, 0),
(12, 'test', 'test', 0, 0),
(13, 'test2', 'test2', 0, 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mike'),
(2, 1, 'first_name', 'Mike'),
(3, 1, 'last_name', 'Dennison'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"0b3046bc742ce62d347088e0f43eba45db55644256e7ccbaae21642bc8bec02b";a:4:{s:10:"expiration";i:1495472856;s:2:"ip";s:12:"192.168.0.99";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36";s:5:"login";i:1494263256;}s:64:"73aaed8d908bc2077513d94685b012ebc5d3232e02dbba7fed89f57d13a60acc";a:4:{s:10:"expiration";i:1495217106;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1495044306;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '51'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:25:"add-post-type-custom_type";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:14:"add-custom_cat";i:4;s:14:"add-custom_tag";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'wpss_admin_status', '1'),
(21, 1, 'wpss_new_user_approved', '1'),
(22, 1, 'wpss_new_user_email_sent', '1'),
(23, 1, 'wpss_nag_status', 'a:0:{}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(25, 1, 'wp_user-settings-time', '1495144372'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:10:{i:0;s:6:"acf_73";i:1;s:6:"acf_68";i:2;s:6:"acf_46";i:3;s:6:"acf_38";i:4;s:6:"acf_34";i:5;s:13:"trackbacksdiv";i:6;s:10:"postcustom";i:7;s:16:"commentstatusdiv";i:8;s:7:"slugdiv";i:9;s:9:"authordiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mike', '$P$BveX3MN0lISqcTL0jnWQ1dELruDiyU1', 'mike', 'dennison1969@gmail.com', '', '2017-05-08 17:07:24', '', 0, 'mike') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

