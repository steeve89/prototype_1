-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 08 Mai 2019 à 16:10
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-05 16:59:30', '2019-02-05 15:59:30', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter` (
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `token` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `status` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'S',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` int(11) NOT NULL DEFAULT '0',
  `last_activity` int(11) NOT NULL DEFAULT '0',
  `followup_step` tinyint(4) NOT NULL DEFAULT '0',
  `followup_time` bigint(20) NOT NULL DEFAULT '0',
  `followup` tinyint(4) NOT NULL DEFAULT '0',
  `surname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sex` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'n',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `referrer` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `http_referer` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `geo` tinyint(4) NOT NULL DEFAULT '0',
  `country` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `region` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bounce_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bounce_time` int(11) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `list_21` tinyint(4) NOT NULL DEFAULT '0',
  `list_22` tinyint(4) NOT NULL DEFAULT '0',
  `list_23` tinyint(4) NOT NULL DEFAULT '0',
  `list_24` tinyint(4) NOT NULL DEFAULT '0',
  `list_25` tinyint(4) NOT NULL DEFAULT '0',
  `list_26` tinyint(4) NOT NULL DEFAULT '0',
  `list_27` tinyint(4) NOT NULL DEFAULT '0',
  `list_28` tinyint(4) NOT NULL DEFAULT '0',
  `list_29` tinyint(4) NOT NULL DEFAULT '0',
  `list_30` tinyint(4) NOT NULL DEFAULT '0',
  `list_31` tinyint(4) NOT NULL DEFAULT '0',
  `list_32` tinyint(4) NOT NULL DEFAULT '0',
  `list_33` tinyint(4) NOT NULL DEFAULT '0',
  `list_34` tinyint(4) NOT NULL DEFAULT '0',
  `list_35` tinyint(4) NOT NULL DEFAULT '0',
  `list_36` tinyint(4) NOT NULL DEFAULT '0',
  `list_37` tinyint(4) NOT NULL DEFAULT '0',
  `list_38` tinyint(4) NOT NULL DEFAULT '0',
  `list_39` tinyint(4) NOT NULL DEFAULT '0',
  `list_40` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_6` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_7` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_8` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_9` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_10` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_11` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_12` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_13` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_14` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_15` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_16` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_17` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_18` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_19` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_20` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `wp_user_id` (`wp_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter_emails`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_unicode_520_ci,
  `subject2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message2` longtext COLLATE utf8mb4_unicode_520_ci,
  `name2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `track` int(11) NOT NULL DEFAULT '0',
  `list` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_520_ci,
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message_text` longtext COLLATE utf8mb4_unicode_520_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_520_ci,
  `send_on` int(11) NOT NULL DEFAULT '0',
  `token` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `open_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter_sent`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_sent` (
  `email_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `error` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`email_id`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter_stats`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email_id` (`email_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter_user_logs`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_user_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `source` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=512 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'SDI GREEN', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'loko.steeve@yahoo.fr', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=104&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:21:"newsletter/plugin.php";i:3;s:37:"tinymce-advanced/tinymce-advanced.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:59:"C:\\wamp\\www\\wordpress/wp-content/themes/rife-free/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'rife-free', 'yes'),
(41, 'stylesheet', 'rife-free', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:8:{i:2;a:4:{s:5:"title";s:11:"Publicités";s:4:"text";s:0:"";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"Liste des pages";s:4:"text";s:206:"<ul>\r\n 	<li><a href="#">Accueil</a></li>\r\n 	<li><a href="#">Qui sommes-nous ?</a></li>\r\n 	<li><a href="#">Services</a></li>\r\n 	<li><a href="#">Partenaires</a></li>\r\n 	<li><a href="#">Contact</a></li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:12:"Liens utiles";s:4:"text";s:249:"<ul>\r\n 	<li><a href="#">Partenariat</a></li>\r\n 	<li><a href="#">Service client</a></li>\r\n 	<li><a href="#">Service après vente</a></li>\r\n        <li><a href="#">Sitemap</a></li>\r\n        <li><a href="#">Politique de confidentialité</a></li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:20:"Rejoingnez-nous sur:";s:4:"text";s:382:"<ul class="footer-rejoingnez-nous">\r\n 	<li><a href="#"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/facebook.png" /></a></li>\r\n 	<li class="second"><a href="#"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/twitter.png" /></a></li>\r\n 	<li><a href="#"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/google+.png" /></a></li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}i:6;a:4:{s:5:"title";s:10:"PUBLICITES";s:4:"text";s:79:"<ul>\r\n<li class="red">ESPACE</li>\r\n<li class="red">PUBLICIT&Eacute;</li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}i:7;a:4:{s:5:"title";s:10:"PUBLICITES";s:4:"text";s:79:"<ul>\r\n<li class="red">ESPACE</li>\r\n<li class="red">PUBLICIT&Eacute;</li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}i:8;a:4:{s:5:"title";s:10:"PUBLICITES";s:4:"text";s:79:"<ul>\r\n<li class="red">ESPACE</li>\r\n<li class="red">PUBLICIT&Eacute;</li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '104', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '160', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:5:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:10:"RECHERCHER";}i:4;a:1:{s:5:"title";s:10:"RECHERCHER";}i:5;a:1:{s:5:"title";s:10:"RECHERCHER";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:4:{i:2;a:3:{s:5:"title";s:19:"DERNIERES NOUVELLES";s:6:"number";i:5;s:9:"show_date";b:0;}i:3;a:3:{s:5:"title";s:19:"DERNIERES NOUVELLES";s:6:"number";i:5;s:9:"show_date";b:0;}i:4;a:3:{s:5:"title";s:19:"DERNIERES NOUVELLES";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:10:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"search-2";i:1;s:7:"pages-2";i:2;s:6:"text-2";}s:16:"blog-widget-area";a:4:{i:0;s:8:"search-3";i:1;s:18:"newsletterwidget-2";i:2;s:14:"recent-posts-2";i:3;s:6:"text-6";}s:16:"post-widget-area";a:4:{i:0;s:8:"search-5";i:1;s:18:"newsletterwidget-4";i:2;s:14:"recent-posts-4";i:3;s:6:"text-8";}s:16:"page-widget-area";a:4:{i:0;s:8:"search-4";i:1;s:18:"newsletterwidget-3";i:2;s:14:"recent-posts-3";i:3;s:6:"text-7";}s:16:"shop-widget-area";a:0:{}s:16:"side-widget-area";a:0:{}s:18:"basket-widget-area";a:0:{}s:18:"header-widget-area";a:0:{}s:18:"footer-widget-area";a:3:{i:0;s:6:"text-3";i:1;s:6:"text-4";i:2;s:6:"text-5";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:2:{i:2;a:3:{s:5:"title";s:15:"Liste des pages";s:6:"sortby";s:10:"post_title";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:7:{i:1563819299;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1563821973;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1563854373;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1563887915;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1563895199;a:1:{s:29:"newsletter_extension_versions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1563897603;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549375907;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"5.0.3";s:12:"last_checked";i:1563811880;}', 'no'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1563813609;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(130, 'recently_activated', 'a:1:{s:13:"zero/zero.php";i:1553104012;}', 'yes'),
(132, 'current_theme', 'Rife Free', 'yes'),
(133, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549450910;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:7:"pages-2";i:2;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(142, 'theme_mods_rife-free', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:12:"top-bar-menu";i:0;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549450954;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"search-2";i:1;s:7:"pages-2";i:2;s:6:"text-2";}s:16:"blog-widget-area";a:0:{}s:16:"post-widget-area";a:0:{}s:16:"page-widget-area";a:0:{}s:16:"shop-widget-area";a:0:{}s:16:"side-widget-area";a:0:{}s:18:"basket-widget-area";a:0:{}s:18:"header-widget-area";a:0:{}s:18:"footer-widget-area";a:0:{}}}s:11:"custom_logo";i:149;}', 'yes'),
(143, 'a13_rife-free_rating', '1549450913', 'yes'),
(145, 'theme_mods_futurio', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549450976;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"search-2";i:1;s:7:"pages-2";i:2;s:6:"text-2";}s:15:"futurio-sidebar";a:0:{}s:23:"futurio-archive-sidebar";a:0:{}s:17:"futurio-menu-area";a:0:{}s:19:"futurio-footer-area";a:0:{}}}}', 'yes'),
(148, 'theme_mods_innofit', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549451004;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"search-2";i:1;s:7:"pages-2";i:2;s:6:"text-2";}s:15:"sidebar_primary";a:0:{}s:23:"footer_widget_area_left";a:0:{}s:25:"footer_widget_area_center";a:0:{}s:24:"footer_widget_area_right";a:0:{}s:25:"menu_social_media_sidebar";a:0:{}s:17:"subscribe-widgets";a:0:{}s:11:"woocommerce";a:0:{}}}}', 'yes'),
(149, 'widget_innofit_social_icon_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(150, 'widget_innofit_featured_latest_news', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'theme_mods_wp-bootstrap-4', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549451036;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"search-2";i:1;s:7:"pages-2";i:2;s:6:"text-2";}s:9:"sidebar-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(158, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1556898899;s:8:"response";N;}', 'no'),
(160, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1549456185;s:7:"version";s:5:"5.1.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(206, 'apollo13_option_rife', 'a:4:{s:9:"logo_type";s:5:"image";s:19:"hidden_sidebar_side";s:5:"right";s:9:"preloader";s:3:"off";s:22:"footer_widgets_columns";s:1:"3";}', 'yes'),
(209, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(257, 'category_children', 'a:0:{}', 'yes'),
(265, 'tadv_settings', 'a:10:{s:7:"options";s:44:"menubar,advlist,menubar_block,merge_toolbars";s:7:"plugins";s:104:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv";s:9:"toolbar_1";s:106:"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo";s:9:"toolbar_2";s:103:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:21:"toolbar_classic_block";s:123:"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,forecolor,backcolor,table,wp_help";s:13:"toolbar_block";s:49:"core/bold,core/italic,core/link,tadv/removeformat";s:18:"toolbar_block_side";s:37:"core/code,tadv/mark,tadv/sup,tadv/sub";s:12:"panels_block";s:44:"tadv/color-panel,tadv/background-color-panel";}', 'yes'),
(266, 'tadv_admin_settings', 'a:1:{s:7:"options";s:35:"hybrid_mode,classic_paragraph_block";}', 'yes'),
(267, 'tadv_version', '5000', 'yes'),
(268, 'newsletter_logger_secret', '0d5501ed', 'yes'),
(270, 'newsletter_main_first_install_time', '1551885564', 'no'),
(271, 'newsletter_main', 'a:30:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:20:"newsletter@localhost";s:11:"sender_name";s:9:"SDI GREEN";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:5:"debug";i:0;s:5:"track";i:1;s:3:"css";s:0:"";s:12:"css_disabled";i:0;s:2:"ip";s:0:"";s:4:"page";i:142;s:19:"disable_cron_notice";i:0;s:11:"header_logo";s:0:"";s:12:"header_title";s:9:"SDI GREEN";s:10:"header_sub";s:27:"Un site utilisant WordPress";s:12:"footer_title";s:0:"";s:14:"footer_contact";s:0:"";s:12:"footer_legal";s:0:"";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:13:"instagram_url";s:0:"";s:14:"googleplus_url";s:0:"";s:13:"pinterest_url";s:0:"";s:12:"linkedin_url";s:0:"";s:10:"tumblr_url";s:0:"";s:11:"youtube_url";s:0:"";s:9:"vimeo_url";s:0:"";s:14:"soundcloud_url";s:0:"";}', 'yes'),
(272, 'newsletter_main_info', 'a:16:{s:11:"header_logo";a:1:{s:2:"id";i:0;}s:12:"header_title";s:9:"SDI GREEN";s:10:"header_sub";s:27:"Un site utilisant WordPress";s:12:"footer_title";s:0:"";s:14:"footer_contact";s:0:"";s:12:"footer_legal";s:0:"";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:13:"instagram_url";s:0:"";s:14:"googleplus_url";s:0:"";s:13:"pinterest_url";s:0:"";s:12:"linkedin_url";s:0:"";s:10:"tumblr_url";s:0:"";s:11:"youtube_url";s:0:"";s:9:"vimeo_url";s:0:"";s:14:"soundcloud_url";s:0:"";}', 'yes'),
(273, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(274, 'newsletter_main_version', '1.5.1', 'yes'),
(275, 'newsletter_subscription_first_install_time', '1551885566', 'no'),
(276, 'newsletter', 'a:20:{s:14:"noconfirmation";i:1;s:9:"antiflood";i:10;s:12:"ip_blacklist";a:0:{}s:17:"address_blacklist";a:0:{}s:12:"domain_check";i:0;s:7:"akismet";i:0;s:7:"captcha";i:0;s:12:"notify_email";s:20:"loko.steeve@yahoo.fr";s:8:"multiple";i:1;s:6:"notify";i:0;s:10:"error_text";s:102:"<p>You cannot subscribe with the email address you entered, please contact the site administrator.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:104:"<p>A confirmation email is on the way. Follow the instructions and check the spam folder. Thank you.</p>";s:20:"confirmation_subject";s:32:"Please confirm your subscription";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:94:"<p>Please confirm your subscription <a href="{subscription_confirm_url}">clicking here</a></p>";s:14:"confirmed_text";s:43:"<p>Your subscription has been confirmed</p>";s:17:"confirmed_subject";s:7:"Welcome";s:17:"confirmed_message";s:130:"<p>This message confirms your subscription to our newsletter. Thank you!</p><hr><p><a href="{profile_url}">Change your profile</p>";s:18:"confirmed_tracking";s:0:"";}', 'yes'),
(277, 'newsletter_subscription_lists', 'a:160:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:13:"list_1_forced";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:13:"list_2_forced";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:13:"list_3_forced";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:13:"list_4_forced";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:13:"list_5_forced";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:13:"list_6_forced";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:13:"list_7_forced";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:13:"list_8_forced";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:13:"list_9_forced";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:14:"list_10_forced";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:14:"list_11_forced";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:14:"list_12_forced";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:14:"list_13_forced";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:14:"list_14_forced";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:14:"list_15_forced";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:14:"list_16_forced";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:14:"list_17_forced";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:14:"list_18_forced";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:14:"list_19_forced";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:14:"list_20_forced";i:0;s:7:"list_21";s:0:"";s:14:"list_21_status";i:0;s:15:"list_21_checked";i:0;s:14:"list_21_forced";i:0;s:7:"list_22";s:0:"";s:14:"list_22_status";i:0;s:15:"list_22_checked";i:0;s:14:"list_22_forced";i:0;s:7:"list_23";s:0:"";s:14:"list_23_status";i:0;s:15:"list_23_checked";i:0;s:14:"list_23_forced";i:0;s:7:"list_24";s:0:"";s:14:"list_24_status";i:0;s:15:"list_24_checked";i:0;s:14:"list_24_forced";i:0;s:7:"list_25";s:0:"";s:14:"list_25_status";i:0;s:15:"list_25_checked";i:0;s:14:"list_25_forced";i:0;s:7:"list_26";s:0:"";s:14:"list_26_status";i:0;s:15:"list_26_checked";i:0;s:14:"list_26_forced";i:0;s:7:"list_27";s:0:"";s:14:"list_27_status";i:0;s:15:"list_27_checked";i:0;s:14:"list_27_forced";i:0;s:7:"list_28";s:0:"";s:14:"list_28_status";i:0;s:15:"list_28_checked";i:0;s:14:"list_28_forced";i:0;s:7:"list_29";s:0:"";s:14:"list_29_status";i:0;s:15:"list_29_checked";i:0;s:14:"list_29_forced";i:0;s:7:"list_30";s:0:"";s:14:"list_30_status";i:0;s:15:"list_30_checked";i:0;s:14:"list_30_forced";i:0;s:7:"list_31";s:0:"";s:14:"list_31_status";i:0;s:15:"list_31_checked";i:0;s:14:"list_31_forced";i:0;s:7:"list_32";s:0:"";s:14:"list_32_status";i:0;s:15:"list_32_checked";i:0;s:14:"list_32_forced";i:0;s:7:"list_33";s:0:"";s:14:"list_33_status";i:0;s:15:"list_33_checked";i:0;s:14:"list_33_forced";i:0;s:7:"list_34";s:0:"";s:14:"list_34_status";i:0;s:15:"list_34_checked";i:0;s:14:"list_34_forced";i:0;s:7:"list_35";s:0:"";s:14:"list_35_status";i:0;s:15:"list_35_checked";i:0;s:14:"list_35_forced";i:0;s:7:"list_36";s:0:"";s:14:"list_36_status";i:0;s:15:"list_36_checked";i:0;s:14:"list_36_forced";i:0;s:7:"list_37";s:0:"";s:14:"list_37_status";i:0;s:15:"list_37_checked";i:0;s:14:"list_37_forced";i:0;s:7:"list_38";s:0:"";s:14:"list_38_status";i:0;s:15:"list_38_checked";i:0;s:14:"list_38_forced";i:0;s:7:"list_39";s:0:"";s:14:"list_39_status";i:0;s:15:"list_39_checked";i:0;s:14:"list_39_forced";i:0;s:7:"list_40";s:0:"";s:14:"list_40_status";i:0;s:15:"list_40_checked";i:0;s:14:"list_40_forced";i:0;}', 'yes'),
(278, 'newsletter_subscription_template', 'a:1:{s:8:"template";s:2359:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n            hr {\n                border-top: 1px solid #999;\n            }\n        </style>\n    </head>\n\n    <!-- KEEP THE LAYOUT SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0; padding: 0;">\n\n        <!-- Top title with dark background -->\n        <table style="background-color: #444; width: 100%;" cellspacing="0" cellpadding="0">\n            <tr>\n                <td style="padding: 20px; text-align: center; font-family: sans-serif; color: #fff; font-size: 28px">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center" style="padding: 15px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 15px; color: #333; font-size: 16px; font-family: sans-serif">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n\n                                <hr>\n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n                                <p>\n                                    <small>\n                                        <a href="{blog_url}">{blog_url}</a><br>\n                                        {company_name}<br>\n                                        {company_address}\n                                    </small>\n                                </p>\n                                \n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'yes'),
(279, 'newsletter_profile', 'a:183:{s:5:"email";s:5:"Email";s:11:"email_error";s:28:"Email address is not correct";s:4:"name";s:23:"First name or full name";s:10:"name_error";s:16:"Name is required";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:21:"Last name is required";s:14:"surname_status";i:0;s:10:"sex_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:44:"By continuing, you accept the privacy policy";s:13:"privacy_error";s:34:"You must accept the privacy policy";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:18:"privacy_use_wp_url";i:0;s:9:"subscribe";s:9:"Subscribe";s:12:"title_female";s:3:"Ms.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:13:"Not specified";s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";s:13:"list_1_forced";i:0;s:13:"list_2_forced";i:0;s:13:"list_3_forced";i:0;s:13:"list_4_forced";i:0;s:13:"list_5_forced";i:0;s:13:"list_6_forced";i:0;s:13:"list_7_forced";i:0;s:13:"list_8_forced";i:0;s:13:"list_9_forced";i:0;s:14:"list_10_forced";i:0;s:14:"list_11_forced";i:0;s:14:"list_12_forced";i:0;s:14:"list_13_forced";i:0;s:14:"list_14_forced";i:0;s:14:"list_15_forced";i:0;s:14:"list_16_forced";i:0;s:14:"list_17_forced";i:0;s:14:"list_18_forced";i:0;s:14:"list_19_forced";i:0;s:14:"list_20_forced";i:0;s:14:"list_21_forced";i:0;s:14:"list_22_forced";i:0;s:14:"list_23_forced";i:0;s:14:"list_24_forced";i:0;s:14:"list_25_forced";i:0;s:14:"list_26_forced";i:0;s:14:"list_27_forced";i:0;s:14:"list_28_forced";i:0;s:14:"list_29_forced";i:0;s:14:"list_30_forced";i:0;s:14:"list_31_forced";i:0;s:14:"list_32_forced";i:0;s:14:"list_33_forced";i:0;s:14:"list_34_forced";i:0;s:14:"list_35_forced";i:0;s:14:"list_36_forced";i:0;s:14:"list_37_forced";i:0;s:14:"list_38_forced";i:0;s:14:"list_39_forced";i:0;s:14:"list_40_forced";i:0;}', 'yes'),
(280, 'newsletter_subscription_version', '2.1.7', 'yes'),
(281, 'newsletter_unsubscription_first_install_time', '1551885567', 'no'),
(282, 'newsletter_unsubscription', 'a:6:{s:16:"unsubscribe_text";s:103:"<p>Please confirm you want to unsubscribe <a href="{unsubscription_confirm_url}">clicking here</a>.</p>";s:10:"error_text";s:99:"<p>Subscriber not found, it probably has already been removed. No further actions are required.</p>";s:17:"unsubscribed_text";s:124:"<p>Your subscription has been deleted. If that was an error you can <a href="{reactivate_url}">subscribe again here</a>.</p>";s:20:"unsubscribed_subject";s:7:"Goodbye";s:20:"unsubscribed_message";s:87:"<p>This message confirms that you have unsubscribed from our newsletter. Thank you.</p>";s:16:"reactivated_text";s:46:"<p>Your subscription has been reactivated.</p>";}', 'yes'),
(283, 'newsletter_unsubscription_version', '1.0.0', 'yes'),
(284, 'newsletter_profile_first_install_time', '1551885567', 'no'),
(285, 'newsletter_profile_main', 'a:8:{s:4:"text";s:188:"{profile_form}\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    <p><a href="{unsubscription_confirm_url}">Cancel your subscription</a></p>";s:13:"email_changed";s:81:"Your email has been changed, an activation email has been sent with instructions.";s:5:"error";s:42:"Your email is not valid or already in use.";s:10:"save_label";s:4:"Save";s:13:"privacy_label";s:21:"Read our privacy note";s:5:"saved";s:14:"Profile saved.";s:18:"export_newsletters";i:0;s:3:"url";s:0:"";}', 'yes'),
(286, 'newsletter_profile_version', '1.1.0', 'yes'),
(287, 'newsletter_emails_first_install_time', '1551885567', 'no'),
(288, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(289, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(290, 'newsletter_emails_version', '1.1.5', 'yes'),
(291, 'newsletter_users_first_install_time', '1551885567', 'no'),
(292, 'newsletter_users', 'a:0:{}', 'yes'),
(293, 'newsletter_users_version', '1.2.9', 'yes'),
(294, 'newsletter_statistics_first_install_time', '1551885568', 'no'),
(295, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"02bf589dde6b7c974fe5c0682970cf8e";}', 'yes'),
(296, 'newsletter_statistics_version', '1.1.8', 'yes'),
(297, 'newsletter_install_time', '1551885569', 'no'),
(298, 'widget_newsletterwidget', 'a:4:{i:2;a:5:{s:5:"title";s:10:"NEWSLETTER";s:4:"text";s:0:"";s:12:"lists_layout";s:0:"";s:17:"lists_empty_label";s:0:"";s:17:"lists_field_label";s:0:"";}i:3;a:5:{s:5:"title";s:10:"NEWSLETTER";s:4:"text";s:0:"";s:12:"lists_layout";s:0:"";s:17:"lists_empty_label";s:0:"";s:17:"lists_field_label";s:0:"";}i:4;a:5:{s:5:"title";s:10:"NEWSLETTER";s:4:"text";s:0:"";s:12:"lists_layout";s:0:"";s:17:"lists_empty_label";s:0:"";s:17:"lists_field_label";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(299, 'widget_newsletterwidgetminimal', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(300, 'newsletter_page', '142', 'no'),
(302, 'newsletter_diagnostic_cron_calls', 'a:100:{i:0;i:1551893811;i:1;i:1551894140;i:2;i:1551894582;i:3;i:1551894632;i:4;i:1551894943;i:5;i:1551895190;i:6;i:1551975243;i:7;i:1551975353;i:8;i:1551975811;i:9;i:1551976261;i:10;i:1551976531;i:11;i:1551976824;i:12;i:1551977184;i:13;i:1551977409;i:14;i:1551977844;i:15;i:1551977980;i:16;i:1551978009;i:17;i:1551978395;i:18;i:1551978647;i:19;i:1551978933;i:20;i:1551979239;i:21;i:1551979539;i:22;i:1551979819;i:23;i:1551980111;i:24;i:1551980429;i:25;i:1551981146;i:26;i:1552051109;i:27;i:1552051317;i:28;i:1552051770;i:29;i:1552051831;i:30;i:1552052354;i:31;i:1552052433;i:32;i:1552053507;i:33;i:1552053946;i:34;i:1552054669;i:35;i:1552055634;i:36;i:1552055730;i:37;i:1552056596;i:38;i:1552056608;i:39;i:1552057026;i:40;i:1552057195;i:41;i:1552057223;i:42;i:1552058061;i:43;i:1552058181;i:44;i:1552058435;i:45;i:1552058718;i:46;i:1552059035;i:47;i:1552059395;i:48;i:1552059635;i:49;i:1552059935;i:50;i:1552060296;i:51;i:1552060603;i:52;i:1552061051;i:53;i:1552061222;i:54;i:1552061732;i:55;i:1552062086;i:56;i:1552062437;i:57;i:1552062653;i:58;i:1552062950;i:59;i:1552063223;i:60;i:1552063554;i:61;i:1552063819;i:62;i:1552064416;i:63;i:1552064767;i:64;i:1552065090;i:65;i:1552067136;i:66;i:1552067424;i:67;i:1552067714;i:68;i:1552068008;i:69;i:1552068354;i:70;i:1552068602;i:71;i:1552068936;i:72;i:1552069266;i:73;i:1552069515;i:74;i:1552069806;i:75;i:1552070175;i:76;i:1552070413;i:77;i:1552070746;i:78;i:1552489493;i:79;i:1552489637;i:80;i:1552491399;i:81;i:1563811879;i:82;i:1563812123;i:83;i:1563812423;i:84;i:1563812719;i:85;i:1563813567;i:86;i:1563813607;i:87;i:1563814051;i:88;i:1563814238;i:89;i:1563814598;i:90;i:1563814838;i:91;i:1563815164;i:92;i:1563815402;i:93;i:1563815762;i:94;i:1563816935;i:95;i:1563817244;i:96;i:1563817605;i:97;i:1563818645;i:98;i:1563818981;i:99;i:1563819045;}', 'no'),
(303, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:"mean";d:119251.33999999999650754034519195556640625;s:3:"max";i:11320480;s:3:"min";i:12;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(499, 'apollo13_rife_cache', 'a:3:{s:7:"options";a:497:{s:9:"logo_type";s:5:"image";s:19:"hidden_sidebar_side";s:5:"right";s:9:"preloader";s:3:"off";s:22:"footer_widgets_columns";s:1:"3";s:15:"custom_sidebars";a:0:{}s:10:"fp_variant";s:4:"page";s:8:"fp_album";s:0:"";s:7:"fp_work";s:0:"";s:21:"appearance_body_image";s:0:"";s:25:"appearance_body_image_fit";s:5:"cover";s:24:"appearance_body_bg_color";s:7:"#e9e9e9";s:11:"layout_type";s:4:"full";s:13:"custom_cursor";s:7:"default";s:13:"cursor_select";s:21:"empty_black_white.png";s:12:"cursor_image";s:0:"";s:20:"preloader_hide_event";s:5:"ready";s:18:"preloader_bg_image";s:0:"";s:22:"preloader_bg_image_fit";s:5:"cover";s:18:"preloader_bg_color";s:0:"";s:14:"preloader_type";s:4:"arcs";s:15:"preloader_color";a:3:{s:5:"color";s:7:"#3957ff";s:5:"alpha";s:1:"1";s:4:"rgba";s:17:"rgba(57,87,255,1)";}s:13:"header_switch";s:2:"on";s:13:"footer_switch";s:2:"on";s:11:"footer_text";s:27:"Copyright © 2019 SDI GREEN";s:14:"footer_socials";s:2:"on";s:20:"footer_socials_color";s:5:"white";s:26:"footer_socials_color_hover";s:5:"color";s:20:"footer_content_width";s:6:"narrow";s:20:"footer_content_style";s:7:"classic";s:15:"footer_bg_color";s:16:"rgba(17,17,17,1)";s:21:"footer_lower_bg_color";s:16:"rgba(14,14,14,1)";s:20:"footer_widgets_color";s:12:"dark-sidebar";s:16:"footer_separator";s:3:"off";s:22:"footer_separator_color";s:22:"rgba(255,255,255,0.03)";s:16:"footer_font_size";s:2:"15";s:24:"footer_widgets_font_size";s:2:"15";s:17:"footer_font_color";s:19:"rgba(102,102,102,1)";s:17:"footer_link_color";s:19:"rgba(102,102,102,1)";s:18:"footer_hover_color";s:19:"rgba(255,255,255,1)";s:23:"hidden_sidebar_bg_color";s:19:"rgba(255,255,255,1)";s:24:"hidden_sidebar_font_size";s:2:"12";s:28:"hidden_sidebar_widgets_color";s:13:"light-sidebar";s:21:"hidden_sidebar_effect";s:1:"1";s:14:"headings_color";s:16:"rgba(50,50,50,1)";s:20:"headings_color_hover";s:19:"rgba(100,100,100,1)";s:15:"headings_weight";s:4:"bold";s:18:"headings_transform";s:9:"uppercase";s:20:"page_title_font_size";s:2:"60";s:24:"page_title_font_size_768";i:32;s:16:"content_bg_color";s:7:"#ffffff";s:13:"content_color";s:16:"rgba(85,85,85,1)";s:18:"content_link_color";s:16:"rgba(31,31,31,1)";s:24:"content_link_color_hover";s:16:"rgba(86,86,86,1)";s:17:"content_font_size";s:2:"15";s:15:"first_paragraph";s:2:"on";s:21:"first_paragraph_color";s:16:"rgba(88,88,88,1)";s:15:"socials_variant";s:10:"icons-only";s:15:"apollo_lightbox";s:12:"lightGallery";s:18:"widgets_top_margin";s:2:"on";s:22:"widget_title_font_size";s:2:"13";s:16:"widget_font_size";i:12;s:15:"to_top_bg_color";s:15:"rgba(0,0,0,0.1)";s:21:"to_top_bg_hover_color";s:17:"rgba(57,87,255,1)";s:12:"to_top_color";s:19:"rgba(255,255,255,1)";s:18:"to_top_hover_color";s:19:"rgba(255,255,255,1)";s:16:"to_top_font_size";s:2:"22";s:11:"to_top_icon";s:8:"angle-up";s:22:"button_submit_bg_color";s:16:"rgba(34,34,34,1)";s:28:"button_submit_bg_hover_color";s:17:"rgba(221,23,74,1)";s:19:"button_submit_color";s:19:"rgba(255,255,255,1)";s:25:"button_submit_hover_color";s:19:"rgba(255,255,255,1)";s:23:"button_submit_font_size";s:2:"13";s:20:"button_submit_weight";s:3:"600";s:23:"button_submit_transform";s:4:"none";s:20:"button_submit_radius";i:20;s:11:"header_type";s:10:"horizontal";s:24:"header_horizontal_sticky";s:16:"sticky-no-hiding";s:25:"header_horizontal_variant";s:8:"one_line";s:21:"header_color_variants";s:6:"sticky";s:20:"header_content_width";s:6:"narrow";s:30:"header_content_width_narrow_bg";s:3:"off";s:15:"header_bg_color";s:19:"rgba(255,255,255,1)";s:21:"header_bg_hover_color";s:19:"rgba(255,255,255,1)";s:27:"header_mobile_menu_bg_color";a:3:{s:5:"color";s:7:"#f5f5f5";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(245,245,245,1)";}s:13:"header_border";s:3:"off";s:13:"header_shadow";s:3:"off";s:23:"header_separators_color";a:3:{s:5:"color";s:7:"#3a3a3a";s:5:"alpha";s:4:"0.06";s:4:"rgba";s:19:"rgba(58,58,58,0.06)";}s:14:"header_socials";s:3:"off";s:20:"header_socials_color";s:5:"color";s:26:"header_socials_color_hover";s:5:"black";s:32:"header_socials_display_on_mobile";s:2:"on";s:18:"logo_from_variants";s:2:"on";s:10:"logo_image";s:0:"";s:19:"logo_image_high_dpi";s:0:"";s:28:"logo_image_max_desktop_width";s:3:"200";s:27:"logo_image_max_mobile_width";i:200;s:17:"logo_image_height";s:1:"0";s:18:"logo_image_opacity";s:2:"50";s:9:"logo_text";s:0:"";s:10:"logo_color";a:3:{s:5:"color";s:0:"";s:5:"alpha";s:1:"1";s:4:"rgba";s:13:"rgba(0,0,0,1)";}s:16:"logo_color_hover";a:3:{s:5:"color";s:0:"";s:5:"alpha";s:1:"1";s:4:"rgba";s:13:"rgba(0,0,0,1)";}s:14:"logo_font_size";s:2:"26";s:11:"logo_weight";s:4:"bold";s:12:"logo_padding";a:3:{s:11:"padding-top";s:4:"25px";s:14:"padding-bottom";s:4:"25px";s:5:"units";s:2:"px";}s:19:"logo_padding_mobile";a:3:{s:11:"padding-top";s:4:"15px";s:14:"padding-bottom";s:4:"15px";s:5:"units";s:2:"px";}s:16:"header_main_menu";s:2:"on";s:17:"menu_hover_effect";s:9:"ferdinand";s:31:"menu_close_mobile_menu_on_click";s:2:"on";s:22:"menu_allow_mobile_menu";s:2:"on";s:14:"menu_font_size";s:2:"15";s:10:"menu_color";a:3:{s:5:"color";s:7:"#222222";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(34,34,34,1)";}s:16:"menu_hover_color";a:3:{s:5:"color";s:7:"#3957ff";s:5:"alpha";s:1:"1";s:4:"rgba";s:17:"rgba(57,87,255,1)";}s:19:"menu_hover_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:1:"0";s:4:"rgba";s:13:"rgba(0,0,0,0)";}s:11:"menu_weight";s:3:"500";s:14:"menu_transform";s:4:"none";s:16:"submenu_bg_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:23:"submenu_separator_color";a:3:{s:5:"color";s:7:"#f0f0f0";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(240,240,240,1)";}s:18:"submenu_open_icons";s:2:"on";s:14:"submenu_opener";s:10:"angle-down";s:14:"submenu_closer";s:8:"angle-up";s:24:"submenu_third_lvl_opener";s:11:"angle-right";s:24:"submenu_third_lvl_closer";s:10:"angle-left";s:13:"submenu_color";a:3:{s:5:"color";s:7:"#999999";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(153,153,153,1)";}s:19:"submenu_color_hover";a:3:{s:5:"color";s:7:"#3957ff";s:5:"alpha";s:1:"1";s:4:"rgba";s:17:"rgba(57,87,255,1)";}s:17:"submenu_font_size";s:2:"14";s:14:"submenu_weight";s:3:"500";s:17:"submenu_transform";s:4:"none";s:24:"header_sticky_logo_image";s:0:"";s:33:"header_sticky_logo_image_high_dpi";s:0:"";s:24:"header_sticky_logo_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:30:"header_sticky_logo_color_hover";a:3:{s:5:"color";s:7:"#8aaef3";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(138,174,243,1)";}s:24:"header_sticky_menu_color";a:3:{s:5:"color";s:7:"#f0f0f0";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(240,240,240,1)";}s:30:"header_sticky_menu_hover_color";a:3:{s:5:"color";s:7:"#8aaef3";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(138,174,243,1)";}s:33:"header_sticky_menu_hover_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:1:"0";s:4:"rgba";s:13:"rgba(0,0,0,0)";}s:22:"header_sticky_bg_color";a:3:{s:5:"color";s:7:"#222222";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(34,34,34,1)";}s:34:"header_sticky_mobile_menu_bg_color";a:3:{s:5:"color";s:7:"#222222";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(34,34,34,1)";}s:20:"header_sticky_shadow";s:2:"on";s:30:"header_sticky_separators_color";a:3:{s:5:"color";s:7:"#f0f0f0";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:21:"rgba(240,240,240,0.2)";}s:26:"header_sticky_logo_padding";a:3:{s:11:"padding-top";s:4:"15px";s:14:"padding-bottom";s:4:"15px";s:5:"units";s:2:"px";}s:25:"header_sticky_tools_color";a:3:{s:5:"color";s:7:"#f0f0f0";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(240,240,240,1)";}s:31:"header_sticky_tools_color_hover";a:3:{s:5:"color";s:7:"#8aaef3";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(138,174,243,1)";}s:29:"header_sticky_button_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:1:"0";s:4:"rgba";s:13:"rgba(0,0,0,0)";}s:35:"header_sticky_button_bg_color_hover";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:1:"0";s:4:"rgba";s:13:"rgba(0,0,0,0)";}s:33:"header_sticky_button_border_color";a:3:{s:5:"color";s:7:"#f0f0f0";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(240,240,240,1)";}s:39:"header_sticky_button_border_color_hover";a:3:{s:5:"color";s:7:"#8aaef3";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(138,174,243,1)";}s:27:"header_sticky_socials_color";s:16:"semi-transparent";s:33:"header_sticky_socials_color_hover";s:5:"color";s:18:"header_tools_color";a:3:{s:5:"color";s:7:"#222222";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(34,34,34,1)";}s:24:"header_tools_color_hover";a:3:{s:5:"color";s:7:"#3957ff";s:5:"alpha";s:1:"1";s:4:"rgba";s:17:"rgba(57,87,255,1)";}s:13:"header_search";s:2:"on";s:13:"header_button";s:14:"Edit this text";s:18:"header_button_link";s:1:"#";s:25:"header_button_link_target";s:3:"off";s:23:"header_button_font_size";s:2:"12";s:20:"header_button_weight";s:4:"bold";s:22:"header_button_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:1:"0";s:4:"rgba";s:13:"rgba(0,0,0,0)";}s:28:"header_button_bg_color_hover";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:1:"0";s:4:"rgba";s:13:"rgba(0,0,0,0)";}s:26:"header_button_border_color";a:3:{s:5:"color";s:7:"#222222";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(34,34,34,1)";}s:32:"header_button_border_color_hover";a:3:{s:5:"color";s:7:"#3957ff";s:5:"alpha";s:1:"1";s:4:"rgba";s:17:"rgba(57,87,255,1)";}s:31:"header_button_display_on_mobile";s:2:"on";s:22:"blog_custom_background";s:3:"off";s:15:"blog_body_image";s:0:"";s:19:"blog_body_image_fit";s:5:"cover";s:18:"blog_body_bg_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:25:"blog_content_under_header";s:3:"off";s:19:"blog_content_layout";s:10:"full_fixed";s:20:"blog_content_padding";s:4:"both";s:12:"blog_sidebar";s:5:"right";s:14:"blog_post_look";s:17:"vertical_centered";s:16:"blog_layout_mode";s:7:"packery";s:18:"blog_brick_columns";s:1:"3";s:21:"blog_bricks_max_width";s:4:"1920";s:17:"blog_brick_margin";s:2:"20";s:14:"blog_lazy_load";s:2:"on";s:19:"blog_lazy_load_mode";s:6:"button";s:17:"blog_excerpt_type";s:4:"auto";s:19:"blog_excerpt_length";s:3:"150";s:10:"blog_media";s:2:"on";s:11:"blog_videos";s:3:"off";s:9:"blog_date";s:2:"on";s:11:"blog_author";s:2:"on";s:13:"blog_comments";s:2:"on";s:9:"blog_cats";s:2:"on";s:9:"blog_tags";s:2:"on";s:10:"blog_title";s:2:"on";s:22:"blog_title_bar_variant";s:8:"centered";s:20:"blog_title_bar_width";s:4:"full";s:20:"blog_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:24:"blog_title_bar_image_fit";s:5:"cover";s:23:"blog_title_bar_parallax";s:2:"on";s:28:"blog_title_bar_parallax_type";s:2:"bt";s:29:"blog_title_bar_parallax_speed";s:4:"1.00";s:23:"blog_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:26:"blog_title_bar_title_color";s:7:"#ffffff";s:22:"blog_title_bar_color_1";s:7:"#ffffff";s:26:"blog_title_bar_space_width";s:3:"150";s:16:"blog_breadcrumbs";s:3:"off";s:25:"post_content_under_header";s:3:"off";s:19:"post_content_layout";s:10:"full_fixed";s:12:"post_sidebar";s:13:"right-sidebar";s:10:"post_media";s:2:"on";s:16:"post_author_info";s:2:"on";s:9:"post_date";s:2:"on";s:11:"post_author";s:2:"on";s:13:"post_comments";s:3:"off";s:9:"post_cats";s:3:"off";s:9:"post_tags";s:3:"off";s:15:"post_navigation";s:2:"on";s:10:"post_title";s:2:"on";s:23:"post_title_bar_position";s:7:"outside";s:22:"post_title_bar_variant";s:8:"centered";s:20:"post_title_bar_width";s:4:"full";s:20:"post_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:24:"post_title_bar_image_fit";s:5:"cover";s:23:"post_title_bar_parallax";s:2:"on";s:28:"post_title_bar_parallax_type";s:2:"bt";s:29:"post_title_bar_parallax_speed";s:4:"1.00";s:23:"post_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:26:"post_title_bar_title_color";s:7:"#ffffff";s:22:"post_title_bar_color_1";s:7:"#ffffff";s:26:"post_title_bar_space_width";s:3:"150";s:22:"shop_custom_background";s:3:"off";s:15:"shop_body_image";s:0:"";s:19:"shop_body_image_fit";s:5:"cover";s:18:"shop_body_bg_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:11:"shop_search";s:3:"off";s:25:"shop_content_under_header";s:3:"off";s:19:"shop_content_layout";s:4:"full";s:12:"shop_sidebar";s:13:"right-sidebar";s:21:"shop_products_variant";s:5:"under";s:24:"shop_products_subvariant";s:6:"center";s:26:"shop_products_second_image";s:3:"off";s:25:"shop_products_layout_mode";s:7:"packery";s:21:"shop_products_columns";s:1:"3";s:22:"shop_products_per_page";s:2:"12";s:17:"shop_brick_margin";s:1:"0";s:14:"shop_lazy_load";s:2:"on";s:19:"shop_lazy_load_mode";s:4:"auto";s:10:"shop_title";s:2:"on";s:22:"shop_title_bar_variant";s:8:"centered";s:20:"shop_title_bar_width";s:4:"full";s:20:"shop_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:24:"shop_title_bar_image_fit";s:5:"cover";s:23:"shop_title_bar_parallax";s:2:"on";s:28:"shop_title_bar_parallax_type";s:2:"bt";s:29:"shop_title_bar_parallax_speed";s:4:"1.00";s:23:"shop_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:26:"shop_title_bar_title_color";s:7:"#ffffff";s:22:"shop_title_bar_color_1";s:7:"#ffffff";s:26:"shop_title_bar_space_width";s:3:"150";s:16:"shop_breadcrumbs";s:2:"on";s:22:"product_content_layout";s:10:"full_fixed";s:15:"product_sidebar";s:3:"off";s:21:"product_custom_thumbs";s:2:"on";s:34:"shop_no_major_pages_content_layout";s:10:"full_fixed";s:25:"shop_no_major_pages_title";s:2:"on";s:37:"shop_no_major_pages_title_bar_variant";s:8:"centered";s:35:"shop_no_major_pages_title_bar_width";s:4:"full";s:35:"shop_no_major_pages_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:39:"shop_no_major_pages_title_bar_image_fit";s:5:"cover";s:38:"shop_no_major_pages_title_bar_parallax";s:2:"on";s:43:"shop_no_major_pages_title_bar_parallax_type";s:2:"bt";s:44:"shop_no_major_pages_title_bar_parallax_speed";s:4:"1.00";s:38:"shop_no_major_pages_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:41:"shop_no_major_pages_title_bar_title_color";s:7:"#ffffff";s:37:"shop_no_major_pages_title_bar_color_1";s:7:"#ffffff";s:41:"shop_no_major_pages_title_bar_space_width";s:3:"150";s:31:"shop_no_major_pages_breadcrumbs";s:2:"on";s:23:"basket_sidebar_bg_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:24:"basket_sidebar_font_size";s:2:"13";s:28:"basket_sidebar_widgets_color";s:13:"light-sidebar";s:20:"button_shop_bg_color";a:3:{s:5:"color";s:7:"#222222";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(34,34,34,1)";}s:26:"button_shop_bg_hover_color";a:3:{s:5:"color";s:7:"#dd174a";s:5:"alpha";s:1:"1";s:4:"rgba";s:17:"rgba(221,23,74,1)";}s:17:"button_shop_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:23:"button_shop_hover_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:24:"button_shop_alt_bg_color";a:3:{s:5:"color";s:7:"#222222";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(34,34,34,1)";}s:30:"button_shop_alt_bg_hover_color";a:3:{s:5:"color";s:7:"#dd174a";s:5:"alpha";s:1:"1";s:4:"rgba";s:17:"rgba(221,23,74,1)";}s:21:"button_shop_alt_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:27:"button_shop_alt_hover_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(255,255,255,1)";}s:21:"button_shop_font_size";s:2:"13";s:18:"button_shop_weight";s:3:"600";s:21:"button_shop_transform";s:4:"none";s:19:"button_shop_padding";a:3:{s:13:"padding-right";s:4:"30px";s:12:"padding-left";s:4:"30px";s:5:"units";s:2:"px";}s:13:"page_comments";s:2:"on";s:25:"page_content_under_header";s:3:"off";s:19:"page_content_layout";s:6:"center";s:12:"page_sidebar";s:20:"left-sidebar_and_nav";s:22:"page_custom_background";s:3:"off";s:15:"page_body_image";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:19:"page_body_image_fit";s:5:"cover";s:18:"page_body_bg_color";a:3:{s:5:"color";s:0:"";s:5:"alpha";s:1:"1";s:4:"rgba";s:13:"rgba(0,0,0,1)";}s:10:"page_title";s:2:"on";s:23:"page_title_bar_position";s:7:"outside";s:22:"page_title_bar_variant";s:8:"centered";s:20:"page_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:24:"page_title_bar_image_fit";s:5:"cover";s:23:"page_title_bar_parallax";s:2:"on";s:28:"page_title_bar_parallax_type";s:2:"bt";s:29:"page_title_bar_parallax_speed";s:4:"1.00";s:23:"page_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:26:"page_title_bar_title_color";s:7:"#ffffff";s:22:"page_title_bar_color_1";s:7:"#ffffff";s:26:"page_title_bar_space_width";s:3:"150";s:16:"page_breadcrumbs";s:2:"on";s:22:"page_404_template_type";s:7:"default";s:17:"page_404_bg_image";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:27:"page_password_template_type";s:7:"default";s:22:"page_password_bg_image";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:23:"works_custom_background";s:3:"off";s:16:"works_body_image";a:5:{s:3:"url";s:0:"";s:2:"id";s:0:"";s:6:"height";s:0:"";s:5:"width";s:0:"";s:9:"thumbnail";s:0:"";}s:20:"works_body_image_fit";s:5:"cover";s:19:"works_body_bg_color";a:3:{s:5:"color";s:7:"#060606";s:5:"alpha";s:1:"1";s:4:"rgba";s:13:"rgba(6,6,6,1)";}s:15:"works_list_page";s:4:"2320";s:31:"works_list_content_under_header";s:3:"off";s:27:"works_list_work_how_to_open";s:6:"normal";s:20:"works_list_work_look";s:7:"overlay";s:38:"works_list_work_overlay_title_position";s:10:"mid_center";s:29:"works_list_work_overlay_cover";s:3:"off";s:35:"works_list_work_overlay_cover_hover";s:2:"on";s:32:"works_list_work_overlay_gradient";s:3:"off";s:38:"works_list_work_overlay_gradient_hover";s:3:"off";s:29:"works_list_work_overlay_texts";s:3:"off";s:35:"works_list_work_overlay_texts_hover";s:2:"on";s:36:"works_list_work_under_title_position";s:6:"center";s:23:"works_list_bricks_hover";s:4:"drop";s:25:"works_list_items_per_page";s:2:"12";s:22:"works_list_layout_mode";s:7:"packery";s:24:"works_list_brick_columns";s:1:"3";s:27:"works_list_bricks_max_width";s:4:"2000";s:23:"works_list_brick_margin";s:1:"0";s:34:"works_list_bricks_proportions_size";s:3:"4/3";s:20:"works_list_lazy_load";s:2:"on";s:25:"works_list_lazy_load_mode";s:6:"button";s:21:"works_list_categories";s:3:"off";s:16:"works_list_title";s:2:"on";s:28:"works_list_title_bar_variant";s:8:"centered";s:26:"works_list_title_bar_width";s:4:"full";s:26:"works_list_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:30:"works_list_title_bar_image_fit";s:5:"cover";s:29:"works_list_title_bar_parallax";s:2:"on";s:34:"works_list_title_bar_parallax_type";s:2:"bt";s:35:"works_list_title_bar_parallax_speed";s:4:"1.00";s:29:"works_list_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:32:"works_list_title_bar_title_color";s:7:"#ffffff";s:28:"works_list_title_bar_color_1";s:7:"#ffffff";s:32:"works_list_title_bar_space_width";s:3:"150";s:22:"works_list_breadcrumbs";s:2:"on";s:17:"works_list_filter";s:2:"on";s:25:"works_list_filter_padding";a:3:{s:11:"padding-top";s:4:"40px";s:14:"padding-bottom";s:4:"40px";s:5:"units";s:2:"px";}s:26:"works_list_filter_bg_color";a:3:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:1:"0";s:4:"rgba";s:19:"rgba(255,255,255,0)";}s:23:"works_list_filter_color";a:3:{s:5:"color";s:7:"#c4c4c4";s:5:"alpha";s:1:"1";s:4:"rgba";s:19:"rgba(196,196,196,1)";}s:29:"works_list_filter_hover_color";a:3:{s:5:"color";s:7:"#333333";s:5:"alpha";s:1:"1";s:4:"rgba";s:16:"rgba(51,51,51,1)";}s:24:"works_list_filter_weight";s:4:"bold";s:27:"works_list_filter_transform";s:9:"uppercase";s:28:"works_list_filter_text_align";s:6:"center";s:25:"work_content_under_header";s:3:"off";s:19:"work_content_layout";s:10:"full_fixed";s:23:"work_content_categories";s:2:"on";s:15:"work_navigation";s:2:"on";s:27:"work_navigate_by_categories";s:3:"off";s:18:"work_similar_works";s:3:"off";s:23:"work_bricks_thumb_video";s:3:"off";s:10:"work_title";s:2:"on";s:23:"work_title_bar_position";s:7:"outside";s:22:"work_title_bar_variant";s:8:"centered";s:20:"work_title_bar_width";s:4:"full";s:20:"work_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:24:"work_title_bar_image_fit";s:5:"cover";s:23:"work_title_bar_parallax";s:2:"on";s:28:"work_title_bar_parallax_type";s:2:"bt";s:29:"work_title_bar_parallax_speed";s:4:"0.80";s:23:"work_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:26:"work_title_bar_title_color";s:7:"#ffffff";s:22:"work_title_bar_color_1";s:7:"#ffffff";s:26:"work_title_bar_space_width";s:3:"150";s:16:"work_breadcrumbs";s:3:"off";s:20:"work_slider_autoplay";s:2:"on";s:26:"work_slider_slide_interval";s:4:"7000";s:27:"work_slider_transition_type";s:1:"2";s:27:"work_slider_transition_time";s:3:"600";s:18:"work_slider_thumbs";s:2:"on";s:24:"albums_custom_background";s:2:"on";s:17:"albums_body_image";s:0:"";s:21:"albums_body_image_fit";s:5:"cover";s:20:"albums_body_bg_color";s:13:"rgba(8,8,8,1)";s:16:"albums_list_page";s:4:"2453";s:32:"albums_list_content_under_header";s:3:"off";s:22:"albums_list_album_look";s:7:"overlay";s:40:"albums_list_album_overlay_title_position";s:11:"bottom_left";s:31:"albums_list_album_overlay_cover";s:3:"off";s:37:"albums_list_album_overlay_cover_hover";s:3:"off";s:34:"albums_list_album_overlay_gradient";s:3:"off";s:40:"albums_list_album_overlay_gradient_hover";s:2:"on";s:31:"albums_list_album_overlay_texts";s:3:"off";s:37:"albums_list_album_overlay_texts_hover";s:2:"on";s:38:"albums_list_album_under_title_position";s:6:"center";s:24:"albums_list_bricks_hover";s:4:"drop";s:26:"albums_list_items_per_page";s:2:"12";s:23:"albums_list_layout_mode";s:7:"packery";s:25:"albums_list_brick_columns";s:1:"3";s:28:"albums_list_bricks_max_width";s:4:"2000";s:24:"albums_list_brick_margin";s:1:"0";s:35:"albums_list_bricks_proportions_size";s:4:"16/9";s:21:"albums_list_lazy_load";s:2:"on";s:26:"albums_list_lazy_load_mode";s:4:"auto";s:22:"albums_list_categories";s:2:"on";s:17:"albums_list_title";s:2:"on";s:29:"albums_list_title_bar_variant";s:8:"centered";s:27:"albums_list_title_bar_width";s:4:"full";s:27:"albums_list_title_bar_image";s:32:"/images/holders/title_bar_bg.jpg";s:31:"albums_list_title_bar_image_fit";s:5:"cover";s:30:"albums_list_title_bar_parallax";s:2:"on";s:35:"albums_list_title_bar_parallax_type";s:2:"bt";s:36:"albums_list_title_bar_parallax_speed";s:4:"1.00";s:30:"albums_list_title_bar_bg_color";a:3:{s:5:"color";s:7:"#000000";s:5:"alpha";s:3:"0.2";s:4:"rgba";s:15:"rgba(0,0,0,0.2)";}s:33:"albums_list_title_bar_title_color";s:7:"#ffffff";s:29:"albums_list_title_bar_color_1";s:7:"#ffffff";s:33:"albums_list_title_bar_space_width";s:3:"150";s:23:"albums_list_breadcrumbs";s:2:"on";s:18:"albums_list_filter";s:3:"off";s:27:"albums_list_filter_bg_color";s:19:"rgba(255,255,255,0)";s:24:"albums_list_filter_color";s:19:"rgba(187,187,187,1)";s:30:"albums_list_filter_hover_color";s:16:"rgba(51,51,51,1)";s:25:"albums_list_filter_weight";s:4:"bold";s:28:"albums_list_filter_transform";s:9:"uppercase";s:29:"albums_list_filter_text_align";s:6:"center";s:26:"album_content_under_header";s:3:"off";s:13:"album_content";s:5:"right";s:19:"album_content_title";s:2:"on";s:24:"album_content_categories";s:2:"on";s:16:"album_navigation";s:2:"on";s:28:"album_navigate_by_categories";s:3:"off";s:24:"album_bricks_thumb_video";s:3:"off";s:28:"album_bricks_filter_bg_color";s:0:"";s:25:"album_bricks_filter_color";s:19:"rgba(207,207,207,1)";s:31:"album_bricks_filter_hover_color";s:16:"rgba(42,42,42,1)";s:26:"album_bricks_filter_weight";s:4:"bold";s:29:"album_bricks_filter_transform";s:9:"uppercase";s:30:"album_bricks_filter_text_align";s:6:"center";s:21:"album_slider_autoplay";s:2:"on";s:27:"album_slider_slide_interval";s:4:"7000";s:28:"album_slider_transition_type";s:1:"2";s:28:"album_slider_transition_time";s:3:"600";s:19:"album_slider_thumbs";s:2:"on";s:18:"album_social_icons";s:2:"on";s:16:"album_share_type";s:5:"album";s:19:"cpt_post_type_album";s:5:"album";s:10:"custom_css";s:0:"";s:20:"people_socials_color";s:5:"white";s:26:"people_socials_color_hover";s:5:"color";s:19:"a13ir_image_quality";s:2:"90";s:14:"anchors_in_bar";s:2:"on";s:11:"top_message";s:3:"off";s:25:"header_menu_part_bg_color";s:19:"rgba(255,255,255,1)";s:21:"header_custom_sidebar";s:3:"off";s:14:"header_top_bar";s:3:"off";s:19:"header_menu_overlay";s:3:"off";s:36:"blog_horizontal_header_color_variant";s:6:"normal";s:11:"blog_filter";s:3:"off";s:18:"blog_filter_weight";s:4:"bold";s:21:"blog_filter_transform";s:9:"uppercase";s:22:"blog_filter_text_align";s:6:"center";s:36:"post_horizontal_header_color_variant";s:6:"normal";s:36:"shop_horizontal_header_color_variant";s:6:"normal";s:26:"shop_header_custom_sidebar";s:3:"off";s:36:"page_horizontal_header_color_variant";s:6:"normal";s:42:"works_list_horizontal_header_color_variant";s:6:"normal";s:32:"works_list_header_custom_sidebar";s:3:"off";s:36:"work_horizontal_header_color_variant";s:6:"normal";s:43:"albums_list_horizontal_header_color_variant";s:6:"normal";s:33:"albums_list_header_custom_sidebar";s:3:"off";s:37:"album_horizontal_header_color_variant";s:6:"normal";s:32:"header_sticky_menu_part_bg_color";s:0:"";s:19:"footer_privacy_link";s:3:"off";s:14:"nav_menu_fonts";a:3:{s:11:"font-family";s:83:"-apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Helvetica, Arial, sans-serif";s:12:"word-spacing";s:6:"normal";s:14:"letter-spacing";s:6:"normal";}s:12:"titles_fonts";a:3:{s:11:"font-family";s:83:"-apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Helvetica, Arial, sans-serif";s:12:"word-spacing";s:6:"normal";s:14:"letter-spacing";s:6:"normal";}s:12:"normal_fonts";a:3:{s:11:"font-family";s:83:"-apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Helvetica, Arial, sans-serif";s:12:"word-spacing";s:6:"normal";s:14:"letter-spacing";s:6:"normal";}s:10:"logo_fonts";a:3:{s:11:"font-family";s:83:"-apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, Helvetica, Arial, sans-serif";s:12:"word-spacing";s:6:"normal";s:14:"letter-spacing";s:6:"normal";}s:15:"social_services";a:42:{s:5:"500px";s:0:"";s:7:"behance";s:0:"";s:9:"bitbucket";s:0:"";s:7:"codepen";s:0:"";s:9:"delicious";s:0:"";s:10:"deviantart";s:0:"";s:4:"digg";s:0:"";s:8:"dribbble";s:0:"";s:7:"dropbox";s:0:"";s:6:"mailto";s:0:"";s:8:"facebook";s:0:"";s:6:"flickr";s:0:"";s:10:"foursquare";s:0:"";s:6:"github";s:0:"";s:10:"googleplus";s:0:"";s:9:"instagram";s:0:"";s:6:"lastfm";s:0:"";s:8:"linkedin";s:0:"";s:6:"paypal";s:0:"";s:9:"pinterest";s:0:"";s:6:"reddit";s:0:"";s:3:"rss";s:0:"";s:9:"sharethis";s:0:"";s:5:"skype";s:0:"";s:5:"slack";s:0:"";s:8:"snapchat";s:0:"";s:7:"spotify";s:0:"";s:5:"steam";s:0:"";s:11:"stumbleupon";s:0:"";s:11:"tripadvisor";s:0:"";s:6:"tumblr";s:0:"";s:7:"twitter";s:0:"";s:6:"viadeo";s:0:"";s:5:"vimeo";s:0:"";s:4:"vine";s:0:"";s:9:"vkontakte";s:0:"";s:8:"whatsapp";s:0:"";s:9:"wordpress";s:0:"";s:4:"xing";s:0:"";s:5:"yahoo";s:0:"";s:4:"yelp";s:0:"";s:7:"youtube";s:0:"";}s:20:"lightbox_single_post";s:3:"off";s:21:"button_submit_padding";a:3:{s:12:"padding-left";s:4:"30px";s:13:"padding-right";s:4:"30px";s:5:"units";s:2:"px";}s:25:"logo_image_normal_opacity";s:4:"1.00";s:24:"logo_image_hover_opacity";d:0.5;s:42:"header_sticky_logo_image_max_desktop_width";i:200;s:41:"header_sticky_logo_image_max_mobile_width";i:200;s:33:"header_sticky_logo_padding_mobile";a:3:{s:11:"padding-top";s:4:"10px";s:14:"padding-bottom";s:4:"10px";s:5:"units";s:2:"px";}s:14:"blog_read_more";s:2:"on";s:24:"product_related_products";s:2:"on";s:27:"works_list_filter_font_size";s:0:"";s:26:"albums_list_filter_padding";a:3:{s:11:"padding-top";s:4:"40px";s:14:"padding-bottom";s:4:"40px";s:5:"units";s:2:"px";}s:28:"albums_list_filter_font_size";s:0:"";s:19:"album_bricks_filter";s:2:"on";s:27:"album_bricks_filter_padding";a:3:{s:11:"padding-top";s:4:"40px";s:14:"padding-bottom";s:4:"40px";s:5:"units";s:2:"px";}s:29:"album_bricks_filter_font_size";s:0:"";s:16:"scroll_to_anchor";s:2:"on";s:21:"writing_effect_mobile";s:3:"off";s:20:"writing_effect_speed";i:10;}s:4:"meta";a:4:{s:4:"post";a:1:{s:20:"content_under_header";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:25:"post_content_under_header";}}s:4:"page";a:3:{s:14:"content_layout";a:2:{s:12:"global_value";s:6:"global";s:13:"parent_option";s:19:"page_content_layout";}s:11:"widget_area";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:12:"page_sidebar";}s:20:"content_under_header";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:25:"page_content_under_header";}}s:5:"album";a:5:{s:13:"album_content";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:13:"album_content";}s:8:"autoplay";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:21:"album_slider_autoplay";}s:10:"transition";a:2:{s:12:"global_value";s:2:"-1";s:13:"parent_option";s:28:"album_slider_transition_type";}s:6:"thumbs";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:19:"album_slider_thumbs";}s:20:"content_under_header";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:26:"album_content_under_header";}}s:4:"work";a:6:{s:8:"autoplay";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:20:"work_slider_autoplay";}s:10:"transition";a:2:{s:12:"global_value";s:2:"-1";s:13:"parent_option";s:27:"work_slider_transition_type";}s:6:"thumbs";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:18:"work_slider_thumbs";}s:14:"content_layout";a:2:{s:12:"global_value";s:6:"global";s:13:"parent_option";s:19:"work_content_layout";}s:20:"content_under_header";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:25:"work_content_under_header";}s:18:"content_categories";a:2:{s:12:"global_value";s:1:"G";s:13:"parent_option";s:23:"work_content_categories";}}}s:7:"version";s:5:"2.3.4";}', 'yes'),
(503, '_site_transient_timeout_theme_roots', '1563813681', 'no'),
(504, '_site_transient_theme_roots', 'a:7:{s:7:"futurio";s:7:"/themes";s:7:"innofit";s:7:"/themes";s:9:"rife-free";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:14:"wp-bootstrap-4";s:7:"/themes";}', 'no'),
(508, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1563855453', 'no'),
(509, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 6: Could not resolve host: feeds.feedburner.com</p></div><div class="rss-widget"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 6: Could not resolve host: feeds.feedburner.com</p></div>', 'no'),
(510, '_transient_timeout_plugin_slugs', '1553190414', 'no'),
(511, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";i:3;s:21:"newsletter/plugin.php";i:4;s:37:"tinymce-advanced/tinymce-advanced.php";i:5;s:13:"zero/zero.php";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=409 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(10, 8, '_edit_lock', '1556903331:1'),
(11, 10, '_edit_lock', '1556809435:1'),
(12, 12, '_edit_lock', '1556903511:1'),
(14, 16, '_form', '<label> Nom (*)\n    [text* your-lastname] </label>\n\n<label> Prénoms (*)\n    [text* your-firsname] </label>\n\n<label> E-mail (*)\n    [email* your-email] </label>\n\n<label> Téléphone (*)\n    [tel* your-phone] </label>\n\n<label> Objet (*)\n    [text your-subject] </label>\n\n<label> Message (*)\n    [textarea your-message] </label>\n\n[submit "Send"]\n\n(*): Obligatoire'),
(15, 16, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:26:"SDI GREEN "[your-subject]"";s:6:"sender";s:32:"SDI GREEN <loko.steeve@yahoo.fr>";s:9:"recipient";s:20:"loko.steeve@yahoo.fr";s:4:"body";s:193:"From: [your-lastname][your-firsname] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SDI GREEN (http://localhost/wordpress)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(16, 16, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:26:"SDI GREEN "[your-subject]"";s:6:"sender";s:32:"SDI GREEN <loko.steeve@yahoo.fr>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:116:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SDI GREEN (http://localhost/wordpress)";s:18:"additional_headers";s:30:"Reply-To: loko.steeve@yahoo.fr";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(17, 16, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(18, 16, '_additional_settings', ''),
(19, 16, '_locale', 'fr_FR'),
(20, 17, '_edit_lock', '1556809203:1'),
(21, 17, '_edit_last', '1'),
(22, 17, '_content_layout', 'global'),
(23, 17, '_content_padding', 'both'),
(24, 17, '_content_side_padding', 'both'),
(25, 17, '_widget_area', 'right-sidebar'),
(26, 17, '_sidebar_to_show', 'default'),
(27, 17, '_content_under_header', 'G'),
(28, 17, '_horizontal_header_show_header_at', '0'),
(29, 17, '_title_bar_settings', 'global'),
(30, 17, '_title_bar_position', 'outside'),
(31, 17, '_title_bar_variant', 'classic'),
(32, 17, '_title_bar_width', 'full'),
(33, 17, '_title_bar_image_fit', 'repeat'),
(34, 17, '_title_bar_parallax', 'off'),
(35, 17, '_title_bar_parallax_type', 'tb'),
(36, 17, '_title_bar_parallax_speed', '1.00'),
(37, 17, '_title_bar_bg_color', ''),
(38, 17, '_title_bar_title_color', ''),
(39, 17, '_title_bar_color_1', ''),
(40, 17, '_title_bar_space_width', '40px'),
(41, 17, '_breadcrumbs', 'on'),
(42, 17, '_image_or_video', 'post_image'),
(43, 17, '_image_parallax', 'off'),
(44, 17, '_image_parallax_height', '260px'),
(45, 17, '_content_sticky_one_page', 'off'),
(46, 17, '_content_sticky_one_page_bullet_color', 'rgba(0,0,0,1)'),
(47, 17, '_content_sticky_one_page_bullet_icon', ''),
(50, 21, '_wp_attached_file', '2019/02/images01.png'),
(51, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images01.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(52, 22, '_wp_attached_file', '2019/02/images02.png'),
(53, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images02.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(54, 23, '_wp_attached_file', '2019/02/images03.png'),
(55, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images03.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images03-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(56, 24, '_wp_attached_file', '2019/02/images04.png'),
(57, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:151;s:4:"file";s:20:"2019/02/images04.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images04-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 25, '_wp_attached_file', '2019/02/images05.png'),
(59, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images05.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images05-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(60, 26, '_wp_attached_file', '2019/02/images06.png'),
(61, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images06.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images06-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(62, 27, '_wp_attached_file', '2019/02/images07.png'),
(63, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images07.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images07-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 28, '_wp_attached_file', '2019/02/images08.png'),
(65, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images08.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images08-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 29, '_wp_attached_file', '2019/02/images09.png'),
(67, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:150;s:4:"file";s:20:"2019/02/images09.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images09-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 30, '_wp_attached_file', '2019/02/images10.png'),
(69, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:680;s:6:"height";i:197;s:4:"file";s:20:"2019/02/images10.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"images10-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"images10-300x87.png";s:5:"width";i:300;s:6:"height";i:87;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 30, '_edit_lock', '1549465839:1'),
(130, 8, '_edit_last', '1'),
(131, 8, '_content_layout', 'global'),
(132, 8, '_content_padding', 'both'),
(133, 8, '_content_side_padding', 'both'),
(134, 8, '_widget_area', 'right-sidebar_and_nav'),
(135, 8, '_sidebar_to_show', 'default'),
(136, 8, '_content_under_header', 'G'),
(137, 8, '_horizontal_header_show_header_at', '0'),
(138, 8, '_title_bar_settings', 'global'),
(139, 8, '_title_bar_position', 'outside'),
(140, 8, '_title_bar_variant', 'classic'),
(141, 8, '_title_bar_width', 'full'),
(142, 8, '_title_bar_image_fit', 'repeat'),
(143, 8, '_title_bar_parallax', 'off'),
(144, 8, '_title_bar_parallax_type', 'tb'),
(145, 8, '_title_bar_parallax_speed', '1.00'),
(146, 8, '_title_bar_bg_color', ''),
(147, 8, '_title_bar_title_color', ''),
(148, 8, '_title_bar_color_1', ''),
(149, 8, '_title_bar_space_width', '40px'),
(150, 8, '_breadcrumbs', 'on'),
(151, 8, '_image_or_video', 'post_image'),
(152, 8, '_image_parallax', 'off'),
(153, 8, '_image_parallax_height', '260px'),
(154, 8, '_content_sticky_one_page', 'off'),
(155, 8, '_content_sticky_one_page_bullet_color', 'rgba(0,0,0,1)'),
(156, 8, '_content_sticky_one_page_bullet_icon', ''),
(157, 10, '_edit_last', '1'),
(158, 10, '_content_layout', 'global'),
(159, 10, '_content_padding', 'both'),
(160, 10, '_content_side_padding', 'both'),
(161, 10, '_widget_area', 'right-sidebar'),
(162, 10, '_sidebar_to_show', 'default'),
(163, 10, '_content_under_header', 'G'),
(164, 10, '_horizontal_header_show_header_at', '0'),
(165, 10, '_title_bar_settings', 'global'),
(166, 10, '_title_bar_position', 'outside'),
(167, 10, '_title_bar_variant', 'classic'),
(168, 10, '_title_bar_width', 'full'),
(169, 10, '_title_bar_image_fit', 'repeat'),
(170, 10, '_title_bar_parallax', 'off'),
(171, 10, '_title_bar_parallax_type', 'tb'),
(172, 10, '_title_bar_parallax_speed', '1.00'),
(173, 10, '_title_bar_bg_color', ''),
(174, 10, '_title_bar_title_color', ''),
(175, 10, '_title_bar_color_1', ''),
(176, 10, '_title_bar_space_width', '40px'),
(177, 10, '_breadcrumbs', 'on'),
(178, 10, '_image_or_video', 'post_image'),
(179, 10, '_image_parallax', 'off'),
(180, 10, '_image_parallax_height', '260px'),
(181, 10, '_content_sticky_one_page', 'off'),
(182, 10, '_content_sticky_one_page_bullet_color', 'rgba(0,0,0,1)'),
(183, 10, '_content_sticky_one_page_bullet_icon', ''),
(184, 12, '_edit_last', '1'),
(185, 12, '_content_layout', 'global'),
(186, 12, '_content_padding', 'both'),
(187, 12, '_content_side_padding', 'both'),
(188, 12, '_widget_area', 'right-sidebar'),
(189, 12, '_sidebar_to_show', 'default'),
(190, 12, '_content_under_header', 'G'),
(191, 12, '_horizontal_header_show_header_at', '0'),
(192, 12, '_title_bar_settings', 'global'),
(193, 12, '_title_bar_position', 'outside'),
(194, 12, '_title_bar_variant', 'classic'),
(195, 12, '_title_bar_width', 'full'),
(196, 12, '_title_bar_image_fit', 'repeat'),
(197, 12, '_title_bar_parallax', 'off'),
(198, 12, '_title_bar_parallax_type', 'tb'),
(199, 12, '_title_bar_parallax_speed', '1.00'),
(200, 12, '_title_bar_bg_color', ''),
(201, 12, '_title_bar_title_color', ''),
(202, 12, '_title_bar_color_1', ''),
(203, 12, '_title_bar_space_width', '40px'),
(204, 12, '_breadcrumbs', 'on'),
(205, 12, '_image_or_video', 'post_image'),
(206, 12, '_image_parallax', 'off'),
(207, 12, '_image_parallax_height', '260px'),
(208, 12, '_content_sticky_one_page', 'off'),
(209, 12, '_content_sticky_one_page_bullet_color', 'rgba(0,0,0,1)'),
(210, 12, '_content_sticky_one_page_bullet_icon', ''),
(214, 104, '_edit_lock', '1556816159:1'),
(215, 104, '_edit_last', '1'),
(216, 104, '_content_layout', 'global'),
(217, 104, '_content_padding', 'both'),
(218, 104, '_content_side_padding', 'both'),
(219, 104, '_widget_area', 'off'),
(220, 104, '_sidebar_to_show', 'default'),
(221, 104, '_content_under_header', 'G'),
(222, 104, '_horizontal_header_show_header_at', '0'),
(223, 104, '_title_bar_settings', 'global'),
(224, 104, '_title_bar_position', 'outside'),
(225, 104, '_title_bar_variant', 'classic'),
(226, 104, '_title_bar_width', 'full'),
(227, 104, '_title_bar_image_fit', 'repeat'),
(228, 104, '_title_bar_parallax', 'off'),
(229, 104, '_title_bar_parallax_type', 'tb'),
(230, 104, '_title_bar_parallax_speed', '1.00'),
(231, 104, '_title_bar_bg_color', ''),
(232, 104, '_title_bar_title_color', ''),
(233, 104, '_title_bar_color_1', ''),
(234, 104, '_title_bar_space_width', '40px'),
(235, 104, '_breadcrumbs', 'on'),
(236, 104, '_image_or_video', 'post_image'),
(237, 104, '_image_parallax', 'off'),
(238, 104, '_image_parallax_height', '260px'),
(239, 104, '_content_sticky_one_page', 'off'),
(240, 104, '_content_sticky_one_page_bullet_color', 'rgba(0,0,0,1)'),
(241, 104, '_content_sticky_one_page_bullet_icon', ''),
(242, 1, '_edit_lock', '1179702376:1'),
(254, 118, '_menu_item_type', 'post_type'),
(255, 118, '_menu_item_menu_item_parent', '0'),
(256, 118, '_menu_item_object_id', '104'),
(257, 118, '_menu_item_object', 'page'),
(258, 118, '_menu_item_target', ''),
(259, 118, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 118, '_menu_item_xfn', ''),
(261, 118, '_menu_item_url', ''),
(263, 119, '_menu_item_type', 'post_type'),
(264, 119, '_menu_item_menu_item_parent', '0'),
(265, 119, '_menu_item_object_id', '8'),
(266, 119, '_menu_item_object', 'page'),
(267, 119, '_menu_item_target', ''),
(268, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 119, '_menu_item_xfn', ''),
(270, 119, '_menu_item_url', ''),
(272, 120, '_menu_item_type', 'post_type'),
(273, 120, '_menu_item_menu_item_parent', '0'),
(274, 120, '_menu_item_object_id', '12'),
(275, 120, '_menu_item_object', 'page'),
(276, 120, '_menu_item_target', ''),
(277, 120, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 120, '_menu_item_xfn', ''),
(279, 120, '_menu_item_url', ''),
(281, 121, '_menu_item_type', 'post_type'),
(282, 121, '_menu_item_menu_item_parent', '0'),
(283, 121, '_menu_item_object_id', '10'),
(284, 121, '_menu_item_object', 'page'),
(285, 121, '_menu_item_target', ''),
(286, 121, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(287, 121, '_menu_item_xfn', ''),
(288, 121, '_menu_item_url', ''),
(290, 122, '_menu_item_type', 'post_type'),
(291, 122, '_menu_item_menu_item_parent', '0'),
(292, 122, '_menu_item_object_id', '17'),
(293, 122, '_menu_item_object', 'page'),
(294, 122, '_menu_item_target', ''),
(295, 122, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(296, 122, '_menu_item_xfn', ''),
(297, 122, '_menu_item_url', ''),
(314, 132, '_wp_attached_file', '2017/02/slider04.png'),
(315, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:950;s:6:"height";i:268;s:4:"file";s:20:"2017/02/slider04.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider04-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slider04-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider04-768x217.png";s:5:"width";i:768;s:6:"height";i:217;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(316, 133, '_wp_attached_file', '2017/02/slider01.png'),
(317, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:950;s:6:"height";i:268;s:4:"file";s:20:"2017/02/slider01.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slider01-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider01-768x217.png";s:5:"width";i:768;s:6:"height";i:217;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(318, 134, '_wp_attached_file', '2017/02/slider02.png'),
(319, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:950;s:6:"height";i:268;s:4:"file";s:20:"2017/02/slider02.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slider02-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider02-768x217.png";s:5:"width";i:768;s:6:"height";i:217;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(320, 135, '_wp_attached_file', '2017/02/slider03.png'),
(321, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:950;s:6:"height";i:268;s:4:"file";s:20:"2017/02/slider03.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider03-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slider03-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider03-768x217.png";s:5:"width";i:768;s:6:"height";i:217;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(322, 8, '_thumbnail_id', '133'),
(323, 12, '_thumbnail_id', '135'),
(325, 10, '_thumbnail_id', '134'),
(326, 104, '_wp_page_template', ''),
(348, 148, '_wp_attached_file', '2019/03/logo.png'),
(349, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:92;s:6:"height";i:93;s:4:"file";s:16:"2019/03/logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(350, 149, '_wp_attached_file', '2019/03/cropped-logo.png'),
(351, 149, '_wp_attachment_context', 'custom-logo'),
(352, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:92;s:6:"height";i:93;s:4:"file";s:24:"2019/03/cropped-logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(353, 159, '_edit_lock', '1553186355:1'),
(354, 160, '_edit_lock', '1555514636:1'),
(355, 160, '_edit_last', '1'),
(356, 160, '_content_layout', 'global'),
(357, 160, '_content_padding', 'both'),
(358, 160, '_content_side_padding', 'both'),
(359, 160, '_widget_area', 'right-sidebar'),
(360, 160, '_sidebar_to_show', 'default'),
(361, 160, '_content_under_header', 'G'),
(362, 160, '_horizontal_header_show_header_at', '0'),
(363, 160, '_title_bar_settings', 'global'),
(364, 160, '_title_bar_position', 'outside'),
(365, 160, '_title_bar_variant', 'classic'),
(366, 160, '_title_bar_width', 'full'),
(367, 160, '_title_bar_image_fit', 'repeat'),
(368, 160, '_title_bar_parallax', 'off'),
(369, 160, '_title_bar_parallax_type', 'tb'),
(370, 160, '_title_bar_parallax_speed', '1.00'),
(371, 160, '_title_bar_bg_color', ''),
(372, 160, '_title_bar_title_color', ''),
(373, 160, '_title_bar_color_1', ''),
(374, 160, '_title_bar_space_width', '40px'),
(375, 160, '_breadcrumbs', 'on'),
(376, 160, '_image_or_video', 'post_image'),
(377, 160, '_image_parallax', 'off'),
(378, 160, '_image_parallax_height', '260px'),
(379, 160, '_content_sticky_one_page', 'off'),
(380, 160, '_content_sticky_one_page_bullet_color', 'rgba(0,0,0,1)'),
(381, 160, '_content_sticky_one_page_bullet_icon', ''),
(400, 164, '_menu_item_type', 'post_type'),
(401, 164, '_menu_item_menu_item_parent', '0'),
(402, 164, '_menu_item_object_id', '142'),
(403, 164, '_menu_item_object', 'page'),
(404, 164, '_menu_item_target', ''),
(405, 164, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(406, 164, '_menu_item_xfn', ''),
(407, 164, '_menu_item_url', ''),
(408, 164, '_menu_item_orphaned', '1555604982');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=205 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-05 16:59:30', '2019-02-05 15:59:30', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-02-05 16:59:30', '2019-02-05 15:59:30', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(8, 1, '2019-02-26 15:11:09', '2019-02-26 14:11:09', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare  arcu quis urna dictum, nec egestas dolor bibendum. Praesent mattis odio  sit amet lacus congue pellentesque. Vestibulum molestie ex vitae ex  maximus, eu tincidunt nunc lobortis. Nulla a commodo nulla. Donec id  erat mollis justo finibus faucibus. Morbi tristique nisi ac odio  pulvinar, ut lacinia neque dignissim. Integer pharetra aliquet ornare.  Morbi quam eros, posuere at fermentum vitae, aliquet id nisl. In hac  habitasse platea dictumst. Proin ut ex ante. Cras sodales nisl vitae  bibendum venenatis. Mauris eget viverra est. Duis pretium arcu at mi  lacinia, in viverra est iaculis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph -->\n<p>Nunc dictum urna quis nibh iaculis, suscipit molestie ante fringilla. Mauris iaculis molestie ante, vitae tempus mi mattis non. Integer molestie, lectus nec bibendum vulputate, sem metus placerat sapien, eget sollicitudin diam ligula in purus. Sed iaculis enim sit amet ullamcorper fermentum. Duis commodo leo sit amet libero imperdiet, sit amet efficitur massa gravida. Sed blandit felis hendrerit congue sodales. Integer eget ante sed lacus malesuada rutrum vel eget lacus. Duis non sollicitudin mauris. Vestibulum eu bibendum tortor. Suspendisse a hendrerit nulla, a accumsan arcu. Ut sollicitudin lacinia erat nec placerat. Aenean at posuere risus. Nam nec arcu in urna vulputate vehicula. Phasellus hendrerit, lorem a gravida dapibus, arcu ex faucibus nisi, non aliquet nulla est a felis. Nunc sit amet fringilla mauris, a sagittis purus. Praesent nec magna consectetur, imperdiet metus vel, semper elit.</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Qui sommes-nous ?', '', 'publish', 'closed', 'closed', '', 'qui-sommes-nous', '', '', '2019-05-03 19:08:47', '2019-05-03 17:08:47', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-02-05 15:11:09', '2019-02-05 14:11:09', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-05 15:11:09', '2019-02-05 14:11:09', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-02-05 15:52:33', '2019-02-05 14:52:33', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare  arcu quis urna dictum, nec egestas dolor bibendum. Praesent mattis odio  sit amet lacus congue pellentesque. Vestibulum molestie ex vitae ex  maximus, eu tincidunt nunc lobortis. Nulla a commodo nulla. Donec id  erat mollis justo finibus faucibus. Morbi tristique nisi ac odio  pulvinar, ut lacinia neque dignissim. Integer pharetra aliquet ornare.  Morbi quam eros, posuere at fermentum vitae, aliquet id nisl. In hac  habitasse platea dictumst. Proin ut ex ante. Cras sodales nisl vitae  bibendum venenatis. Mauris eget viverra est. Duis pretium arcu at mi  lacinia, in viverra est iaculis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph -->\n<p>Nunc dictum urna quis nibh iaculis, suscipit molestie ante fringilla. Mauris iaculis molestie ante, vitae tempus mi mattis non. Integer molestie, lectus nec bibendum vulputate, sem metus placerat sapien, eget sollicitudin diam ligula in purus. Sed iaculis enim sit amet ullamcorper fermentum. Duis commodo leo sit amet libero imperdiet, sit amet efficitur massa gravida. Sed blandit felis hendrerit congue sodales. Integer eget ante sed lacus malesuada rutrum vel eget lacus. Duis non sollicitudin mauris. Vestibulum eu bibendum tortor. Suspendisse a hendrerit nulla, a accumsan arcu. Ut sollicitudin lacinia erat nec placerat. Aenean at posuere risus. Nam nec arcu in urna vulputate vehicula. Phasellus hendrerit, lorem a gravida dapibus, arcu ex faucibus nisi, non aliquet nulla est a felis. Nunc sit amet fringilla mauris, a sagittis purus. Praesent nec magna consectetur, imperdiet metus vel, semper elit.</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Partenaires', '', 'publish', 'closed', 'closed', '', 'partenaires', '', '', '2019-05-02 17:06:00', '2019-05-02 15:06:00', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-02-05 15:52:33', '2019-02-05 14:52:33', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom   lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-05 15:52:33', '2019-02-05 14:52:33', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-02-05 16:01:14', '2019-02-05 15:01:14', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare  arcu quis urna dictum, nec egestas dolor bibendum. Praesent mattis odio  sit amet lacus congue pellentesque. Vestibulum molestie ex vitae ex  maximus, eu tincidunt nunc lobortis. Nulla a commodo nulla. Donec id  erat mollis justo finibus faucibus. Morbi tristique nisi ac odio  pulvinar, ut lacinia neque dignissim. Integer pharetra aliquet ornare.  Morbi quam eros, posuere at fermentum vitae, aliquet id nisl. In hac  habitasse platea dictumst. Proin ut ex ante. Cras sodales nisl vitae  bibendum venenatis. Mauris eget viverra est. Duis pretium arcu at mi  lacinia, in viverra est iaculis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph -->\n<p>Nunc dictum urna quis nibh iaculis, suscipit molestie ante fringilla. Mauris iaculis molestie ante, vitae tempus mi mattis non. Integer molestie, lectus nec bibendum vulputate, sem metus placerat sapien, eget sollicitudin diam ligula in purus. Sed iaculis enim sit amet ullamcorper fermentum. Duis commodo leo sit amet libero imperdiet, sit amet efficitur massa gravida. Sed blandit felis hendrerit congue sodales. Integer eget ante sed lacus malesuada rutrum vel eget lacus. Duis non sollicitudin mauris. Vestibulum eu bibendum tortor. Suspendisse a hendrerit nulla, a accumsan arcu. Ut sollicitudin lacinia erat nec placerat. Aenean at posuere risus. Nam nec arcu in urna vulputate vehicula. Phasellus hendrerit, lorem a gravida dapibus, arcu ex faucibus nisi, non aliquet nulla est a felis. Nunc sit amet fringilla mauris, a sagittis purus. Praesent nec magna consectetur, imperdiet metus vel, semper elit.</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-05-03 19:38:22', '2019-05-03 17:38:22', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-02-05 16:01:14', '2019-02-05 15:01:14', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom orum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom  lorum ipsom lorum ipsom  lorum ipsom lorum ipsom  lorum ipsom lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-02-05 16:01:14', '2019-02-05 15:01:14', '', 12, 'http://localhost/wordpress/12-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-02-06 12:29:44', '2019-02-06 11:29:44', '<label> Nom (*)\r\n    [text* your-lastname] </label>\r\n\r\n<label> Prénoms (*)\r\n    [text* your-firsname] </label>\r\n\r\n<label> E-mail (*)\r\n    [email* your-email] </label>\r\n\r\n<label> Téléphone (*)\r\n    [tel* your-phone] </label>\r\n\r\n<label> Objet (*)\r\n    [text your-subject] </label>\r\n\r\n<label> Message (*)\r\n    [textarea your-message] </label>\r\n\r\n[submit "Send"]\r\n\r\n(*): Obligatoire\n1\nSDI GREEN "[your-subject]"\nSDI GREEN <loko.steeve@yahoo.fr>\nloko.steeve@yahoo.fr\nFrom: [your-lastname][your-firsname] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SDI GREEN (http://localhost/wordpress)\nReply-To: [your-email]\n\n\n\n\nSDI GREEN "[your-subject]"\nSDI GREEN <loko.steeve@yahoo.fr>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SDI GREEN (http://localhost/wordpress)\nReply-To: loko.steeve@yahoo.fr\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-05-03 19:39:36', '2019-05-03 17:39:36', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=16', 0, 'wpcf7_contact_form', '', 0),
(17, 1, '2019-02-06 12:35:36', '2019-02-06 11:35:36', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pulvinar  elit dictum arcu dictum maximus et sed dolor. Maecenas mi enim, accumsan  vel ultricies at, sollicitudin a neque. Proin lorem lorem, iaculis sit  amet dictum eu, aliquet commodo risus. Etiam porttitor sem ut mattis  dignissim. Morbi elit lacus, tincidunt id purus eu, volutpat lacinia  justo. Integer ut ultricies ipsum. Nulla id lectus et massa condimentum  tristique. Duis id nisl purus. Fusce scelerisque nulla nisi, vel sodales  libero tincidunt placerat. Nulla a malesuada magna. In tincidunt  ultricies est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Nos coordonnées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<ul>\n<li>Adresse: XXX</li>\n<li>E-mail: XXX</li>\n<li>Téléphone: XXX</li>\n<li>Fax: XXX</li>\n</ul>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2>Notre situation géographique</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Notre formulaire de contact<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n[contact-form-7 id="16" title="Contact form 1"]\n<!-- /wp:html -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-05-02 16:59:59', '2019-05-02 14:59:59', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-02-06 12:35:36', '2019-02-06 11:35:36', '<!-- wp:shortcode -->\n[contact-form-7 id="16" title="Contact form 1"]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-06 12:35:36', '2019-02-06 11:35:36', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-02-06 15:57:11', '2019-02-06 14:57:11', '', 'images01', '', 'inherit', 'open', 'closed', '', 'images01', '', '', '2019-02-06 15:57:11', '2019-02-06 14:57:11', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images01.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2019-02-06 15:57:14', '2019-02-06 14:57:14', '', 'images02', '', 'inherit', 'open', 'closed', '', 'images02', '', '', '2019-02-06 15:57:14', '2019-02-06 14:57:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images02.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-02-06 15:57:17', '2019-02-06 14:57:17', '', 'images03', '', 'inherit', 'open', 'closed', '', 'images03', '', '', '2019-02-06 15:57:17', '2019-02-06 14:57:17', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images03.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2019-02-06 15:57:21', '2019-02-06 14:57:21', '', 'images04', '', 'inherit', 'open', 'closed', '', 'images04', '', '', '2019-02-06 15:57:21', '2019-02-06 14:57:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images04.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2019-02-06 15:57:24', '2019-02-06 14:57:24', '', 'images05', '', 'inherit', 'open', 'closed', '', 'images05', '', '', '2019-02-06 15:57:24', '2019-02-06 14:57:24', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images05.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-02-06 15:57:28', '2019-02-06 14:57:28', '', 'images06', '', 'inherit', 'open', 'closed', '', 'images06', '', '', '2019-02-06 15:57:28', '2019-02-06 14:57:28', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images06.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-02-06 15:57:32', '2019-02-06 14:57:32', '', 'images07', '', 'inherit', 'open', 'closed', '', 'images07', '', '', '2019-02-06 15:57:32', '2019-02-06 14:57:32', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images07.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-02-06 15:57:35', '2019-02-06 14:57:35', '', 'images08', '', 'inherit', 'open', 'closed', '', 'images08', '', '', '2019-02-06 15:57:35', '2019-02-06 14:57:35', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images08.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-02-06 15:57:38', '2019-02-06 14:57:38', '', 'images09', '', 'inherit', 'open', 'closed', '', 'images09', '', '', '2019-02-06 15:57:38', '2019-02-06 14:57:38', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images09.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-02-06 15:57:42', '2019-02-06 14:57:42', '', 'images10', '', 'inherit', 'open', 'closed', '', 'images10', '', '', '2019-02-06 15:57:42', '2019-02-06 14:57:42', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/02/images10.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2019-02-07 13:13:58', '2019-02-07 12:13:58', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-07 13:13:58', '2019-02-07 12:13:58', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-02-07 13:15:00', '2019-02-07 12:15:00', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-07 13:15:00', '2019-02-07 12:15:00', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-02-07 13:16:03', '2019-02-07 12:16:03', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-07 13:16:03', '2019-02-07 12:16:03', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-02-07 13:18:06', '2019-02-07 12:18:06', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom   lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-07 13:18:06', '2019-02-07 12:18:06', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-02-07 13:18:54', '2019-02-07 12:18:54', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-07 13:18:54', '2019-02-07 12:18:54', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-02-07 13:23:02', '2019-02-07 12:23:02', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-07 13:23:02', '2019-02-07 12:23:02', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-02-07 16:19:24', '2019-02-07 15:19:24', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-07 16:19:24', '2019-02-07 15:19:24', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-02-07 16:21:57', '2019-02-07 15:21:57', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-07 16:21:57', '2019-02-07 15:21:57', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-02-07 16:23:12', '2019-02-07 15:23:12', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  </p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-07 16:23:12', '2019-02-07 15:23:12', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2019-02-07 16:23:33', '2019-02-07 15:23:33', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-07 16:23:33', '2019-02-07 15:23:33', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-02-07 16:23:51', '2019-02-07 15:23:51', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-07 16:23:51', '2019-02-07 15:23:51', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-02-07 16:24:27', '2019-02-07 15:24:27', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-07 16:24:27', '2019-02-07 15:24:27', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-02-07 16:26:12', '2019-02-07 15:26:12', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum  ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum  ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom  lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-07 16:26:12', '2019-02-07 15:26:12', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-02-07 16:28:14', '2019-02-07 15:28:14', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom ipsom lorum ipsom lorum  ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum  ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom  lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-02-07 16:28:14', '2019-02-07 15:28:14', '', 12, 'http://localhost/wordpress/12-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-02-07 16:29:37', '2019-02-07 15:29:37', '<!-- wp:paragraph -->\n<p> Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom lorum ipsom lorum ipsom lorum ipsom</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-07 16:29:37', '2019-02-07 15:29:37', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-02-07 16:30:14', '2019-02-07 15:30:14', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom  lorum ipsom </p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-07 16:30:14', '2019-02-07 15:30:14', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-02-07 16:37:11', '2019-02-07 15:37:11', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Nos coordonnées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<ul>\n<li>Adresse: XXX</li>\n<li>E-mail: XXX</li>\n<li>Téléphone: XXX</li>\n<li>Fax: XXX</li>\n</ul>\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-07 16:37:11', '2019-02-07 15:37:11', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-02-07 16:38:39', '2019-02-07 15:38:39', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Nos coordonnées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<ul>\n<li>Adresse: XXX</li>\n<li>E-mail: XXX</li>\n<li>Téléphone: XXX</li>\n<li>Fax: XXX</li>\n</ul>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2>Notre situation géographique</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Notre formulaire de contact<br></h2>\n<!-- /wp:heading -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-07 16:38:39', '2019-02-07 15:38:39', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-02-07 16:39:33', '2019-02-07 15:39:33', '<!-- wp:paragraph -->\n<p>Lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum ipsom lorum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Nos coordonnées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<ul>\n<li>Adresse: XXX</li>\n<li>E-mail: XXX</li>\n<li>Téléphone: XXX</li>\n<li>Fax: XXX</li>\n</ul>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2>Notre situation géographique</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Notre formulaire de contact<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n[contact-form-7 id="16" title="Contact form 1"]\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-07 16:39:33', '2019-02-07 15:39:33', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-02-07 17:19:27', '2019-02-07 16:19:27', '<!-- wp:tadv/classic-paragraph -->\n<div id="accueil">\n<div class="accueil-1">\n<h2>Qui sommes-nous ?</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare arcu quis urna dictum, nec egestas dolor bibendum.</p>\n<div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n<div class="accueil-2">\n<h2>Nos services</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare arcu quis urna dictum, nec egestas dolor bibendum.</p>\n<div>\n<div>\n<h3>Vitrerie</h3>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p><a>Lire la suite</a></p>\n</div>\n<div class="second">\n<h3>Nettoyage tertiaire</h3>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p><a>Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage industriel</h3>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p><a>Lire la suite</a></p>\n</div>\n</div>\n</div>\n<div class="accueil-3">\n<h2>Nos clients</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare arcu quis urna dictum, nec egestas dolor bibendum.</p>\n<div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n</div>\n<p> </p>\n<!-- /wp:tadv/classic-paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-05-02 17:09:15', '2019-05-02 15:09:15', '', 0, 'http://localhost/wordpress/?page_id=104', 0, 'page', '', 0),
(105, 1, '2019-02-07 17:19:27', '2019-02-07 16:19:27', '<!-- wp:html -->\n<div class="accueil">\n<div class="accueil-1">\n<h2>QUI SOMMES-NOUS ?</h2>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-02-07 17:19:27', '2019-02-07 16:19:27', '', 104, 'http://localhost/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-02-07 17:24:36', '2019-02-07 16:24:36', '<!-- wp:html -->\n<div class="accueil">\n<div class="accueil-1">\n<h2>Qui sommes-nous ?</h2>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n<div class="accueil-2">\n<h2>Nos services</h2>\n<div>\n<h3>Vitrerie</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage tertiaire</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage industriel</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n</div>\n<div class="accueil-3">\n<h2>Nos clients</h2>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-02-07 17:24:36', '2019-02-07 16:24:36', '', 104, 'http://localhost/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-02-07 17:25:33', '2019-02-07 16:25:33', '<!-- wp:html -->\n<div id="accueil">\n<div class="accueil-1">\n<h2>Qui sommes-nous ?</h2>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n<div class="accueil-2">\n<h2>Nos services</h2>\n<div>\n<h3>Vitrerie</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage tertiaire</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage industriel</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n</div>\n<div class="accueil-3">\n<h2>Nos clients</h2>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-02-07 17:25:33', '2019-02-07 16:25:33', '', 104, 'http://localhost/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-02-07 17:28:38', '2019-02-07 16:28:38', '<!-- wp:html -->\n<div id="accueil">\n<div class="accueil-1">\n<h2>Qui sommes-nous ?</h2>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n<div class="accueil-2">\n<h2>Nos services</h2>\n<div>\n<h3>Vitrerie</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div class="second">\n<h3>Nettoyage tertiaire</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage industriel</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n</div>\n<div class="accueil-3">\n<h2>Nos clients</h2>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-02-07 17:28:38', '2019-02-07 16:28:38', '', 104, 'http://localhost/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-02-07 17:33:56', '2019-02-07 16:33:56', '<!-- wp:html -->\n<div id="accueil">\n<div class="accueil-1">\n<h2>Qui sommes-nous ?</h2>\n<div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n<div class="accueil-2">\n<h2>Nos services</h2>\n<div>\n<div>\n<h3>Vitrerie</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div class="second">\n<h3>Nettoyage tertiaire</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage industriel</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n</div>\n</div>\n<div class="accueil-3">\n<h2>Nos clients</h2>\n<div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" />\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-02-07 17:33:56', '2019-02-07 16:33:56', '', 104, 'http://localhost/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-02-12 13:04:53', '2019-02-12 12:04:53', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2019-04-19 16:00:39', '2019-04-19 14:00:39', '', 0, 'http://localhost/wordpress/?p=118', 1, 'nav_menu_item', '', 0),
(119, 1, '2019-02-12 13:04:53', '2019-02-12 12:04:53', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-04-19 16:00:39', '2019-04-19 14:00:39', '', 0, 'http://localhost/wordpress/?p=119', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(120, 1, '2019-02-12 13:04:54', '2019-02-12 12:04:54', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2019-04-19 16:00:39', '2019-04-19 14:00:39', '', 0, 'http://localhost/wordpress/?p=120', 3, 'nav_menu_item', '', 0),
(121, 1, '2019-02-12 13:04:54', '2019-02-12 12:04:54', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2019-04-19 16:00:39', '2019-04-19 14:00:39', '', 0, 'http://localhost/wordpress/?p=121', 4, 'nav_menu_item', '', 0),
(122, 1, '2019-02-12 13:04:54', '2019-02-12 12:04:54', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2019-04-19 16:00:39', '2019-04-19 14:00:39', '', 0, 'http://localhost/wordpress/?p=122', 5, 'nav_menu_item', '', 0),
(132, 1, '2017-02-27 18:47:13', '2017-02-27 17:47:13', '', 'slider04', '', 'inherit', 'open', 'closed', '', 'slider04', '', '', '2017-02-27 18:47:13', '2017-02-27 17:47:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/02/slider04.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2017-02-27 18:47:16', '2017-02-27 17:47:16', '', 'slider01', '', 'inherit', 'open', 'closed', '', 'slider01', '', '', '2017-02-27 18:47:16', '2017-02-27 17:47:16', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/02/slider01.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2017-02-27 18:47:19', '2017-02-27 17:47:19', '', 'slider02', '', 'inherit', 'open', 'closed', '', 'slider02', '', '', '2017-02-27 18:47:19', '2017-02-27 17:47:19', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/02/slider02.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2017-02-27 18:47:22', '2017-02-27 17:47:22', '', 'slider03', '', 'inherit', 'open', 'closed', '', 'slider03', '', '', '2017-02-27 18:47:22', '2017-02-27 17:47:22', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/02/slider03.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2019-02-27 16:30:23', '2019-02-27 15:30:23', '<!-- wp:html -->\n<div id="accueil">\n<div class="accueil-1">\n<h2>Qui sommes-nous ?</h2>\n<div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="">\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="">\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="">\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n<div class="accueil-2">\n<h2>Nos services</h2>\n<div>\n<div>\n<h3>Vitrerie</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="">\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div class="second">\n<h3>Nettoyage tertiaire</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="">\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage industriel</h3>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="">\n</figure>\n<p><a href="">Lire la suite</a></p>\n</div>\n</div>\n</div>\n<div class="accueil-3">\n<h2>Nos clients</h2>\n<div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="">\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="">\n</figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure>\n<img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="">\n</figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-02-27 16:30:23', '2019-02-27 15:30:23', '', 104, 'http://localhost/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-03-06 16:19:17', '2019-03-06 15:19:17', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire&nbsp;!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph /-->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2019-03-06 16:19:17', '2019-03-06 15:19:17', '', 1, 'http://localhost/wordpress/1-autosave-v1/', 0, 'revision', '', 0),
(142, 1, '2019-03-06 16:19:34', '2019-03-06 15:19:34', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2019-03-06 16:19:34', '2019-03-06 15:19:34', '', 0, 'http://localhost/wordpress/newsletter/', 0, 'page', '', 0),
(148, 1, '2019-03-06 17:14:09', '2019-03-06 16:14:09', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-03-06 17:14:09', '2019-03-06 16:14:09', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/03/logo.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2019-03-06 17:16:12', '2019-03-06 16:16:12', 'http://localhost/wordpress/wp-content/uploads/2019/03/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2019-03-06 17:16:12', '2019-03-06 16:16:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/03/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2019-07-22 18:17:25', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-22 18:17:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=158', 0, 'post', '', 0),
(159, 1, '2019-03-21 17:34:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-21 17:34:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=159', 0, 'post', '', 0),
(160, 1, '2019-04-17 17:23:44', '2019-04-17 15:23:44', '<!-- wp:heading -->\n<h2>Qui sommes-nous&nbsp;?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adresse de notre site Web est&nbsp;: http://localhost/wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Utilisation des données personnelles collectées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Commentaires</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici&nbsp;: https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Médias</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Formulaires de contact</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez «&nbsp;Se souvenir de moi&nbsp;», votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Contenu embarqué depuis d’autres sites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Statistiques et mesures d’audience</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Informations de contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Informations supplémentaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Comment nous protégeons vos données</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Procédures mises en œuvre en cas de fuite de données</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Les services tiers qui nous transmettent des données</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>\n<!-- /wp:heading -->', 'Politique de confidentialité', '', 'publish', 'closed', 'closed', '', 'politique-de-confidentialite', '', '', '2019-04-17 17:23:46', '2019-04-17 15:23:46', '', 0, 'http://localhost/wordpress/?page_id=160', 0, 'page', '', 0),
(161, 1, '2019-04-17 17:23:44', '2019-04-17 15:23:44', '<!-- wp:heading -->\n<h2>Qui sommes-nous&nbsp;?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adresse de notre site Web est&nbsp;: http://localhost/wordpress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Utilisation des données personnelles collectées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Commentaires</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici&nbsp;: https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Médias</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Formulaires de contact</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez «&nbsp;Se souvenir de moi&nbsp;», votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Contenu embarqué depuis d’autres sites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Statistiques et mesures d’audience</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Informations de contact</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Informations supplémentaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Comment nous protégeons vos données</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Procédures mises en œuvre en cas de fuite de données</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Les services tiers qui nous transmettent des données</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>\n<!-- /wp:heading -->', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2019-04-17 17:23:44', '2019-04-17 15:23:44', '', 160, 'http://localhost/wordpress/160-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2019-04-18 18:29:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-04-18 18:29:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=164', 1, 'nav_menu_item', '', 0),
(165, 1, '2019-05-02 16:59:56', '2019-05-02 14:59:56', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pulvinar  elit dictum arcu dictum maximus et sed dolor. Maecenas mi enim, accumsan  vel ultricies at, sollicitudin a neque. Proin lorem lorem, iaculis sit  amet dictum eu, aliquet commodo risus. Etiam porttitor sem ut mattis  dignissim. Morbi elit lacus, tincidunt id purus eu, volutpat lacinia  justo. Integer ut ultricies ipsum. Nulla id lectus et massa condimentum  tristique. Duis id nisl purus. Fusce scelerisque nulla nisi, vel sodales  libero tincidunt placerat. Nulla a malesuada magna. In tincidunt  ultricies est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Nos coordonnées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<ul>\n<li>Adresse: XXX</li>\n<li>E-mail: XXX</li>\n<li>Téléphone: XXX</li>\n<li>Fax: XXX</li>\n</ul>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2>Notre situation géographique</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Notre formulaire de contact<br></h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n[contact-form-7 id="16" title="Contact form 1"]\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-05-02 16:59:56', '2019-05-02 14:59:56', '', 17, 'http://localhost/wordpress/17-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-05-02 17:01:49', '2019-05-02 15:01:49', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare  arcu quis urna dictum, nec egestas dolor bibendum. Praesent mattis odio  sit amet lacus congue pellentesque. Vestibulum molestie ex vitae ex  maximus, eu tincidunt nunc lobortis. Nulla a commodo nulla. Donec id  erat mollis justo finibus faucibus. Morbi tristique nisi ac odio  pulvinar, ut lacinia neque dignissim. Integer pharetra aliquet ornare.  Morbi quam eros, posuere at fermentum vitae, aliquet id nisl. In hac  habitasse platea dictumst. Proin ut ex ante. Cras sodales nisl vitae  bibendum venenatis. Mauris eget viverra est. Duis pretium arcu at mi  lacinia, in viverra est iaculis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph -->\n<p>Nunc dictum urna quis nibh iaculis, suscipit molestie ante fringilla. Mauris iaculis molestie ante, vitae tempus mi mattis non. Integer molestie, lectus nec bibendum vulputate, sem metus placerat sapien, eget sollicitudin diam ligula in purus. Sed iaculis enim sit amet ullamcorper fermentum. Duis commodo leo sit amet libero imperdiet, sit amet efficitur massa gravida. Sed blandit felis hendrerit congue sodales. Integer eget ante sed lacus malesuada rutrum vel eget lacus. Duis non sollicitudin mauris. Vestibulum eu bibendum tortor. Suspendisse a hendrerit nulla, a accumsan arcu. Ut sollicitudin lacinia erat nec placerat. Aenean at posuere risus. Nam nec arcu in urna vulputate vehicula. Phasellus hendrerit, lorem a gravida dapibus, arcu ex faucibus nisi, non aliquet nulla est a felis. Nunc sit amet fringilla mauris, a sagittis purus. Praesent nec magna consectetur, imperdiet metus vel, semper elit.</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-02 17:01:49', '2019-05-02 15:01:49', '', 12, 'http://localhost/wordpress/12-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2019-05-02 17:04:30', '2019-05-02 15:04:30', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare  arcu quis urna dictum, nec egestas dolor bibendum. Praesent mattis odio  sit amet lacus congue pellentesque. Vestibulum molestie ex vitae ex  maximus, eu tincidunt nunc lobortis. Nulla a commodo nulla. Donec id  erat mollis justo finibus faucibus. Morbi tristique nisi ac odio  pulvinar, ut lacinia neque dignissim. Integer pharetra aliquet ornare.  Morbi quam eros, posuere at fermentum vitae, aliquet id nisl. In hac  habitasse platea dictumst. Proin ut ex ante. Cras sodales nisl vitae  bibendum venenatis. Mauris eget viverra est. Duis pretium arcu at mi  lacinia, in viverra est iaculis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph -->\n<p>Nunc dictum urna quis nibh iaculis, suscipit molestie ante fringilla. Mauris iaculis molestie ante, vitae tempus mi mattis non. Integer molestie, lectus nec bibendum vulputate, sem metus placerat sapien, eget sollicitudin diam ligula in purus. Sed iaculis enim sit amet ullamcorper fermentum. Duis commodo leo sit amet libero imperdiet, sit amet efficitur massa gravida. Sed blandit felis hendrerit congue sodales. Integer eget ante sed lacus malesuada rutrum vel eget lacus. Duis non sollicitudin mauris. Vestibulum eu bibendum tortor. Suspendisse a hendrerit nulla, a accumsan arcu. Ut sollicitudin lacinia erat nec placerat. Aenean at posuere risus. Nam nec arcu in urna vulputate vehicula. Phasellus hendrerit, lorem a gravida dapibus, arcu ex faucibus nisi, non aliquet nulla est a felis. Nunc sit amet fringilla mauris, a sagittis purus. Praesent nec magna consectetur, imperdiet metus vel, semper elit.</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Qui sommes-nous ?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-05-02 17:04:30', '2019-05-02 15:04:30', '', 8, 'http://localhost/wordpress/8-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-05-02 17:05:57', '2019-05-02 15:05:57', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare  arcu quis urna dictum, nec egestas dolor bibendum. Praesent mattis odio  sit amet lacus congue pellentesque. Vestibulum molestie ex vitae ex  maximus, eu tincidunt nunc lobortis. Nulla a commodo nulla. Donec id  erat mollis justo finibus faucibus. Morbi tristique nisi ac odio  pulvinar, ut lacinia neque dignissim. Integer pharetra aliquet ornare.  Morbi quam eros, posuere at fermentum vitae, aliquet id nisl. In hac  habitasse platea dictumst. Proin ut ex ante. Cras sodales nisl vitae  bibendum venenatis. Mauris eget viverra est. Duis pretium arcu at mi  lacinia, in viverra est iaculis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph -->\n<p>Nunc dictum urna quis nibh iaculis, suscipit molestie ante fringilla. Mauris iaculis molestie ante, vitae tempus mi mattis non. Integer molestie, lectus nec bibendum vulputate, sem metus placerat sapien, eget sollicitudin diam ligula in purus. Sed iaculis enim sit amet ullamcorper fermentum. Duis commodo leo sit amet libero imperdiet, sit amet efficitur massa gravida. Sed blandit felis hendrerit congue sodales. Integer eget ante sed lacus malesuada rutrum vel eget lacus. Duis non sollicitudin mauris. Vestibulum eu bibendum tortor. Suspendisse a hendrerit nulla, a accumsan arcu. Ut sollicitudin lacinia erat nec placerat. Aenean at posuere risus. Nam nec arcu in urna vulputate vehicula. Phasellus hendrerit, lorem a gravida dapibus, arcu ex faucibus nisi, non aliquet nulla est a felis. Nunc sit amet fringilla mauris, a sagittis purus. Praesent nec magna consectetur, imperdiet metus vel, semper elit.</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-02 17:05:57', '2019-05-02 15:05:57', '', 10, 'http://localhost/wordpress/10-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-05-02 17:09:13', '2019-05-02 15:09:13', '<!-- wp:tadv/classic-paragraph -->\n<div id="accueil">\n<div class="accueil-1">\n<h2>Qui sommes-nous ?</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare arcu quis urna dictum, nec egestas dolor bibendum.</p>\n<div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n<div class="accueil-2">\n<h2>Nos services</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare arcu quis urna dictum, nec egestas dolor bibendum.</p>\n<div>\n<div>\n<h3>Vitrerie</h3>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p><a>Lire la suite</a></p>\n</div>\n<div class="second">\n<h3>Nettoyage tertiaire</h3>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p><a>Lire la suite</a></p>\n</div>\n<div>\n<h3>Nettoyage industriel</h3>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p><a>Lire la suite</a></p>\n</div>\n</div>\n</div>\n<div class="accueil-3">\n<h2>Nos clients</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare arcu quis urna dictum, nec egestas dolor bibendum.</p>\n<div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images01.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div class="second">\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images02.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n<div>\n<figure><img src="http://localhost\\wordpress\\wp-content\\uploads\\2019\\02\\images03.png" alt="" /></figure>\n<p>Nom et prénoms</p>\n</div>\n</div>\n</div>\n</div>\n<p> </p>\n<!-- /wp:tadv/classic-paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-05-02 17:09:13', '2019-05-02 15:09:13', '', 104, 'http://localhost/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2019-05-03 19:38:16', '2019-05-03 17:38:16', '<!-- wp:image {"id":30} -->\n<figure class="wp-block-image"><img src="http://localhost/wordpress/wp-content/uploads/2019/02/images10.png" alt="" class="wp-image-30"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare  arcu quis urna dictum, nec egestas dolor bibendum. Praesent mattis odio  sit amet lacus congue pellentesque. Vestibulum molestie ex vitae ex  maximus, eu tincidunt nunc lobortis. Nulla a commodo nulla. Donec id  erat mollis justo finibus faucibus. Morbi tristique nisi ac odio  pulvinar, ut lacinia neque dignissim. Integer pharetra aliquet ornare.  Morbi quam eros, posuere at fermentum vitae, aliquet id nisl. In hac  habitasse platea dictumst. Proin ut ex ante. Cras sodales nisl vitae  bibendum venenatis. Mauris eget viverra est. Duis pretium arcu at mi  lacinia, in viverra est iaculis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:tadv/classic-paragraph -->\n<p>Nunc dictum urna quis nibh iaculis, suscipit molestie ante fringilla. Mauris iaculis molestie ante, vitae tempus mi mattis non. Integer molestie, lectus nec bibendum vulputate, sem metus placerat sapien, eget sollicitudin diam ligula in purus. Sed iaculis enim sit amet ullamcorper fermentum. Duis commodo leo sit amet libero imperdiet, sit amet efficitur massa gravida. Sed blandit felis hendrerit congue sodales. Integer eget ante sed lacus malesuada rutrum vel eget lacus. Duis non sollicitudin mauris. Vestibulum eu bibendum tortor. Suspendisse a hendrerit nulla, a accumsan arcu. Ut sollicitudin lacinia erat nec placerat. Aenean at posuere risus. Nam nec arcu in urna vulputate vehicula. Phasellus hendrerit, lorem a gravida dapibus, arcu ex faucibus nisi, non aliquet nulla est a felis. Nunc sit amet fringilla mauris, a sagittis purus. Praesent nec magna consectetur, imperdiet metus vel, semper elit.</p>\n<!-- /wp:tadv/classic-paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2019-05-03 19:38:16', '2019-05-03 17:38:16', '', 12, 'http://localhost/wordpress/12-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(118, 2, 0),
(119, 2, 0),
(120, 2, 0),
(121, 2, 0),
(122, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=26 ;

--
-- Contenu de la table `wp_usermeta`
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html,text_widget_paste_html,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:12:{s:64:"aab30f80ba578c5847e1035d0df58f1308a4007635c8d7ac04c62bb5038ffb1d";a:4:{s:10:"expiration";i:1563984685;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1563811885;}s:64:"ee01a21e8f09501b66dddc1dc4630d42e1437ce597fa3153248b4271e78fbc36";a:4:{s:10:"expiration";i:1563984693;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1563811893;}s:64:"444570db9821ce3159200d046c506a3a19bdc0494cbb36e9ed358e61ac0b0e2d";a:4:{s:10:"expiration";i:1563984959;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:75:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.3)";s:5:"login";i:1563812159;}s:64:"ae14b55cb2824406e399da892cdc49c5fc66a61a3a5dd240541bba3bc1d705c6";a:4:{s:10:"expiration";i:1563991851;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1563819051;}s:64:"9e7121d14ebe4d37f0156223e3ba65a9e881e49fa0610509d748f26ea0bdc27b";a:4:{s:10:"expiration";i:1563991861;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1563819061;}s:64:"9e450e0e17b0ff7b5f506f0684d6d4bb4b5264ca18273697a58289fbbb1a9935";a:4:{s:10:"expiration";i:1556981900;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1556809100;}s:64:"791b0588b42a38e12c564f701d8cda52f742ff503ca4bf312e8b7975baadab09";a:4:{s:10:"expiration";i:1557071695;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1556898895;}s:64:"fd8ae0fb0a647dfd09400cb1fc4287bbce5b6a1780a96636f8e8083dfefa9e3a";a:4:{s:10:"expiration";i:1557071936;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1556899136;}s:64:"cb5fbb22ba293720f7a65c651e5281df0600a8ac90d697765e800e696d216d54";a:4:{s:10:"expiration";i:1557075726;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1556902926;}s:64:"4211c09f93bbc7f9c199fcb7ed39b22a04082466d02f3ba7627200c880a0ff40";a:4:{s:10:"expiration";i:1557075734;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1556902934;}s:64:"acb22c6fd23b501a761e8c762a9b2ad3ccaa071c09691d715a7090b74c93466f";a:4:{s:10:"expiration";i:1557077845;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1556905045;}s:64:"1c7801976dd51e32ceb47d6000e7ac40837bba4712be4f2bd565a013b394bb92";a:4:{s:10:"expiration";i:1557077857;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0";s:5:"login";i:1556905057;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '158'),
(18, 1, 'wp_media_library_mode', 'list'),
(19, 1, 'wp_user-settings', 'editor=html'),
(20, 1, 'wp_user-settings-time', '1551891273'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:0:{}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(25, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BTWnsLH/fw7cedrfGi.CSzo5M4CQhI0', 'admin', 'loko.steeve@yahoo.fr', '', '2019-02-05 15:59:29', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
