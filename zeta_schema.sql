-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 08, 2018 at 01:04 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `zeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-02 13:39:45', '2018-10-02 13:39:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:3157/zeta', 'yes'),
(2, 'home', 'http://localhost:3157/zeta', 'yes'),
(3, 'blogname', 'Human Rights Arts &amp; Film Festival', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zkha0002@student.monash.edu', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"city/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:40:\"city/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:21:\"city/([^/]+)/embed/?$\";s:37:\"index.php?city=$matches[1]&embed=true\";s:33:\"city/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?city=$matches[1]&paged=$matches[2]\";s:15:\"city/([^/]+)/?$\";s:26:\"index.php?city=$matches[1]\";s:31:\"event/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"event/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"event/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"event/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"event/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"event/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"event/(.+?)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:24:\"event/(.+?)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:44:\"event/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:39:\"event/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:32:\"event/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:39:\"event/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:28:\"event/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:38:\"post-duplicator/m4c-postduplicator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:60:\"/Users/zeeshan/htdocs/zeta/wp-content/themes/hraff/style.css\";i:1;s:61:\"/Users/zeeshan/htdocs/zeta/wp-content/themes/hraff/header.php\";i:2;s:60:\"/Users/zeeshan/htdocs/zeta/wp-content/themes/hraff/index.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'hraff', 'yes'),
(41, 'stylesheet', 'hraff', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '37', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_AU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1538962785;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1539001537;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539006029;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538553363;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_AU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538960420;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538960423;s:7:\"checked\";a:4:{s:5:\"hraff\";s:5:\"0.0.1\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_timeout_browser_fa9163078450116b33aea27d7429a9e8', '1539092403', 'no'),
(127, '_site_transient_browser_fa9163078450116b33aea27d7429a9e8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(164, 'theme_mods_hraff', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:12:\"footer-links\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538554285;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:40;}', 'yes'),
(165, 'current_theme', 'HRAFF Concept', 'yes'),
(166, 'theme_switched', '', 'yes'),
(173, 'mtphr_post_duplicator_settings', '', 'yes'),
(175, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538554332;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(176, '_transient_twentyfifteen_categories', '1', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(187, 'cptui_new_install', 'false', 'yes'),
(189, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538960423;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:9:\"hello.php\";s:3:\"1.7\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:4:\"2.20\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.8\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.20\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/post-duplicator.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(190, 'acf_version', '5.7.7', 'yes'),
(200, 'cptui_post_types', 'a:1:{s:5:\"event\";a:28:{s:4:\"name\";s:5:\"event\";s:5:\"label\";s:6:\"Events\";s:14:\"singular_label\";s:5:\"Event\";s:11:\"description\";s:21:\"Create a HRAFF Event.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:2:\"20\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:19:\"dashicons-lightbulb\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(212, 'category_children', 'a:0:{}', 'yes'),
(213, 'cptui_taxonomies', 'a:1:{s:4:\"city\";a:21:{s:4:\"name\";s:4:\"city\";s:5:\"label\";s:6:\"Cities\";s:14:\"singular_label\";s:4:\"City\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}}', 'yes'),
(246, 'city_children', 'a:0:{}', 'yes'),
(262, '_site_transient_timeout_theme_roots', '1538962221', 'no'),
(263, '_site_transient_theme_roots', 'a:4:{s:5:\"hraff\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost:3157/zeta/'),
(11, 5, '_menu_item_orphaned', '1538554704'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1538554704'),
(39, 1, '_edit_lock', '1538573291:1'),
(42, 10, '_wp_trash_meta_status', 'publish'),
(43, 10, '_wp_trash_meta_time', '1538569018'),
(44, 11, '_edit_lock', '1538569134:1'),
(45, 11, '_wp_trash_meta_status', 'publish'),
(46, 11, '_wp_trash_meta_time', '1538569136'),
(47, 13, '_edit_last', '1'),
(48, 13, '_edit_lock', '1538831855:1'),
(49, 24, '_edit_last', '1'),
(50, 24, '_edit_lock', '1538831516:1'),
(51, 24, 'subtitle', 'Orban Wallace / UK / 84 Mins / English / Documentary'),
(52, 24, '_subtitle', 'field_5bb4b8b2aadef'),
(53, 24, 'classification', 'M'),
(54, 24, '_classification', 'field_5bb4b9dba1f93'),
(55, 24, 'when', '2018-06-20 18:00:00'),
(56, 24, '_when', 'field_5bb4bb11a1f94'),
(57, 24, 'where', 'Palace Kino Cinemas'),
(58, 24, '_where', 'field_5bb4bb7da1f95'),
(59, 24, 'city', 'Melbourne'),
(60, 24, '_city', 'field_5bb89e8060476'),
(61, 24, 'summary', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.'),
(62, 24, '_summary', 'field_5bb4bcbc98e8f'),
(63, 26, '_wp_attached_file', '2018/10/f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200.jpg'),
(64, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:56:\"2018/10/f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 24, '_thumbnail_id', '26'),
(66, 24, 'youtube_video_id', '_N2nZAThjcw'),
(67, 24, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(71, 3, '_edit_lock', '1538576528:1'),
(72, 3, '_edit_last', '1'),
(73, 2, '_wp_trash_meta_status', 'publish'),
(74, 2, '_wp_trash_meta_time', '1538576546'),
(75, 2, '_wp_desired_post_slug', 'sample-page'),
(76, 30, '_edit_last', '1'),
(77, 30, '_edit_lock', '1538826097:1'),
(78, 32, '_edit_last', '1'),
(79, 32, '_edit_lock', '1538576546:1'),
(80, 34, '_menu_item_type', 'post_type'),
(81, 34, '_menu_item_menu_item_parent', '0'),
(82, 34, '_menu_item_object_id', '32'),
(83, 34, '_menu_item_object', 'page'),
(84, 34, '_menu_item_target', ''),
(85, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 34, '_menu_item_xfn', ''),
(87, 34, '_menu_item_url', ''),
(89, 35, '_menu_item_type', 'post_type'),
(90, 35, '_menu_item_menu_item_parent', '0'),
(91, 35, '_menu_item_object_id', '30'),
(92, 35, '_menu_item_object', 'page'),
(93, 35, '_menu_item_target', ''),
(94, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 35, '_menu_item_xfn', ''),
(96, 35, '_menu_item_url', ''),
(100, 37, '_wp_attached_file', '2018/10/cropped-logo.png'),
(101, 37, '_wp_attachment_context', 'site-icon'),
(102, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/10/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 38, '_wp_trash_meta_status', 'publish'),
(104, 38, '_wp_trash_meta_time', '1538810575'),
(111, 40, '_wp_attached_file', '2018/10/cropped-logo-1.png'),
(112, 40, '_wp_attachment_context', 'custom-logo'),
(113, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:632;s:6:\"height\";i:632;s:4:\"file\";s:26:\"2018/10/cropped-logo-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 41, '_wp_trash_meta_status', 'publish'),
(115, 41, '_wp_trash_meta_time', '1538812619'),
(116, 1, '_wp_trash_meta_status', 'publish'),
(117, 1, '_wp_trash_meta_time', '1538816831'),
(118, 1, '_wp_desired_post_slug', 'hello-world'),
(119, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(120, 45, '_edit_last', '1'),
(121, 45, '_edit_lock', '1538831415:1'),
(122, 46, '_wp_attached_file', '2018/10/04_the_cleaners____gebrueder_beetz_filmproduktion-480x200.jpg'),
(123, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:69:\"2018/10/04_the_cleaners____gebrueder_beetz_filmproduktion-480x200.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"04_the_cleaners____gebrueder_beetz_filmproduktion-480x200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"04_the_cleaners____gebrueder_beetz_filmproduktion-480x200-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 45, '_thumbnail_id', '46'),
(125, 45, 'subtitle', 'HANS BLOCK & MORITZ RIESWIECK / 2018 / GERMANY, BRAZIL, NETHERLANDS, ITALY, & USA / 88 MINS / ENGLISH AND TAGALOG WITH ENGLISH SUBTITLES / DOCUMENTARY'),
(126, 45, '_subtitle', 'field_5bb4b8b2aadef'),
(127, 45, 'classification', 'M'),
(128, 45, '_classification', 'field_5bb4b9dba1f93'),
(129, 45, 'when', '2018-10-18 18:15:00'),
(130, 45, '_when', 'field_5bb4bb11a1f94'),
(131, 45, 'where', 'Australian Centre for the Moving Image (ACMI)'),
(132, 45, '_where', 'field_5bb4bb7da1f95'),
(133, 45, 'city', 'Melbourne'),
(134, 45, '_city', 'field_5bb89e8060476'),
(135, 45, 'summary', 'In an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged…'),
(136, 45, '_summary', 'field_5bb4bcbc98e8f'),
(137, 45, 'youtube_video_id', 'ngYphW8YdOFjGEaE'),
(138, 45, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(139, 47, '_edit_last', '1'),
(140, 47, '_edit_lock', '1538832022:1'),
(141, 48, '_wp_attached_file', '2018/10/bio-photo-480x200.jpg'),
(142, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:29:\"2018/10/bio-photo-480x200.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bio-photo-480x200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"bio-photo-480x200-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 47, '_thumbnail_id', '48'),
(144, 47, 'subtitle', ''),
(145, 47, '_subtitle', 'field_5bb4b8b2aadef'),
(146, 47, 'classification', ''),
(147, 47, '_classification', 'field_5bb4b9dba1f93'),
(148, 47, 'when', '2018-10-26 10:00:00'),
(149, 47, '_when', 'field_5bb4bb11a1f94'),
(150, 47, 'where', 'Alexandra Club'),
(151, 47, '_where', 'field_5bb4bb7da1f95'),
(152, 47, 'city', 'Melbourne'),
(153, 47, '_city', 'field_5bb89e8060476'),
(154, 47, 'summary', 'Join us at our annual Morning Tea!'),
(155, 47, '_summary', 'field_5bb4bcbc98e8f'),
(156, 47, 'youtube_video_id', ''),
(157, 47, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(158, 49, '_edit_last', '1'),
(159, 49, '_edit_lock', '1538831516:1'),
(160, 49, 'subtitle', 'Orban Wallace / UK / 84 Mins / English / Documentary'),
(161, 49, '_subtitle', 'field_5bb4b8b2aadef'),
(162, 49, 'classification', 'M'),
(163, 49, '_classification', 'field_5bb4b9dba1f93'),
(164, 49, 'when', '2018-06-20 18:00:00'),
(165, 49, '_when', 'field_5bb4bb11a1f94'),
(166, 49, 'where', 'Palace Kino Cinemas'),
(167, 49, '_where', 'field_5bb4bb7da1f95'),
(168, 49, 'city', 'Melbourne'),
(169, 49, '_city', 'field_5bb89e8060476'),
(170, 49, 'summary', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.'),
(171, 49, '_summary', 'field_5bb4bcbc98e8f'),
(172, 49, '_thumbnail_id', '26'),
(173, 49, 'youtube_video_id', '_N2nZAThjcw'),
(174, 49, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(175, 50, '_edit_last', '1'),
(176, 50, '_edit_lock', '1538832022:1'),
(177, 50, '_thumbnail_id', '48'),
(178, 50, 'subtitle', ''),
(179, 50, '_subtitle', 'field_5bb4b8b2aadef'),
(180, 50, 'classification', ''),
(181, 50, '_classification', 'field_5bb4b9dba1f93'),
(182, 50, 'when', '2018-10-26 10:00:00'),
(183, 50, '_when', 'field_5bb4bb11a1f94'),
(184, 50, 'where', 'Alexandra Club'),
(185, 50, '_where', 'field_5bb4bb7da1f95'),
(186, 50, 'city', 'Melbourne'),
(187, 50, '_city', 'field_5bb89e8060476'),
(188, 50, 'summary', 'Join us at our annual Morning Tea!'),
(189, 50, '_summary', 'field_5bb4bcbc98e8f'),
(190, 50, 'youtube_video_id', ''),
(191, 50, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(192, 51, '_edit_last', '1'),
(193, 51, '_edit_lock', '1538831415:1'),
(194, 51, '_thumbnail_id', '46'),
(195, 51, 'subtitle', 'HANS BLOCK & MORITZ RIESWIECK / 2018 / GERMANY, BRAZIL, NETHERLANDS, ITALY, & USA / 88 MINS / ENGLISH AND TAGALOG WITH ENGLISH SUBTITLES / DOCUMENTARY'),
(196, 51, '_subtitle', 'field_5bb4b8b2aadef'),
(197, 51, 'classification', 'M'),
(198, 51, '_classification', 'field_5bb4b9dba1f93'),
(199, 51, 'when', '2018-10-18 18:15:00'),
(200, 51, '_when', 'field_5bb4bb11a1f94'),
(201, 51, 'where', 'Australian Centre for the Moving Image (ACMI)'),
(202, 51, '_where', 'field_5bb4bb7da1f95'),
(203, 51, 'city', 'Melbourne'),
(204, 51, '_city', 'field_5bb89e8060476'),
(205, 51, 'summary', 'In an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged…'),
(206, 51, '_summary', 'field_5bb4bcbc98e8f'),
(207, 51, 'youtube_video_id', 'ngYphW8YdOFjGEaE'),
(208, 51, '_youtube_video_id', 'field_5bb4bf26d6e21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-02 13:39:45', '2018-10-02 13:39:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-10-06 09:07:11', '2018-10-06 09:07:11', '', 0, 'http://localhost:3157/zeta/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-02 13:39:45', '2018-10-02 13:39:45', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a miner by day, aspiring actor by night, and this is my website. I live in Kalgoorlie, have a great dog named Red, and I like yabbies. (And gettin\' a tan.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:3157/zeta/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-10-03 14:22:26', '2018-10-03 14:22:26', '', 0, 'http://localhost:3157/zeta/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-02 13:39:45', '2018-10-02 13:39:45', '<h2>Who we are</h2>\r\nOur website address is: http://localhost:3157/zeta.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-03 14:22:19', '2018-10-03 14:22:19', '', 0, 'http://localhost:3157/zeta/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-10-02 13:40:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-02 13:40:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?p=4', 0, 'post', '', 0),
(5, 1, '2018-10-03 08:18:24', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-03 08:18:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-10-03 08:18:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-03 08:18:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?p=6', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-10-03 12:16:58', '2018-10-03 12:16:58', '{\n    \"hraff::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-03 12:16:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ab3d8dd-6be1-4e59-8bed-857af32dae17', '', '', '2018-10-03 12:16:58', '2018-10-03 12:16:58', '', 0, 'http://localhost:3157/zeta/uncategorised/2ab3d8dd-6be1-4e59-8bed-857af32dae17/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-10-03 12:18:56', '2018-10-03 12:18:56', '{\n    \"hraff::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-03 12:17:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4d9bb2f-f734-4166-837a-01fda7442e77', '', '', '2018-10-03 12:18:56', '2018-10-03 12:18:56', '', 0, 'http://localhost:3157/zeta/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2018-10-03 12:25:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-03 12:25:37', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?post_type=acf-field-group&p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2018-10-03 12:43:49', '2018-10-03 12:43:49', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event Details', 'event-details', 'publish', 'closed', 'closed', '', 'group_5bb4b89b97baf', '', '', '2018-10-06 13:19:50', '2018-10-06 13:19:50', '', 0, 'http://localhost:3157/zeta/?post_type=acf-field-group&#038;p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2018-10-03 12:40:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-03 12:40:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?post_type=event&p=14', 0, 'event', '', 0),
(15, 1, '2018-10-03 12:43:49', '2018-10-03 12:43:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:123:\"A subtitle for the event. This can include the length of the event, any important personnel, languages, type of event, etc.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:52:\"ORBAN WALLACE / UK / 84 MINS / ENGLISH / DOCUMENTARY\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5bb4b8b2aadef', '', '', '2018-10-06 13:19:50', '2018-10-06 13:19:50', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=15', 0, 'acf-field', '', 0),
(16, 1, '2018-10-03 12:54:39', '2018-10-03 12:54:39', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:10:{s:1:\"E\";s:1:\"E\";s:1:\"C\";s:1:\"C\";s:1:\"P\";s:1:\"P\";s:1:\"G\";s:1:\"G\";s:2:\"PG\";s:2:\"PG\";s:1:\"M\";s:1:\"M\";s:2:\"MA\";s:2:\"MA\";s:2:\"AV\";s:2:\"AV\";s:1:\"R\";s:1:\"R\";s:1:\"X\";s:1:\"X\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Classification', 'classification', 'publish', 'closed', 'closed', '', 'field_5bb4b9dba1f93', '', '', '2018-10-06 11:36:17', '2018-10-06 11:36:17', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=16', 1, 'acf-field', '', 0),
(17, 1, '2018-10-03 12:54:39', '2018-10-03 12:54:39', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:56:\"Date and time for when the event is expected to be held.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:12:\"F j, Y g:i a\";s:13:\"return_format\";s:12:\"F j, Y g:i a\";s:9:\"first_day\";i:1;}', 'When', 'when', 'publish', 'closed', 'closed', '', 'field_5bb4bb11a1f94', '', '', '2018-10-03 12:54:39', '2018-10-03 12:54:39', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&p=17', 2, 'acf-field', '', 0),
(18, 1, '2018-10-03 12:54:39', '2018-10-03 12:54:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:93:\"The address or venue where the event is to be held. Please do not include the city name here.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Where', 'where', 'publish', 'closed', 'closed', '', 'field_5bb4bb7da1f95', '', '', '2018-10-03 12:54:39', '2018-10-03 12:54:39', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&p=18', 3, 'acf-field', '', 0),
(20, 1, '2018-10-03 12:54:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-03 12:54:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?post_type=event&p=20', 0, 'event', '', 0),
(21, 1, '2018-10-03 12:58:13', '2018-10-03 12:58:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:146:\"A short summary of the event limited to 25 words. Exceeding the 25 words limit will mean the summary of events will not be displayed in the theme.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Summary', 'summary', 'publish', 'closed', 'closed', '', 'field_5bb4bcbc98e8f', '', '', '2018-10-06 11:38:06', '2018-10-06 11:38:06', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=21', 5, 'acf-field', '', 0),
(22, 1, '2018-10-03 12:59:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-03 12:59:29', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?post_type=event&p=22', 0, 'event', '', 0),
(23, 1, '2018-10-03 12:59:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-03 12:59:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?post_type=event&p=23', 0, 'event', '', 0),
(24, 1, '2018-10-03 13:14:24', '2018-10-03 13:14:24', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.\r\n\r\n\"<em>A magnificent and epic documentary of historic proportions.</em>\" ROBERT TEMPLE\r\n\r\nHow does the media manufacture the news of the refugee crisis in the Mediterranean? Another News Story takes a unique perspective to present the chaotic event by turning the camera to the journalists covering the humanitarian tragedy. As the refugees move from the Greek island of Lesbos to cross Europe, they are faced with all sorts of obstacles and uncertainties. Along the way they are followed by fellow travellers – journalists, producers and cameramen who are pursuing breaking news. The juxtaposition of suffering refugee experience and the meditated news story questions news making ethics and our standpoint as an audience.\r\n\r\n<em>About the guest speaker Joseph Youhana, Programs Manager – Settlement, Youth and Families, Brotherhood of St Laurence:</em>\r\n\r\nJoseph will join us in cinema to share his inspiring personal story of fleeing his home in Iraq and creating a new life in Australia. He will also speak about his work in the Brotherhood’s Multicultural Communities Team where he manages a variety of youth, family and employment programs that support refugees and asylum seekers to settle in Australia.\r\n\r\n<strong>$30 ticket includes:</strong>\r\n<ul>\r\n 	<li>Pre-film drinks and nibbles</li>\r\n 	<li>The exclusive screening of Another News Story</li>\r\n 	<li>Guest speaker, Joseph Youhana</li>\r\n</ul>', 'Another news story: a refugee week exclusive screening', '', 'publish', 'closed', 'closed', '', 'another-news-storya-refugee-week-exclusive-screening', '', '', '2018-10-06 13:13:00', '2018-10-06 13:13:00', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=24', 0, 'event', '', 0),
(25, 1, '2018-10-03 13:10:32', '2018-10-03 13:10:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:108:\"The Youtube video id that is usually found in the youtube video\'s url after the final slash (\'/\') character.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:11:\"_N2nZAThjcw\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Youtube Video ID', 'youtube_video_id', 'publish', 'closed', 'closed', '', 'field_5bb4bf26d6e21', '', '', '2018-10-06 11:38:06', '2018-10-06 11:38:06', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=25', 6, 'acf-field', '', 0),
(26, 1, '2018-10-03 13:14:07', '2018-10-03 13:14:07', '', 'f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200', '', 'inherit', 'open', 'closed', '', 'f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200', '', '', '2018-10-03 13:14:07', '2018-10-03 13:14:07', '', 24, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-10-03 14:22:03', '2018-10-03 14:22:03', '<h2>Who we are</h2><p>Our website address is: http://localhost:3157/zeta.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-03 14:22:03', '2018-10-03 14:22:03', '', 3, 'http://localhost:3157/zeta/uncategorised/3-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-10-03 14:22:19', '2018-10-03 14:22:19', '<h2>Who we are</h2>\r\nOur website address is: http://localhost:3157/zeta.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-03 14:22:19', '2018-10-03 14:22:19', '', 3, 'http://localhost:3157/zeta/uncategorised/3-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-10-03 14:22:26', '2018-10-03 14:22:26', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a miner by day, aspiring actor by night, and this is my website. I live in Kalgoorlie, have a great dog named Red, and I like yabbies. (And gettin\' a tan.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:3157/zeta/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-03 14:22:26', '2018-10-03 14:22:26', '', 2, 'http://localhost:3157/zeta/uncategorised/2-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-10-03 14:23:38', '2018-10-03 14:23:38', 'AGREEMENT BETWEEN USER AND Human Rights Arts &amp; Film Festival\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is comprised of various Web pages operated by Human Rights Arts &amp; Film Festival.\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is offered to you conditioned on your acceptance without modification of the terms, conditions, and notices contained herein. Your use of the Human Rights Arts &amp; Film Festival Web Site constitutes your agreement to all such terms, conditions, and notices.\r\n\r\nMODIFICATION OF THESE TERMS OF USE\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right to change the terms, conditions, and notices under which the Human Rights Arts &amp; Film Festival Web Site is offered, including but not limited to the charges associated with the use of the Human Rights Arts &amp; Film Festival Web Site.\r\n\r\nLINKS TO THIRD PARTY SITES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain links to other Web Sites (“Linked Sites”). The Linked Sites are not under the control of Human Rights Arts &amp; Film Festival and Human Rights Arts &amp; Film Festival is not responsible for the contents of any Linked Site, including without limitation any link contained in a Linked Site, or any changes or updates to a Linked Site. Human Rights Arts &amp; Film Festival is not responsible for webcasting or any other form of transmission received from any Linked Site. Human Rights Arts &amp; Film Festival is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by Human Rights Arts &amp; Film Festival of the site or any association with its operators.\r\n\r\nNO UNLAWFUL OR PROHIBITED USE\r\n\r\nAs a condition of your use of the Human Rights Arts &amp; Film Festival Web Site, you warrant to Human Rights Arts &amp; Film Festival that you will not use the Human Rights Arts &amp; Film Festival Web Site for any purpose that is unlawful or prohibited by these terms, conditions, and notices. You may not use the Human Rights Arts &amp; Film Festival Web Site in any manner which could damage, disable, overburden, or impair the Human Rights Arts &amp; Film Festival Web Site or interfere with any other party’s use and enjoyment of the Human Rights Arts &amp; Film Festival Web Site. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available or provided for through the Human Rights Arts &amp; Film Festival Web Sites.\r\n\r\nUSE OF COMMUNICATION SERVICES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain bulletin board services, chat areas, news groups, forums, communities, personal web pages, calendars, and/or other message or communication facilities designed to enable you to communicate with the public at large or with a group (collectively, “Communication Services”), you agree to use the Communication Services only to post, send and receive messages and material that are proper and related to the particular Communication Service. By way of example, and not as a limitation, you agree that when using a Communication Service, you will not:\r\n<ul>\r\n 	<li>Defame, abuse, harass, stalk, threaten or otherwise violate the legal rights (such as rights of privacy and publicity) of others.</li>\r\n 	<li>Publish, post, upload, distribute or disseminate any inappropriate, profane, defamatory, infringing, obscene, indecent or unlawful topic, name, material or information.</li>\r\n 	<li>Upload files that contain software or other material protected by intellectual property laws (or by rights of privacy of publicity) unless you own or control the rights thereto or have received all necessary consents.</li>\r\n 	<li>Upload files that contain viruses, corrupted files, or any other similar software or programs that may damage the operation of another’s computer.</li>\r\n 	<li>Advertise or offer to sell or buy any goods or services for any business purpose, unless such Communication Service specifically allows such messages.</li>\r\n 	<li>Conduct or forward surveys, contests, pyramid schemes or chain letters.</li>\r\n 	<li>Download any file posted by another user of a Communication Service that you know, or reasonably should know, cannot be legally distributed in such manner.</li>\r\n 	<li>Falsify or delete any author attributions, legal or other proper notices or proprietary designations or labels of the origin or source of software or other material contained in a file that is uploaded.</li>\r\n 	<li>Restrict or inhibit any other user from using and enjoying the Communication Services.</li>\r\n 	<li>Violate any code of conduct or other guidelines which may be applicable for any particular Communication Service.</li>\r\n 	<li>Harvest or otherwise collect information about others, including e-mail addresses, without their consent.</li>\r\n 	<li>Violate any applicable laws or regulations.</li>\r\n</ul>\r\nHuman Rights Arts &amp; Film Festival has no obligation to monitor the Communication Services. However, Human Rights Arts &amp; Film Festival reserves the right to review materials posted to a Communication Service and to remove any materials in its sole discretion. Human Rights Arts &amp; Film Festival reserves the right to terminate your access to any or all of the Communication Services at any time without notice for any reason whatsoever.\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right at all times to disclose any information as necessary to satisfy any applicable law, regulation, legal process or governmental request, or to edit, refuse to post or to remove any information or materials, in whole or in part, in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nAlways use caution when giving out any personally identifying information about yourself or your children in any Communication Service. Human Rights Arts &amp; Film Festival does not control or endorse the content, messages or information found in any Communication Service and, therefore, Human Rights Arts &amp; Film Festival specifically disclaims any liability with regard to the Communication Services and any actions resulting from your participation in any Communication Service. Managers and hosts are not authorized Human Rights Arts &amp; Film Festival spokespersons, and their views do not necessarily reflect those of Human Rights Arts &amp; Film Festival.\r\n\r\nMaterials uploaded to a Communication Service may be subject to posted limitations on usage, reproduction and/or dissemination. You are responsible for adhering to such limitations if you download the materials.\r\n\r\nMATERIALS PROVIDED TO Human Rights Arts &amp; Film Festival OR POSTED AT ANY Human Rights Arts &amp; Film Festival WEB SITE\r\n\r\nHuman Rights Arts &amp; Film Festival does not claim ownership of the materials you provide to Human Rights Arts &amp; Film Festival (including feedback and suggestions) or post, upload, input or submit to any Human Rights Arts &amp; Film Festival Web Site or its associated services (collectively “Submissions”). However, by posting, uploading, inputting, providing or submitting your Submission you are granting Human Rights Arts &amp; Film Festival, its affiliated companies and necessary sublicensees permission to use your Submission in connection with the operation of their Internet businesses including, without limitation, the rights to: copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your Submission; and to publish your name in connection with your Submission.\r\n\r\nNo compensation will be paid with respect to the use of your Submission, as provided herein. Human Rights Arts &amp; Film Festival is under no obligation to post or use any Submission you may provide and may remove any Submission at any time in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nBy posting, uploading, inputting, providing or submitting your Submission you warrant and represent that you own or otherwise control all of the rights to your Submission as described in this section including, without limitation, all the rights necessary for you to provide, post, upload, input or submit the Submissions.\r\n\r\nLIABILITY DISCLAIMER\r\n\r\nTHE INFORMATION, SOFTWARE, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS. CHANGES ARE PERIODICALLY ADDED TO THE INFORMATION HEREIN. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE Human Rights Arts &amp; Film Festival WEB SITE AT ANY TIME. ADVICE RECEIVED VIA THE Human Rights Arts &amp; Film Festival WEB SITE SHOULD NOT BE RELIED UPON FOR PERSONAL, MEDICAL, LEGAL OR FINANCIAL DECISIONS AND YOU SHOULD CONSULT AN APPROPRIATE PROFESSIONAL FOR SPECIFIC ADVICE TAILORED TO YOUR SITUATION.\r\n\r\nHuman Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAKE NO REPRESENTATIONS ABOUT THE SUITABILITY, RELIABILITY, AVAILABILITY, TIMELINESS, AND ACCURACY OF THE INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS CONTAINED ON THE Human Rights Arts &amp; Film Festival WEB SITE FOR ANY PURPOSE. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ALL SUCH INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS ARE PROVIDED “AS IS” WITHOUT WARRANTY OR CONDITION OF ANY KIND. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH REGARD TO THIS INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS, INCLUDING ALL IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT.\r\n\r\nTO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INCIDENTAL, SPECIAL, CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WITH THE DELAY OR INABILITY TO USE THE Human Rights Arts &amp; Film Festival WEB SITE OR RELATED SERVICES, THE PROVISION OF OR FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS OBTAINED THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE, OR OTHERWISE ARISING OUT OF THE USE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, EVEN IF Human Rights Arts &amp; Film Festival OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE Human Rights Arts &amp; Film Festival WEB SITE, OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE Human Rights Arts &amp; Film Festival WEB SITE.\r\n\r\nSERVICE CONTACT : <a href=\"https://mailto:info@hraff.org.au/\" target=\"_blank\" rel=\"noopener\">info@hraff.org.au</a>\r\n\r\nTERMINATION/ACCESS RESTRICTION\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right, in its sole discretion, to terminate your access to the Human Rights Arts &amp; Film Festival Web Site and the related services or any portion thereof at any time, without notice. GENERAL To the maximum extent permitted by law, this agreement is governed by the laws of the State of Washington, U.S.A. and you hereby consent to the exclusive jurisdiction and venue of courts in King County, Washington, U.S.A. in all disputes arising out of or relating to the use of the Human Rights Arts &amp; Film Festival Web Site. Use of the Human Rights Arts &amp; Film Festival Web Site is unauthorized in any jurisdiction that does not give effect to all provisions of these terms and conditions, including without limitation this paragraph. You agree that no joint venture, partnership, employment, or agency relationship exists between you and Human Rights Arts &amp; Film Festival as a result of this agreement or use of the Human Rights Arts &amp; Film Festival Web Site. Human Rights Arts &amp; Film Festival’s performance of this agreement is subject to existing laws and legal process, and nothing contained in this agreement is in derogation of Human Rights Arts &amp; Film Festival’s right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Human Rights Arts &amp; Film Festival Web Site or information provided to or gathered by Human Rights Arts &amp; Film Festival with respect to such use. If any part of this agreement is determined to be invalid or unenforceable pursuant to applicable law including, but not limited to, the warranty disclaimers and liability limitations set forth above, then the invalid or unenforceable provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of the agreement shall continue in effect. Unless otherwise specified herein, this agreement constitutes the entire agreement between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site and it supersedes all prior or contemporaneous communications and proposals, whether electronic, oral or written, between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site. A printed version of this agreement and of any notice given in electronic form shall be admissible in judicial or administrative proceedings based upon or relating to this agreement to the same extent an d subject to the same conditions as other business documents and records originally generated and maintained in printed form. It is the express wish to the parties that this agreement and all related documents be drawn up in English.\r\n\r\nCOPYRIGHT AND TRADEMARK NOTICES:\r\n\r\nAll contents of the Human Rights Arts &amp; Film Festival Web Site are: Copyright 2010 Human Rights Arts &amp; Film Festival and/or its suppliers. All rights reserved.\r\n\r\nTRADEMARKS\r\n\r\nThe names of actual companies and products mentioned herein may be the trademarks of their respective owners.\r\n\r\nThe example companies, organizations, products, people and events depicted herein are fictitious. No association with any real company, organization, product, person, or event is intended or should be inferred.\r\n\r\nAny rights not expressly granted herein are reserved.\r\n\r\nNOTICES AND PROCEDURE FOR MAKING CLAIMS OF COPYRIGHT INFRINGEMENT\r\n\r\nPursuant to Title 17, United States Code, Section 512(c)(2), notifications of claimed copyright infringement under United States copyright law should be sent to Service Provider’s Designated Agent. ALL INQUIRIES NOT RELEVANT TO THE FOLLOWING PROCEDURE WILL RECEIVE NO RESPONSE. See Notice and Procedure for Making Claims of Copyright Infringement.', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2018-10-03 14:23:38', '2018-10-03 14:23:38', '', 0, 'http://localhost:3157/zeta/?page_id=30', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(31, 1, '2018-10-03 14:23:38', '2018-10-03 14:23:38', 'AGREEMENT BETWEEN USER AND Human Rights Arts &amp; Film Festival\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is comprised of various Web pages operated by Human Rights Arts &amp; Film Festival.\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is offered to you conditioned on your acceptance without modification of the terms, conditions, and notices contained herein. Your use of the Human Rights Arts &amp; Film Festival Web Site constitutes your agreement to all such terms, conditions, and notices.\r\n\r\nMODIFICATION OF THESE TERMS OF USE\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right to change the terms, conditions, and notices under which the Human Rights Arts &amp; Film Festival Web Site is offered, including but not limited to the charges associated with the use of the Human Rights Arts &amp; Film Festival Web Site.\r\n\r\nLINKS TO THIRD PARTY SITES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain links to other Web Sites (“Linked Sites”). The Linked Sites are not under the control of Human Rights Arts &amp; Film Festival and Human Rights Arts &amp; Film Festival is not responsible for the contents of any Linked Site, including without limitation any link contained in a Linked Site, or any changes or updates to a Linked Site. Human Rights Arts &amp; Film Festival is not responsible for webcasting or any other form of transmission received from any Linked Site. Human Rights Arts &amp; Film Festival is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by Human Rights Arts &amp; Film Festival of the site or any association with its operators.\r\n\r\nNO UNLAWFUL OR PROHIBITED USE\r\n\r\nAs a condition of your use of the Human Rights Arts &amp; Film Festival Web Site, you warrant to Human Rights Arts &amp; Film Festival that you will not use the Human Rights Arts &amp; Film Festival Web Site for any purpose that is unlawful or prohibited by these terms, conditions, and notices. You may not use the Human Rights Arts &amp; Film Festival Web Site in any manner which could damage, disable, overburden, or impair the Human Rights Arts &amp; Film Festival Web Site or interfere with any other party’s use and enjoyment of the Human Rights Arts &amp; Film Festival Web Site. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available or provided for through the Human Rights Arts &amp; Film Festival Web Sites.\r\n\r\nUSE OF COMMUNICATION SERVICES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain bulletin board services, chat areas, news groups, forums, communities, personal web pages, calendars, and/or other message or communication facilities designed to enable you to communicate with the public at large or with a group (collectively, “Communication Services”), you agree to use the Communication Services only to post, send and receive messages and material that are proper and related to the particular Communication Service. By way of example, and not as a limitation, you agree that when using a Communication Service, you will not:\r\n<ul>\r\n 	<li>Defame, abuse, harass, stalk, threaten or otherwise violate the legal rights (such as rights of privacy and publicity) of others.</li>\r\n 	<li>Publish, post, upload, distribute or disseminate any inappropriate, profane, defamatory, infringing, obscene, indecent or unlawful topic, name, material or information.</li>\r\n 	<li>Upload files that contain software or other material protected by intellectual property laws (or by rights of privacy of publicity) unless you own or control the rights thereto or have received all necessary consents.</li>\r\n 	<li>Upload files that contain viruses, corrupted files, or any other similar software or programs that may damage the operation of another’s computer.</li>\r\n 	<li>Advertise or offer to sell or buy any goods or services for any business purpose, unless such Communication Service specifically allows such messages.</li>\r\n 	<li>Conduct or forward surveys, contests, pyramid schemes or chain letters.</li>\r\n 	<li>Download any file posted by another user of a Communication Service that you know, or reasonably should know, cannot be legally distributed in such manner.</li>\r\n 	<li>Falsify or delete any author attributions, legal or other proper notices or proprietary designations or labels of the origin or source of software or other material contained in a file that is uploaded.</li>\r\n 	<li>Restrict or inhibit any other user from using and enjoying the Communication Services.</li>\r\n 	<li>Violate any code of conduct or other guidelines which may be applicable for any particular Communication Service.</li>\r\n 	<li>Harvest or otherwise collect information about others, including e-mail addresses, without their consent.</li>\r\n 	<li>Violate any applicable laws or regulations.</li>\r\n</ul>\r\nHuman Rights Arts &amp; Film Festival has no obligation to monitor the Communication Services. However, Human Rights Arts &amp; Film Festival reserves the right to review materials posted to a Communication Service and to remove any materials in its sole discretion. Human Rights Arts &amp; Film Festival reserves the right to terminate your access to any or all of the Communication Services at any time without notice for any reason whatsoever.\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right at all times to disclose any information as necessary to satisfy any applicable law, regulation, legal process or governmental request, or to edit, refuse to post or to remove any information or materials, in whole or in part, in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nAlways use caution when giving out any personally identifying information about yourself or your children in any Communication Service. Human Rights Arts &amp; Film Festival does not control or endorse the content, messages or information found in any Communication Service and, therefore, Human Rights Arts &amp; Film Festival specifically disclaims any liability with regard to the Communication Services and any actions resulting from your participation in any Communication Service. Managers and hosts are not authorized Human Rights Arts &amp; Film Festival spokespersons, and their views do not necessarily reflect those of Human Rights Arts &amp; Film Festival.\r\n\r\nMaterials uploaded to a Communication Service may be subject to posted limitations on usage, reproduction and/or dissemination. You are responsible for adhering to such limitations if you download the materials.\r\n\r\nMATERIALS PROVIDED TO Human Rights Arts &amp; Film Festival OR POSTED AT ANY Human Rights Arts &amp; Film Festival WEB SITE\r\n\r\nHuman Rights Arts &amp; Film Festival does not claim ownership of the materials you provide to Human Rights Arts &amp; Film Festival (including feedback and suggestions) or post, upload, input or submit to any Human Rights Arts &amp; Film Festival Web Site or its associated services (collectively “Submissions”). However, by posting, uploading, inputting, providing or submitting your Submission you are granting Human Rights Arts &amp; Film Festival, its affiliated companies and necessary sublicensees permission to use your Submission in connection with the operation of their Internet businesses including, without limitation, the rights to: copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your Submission; and to publish your name in connection with your Submission.\r\n\r\nNo compensation will be paid with respect to the use of your Submission, as provided herein. Human Rights Arts &amp; Film Festival is under no obligation to post or use any Submission you may provide and may remove any Submission at any time in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nBy posting, uploading, inputting, providing or submitting your Submission you warrant and represent that you own or otherwise control all of the rights to your Submission as described in this section including, without limitation, all the rights necessary for you to provide, post, upload, input or submit the Submissions.\r\n\r\nLIABILITY DISCLAIMER\r\n\r\nTHE INFORMATION, SOFTWARE, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS. CHANGES ARE PERIODICALLY ADDED TO THE INFORMATION HEREIN. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE Human Rights Arts &amp; Film Festival WEB SITE AT ANY TIME. ADVICE RECEIVED VIA THE Human Rights Arts &amp; Film Festival WEB SITE SHOULD NOT BE RELIED UPON FOR PERSONAL, MEDICAL, LEGAL OR FINANCIAL DECISIONS AND YOU SHOULD CONSULT AN APPROPRIATE PROFESSIONAL FOR SPECIFIC ADVICE TAILORED TO YOUR SITUATION.\r\n\r\nHuman Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAKE NO REPRESENTATIONS ABOUT THE SUITABILITY, RELIABILITY, AVAILABILITY, TIMELINESS, AND ACCURACY OF THE INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS CONTAINED ON THE Human Rights Arts &amp; Film Festival WEB SITE FOR ANY PURPOSE. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ALL SUCH INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS ARE PROVIDED “AS IS” WITHOUT WARRANTY OR CONDITION OF ANY KIND. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH REGARD TO THIS INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS, INCLUDING ALL IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT.\r\n\r\nTO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INCIDENTAL, SPECIAL, CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WITH THE DELAY OR INABILITY TO USE THE Human Rights Arts &amp; Film Festival WEB SITE OR RELATED SERVICES, THE PROVISION OF OR FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS OBTAINED THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE, OR OTHERWISE ARISING OUT OF THE USE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, EVEN IF Human Rights Arts &amp; Film Festival OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE Human Rights Arts &amp; Film Festival WEB SITE, OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE Human Rights Arts &amp; Film Festival WEB SITE.\r\n\r\nSERVICE CONTACT : <a href=\"https://mailto:info@hraff.org.au/\" target=\"_blank\" rel=\"noopener\">info@hraff.org.au</a>\r\n\r\nTERMINATION/ACCESS RESTRICTION\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right, in its sole discretion, to terminate your access to the Human Rights Arts &amp; Film Festival Web Site and the related services or any portion thereof at any time, without notice. GENERAL To the maximum extent permitted by law, this agreement is governed by the laws of the State of Washington, U.S.A. and you hereby consent to the exclusive jurisdiction and venue of courts in King County, Washington, U.S.A. in all disputes arising out of or relating to the use of the Human Rights Arts &amp; Film Festival Web Site. Use of the Human Rights Arts &amp; Film Festival Web Site is unauthorized in any jurisdiction that does not give effect to all provisions of these terms and conditions, including without limitation this paragraph. You agree that no joint venture, partnership, employment, or agency relationship exists between you and Human Rights Arts &amp; Film Festival as a result of this agreement or use of the Human Rights Arts &amp; Film Festival Web Site. Human Rights Arts &amp; Film Festival’s performance of this agreement is subject to existing laws and legal process, and nothing contained in this agreement is in derogation of Human Rights Arts &amp; Film Festival’s right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Human Rights Arts &amp; Film Festival Web Site or information provided to or gathered by Human Rights Arts &amp; Film Festival with respect to such use. If any part of this agreement is determined to be invalid or unenforceable pursuant to applicable law including, but not limited to, the warranty disclaimers and liability limitations set forth above, then the invalid or unenforceable provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of the agreement shall continue in effect. Unless otherwise specified herein, this agreement constitutes the entire agreement between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site and it supersedes all prior or contemporaneous communications and proposals, whether electronic, oral or written, between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site. A printed version of this agreement and of any notice given in electronic form shall be admissible in judicial or administrative proceedings based upon or relating to this agreement to the same extent an d subject to the same conditions as other business documents and records originally generated and maintained in printed form. It is the express wish to the parties that this agreement and all related documents be drawn up in English.\r\n\r\nCOPYRIGHT AND TRADEMARK NOTICES:\r\n\r\nAll contents of the Human Rights Arts &amp; Film Festival Web Site are: Copyright 2010 Human Rights Arts &amp; Film Festival and/or its suppliers. All rights reserved.\r\n\r\nTRADEMARKS\r\n\r\nThe names of actual companies and products mentioned herein may be the trademarks of their respective owners.\r\n\r\nThe example companies, organizations, products, people and events depicted herein are fictitious. No association with any real company, organization, product, person, or event is intended or should be inferred.\r\n\r\nAny rights not expressly granted herein are reserved.\r\n\r\nNOTICES AND PROCEDURE FOR MAKING CLAIMS OF COPYRIGHT INFRINGEMENT\r\n\r\nPursuant to Title 17, United States Code, Section 512(c)(2), notifications of claimed copyright infringement under United States copyright law should be sent to Service Provider’s Designated Agent. ALL INQUIRIES NOT RELEVANT TO THE FOLLOWING PROCEDURE WILL RECEIVE NO RESPONSE. See Notice and Procedure for Making Claims of Copyright Infringement.', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-10-03 14:23:38', '2018-10-03 14:23:38', '', 30, 'http://localhost:3157/zeta/uncategorised/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-10-03 14:24:45', '2018-10-03 14:24:45', '<h5><strong>Privacy Policy</strong></h5>\r\nThis Application collects some Personal Data from its Users.\r\n\r\n<strong>Data Controller and Owner</strong>\r\n\r\nHuman Rights Arts and Film Festival Inc\r\n\r\nABN: 41 028 224 880\r\n\r\n(03) 9629 9944\r\n\r\nGPO Box 4490, Melbourne, 3001\r\n\r\n<strong>Types of Data collected</strong>\r\n\r\nAmong the types of Personal Data that this Application collects, by itself or through third parties, there are: Cookie, Usage data, Email address and Payment Information.\r\n\r\nOther Personal Data collected may be described in other sections of this privacy policy or by dedicated explanation text contextually with the Data collection.\r\n\r\nThe Personal Data may be freely provided by the User, or collected automatically when using this Application.\r\n\r\nAny use of Cookies – or of other tracking tools – by this Application or by the owners of third party services used by this Application, unless stated otherwise, serves to identify Users and remember their preferences, for the sole purpose of providing the service required by the User.\r\n\r\nFailure to provide certain Personal Data may make it impossible for this Application to provide its services.\r\n\r\nUsers are responsible for any Personal Data of third parties obtained, published or shared through this Application and confirm that they have the third party’s consent to provide the Data to the Owner.\r\n\r\n<strong>Mode and place of processing the Data</strong>\r\n\r\n<strong>Methods of processing</strong>\r\n\r\nHRAFF processes the Data of Users in a proper manner and shall take appropriate security measures to prevent unauthorized access, disclosure, modification, or unauthorized destruction of the Data.\r\n\r\nThe Data processing is carried out using computers and/or IT enabled tools, following organizational procedures and modes strictly related to the purposes indicated. In addition to HRAFF, in some cases, the Data may be accessible to certain types of persons in charge, involved with the operation of the site (administration, sales, marketing, legal, system administration) or external parties (such as third party technical service providers, mail carriers, hosting providers, IT companies, communications agencies) appointed, if necessary, as Data Processors by the Owner. The updated list of these parties may be requested from HRAFF at any time.\r\n\r\n<strong>Place</strong>\r\n\r\nThe Data is processed at HRAFF’s operating offices and in any other places where the parties involved with the processing are located. For further information, please contact HRAFF.\r\n\r\n<strong>Retention time</strong>\r\n\r\nThe Data is kept for the time necessary to provide the service requested by the User, or stated by the purposes outlined in this document, and the User can always request that HRAFF suspend or remove the data.\r\n\r\n<strong>The use of the collected Data</strong>\r\n\r\nThe Data concerning the User is collected to allow the Owner to provide its services, as well as for the following purposes: Analytics and Managing contacts and sending messages.\r\n\r\nThe Personal Data used for each purpose is outlined in the specific sections of this document.\r\n\r\n<strong>Detailed information on the processing of Personal Data</strong>\r\n\r\nPersonal Data is collected for the following purposes and using the following services:\r\n\r\n<strong>Ferve Tickets (Vallez Pty Ltd)</strong>\r\n\r\nVallez Pty Ltd trading as Ferve Tickets (ABN 86 078 001 073) (Ferve Tickets) provides ticketing services for this Application. Ferve Tickets’ Security and Privacy Policy can be located at <a href=\"http://tix.hraff.org.au/securityPolicy.asp?lang=1\">http://tix.hraff.org.au/securityPolicy.asp?lang=1</a>. Please ensure that you are familiar with the terms contained therein.\r\n\r\n<strong>Google Analytics (Google)</strong>\r\n\r\nGoogle Analytics is a web analysis service provided by Google Inc. (“Google”). Google utilizes the Data collected to track and examine the use of this Application, to prepare reports on its activities and share them with other Google services.\r\n\r\nGoogle may use the Data collected to contextualize and personalize the ads of its own advertising network.\r\n\r\nThe services contained in this section enable the Owner to monitor and analyse web traffic and can be used to keep track of User behaviour.\r\n\r\nPersonal Data collected: Cookie and Usage data.\r\n\r\nGoogle’s Privacy Policy: <a href=\"http://www.google.com/intl/en/policies/privacy/\">http://www.google.com/intl/en/policies/privacy/</a>\r\n\r\n<strong>Mailchimp Newsletters (Mailchimp)</strong>\r\n\r\nMailchimp is an email address management and message sending service provided by Mailchimp Inc.\r\n\r\nThese services make it possible to manage a database of email contacts, phone contacts or any other contact information to communicate with the User.\r\n\r\nThese services may also collect data concerning the date and time when the message was viewed by the User, as well as when the User interacted with it, such as by clicking on links included in the message.\r\n\r\nMailChimp’s Privacy Policy: <a href=\"http://mailchimp.com/legal/privacy/\">http://mailchimp.com/legal/privacy/</a>\r\n\r\n<strong>Paypal Donations (Paypal)</strong>\r\n\r\nSome of our financial transactions are handled through our payment services provider, Paypal. You should only provide your personal information to Paypal after reviewing the Paypal privacy policy (available at www.paypal.com).  We will share information with Paypal only to the extent necessary for the purposes of processing payments you make via our website. We do not store your financial or credit card details.\r\n\r\nPaypal’s Privacy Policy: <a href=\"https://www.paypal.com/au/webapps/mpp/ua/privacy-full\">https://www.paypal.com/au/webapps/mpp/ua/privacy-full</a>\r\n\r\n<strong>Additional information about Data collection and processing</strong>\r\n\r\n<strong>Legal action</strong>\r\n\r\nThe User’s Personal Data may be used for legal purposes by HRAFF, in Court or in the stages leading to possible legal action arising from improper use of this Application or the related services.\r\n\r\nThe User declares to be aware that HRAFF may be required to reveal personal data upon request of public authorities.\r\n\r\n<strong>Additional information about User’s Personal Data</strong>\r\n\r\nIn addition to the information contained in this privacy policy, this Application may provide the User with additional and contextual information concerning particular services or the collection and processing of Personal Data upon request.\r\n\r\n<strong>System Logs and Maintenance</strong>\r\n\r\nFor operation and maintenance purposes, this Application and any third party services may collect files that record interaction with this Application (System Logs) or use for this purpose other Personal Data (such as IP Address).\r\n\r\n<strong>The rights of Users</strong>\r\n\r\nUsers have the right, at any time, to know whether their Personal Data has been stored and can consult HRAFF to learn about their contents and origin, to verify their accuracy or to ask for them to be supplemented, cancelled, updated or corrected, or for their transformation into anonymous format or to block any data held in violation of the law, as well as to oppose their treatment for any and all legitimate reasons. Requests should be sent to HRAFF at the contact information set out above.\r\n\r\nThis Application does not support “Do Not Track” requests.\r\nTo determine whether any of the third party services it uses honour the “Do Not Track” requests, please read their privacy policies.\r\n\r\n<strong>Changes to this privacy policy</strong>\r\n\r\nHRAFF reserves the right to make changes to this privacy policy at any time by giving notice to its Users on this page. It is strongly recommended to check this page often, referring to the date of the last modification listed at the bottom. If a User objects to any of the changes to the Policy, the User must cease using this Application and can request that HRAFF removes the Personal Data. Unless stated otherwise, the then-current privacy policy applies to all Personal Data HRAFF has about Users.\r\n\r\n<strong>Information about this privacy policy</strong>\r\n\r\nHRAFF is responsible for this privacy policy. More details concerning the collection or processing of Personal Data may be requested from HRAFF at any time. Please see the contact information at the beginning of this document.\r\n\r\n<strong>Definitions and legal references</strong>\r\n\r\n<strong>Personal Data (or Data)</strong>\r\n\r\nAny information regarding a natural person, a legal person, an institution or an association, which is, or can be, identified, even indirectly, by reference to any other information, including a personal identification number.\r\n\r\n<strong>Usage Data</strong>\r\n\r\nInformation collected automatically from this Application (or third party services employed in this Application ), which can include: the IP addresses or domain names of the computers utilized by the Users who use this Application, the URI addresses (Uniform Resource Identifier), the time of the request, the method utilized to submit the request to the server, the size of the file received in response, the numerical code indicating the status of the server’s answer (successful outcome, error, etc.), the country of origin, the features of the browser and the operating system utilized by the User, the various time details per visit (e.g., the time spent on each page within the Application) and the details about the path followed within the Application with special reference to the sequence of pages visited, and other parameters about the device operating system and/or the User’s IT environment.\r\n\r\n<strong>User</strong>\r\n\r\nThe individual using this Application, which must coincide with or be authorized by the Data Subject, to whom the Personal Data refer.\r\n\r\n<strong>Data Subject</strong>\r\n\r\nThe legal or natural person to whom the Personal Data refers.\r\n\r\n<strong>Data Processor (or Data Supervisor)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization authorized by HRAFF to process the Personal Data in compliance with this privacy policy.\r\n\r\n<strong>Data Controller (or Owner)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization with the right, also jointly with another Data Controller, to make decisions regarding the purposes, and the methods of processing of Personal Data and the means used, including the security measures concerning the operation and use of this Application.\r\n\r\n<strong>This Application</strong>\r\n\r\nThe hardware or software tool by which the Personal Data of the User is collected.\r\n\r\n<strong>Cookie</strong>\r\n\r\nSmall piece of data stored in the User’s device.', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2018-10-03 14:24:45', '2018-10-03 14:24:45', '', 0, 'http://localhost:3157/zeta/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-10-03 14:24:45', '2018-10-03 14:24:45', '<h5><strong>Privacy Policy</strong></h5>\r\nThis Application collects some Personal Data from its Users.\r\n\r\n<strong>Data Controller and Owner</strong>\r\n\r\nHuman Rights Arts and Film Festival Inc\r\n\r\nABN: 41 028 224 880\r\n\r\n(03) 9629 9944\r\n\r\nGPO Box 4490, Melbourne, 3001\r\n\r\n<strong>Types of Data collected</strong>\r\n\r\nAmong the types of Personal Data that this Application collects, by itself or through third parties, there are: Cookie, Usage data, Email address and Payment Information.\r\n\r\nOther Personal Data collected may be described in other sections of this privacy policy or by dedicated explanation text contextually with the Data collection.\r\n\r\nThe Personal Data may be freely provided by the User, or collected automatically when using this Application.\r\n\r\nAny use of Cookies – or of other tracking tools – by this Application or by the owners of third party services used by this Application, unless stated otherwise, serves to identify Users and remember their preferences, for the sole purpose of providing the service required by the User.\r\n\r\nFailure to provide certain Personal Data may make it impossible for this Application to provide its services.\r\n\r\nUsers are responsible for any Personal Data of third parties obtained, published or shared through this Application and confirm that they have the third party’s consent to provide the Data to the Owner.\r\n\r\n<strong>Mode and place of processing the Data</strong>\r\n\r\n<strong>Methods of processing</strong>\r\n\r\nHRAFF processes the Data of Users in a proper manner and shall take appropriate security measures to prevent unauthorized access, disclosure, modification, or unauthorized destruction of the Data.\r\n\r\nThe Data processing is carried out using computers and/or IT enabled tools, following organizational procedures and modes strictly related to the purposes indicated. In addition to HRAFF, in some cases, the Data may be accessible to certain types of persons in charge, involved with the operation of the site (administration, sales, marketing, legal, system administration) or external parties (such as third party technical service providers, mail carriers, hosting providers, IT companies, communications agencies) appointed, if necessary, as Data Processors by the Owner. The updated list of these parties may be requested from HRAFF at any time.\r\n\r\n<strong>Place</strong>\r\n\r\nThe Data is processed at HRAFF’s operating offices and in any other places where the parties involved with the processing are located. For further information, please contact HRAFF.\r\n\r\n<strong>Retention time</strong>\r\n\r\nThe Data is kept for the time necessary to provide the service requested by the User, or stated by the purposes outlined in this document, and the User can always request that HRAFF suspend or remove the data.\r\n\r\n<strong>The use of the collected Data</strong>\r\n\r\nThe Data concerning the User is collected to allow the Owner to provide its services, as well as for the following purposes: Analytics and Managing contacts and sending messages.\r\n\r\nThe Personal Data used for each purpose is outlined in the specific sections of this document.\r\n\r\n<strong>Detailed information on the processing of Personal Data</strong>\r\n\r\nPersonal Data is collected for the following purposes and using the following services:\r\n\r\n<strong>Ferve Tickets (Vallez Pty Ltd)</strong>\r\n\r\nVallez Pty Ltd trading as Ferve Tickets (ABN 86 078 001 073) (Ferve Tickets) provides ticketing services for this Application. Ferve Tickets’ Security and Privacy Policy can be located at <a href=\"http://tix.hraff.org.au/securityPolicy.asp?lang=1\">http://tix.hraff.org.au/securityPolicy.asp?lang=1</a>. Please ensure that you are familiar with the terms contained therein.\r\n\r\n<strong>Google Analytics (Google)</strong>\r\n\r\nGoogle Analytics is a web analysis service provided by Google Inc. (“Google”). Google utilizes the Data collected to track and examine the use of this Application, to prepare reports on its activities and share them with other Google services.\r\n\r\nGoogle may use the Data collected to contextualize and personalize the ads of its own advertising network.\r\n\r\nThe services contained in this section enable the Owner to monitor and analyse web traffic and can be used to keep track of User behaviour.\r\n\r\nPersonal Data collected: Cookie and Usage data.\r\n\r\nGoogle’s Privacy Policy: <a href=\"http://www.google.com/intl/en/policies/privacy/\">http://www.google.com/intl/en/policies/privacy/</a>\r\n\r\n<strong>Mailchimp Newsletters (Mailchimp)</strong>\r\n\r\nMailchimp is an email address management and message sending service provided by Mailchimp Inc.\r\n\r\nThese services make it possible to manage a database of email contacts, phone contacts or any other contact information to communicate with the User.\r\n\r\nThese services may also collect data concerning the date and time when the message was viewed by the User, as well as when the User interacted with it, such as by clicking on links included in the message.\r\n\r\nMailChimp’s Privacy Policy: <a href=\"http://mailchimp.com/legal/privacy/\">http://mailchimp.com/legal/privacy/</a>\r\n\r\n<strong>Paypal Donations (Paypal)</strong>\r\n\r\nSome of our financial transactions are handled through our payment services provider, Paypal. You should only provide your personal information to Paypal after reviewing the Paypal privacy policy (available at www.paypal.com).  We will share information with Paypal only to the extent necessary for the purposes of processing payments you make via our website. We do not store your financial or credit card details.\r\n\r\nPaypal’s Privacy Policy: <a href=\"https://www.paypal.com/au/webapps/mpp/ua/privacy-full\">https://www.paypal.com/au/webapps/mpp/ua/privacy-full</a>\r\n\r\n<strong>Additional information about Data collection and processing</strong>\r\n\r\n<strong>Legal action</strong>\r\n\r\nThe User’s Personal Data may be used for legal purposes by HRAFF, in Court or in the stages leading to possible legal action arising from improper use of this Application or the related services.\r\n\r\nThe User declares to be aware that HRAFF may be required to reveal personal data upon request of public authorities.\r\n\r\n<strong>Additional information about User’s Personal Data</strong>\r\n\r\nIn addition to the information contained in this privacy policy, this Application may provide the User with additional and contextual information concerning particular services or the collection and processing of Personal Data upon request.\r\n\r\n<strong>System Logs and Maintenance</strong>\r\n\r\nFor operation and maintenance purposes, this Application and any third party services may collect files that record interaction with this Application (System Logs) or use for this purpose other Personal Data (such as IP Address).\r\n\r\n<strong>The rights of Users</strong>\r\n\r\nUsers have the right, at any time, to know whether their Personal Data has been stored and can consult HRAFF to learn about their contents and origin, to verify their accuracy or to ask for them to be supplemented, cancelled, updated or corrected, or for their transformation into anonymous format or to block any data held in violation of the law, as well as to oppose their treatment for any and all legitimate reasons. Requests should be sent to HRAFF at the contact information set out above.\r\n\r\nThis Application does not support “Do Not Track” requests.\r\nTo determine whether any of the third party services it uses honour the “Do Not Track” requests, please read their privacy policies.\r\n\r\n<strong>Changes to this privacy policy</strong>\r\n\r\nHRAFF reserves the right to make changes to this privacy policy at any time by giving notice to its Users on this page. It is strongly recommended to check this page often, referring to the date of the last modification listed at the bottom. If a User objects to any of the changes to the Policy, the User must cease using this Application and can request that HRAFF removes the Personal Data. Unless stated otherwise, the then-current privacy policy applies to all Personal Data HRAFF has about Users.\r\n\r\n<strong>Information about this privacy policy</strong>\r\n\r\nHRAFF is responsible for this privacy policy. More details concerning the collection or processing of Personal Data may be requested from HRAFF at any time. Please see the contact information at the beginning of this document.\r\n\r\n<strong>Definitions and legal references</strong>\r\n\r\n<strong>Personal Data (or Data)</strong>\r\n\r\nAny information regarding a natural person, a legal person, an institution or an association, which is, or can be, identified, even indirectly, by reference to any other information, including a personal identification number.\r\n\r\n<strong>Usage Data</strong>\r\n\r\nInformation collected automatically from this Application (or third party services employed in this Application ), which can include: the IP addresses or domain names of the computers utilized by the Users who use this Application, the URI addresses (Uniform Resource Identifier), the time of the request, the method utilized to submit the request to the server, the size of the file received in response, the numerical code indicating the status of the server’s answer (successful outcome, error, etc.), the country of origin, the features of the browser and the operating system utilized by the User, the various time details per visit (e.g., the time spent on each page within the Application) and the details about the path followed within the Application with special reference to the sequence of pages visited, and other parameters about the device operating system and/or the User’s IT environment.\r\n\r\n<strong>User</strong>\r\n\r\nThe individual using this Application, which must coincide with or be authorized by the Data Subject, to whom the Personal Data refer.\r\n\r\n<strong>Data Subject</strong>\r\n\r\nThe legal or natural person to whom the Personal Data refers.\r\n\r\n<strong>Data Processor (or Data Supervisor)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization authorized by HRAFF to process the Personal Data in compliance with this privacy policy.\r\n\r\n<strong>Data Controller (or Owner)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization with the right, also jointly with another Data Controller, to make decisions regarding the purposes, and the methods of processing of Personal Data and the means used, including the security measures concerning the operation and use of this Application.\r\n\r\n<strong>This Application</strong>\r\n\r\nThe hardware or software tool by which the Personal Data of the User is collected.\r\n\r\n<strong>Cookie</strong>\r\n\r\nSmall piece of data stored in the User’s device.', 'Privacy', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-10-03 14:24:45', '2018-10-03 14:24:45', '', 32, 'http://localhost:3157/zeta/uncategorised/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-10-03 14:25:26', '2018-10-03 14:25:26', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-10-03 14:25:26', '2018-10-03 14:25:26', '', 0, 'http://localhost:3157/zeta/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-10-03 14:25:26', '2018-10-03 14:25:26', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-10-03 14:25:26', '2018-10-03 14:25:26', '', 0, 'http://localhost:3157/zeta/?p=35', 2, 'nav_menu_item', '', 0),
(37, 1, '2018-10-06 07:22:37', '2018-10-06 07:22:37', 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2018-10-06 07:22:37', '2018-10-06 07:22:37', '', 0, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2018-10-06 07:22:55', '2018-10-06 07:22:55', '{\n    \"site_icon\": {\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-06 07:22:55\"\n    },\n    \"hraff::custom_logo\": {\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-06 07:22:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee5e61d0-5a2b-445c-9e7e-5bb8a3545873', '', '', '2018-10-06 07:22:55', '2018-10-06 07:22:55', '', 0, 'http://localhost:3157/zeta/uncategorised/ee5e61d0-5a2b-445c-9e7e-5bb8a3545873/', 0, 'customize_changeset', '', 0),
(40, 1, '2018-10-06 07:56:53', '2018-10-06 07:56:53', 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2018-10-06 07:56:53', '2018-10-06 07:56:53', '', 0, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-10-06 07:56:59', '2018-10-06 07:56:59', '{\n    \"hraff::custom_logo\": {\n        \"value\": 40,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-06 07:56:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9434dfff-ae7b-48ee-a157-9eb6015b44ec', '', '', '2018-10-06 07:56:59', '2018-10-06 07:56:59', '', 0, 'http://localhost:3157/zeta/uncategorised/9434dfff-ae7b-48ee-a157-9eb6015b44ec/', 0, 'customize_changeset', '', 0),
(42, 1, '2018-10-06 09:07:11', '2018-10-06 09:07:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-10-06 09:07:11', '2018-10-06 09:07:11', '', 1, 'http://localhost:3157/zeta/uncategorised/1-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-10-06 11:38:06', '2018-10-06 11:38:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"City where the event is located\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'City', 'city', 'publish', 'closed', 'closed', '', 'field_5bb89e8060476', '', '', '2018-10-06 11:38:06', '2018-10-06 11:38:06', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&p=43', 4, 'acf-field', '', 0),
(44, 1, '2018-10-06 11:44:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-06 11:44:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-10-06 13:12:08', '2018-10-06 13:12:08', '<strong>“<em>Smart, stylish doc exposes must-discuss issues regarding the companies who dominate the Internet.</em>”</strong> JOHN DEFORE, THE HOLLYWOOD REPORTER\r\n\r\nCome and join us at ACMI for HRAFF’s Spring Film Fundraiser – we have an amazing advanced screening of one of the year’s most important Human Rights Films – THE CLEANERS – which explores the evolution of employment rights in the age of social media. 100% of the profits from this event will go towards supporting HRAFF, and help us fund next year’s festival!\r\nIn an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged. They are online moderators and their job is to scour through all of our personal online content and decide whether to skip over it or delete it from view. However, beyond this invasion of our not-so-private lives, these workers must also trawl through all of the most disturbing content hidden in the darkest corners of the internet.Bravely and anonymously, these “cleaners” speak out about their jobs, the industry and the impact moderating this content has on their psychological well-being. And at the other end of the line, the tech companies outsourcing the moderating of this content are called into question. What are their commercial imperatives? And who is moderating the moderators?\r\n\r\nHans Block and Moritz Riesewieck’s documentary offers a complex and well-rounded view of censorship going well beyond knee-jerk reactions and in doing so paints a picture of the social media landscape with the darkest of hues.', 'The Cleaners– A HRAFF Fundraider', '', 'publish', 'closed', 'closed', '', 'the-cleaners-a-hraff-fundraider', '', '', '2018-10-06 13:12:37', '2018-10-06 13:12:37', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=45', 0, 'event', '', 0),
(46, 1, '2018-10-06 13:11:49', '2018-10-06 13:11:49', '', '04_the_cleaners____gebrueder_beetz_filmproduktion-480x200', '', 'inherit', 'open', 'closed', '', '04_the_cleaners____gebrueder_beetz_filmproduktion-480x200', '', '', '2018-10-06 13:11:49', '2018-10-06 13:11:49', '', 45, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/04_the_cleaners____gebrueder_beetz_filmproduktion-480x200.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-10-06 13:20:10', '2018-10-06 13:20:10', 'We are delighted to confirm Van Badham as the speaker at 2018’s returning Morning Tea &amp; Talk at the Alexandra Club. Van’s role as an influential human rights columnist for the Guardian makes her a perfect fit for this year’s address.\r\n\r\nVan Badham is a Melbourne-based theatremaker, journalist, critic, academic, activist, novelist and occasional broadcaster. She is currently employed by the Guardian Australia as a weekly political columnist and culture critic, while as a theatremaker she’s had more than 100 international productions of her work.\r\n\r\nAs a commentator, Van has been a guest of Radio National, Tonightly, Sunrise and The Project and in 2014, 2015, 2016 and 2018 was a panellist on ABCTV’s Q&amp;A programme. She has been a featured speaker at the Wheeler Centre, Festival of Dangerous Ideas, All About Women festival, Melbourne Writers’ Festival and Australian Council of Trade Unions National Congress. As of 2018, Badham appears as a regular contributor to The Drum on ABC Television and Politics HQ on Sky News Australia.\r\n\r\nHelp support HRAFF! Buy a raffle ticket to win one of these fantastic prizes. You don’t need to be at the event to buy a ticket, raffle numbers will be assigned to pre-purchased tickets on the day.\r\n\r\n1st Prize: An interior design voucher to the value of $2500 with Steding Interiors and Joinery. Look at their amazing work <a href=\"http://www.steding.com.au/\">here</a>.\r\n\r\n2nd Prize: A landscape gardening voucher to the value of $1500 with Lisa Ellis Gardens (within the Melbourne area). You can see her amazing work <a href=\"https://www.lisaellisgardens.com.au/\">here</a>.', 'Morning Tea with Van Badham', '', 'publish', 'closed', 'closed', '', 'morning-tea-with-van-badham', '', '', '2018-10-06 13:21:05', '2018-10-06 13:21:05', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=47', 0, 'event', '', 0),
(48, 1, '2018-10-06 13:19:00', '2018-10-06 13:19:00', '', 'bio-photo-480x200', '', 'inherit', 'open', 'closed', '', 'bio-photo-480x200', '', '', '2018-10-06 13:19:00', '2018-10-06 13:19:00', '', 47, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/bio-photo-480x200.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-10-06 13:23:27', '2018-10-06 13:23:27', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.\r\n\r\n\"<em>A magnificent and epic documentary of historic proportions.</em>\" ROBERT TEMPLE\r\n\r\nHow does the media manufacture the news of the refugee crisis in the Mediterranean? Another News Story takes a unique perspective to present the chaotic event by turning the camera to the journalists covering the humanitarian tragedy. As the refugees move from the Greek island of Lesbos to cross Europe, they are faced with all sorts of obstacles and uncertainties. Along the way they are followed by fellow travellers – journalists, producers and cameramen who are pursuing breaking news. The juxtaposition of suffering refugee experience and the meditated news story questions news making ethics and our standpoint as an audience.\r\n\r\n<em>About the guest speaker Joseph Youhana, Programs Manager – Settlement, Youth and Families, Brotherhood of St Laurence:</em>\r\n\r\nJoseph will join us in cinema to share his inspiring personal story of fleeing his home in Iraq and creating a new life in Australia. He will also speak about his work in the Brotherhood’s Multicultural Communities Team where he manages a variety of youth, family and employment programs that support refugees and asylum seekers to settle in Australia.\r\n\r\n<strong>$30 ticket includes:</strong>\r\n<ul>\r\n 	<li>Pre-film drinks and nibbles</li>\r\n 	<li>The exclusive screening of Another News Story</li>\r\n 	<li>Guest speaker, Joseph Youhana</li>\r\n</ul>', 'Another news story: a refugee week exclusive screening  Copy', '', 'publish', 'closed', 'closed', '', 'another-news-storya-refugee-week-exclusive-screening-copy', '', '', '2018-10-06 13:23:27', '2018-10-06 13:23:27', '', 0, 'http://localhost:3157/zeta/event/another-news-storya-refugee-week-exclusive-screening-copy/', 0, 'event', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(50, 1, '2018-10-06 13:23:30', '2018-10-06 13:23:30', 'We are delighted to confirm Van Badham as the speaker at 2018’s returning Morning Tea &amp; Talk at the Alexandra Club. Van’s role as an influential human rights columnist for the Guardian makes her a perfect fit for this year’s address.\r\n\r\nVan Badham is a Melbourne-based theatremaker, journalist, critic, academic, activist, novelist and occasional broadcaster. She is currently employed by the Guardian Australia as a weekly political columnist and culture critic, while as a theatremaker she’s had more than 100 international productions of her work.\r\n\r\nAs a commentator, Van has been a guest of Radio National, Tonightly, Sunrise and The Project and in 2014, 2015, 2016 and 2018 was a panellist on ABCTV’s Q&amp;A programme. She has been a featured speaker at the Wheeler Centre, Festival of Dangerous Ideas, All About Women festival, Melbourne Writers’ Festival and Australian Council of Trade Unions National Congress. As of 2018, Badham appears as a regular contributor to The Drum on ABC Television and Politics HQ on Sky News Australia.\r\n\r\nHelp support HRAFF! Buy a raffle ticket to win one of these fantastic prizes. You don’t need to be at the event to buy a ticket, raffle numbers will be assigned to pre-purchased tickets on the day.\r\n\r\n1st Prize: An interior design voucher to the value of $2500 with Steding Interiors and Joinery. Look at their amazing work <a href=\"http://www.steding.com.au/\">here</a>.\r\n\r\n2nd Prize: A landscape gardening voucher to the value of $1500 with Lisa Ellis Gardens (within the Melbourne area). You can see her amazing work <a href=\"https://www.lisaellisgardens.com.au/\">here</a>.', 'Morning Tea with Van Badham  Copy', '', 'publish', 'closed', 'closed', '', 'morning-tea-with-van-badham-copy', '', '', '2018-10-06 13:23:30', '2018-10-06 13:23:30', '', 0, 'http://localhost:3157/zeta/event/morning-tea-with-van-badham-copy/', 0, 'event', '', 0),
(51, 1, '2018-10-06 13:23:33', '2018-10-06 13:23:33', '<strong>“<em>Smart, stylish doc exposes must-discuss issues regarding the companies who dominate the Internet.</em>”</strong> JOHN DEFORE, THE HOLLYWOOD REPORTER\r\n\r\nCome and join us at ACMI for HRAFF’s Spring Film Fundraiser – we have an amazing advanced screening of one of the year’s most important Human Rights Films – THE CLEANERS – which explores the evolution of employment rights in the age of social media. 100% of the profits from this event will go towards supporting HRAFF, and help us fund next year’s festival!\r\nIn an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged. They are online moderators and their job is to scour through all of our personal online content and decide whether to skip over it or delete it from view. However, beyond this invasion of our not-so-private lives, these workers must also trawl through all of the most disturbing content hidden in the darkest corners of the internet.Bravely and anonymously, these “cleaners” speak out about their jobs, the industry and the impact moderating this content has on their psychological well-being. And at the other end of the line, the tech companies outsourcing the moderating of this content are called into question. What are their commercial imperatives? And who is moderating the moderators?\r\n\r\nHans Block and Moritz Riesewieck’s documentary offers a complex and well-rounded view of censorship going well beyond knee-jerk reactions and in doing so paints a picture of the social media landscape with the darkest of hues.', 'The Cleaners– A HRAFF Fundraider  Copy', '', 'publish', 'closed', 'closed', '', 'the-cleaners-a-hraff-fundraider-copy', '', '', '2018-10-06 13:23:33', '2018-10-06 13:23:33', '', 0, 'http://localhost:3157/zeta/event/the-cleaners-a-hraff-fundraider-copy/', 0, 'event', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Links', 'footer-links', 0),
(4, 'Adelaide', 'adelaide', 0),
(5, 'Melbourne', 'melbourne', 0),
(6, 'Brisbane', 'brisbane', 0),
(7, 'Darwin', 'darwin', 0),
(8, 'Alice Springs', 'alice-springs', 0),
(9, 'Sydney', 'sydney', 0),
(10, 'Canberra', 'canberra', 0),
(11, 'Launceston', 'launceston', 0),
(12, 'Perth', 'perth', 0),
(13, 'Hobart', 'hobart', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 5, 0),
(34, 3, 0),
(35, 3, 0),
(45, 5, 0),
(47, 5, 0),
(49, 5, 0),
(50, 5, 0),
(51, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'city', '', 0, 0),
(5, 5, 'city', '', 0, 6),
(6, 6, 'city', '', 0, 0),
(7, 7, 'city', '', 0, 0),
(8, 8, 'city', '', 0, 0),
(9, 9, 'city', '', 0, 0),
(10, 10, 'city', '', 0, 0),
(11, 11, 'city', '', 0, 0),
(12, 12, 'city', '', 0, 0),
(13, 13, 'city', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1538572056'),
(23, 1, 'meta-box-order_event', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:43:\"acf-group_5bb4b89b97baf,postexcerpt,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_event', '2'),
(25, 1, 'closedpostboxes_event', 'a:0:{}'),
(26, 1, 'metaboxhidden_event', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bg6RX1xBIQHaYTg.nfDelxTSiaUYB./', 'admin', 'zkha0002@student.monash.edu', '', '2018-10-02 13:39:45', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
