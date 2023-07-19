-- Voxel RocketLauncher Package

-- May 2012 Joomla template release

-- http://www.rockettheme.com

--

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

DROP TABLE IF EXISTS `#__assets`;
CREATE TABLE IF NOT EXISTS `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
);

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 167, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 104, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 105, 106, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 107, 108, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 109, 110, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 111, 112, 1, 'com_login', 'com_login', '{}'),
(13, 1, 113, 114, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 115, 116, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 117, 118, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 119, 120, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 121, 122, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 123, 124, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 125, 128, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 129, 130, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 131, 132, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 133, 134, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 135, 136, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 137, 140, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 141, 146, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 147, 148, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 126, 127, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 142, 143, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 138, 139, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 149, 150, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 151, 152, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 153, 154, 1, 'com_gantry', 'gantry', '{}'),
(36, 1, 155, 156, 1, 'com_rokcandy.category.8', 'Basic', ''),
(37, 1, 157, 158, 1, 'com_rokcandy.category.9', 'Typography', ''),
(38, 1, 159, 160, 1, 'com_rokcandy.category.10', 'Uncategorised', ''),
(39, 1, 161, 162, 1, 'com_rokcandy', 'rokcandy', '{}'),
(40, 1, 163, 164, 1, 'com_rokgallery', 'rokgallery', '{}'),
(41, 1, 165, 166, 1, 'com_roksprocket', 'roksprocket', '{}'),
(42, 8, 22, 47, 2, 'com_content.category.11', 'Demo Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(43, 42, 23, 24, 3, 'com_content.article.1', 'Template Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 42, 25, 26, 3, 'com_content.article.2', 'Module Positions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 42, 27, 28, 3, 'com_content.article.3', 'Module Variations', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 42, 29, 30, 3, 'com_content.article.4', 'Template Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 42, 31, 32, 3, 'com_content.article.5', 'Menu Options', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 42, 33, 34, 3, 'com_content.article.6', 'Integrated Extensions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 42, 35, 36, 3, 'com_content.article.7', 'Tutorials and Guides', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 42, 37, 38, 3, 'com_content.article.8', 'Installation Instructions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 42, 39, 40, 3, 'com_content.article.9', 'Logo Editing', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 42, 41, 42, 3, 'com_content.article.10', 'Preset Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 42, 43, 44, 3, 'com_content.article.11', 'About Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 8, 48, 65, 2, 'com_content.category.12', 'Sample Content', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(55, 54, 49, 50, 3, 'com_content.article.12', 'Sample Content 1', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 54, 51, 52, 3, 'com_content.article.13', 'Sample Content 2', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 54, 53, 54, 3, 'com_content.article.14', 'Sample Content 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 54, 55, 56, 3, 'com_content.article.15', 'Sample Content 4', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 54, 57, 58, 3, 'com_content.article.16', 'Sample Content 5', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 54, 59, 60, 3, 'com_content.article.17', 'Sample Content 6', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 54, 61, 62, 3, 'com_content.article.18', 'Sample Content 7', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 54, 63, 64, 3, 'com_content.article.19', 'Sample Content 8', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 25, 144, 145, 2, 'com_weblinks.category.13', 'RocketTheme', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(64, 7, 16, 17, 2, 'com_contact.category.14', 'Contact ', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(65, 42, 45, 46, 3, 'com_content.article.20', 'Top News of the Week', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 8, 66, 75, 2, 'com_content.category.15', 'RokSprocket Tabs', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(67, 66, 67, 68, 3, 'com_content.article.21', 'RokSprocket Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 66, 69, 70, 3, 'com_content.article.22', 'Menu Systems', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 66, 71, 72, 3, 'com_content.article.23', 'Tabs Content 3', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 66, 73, 74, 3, 'com_content.article.24', 'Integrated Extensions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 8, 76, 89, 2, 'com_content.category.16', 'RokSprocket Headlines', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(72, 71, 77, 78, 3, 'com_content.article.25', 'RokSprocket Extension', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 71, 79, 80, 3, 'com_content.article.26', 'Fusion and Split Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 71, 81, 82, 3, 'com_content.article.27', 'Customize the Logo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 71, 83, 84, 3, 'com_content.article.28', 'Content Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 71, 85, 86, 3, 'com_content.article.29', 'K2 Styling', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 71, 87, 88, 3, 'com_content.article.30', 'RokGallery', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 8, 90, 103, 2, 'com_content.category.17', 'RokSprocket Lists', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(80, 79, 91, 92, 3, 'com_content.article.31', 'Content Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 79, 93, 94, 3, 'com_content.article.32', 'Changing the Logo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 79, 95, 96, 3, 'com_content.article.33', 'RokBooster', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 79, 97, 98, 3, 'com_content.article.34', 'K2 Styling', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 79, 99, 100, 3, 'com_content.article.35', 'RokGallery', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 79, 101, 102, 3, 'com_content.article.36', 'RokSprocket Extension', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__associations`
--

DROP TABLE IF EXISTS `#__associations`;
CREATE TABLE IF NOT EXISTS `#__associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
);

--
-- Dumping data for table `#__associations`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

DROP TABLE IF EXISTS `#__banners`;
CREATE TABLE IF NOT EXISTS `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
);

--
-- Dumping data for table `#__banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

DROP TABLE IF EXISTS `#__banner_clients`;
CREATE TABLE IF NOT EXISTS `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
);

--
-- Dumping data for table `#__banner_clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

DROP TABLE IF EXISTS `#__banner_tracks`;
CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
);

--
-- Dumping data for table `#__banner_tracks`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

DROP TABLE IF EXISTS `#__categories`;
CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
);

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 33, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 36, 1, 13, 14, 1, 'basic', 'com_rokcandy', 'Basic', 'basic', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2012-04-11 16:00:03', 0, '0000-00-00 00:00:00', 0, ''),
(9, 37, 1, 15, 16, 1, 'typography', 'com_rokcandy', 'Typography', 'typography', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2012-04-11 16:00:03', 0, '0000-00-00 00:00:00', 0, ''),
(10, 38, 1, 17, 18, 1, 'uncategorised', 'com_rokcandy', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2012-04-11 16:00:03', 0, '0000-00-00 00:00:00', 0, ''),
(11, 42, 1, 19, 20, 1, 'demo-articles', 'com_content', 'Demo Articles', 'demo-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-13 08:04:44', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 54, 1, 21, 22, 1, 'sample-content', 'com_content', 'Sample Content', 'sample-content', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-13 17:05:37', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 63, 1, 23, 24, 1, 'rockettheme', 'com_weblinks', 'RocketTheme', 'rockettheme', '', '<img class="rt-floatleft" src="images/rocketlauncher/weblinks/rockettheme.png" alt="RocketTheme WebLinks" width="122" height="95" />\r\n\r\n<p>RocketTheme provides Premium Professional Themes and Templates for OpenSource Platforms: Joomla, Wordpress, phpBB3, Magento &amp; More</p>\r\n\r\n<p>The RocketTheme Template Club features exclusive access to professional templates to help transform your site and set you apart from the competition.</p>\r\n\r\n<div class="clear"></div>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-13 17:07:49', 42, '2012-04-16 10:40:45', 0, '*'),
(14, 64, 1, 25, 26, 1, 'contact', 'com_contact', 'Contact ', 'contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-13 17:14:12', 0, '0000-00-00 00:00:00', 0, '*'),
(15, 66, 1, 27, 28, 1, 'roksprocket-tabs', 'com_content', 'RokSprocket Tabs', 'roksprocket-tabs', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-16 17:59:32', 0, '0000-00-00 00:00:00', 0, '*'),
(16, 71, 1, 29, 30, 1, 'roksprocket-headlines', 'com_content', 'RokSprocket Headlines', 'roksprocket-headlines', '', '\r\n', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-04-16 19:33:05', 42, '2012-05-01 11:07:29', 0, '*'),
(17, 79, 1, 31, 32, 1, 'roksprocket-lists', 'com_content', 'RokSprocket Lists', 'roksprocket-lists', '', 'R', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-05-01 11:21:05', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

DROP TABLE IF EXISTS `#__contact_details`;
CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
);

--
-- Dumping data for table `#__contact_details`
--

INSERT INTO `#__contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Voxel Contact', 'voxel-contact', 'May 2012 Joomla Template', '7001 St. Thomas Avenue', 'Seattle', 'WA', 'United States of America', '00000', '+1 555-555-5555', '+1 555-555-5555', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh. Vivamus non arcu.', 'images/rocketlauncher/contact-us/voxel-contact.jpg', NULL, 'email@may12.demo.rockettheme.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":null,"linkb_name":"","linkb":null,"linkc_name":"","linkc":null,"linkd_name":"","linkd":null,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 14, 1, '+1 555-555-5555', 'http://demo.rockettheme.com/?template=voxel', '', '', '', '*', '2012-04-13 17:16:10', 42, '', '2012-04-16 10:35:08', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

DROP TABLE IF EXISTS `#__content`;
CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
);

--
-- Dumping data for table `#__content`
--

INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 43, 'Template Features', 'template-features', '', '<div class="rt-center">\r\n  <span class="promo1">Voxel, May 2012 Template</span>\r\n  <span class="promo2">Incredibly pretty &amp; clean</span>\r\n  <span class="promo2"><em>news</em> or <em>magazine</em> style design</span>\r\n</div>\r\n\r\n<div class="clear"></div><br /><br />\r\n\r\n<p class="rt-center"><img class="largemarginbottom" src="images/rocketlauncher/features/features-template-preview.png" width="915" height="370" alt="image" /></p><br /><br />\r\n\r\n<div class="rt-center">\r\n  <span class="promo2">Inside <em>Voxel</em> Template</span>\r\n  <span class="promo3">Everything You Need to Build Your Stunning Website</span>\r\n</div>\r\n\r\n<div class="clear"></div><br /><br />\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117"><span>Styles</span> Variation</a></h3>\r\n  </div>\r\n  <em>Multiple Preset Styles</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-1.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=109"><span>Modules</span> Layout</a></h3>\r\n  </div>\r\n  <em>Versatile &amp; Flexible Layout</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=2&amp;Itemid=109"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-2.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=3&amp;Itemid=110"><span>Module</span> Variations</a></h3>\r\n  </div>\r\n  <em>Fashion &amp; Style the Module</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=3&amp;Itemid=110"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-3.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112"><span>Menu</span> Options</a></h3>\r\n  </div>\r\n  <em>Integrated Powerful Menu System</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-4.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=111"><span>Typography</span></a></h3>\r\n  </div>\r\n  <em>Make the Content Sexier</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=111"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-5.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113"><span>Styled</span> Extensions</a></h3>\r\n  </div>\r\n  <em>RocketTheme Extensions Styled</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-6.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom narrow-letter-spacing">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113"><span>RokSprocket</span> Powered</a></h3>\r\n  </div>\r\n  <em>Inclusive RokSprocket Integration</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-7.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=9&amp;Itemid=116"><span>Logo</span> Picker</a></h3>\r\n  </div>\r\n  <em>Pick Your Logo From Template Manager</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=9&amp;Itemid=116"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-8.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-center nomarginright">\r\n  <div class="module-title  nomarginbottom">\r\n    <h3 class="title smallmarginbottom"><a href="index.php?option=com_content&amp;view=article&amp;id=11&amp;Itemid=118"><span>Joomla</span> Stuff</a></h3>\r\n  </div>\r\n  <em>Styled for Regular Joomla! Stuff</em>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=11&amp;Itemid=118"><img class="largemargintop largemarginbottom" src="images/rocketlauncher/features/feature-9.jpg" width="280" height="200" alt="image" /></a>\r\n</div>\r\n\r\n<div class="clear"></div><br /><br />\r\n\r\n<div class="rt-center">\r\n  <span class="promo2"><em>Gantry</em> Framework</span>\r\n  <span class="promo3">Powerful Framework that Makes Building Websites Easier</span>\r\n</div>\r\n\r\n<div class="clear"></div><br /><br />\r\n\r\n<div class="rt-demo-grid-3">\r\n  <br />\r\n  <ul class="list-icon info nomarginbottom">\r\n    <li><strong>Compact 960 Grid System</strong><br />CSS grid framework to construct web content based on a width of 960 pixels</li>\r\n    <li><strong>Stunning Admin Interface</strong><br />Gantry provides a uniquely intuitive interface to control all aspects of the design</li>\r\n    <li class="nomarginbottom"><strong>Per-menu-item Configuration</strong><br />Powerful feature in Gantry to control configuration on a per-menu-item basis</li>\r\n  </ul>\r\n</div>\r\n\r\n<div class="rt-demo-grid-6 rt-center">\r\n  <img src="images/rocketlauncher/features/feature-admin-panel.gif" width="430" height="345" alt="image" />\r\n</div>\r\n\r\n<div class="rt-demo-grid-3">\r\n  <br />\r\n  <ul class="list-icon info nomarginbottom">\r\n    <li><strong>Source-Ordered 4 Columns</strong><br />With up to 3 total sidebars, you can achieve highly complex mainbody layout scenarios</li>\r\n    <li><strong>Integrated Gantry Features</strong><br />Many built-in features such as font-sizer, Google Analytics, To-Top Smooth Slider, etc</li>\r\n    <li class="nomarginbottom"><strong>Grid RTL Support</strong><br />Built in RTL support which will automatically order the layout to support RTL</li>\r\n  </ul>  \r\n</div>\r\n\r\n<div class="clear"></div><br /><br />\r\n\r\n<div class="rt-center">\r\n  <span class="promo2"><em>Mobile</em> Support</span>\r\n  <span class="promo3">iPhone, iPad, &amp; Android Custom Mobile Theme Support</span>\r\n</div>\r\n\r\n<div class="clear"></div><br /><br />\r\n\r\n<div class="rt-center">\r\n  <img class="largemarginbottom" src="images/rocketlauncher/features/feature-mobile-view.png" width="897" height="405" alt="image" /><br /><br />\r\n  <span class="promo2"><em>Interested?</em> Want to try <em>Voxel</em>?</span><br />\r\n  <a class="readon" href="http://www.rockettheme.com/joomla-templates/voxel" target="_blank"><span class="promo4">Download Voxel Now</span></a>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n\r\n', '', 1, 0, 0, 11, '2012-04-13 08:07:11', 42, '', '2012-04-30 16:48:01', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:07:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 45, 0, 11, '', '', 1, 286, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 44, 'Module Positions', 'module-positions', '', '<div class="module-title "><h2 class="title">Module Positions Diagram</h2></div>\r\n<p class="notice">If no modules are published to a position, the entire area or row will not appear/collapse.</p>\r\n<p><img src="images/rocketlauncher/module-positions/positions-diagram.jpg" alt="Module Positions"\r\nheight="1235" width="436" /></p>\r\n<div class="rt-center"><a class="readon"  href="http://www.gantry-framework.org/documentation/joomla/configure/layouts"><span>Documentation: Gantry Framework Layouts</span></a></div>', '', 1, 0, 0, 11, '2012-04-13 08:08:01', 42, '', '2012-04-23 16:59:47', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:08:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 10, '', '', 1, 105, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 45, 'Module Variations', 'module-variations', '', '<p>There are <strong>11 stylistic module class suffixes</strong>, these add a unique style variation to the module: <strong>box1-4</strong>, <strong>title1-6</strong>, and <strong>lineshadow</strong>; and 26 structural suffixes, these affect the layout and metrics of the module.</p>\r\n\r\n<div class="title3"><div class="module-title"><h2 class="title">Module Suffix "title"</h2><div class="clear"></div></div></div>\r\n<p class="nomarginbottom">There are <strong>6 variations</strong> to change the module title: title1-6.</p>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="title1">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>title1</span></h2>\r\n          <div class="module-border"></div>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>title1</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="title2">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>title2</span></h2>\r\n          <div class="module-border"></div>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>title2</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="title3">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>title3</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>title3</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="title4">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>title4</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>title4</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="title5">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>title5</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>title5</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="title6">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>title6</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>title6</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div style="border: 1px dotted #ccc;"></div>\r\n\r\n<br />\r\n\r\n<div class="title3"><div class="module-title"><h2 class="title">Module Suffix "box"</h2><div class="clear"></div></div></div>\r\n\r\n<p class="nomarginbottom">There are <strong>4 variations</strong> to change the module background: box1-4.</p>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="box1">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>box1</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>box1</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="box2">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>box2</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>box2</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="box3">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>box3</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>box3</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="box4">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title smallmarginbottom">\r\n          <h2 class="title"><span>box4</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p class="no">An example module using the <strong>box4</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<div style="border: 1px dotted #ccc;"></div>\r\n\r\n<br />\r\n\r\n<div class="title3"><div class="module-title"><h2 class="title">Module Suffix "lineshadow"</h2><div class="clear"></div></div></div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <div class="lineshadow">\r\n    <div class="rt-block">\r\n      <div class="module-surround">\r\n        <div class="module-title">\r\n          <h2 class="title"><span>lineshadow</span></h2>\r\n        </div>\r\n        <div class="module-content">\r\n          <p>An example module using the <strong>lineshadow</strong> module class suffix.</p>\r\n          <a class="readon" href="#"><span>More</span></a>\r\n          <div class="clear"></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', '', 1, 0, 0, 11, '2012-04-13 08:08:25', 42, '', '2012-05-01 10:56:33', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:08:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 0, 9, '', '', 1, 125, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 46, 'Template Typography', 'template-typography', '', '<h4>Creating Beautiful Content With Simple Code</h4>\r\n\r\n<p>Typography is a fundamental part of a template, providing you with the tools to characterise your content and bring it to life. There is a vast array of typography available with Ionosphere template, as is with our previous releases, from list styles, notice blocks and a diverse number of other elements. </p>\r\n\r\n<p class="notice">If you are using the TinyMCE editor for HTML typography, go to <strong>Extensions &rarr; Plugin Manager &rarr; TinyMCE 2.0 &rarr; Set Code Clean-up on Save to Never</strong>.</p>\r\n\r\n<div class="rt-demo-grid-6 title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;h1&gt; Heading Styles</h3>\r\n  </div>  \r\n  <h1>H1. Heading 1</h1>\r\n  <h2>H2. Heading 2</h2>\r\n  <h3>H3. Heading 3</h3>\r\n  <h4>H4. Heading 4</h4>\r\n  <h5>H5. Heading 5</h5>\r\n  <h1 class="rt-pagetitle">H1. Page Title</h1>\r\n  <h1 class="title nomarginbottom">H1. Content Title</h1>\r\n</div>\r\n\r\n<div class="rt-demo-grid-6 floatright title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;ul&gt; List Styles</h3>\r\n  </div>  \r\n  <ul>\r\n    <li><em>This is an example of a standard list style.</em> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</li>\r\n    <li><em>This is an example of a standard list style.</em> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</li>\r\n    <li><em>This is an example of a standard list style.</em> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</li>\r\n    <li><em>This is an example of a standard list style.</em> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</li>    \r\n    <li><em>This is an example of a standard list style.</em> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</li>        \r\n  </ul>\r\n</div>\r\n<div class="clear"></div>\r\n\r\n<div class="title6 largepaddingbottom"><div class="module-title"><div class="title">&nbsp;</div></div></div>\r\n\r\n<div class="rt-demo-grid-6 title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;p&gt; DropCap Styles</h3>\r\n  </div>  \r\n  <p class="dropcap">Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis. Vestibulum nec mi vitae pede tincidunt nonummy. Vestibulum facilisis mollis neque. Sed orci. Cum sociis natoque penatibu. Pellentesque vel enim urna, sit amet blandit ipsum. Maecenas quis sem sit amet nunc pretium mattis. Sed dapibus semper est, sed pretium erat.</p>\r\n  \r\n  <p>Use the following format: <strong>&lt;p class="dropcap"&gt;...&lt;/p&gt; (HTML)</strong> or <strong>&#91;dropcap class="dropcap"&#93;...&#91;/dropcap&#93; (ROKCANDY)</strong>. You can use any letter, symbol or number.</p>\r\n  \r\n  <p class="dropcap2">Praesent rutrum sapien ac felis. Use this format: <strong>&lt;p class="dropcap2"&gt;...&lt;/p&gt; (HTML)</strong> or <strong>&#91;dropcap class="dropcap2"&#93; ... &#91;/dropcap&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p class="dropcap3">Praesent rutrum sapien ac felis. Use this format: <strong>&lt;p class="dropcap3"&gt;...&lt;/p&gt; (HTML)</strong> or <strong>&#91;dropcap class="dropcap3"&#93; ... &#91;/dropcap&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p class="dropcap4">Praesent rutrum sapien ac felis. Use this format: <strong>&lt;p class="dropcap4"&gt;...&lt;/p&gt; (HTML)</strong> or <strong>&#91;dropcap class="dropcap4"&#93; ... &#91;/dropcap&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p class="dropcap5 nomarginbottom">Praesent rutrum sapien ac felis. Use this format: <strong>&lt;p class="dropcap5"&gt;...&lt;/p&gt; (HTML)</strong> or <strong>&#91;dropcap class="dropcap5"&#93; ... &#91;/dropcap&#93; (ROKCANDY)</strong></p>\r\n</div>\r\n\r\n<div class="rt-demo-grid-6 floatright title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;blockquote&gt;  Styles</h3>\r\n  </div>  \r\n  \r\n  <blockquote><p>To replicate, use the following formatting: <strong>&lt;blockquote&gt;&lt;p&gt;....&lt;/p&gt;&lt;/blockquote&gt; (HTML)</strong> or <strong>&#91;blockquote class="default"&#93;...&#91;/blockquote&#93; (ROKCANDY)</strong>.</p></blockquote>\r\n  <br />\r\n  <blockquote class="alignleft"><p>Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis.</p></blockquote>\r\n  \r\n  <p>To replicate, use the following formatting: <strong>&lt;blockquote class=&quot;alignleft&quot;&gt;&lt;p&gt;....&lt;/p&gt;&lt;/blockquote&gt; (HTML)</strong> or <strong>&#91;blockquote class="alignleft"&#93;...&#91;/blockquote&#93; (ROKCANDY)</strong>.</p>\r\n  \r\n  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris metus tortor.</p>\r\n  <br />\r\n  <blockquote class="alignright nomarginbottom"><p>Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis.</p></blockquote>\r\n  \r\n  <p>To replicate, use the following formatting: <strong>&lt;blockquote class=&quot;alignright&quot;&gt;&lt;p&gt;....&lt;/p&gt;&lt;/blockquote&gt; (HTML)</strong> or <strong>&#91;blockquote class="alignright"&#93;...&#91;/blockquote&#93; (ROKCANDY)</strong>.</p>\r\n  \r\n  <p class="nomarginbottom">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris metus tortor.</p>\r\n</div>\r\n<div class="clear"></div>\r\n\r\n<div class="title6 largepaddingbottom"><div class="module-title"><div class="title">&nbsp;</div></div></div>\r\n\r\n<div class="rt-demo-grid-6 title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;pre&gt; Code Styles</h3>\r\n  </div>  \r\n  <pre class="lines">This is a sample <strong>&lt;pre class=&quot;lines&quot;&gt;...&lt;/pre&gt; (HTML)</strong> or,\r\n<strong>&#91;pre2 class="{lines}"&#93; ... &#91;/pre2&#93; (ROKCANDY)</strong> tag:\r\n\r\ndiv.modulebox-black div.bx1 {\r\n  background: url(../images/box_bl.png) 0 100% repeat;\r\n}\r\n\r\ndiv.modulebox-black div.bx2 {\r\n  background: url(../images/box_tr.png) 100% 0 repeat;\r\n}\r\n</pre>\r\n  \r\n  <pre class="nomarginbottom">This is a sample <strong>&lt;pre&gt;...&lt;/pre&gt; (HTML)</strong> or,\r\n<strong>&#91;pre class="{lines}"&#93; ... &#91;/pre&#93; (ROKCANDY)</strong> tag:\r\n\r\ndiv.modulebox-black div.bx1 {\r\n  background: url(../images/box_bl.png) 0 100% repeat;\r\n}\r\n\r\ndiv.modulebox-black div.bx2 {\r\n  background: url(../images/box_tr.png) 100% 0 repeat;\r\n}\r\n</pre>\r\n</div>\r\n\r\n<div class="rt-demo-grid-6 floatright title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;p&gt; Notice Styles</h3>\r\n  </div>  \r\n  <p class="approved">This is a <a href="javascript:void(0);">sample</a> of the <em>Approved</em> style. To replicate, use the following syntax: <em>&lt;p class="approved"&gt;....&lt;/p&gt;</em> (HTML) or <em>&#91;notice class="approved"&#93; <em class="normal">...</em> &#91;/notice&#93;</em> (ROKCANDY).</p>\r\n  \r\n  <p class="attention">This is a <a href="javascript:void(0);">sample</a> of the <em>Attention</em> style. To replicate, use the following syntax: <em>&lt;p class="attention"&gt;....&lt;/p&gt;</em> (HTML) or <em>&#91;notice class="attention"&#93; <em class="normal">...</em> &#91;/notice&#93;</em> (ROKCANDY).</p>\r\n  \r\n  <p class="notice">This is a <a href="javascript:void(0);">sample</a> of the <em>Notice</em> style. To replicate, use the following syntax: <em>&lt;p class="notice"&gt;....&lt;/p&gt;</em> (HTML) or <em>&#91;notice class="notice"&#93; <em class="normal">...</em> &#91;/notice&#93;</em> (ROKCANDY).</p>\r\n  \r\n  <p class="alert nomarginbottom">This is a <a href="javascript:void(0);">sample</a> of the <em>Alert</em> style. To replicate, use the following syntax: <em>&lt;p class="alert"&gt;....&lt;/p&gt;</em> (HTML) or <em>&#91;notice class="alert"&#93; <em class="normal">...</em> &#91;/notice&#93;</em> (ROKCANDY).</p>\r\n</div>\r\n<div class="clear"></div>\r\n\r\n<div class="title6 largepaddingbottom"><div class="module-title"><div class="title">&nbsp;</div></div></div>\r\n\r\n<div class="rt-demo-grid-6 title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;span&gt; Text Icon Styles</h3>\r\n  </div>  \r\n  <p>To replicate, the following format: <strong>&lt;span class="text-icon iconname"&gt;...&lt;/span&gt; (HTML)</strong> or <strong>&#91;icon class=&quot;icon name&quot;&#93;...&#91;/icon&#93; (ROKCANDY)</strong>. The class names are listed below, such as "<strong>text-icon email</strong>".</p>\r\n  \r\n  <div class="rt-demo-grid-3 nomarginleft nomarginright">\r\n    <span class="text-icon email">Text with an email icon</span><br /><br />\r\n    <span class="text-icon phone">Text with a phone icon</span><br /><br />\r\n    <span class="text-icon quote">Text with a quote icon</span><br /><br />\r\n    <span class="text-icon cart">Text with a cart icon</span><br /><br />\r\n    <span class="text-icon rss">Text with a rss icon</span><br /><br />\r\n    <span class="text-icon tags">Text with a tags icon</span><br /><br />\r\n    <span class="text-icon write">Text with a write icon</span><br /><br />\r\n    <span class="text-icon info">Text with an info icon</span><br /><br />\r\n    <span class="text-icon sound">Text with a sound icon</span><br /><br />\r\n    <span class="text-icon rightarrow">Text with a rightarrow icon</span><br /><br />\r\n    <span class="text-icon leftarrow">Text with a leftarrow icon</span><br /><br />\r\n    <span class="text-icon circlearrow">Text with a circlearrow icon</span><br /><br />\r\n    <span class="text-icon downarrow">Text with a downarrow icon</span><br /><br />\r\n    <span class="text-icon uparrow">Text with an uparrow icon</span><br /><br />\r\n    <span class="text-icon person">Text with a person icon</span><br /><br />\r\n    <span class="text-icon calendar">Text with a calendar icon</span><br /><br />\r\n    <span class="text-icon doc">Text with a doc icon</span>\r\n  </div>\r\n  <div class="rt-demo-grid-3 nomarginright">\r\n    <span class="text-icon bulb">Text with a bulb icon</span><br /><br />\r\n    <span class="text-icon twitter">Text with a twitter icon</span><br /><br />\r\n    <span class="text-icon youtube">Text with a youtube icon</span><br /><br />\r\n    <span class="text-icon skype">Text with a skype icon</span><br /><br />\r\n    <span class="text-icon facebook">Text with a facebook icon</span><br /><br />\r\n    <span class="text-icon like">Text with a like icon</span><br /><br />\r\n    <span class="text-icon video">Text with a video icon</span><br /><br />\r\n    <span class="text-icon dropbox">Text with a dropbox icon</span><br /><br />\r\n    <span class="text-icon vimeo">Text with a vimeo icon</span><br /><br />\r\n    <span class="text-icon paypal">Text with a paypal icon</span>\r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-6 floatright title5">\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;em&gt; Emphasis Styles</h3>\r\n  </div>  \r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="italic">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;italic&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;emphasis&#93;...&#91;/emphasis&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="bold">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;bold&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;emphasisbold&#93;...&#91;/emphasisbold&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="bold2">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;bold2&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;emphasisbold2&#93;...&#91;/emphasisbold2&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="highlight">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;highlight&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;highlight class=&quot;default&quot;&#93;...&#91;/highlight&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="highlight white">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;highlight white&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;highlight class=&quot;white&quot;&#93;...&#91;/highlight&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="highlight black">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;highlight black&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;highlight class=&quot;black&quot;&#93;...&#91;/highlight&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="highlight green">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;highlight green&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;highlight class=&quot;green&quot;&#93;...&#91;/highlight&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="highlight yellow">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;highlight yellow&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;highlight class=&quot;yellow&quot;&#93;...&#91;/highlight&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p>This is a emphasis tag that allows you to <em class="highlight blue">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;highlight blue&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;highlight class=&quot;blue&quot;&#93;...&#91;/highlight&#93; (ROKCANDY)</strong></p>\r\n  \r\n  <p class="nomarginbottom">This is a emphasis tag that allows you to <em class="highlight red">highlight words or phrases</em>. Use the following format: <strong>&lt;em class=&quot;highlight red&quot;&gt;...&lt;/em&gt; (HTML)</strong> or <strong>&#91;highlight class=&quot;red&quot;&#93;...&#91;/highlight&#93; (ROKCANDY)</strong></p>\r\n</div>\r\n<div class="clear"></div>\r\n\r\n<div class="title6 largepaddingbottom"><div class="module-title"><div class="title">&nbsp;</div></div></div>\r\n\r\n<div>\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;ul&gt; List Styles (Icons)</h3>\r\n  </div>  \r\n</div>\r\n\r\n<p>To replicate, use the following format: <strong>&lt;ul class="list-icon icon_name"&gt;&lt;li&gt;....&lt;/li&gt;&lt;li&gt;....&lt;/li&gt;...&lt;/ul&gt; (HTML)</strong> or <strong>&#91;list class="list-icon icon_name"&#93;&#91;li&#93;....&#91;/li&#93;&#91;li....&#91;/li&#93;&#91;/list&#93; (ROKCANDY)</strong>. The icon names are listed below, such as "<strong>cart</strong>".</p>\r\n\r\n<div class="rt-demo-grid-3">\r\n  <ul class="list-icon email">\r\n    <li>A list item using the <strong>list-icon email</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon email</strong> class.</li>  </ul>\r\n  <br />\r\n  <ul class="list-icon phone">\r\n    <li>A list item using the <strong>list-icon phone</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon phone</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon quote">\r\n    <li>A list item using the <strong>list-icon quote</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon quote</strong> class.</li>  </ul>\r\n  <br />\r\n  <ul class="list-icon twitter">\r\n    <li>A list item using the <strong>list-icon twitter</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon twitter</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon youtube">\r\n    <li>A list item using the <strong>list-icon youtube</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon youtube</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon facebook">\r\n    <li>A list item using the <strong>list-icon facebook</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon facebook</strong> class.</li>  </ul>\r\n  <br />\r\n  <ul class="list-icon cart nomarginbottom">\r\n    <li>A list item using the <strong>list-icon cart</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon cart</strong> class.</li>  </ul>\r\n</div>\r\n<div class="rt-demo-grid-3">\r\n  <ul class="list-icon tags">\r\n    <li>A list item using the <strong>list-icon tags</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon tags</strong> class.</li>  </ul>\r\n  <br />\r\n  <ul class="list-icon write">\r\n    <li>A list item using the <strong>list-icon write</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon write</strong> class.</li>  </ul>\r\n  <br />\r\n  <ul class="list-icon info">\r\n    <li>A list item using the <strong>list-icon info</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon info</strong> class.</li>  </ul>\r\n  <br />\r\n  <ul class="list-icon sound">\r\n    <li>A list item using the <strong>list-icon sound</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon sound</strong> class.</li>  </ul>\r\n  <br />\r\n  <ul class="list-icon rightarrow">\r\n    <li>A list item using the <strong>list-icon rightarrow</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon rightarrow</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon skype">\r\n    <li>A list item using the <strong>list-icon skype</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon skype</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon rss nomarginbottom">\r\n    <li>A list item using the <strong>list-icon rss</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon rss</strong> class.</li>\r\n  </ul>\r\n</div>\r\n<div class="rt-demo-grid-3">\r\n  <ul class="list-icon leftarrow">\r\n    <li>A list item using the <strong>list-icon leftarrow</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon leftarrow</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon circlearrow">\r\n    <li>A list item using the <strong>list-icon circlearrow</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon circlearrow</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon dropbox">\r\n    <li>A list item using the <strong>list-icon dropbox</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon dropbox</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon vimeo">\r\n    <li>A list item using the <strong>list-icon vimeo</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon vimeo</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon downarrow">\r\n    <li>A list item using the <strong>list-icon downarrow</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon downarrow</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon video">\r\n    <li>A list item using the <strong>list-icon video</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon video</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon like nomarginbottom">\r\n    <li>A list item using the <strong>list-icon like</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon like</strong> class.</li>\r\n  </ul>\r\n</div>\r\n<div class="rt-demo-grid-3">\r\n  <ul class="list-icon uparrow">\r\n    <li>A list item using the <strong>list-icon uparrow</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon uparrow</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon person">\r\n    <li>A list item using the <strong>list-icon person</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon person</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon calendar">\r\n    <li>A list item using the <strong>list-icon calendar</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon calendar</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon bulb">\r\n    <li>A list item using the <strong>list-icon bulb</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon bulb</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon paypal">\r\n    <li>A list item using the <strong>list-icon paypal</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon paypal</strong> class.</li>\r\n  </ul>\r\n  <br />\r\n  <ul class="list-icon doc nomarginbottom">\r\n    <li>A list item using the <strong>list-icon doc</strong> class.</li>\r\n    <li>A list item using the <strong>list-icon doc</strong> class.</li>\r\n  </ul>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="title6 largepaddingbottom"><div class="module-title"><div class="title">&nbsp;</div></div></div>\r\n\r\n<div>\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;ul&gt; List Styles (CSS3)</h3>\r\n  </div>  \r\n</div>\r\n\r\n<p>These list styles are based on the latest CSS3 techniques and are designed to work in modern browsers (will not display properly in IE6-IE8).</p>\r\n\r\n<p>To replicate, use the following format: <strong>&lt;ul class="class name"&gt;&lt;li&gt;....&lt;/li&gt;&lt;li&gt;....&lt;/li&gt;...&lt;/ul&gt; (HTML)</strong> or <strong>&#91;list class=&quot;class name&quot;&#93;&#91;li&#93;....&#91;/li&#93;&#91;li....&#91;/li&#93;&#91;/list&#93; (ROKCANDY)</strong>. The class names are listed below, such as "<strong>checkmark red</strong>".</p>\r\n\r\n<div class="rt-demo-grid-3">\r\n  <ul class="checkmark">\r\n    <li>Checkmark</li>\r\n    <li>Checkmark</li>\r\n  </ul>\r\n  \r\n  <ul class="circle-checkmark">\r\n    <li>Circle-Checkmark</li>\r\n    <li>Circle-Checkmark</li>\r\n  </ul>\r\n  \r\n  <ul class="square-checkmark">\r\n    <li>Square-Checkmark</li>\r\n    <li>Square-Checkmark</li>\r\n  </ul>\r\n  \r\n  <ul class="checkmark green">\r\n    <li>Checkmark Green</li>\r\n    <li>Checkmark Green</li>\r\n  </ul>\r\n  \r\n  <ul class="checkmark yellow">\r\n    <li>Checkmark Yellow</li>\r\n    <li>Checkmark Yellow</li>\r\n  </ul>\r\n  \r\n  <ul class="checkmark red nomarginbottom">\r\n    <li>Checkmark Red</li>\r\n    <li>Checkmark Red</li>\r\n  </ul>\r\n</div>\r\n<div class="rt-demo-grid-3">\r\n  <ul class="checkmark blue">\r\n    <li>Checkmark Blue</li>\r\n    <li>Checkmark Blue</li>\r\n  </ul>\r\n  \r\n  <ul class="checkmark white">\r\n    <li>Checkmark White</li>\r\n    <li>Checkmark White</li>\r\n  </ul>\r\n  \r\n  <ul class="triangle-small">\r\n    <li>Triangle-Small</li>\r\n    <li>Triangle-Small</li>\r\n  </ul>\r\n  \r\n  <ul class="triangle">\r\n    <li>Triangle</li>\r\n    <li>Triangle</li>\r\n  </ul>\r\n  \r\n  <ul class="triangle-large">\r\n    <li>Triangle-Large</li>\r\n    <li>Triangle-Large</li>\r\n  </ul>\r\n  \r\n  <ul class="triangle green nomarginbottom">\r\n    <li>Triangle Green</li>\r\n    <li>Triangle Green</li>\r\n  </ul>\r\n</div>\r\n<div class="rt-demo-grid-3">\r\n  <ul class="triangle yellow">\r\n    <li>Triangle Yellow</li>\r\n    <li>Triangle Yellow</li>\r\n  </ul>\r\n  \r\n  <ul class="triangle red">\r\n    <li>Triangle Red</li>\r\n    <li>Triangle Red</li>\r\n  </ul>\r\n  \r\n  <ul class="triangle blue">\r\n    <li>Triangle Blue</li>\r\n    <li>Triangle Blue</li>\r\n  </ul>\r\n  \r\n  <ul class="triangle white">\r\n    <li>Triangle White</li>\r\n    <li>Triangle White</li>\r\n  </ul>\r\n  \r\n  <ul class="circle-small">\r\n    <li>Circle-Small</li>\r\n    <li>Circle-Small</li>\r\n  </ul>\r\n  \r\n  <ul class="circle nomarginbottom">\r\n    <li>Circle</li>\r\n    <li>Circle</li>\r\n  </ul>\r\n</div>\r\n<div class="rt-demo-grid-3">\r\n  <ul class="circle-large">\r\n    <li>Circle-Large</li>\r\n    <li>Circle-Large</li>\r\n  </ul>\r\n  \r\n  <ul class="circle green">\r\n    <li>Circle Green</li>\r\n    <li>Circle Green</li>\r\n  </ul>\r\n  \r\n  <ul class="circle yellow">\r\n    <li>Circle Yellow</li>\r\n    <li>Circle Yellow</li>\r\n  </ul>\r\n  \r\n  <ul class="circle red">\r\n    <li>Circle Red</li>\r\n    <li>Circle Red</li>\r\n  </ul>\r\n  \r\n  <ul class="circle blue">\r\n    <li>Circle Blue</li>\r\n    <li>Circle Blue</li>\r\n  </ul>\r\n  \r\n  <ul class="circle white nomarginbottom">\r\n    <li>Circle White</li>\r\n    <li>Circle White</li>\r\n  </ul>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="title6 largepaddingbottom"><div class="module-title"><div class="title">&nbsp;</div></div></div>\r\n\r\n<div>\r\n  <div class="module-title">\r\n    <h3 class="title">&lt;span&gt; Inset Styles</h3>\r\n  </div>  \r\n</div>\r\n\r\n<p>\r\n  Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis. Vestibulum nec mi vitae pede tincidunt nonummy. Vestibulum facilisis mollis neque. Sed orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n  <span class="inset-right nomarginbottom"><span class="inset-right-title">Inset Right Title</span>You will need to use the following formatting: <strong>&lt;span class=&quot;inset-right&quot;&gt; &lt;span class=&quot;inset-right-title&quot;&gt; .... &lt;/span&gt; <em class="normal"> ... some content ... </em>&lt;/strong&gt; (HTML)</strong> or <strong>&#91;inset side="right" title="Inset Right Title"&#93; ... some content ...&#91;/inset&#93; (ROKCANDY)</strong></span>\r\n  Vestibulum facilisis mollis neque. Sed orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed euismod magna a nibh.\r\n</p>\r\n\r\n<p>\r\n  Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis. Vestibulum nec mi vitae pede tincidunt nonummy. Vestibulum facilisis mollis neque. Sed orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n  <span class="inset-left nomarginbottom"><span class="inset-left-title">Inset Left Title</span>You will need to use the following formatting: <strong>&lt;span class=&quot;inset-left&quot;&gt; &lt;span class=&quot;inset-left-title&quot;&gt; .... &lt;/span&gt; <em class="normal"> ... some content ... </em>&lt;/strong&gt; (HTML)</strong> or <strong>&#91;inset side="left" title="Inset Left Title"&#93; ... some content ...&#91;/inset&#93; (ROKCANDY)</strong></span>\r\n  Vestibulum facilisis mollis neque. Sed orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed euismod magna a nibh.</p>\r\n\r\n<p>Sed euismod magna a nibh. Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis. Vestibulum nec mi vitae pede tincidunt nonummy. Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis. Vestibulum nec mi vitae pede tincidunt nonummy. Vestibulum facilisis mollis neque.</p>\r\n<p class="nomarginbottom">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Praesent rutrum sapien ac felis. Phasellus elementum dolor quis turpis. Vestibulum nec mi vitae pede tincidunt nonummy. Vestibulum facilisis mollis neque. Sed orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n</p>\r\n\r\n<div class="clear"></div>', '', 1, 0, 0, 11, '2012-04-13 08:08:46', 42, '', '2012-05-02 07:42:35', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:08:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 0, 8, '', '', 1, 76, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(5, 47, 'Menu Options', 'menu-options', '', '<p class="alert">RokNavMenu is the core of all the powerful Voxel menu system. Please ensure you are using the latest version of RokNavMenu, available <a href="http://www.rockettheme.com/extensions-joomla/roknavmenu" target="_blank">here</a>.</p>\r\n\r\n<div class="module-title nomarginbottom"><h2 class="title medmargintop">Fusion with MegaMenu</h2><div class="clear"></div></div>\r\n\r\n<p><strong>Fusion Menu</strong> is a menu theme of the <strong>RokNavMenu</strong> extension, the addon that drives all RocketTheme template menus. It is primarily a javascript enhanced CSS dropdown menu, that combines standard suckerfish type functionality with animations, transitions and other advanced effects powered by Mootools.</p>\r\n\r\n<img class="rt-image" src="images/rocketlauncher/menu-options/fusionmenu.jpg" alt="FusionMenu" width="585" height="330" />\r\n\r\n<div class="clear"></div><br />\r\n\r\n<div class="module-title nomarginbottom"><h2 class="title medmargintop"><span>SplitMenu</span></h2><div class="clear"></div></div>\r\n\r\n<p>A static menu system that displays 1st and 2nd level items in the main horizontal menu and further children in the Sidebar.</p>\r\n\r\n<img class="rt-image" src="images/rocketlauncher/menu-options/splitmenu.jpg" alt="SplitMenu" width="585" height="289" />\r\n\r\n<div class="clear"></div><br />\r\n\r\n<p class="notice">All Menu Items can be edited from <strong>Admin &rarr; Menu &rarr; <em>Menu Name</em> &rarr; <em>Menu Item</em></strong>.</p>\r\n\r\n<br />\r\n\r\n<div class="module-title nomarginbottom"><h2 class="title medmargintop">How to create Child Menu Items</h2><div class="clear"></div></div>\r\n\r\n<p>Go to <strong>Admin &rarr; Menu &rarr; <em>A Menu</em> &rarr; <em>A Menu Item</em> &rarr; Select a <em>Parent Item</em></strong>, and it will appear as a child of it.</p>\r\n\r\n<p>\r\n  <img src="images/rocketlauncher/menu-options/childmenu-1.jpg" alt="Image" width="280" height="125" class="rt-image medmarginright floatleft" />\r\n  <img src="images/rocketlauncher/menu-options/childmenu-2.jpg" alt="Image" width="280" height="125" class="rt-image floatleft nomarginright" /> \r\n</p>\r\n\r\n<div class="clear"></div>', '', 1, 0, 0, 11, '2012-04-13 08:09:28', 42, '', '2012-05-02 08:07:13', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:09:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 16, 0, 7, '', '', 1, 135, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 48, 'Integrated Extensions', 'integrated-extensions', '', '<div class="rt-center largemargintop">\r\n  <span class="promo2">Introducing the New<br/>RokSprocket Layout, <em>Mosaic</em></span>\r\n</div>\r\n<div class="clear"></div><br />\r\n\r\n<div class="rt-demo-grid-6 largemarginright">\r\n  <p><strong>Mosaic</strong> is a custom template layout, powered by RokSprocket. It displays an interactive arrangement of content blocks in a dynamically created grid structure. Mosaic is the perfect structure for any magazine-type site.</p>\r\n  <p><a rel="rokbox" href="images/rocketlauncher/extensions/ext-rb-mosaic-3.jpg" title="Add Filter :: Filter the RokSprocket Content"><img class="rt-floatleft nomarginright" src="images/rocketlauncher/extensions/ext-mosaic-3.png" width="215" height="158" alt="image" /</a></p>\r\n    <p><a rel="rokbox" href="images/rocketlauncher/extensions/ext-rb-mosaic-4.jpg" title="Article List :: Filtered Results Shown Here"><img class="rt-floatright nomarginleft" src="images/rocketlauncher/extensions/ext-mosaic-4.png" width="215" height="158" alt="image" /></a></p>\r\n    <div class="clear"></div><br />\r\n    <p>Tagging with icons is supported for: <strong>computers, movies, fashion, architecture, games, music, sports,</strong> or create your own!</p>\r\n    <p>For extensive tutorials how to configure RokSprocket Mosaic Layout, please visit <a href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164437&amp;p=808144&amp;rb_v=viewtopic#p808144" target="_blank">this guide</a> in Voxel forum.</p>\r\n    <br />\r\n    <p><a rel="rokbox[780 529]" href="http://demo.rockettheme.com/joomla25/voxel/video/roksprocket-frontend.mov" title="RokSprocket - Mosaic Layout :: Perfect Structure for Magazine-Type Site"><img src="images/rocketlauncher/extensions/ext-mosaic-5.png" width="430" height="245" alt="image" /></a></p>\r\n    </div>\r\n    \r\n    <div class="rt-demo-grid-6 nomarginright">\r\n      <p><img src="images/rocketlauncher/extensions/ext-mosaic-1.png" width="430" height="180" alt="image" /></p>\r\n      <p><img src="images/rocketlauncher/extensions/ext-mosaic-2.png" width="430" height="438" alt="image" /></p>\r\n    </div>\r\n    \r\n    <div class="clear"></div><br />\r\n    \r\n    <div class="rt-center largemargintop">\r\n      <span class="promo2">A Revolutionary Content Module<br/>with <em>Multiple Layout</em> Options</span>\r\n    </div>\r\n    <div class="clear"></div><br />\r\n    \r\n    <div class="rt-demo-grid-4 rt-center nomarginright">\r\n      <h3 class="medmarginbottom">Tabs Layout</h3>\r\n      <p>A tabbed content layout, displaying content in dynamic tabs.</p>\r\n      <p class="largepaddingbottom"><a rel="rokbox(roksprocket)" href="images/rocketlauncher/extensions/ext-rb-sprocket-tabs.jpg" title="Tabs Layout :: A tabbed content layout, displaying content in dynamic tabs"><img src="images/rocketlauncher/extensions/ext-sprocket-tab.jpg" width="280" height="200" alt="image" /></a></p>\r\n      \r\n      <h3 class="medmarginbottom">List Layout</h3>\r\n      <p>An accordion / horizontal list layout, for displaying text and/or thumbnails.</p>  \r\n      <p><a rel="rokbox(roksprocket)" href="images/rocketlauncher/extensions/ext-rb-sprocket-list.jpg" title="List Layout :: An accordion / horizontal list layout, for displaying text and/or thumbnails"><img src="images/rocketlauncher/extensions/ext-sprocket-list.jpg" width="280" height="200" alt="image" /></a></p>\r\n    </div>\r\n    \r\n    <div class="rt-demo-grid-4 rt-center largemarginright">\r\n      <h3 class="medmarginbottom">Features Layout</h3>\r\n      <p>A showcase / slideshow layout mode, with image and text support.</p>\r\n      <p class="largepaddingbottom"><a rel="rokbox(roksprocket)" href="images/rocketlauncher/extensions/ext-rb-sprocket-features.jpg" title="Features Layout :: A showcase / slideshow layout mode, with image and text support"><img src="images/rocketlauncher/extensions/ext-sprocket-features.jpg" width="280" height="200" alt="image" /></a></p>\r\n      \r\n      <h3 class="medmarginbottom">Headlines Layout</h3>\r\n      <p>A ticker layout, perfect for displaying headlines or other text snippets.</p>\r\n      <p class="medpaddingbottom"><a rel="rokbox(roksprocket)" href="images/rocketlauncher/extensions/ext-rb-sprocket-headlines.jpg" title="Headlines Layout :: A ticker layout, perfect for displaying headlines or other text snippets"><img src="images/rocketlauncher/extensions/ext-sprocket-headlines.jpg" width="280" height="200" alt="image" /></a></p>\r\n    </div>\r\n    \r\n    <div class="rt-demo-grid-4 nomarginright">\r\n      <p><a rel="rokbox" href="images/rocketlauncher/extensions/ext-rb-sprocket-admin.jpg" title="RokSprocket Module Manager :: RokSprocket has a custom control interface, built with ajax to be intuitive, user friendly and powerful."><img src="images/rocketlauncher/extensions/ext-sprocket-admin.png" width="280" height="164" alt="image" /></a></p>\r\n      <p class="dropcap2 smallmarginbottom">1 <span class="promo3">Provider &amp; Type</span></p>\r\n      <p>Pick a Content Provider from the list of installed and available CCK Extensions and pick the Layout type</p>\r\n      <p class="dropcap2 smallmarginbottom">2 <span class="promo3">Content Filters</span></p>\r\n      <p>Use Content Filters to select articles and configure the sort rules to change the order they display in</p>\r\n      <p class="dropcap2 smallmarginbottom">3 <span class="promo3">Layout Options</span></p>\r\n      <p>Each layout type has a specific set of options that are used to configure the RokSprocket module</p>\r\n      <blockquote class="largemargintop"><p class="largemargintop"><strong>RokSprocket</strong> supports a comprehensive control interface, for all layout modes, and is powered by Ajax.</p></blockquote>\r\n    </div>\r\n    \r\n    <div class="clear"></div>\r\n    \r\n    ', '', 1, 0, 0, 11, '2012-04-13 08:09:43', 42, '', '2012-05-02 08:09:10', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:09:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 418, 0, 6, '', '', 1, 339, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 49, 'Tutorials and Guides', 'tutorials-and-guides', '', '<div class="module-title rt-center">\r\n  <h2 class="title">Tutorials&nbsp;&amp;&nbsp;Guides</h2>\r\n</div>\r\n\r\n<div class="rt-demo-grid-3 nomarginleft largemarginright largepaddingright rt-center">\r\n  <div class="module-title nomarginbottom">\r\n    <h3 class="title">Installation</h3>\r\n  </div>    \r\n  <p>An overview of template files and instructions for installing, activating, and configuring the Voxel template.</p>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=9" class="readon"><span>Read More</span></a>\r\n</div>\r\n\r\n<div class="rt-demo-grid-3 nomarginright largemarginleft rt-center">\r\n  <div class="module-title nomarginbottom">\r\n    <h3 class="title">Logo&nbsp;Editing</h3>\r\n  </div>    \r\n  <p>An overview for customizing your logo with your organization or company name and logo.</p>\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=9&amp;Itemid=10" class="readon"><span>Read More</span></a>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<p class="notice">Go to <strong>Extensions &rarr; Template Manager &rarr; <em>rt_voxel</em></strong>. Mouseover the labels to view a description of each template parameter.</p>', '', 1, 0, 0, 11, '2012-04-13 08:15:43', 42, '', '2012-05-01 16:26:36', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:15:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 5, '', '', 1, 161, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 50, 'Installation Instructions', 'installation-instructions', '', '<p>The following is a guide that covers how to set up your new <strong>Voxel</strong> template on your Joomla! site. Here you can find an overview of the files included in the Voxel release and instructions on installing and activating the template in your Joomla! install.</p>\r\n\r\n<p class="notice"><strong>Note:</strong> The <strong>Bundle</strong> Template is only necessary if the Gantry Library is not installed at <strong>/libraries/gantry directory</strong>.</p>\r\n\r\n<br />\r\n\r\n<h3>Step 1 - Installation</h3>\r\n\r\n<ol class="largemarginbottom">\r\n  <li>Install from <strong>Admin &rarr; Extensions &rarr; Extensions Manager</strong></li>\r\n  <li>Browse for <strong>rt_voxel.zip</strong> and click <strong>Upload &amp; Install</strong></li>  \r\n</ol>\r\n\r\n<p class="rt-relative">\r\n  <img width="585" height="268" class="rt-image" alt="Image" src="images/rocketlauncher/installation/installation-1.jpg" />\r\n</p>\r\n\r\n<div class="clear"></div>\r\n\r\n<h3>Step 2 - Template Default</h3>\r\n\r\n<ol class="largemarginbottom">\r\n  <li>Make the template default at <strong>Admin &rarr; Extensions &rarr; Template Manager</strong></li>\r\n  <li>Select <strong>rt_voxel</strong></li>\r\n  <li>Press <strong>Make Default</strong></li>\r\n</ol>\r\n\r\n<p class="rt-relative">\r\n  <img width="585" height="258" class="rt-image" alt="Image" src="images/rocketlauncher/installation/installation-2.jpg" />\r\n</p>\r\n\r\n<div class="clear"></div>\r\n\r\n<div class="module-title"><h2 class="title">RocketLauncher Instructions</h2><div class="clear"></div></div>\r\n\r\n<p>We always recommend installing a <strong>RocketLauncher</strong> first to trial and understand the template more effectively. It must be installed as <strong>new</strong>, and <strong>not</strong> over an existing Joomla install.</p>\r\n\r\n<h3>Step 1 - Upload</h3>\r\n\r\n<ul class="medmarginbottom">\r\n  <li><strong>Download</strong> the RocketLauncher</li>\r\n  <li><strong>Unzip</strong> the file</li>\r\n  <li><strong>Upload</strong> the created folder to your server</li>\r\n</ul>\r\n\r\n<p class="notice"><strong>Note:</strong> You can upload all the files via FTP, or use cPanel or SSH to upload the zip and unzip directly onto the server. Enquire with your hosting provider.</p>\r\n\r\n<h3>Step 2 - Installation</h3>\r\n\r\n<ul>\r\n  <li>Go to <a href="#">www.yoursite.com/<em>*folder name*</em></a></li>\r\n  <li>Follow the Installation instructions</li>\r\n  <li>Ensure you click <em class="bold2">Install Sample Data</em> during installation</li>\r\n  <li>Remove the installation folder in the Installation interface</li>\r\n</ul>', '', 1, 0, 0, 11, '2012-04-13 08:16:03', 42, '', '2012-04-23 16:37:26', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:16:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 0, 4, '', '', 1, 86, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 51, 'Logo Editing', 'logo-editing', '', '<p>There are two methods of changing the Voxel logo: <strong>via the logo picker</strong> and <strong>manual</strong> change.</p>\r\n\r\n<h3>The Logo Picker</h3>\r\n\r\n<ol>\r\n  <li>Enable <strong>Logo</strong> and set to <strong>Custom</strong> at <em>Admin &rarr; Extensions &rarr; Templates Manager &rarr; rt_voxel &rarr; Features.</em></li>\r\n  <li>Set <strong>Logo Picker</strong> to either <strong>RokGallery</strong> or <strong>MediaManager</strong>.</li>\r\n  <li><strong>Select</strong> your logo, <strong>Insert</strong> and <strong>Save</strong></li>\r\n</ol>\r\n\r\n<br />\r\n\r\n<p><img width="570" height="170" src="images/rocketlauncher/logo-editing/logo-panel.jpg" alt="Logo Panel" class="rt-image" /></p>\r\n\r\n<p><img width="570" height="390" src="images/rocketlauncher/logo-editing/select-logo.jpg" alt="Select Logo" class="rt-image" /></p>\r\n\r\n<div class="clear"></div>\r\n\r\n<h3>Manual Change</h3>\r\n\r\n<ol>\r\n  <li>Enable <strong>Logo</strong> and set <strong>Type</strong> to <strong>Voxel</strong>.</li>\r\n  <li>Upload <strong>logo.png</strong> to the <br /><strong> /templates/rt_voxel/images/logo/*style*</strong> directory</li>\r\n  <li>Clear your browser cache and refresh.</li>\r\n</ol>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<p>If you cannot see your new logo, ensure you have uploaded it to the right directory and the directory permissions are writeable. Enquire with your hosting provider.</p>\r\n\r\n<a target="_blank" href="http://www.rockettheme.com/joomla-templates/voxel" class="readon"><span>Download Sources Here</span></a>\r\n\r\n<div class="clear"></div>', '', 1, 0, 0, 11, '2012-04-13 08:16:19', 42, '', '2012-05-01 08:16:14', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:16:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 0, 3, '', '', 1, 104, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 52, 'Preset Styles', 'preset-styles', '', '<div class="module-title"><h2 class="title">Style Setting</h2><div class="clear"></div></div>\r\n\r\n<p>The <strong>Style Settings</strong> panel in the Gantry based theme administration interface provides several options for configuring the main built in stylistic aspects of the template.</p>\r\n\r\n<img class="rt-image" src="images/rocketlauncher/styles/admin-style-panel.jpg" alt="Style" width="585" height="412" />\r\n\r\n<br /><br />\r\n\r\n<div class="module-title"><h2 class="title">Assigning a Style to a Specific Page</h2><div class="clear"></div></div>\r\n\r\n<p>With Gantry, the ability to assign a certain style to an individual page has never been easier and/or more efficient. Just follow these simple steps:</p>\r\n\r\n<ul>\r\n  <li>Go to <strong>Extensions → Template Manager → rt_voxel &rarr; Assignments &rarr; <em>*Menu Item*</em></strong></li>  \r\n  <li>Select your preset from <strong>Show Presets</strong>, configure and save.</li>\r\n</ul>\r\n\r\n<a href="http://gantry-framework.org/documentation/joomla/configure/per-menu-item-configuration" class="readon largemargintop"><span>Gantry Framework: Per Menu Item Controls</span></a>\r\n', '', 1, 0, 0, 11, '2012-04-13 08:16:33', 42, '', '2012-05-01 18:54:29', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:16:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 21, 0, 2, '', '', 1, 219, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 53, 'About Joomla!', 'about-joomla', '', '<h3>What is Joomla?</h3>\n<p>Joomla is an award-winning content management system (CMS), which enables you to build Web sites and powerful online applications. Many aspects, including its ease-of-use and extensibility, have made Joomla the most popular Web site software available. Best of all, Joomla is an open source solution that is freely available to everyone.</p>\n\n<h3>What Joomla! can do?</h3>\n<p>Joomla is used all over the world to power Web sites of all shapes and sizes. For example:</p>\n<ul>\n  <li>Corporate Web sites or portals</li>\n  <li>Corporate intranets and extranets</li>\n  <li>Online magazines, newspapers, and publications</li>\n  <li>E-commerce and online reservations</li>\n  <li>Government applications</li>\n  <li>Small business Web sites</li>\n  <li>Non-profit and organizational Web sites</li>\n  <li>Community-based portals</li>\n  <li>School and church Web sites</li>\n  <li>Personal or family homepages</li>\n</ul>\n\n<br />\n\n<h3>Site and Administrator</h3>\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p>\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\n\n<h3>Learn More</h3>\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org" target="_blank">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org" target="_blank"> Joomla! forums</a>.</p>\n\n<a href="http://www.joomla.org/" target="_blank" class="readon"><span>Visit Joomla!</span></a>', '', 1, 0, 0, 11, '2012-04-13 08:17:08', 42, '', '2012-04-20 19:24:26', 42, 0, '0000-00-00 00:00:00', '2012-04-13 08:17:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 209, 0, 1, '', '', 1, 56, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 55, 'Sample Content 1', 'sample-content-1', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 56, 'Sample Content 2', 'sample-content-2', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '2012-04-13 17:06:40', 42, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 57, 'Sample Content 3', 'sample-content-3', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '2012-04-13 17:06:52', 42, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 58, 'Sample Content 4', 'sample-content-4', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '2012-04-13 17:06:59', 42, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 59, 'Sample Content 5', 'sample-content-5', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '2012-04-13 17:07:09', 42, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 60, 'Sample Content 6', 'sample-content-6', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '2012-04-13 17:07:15', 42, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 61, 'Sample Content 7', 'sample-content-7', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '2012-04-13 17:07:21', 42, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 62, 'Sample Content 8', 'sample-content-8', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dapibus, tellus ac ornare aliquam, massa diam tristique urna, id faucibus lectus erat ut pede.</p>\r\n\r\n<p>Maecenas varius neque nec libero laoreet faucibus. Phasellus sodales, lectus sed vulputate rutrum, ipsum nulla lacinia magna, sed imperdiet ligula nisi eu ipsum. Donec nunc magna, posuere eget, aliquam in, vulputate in, lacus.</p>\r\n\r\n', '\r\n\r\n<p>In erat. Pellentesque erat. Mauris vehicula vestibulum justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla pulvinar est. Integer urna. Pellentesque pulvinar dui a magna. Nulla facilisi.</p>\r\n\r\n<p>Proin imperdiet. Aliquam ornare, metus vitae gravida dignissim, nisi nisl ultricies felis, ac tristique enim pede eget elit. Integer non erat nec turpis sollicitudin malesuada. Vestibulum dapibus. Nulla facilisi. Nulla iaculis, leo sit amet mollis luctus, sapien eros consectetur dolor, eu faucibus elit nibh eu nibh. Maecenas lacus pede, lobortis non, rhoncus id, tristique a, mi. Cras auctor libero vitae sem vestibulum euismod. Nunc fermentum.</p>', 1, 0, 0, 12, '2012-04-13 17:06:13', 42, '', '2012-04-13 17:07:28', 42, 0, '0000-00-00 00:00:00', '2012-04-13 17:06:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 65, 'Top News of the Week', 'top-news-of-the-week', '', '<div class="rt-floatright">\r\n  {loadposition fp-featured-rokgallery}\r\n</div>\r\n\r\n<p><strong>Voxel</strong>, the May 2012 template release, is a <strong>magazine</strong> orientated design. Its elegant and engaging style provides a <strong>rich</strong> back-drop to your site content. The new <strong>Mosaic</strong> layout provides a powerful mechanism to easily show content, in a <strong>dynamic</strong> fashion.</p>\r\n\r\n<p>The template has support for various RocketTheme <strong>Extensions</strong>, a beautifully styled menu, amongst other features.</p>\r\n\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=108" class="readon">Read More...</a>\r\n\r\n<div class="clear"></div>', '', 1, 0, 0, 11, '2012-04-16 17:50:48', 42, 'Editor', '2012-05-01 15:05:26', 42, 0, '0000-00-00 00:00:00', '2012-04-16 17:50:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 38, 0, 0, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(21, 67, 'RokSprocket Module', 'roksprocket', '', '<div class="rt-demo-grid-4">\r\n  <img src="images/rocketlauncher/frontpage/roksprocket-tabs/img1.jpg" width="267" height="160" alt="Image" />\r\n  \r\n  <p class="largemargintop nomarginbottom">A powerful <em>switchblade</em> content extension, that provides an array of displays, all within one single modular framework. RokSprocket supports a comprehensive control interface, for all layout modes, and is powered by Ajax.</p>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-1.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Features Mode</strong></h4>\r\n  <p>A showcase / slideshow layout, with image and text support.</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-2.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Lists Mode</strong></h4>\r\n  <p>An accordion / vertical list layout, to display text and/or thumbs.</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-3.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Headlines Mode</strong></h4>\r\n  <p>A ticker layout, for displaying headlines or text snippets.</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-4.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Tabs Mode</strong></h4>\r\n  <p class="nomarginbottom">A tabbed content layout mode with text/image support.</p>\r\n  \r\n</div>\r\n\r\n<div class="clear"></div>', '', 1, 0, 0, 15, '2012-04-16 17:59:51', 42, '', '2012-05-01 15:10:55', 42, 0, '0000-00-00 00:00:00', '2012-04-16 17:59:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 34, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(22, 68, 'Menu Systems', 'menu-systems', '', '<div class="rt-demo-grid-4">\r\n  <img src="images/rocketlauncher/frontpage/roksprocket-tabs/img2.jpg" width="267" height="160" alt="Image" />\r\n  \r\n  <p class="largemargintop nomarginbottom">With RokNavMenu, our custom menu framework extension, the template provides two specific menu options, Fusion and SplitMenu. Both are configurable in the template manager, and also individually for each menu item.</p>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-5.jpg" width="80" height="70" alt="image" />\r\n  <h4 class="nomarginall"><strong>Fusion with MegaMenu</strong></h4>\r\n  <p>Fusion is a powerful, Mootools enhanced, CSS dropdown menu. It has support for multiple columns of varying widths, inline icons and modules/positions, distribution control, animation control plus many other features.</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-6.jpg" width="80" height="70" alt="image" />\r\n  <h4 class="nomarginall"><strong>SplitMenu</strong></h4>\r\n  <p class="nomarginbottom">SplitMenu is static, multi-tiered menu option. Parent items, and 1st level children appear horizontally in the menu bar, and all subsequent children in the sidebar.</p>\r\n</div>\r\n\r\n<div class="clear"></div>', '', 1, 0, 0, 15, '2012-04-16 17:59:51', 42, '', '2012-05-01 15:10:55', 42, 0, '0000-00-00 00:00:00', '2012-04-16 17:59:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 69, 'Tabs Content 3', 'tabs-content-3', '', '<div class="rt-demo-grid-4">\r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-7.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Some Text Here</strong></h4>\r\n  <p>Praesent adipiscing libero vel sem consequat eget mollis leo auctor</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-8.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Some Text Here</strong></h4>\r\n  <p>Praesent adipiscing libero vel sem consequat eget mollis leo auctor</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-9.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Some Text Here</strong></h4>\r\n  <p>Praesent adipiscing libero vel sem consequat eget mollis leo auctor</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-10.jpg" width="55" height="55" alt="image" />\r\n  <h4 class="nomarginall"><strong>Some Text Here</strong></h4>\r\n  <p class="nomarginbottom">Praesent adipiscing libero vel sem consequat eget mollis leo auctor</p>\r\n  <div class="clear"></div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <img src="images/rocketlauncher/frontpage/roksprocket-tabs/img3.jpg" width="267" height="160" alt="Image" />\r\n  \r\n  <p class="largemargintop nomarginbottom">Praesent adipiscing libero vel sem consequat eget mollis leo auctor. Maecenas risus leo, tempor a venenatis a, adipiscing quis diam. Donec in dolor neque, quis placerat sem. Maecenas in aliquet nunc. Ut est magna, lacinia nec consectetur.</p>\r\n</div>\r\n\r\n<div class="clear"></div>', '', -2, 0, 0, 15, '2012-04-16 17:59:51', 42, '', '2012-04-24 14:54:27', 42, 0, '0000-00-00 00:00:00', '2012-04-16 17:59:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 70, 'Integrated Extensions', 'integrated-extensions', '', '<div class="rt-demo-grid-4">\r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-11.jpg" width="80" height="70" alt="image" />\r\n  <h4 class="nomarginall"><strong>RokAjaxSearch</strong></h4>\r\n  <p>A ajax enhanced search module. It has support for Joomla search, as well as Google Web, Images, Videos and Blog search, amongst other configuration options.</p>\r\n  <div class="clear"></div>\r\n  \r\n  <img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/fp-thumb-12.jpg" width="80" height="70" alt="image" />\r\n  <h4 class="nomarginall"><strong>RokTwittie</strong></h4>\r\n  <p class="nomarginbottom">Bring Twitter to your site with RokTwittie. Display username tweets, search tweets or both; as well as general profile information. All display options are configurable. A standalone module for use with any theme.</p>\r\n  <div class="clear"></div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n  <img src="images/rocketlauncher/frontpage/roksprocket-tabs/img4.jpg" width="267" height="160" alt="Image" />\r\n  \r\n  <p class="largemargintop nomarginbottom">Voxel has integrated styling for a number of RocketTheme extensions, including RokSprocket, in all its layout modes. These are template-based styles to visually incorporate the addons.</p>\r\n</div>\r\n\r\n<div class="clear"></div>', '', 1, 0, 0, 15, '2012-04-16 17:59:51', 42, '', '2012-05-01 15:15:09', 42, 0, '0000-00-00 00:00:00', '2012-04-16 17:59:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 54, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 72, 'RokSprocket Extension', 'roksprocket-extension', '', '<p>RokSprocket is a powerful switchblade content extension, that provides an array of display options, all within one single modular framework that supports a comprehensive control interface, for all layout modes, and is powered by Ajax.</p>\r\n', '', 1, 0, 0, 16, '2012-04-16 19:33:46', 42, '', '2012-05-01 11:14:26', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:33:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 73, 'Fusion and Split Menu', 'fusion-and-split-menu', '', '<p>Two menu systems are integrated into Voxel, Mootools enhanced CSS Dropdown Fusion Menu and Triple Level Split Menu, that support for multi-columns, custom widths, inline icons and much more.</p>\r\n', '', 1, 0, 0, 16, '2012-04-16 19:34:28', 42, '', '2012-05-01 11:12:55', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:34:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 74, 'Customize the Logo', 'customize-the-logo', '', '<p>There are two methods of changing the Voxel logo: either via the logo picker or by manual change and you can set Logo Picker to either RokGallery or the Media Manager.</p>\r\n', '', 1, 0, 0, 16, '2012-04-16 19:35:06', 42, '', '2012-05-01 11:10:53', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:35:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 75, 'Content Typography', 'content-typography', '', '<p>Typography is a fundamental part of a template to characterize your site content, such as a plethora of list formats and notice styles.</p>\r\n', '', 1, 0, 0, 16, '2012-04-16 19:35:27', 42, '', '2012-05-01 11:10:23', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:35:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 77, 'K2 Styling', 'k2-styling', '', '<p>Voxel has custom styling to visually integrate K2, a powerful Content Control Kit extension, into the template, for a seamless appearance.</p> ', '', 1, 0, 0, 16, '2012-04-30 18:54:23', 42, '', '2012-05-01 11:13:37', 42, 0, '0000-00-00 00:00:00', '2012-04-30 18:54:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 78, 'RokGallery', 'rokgallery', '', '<p>RokGallery is an advanced gallery extension, resting on a custom tag based architecture with a non-destructive slice editor to allow you edit photos easily and swiftly.</p>', '', 1, 0, 0, 16, '2012-04-30 18:56:08', 42, '', '2012-05-01 11:14:01', 42, 0, '0000-00-00 00:00:00', '2012-04-30 18:56:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 80, 'Content Typography', 'content-typography', '', '<h4>Content Typography</h4>\r\n<div>HTML / RokCandy Macros</div>\r\n', '', 1, 0, 0, 17, '2012-04-16 19:35:27', 42, '', '2012-05-01 15:35:33', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:35:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 81, 'Changing the Logo', 'changing-the-logo', '', '<h4>Changing the Logo</h4>\r\n<div>Logo Picker or Manually</div>\r\n\r\n', '', 1, 0, 0, 17, '2012-04-16 19:35:06', 42, '', '2012-05-01 15:35:55', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:35:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 82, 'RokBooster', 'rokbooster', '', '<h4>RokBooster</h4>\r\n<div>Performance Plugin</div>\r\n', '', 1, 0, 0, 17, '2012-04-16 19:34:28', 42, '', '2012-05-02 06:45:41', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:34:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 83, 'K2 Styling', 'k2-styling', '', '<h4>K2 Styling</h4>\r\n<div>Visual K2 Integration</div>\r\n', '', 1, 0, 0, 17, '2012-04-30 18:54:23', 42, '', '2012-05-01 11:47:33', 42, 0, '0000-00-00 00:00:00', '2012-04-30 18:54:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 84, 'RokGallery', 'rokgallery', '', '<h4>RokGallery</h4>\r\n<div>Advanced Gallery Extension</div>', '', 1, 0, 0, 17, '2012-04-30 18:56:08', 42, '', '2012-05-01 11:49:14', 42, 0, '0000-00-00 00:00:00', '2012-04-30 18:56:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 85, 'RokSprocket Extension', 'roksprocket-extension', '', '<h4>RokSprocket</h4>\r\n<div>Revolutionary Extension</div>\r\n', '', 1, 0, 0, 17, '2012-04-16 19:33:46', 42, '', '2012-05-01 11:47:19', 42, 0, '0000-00-00 00:00:00', '2012-04-16 19:33:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 16, 0, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

DROP TABLE IF EXISTS `#__content_frontpage`;
CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
);

--
-- Dumping data for table `#__content_frontpage`
--

INSERT INTO `#__content_frontpage` (`content_id`, `ordering`) VALUES
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

DROP TABLE IF EXISTS `#__content_rating`;
CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
);

--
-- Dumping data for table `#__content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

DROP TABLE IF EXISTS `#__core_log_searches`;
CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
);

--
-- Dumping data for table `#__core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

DROP TABLE IF EXISTS `#__extensions`;
CREATE TABLE IF NOT EXISTS `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
);

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"contact_layout":"_:default","show_contact_category":"hide","show_contact_list":"0","presentation_style":"plain","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"0","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","count_clicks":"1","icons":2,"link_icons":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2008","author":"PHPMailer","copyright":"Copyright (C) PHPMailer.","authorEmail":"","authorUrl":"http:\\/\\/phpmailer.codeworxtech.com\\/","version":"2.5.0","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2008","author":"SimplePie","copyright":"Copyright (C) 2008 SimplePie","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.0.1","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2008","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"2.5.0","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.4.9","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 18, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 12, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 13, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 14, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 17, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 19, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 16, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"April 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"library","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"${project.description}","group":""}', '{}', '{"last_update":1335985421}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Gantry","type":"plugin","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"Gantry System Plugin for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(10005, 'System - RokBox', 'plugin', 'rokbox', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokBox","type":"plugin","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.2","description":"RokBox System Plugin","group":""}', '{"theme":"clean","custom-theme":"sample","custom-legacy":"0","width":"640","height":"460","transition":"Quad.easeOut","duration":"200","chase":"40","effect":"quicksilver","frame-border":"20","content-padding":"0","arrows-height":"35","captions":"1","captionsDelay":"800","scrolling":"0","keyEvents":"1","overlay_background":"#000000","overlay_opacity":"0.85","overlay_duration":"200","overlay_transition":"Quad.easeInOut","autoplay":"true","ytautoplay":"0","ythighquality":"0","controller":"false","bgcolor":"#f3f3f3","vimeoColor":"00adef","vimeoPortrait":"0","vimeoTitle":"0","vimeoFullScreen":"1","vimeoByline":"0"}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10006, 'Content - RokBox', 'plugin', 'rokbox', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - RokBox","type":"plugin","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.2","description":"To be used with a RokBox enabled RocketTheme Joomla! template.  Syntax is {rokbox}link{\\/rokbox}.  If you want the image to be part of an ''album'', you can use the syntax {rokbox album=|albumname|}link{\\/rokbox}.  To provide text descriptions, please use the syntax {rokbox title=|your description|}link{\\/rokbox}. To specify a thumbnail, use the syntax {rokbox thumb=|thumbnail_link.jpg|}link{\\/rokbox}. If you want to use a text link, you can specify the text using syntax: {rokbox text=|your link text here|}link{\\/rokbox}. You can also use album, title, thumb and text in the same tag.","group":""}', '{"remote_sizes":"0","thumb_ext":"_thumb","thumb_class":"album","thumb_custom":"0","thumb_dir":"cache","thumb_width":"150","thumb_height":"100","thumb_quality":"90"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10010, 'RokCandy', 'component', 'com_rokcandy', '', 1, 1, 0, 0, '{"legacy":false,"name":"RokCandy","type":"component","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.3","description":"\\n\\t\\tRokCandy is a simple yet powerful macro system for Joomla 1.6.  It provides the ability to create and categorize macros that can be used throughout your site.\\n\\t","group":""}', '{"forcecache":"0","adminenabled":"0","editenabled":"0","contentPlugin":"0","disabled":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'Button - RokCandy', 'plugin', 'rokcandy', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"Button - RokCandy","type":"plugin","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.3","description":"This is an Editor Button to allow selection of RokCandy macros","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10012, 'System - RokCandy', 'plugin', 'rokcandy', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokCandy","type":"plugin","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.3","description":"This is the RokCandy system plugin that performs the macro replacement","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10014, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokExtender","type":"plugin","creationDate":"February 24, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"System - Gantry","group":""}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10015, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokNavMenu","type":"module","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.10","description":"RocketTheme Customizable Navigation Menu","group":""}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Editor - RokPad', 'plugin', 'rokpad', 'editors', 0, 1, 1, 0, '{"legacy":false,"name":"Editor - RokPad","type":"plugin","creationDate":"March 2, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"This loads an advanced text editor for developers with highlight, search & replace, lines counter, auto indent, multi-language and much more","group":""}', '{"spacer_parser_type":"","rokpad-parser":"xhtmlmixed","rokpad-tidylevel":"XHTML 1.0 Transitional","rokpad-show-formatter":"1","spacer_editor_parameters":"","rokpad-height":"350","rokpad-passdelay":"200","rokpad-passtime":"50","rokpad-linenumberdelay":"200","rokpad-linenumbertime":"50","rokpad-continuous":"500","rokpad-matchparens":"1","rokpad-history":"50","rokpad-history-delay":"800","rokpad-lineHandler":"1","rokpad-textwrapperHandler":"1","rokpad-indentunit":"2","rokpad-tabmode":"indent","rokpad-loadindent":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10020, 'System - RokCommon', 'plugin', 'rokcommon', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokCommon","type":"plugin","creationDate":"May 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6.2","description":"RokCommon System Plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10021, 'RokGallery', 'component', 'com_rokgallery', '', 1, 1, 0, 0, '{"legacy":false,"name":"RokGallery","type":"component","creationDate":"April 15, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.11","description":"A Gallery component for Joomla 1.6 from RocketTheme.","group":""}', '{"allow_duplicate_files":"1","autoclear_successful_jobs":"0","publish_slices_on_file_publish":"1","gallery_remove_slice":"1","gallery_autopublish":"1","default_thumb_xsize":"150","default_thumb_ysize":"150","default_thumb_keep_aspect":"1","default_thumb_background":"","jpeg_quality":"100","png_compression":"0","love_text":"ROKGALLERY_LOVE","unlove_text":"ROKGALLERY_UNLOVE"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'RokGallery Module', 'module', 'mod_rokgallery', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokGallery Module","type":"module","creationDate":"April 15, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.11","description":"A module to allow you to display galleries from the RokGallery component in a module position.","group":""}', '{"link":"0","default_menuitem":"0","title":"false","caption":"false","sort_by":"gallery_ordering","sort_direction":"ASC","limit_count":"10","style":"light","layout":"grid","columns":"1","arrows":"onhover","navigation":"thumbnails","animation_type":"random","animation_duration":"500","autoplay_enabled":"0","autoplay_delay":"7","showcase_arrows":"onhover","showcase_image_position":"left","showcase_imgpadding":"0","showcase_fixedheight":"0","showcase_animatedheight":"1","showcase_animation_type":"random","showcase_captionsanimation":"crossfade","showcase_animation_duration":"500","showcase_autoplay_enabled":"0","showcase_autoplay_delay":"7","cache":"0","module_cache":"1","cache_time":"900","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Button - RokGallery', 'plugin', 'rokgallery', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"Button - RokGallery","type":"plugin","creationDate":"April 15, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.11","description":"This is an Editor Button to allow selection of RokGallery Slices","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10024, 'System - RokGallery', 'plugin', 'rokgallery', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokGallery","type":"plugin","creationDate":"April 15, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.11","description":"A system level support plugin for RokGallery.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10026, 'RokTwittie', 'module', 'mod_roktwittie', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokTwittie","type":"module","creationDate":"January 24, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.6","description":"RokTwittie is a Twitter module that lets you display up to 140 tweets, display tweets through oAuth authentication and display Twitter search results. RokTwittie supports many settings like multiple users to display, merged tweets and comes with a light and dark built-in styles.","group":""}', '{"@status":"","use_oauth":"0","consumer_key":"","consumer_secret":"","@signin":"","moduleclass_sfx":"","load_css":"1","enable_cache":"1","timeout_connect":"3","timeout_response":"6","enable_cache_time":"5","usernames":"rockettheme","inactive_opacity":"0.5","show_default_avatar":"1","header_style":"dark","include_rts":"1","enable_statuses":"1","status_external":"1","show_feed":"1","show_follow_updates":"1","show_bio":"1","show_web":"1","show_location":"1","show_updates":"1","show_followers":"1","show_following":"1","show_following_icons":"1","following_icons_count":"10","show_viewall":"1","enable_usernames":"1","enable_usernames_avatar":"1","usernames_avatar_size":"48","usernames_count_size":"4","usernames_count_merged":"1","enable_usernames_externals":"1","enable_usernames_source":"1","enable_usernames_user":"1","enable_search":"1","search":"@rockettheme","enable_search_avatar":"1","search_avatar_size":"48","search_count_size":"4","enable_search_externals":"1","enable_search_source":"1","enable_search_user":"1","oauth_token":"","oauth_token_secret":"","cache":"0","module_cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'RokAjaxSearch', 'module', 'mod_rokajaxsearch', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokAjaxSearch","type":"module","creationDate":"March 2, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"RokAjaxSearch is an ajaxian searcher that displays the results immediately and allows to choose the proper one.","group":""}', '{"moduleclass_sfx":"","search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","spacer_style_options":"","include_css":"1","theme":"blue","spacer_advanced_search":"","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","spacer_advanced_settings":"","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'RokCommon', 'library', 'lib_rokcommon', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokCommon","type":"library","creationDate":"May 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.6.2","description":"RokCommon Shared Library","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'RokSprocket', 'component', 'com_roksprocket', '', 1, 1, 0, 0, '{"legacy":false,"name":"RokSprocket","type":"component","creationDate":"May 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.1","description":"RokSprocket Component for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'RokSprocket Module', 'module', 'mod_roksprocket', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokSprocket Module","type":"module","creationDate":"May 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.1","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'System - RokSprocket', 'plugin', 'roksprocket', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokSprocket","type":"plugin","creationDate":"May 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.1","description":"RokSprocket System Plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10034, 'Content - RokInjectModule', 'plugin', 'rokinjectmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - RokInjectModule","type":"plugin","creationDate":"April 10, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.2","description":"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10038, 'rt_voxel', 'template', 'rt_voxel', '', 0, 1, 1, 0, '{"legacy":false,"name":"rt_voxel","type":"template","creationDate":" May 2, 2012","author":"RocketTheme, LLC","copyright":"Copyright 2005-2012 - RocketTheme.com","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"Voxel","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'com_gantry', 'component', 'com_gantry', '', 1, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"${project.description}","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10055, 'System - RokBooster', 'plugin', 'rokbooster', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"System - RokBooster","type":"plugin","creationDate":"May 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0.0","description":"\\n        \\n        <div class=\\"booster-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbooster\\/assets\\/images\\/rokbooster.jpg\\" class=\\"img-padding\\" \\/><h1>RokBooster<\\/h1>\\n        <p>Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress<\\/strong> and <strong>combine<\\/strong> your <strong>CSS<\\/strong> and <strong>JavaScript<\\/strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n            <li>Combine and compress CSS and JavaScript into as few files as possible<\\/li>\\n            <li>GZip compression used to send CSS and JavaScript files<\\/li>\\n            <li>Compress Inline CSS and JavaScript<\\/li>\\n            <li>Customizable cache timeout<\\/li>\\n            <li>Background rendering, so initial file processing won''t slow your users down<\\/li>\\n            <li>Full page scan allows for non-header JavaScript and CSS to be included<\\/li>\\n            <li>Ability to ignore specific CSS and JavaScript files<\\/li>\\n        <\\/ul>\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit<\\/p>\\n        <\\/div>\\n        \\n    ","group":""}', '{"cache_time":"60","minify_css":"1","style_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_css":"1","imported_css":"1","minify_js":"1","script_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_js":"1","ignored_files":"","scan_method":"header","use_background_processing":"1","disable_for_ie":"1"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_filters`
--

DROP TABLE IF EXISTS `#__finder_filters`;
CREATE TABLE IF NOT EXISTS `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
);

--
-- Dumping data for table `#__finder_filters`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links`
--

DROP TABLE IF EXISTS `#__finder_links`;
CREATE TABLE IF NOT EXISTS `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
);

--
-- Dumping data for table `#__finder_links`
--

INSERT INTO `#__finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_k2&view=item&id=1', 'index.php?option=com_k2&view=item&id=1:quis-orci-fermentum-ota-eget-facilisis', 'Quis Orci Fermentum Ota Eget Facilisis', 'Mauris egestas auctor mauris vel mattis. Integer venenatis massa mi. Pellentesque cursus, turpis ac pulvinar posuere, tortor velit iaculis sem, non ullar justo lorem nec nibh. Nullam metus enim, consequat ac iaculis eu, adipiscing a velit. Nullam eget vel', '2012-04-27 12:46:14', '6da4ddbf3bc38812fa2ec94212eae9fe', 1, 1, 1, '*', '2012-04-26 18:23:20', '0000-00-00 00:00:00', '2012-04-26 18:23:20', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2231223b733a353a22616c696173223b733a33383a22717569732d6f7263692d6665726d656e74756d2d6f74612d656765742d666163696c69736973223b733a373a2273756d6d617279223b733a3236373a223c703e4d6175726973206567657374617320617563746f72206d61757269732076656c206d61747469732e20496e74656765722076656e656e61746973206d61737361206d692e2050656c6c656e746573717565206375727375732c207475727069732061632070756c76696e617220706f73756572652c20746f72746f722076656c697420696163756c69732073656d2c206e6f6e20756c6c6172206a7573746f206c6f72656d206e6563206e6962682e204e756c6c616d206d6574757320656e696d2c20636f6e73657175617420616320696163756c69732065752c2061646970697363696e6720612076656c69742e204e756c6c616d20656765742076656c69742e3c2f703e0d0a223b733a343a22626f6479223b733a3236383a220d0a3c703e566573746962756c756d20616363756d73616e207363656c6572697371756520657261742c20657520756c7472696365732064756920696163756c69732065742e204372617320766f6c7574706174206f64696f2061632065737420696d7065726469657420666163696c697369732e204d617572697320766573746962756c756d206e69736c206e6f6e2076656c697420756c6c616d636f7270657220696e2076756c707574617465206d617572697320657569736d6f642e20566976616d7573206174206f726e61726520656e696d2e204375726162697475722074696e636964756e742072686f6e63757320657261742c206e65632076756c7075746174652e3c2f703e223b733a353a226361746964223b733a313a2234223b733a31303a22637265617465645f6279223b733a323a223432223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031322d30342d32372031373a34363a3134223b733a31313a226d6f6469666965645f6279223b733a323a223432223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3133363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3772656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31383a2264656661756c7455736572734974656d6964223b733a303a22223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31373a2264656661756c74546167734974656d6964223b733a303a22223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323030223b733a31303a226974656d496d6167654d223b733a333a22323638223b733a31303a226974656d496d6167654c223b733a333a22353530223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a353a22536d616c6c223b733a383a22636f6d6d656e7473223b733a313a2231223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2230223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a393a22726563617074636861223b733a313a2230223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a31313a226b32436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a383a227265646972656374223b733a303a22223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a31353a225345465265706c6163656d656e7473223b733a3538333a22c385c2a07c532c20c385e280997c4f2c20c385c2bd7c5a2c20c385c2a17c732c20c385e2809c7c6f652c20c385c2be7c7a2c20c385c2b87c592c20c382c2a57c592c20c382c2b57c752c20c383e282ac7c412c20c383efbfbd7c412c20c383e2809a7c412c20c383c6927c412c20c383e2809e7c412c20c383e280a67c412c20c383e280a07c412c20c383e280a17c432c20c383cb867c452c20c383e280b07c452c20c383c5a07c452c20c383e280b97c452c20c383c5927c492c20c383efbfbd7c492c20c383c5bd7c492c20c383efbfbd7c492c20c383efbfbd7c442c20c383e280987c4e2c20c383e280997c4f2c20c383e2809c7c4f2c20c383e2809d7c4f2c20c383e280a27c4f2c20c383e280937c4f2c20c383cb9c7c4f2c20c383e284a27c552c20c383c5a17c552c20c383e280ba7c552c20c383c5937c552c20c383efbfbd7c592c20c383c5b87c732c20c383c2a07c612c20c383c2a17c612c20c383c2a27c612c20c383c2a37c612c20c383c2a47c612c20c383c2a57c612c20c383c2a67c612c20c383c2a77c632c20c383c2a87c652c20c383c2a97c652c20c383c2aa7c652c20c383c2ab7c652c20c383c2ac7c692c20c383c2ad7c692c20c383c2ae7c692c20c383c2af7c692c20c383c2b07c6f2c20c383c2b17c6e2c20c383c2b27c6f2c20c383c2b37c6f2c20c383c2b47c6f2c20c383c2b57c6f2c20c383c2b67c6f2c20c383c2b87c6f2c20c383c2b97c752c20c383c2ba7c752c20c383c2bb7c752c20c383c2bc7c752c20c383c2bd7c792c20c383c2bf7c792c20c383c5b87c7373223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2231223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a353a224472616d61223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a34303a22313a717569732d6f7263692d6665726d656e74756d2d6f74612d656765742d666163696c69736973223b733a373a22636174736c7567223b733a373a22343a6472616d61223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d313a717569732d6f7263692d6665726d656e74756d2d6f74612d656765742d666163696c69736973223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a353a224472616d61223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a224472616d61223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d31223b733a353a22726f757465223b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d313a717569732d6f7263692d6665726d656e74756d2d6f74612d656765742d666163696c69736973223b733a353a227469746c65223b733a33383a2251756973204f726369204665726d656e74756d204f7461204567657420466163696c69736973223b733a31313a226465736372697074696f6e223b733a3235383a224d6175726973206567657374617320617563746f72206d61757269732076656c206d61747469732e20496e74656765722076656e656e61746973206d61737361206d692e2050656c6c656e746573717565206375727375732c207475727069732061632070756c76696e617220706f73756572652c20746f72746f722076656c697420696163756c69732073656d2c206e6f6e20756c6c6172206a7573746f206c6f72656d206e6563206e6962682e204e756c6c616d206d6574757320656e696d2c20636f6e73657175617420616320696163756c69732065752c2061646970697363696e6720612076656c69742e204e756c6c616d20656765742076656c69742e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30342d32362031383a32333a3230223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031322d30342d32362031383a32333a3230223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(2, 'index.php?option=com_k2&view=item&id=2', 'index.php?option=com_k2&view=item&id=2:vivamus-at-enmum-ornare-enim-curabitur', 'Vivamus At Enmum Ornare Enim Curabitur', 'Vestibulum accumsan scelerisque erat, eu ultrices dui iaculis et. Cras volutpat odio ac est imperdiet facilisis. Mauris vestibulum nisl non velit ullamcorper in vulputate mauris euismod. Vivamus at ornare enim. Curabitur tincidunt rhoncus erat, nec vulput', '2012-04-27 12:45:56', '78f25fafb1d5f676525709c6f0116d67', 1, 1, 1, '*', '2012-04-26 18:30:06', '0000-00-00 00:00:00', '2012-04-26 18:30:06', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2232223b733a353a22616c696173223b733a33383a22766976616d75732d61742d656e6d756d2d6f726e6172652d656e696d2d637572616269747572223b733a373a2273756d6d617279223b733a3236383a223c703e566573746962756c756d20616363756d73616e207363656c6572697371756520657261742c20657520756c7472696365732064756920696163756c69732065742e204372617320766f6c7574706174206f64696f2061632065737420696d7065726469657420666163696c697369732e204d617572697320766573746962756c756d206e69736c206e6f6e2076656c697420756c6c616d636f7270657220696e2076756c707574617465206d617572697320657569736d6f642e20566976616d7573206174206f726e61726520656e696d2e204375726162697475722074696e636964756e742072686f6e63757320657261742c206e65632076756c7075746174652e3c2f703e0d0a223b733a343a22626f6479223b733a3237333a220d0a3c703e55742065676574206c656f2076656c206f726369207361676974746973207669766572726120617420696e206e6962682e204e756c6c616d20656765742076656c697420736564206f64696f206665756769617420666163696c697369732075742061206f7263692e204e616d20666575676961742c20726973757320696e20696163756c69732074696e636964756e742c2074656c6c7573206e756c6c612076697665727261206573742c2073697420616d6574206469676e697373696d206c696265726f2070757275732069642066656c69732e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65636f2e3c2f703e223b733a353a226361746964223b733a313a2233223b733a31303a22637265617465645f6279223b733a323a223432223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031322d30342d32372031373a34353a3536223b733a31313a226d6f6469666965645f6279223b733a323a223432223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3133363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3772656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31383a2264656661756c7455736572734974656d6964223b733a303a22223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31373a2264656661756c74546167734974656d6964223b733a303a22223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323030223b733a31303a226974656d496d6167654d223b733a333a22323638223b733a31303a226974656d496d6167654c223b733a333a22353530223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a353a22536d616c6c223b733a383a22636f6d6d656e7473223b733a313a2231223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2230223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a393a22726563617074636861223b733a313a2230223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a31313a226b32436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a383a227265646972656374223b733a303a22223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a31353a225345465265706c6163656d656e7473223b733a3538333a22c385c2a07c532c20c385e280997c4f2c20c385c2bd7c5a2c20c385c2a17c732c20c385e2809c7c6f652c20c385c2be7c7a2c20c385c2b87c592c20c382c2a57c592c20c382c2b57c752c20c383e282ac7c412c20c383efbfbd7c412c20c383e2809a7c412c20c383c6927c412c20c383e2809e7c412c20c383e280a67c412c20c383e280a07c412c20c383e280a17c432c20c383cb867c452c20c383e280b07c452c20c383c5a07c452c20c383e280b97c452c20c383c5927c492c20c383efbfbd7c492c20c383c5bd7c492c20c383efbfbd7c492c20c383efbfbd7c442c20c383e280987c4e2c20c383e280997c4f2c20c383e2809c7c4f2c20c383e2809d7c4f2c20c383e280a27c4f2c20c383e280937c4f2c20c383cb9c7c4f2c20c383e284a27c552c20c383c5a17c552c20c383e280ba7c552c20c383c5937c552c20c383efbfbd7c592c20c383c5b87c732c20c383c2a07c612c20c383c2a17c612c20c383c2a27c612c20c383c2a37c612c20c383c2a47c612c20c383c2a57c612c20c383c2a67c612c20c383c2a77c632c20c383c2a87c652c20c383c2a97c652c20c383c2aa7c652c20c383c2ab7c652c20c383c2ac7c692c20c383c2ad7c692c20c383c2ae7c692c20c383c2af7c692c20c383c2b07c6f2c20c383c2b17c6e2c20c383c2b27c6f2c20c383c2b37c6f2c20c383c2b47c6f2c20c383c2b57c6f2c20c383c2b67c6f2c20c383c2b87c6f2c20c383c2b97c752c20c383c2ba7c752c20c383c2bb7c752c20c383c2bc7c752c20c383c2bd7c792c20c383c2bf7c792c20c383c5b87c7373223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2231223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a343a2247616d65223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a34303a22323a766976616d75732d61742d656e6d756d2d6f726e6172652d656e696d2d637572616269747572223b733a373a22636174736c7567223b733a363a22333a67616d65223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d323a766976616d75732d61742d656e6d756d2d6f726e6172652d656e696d2d637572616269747572223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a343a2247616d65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a343a2247616d65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d32223b733a353a22726f757465223b733a37373a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d323a766976616d75732d61742d656e6d756d2d6f726e6172652d656e696d2d637572616269747572223b733a353a227469746c65223b733a33383a22566976616d757320417420456e6d756d204f726e61726520456e696d20437572616269747572223b733a31313a226465736372697074696f6e223b733a3235393a22566573746962756c756d20616363756d73616e207363656c6572697371756520657261742c20657520756c7472696365732064756920696163756c69732065742e204372617320766f6c7574706174206f64696f2061632065737420696d7065726469657420666163696c697369732e204d617572697320766573746962756c756d206e69736c206e6f6e2076656c697420756c6c616d636f7270657220696e2076756c707574617465206d617572697320657569736d6f642e20566976616d7573206174206f726e61726520656e696d2e204375726162697475722074696e636964756e742072686f6e63757320657261742c206e65632076756c7075746174652e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30342d32362031383a33303a3036223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031322d30342d32362031383a33303a3036223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);
INSERT INTO `#__finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(3, 'index.php?option=com_k2&view=item&id=3', 'index.php?option=com_k2&view=item&id=3:halcyon-january-2012-template', 'Proin Quis Nulla Ot Viverra Est Morbi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus magna libero, imperdiet ac varius nec, iaculis ut ante. Proin lacinia porttitor aliquet. Sed dictum elementum ullamcorper. Pellentesque lectus nulla, porta ac dignissim non, ultrices quis ', '2012-04-27 12:45:38', '54e621d5f78cbfe15f67b42243472d9e', 1, 1, 1, '*', '2012-04-26 18:48:26', '0000-00-00 00:00:00', '2012-04-26 18:48:26', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2233223b733a353a22616c696173223b733a32393a2268616c63796f6e2d6a616e756172792d323031322d74656d706c617465223b733a373a2273756d6d617279223b733a3237313a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65632c20696163756c697320757420616e74652e2050726f696e206c6163696e696120706f72747469746f7220616c69717565742e205365642064696374756d20656c656d656e74756d20756c6c616d636f727065722e2050656c6c656e746573717565206c6563747573206e756c6c612c20706f727461206163206469676e697373696d206e6f6e2c20756c7472696365732071756973206c6967756c612e3c2f703e0d0a223b733a343a22626f6479223b733a3237383a220d0a3c703e4e756e632070656c6c656e7465737175652c20656c6974206174206c756374757320756c6c616d636f727065722c2065726f732073617069656e20636f6e7365637465747572206e756c6c612c206e656320657569736d6f64206e756e6320656e696d2075742073656d2e20446f6e6563206e69736c206e6973692c2074696e636964756e742061646970697363696e672064696374756d2076656c2c2063757273757320612061756775652e204d6f726269206e756e632070757275732c2070656c6c656e746573717565207175697320626962656e64756d2076697461652c20616363756d73616e206163206c6f72656d2e20496e74656765722076656e656e61746973206d617373612e3c2f703e223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a323a223432223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031322d30342d32372031373a34353a3338223b733a31313a226d6f6469666965645f6279223b733a323a223432223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3133363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3772656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31383a2264656661756c7455736572734974656d6964223b733a303a22223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31373a2264656661756c74546167734974656d6964223b733a303a22223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323030223b733a31303a226974656d496d6167654d223b733a333a22323638223b733a31303a226974656d496d6167654c223b733a333a22353530223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a353a22536d616c6c223b733a383a22636f6d6d656e7473223b733a313a2231223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2230223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a393a22726563617074636861223b733a313a2230223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a31313a226b32436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a383a227265646972656374223b733a303a22223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a31353a225345465265706c6163656d656e7473223b733a3538333a22c385c2a07c532c20c385e280997c4f2c20c385c2bd7c5a2c20c385c2a17c732c20c385e2809c7c6f652c20c385c2be7c7a2c20c385c2b87c592c20c382c2a57c592c20c382c2b57c752c20c383e282ac7c412c20c383efbfbd7c412c20c383e2809a7c412c20c383c6927c412c20c383e2809e7c412c20c383e280a67c412c20c383e280a07c412c20c383e280a17c432c20c383cb867c452c20c383e280b07c452c20c383c5a07c452c20c383e280b97c452c20c383c5927c492c20c383efbfbd7c492c20c383c5bd7c492c20c383efbfbd7c492c20c383efbfbd7c442c20c383e280987c4e2c20c383e280997c4f2c20c383e2809c7c4f2c20c383e2809d7c4f2c20c383e280a27c4f2c20c383e280937c4f2c20c383cb9c7c4f2c20c383e284a27c552c20c383c5a17c552c20c383e280ba7c552c20c383c5937c552c20c383efbfbd7c592c20c383c5b87c732c20c383c2a07c612c20c383c2a17c612c20c383c2a27c612c20c383c2a37c612c20c383c2a47c612c20c383c2a57c612c20c383c2a67c612c20c383c2a77c632c20c383c2a87c652c20c383c2a97c652c20c383c2aa7c652c20c383c2ab7c652c20c383c2ac7c692c20c383c2ad7c692c20c383c2ae7c692c20c383c2af7c692c20c383c2b07c6f2c20c383c2b17c6e2c20c383c2b27c6f2c20c383c2b37c6f2c20c383c2b47c6f2c20c383c2b57c6f2c20c383c2b67c6f2c20c383c2b87c6f2c20c383c2b97c752c20c383c2ba7c752c20c383c2bb7c752c20c383c2bc7c752c20c383c2bd7c792c20c383c2bf7c792c20c383c5b87c7373223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2231223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a353a224d6f766965223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a33313a22333a68616c63796f6e2d6a616e756172792d323031322d74656d706c617465223b733a373a22636174736c7567223b733a373a22323a6d6f766965223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a36383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d333a68616c63796f6e2d6a616e756172792d323031322d74656d706c617465223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a353a224d6f766965223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a224d6f766965223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d33223b733a353a22726f757465223b733a36383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d333a68616c63796f6e2d6a616e756172792d323031322d74656d706c617465223b733a353a227469746c65223b733a33373a2250726f696e2051756973204e756c6c61204f74205669766572726120457374204d6f726269223b733a31313a226465736372697074696f6e223b733a3236323a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65632c20696163756c697320757420616e74652e2050726f696e206c6163696e696120706f72747469746f7220616c69717565742e205365642064696374756d20656c656d656e74756d20756c6c616d636f727065722e2050656c6c656e746573717565206c6563747573206e756c6c612c20706f727461206163206469676e697373696d206e6f6e2c20756c7472696365732071756973206c6967756c612e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30342d32362031383a34383a3236223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031322d30342d32362031383a34383a3236223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(4, 'index.php?option=com_k2&view=item&id=4', 'index.php?option=com_k2&view=item&id=4:morbi-sollic-itudin-pretium-molestie', 'Morbi Sollic Itudin Pretium Molestie', 'Vestibulum accumsan scelerisque erat, eu ultrices dui iaculis et. Cras volutpat odio ac est imperdiet facilisis. Mauris vestibulum nisl non velit ullamcorper in vulputate mauris euismod. Vivamus at ornare enim. Curabitur tincidunt rhoncus erat.', '2012-04-27 12:45:07', 'a6b7eb2ef6fe091dd2003b4031d3bd43', 1, 1, 1, '*', '2012-04-26 18:49:45', '0000-00-00 00:00:00', '2012-04-26 18:49:45', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2234223b733a353a22616c696173223b733a33363a226d6f7262692d736f6c6c69632d69747564696e2d7072657469756d2d6d6f6c6573746965223b733a373a2273756d6d617279223b733a3235333a223c703e566573746962756c756d20616363756d73616e207363656c6572697371756520657261742c20657520756c7472696365732064756920696163756c69732065742e204372617320766f6c7574706174206f64696f2061632065737420696d7065726469657420666163696c697369732e204d617572697320766573746962756c756d206e69736c206e6f6e2076656c697420756c6c616d636f7270657220696e2076756c707574617465206d617572697320657569736d6f642e20566976616d7573206174206f726e61726520656e696d2e204375726162697475722074696e636964756e742072686f6e63757320657261742e3c2f703e0d0a223b733a343a22626f6479223b733a3237333a220d0a3c703e4d6175726973206567657374617320617563746f72206d61757269732076656c206d61747469732e20496e74656765722076656e656e61746973206d61737361206d692e2050656c6c656e746573717565206375727375732c207475727069732061632070756c76696e617220706f73756572652c20746f72746f722076656c697420696163756c69732073656d2c206e6f6e20756c6c616d636f72706572206a7573746f206c6f72656d206e6563206e6962682e204e756c6c616d206d6574757320656e696d2c20636f6e73657175617420616320696163756c69732065752c2061646970697363696e6720612076656c69742e204e756c6c616d20656765742076656c69742e3c2f703e223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a323a223432223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031322d30342d32372031373a34353a3037223b733a31313a226d6f6469666965645f6279223b733a323a223432223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3133363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3772656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31383a2264656661756c7455736572734974656d6964223b733a303a22223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31373a2264656661756c74546167734974656d6964223b733a303a22223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323030223b733a31303a226974656d496d6167654d223b733a333a22323638223b733a31303a226974656d496d6167654c223b733a333a22353530223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a353a22536d616c6c223b733a383a22636f6d6d656e7473223b733a313a2231223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2230223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a393a22726563617074636861223b733a313a2230223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a31313a226b32436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a383a227265646972656374223b733a303a22223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a31353a225345465265706c6163656d656e7473223b733a3538333a22c385c2a07c532c20c385e280997c4f2c20c385c2bd7c5a2c20c385c2a17c732c20c385e2809c7c6f652c20c385c2be7c7a2c20c385c2b87c592c20c382c2a57c592c20c382c2b57c752c20c383e282ac7c412c20c383efbfbd7c412c20c383e2809a7c412c20c383c6927c412c20c383e2809e7c412c20c383e280a67c412c20c383e280a07c412c20c383e280a17c432c20c383cb867c452c20c383e280b07c452c20c383c5a07c452c20c383e280b97c452c20c383c5927c492c20c383efbfbd7c492c20c383c5bd7c492c20c383efbfbd7c492c20c383efbfbd7c442c20c383e280987c4e2c20c383e280997c4f2c20c383e2809c7c4f2c20c383e2809d7c4f2c20c383e280a27c4f2c20c383e280937c4f2c20c383cb9c7c4f2c20c383e284a27c552c20c383c5a17c552c20c383e280ba7c552c20c383c5937c552c20c383efbfbd7c592c20c383c5b87c732c20c383c2a07c612c20c383c2a17c612c20c383c2a27c612c20c383c2a37c612c20c383c2a47c612c20c383c2a57c612c20c383c2a67c612c20c383c2a77c632c20c383c2a87c652c20c383c2a97c652c20c383c2aa7c652c20c383c2ab7c652c20c383c2ac7c692c20c383c2ad7c692c20c383c2ae7c692c20c383c2af7c692c20c383c2b07c6f2c20c383c2b17c6e2c20c383c2b27c6f2c20c383c2b37c6f2c20c383c2b47c6f2c20c383c2b57c6f2c20c383c2b67c6f2c20c383c2b87c6f2c20c383c2b97c752c20c383c2ba7c752c20c383c2bb7c752c20c383c2bc7c752c20c383c2bd7c792c20c383c2bf7c792c20c383c5b87c7373223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2232223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a353a224d6f766965223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a33383a22343a6d6f7262692d736f6c6c69632d69747564696e2d7072657469756d2d6d6f6c6573746965223b733a373a22636174736c7567223b733a373a22323a6d6f766965223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d343a6d6f7262692d736f6c6c69632d69747564696e2d7072657469756d2d6d6f6c6573746965223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a353a224d6f766965223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a224d6f766965223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d34223b733a353a22726f757465223b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d343a6d6f7262692d736f6c6c69632d69747564696e2d7072657469756d2d6d6f6c6573746965223b733a353a227469746c65223b733a33363a224d6f72626920536f6c6c69632049747564696e205072657469756d204d6f6c6573746965223b733a31313a226465736372697074696f6e223b733a3234343a22566573746962756c756d20616363756d73616e207363656c6572697371756520657261742c20657520756c7472696365732064756920696163756c69732065742e204372617320766f6c7574706174206f64696f2061632065737420696d7065726469657420666163696c697369732e204d617572697320766573746962756c756d206e69736c206e6f6e2076656c697420756c6c616d636f7270657220696e2076756c707574617465206d617572697320657569736d6f642e20566976616d7573206174206f726e61726520656e696d2e204375726162697475722074696e636964756e742072686f6e63757320657261742e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30342d32362031383a34393a3435223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031322d30342d32362031383a34393a3435223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);
INSERT INTO `#__finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(5, 'index.php?option=com_k2&view=item&id=5', 'index.php?option=com_k2&view=item&id=5:integer-venenatis-massa-lorem-mauris', 'Integer Venenatis Massa Lorem Mauris', 'Nunc pellentesque, elit at luctus ullamcorper, eros sapien consectetur nulla, nec euismod nunc enim ut sem. Donec nisl nisi, tincidunt adipiscing dictum vel, cursus a augue. Morbi nunc purus, pellentesque quis bibendum vitae, accumsan ac lorem. Integer ve', '2012-04-27 12:44:46', 'c2fcbd1a9509c1375b73e4630446935d', 1, 1, 1, '*', '2012-04-26 18:51:04', '0000-00-00 00:00:00', '2012-04-26 18:51:04', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2235223b733a353a22616c696173223b733a33363a22696e74656765722d76656e656e617469732d6d617373612d6c6f72656d2d6d6175726973223b733a373a2273756d6d617279223b733a3237383a223c703e4e756e632070656c6c656e7465737175652c20656c6974206174206c756374757320756c6c616d636f727065722c2065726f732073617069656e20636f6e7365637465747572206e756c6c612c206e656320657569736d6f64206e756e6320656e696d2075742073656d2e20446f6e6563206e69736c206e6973692c2074696e636964756e742061646970697363696e672064696374756d2076656c2c2063757273757320612061756775652e204d6f726269206e756e632070757275732c2070656c6c656e746573717565207175697320626962656e64756d2076697461652c20616363756d73616e206163206c6f72656d2e20496e74656765722076656e656e61746973206d617373612e3c2f703e0d0a223b733a343a22626f6479223b733a3237313a220d0a3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65632c20696163756c697320757420616e74652e2050726f696e206c6163696e696120706f72747469746f7220616c69717565742e205365642064696374756d20656c656d656e74756d20756c6c616d636f727065722e2050656c6c656e746573717565206c6563747573206e756c6c612c20706f727461206163206469676e697373696d206e6f6e2c20756c7472696365732071756973206c6967756c612e3c2f703e223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a323a223432223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031322d30342d32372031373a34343a3436223b733a31313a226d6f6469666965645f6279223b733a323a223432223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3133363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3772656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31383a2264656661756c7455736572734974656d6964223b733a303a22223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31373a2264656661756c74546167734974656d6964223b733a303a22223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323030223b733a31303a226974656d496d6167654d223b733a333a22323638223b733a31303a226974656d496d6167654c223b733a333a22353530223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a353a22536d616c6c223b733a383a22636f6d6d656e7473223b733a313a2231223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2230223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a393a22726563617074636861223b733a313a2230223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a31313a226b32436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a383a227265646972656374223b733a303a22223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a31353a225345465265706c6163656d656e7473223b733a3538333a22c385c2a07c532c20c385e280997c4f2c20c385c2bd7c5a2c20c385c2a17c732c20c385e2809c7c6f652c20c385c2be7c7a2c20c385c2b87c592c20c382c2a57c592c20c382c2b57c752c20c383e282ac7c412c20c383efbfbd7c412c20c383e2809a7c412c20c383c6927c412c20c383e2809e7c412c20c383e280a67c412c20c383e280a07c412c20c383e280a17c432c20c383cb867c452c20c383e280b07c452c20c383c5a07c452c20c383e280b97c452c20c383c5927c492c20c383efbfbd7c492c20c383c5bd7c492c20c383efbfbd7c492c20c383efbfbd7c442c20c383e280987c4e2c20c383e280997c4f2c20c383e2809c7c4f2c20c383e2809d7c4f2c20c383e280a27c4f2c20c383e280937c4f2c20c383cb9c7c4f2c20c383e284a27c552c20c383c5a17c552c20c383e280ba7c552c20c383c5937c552c20c383efbfbd7c592c20c383c5b87c732c20c383c2a07c612c20c383c2a17c612c20c383c2a27c612c20c383c2a37c612c20c383c2a47c612c20c383c2a57c612c20c383c2a67c612c20c383c2a77c632c20c383c2a87c652c20c383c2a97c652c20c383c2aa7c652c20c383c2ab7c652c20c383c2ac7c692c20c383c2ad7c692c20c383c2ae7c692c20c383c2af7c692c20c383c2b07c6f2c20c383c2b17c6e2c20c383c2b27c6f2c20c383c2b37c6f2c20c383c2b47c6f2c20c383c2b57c6f2c20c383c2b67c6f2c20c383c2b87c6f2c20c383c2b97c752c20c383c2ba7c752c20c383c2bb7c752c20c383c2bc7c752c20c383c2bd7c792c20c383c2bf7c792c20c383c5b87c7373223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2233223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a353a224d6f766965223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a33383a22353a696e74656765722d76656e656e617469732d6d617373612d6c6f72656d2d6d6175726973223b733a373a22636174736c7567223b733a373a22323a6d6f766965223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d353a696e74656765722d76656e656e617469732d6d617373612d6c6f72656d2d6d6175726973223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a353a224d6f766965223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a224d6f766965223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d35223b733a353a22726f757465223b733a37353a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d353a696e74656765722d76656e656e617469732d6d617373612d6c6f72656d2d6d6175726973223b733a353a227469746c65223b733a33363a22496e74656765722056656e656e61746973204d61737361204c6f72656d204d6175726973223b733a31313a226465736372697074696f6e223b733a3236393a224e756e632070656c6c656e7465737175652c20656c6974206174206c756374757320756c6c616d636f727065722c2065726f732073617069656e20636f6e7365637465747572206e756c6c612c206e656320657569736d6f64206e756e6320656e696d2075742073656d2e20446f6e6563206e69736c206e6973692c2074696e636964756e742061646970697363696e672064696374756d2076656c2c2063757273757320612061756775652e204d6f726269206e756e632070757275732c2070656c6c656e746573717565207175697320626962656e64756d2076697461652c20616363756d73616e206163206c6f72656d2e20496e74656765722076656e656e61746973206d617373612e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30342d32362031383a35313a3034223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031322d30342d32362031383a35313a3034223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d),
(6, 'index.php?option=com_k2&view=item&id=6', 'index.php?option=com_k2&view=item&id=6:amet-dignissim-eta-libero-purusa', 'Amet Dignissim Eta Libero Purusa Viverra', 'Ut eget leo vel orci sagittis viverra at in nibh. Nullam eget velit sed odio feugiat facilisis ut a orci. Nam feugiat, risus in iaculis tincidunt, tellus nulla viverra est, sit amet dignissim libero purus id felis. Phasellus magna libero, imperdiet ac var', '2012-04-27 12:44:28', '7d1e64c5084d2959899469bfadd49b32', 1, 1, 1, '*', '2012-04-26 18:53:20', '0000-00-00 00:00:00', '2012-04-26 18:53:20', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2236223b733a353a22616c696173223b733a33323a22616d65742d6469676e697373696d2d6574612d6c696265726f2d707572757361223b733a373a2273756d6d617279223b733a3237333a223c703e55742065676574206c656f2076656c206f726369207361676974746973207669766572726120617420696e206e6962682e204e756c6c616d20656765742076656c697420736564206f64696f206665756769617420666163696c697369732075742061206f7263692e204e616d20666575676961742c20726973757320696e20696163756c69732074696e636964756e742c2074656c6c7573206e756c6c612076697665727261206573742c2073697420616d6574206469676e697373696d206c696265726f2070757275732069642066656c69732e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65636f2e3c2f703e0d0a223b733a343a22626f6479223b733a3237343a220d0a3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65632c20696163756c697320757420616e74652e2050726f696e206c6163696e696120706f72747469746f7220616c69717565742e205365642064696374756d20656c656d656e74756d20756c6c616d636f727065722e2050656c6c656e746573717565206c6563747573206e756c6c612c20706f727461206163206469676e697373696d206e6f6e2c20756c7472696365732071756973206c6967756c612e3c2f703e205669223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a323a223432223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031322d30342d32372031373a34343a3238223b733a31313a226d6f6469666965645f6279223b733a323a223432223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3133363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3772656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31383a2264656661756c7455736572734974656d6964223b733a303a22223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31373a2264656661756c74546167734974656d6964223b733a303a22223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323030223b733a31303a226974656d496d6167654d223b733a333a22323638223b733a31303a226974656d496d6167654c223b733a333a22353530223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a353a22536d616c6c223b733a383a22636f6d6d656e7473223b733a313a2231223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2230223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a393a22726563617074636861223b733a313a2230223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a31313a226b32436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a383a227265646972656374223b733a303a22223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a31353a225345465265706c6163656d656e7473223b733a3538333a22c385c2a07c532c20c385e280997c4f2c20c385c2bd7c5a2c20c385c2a17c732c20c385e2809c7c6f652c20c385c2be7c7a2c20c385c2b87c592c20c382c2a57c592c20c382c2b57c752c20c383e282ac7c412c20c383efbfbd7c412c20c383e2809a7c412c20c383c6927c412c20c383e2809e7c412c20c383e280a67c412c20c383e280a07c412c20c383e280a17c432c20c383cb867c452c20c383e280b07c452c20c383c5a07c452c20c383e280b97c452c20c383c5927c492c20c383efbfbd7c492c20c383c5bd7c492c20c383efbfbd7c492c20c383efbfbd7c442c20c383e280987c4e2c20c383e280997c4f2c20c383e2809c7c4f2c20c383e2809d7c4f2c20c383e280a27c4f2c20c383e280937c4f2c20c383cb9c7c4f2c20c383e284a27c552c20c383c5a17c552c20c383e280ba7c552c20c383c5937c552c20c383efbfbd7c592c20c383c5b87c732c20c383c2a07c612c20c383c2a17c612c20c383c2a27c612c20c383c2a37c612c20c383c2a47c612c20c383c2a57c612c20c383c2a67c612c20c383c2a77c632c20c383c2a87c652c20c383c2a97c652c20c383c2aa7c652c20c383c2ab7c652c20c383c2ac7c692c20c383c2ad7c692c20c383c2ae7c692c20c383c2af7c692c20c383c2b07c6f2c20c383c2b17c6e2c20c383c2b27c6f2c20c383c2b37c6f2c20c383c2b47c6f2c20c383c2b57c6f2c20c383c2b67c6f2c20c383c2b87c6f2c20c383c2b97c752c20c383c2ba7c752c20c383c2bb7c752c20c383c2bc7c752c20c383c2bd7c792c20c383c2bf7c792c20c383c5b87c7373223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2234223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a353a224d6f766965223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a33343a22363a616d65742d6469676e697373696d2d6574612d6c696265726f2d707572757361223b733a373a22636174736c7567223b733a373a22323a6d6f766965223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a37313a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d363a616d65742d6469676e697373696d2d6574612d6c696265726f2d707572757361223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a353a224d6f766965223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a353a224d6f766965223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d36223b733a353a22726f757465223b733a37313a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d363a616d65742d6469676e697373696d2d6574612d6c696265726f2d707572757361223b733a353a227469746c65223b733a34303a22416d6574204469676e697373696d20457461204c696265726f205075727573612056697665727261223b733a31313a226465736372697074696f6e223b733a3236343a2255742065676574206c656f2076656c206f726369207361676974746973207669766572726120617420696e206e6962682e204e756c6c616d20656765742076656c697420736564206f64696f206665756769617420666163696c697369732075742061206f7263692e204e616d20666575676961742c20726973757320696e20696163756c69732074696e636964756e742c2074656c6c7573206e756c6c612076697665727261206573742c2073697420616d6574206469676e697373696d206c696265726f2070757275732069642066656c69732e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65636f2e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30342d32362031383a35333a3230223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031322d30342d32362031383a35333a3230223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);
INSERT INTO `#__finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(7, 'index.php?option=com_k2&view=item&id=7', 'index.php?option=com_k2&view=item&id=7:integer-nunc-lorem-egestas-dor', 'Integer Nunc Lorem Ot Egestas Dor Imperdiet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus magna libero, imperdiet ac varius nec, iaculis ut ante. Proin lacinia porttitor aliquet. Sed dictum elementum ullamcorper. Pellentesque lectus nulla, porta ac dignissim non, ultrices quis ', '2012-04-27 12:43:57', '48ca83e17caf8f012f6afea2663eed58', 1, 1, 1, '*', '2012-04-26 18:55:28', '0000-00-00 00:00:00', '2012-04-26 18:55:28', '0000-00-00 00:00:00', 0, 0, 1, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32353a7b733a323a226964223b733a313a2237223b733a353a22616c696173223b733a33303a22696e74656765722d6e756e632d6c6f72656d2d656765737461732d646f72223b733a373a2273756d6d617279223b733a3236393a223c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65632c20696163756c697320757420616e74652e2050726f696e206c6163696e696120706f72747469746f7220616c69717565742e205365642064696374756d20656c656d656e74756d20756c6c616d636f727065722e2050656c6c656e746573717565206c6563747573206e756c6c612c20706f727461206163206469676e697373696d206e6f6e2c20756c7472696365732071756973206c6967756c612e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2231223b733a31303a22637265617465645f6279223b733a323a223432223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031322d30342d32372031373a34333a3537223b733a31313a226d6f6469666965645f6279223b733a323a223432223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a3133363a7b733a31303a22656e61626c655f637373223b733a313a2231223b733a31343a226a517565727948616e646c696e67223b733a393a22312e3772656d6f7465223b733a32313a226261636b656e644a517565727948616e646c696e67223b733a363a2272656d6f7465223b733a383a22757365724e616d65223b733a313a2231223b733a393a2275736572496d616765223b733a313a2231223b733a31353a22757365724465736372697074696f6e223b733a313a2231223b733a373a227573657255524c223b733a313a2231223b733a393a2275736572456d61696c223b733a313a2230223b733a31323a2275736572466565644c696e6b223b733a313a2231223b733a31323a22757365724665656449636f6e223b733a313a2231223b733a31333a22757365724974656d436f756e74223b733a323a223130223b733a31333a22757365724974656d5469746c65223b733a313a2231223b733a31393a22757365724974656d5469746c654c696e6b6564223b733a313a2231223b733a31393a22757365724974656d4461746543726561746564223b733a313a2231223b733a31333a22757365724974656d496d616765223b733a313a2231223b733a31373a22757365724974656d496e74726f54657874223b733a313a2231223b733a31363a22757365724974656d43617465676f7279223b733a313a2231223b733a31323a22757365724974656d54616773223b733a313a2231223b733a32323a22757365724974656d436f6d6d656e7473416e63686f72223b733a313a2231223b733a31363a22757365724974656d526561644d6f7265223b733a313a2231223b733a31373a22757365724974656d4b32506c7567696e73223b733a313a2231223b733a31383a2264656661756c7455736572734974656d6964223b733a303a22223b733a31323a227461674974656d436f756e74223b733a323a223130223b733a31323a227461674974656d5469746c65223b733a313a2231223b733a31383a227461674974656d5469746c654c696e6b6564223b733a313a2231223b733a31383a227461674974656d4461746543726561746564223b733a313a2231223b733a31323a227461674974656d496d616765223b733a313a2231223b733a31363a227461674974656d496e74726f54657874223b733a313a2231223b733a31353a227461674974656d43617465676f7279223b733a313a2231223b733a31353a227461674974656d526561644d6f7265223b733a313a2231223b733a31383a227461674974656d45787472614669656c6473223b733a313a2230223b733a31313a227461674f72646572696e67223b733a303a22223b733a31313a22746167466565644c696e6b223b733a313a2231223b733a31313a227461674665656449636f6e223b733a313a2231223b733a31373a2264656661756c74546167734974656d6964223b733a303a22223b733a31363a2267656e657269634974656d436f756e74223b733a323a223130223b733a31363a2267656e657269634974656d5469746c65223b733a313a2231223b733a32323a2267656e657269634974656d5469746c654c696e6b6564223b733a313a2231223b733a32323a2267656e657269634974656d4461746543726561746564223b733a313a2231223b733a31363a2267656e657269634974656d496d616765223b733a313a2231223b733a32303a2267656e657269634974656d496e74726f54657874223b733a313a2231223b733a31393a2267656e657269634974656d43617465676f7279223b733a313a2231223b733a31393a2267656e657269634974656d526561644d6f7265223b733a313a2231223b733a32323a2267656e657269634974656d45787472614669656c6473223b733a313a2230223b733a31353a2267656e65726963466565644c696e6b223b733a313a2231223b733a31353a2267656e657269634665656449636f6e223b733a313a2231223b733a393a22666565644c696d6974223b733a323a223130223b733a31333a22666565644974656d496d616765223b733a313a2231223b733a31313a2266656564496d6753697a65223b733a313a2253223b733a31373a22666565644974656d496e74726f54657874223b733a313a2231223b733a31373a226665656454657874576f72644c696d6974223b733a303a22223b733a31363a22666565644974656d46756c6c54657874223b733a313a2231223b733a31323a22666565644974656d54616773223b733a313a2230223b733a31333a22666565644974656d566964656f223b733a313a2230223b733a31353a22666565644974656d47616c6c657279223b733a313a2230223b733a31393a22666565644974656d4174746163686d656e7473223b733a313a2230223b733a31343a2266656564426f677573456d61696c223b733a303a22223b733a31363a22696e74726f54657874436c65616e7570223b733a313a2230223b733a32373a22696e74726f54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32333a22696e74726f54657874436c65616e757054616741747472223b733a303a22223b733a31353a2266756c6c54657874436c65616e7570223b733a313a2230223b733a32363a2266756c6c54657874436c65616e75704578636c75646554616773223b733a303a22223b733a32323a2266756c6c54657874436c65616e757054616741747472223b733a303a22223b733a31323a2278737346696c746572696e67223b733a313a2230223b733a31343a226c696e6b506f7075705769647468223b733a333a22393030223b733a31353a226c696e6b506f707570486569676874223b733a333a22363030223b733a31333a22696d616765735175616c697479223b733a333a22313030223b733a31313a226974656d496d6167655853223b733a333a22313030223b733a31303a226974656d496d61676553223b733a333a22323030223b733a31303a226974656d496d6167654d223b733a333a22323638223b733a31303a226974656d496d6167654c223b733a333a22353530223b733a31313a226974656d496d616765584c223b733a333a22393030223b733a31363a226974656d496d61676547656e65726963223b733a333a22333030223b733a31333a22636174496d6167655769647468223b733a333a22313030223b733a31353a22636174496d61676544656661756c74223b733a313a2231223b733a31343a2275736572496d6167655769647468223b733a333a22313030223b733a31363a2275736572496d61676544656661756c74223b733a313a2231223b733a31373a22636f6d6d656e746572496d675769647468223b733a323a223438223b733a31373a226f6e6c696e65496d616765456469746f72223b733a383a2273706c6173687570223b733a31343a22696d61676554696d657374616d70223b733a313a2230223b733a31363a22696d6167654d656d6f72794c696d6974223b733a303a22223b733a31363a22736f6369616c427574746f6e436f6465223b733a303a22223b733a31353a2274776974746572557365726e616d65223b733a303a22223b733a31333a2266616365626f6f6b496d616765223b733a353a22536d616c6c223b733a383a22636f6d6d656e7473223b733a313a2231223b733a31363a22636f6d6d656e74734f72646572696e67223b733a343a2244455343223b733a31333a22636f6d6d656e74734c696d6974223b733a323a223130223b733a32303a22636f6d6d656e7473466f726d506f736974696f6e223b733a353a2262656c6f77223b733a31383a22636f6d6d656e74735075626c697368696e67223b733a313a2230223b733a31373a22636f6d6d656e74735265706f7274696e67223b733a313a2232223b733a32333a22636f6d6d656e74735265706f7274526563697069656e74223b733a303a22223b733a32343a22696e6c696e65436f6d6d656e74734d6f6465726174696f6e223b733a313a2230223b733a383a226772617661746172223b733a313a2231223b733a393a22726563617074636861223b733a313a2230223b733a31373a22636f6d6d656e7473466f726d4e6f746573223b733a313a2231223b733a32313a22636f6d6d656e7473466f726d4e6f74657354657874223b733a303a22223b733a31353a2266726f6e74656e6445646974696e67223b733a313a2231223b733a31323a2273686f77496d616765546162223b733a313a2231223b733a31393a2273686f77496d61676547616c6c657279546162223b733a313a2231223b733a31323a2273686f77566964656f546162223b733a313a2231223b733a31383a2273686f7745787472614669656c6473546162223b733a313a2231223b733a31383a2273686f774174746163686d656e7473546162223b733a313a2231223b733a31333a2273686f774b32506c7567696e73223b733a313a2231223b733a32323a2273696465426172446973706c617946726f6e74656e64223b733a313a2230223b733a31323a226d65726765456469746f7273223b733a313a2231223b733a31343a2273696465426172446973706c6179223b733a313a2231223b733a31373a226174746163686d656e7473466f6c646572223b733a303a22223b733a31363a2268696465496d706f7274427574746f6e223b733a313a2230223b733a31333a2274616767696e6753797374656d223b733a313a2231223b733a383a226c6f636b54616773223b733a313a2230223b733a31333a2273686f7754616746696c746572223b733a313a2230223b733a31323a22676f6f676c65536561726368223b733a313a2230223b733a32313a22676f6f676c65536561726368436f6e7461696e6572223b733a31313a226b32436f6e7461696e6572223b733a31333a224b325573657250726f66696c65223b733a313a2231223b733a383a227265646972656374223b733a303a22223b733a31313a2261646d696e536561726368223b733a363a2273696d706c65223b733a31323a22636f6f6b6965446f6d61696e223b733a303a22223b733a32303a227265636170746368615f7075626c69635f6b6579223b733a303a22223b733a32313a227265636170746368615f707269766174655f6b6579223b733a303a22223b733a31353a227265636170746368615f7468656d65223b733a353a22636c65616e223b733a32333a227265636170746368614f6e526567697374726174696f6e223b733a313a2230223b733a31333a2273746f70466f72756d5370616d223b733a313a2230223b733a31393a2273746f70466f72756d5370616d4170694b6579223b733a303a22223b733a32313a2273686f774974656d73436f756e74657241646d696e223b733a313a2231223b733a31373a2273686f774368696c644361744974656d73223b733a313a2231223b733a32323a2264697361626c65436f6d706163744f72646572696e67223b733a313a2230223b733a31333a226d657461446573634c696d6974223b733a333a22313530223b733a31353a225345465265706c6163656d656e7473223b733a3538333a22c385c2a07c532c20c385e280997c4f2c20c385c2bd7c5a2c20c385c2a17c732c20c385e2809c7c6f652c20c385c2be7c7a2c20c385c2b87c592c20c382c2a57c592c20c382c2b57c752c20c383e282ac7c412c20c383efbfbd7c412c20c383e2809a7c412c20c383c6927c412c20c383e2809e7c412c20c383e280a67c412c20c383e280a07c412c20c383e280a17c432c20c383cb867c452c20c383e280b07c452c20c383c5a07c452c20c383e280b97c452c20c383c5927c492c20c383efbfbd7c492c20c383c5bd7c492c20c383efbfbd7c492c20c383efbfbd7c442c20c383e280987c4e2c20c383e280997c4f2c20c383e2809c7c4f2c20c383e2809d7c4f2c20c383e280a27c4f2c20c383e280937c4f2c20c383cb9c7c4f2c20c383e284a27c552c20c383c5a17c552c20c383e280ba7c552c20c383c5937c552c20c383efbfbd7c592c20c383c5b87c732c20c383c2a07c612c20c383c2a17c612c20c383c2a27c612c20c383c2a37c612c20c383c2a47c612c20c383c2a57c612c20c383c2a67c612c20c383c2a77c632c20c383c2a87c652c20c383c2a97c652c20c383c2aa7c652c20c383c2ab7c652c20c383c2ac7c692c20c383c2ad7c692c20c383c2ae7c692c20c383c2af7c692c20c383c2b07c6f2c20c383c2b17c6e2c20c383c2b27c6f2c20c383c2b37c6f2c20c383c2b47c6f2c20c383c2b57c6f2c20c383c2b67c6f2c20c383c2b87c6f2c20c383c2b97c752c20c383c2ba7c752c20c383c2bb7c752c20c383c2bc7c752c20c383c2bd7c792c20c383c2bf7c792c20c383c5b87c7373223b733a31363a2273683430345365664c6162656c436174223b733a303a22223b733a31373a2273683430345365664c6162656c55736572223b733a343a22626c6f67223b733a31373a2273683430345365664c6162656c4974656d223b733a313a2232223b733a31383a2273683430345365665469746c65416c696173223b733a353a22616c696173223b733a32393a2273683430345365664d6f644b32436f6e74656e7446656564416c696173223b733a343a2266656564223b733a32303a227368343034536566496e736572744974656d4964223b733a313a2230223b733a32363a227368343034536566496e73657274556e697175654974656d4964223b733a313a2230223b733a31333a226362496e746567726174696f6e223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b7d7d733a383a226f72646572696e67223b733a313a2231223b733a353a227472617368223b733a313a2230223b733a393a226361745f7472617368223b733a313a2230223b733a383a2263617465676f7279223b733a31333a22456e7465727461696e6d656e74223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a33323a22373a696e74656765722d6e756e632d6c6f72656d2d656765737461732d646f72223b733a373a22636174736c7567223b733a31353a22313a656e7465727461696e6d656e74223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a343a226974656d223b733a343a2270617468223b733a36393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d373a696e74656765722d6e756e632d6c6f72656d2d656765737461732d646f72223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a224b32204974656d223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a224b32204974656d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a31313a224b322043617465676f7279223b613a313a7b733a31333a22456e7465727461696e6d656e74223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22456e7465727461696e6d656e74223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a33383a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d37223b733a353a22726f757465223b733a36393a22696e6465782e7068703f6f7074696f6e3d636f6d5f6b3226766965773d6974656d2669643d373a696e74656765722d6e756e632d6c6f72656d2d656765737461732d646f72223b733a353a227469746c65223b733a34333a22496e7465676572204e756e63204c6f72656d204f74204567657374617320446f7220496d70657264696574223b733a31313a226465736372697074696f6e223b733a3236323a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e2050686173656c6c7573206d61676e61206c696265726f2c20696d7065726469657420616320766172697573206e65632c20696163756c697320757420616e74652e2050726f696e206c6163696e696120706f72747469746f7220616c69717565742e205365642064696374756d20656c656d656e74756d20756c6c616d636f727065722e2050656c6c656e746573717565206c6563747573206e756c6c612c20706f727461206163206469676e697373696d206e6f6e2c20756c7472696365732071756973206c6967756c612e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031322d30342d32362031383a35353a3238223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031322d30342d32362031383a35353a3238223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a313b7d);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms0`
--

DROP TABLE IF EXISTS `#__finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms0`
--

INSERT INTO `#__finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(1, 85, 0.79992),
(2, 85, 0.79992),
(3, 85, 0.79992),
(4, 85, 0.79992),
(5, 85, 0.79992),
(6, 85, 0.79992),
(7, 85, 0.79992),
(1, 86, 3.19992),
(2, 86, 3.19992),
(3, 86, 3.19992),
(4, 86, 3.19992),
(5, 86, 3.19992),
(6, 86, 3.19992),
(7, 86, 3.19992),
(1, 132, 0.04669),
(2, 132, 0.04669),
(3, 132, 0.04669),
(4, 132, 0.04669),
(5, 132, 0.04669),
(6, 132, 0.04669),
(1, 1291, 0.46669),
(4, 1291, 0.46669),
(6, 1291, 0.46669),
(7, 1291, 0.46669),
(3, 1291, 0.93338),
(5, 1291, 0.93338),
(3, 1292, 1.05),
(5, 1292, 1.05),
(6, 1292, 1.05),
(7, 1292, 1.05),
(2, 1298, 0.18669),
(3, 1298, 0.18669),
(5, 1298, 0.18669),
(7, 1298, 0.18669),
(6, 1298, 1.36017),
(3, 1299, 1.07331),
(5, 1299, 1.07331),
(6, 1299, 1.07331),
(7, 1299, 1.07331),
(3, 1300, 1.33),
(5, 1300, 1.33),
(6, 1300, 1.33),
(7, 1300, 1.33),
(2, 1370, 0.37331),
(6, 1370, 0.37331),
(2, 1373, 0.14),
(3, 1373, 0.14),
(5, 1373, 0.14),
(7, 1373, 0.14),
(6, 1373, 0.28),
(2, 1374, 0.88669),
(3, 1374, 0.88669),
(5, 1374, 0.88669),
(7, 1374, 0.88669),
(6, 1374, 1.77338),
(3, 1375, 1.16669),
(5, 1375, 1.16669),
(6, 1375, 1.16669),
(7, 1375, 1.16669),
(2, 1396, 0.18662),
(7, 1396, 0.18662),
(1, 1396, 0.27993),
(3, 1396, 0.27993),
(4, 1396, 0.27993),
(5, 1396, 0.27993),
(6, 1396, 0.27993),
(2, 1397, 0.91),
(3, 1397, 0.91),
(5, 1397, 0.91),
(7, 1397, 0.91),
(6, 1397, 1.82),
(3, 1398, 1.00331),
(5, 1398, 1.00331),
(6, 1398, 1.00331),
(7, 1398, 1.00331),
(3, 1399, 1.28331),
(5, 1399, 1.28331),
(6, 1399, 1.28331),
(7, 1399, 1.28331),
(3, 1400, 0.32669),
(5, 1400, 0.32669),
(6, 1400, 0.32669),
(7, 1400, 0.32669),
(3, 1401, 0.95669),
(5, 1401, 0.95669),
(6, 1401, 0.95669),
(7, 1401, 0.95669),
(3, 1402, 1.12),
(5, 1402, 1.12),
(6, 1402, 1.12),
(7, 1402, 1.12),
(3, 1403, 0.18669),
(5, 1403, 0.18669),
(6, 1403, 0.18669),
(7, 1403, 0.18669),
(3, 1404, 0.93331),
(5, 1404, 0.93331),
(6, 1404, 0.93331),
(7, 1404, 0.93331),
(3, 1405, 1.12),
(5, 1405, 1.12),
(6, 1405, 1.12),
(7, 1405, 1.12),
(2, 1450, 0.14),
(3, 1450, 0.14),
(5, 1450, 0.14),
(7, 1450, 0.14),
(6, 1450, 0.28),
(3, 1451, 0.93331),
(5, 1451, 0.93331),
(6, 1451, 0.93331),
(7, 1451, 0.93331),
(3, 1452, 1.16669),
(5, 1452, 1.16669),
(6, 1452, 1.16669),
(7, 1452, 1.16669),
(3, 1463, 0.98),
(5, 1463, 0.98),
(6, 1463, 0.98),
(7, 1463, 0.98),
(3, 1464, 1.07331),
(5, 1464, 1.07331),
(6, 1464, 1.07331),
(7, 1464, 1.07331),
(2, 1494, 0.84),
(6, 1494, 0.84),
(2, 1495, 0.93331),
(6, 1495, 0.93331),
(2, 1496, 1.02669),
(6, 1496, 1.02669),
(2, 1497, 1.02669),
(6, 1497, 6.45348),
(6, 1498, 5.92),
(2, 1499, 1.19),
(6, 1499, 1.19),
(1, 1500, 0.09331),
(3, 1500, 0.09331),
(4, 1500, 0.09331),
(5, 1500, 0.09331),
(6, 1500, 0.09331),
(2, 1500, 0.67983),
(2, 1501, 0.81669),
(6, 1501, 0.81669),
(2, 1502, 0.93331),
(6, 1502, 0.93331),
(2, 1569, 1.07331),
(6, 1569, 1.07331),
(2, 1570, 1.14331),
(6, 1570, 1.14331),
(2, 1571, 0.88669),
(6, 1571, 0.88669),
(2, 1572, 1.07331),
(6, 1572, 1.07331),
(2, 1573, 1.12),
(6, 1573, 1.12),
(1, 1643, 0.84),
(2, 1643, 0.84),
(4, 1643, 0.84),
(1, 1644, 1.07331),
(2, 1644, 1.07331),
(4, 1644, 1.07331),
(1, 1645, 0.37331),
(2, 1645, 0.37331),
(3, 1645, 0.37331),
(4, 1645, 0.37331),
(5, 1645, 0.37331),
(1, 1646, 1.16669),
(2, 1646, 1.16669),
(4, 1646, 1.16669),
(1, 1647, 1.28331),
(2, 1647, 1.28331),
(4, 1647, 1.28331),
(2, 1648, 4.68679),
(2, 1649, 5.55),
(1, 1650, 0.91),
(2, 1650, 0.91),
(4, 1650, 0.91),
(1, 1651, 1.02669),
(2, 1651, 1.02669),
(4, 1651, 1.02669),
(1, 1708, 0.51331),
(2, 1708, 0.51331),
(4, 1708, 0.51331),
(1, 1709, 1.07331),
(2, 1709, 1.07331),
(4, 1709, 1.07331),
(1, 1710, 1.14331),
(2, 1710, 1.14331),
(4, 1710, 1.14331),
(1, 1770, 0.86331),
(4, 1770, 0.86331),
(1, 1771, 1.02669),
(4, 1771, 1.02669),
(1, 1772, 0.93331),
(4, 1772, 0.93331),
(1, 1773, 1.00331),
(4, 1773, 1.00331),
(1, 1774, 0.95669),
(4, 1774, 0.95669),
(1, 1775, 1.14331),
(4, 1775, 1.14331),
(1, 1776, 0.98),
(4, 1776, 0.98),
(1, 1777, 1.12),
(4, 1777, 1.12),
(1, 1778, 0.28),
(4, 1778, 0.28),
(1, 1779, 1.00331),
(4, 1779, 1.00331),
(1, 1780, 1.09669),
(4, 1780, 1.09669),
(1, 1844, 0.14),
(3, 1844, 0.14),
(4, 1844, 0.14),
(5, 1844, 0.14),
(1, 1845, 0.86331),
(4, 1845, 0.86331),
(4, 1846, 1.14331),
(1, 1899, 1.00331),
(3, 1905, 0.86331),
(5, 1905, 0.86331),
(3, 1906, 1.00331),
(5, 1906, 1.00331),
(3, 1907, 0.88669),
(5, 1907, 0.88669),
(3, 1908, 1.07331),
(5, 1908, 1.07331),
(3, 1909, 0.95669),
(5, 1909, 0.95669),
(3, 1910, 1.09669),
(5, 1910, 1.09669),
(3, 1911, 1.09669),
(5, 1911, 1.09669),
(3, 1912, 1.19),
(5, 1912, 1.19),
(3, 1913, 0.91),
(5, 1913, 0.91),
(3, 1914, 1.19),
(5, 1914, 1.19),
(3, 1915, 0.23331),
(5, 1915, 0.23331),
(3, 1916, 0.95669),
(5, 1916, 0.95669),
(3, 1917, 1.07331),
(5, 1917, 1.07331),
(3, 1971, 0.28),
(5, 1971, 0.28),
(3, 1972, 1.12),
(5, 1972, 1.12),
(3, 1973, 1.26),
(5, 1973, 1.26),
(3, 1974, 0.91),
(5, 1974, 0.91),
(3, 1975, 1.02669),
(5, 1975, 1.02669),
(4, 2040, 1.48),
(4, 2041, 5.30321),
(4, 2042, 6.29);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms1`
--

DROP TABLE IF EXISTS `#__finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms1`
--

INSERT INTO `#__finder_links_terms1` (`link_id`, `term_id`, `weight`) VALUES
(6, 1277, 0.17);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms2`
--

DROP TABLE IF EXISTS `#__finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms2`
--

INSERT INTO `#__finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(3, 820, 0.9334),
(3, 821, 3),
(3, 822, 3.3334),
(3, 1343, 0.28),
(5, 1343, 0.28),
(6, 1343, 0.28),
(7, 1343, 0.28),
(1, 1346, 0.23331),
(4, 1346, 0.23331),
(6, 1346, 0.23331),
(3, 1346, 0.46662),
(7, 1346, 1.46652),
(5, 1346, 1.69983),
(3, 1347, 0.95669),
(5, 1347, 0.95669),
(6, 1347, 0.95669),
(7, 1347, 0.95669),
(3, 1348, 1.09669),
(5, 1348, 1.09669),
(6, 1348, 1.09669),
(7, 1348, 1.09669),
(3, 1349, 0.28),
(5, 1349, 0.28),
(3, 1424, 0.32669),
(5, 1424, 0.32669),
(6, 1424, 0.32669),
(7, 1424, 0.32669),
(3, 1425, 1.09669),
(5, 1425, 1.09669),
(6, 1425, 1.09669),
(7, 1425, 1.09669),
(3, 1426, 1.28331),
(5, 1426, 1.28331),
(6, 1426, 1.28331),
(7, 1426, 1.28331),
(3, 1427, 0.28),
(5, 1427, 0.28),
(7, 1427, 0.28),
(2, 1427, 0.56),
(6, 1427, 2.32),
(2, 1428, 1.07331),
(3, 1428, 1.07331),
(5, 1428, 1.07331),
(7, 1428, 1.07331),
(6, 1428, 2.14662),
(2, 1429, 1.14331),
(3, 1429, 1.14331),
(5, 1429, 1.14331),
(7, 1429, 1.14331),
(6, 1429, 2.28662),
(7, 1430, 2.8666),
(7, 1431, 3.1334),
(3, 1469, 0.98),
(5, 1469, 0.98),
(6, 1469, 0.98),
(7, 1469, 0.98),
(3, 1470, 1.12),
(5, 1470, 1.12),
(6, 1470, 1.12),
(7, 1470, 1.12),
(3, 1471, 0.28),
(5, 1471, 0.28),
(6, 1471, 0.28),
(7, 1471, 0.28),
(2, 1537, 0.14),
(6, 1537, 0.14),
(2, 1538, 0.86331),
(6, 1538, 0.86331),
(2, 1539, 0.98),
(6, 1539, 0.98),
(2, 1540, 0.98),
(6, 1540, 0.98),
(2, 1541, 1.05),
(6, 1541, 1.05),
(6, 1542, 5.30321),
(7, 1623, 2.15339),
(7, 1624, 2.60661),
(6, 1636, 2.89),
(6, 1637, 0.91),
(1, 1805, 0.91),
(4, 1805, 0.91),
(1, 1806, 1.02669),
(4, 1806, 1.02669),
(3, 1939, 1.00331),
(5, 1939, 1.00331),
(3, 1940, 1.23669),
(5, 1940, 1.23669),
(5, 1941, 5.18),
(3, 1942, 1.12),
(5, 1942, 1.12),
(3, 1943, 1.23669),
(5, 1943, 1.23669);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms3`
--

DROP TABLE IF EXISTS `#__finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms3`
--

INSERT INTO `#__finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(3, 835, 0.9334),
(3, 836, 2.8),
(3, 837, 3.4),
(1, 1802, 0.23331),
(4, 1802, 0.23331),
(1, 1803, 0.95669),
(4, 1803, 0.95669),
(1, 1804, 1.05),
(4, 1804, 1.05);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms4`
--

DROP TABLE IF EXISTS `#__finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms4`
--

INSERT INTO `#__finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(6, 1303, 0.51331),
(7, 1303, 0.51331),
(3, 1303, 1.02662),
(5, 1303, 1.02662),
(3, 1304, 1.21331),
(5, 1304, 1.21331),
(6, 1304, 1.21331),
(7, 1304, 1.21331),
(3, 1305, 1.33),
(5, 1305, 1.33),
(6, 1305, 1.33),
(7, 1305, 1.33),
(1, 1309, 0.28),
(3, 1309, 0.28),
(4, 1309, 0.28),
(5, 1309, 0.28),
(2, 1566, 0.23331),
(6, 1566, 0.23331),
(2, 1567, 0.88669),
(6, 1567, 0.88669),
(2, 1568, 1.07331),
(6, 1568, 1.07331),
(1, 1652, 0.18669),
(2, 1652, 0.18669),
(4, 1652, 0.18669),
(1, 1653, 1.00331),
(2, 1653, 1.00331),
(4, 1653, 1.00331),
(1, 1654, 1.12),
(2, 1654, 1.12),
(4, 1654, 1.12),
(1, 1655, 0.42),
(4, 1655, 0.42),
(2, 1655, 2.64),
(1, 1656, 1.14331),
(2, 1656, 1.14331),
(4, 1656, 1.14331),
(1, 1657, 1.33),
(2, 1657, 1.33),
(4, 1657, 1.33),
(1, 1705, 0.32669),
(2, 1705, 0.32669),
(4, 1705, 0.32669),
(1, 1706, 0.98),
(2, 1706, 0.98),
(4, 1706, 0.98),
(1, 1707, 1.07331),
(2, 1707, 1.07331),
(1, 1781, 0.42),
(4, 1781, 0.42),
(1, 1782, 0.98),
(4, 1782, 0.98),
(1, 1783, 1.16669),
(4, 1783, 1.16669),
(1, 1784, 1.00331),
(4, 1784, 1.00331),
(1, 1785, 1.07331),
(4, 1785, 1.07331),
(3, 1921, 1.09669),
(5, 1921, 1.09669),
(3, 1922, 1.19),
(5, 1922, 1.19),
(3, 1923, 0.88669),
(5, 1923, 0.88669),
(3, 1924, 1.02669),
(5, 1924, 1.02669);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms5`
--

DROP TABLE IF EXISTS `#__finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms5`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms6`
--

DROP TABLE IF EXISTS `#__finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms6`
--

INSERT INTO `#__finder_links_terms6` (`link_id`, `term_id`, `weight`) VALUES
(1, 1355, 0.23331),
(3, 1355, 0.23331),
(4, 1355, 0.23331),
(5, 1355, 1.46652),
(5, 1358, 0.23331),
(3, 1358, 0.79992),
(4, 1358, 1.23321),
(2, 1432, 0.23331),
(3, 1432, 0.23331),
(5, 1432, 0.23331),
(7, 1432, 0.23331),
(6, 1432, 0.46662),
(2, 1433, 0.98),
(3, 1433, 0.98),
(5, 1433, 0.98),
(7, 1433, 0.98),
(6, 1433, 1.96),
(2, 1434, 1.21331),
(3, 1434, 1.21331),
(5, 1434, 1.21331),
(7, 1434, 1.21331),
(6, 1434, 2.42662),
(3, 1460, 0.39996),
(4, 1460, 0.39996),
(5, 1460, 0.39996),
(6, 1460, 0.39996),
(2, 1689, 0.56),
(1, 1689, 1.12),
(4, 1689, 1.12),
(5, 1689, 1.48),
(1, 1690, 1.02669),
(2, 1690, 1.02669),
(4, 1690, 1.02669),
(1, 1691, 1.21331),
(2, 1691, 1.21331),
(4, 1691, 1.21331),
(1, 1692, 1.09669),
(2, 1692, 1.09669),
(4, 1692, 1.09669),
(1, 1693, 1.21331),
(2, 1693, 1.21331),
(4, 1693, 1.21331),
(1, 1807, 0.88669),
(4, 1807, 0.88669),
(1, 1808, 1.19),
(4, 1808, 1.19),
(1, 1809, 0.28),
(4, 1809, 0.28),
(1, 1810, 1.02669),
(4, 1810, 1.02669),
(1, 1811, 1.26),
(4, 1811, 1.26),
(1, 1812, 1.02669),
(4, 1812, 1.02669),
(1, 1813, 1.19),
(4, 1813, 1.19),
(1, 1814, 0.93331),
(4, 1814, 0.93331),
(1, 1815, 1.09669),
(4, 1815, 1.09669),
(1, 1816, 0.23331),
(4, 1816, 0.23331),
(1, 1817, 0.93331),
(4, 1817, 0.93331),
(1, 1818, 1.16669),
(4, 1818, 1.16669),
(1, 1819, 0.09331),
(4, 1819, 0.09331),
(1, 1820, 1.05),
(4, 1820, 1.05),
(1, 1821, 1.21331),
(4, 1821, 1.21331),
(5, 1944, 5.05679),
(5, 1945, 5.92),
(3, 1946, 0.93331),
(5, 1946, 0.93331),
(3, 1947, 1.07331),
(5, 1947, 1.07331),
(4, 2035, 1.97321),
(4, 2036, 5.18),
(4, 2037, 6.04321);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms7`
--

DROP TABLE IF EXISTS `#__finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms7`
--

INSERT INTO `#__finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(1, 109, 0.64008),
(2, 109, 0.64008),
(3, 109, 0.64008),
(4, 109, 0.64008),
(5, 109, 0.64008),
(6, 109, 0.64008),
(7, 109, 0.64008),
(1, 1361, 0.18669),
(2, 1361, 0.18669),
(4, 1361, 0.18669),
(6, 1361, 0.18669),
(7, 1390, 0.09331),
(2, 1390, 0.18662),
(3, 1390, 0.18662),
(5, 1390, 0.18662),
(6, 1390, 0.27993),
(2, 1435, 0.14),
(4, 1435, 0.14),
(6, 1435, 0.14),
(7, 1435, 0.14),
(1, 1435, 0.28),
(3, 1435, 0.28),
(5, 1435, 0.28),
(3, 1436, 0.95669),
(5, 1436, 0.95669),
(6, 1436, 0.95669),
(7, 1436, 0.95669),
(3, 1437, 1.02669),
(5, 1437, 1.02669),
(6, 1437, 1.02669),
(7, 1437, 1.02669),
(3, 1438, 0.56007),
(5, 1438, 0.56007),
(7, 1438, 0.98679),
(7, 1439, 4.93321),
(7, 1440, 3.2),
(1, 1453, 0.51331),
(2, 1453, 0.51331),
(6, 1453, 0.51331),
(7, 1453, 0.51331),
(3, 1453, 1.02662),
(4, 1453, 1.02662),
(5, 1453, 1.02662),
(3, 1454, 0.86331),
(5, 1454, 0.86331),
(6, 1454, 0.86331),
(7, 1454, 0.86331),
(3, 1455, 1.00331),
(5, 1455, 1.00331),
(6, 1455, 1.00331),
(7, 1455, 1.00331),
(2, 1472, 0.14),
(3, 1472, 0.14),
(5, 1472, 0.14),
(6, 1472, 0.14),
(7, 1472, 0.14),
(1, 1472, 0.28),
(4, 1472, 0.28),
(3, 1473, 0.98),
(5, 1473, 0.98),
(6, 1473, 0.98),
(7, 1473, 0.98),
(3, 1474, 1.09669),
(5, 1474, 1.09669),
(6, 1474, 1.09669),
(7, 1474, 1.09669),
(2, 1475, 0.23331),
(7, 1475, 0.23331),
(5, 1475, 0.46662),
(6, 1475, 0.46662),
(3, 1475, 1.03323),
(3, 1476, 0.95669),
(5, 1476, 0.95669),
(6, 1476, 0.95669),
(7, 1476, 0.95669),
(3, 1477, 1.02669),
(5, 1477, 1.02669),
(6, 1477, 1.02669),
(7, 1477, 1.02669),
(6, 1483, 0.18669),
(7, 1483, 0.18669),
(5, 1483, 0.37338),
(3, 1483, 0.82677),
(1, 1483, 0.98679),
(3, 1484, 0.95669),
(5, 1484, 0.95669),
(6, 1484, 0.95669),
(7, 1484, 0.95669),
(3, 1485, 1.26),
(5, 1485, 1.26),
(6, 1485, 1.26),
(7, 1485, 1.26),
(3, 1486, 1.4),
(5, 1486, 1.4),
(6, 1486, 1.4),
(7, 1486, 1.4),
(1, 1487, 0.37331),
(2, 1487, 0.37331),
(3, 1487, 0.37331),
(4, 1487, 0.37331),
(5, 1487, 0.37331),
(6, 1487, 0.37331),
(7, 1487, 0.37331),
(3, 1488, 1.00331),
(5, 1488, 1.00331),
(6, 1488, 1.00331),
(7, 1488, 1.00331),
(3, 1489, 1.16669),
(5, 1489, 1.16669),
(6, 1489, 1.16669),
(7, 1489, 1.16669),
(2, 1543, 0.14),
(6, 1543, 0.14),
(2, 1544, 0.95669),
(6, 1544, 0.95669),
(2, 1545, 1.09669),
(6, 1545, 1.09669),
(2, 1546, 0.18669),
(6, 1546, 0.18669),
(1, 1547, 0.95669),
(2, 1547, 0.95669),
(4, 1547, 0.95669),
(6, 1547, 0.95669),
(2, 1548, 1.07331),
(6, 1548, 1.07331),
(2, 1549, 1.00331),
(6, 1549, 1.00331),
(2, 1550, 1.09669),
(6, 1550, 1.09669),
(2, 1551, 0.28),
(6, 1551, 0.28),
(1, 1551, 0.56),
(4, 1551, 0.56),
(1, 1552, 0.95669),
(2, 1552, 0.95669),
(4, 1552, 0.95669),
(6, 1552, 0.95669),
(1, 1553, 1.09669),
(2, 1553, 1.09669),
(4, 1553, 1.09669),
(6, 1553, 1.09669),
(2, 1580, 0.79331),
(6, 1580, 0.79331),
(2, 1581, 0.91),
(6, 1581, 0.91),
(2, 1582, 0.86331),
(6, 1582, 0.86331),
(2, 1583, 0.95669),
(6, 1583, 0.95669),
(7, 1625, 2.43661),
(6, 1639, 1.02669),
(1, 1694, 1.00331),
(2, 1694, 1.00331),
(1, 1695, 0.18669),
(2, 1695, 0.18669),
(3, 1695, 0.18669),
(4, 1695, 0.18669),
(5, 1695, 0.18669),
(1, 1696, 0.88669),
(2, 1696, 0.88669),
(4, 1696, 0.88669),
(1, 1697, 1.02669),
(2, 1697, 1.02669),
(4, 1697, 1.02669),
(1, 1698, 0.91),
(2, 1698, 0.91),
(4, 1698, 0.91),
(1, 1699, 1.19),
(2, 1699, 1.19),
(4, 1699, 1.19),
(1, 1713, 1.02669),
(2, 1713, 1.02669),
(4, 1713, 1.02669),
(1, 1714, 1.26),
(2, 1714, 1.26),
(4, 1714, 1.26),
(1, 1715, 0.98),
(2, 1715, 0.98),
(4, 1715, 0.98),
(1, 1716, 1.16669),
(2, 1716, 1.16669),
(4, 1716, 1.16669),
(1, 1822, 0.88669),
(4, 1822, 0.88669),
(1, 1823, 1.05),
(4, 1823, 1.05),
(1, 1824, 1.09669),
(4, 1824, 1.09669),
(4, 1825, 1.05),
(4, 1826, 1.19),
(1, 1827, 0.98),
(4, 1827, 0.98),
(1, 1828, 1.09669),
(4, 1828, 1.09669),
(1, 1842, 4.81),
(1, 1843, 6.04321),
(4, 1852, 1.09669),
(4, 1853, 1.23669),
(1, 1897, 0.91),
(1, 1898, 1.05),
(1, 1900, 0.23331),
(1, 1901, 0.95669),
(1, 1902, 1.09669),
(3, 1948, 0.95669),
(5, 1948, 0.95669),
(3, 1949, 1.07331),
(5, 1949, 1.07331),
(3, 1950, 0.18669),
(5, 1950, 0.18669),
(3, 1951, 1.02669),
(5, 1951, 1.02669),
(3, 1952, 1.28331),
(5, 1952, 1.28331),
(3, 1953, 0.91),
(5, 1953, 0.91),
(3, 1954, 1.14331),
(5, 1954, 1.14331),
(3, 1955, 0.91),
(5, 1955, 0.91),
(3, 1956, 1.09669),
(5, 1956, 1.09669),
(3, 1957, 0.91),
(5, 1957, 0.91),
(3, 1958, 0.98),
(5, 1958, 0.98),
(3, 1959, 1.09669),
(5, 1959, 1.09669),
(3, 1960, 1.21331),
(5, 1960, 1.21331),
(3, 1961, 0.93331),
(5, 1961, 0.93331),
(3, 1962, 1.23669),
(5, 1962, 1.23669),
(3, 1969, 1.00331),
(5, 1969, 1.00331),
(3, 1970, 1.14331),
(5, 1970, 1.14331),
(3, 1978, 1.07331),
(5, 1978, 1.07331),
(3, 1979, 1.23669),
(5, 1979, 1.23669),
(3, 1980, 0.84),
(5, 1980, 0.84),
(3, 1981, 0.98),
(5, 1981, 0.98),
(3, 2048, 2.15339),
(3, 2049, 2.60661),
(3, 2054, 2.26661),
(3, 2055, 2.43661);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms8`
--

DROP TABLE IF EXISTS `#__finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms8`
--

INSERT INTO `#__finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(1, 46, 0.6666),
(2, 46, 0.6666),
(3, 46, 0.6666),
(4, 46, 0.6666),
(5, 46, 0.6666),
(6, 46, 0.6666),
(7, 46, 0.6666),
(1, 47, 0.32004),
(2, 47, 0.32004),
(3, 47, 0.32004),
(4, 47, 0.32004),
(5, 47, 0.32004),
(6, 47, 0.32004),
(7, 47, 0.32004),
(1, 55, 0.15996),
(2, 55, 0.15996),
(3, 55, 0.15996),
(4, 55, 0.15996),
(5, 55, 0.15996),
(6, 55, 0.15996),
(7, 55, 0.15996),
(1, 56, 1.47996),
(2, 56, 1.47996),
(3, 56, 1.47996),
(4, 56, 1.47996),
(5, 56, 1.47996),
(6, 56, 1.47996),
(7, 56, 1.47996),
(1, 204, 0.09331),
(4, 204, 0.09331),
(6, 204, 0.18662),
(2, 204, 0.27993),
(7, 1290, 0.17),
(3, 1313, 0.23331),
(5, 1313, 0.23331),
(6, 1313, 0.23331),
(7, 1313, 0.23331),
(3, 1316, 0.91),
(5, 1316, 0.91),
(6, 1316, 0.91),
(7, 1316, 0.91),
(3, 1317, 1.02669),
(5, 1317, 1.02669),
(6, 1317, 1.02669),
(7, 1317, 1.02669),
(1, 1318, 0.14),
(2, 1318, 0.14),
(4, 1318, 0.14),
(4, 1331, 0.42),
(6, 1331, 0.42),
(2, 1331, 0.84),
(1, 1331, 2.64),
(3, 1340, 0.23331),
(5, 1340, 0.23331),
(6, 1340, 0.23331),
(7, 1340, 0.23331),
(3, 1341, 0.95669),
(5, 1341, 0.95669),
(6, 1341, 0.95669),
(7, 1341, 0.95669),
(3, 1342, 1.05),
(5, 1342, 1.05),
(6, 1342, 1.05),
(7, 1342, 1.05),
(3, 1364, 0.23331),
(5, 1364, 0.23331),
(6, 1364, 0.23331),
(7, 1364, 0.23331),
(6, 1406, 0.28),
(7, 1406, 0.28),
(3, 1406, 0.56),
(5, 1406, 0.56),
(3, 1407, 1.07331),
(5, 1407, 1.07331),
(6, 1407, 1.07331),
(7, 1407, 1.07331),
(3, 1408, 1.35331),
(5, 1408, 1.35331),
(6, 1408, 1.35331),
(7, 1408, 1.35331),
(7, 1409, 0.74),
(3, 1415, 0.32669),
(5, 1415, 0.32669),
(7, 1415, 0.32669),
(2, 1415, 0.65338),
(6, 1415, 0.65338),
(1, 1415, 0.98007),
(4, 1415, 0.98007),
(3, 1416, 0.93331),
(5, 1416, 0.93331),
(6, 1416, 0.93331),
(7, 1416, 0.93331),
(3, 1417, 1.05),
(5, 1417, 1.05),
(6, 1417, 1.05),
(7, 1417, 1.05),
(1, 1418, 0.42),
(3, 1418, 0.42),
(4, 1418, 0.42),
(5, 1418, 0.42),
(2, 1418, 0.84),
(6, 1418, 0.84),
(7, 1418, 1.44),
(2, 1419, 0.98),
(3, 1419, 0.98),
(5, 1419, 0.98),
(7, 1419, 0.98),
(6, 1419, 1.96),
(2, 1420, 1.14331),
(3, 1420, 1.14331),
(5, 1420, 1.14331),
(7, 1420, 1.14331),
(6, 1420, 2.28662),
(1, 1421, 0.32669),
(3, 1421, 0.32669),
(4, 1421, 0.32669),
(7, 1421, 1.72679),
(5, 1421, 2.05348),
(7, 1422, 5.18),
(7, 1423, 5.92),
(2, 1441, 0.42),
(3, 1441, 0.42),
(5, 1441, 0.42),
(7, 1441, 0.42),
(6, 1441, 0.84),
(2, 1442, 1.05),
(3, 1442, 1.05),
(5, 1442, 1.05),
(7, 1442, 1.05),
(6, 1442, 2.1),
(2, 1443, 1.21331),
(3, 1443, 1.21331),
(5, 1443, 1.21331),
(7, 1443, 1.21331),
(6, 1443, 2.42662),
(3, 1444, 0.42),
(5, 1444, 0.42),
(6, 1444, 0.42),
(7, 1444, 0.42),
(3, 1445, 1.09669),
(5, 1445, 1.09669),
(6, 1445, 1.09669),
(7, 1445, 1.09669),
(3, 1446, 1.19),
(5, 1446, 1.19),
(6, 1446, 1.19),
(7, 1446, 1.19),
(5, 1447, 0.23331),
(6, 1447, 0.23331),
(7, 1447, 0.23331),
(3, 1447, 0.79992),
(3, 1448, 1.00331),
(5, 1448, 1.00331),
(6, 1448, 1.00331),
(7, 1448, 1.00331),
(3, 1449, 1.23669),
(5, 1449, 1.23669),
(6, 1449, 1.23669),
(7, 1449, 1.23669),
(2, 1465, 0.42),
(3, 1465, 0.42),
(5, 1465, 0.42),
(7, 1465, 0.42),
(6, 1465, 3.06),
(3, 1466, 1.00331),
(5, 1466, 1.00331),
(6, 1466, 1.00331),
(7, 1466, 1.00331),
(3, 1467, 1.21331),
(5, 1467, 1.21331),
(6, 1467, 1.21331),
(7, 1467, 1.21331),
(1, 1478, 0.56),
(4, 1478, 0.56),
(6, 1478, 0.56),
(7, 1478, 0.56),
(3, 1478, 1.68),
(5, 1478, 1.68),
(3, 1479, 1.14331),
(5, 1479, 1.14331),
(6, 1479, 1.14331),
(7, 1479, 1.14331),
(3, 1480, 1.28331),
(5, 1480, 1.28331),
(6, 1480, 1.28331),
(7, 1480, 1.28331),
(3, 1481, 0.88669),
(5, 1481, 0.88669),
(6, 1481, 0.88669),
(7, 1481, 0.88669),
(3, 1482, 1.12),
(5, 1482, 1.12),
(6, 1482, 1.12),
(7, 1482, 1.12),
(6, 1503, 5.30321),
(6, 1504, 6.16679),
(2, 1505, 1.07331),
(6, 1505, 1.07331),
(2, 1506, 1.21331),
(6, 1506, 1.21331),
(2, 1518, 0.98),
(6, 1518, 0.98),
(2, 1519, 1.02669),
(6, 1519, 1.02669),
(2, 1520, 0.23331),
(6, 1520, 0.23331),
(2, 1521, 1.05),
(6, 1521, 1.05),
(2, 1522, 1.19),
(6, 1522, 1.19),
(2, 1523, 0.65338),
(6, 1523, 0.65338),
(2, 1524, 1.09669),
(6, 1524, 1.09669),
(2, 1525, 1.16669),
(6, 1525, 1.16669),
(2, 1526, 1.00331),
(6, 1526, 1.00331),
(2, 1527, 1.07331),
(6, 1527, 1.07331),
(2, 1528, 1.09669),
(6, 1528, 1.09669),
(2, 1529, 1.26),
(6, 1529, 1.26),
(2, 1530, 0.09331),
(6, 1530, 0.09331),
(2, 1531, 0.88669),
(6, 1531, 0.88669),
(2, 1532, 1.12),
(6, 1532, 1.12),
(2, 1533, 0.93331),
(6, 1533, 0.93331),
(2, 1534, 1.16669),
(6, 1534, 1.16669),
(2, 1535, 0.86331),
(6, 1535, 0.86331),
(2, 1536, 1.02669),
(6, 1536, 1.02669),
(2, 1562, 0.23331),
(3, 1562, 0.23331),
(5, 1562, 0.23331),
(6, 1562, 0.23331),
(2, 1563, 0.88669),
(6, 1563, 0.88669),
(2, 1564, 1.02669),
(6, 1564, 1.02669),
(6, 1565, 1.48),
(7, 1621, 2.43661),
(6, 1638, 2.49339),
(1, 1658, 0.95669),
(2, 1658, 0.95669),
(4, 1658, 0.95669),
(1, 1659, 1.02669),
(2, 1659, 1.02669),
(4, 1659, 1.02669),
(1, 1681, 1.07331),
(2, 1681, 1.07331),
(4, 1681, 1.07331),
(1, 1682, 1.33),
(2, 1682, 1.33),
(4, 1682, 1.33),
(1, 1683, 0.93331),
(2, 1683, 0.93331),
(4, 1683, 0.93331),
(1, 1684, 1.05),
(2, 1684, 1.05),
(4, 1684, 1.05),
(1, 1685, 1.14331),
(2, 1685, 1.14331),
(4, 1685, 1.14331),
(1, 1686, 1.30669),
(2, 1686, 1.30669),
(4, 1686, 1.30669),
(1, 1687, 0.98),
(2, 1687, 0.98),
(4, 1687, 0.98),
(1, 1688, 1.14331),
(2, 1688, 1.14331),
(4, 1688, 1.14331),
(1, 1793, 2.22),
(1, 1794, 5.30321),
(1, 1795, 5.92),
(1, 1796, 0.93331),
(4, 1796, 0.93331),
(1, 1797, 1.19),
(4, 1797, 1.19),
(1, 1798, 0.95669),
(4, 1798, 0.95669),
(1, 1799, 1.05),
(4, 1799, 1.05),
(1, 1800, 1.09669),
(3, 1800, 1.09669),
(4, 1800, 1.09669),
(5, 1800, 6.89348),
(1, 1801, 1.23669),
(3, 1801, 1.23669),
(4, 1801, 1.23669),
(5, 1801, 7.77348),
(1, 1834, 1.14331),
(4, 1834, 1.14331),
(1, 1835, 1.30669),
(4, 1835, 1.30669),
(1, 1836, 0.32669),
(4, 1836, 0.32669),
(1, 1837, 1.02669),
(4, 1837, 1.02669),
(1, 1838, 1.16669),
(4, 1838, 1.16669),
(1, 1839, 0.37331),
(4, 1839, 0.37331),
(1, 1840, 1.07331),
(4, 1840, 1.07331),
(1, 1841, 1.23669),
(4, 1841, 1.23669),
(1, 1904, 0.39996),
(3, 1925, 0.93331),
(5, 1925, 0.93331),
(3, 1926, 1.09669),
(5, 1926, 1.09669),
(3, 1927, 0.23331),
(5, 1927, 0.23331),
(3, 1928, 0.93331),
(5, 1928, 0.93331),
(3, 1929, 1.05),
(5, 1929, 1.05),
(3, 1963, 1.09669),
(5, 1963, 1.09669),
(3, 1964, 1.16669),
(5, 1964, 1.16669),
(3, 1965, 1.09669),
(5, 1965, 1.09669),
(3, 1966, 1.30669),
(5, 1966, 1.30669),
(3, 1967, 1.12),
(5, 1967, 1.12),
(3, 1968, 1.23669),
(5, 1968, 1.23669),
(4, 2032, 1.48),
(4, 2033, 5.42679),
(4, 2034, 6.53679),
(4, 2038, 1.72679),
(4, 2039, 5.67321),
(3, 2052, 2.26661),
(3, 2053, 2.60661);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms9`
--

DROP TABLE IF EXISTS `#__finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_terms9`
--

INSERT INTO `#__finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(3, 1393, 0.23331),
(5, 1393, 0.23331),
(2, 1456, 0.28),
(3, 1456, 0.28),
(5, 1456, 0.28),
(7, 1456, 0.28),
(6, 1456, 0.56),
(3, 1457, 0.93331),
(5, 1457, 0.93331),
(6, 1457, 0.93331),
(7, 1457, 0.93331),
(3, 1458, 1.12),
(5, 1458, 1.12),
(6, 1458, 1.12),
(7, 1458, 1.12),
(2, 1584, 0.95669),
(6, 1584, 0.95669),
(1, 1585, 0.14),
(2, 1585, 0.14),
(3, 1585, 0.14),
(4, 1585, 0.14),
(5, 1585, 0.14),
(6, 1585, 0.14),
(2, 1586, 0.88669),
(6, 1586, 0.88669),
(2, 1587, 1.09669),
(6, 1587, 1.09669),
(6, 1588, 0.23331),
(2, 1588, 0.46662),
(1, 1588, 0.93324),
(4, 1588, 0.93324),
(2, 1589, 0.91),
(6, 1589, 0.91),
(2, 1590, 1.02669),
(6, 1590, 1.02669),
(2, 1591, 0.65338),
(3, 1591, 0.79339),
(6, 1591, 1.44677),
(2, 1592, 0.93331),
(6, 1592, 0.93331),
(2, 1593, 1.00331),
(6, 1593, 1.00331),
(2, 1594, 0.95669),
(6, 1594, 0.95669),
(3, 1594, 2.32339),
(2, 1595, 1.05),
(6, 1595, 1.05),
(6, 1640, 0.09331),
(1, 1717, 1.09669),
(2, 1717, 1.09669),
(4, 1717, 1.09669),
(1, 1718, 1.16669),
(2, 1718, 1.16669),
(4, 1718, 1.16669),
(1, 1719, 0.93338),
(2, 1719, 0.93338),
(4, 1719, 0.93338),
(1, 1720, 1.14331),
(2, 1720, 1.14331),
(4, 1720, 1.14331),
(1, 1721, 1.4),
(2, 1721, 1.4),
(4, 1721, 1.4),
(1, 1722, 1.05),
(2, 1722, 1.05),
(4, 1722, 1.05),
(1, 1723, 1.14331),
(2, 1723, 1.14331),
(4, 1723, 1.14331),
(1, 1724, 0.32669),
(4, 1724, 0.32669),
(2, 1724, 2.05348),
(1, 1725, 0.93331),
(4, 1725, 0.93331),
(2, 1725, 5.86652),
(2, 1726, 5.67321),
(1, 1727, 1.09669),
(2, 1727, 1.09669),
(4, 1727, 1.09669),
(1, 1728, 0.37331),
(2, 1728, 0.37331),
(4, 1728, 0.37331),
(1, 1729, 1.00331),
(2, 1729, 1.00331),
(4, 1729, 1.00331),
(1, 1730, 1.07331),
(2, 1730, 1.07331),
(4, 1730, 1.07331),
(4, 1731, 0.42),
(1, 1731, 0.84),
(2, 1731, 0.84),
(1, 1732, 1.07331),
(2, 1732, 1.07331),
(4, 1732, 1.07331),
(1, 1733, 1.26),
(2, 1733, 1.26),
(4, 1733, 1.26),
(1, 1854, 0.93331),
(4, 1854, 0.93331),
(1, 1855, 1.12),
(4, 1855, 1.12),
(1, 1856, 1.00331),
(4, 1856, 1.00331),
(1, 1857, 1.09669),
(4, 1857, 1.09669),
(1, 1858, 0.98),
(4, 1858, 0.98),
(1, 1859, 1.09669),
(4, 1859, 1.09669),
(1, 1860, 0.42),
(3, 1860, 0.42),
(4, 1860, 0.42),
(5, 1860, 2.64),
(1, 1861, 1.05),
(3, 1861, 1.05),
(4, 1861, 1.05),
(5, 1861, 6.6),
(1, 1862, 1.12),
(4, 1862, 1.12),
(3, 1918, 0.37331),
(5, 1918, 0.37331),
(3, 1919, 1.02669),
(5, 1919, 1.02669),
(3, 1920, 1.23669),
(5, 1920, 1.23669),
(3, 1982, 0.93331),
(5, 1982, 0.93331),
(3, 1983, 0.98),
(5, 1983, 0.98),
(5, 1984, 6.29),
(3, 1985, 1.02669),
(5, 1985, 1.02669),
(3, 1986, 1.09669),
(5, 1986, 1.09669),
(3, 2056, 2.66339);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsa`
--

DROP TABLE IF EXISTS `#__finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_termsa`
--

INSERT INTO `#__finder_links_termsa` (`link_id`, `term_id`, `weight`) VALUES
(4, 895, 0.17);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsb`
--

DROP TABLE IF EXISTS `#__finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_termsb`
--

INSERT INTO `#__finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(2, 1461, 0.32004);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsc`
--

DROP TABLE IF EXISTS `#__finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_termsc`
--

INSERT INTO `#__finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(1, 2, 0.17),
(2, 128, 0.17),
(3, 129, 0.8),
(3, 130, 2.8666);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsd`
--

DROP TABLE IF EXISTS `#__finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_termsd`
--

INSERT INTO `#__finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(7, 1, 0),
(1, 1554, 0.18669),
(4, 1554, 0.18669),
(6, 1554, 0.18669),
(2, 1554, 0.37338),
(2, 1555, 0.98),
(6, 1555, 0.98),
(2, 1556, 1.21331),
(6, 1556, 1.21331),
(2, 1557, 0.37338),
(6, 1557, 0.37338),
(1, 1557, 0.98679),
(2, 1558, 0.88669),
(6, 1558, 0.88669),
(2, 1559, 1.07331),
(6, 1559, 1.07331),
(2, 1560, 1.00331),
(6, 1560, 1.00331),
(2, 1561, 1.19),
(6, 1561, 1.19),
(3, 1626, 0.22661),
(7, 1626, 0.22661),
(7, 1627, 2.26661),
(7, 1628, 2.49339),
(1, 1700, 0.86331),
(2, 1700, 0.86331),
(4, 1700, 0.86331),
(1, 1701, 0.95669),
(2, 1701, 0.95669),
(4, 1701, 0.95669),
(1, 1702, 0.28),
(4, 1702, 0.28),
(2, 1702, 1.76),
(1, 1703, 0.95669),
(4, 1703, 0.95669),
(2, 1703, 6.01348),
(1, 1704, 1.19),
(4, 1704, 1.19),
(2, 1704, 7.48),
(1, 1829, 5.42679),
(1, 1830, 5.92),
(1, 1831, 0.74),
(1, 1832, 4.68679),
(1, 1833, 5.92),
(3, 2050, 2.26661),
(3, 2051, 2.49339);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termse`
--

DROP TABLE IF EXISTS `#__finder_links_termse`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_termse`
--

INSERT INTO `#__finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(3, 87, 1.0666),
(3, 768, 0.17),
(5, 1150, 0.17),
(3, 1321, 0.42),
(5, 1321, 0.42),
(6, 1321, 0.42),
(7, 1321, 0.42),
(6, 1324, 0.18669),
(7, 1324, 0.18669),
(3, 1324, 0.37338),
(5, 1324, 0.37338),
(1, 1328, 0.09331),
(2, 1328, 0.09331),
(4, 1328, 0.09331),
(1, 1383, 0.28),
(4, 1383, 0.28),
(1, 1410, 0.32669),
(4, 1410, 0.32669),
(7, 1410, 1.72679),
(7, 1411, 5.05679),
(3, 1412, 1.19),
(5, 1412, 1.19),
(6, 1412, 1.19),
(7, 1412, 1.19),
(3, 1413, 1.02669),
(5, 1413, 1.02669),
(6, 1413, 1.02669),
(7, 1413, 1.02669),
(3, 1414, 1.16669),
(5, 1414, 1.16669),
(6, 1414, 1.16669),
(7, 1414, 1.16669),
(7, 1459, 1.04004),
(3, 1468, 1.4),
(5, 1468, 1.4),
(6, 1468, 1.4),
(7, 1468, 1.4),
(4, 1507, 0.18669),
(2, 1507, 0.37338),
(6, 1507, 0.37338),
(1, 1507, 1.17348),
(2, 1508, 0.88669),
(6, 1508, 0.88669),
(2, 1509, 0.98),
(6, 1509, 0.98),
(1, 1510, 0.93331),
(2, 1510, 0.93331),
(4, 1510, 0.93331),
(6, 1510, 0.93331),
(2, 1511, 1.02669),
(6, 1511, 1.02669),
(1, 1512, 0.14),
(4, 1512, 0.14),
(6, 1512, 0.14),
(2, 1512, 0.28),
(3, 1512, 0.34),
(2, 1513, 0.86331),
(6, 1513, 0.86331),
(2, 1514, 0.98),
(6, 1514, 0.98),
(6, 1515, 0.74),
(6, 1516, 4.93321),
(6, 1517, 5.79679),
(2, 1574, 0.28),
(6, 1574, 0.28),
(2, 1575, 0.98),
(6, 1575, 0.98),
(2, 1576, 1.16669),
(6, 1576, 1.16669),
(1, 1577, 0.42),
(3, 1577, 0.42),
(4, 1577, 0.42),
(5, 1577, 0.42),
(6, 1577, 0.42),
(2, 1577, 0.84),
(2, 1578, 1.07331),
(6, 1578, 1.07331),
(2, 1579, 1.21331),
(6, 1579, 1.21331),
(7, 1622, 2.89),
(3, 1660, 0.18669),
(5, 1660, 0.18669),
(1, 1660, 0.37338),
(4, 1660, 0.37338),
(2, 1660, 1.17348),
(1, 1661, 1.02669),
(4, 1661, 1.02669),
(2, 1661, 6.45348),
(1, 1662, 1.26),
(2, 1662, 1.26),
(4, 1662, 1.26),
(2, 1663, 1.23321),
(2, 1664, 5.18),
(2, 1665, 5.79679),
(1, 1666, 0.37338),
(2, 1666, 0.37338),
(4, 1666, 0.37338),
(1, 1667, 0.86331),
(2, 1667, 0.86331),
(4, 1667, 0.86331),
(1, 1668, 1.07331),
(2, 1668, 1.07331),
(4, 1668, 1.07331),
(1, 1669, 0.88669),
(2, 1669, 0.88669),
(1, 1670, 1.12),
(2, 1670, 1.12),
(1, 1671, 1.00331),
(2, 1671, 1.00331),
(4, 1671, 1.00331),
(1, 1672, 1.23669),
(2, 1672, 1.23669),
(4, 1672, 1.23669),
(1, 1673, 0.86331),
(2, 1673, 0.86331),
(4, 1673, 0.86331),
(1, 1674, 1.07331),
(2, 1674, 1.07331),
(4, 1674, 1.07331),
(2, 1675, 0.09331),
(1, 1675, 0.18662),
(4, 1675, 0.18662),
(1, 1676, 0.95669),
(2, 1676, 0.95669),
(4, 1676, 0.95669),
(1, 1677, 1.05),
(2, 1677, 1.05),
(4, 1677, 1.05),
(1, 1678, 0.32669),
(2, 1678, 0.32669),
(3, 1678, 0.32669),
(4, 1678, 0.32669),
(5, 1678, 0.32669),
(1, 1679, 1.05),
(2, 1679, 1.05),
(4, 1679, 1.05),
(1, 1680, 1.12),
(2, 1680, 1.12),
(4, 1680, 1.12),
(1, 1711, 1.09669),
(2, 1711, 1.09669),
(4, 1711, 1.09669),
(1, 1712, 1.21331),
(2, 1712, 1.21331),
(4, 1712, 1.21331),
(1, 1786, 1.02669),
(4, 1786, 1.02669),
(1, 1787, 1.19),
(4, 1787, 1.19),
(1, 1788, 5.42679),
(1, 1789, 1.02669),
(4, 1789, 1.02669),
(1, 1790, 1.09669),
(4, 1790, 1.09669),
(1, 1791, 1.00331),
(4, 1791, 1.00331),
(1, 1792, 1.05),
(4, 1792, 1.05),
(1, 1847, 0.98),
(4, 1847, 0.98),
(1, 1848, 1.16669),
(4, 1848, 1.16669),
(1, 1849, 0.28),
(4, 1849, 0.28),
(1, 1850, 0.91),
(4, 1850, 0.91),
(1, 1851, 1.12),
(4, 1851, 1.12),
(3, 1930, 0.86331),
(5, 1930, 0.86331),
(3, 1931, 1.02669),
(5, 1931, 1.02669),
(3, 1932, 0.86331),
(5, 1932, 0.86331),
(3, 1933, 0.95669),
(5, 1933, 0.95669),
(3, 1934, 0.18669),
(5, 1934, 0.18669),
(3, 1935, 0.95669),
(5, 1935, 0.95669),
(3, 1936, 1.23669),
(5, 1936, 1.23669),
(3, 1937, 0.98),
(5, 1937, 0.98),
(3, 1938, 1.09669),
(5, 1938, 1.09669),
(3, 1976, 1.16669),
(5, 1976, 1.16669),
(3, 1977, 1.33),
(5, 1977, 1.33),
(3, 2047, 2.21);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsf`
--

DROP TABLE IF EXISTS `#__finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
);

--
-- Dumping data for table `#__finder_links_termsf`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy`
--

DROP TABLE IF EXISTS `#__finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
);

--
-- Dumping data for table `#__finder_taxonomy`
--

INSERT INTO `#__finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(3, 2, 'K2 Item', 1, 1, 0),
(4, 1, 'Author', 1, 1, 0),
(5, 4, 'Super User', 1, 1, 0),
(6, 1, 'K2 Category', 1, 1, 0),
(7, 6, 'RocketTheme', 1, 1, 0),
(8, 1, 'Language', 1, 1, 0),
(9, 8, '*', 1, 1, 0),
(10, 6, 'Joomla Templates', 1, 1, 0),
(11, 6, 'phpBB3 Styles', 1, 1, 0),
(12, 6, 'Wordpress Theme', 1, 1, 0),
(13, 6, 'Entertainment', 1, 1, 0),
(14, 6, 'Movie', 1, 1, 0),
(15, 6, 'Game', 1, 1, 0),
(16, 6, 'Magazine', 1, 1, 0),
(17, 6, 'Drama', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy_map`
--

DROP TABLE IF EXISTS `#__finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
);

--
-- Dumping data for table `#__finder_taxonomy_map`
--

INSERT INTO `#__finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 9),
(1, 17),
(2, 3),
(2, 5),
(2, 9),
(2, 15),
(3, 3),
(3, 5),
(3, 9),
(3, 14),
(4, 3),
(4, 5),
(4, 9),
(4, 14),
(5, 3),
(5, 5),
(5, 9),
(5, 14),
(6, 3),
(6, 5),
(6, 9),
(6, 14),
(7, 3),
(7, 5),
(7, 9),
(7, 13);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms`
--

DROP TABLE IF EXISTS `#__finder_terms`;
CREATE TABLE IF NOT EXISTS `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
);

--
-- Dumping data for table `#__finder_terms`
--

INSERT INTO `#__finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(1, '', '', 0, 0, 0, '', 76),
(2, '1', '1', 0, 0, 0.1, '', 16),
(3, 'about', 'about', 0, 0, 0.3333, 'A130', 13),
(4, 'about our', 'about our', 0, 1, 1.3, 'A136', 13),
(5, 'about our products', 'about our products', 0, 1, 1.6, 'A136163232', 13),
(6, 'access', 'access', 0, 0, 0.4, 'A200', 13),
(7, 'access to', 'access to', 0, 1, 1.3, 'A230', 13),
(8, 'access to professional', 'access to professional', 0, 1, 1.7333, 'A23161254', 13),
(9, 'and', 'and', 0, 0, 0.2, 'A530', 34),
(10, 'and rockettheme', 'and rockettheme', 0, 1, 1.5, 'A536235', 13),
(11, 'and rockettheme extensions', 'and rockettheme extensions', 0, 1, 1.8667, 'A536235235252', 13),
(12, 'and set', 'and set', 0, 1, 1.2333, 'A5323', 13),
(13, 'and set you', 'and set you', 0, 1, 1.3667, 'A5323', 13),
(14, 'apart', 'apart', 0, 0, 0.3333, 'A163', 13),
(15, 'apart from', 'apart from', 0, 1, 1.3333, 'A163165', 13),
(16, 'apart from the', 'apart from the', 0, 1, 1.4667, 'A1631653', 13),
(17, 'based', 'based', 0, 0, 0.3333, 'B230', 13),
(18, 'based site', 'based site', 0, 1, 1.3333, 'B2323', 13),
(19, 'based site and', 'based site and', 0, 1, 1.4667, 'B232353', 13),
(20, 'club', 'club', 0, 0, 0.2667, 'C410', 19),
(21, 'club and', 'club and', 0, 1, 1.2667, 'C4153', 13),
(22, 'club and rockettheme', 'club and rockettheme', 0, 1, 1.6667, 'C41536235', 13),
(23, 'club features', 'club features', 0, 1, 1.4333, 'C41362', 13),
(24, 'club features exclusive', 'club features exclusive', 0, 1, 1.7667, 'C41362421', 13),
(25, 'competition', 'competition', 0, 0, 0.7333, 'C5135', 13),
(26, 'competition visit', 'competition visit', 0, 1, 1.5667, 'C5135123', 13),
(27, 'competition visit rockettheme', 'competition visit rockettheme', 0, 1, 1.9667, 'C51351236235', 13),
(28, 'elegant', 'elegant', 0, 0, 0.4667, 'E4253', 15),
(29, 'elegant templates', 'elegant templates', 0, 1, 1.5667, 'E425351432', 13),
(30, 'elegant templates provider', 'elegant templates provider', 0, 1, 1.8667, 'E42535143216136', 13),
(31, 'exclusive', 'exclusive', 0, 0, 0.6, 'E2421', 13),
(32, 'exclusive access', 'exclusive access', 0, 1, 1.5333, 'E24212', 13),
(33, 'exclusive access to', 'exclusive access to', 0, 1, 1.6333, 'E242123', 13),
(34, 'extensions', 'extensions', 0, 0, 0.6667, 'E235252', 17),
(35, 'extensions club', 'extensions club', 0, 1, 1.5, 'E23525241', 13),
(36, 'extensions club features', 'extensions club features', 0, 1, 1.8, 'E23525241362', 13),
(37, 'features', 'features', 0, 0, 0.5333, 'F362', 27),
(38, 'features exclusive', 'features exclusive', 0, 1, 1.6, 'F362421', 13),
(39, 'features exclusive access', 'features exclusive access', 0, 1, 1.8333, 'F3624212', 13),
(40, 'from', 'from', 0, 0, 0.2667, 'F650', 13),
(41, 'from the', 'from the', 0, 1, 1.2667, 'F653', 13),
(42, 'from the competition', 'from the competition', 0, 1, 1.6667, 'F65325135', 13),
(43, 'help', 'help', 0, 0, 0.2667, 'H410', 13),
(44, 'help transform', 'help transform', 0, 1, 1.4667, 'H413652165', 13),
(45, 'help transform your', 'help transform your', 0, 1, 1.6333, 'H4136521656', 13),
(46, 'index', 'index', 0, 0, 0.3333, 'I532', 76),
(47, 'item', 'item', 0, 0, 0.2667, 'I350', 76),
(48, 'joomla', 'joomla', 0, 0, 0.4, 'J540', 22),
(49, 'joomla based', 'joomla based', 0, 1, 1.4, 'J54123', 13),
(50, 'joomla based site', 'joomla based site', 0, 1, 1.5667, 'J5412323', 13),
(51, 'joomla template', 'joomla template', 0, 1, 1.5, 'J5435143', 13),
(52, 'joomla template club', 'joomla template club', 0, 1, 1.6667, 'J5435143241', 13),
(53, 'joomla templates', 'joomla templates', 0, 1, 1.5333, 'J54351432', 21),
(54, 'joomla templates to', 'joomla templates to', 0, 1, 1.6333, 'J543514323', 13),
(55, 'k2', 'k2', 0, 0, 0.1333, 'K000', 76),
(56, 'k2 item', 'k2 item', 0, 1, 1.2333, 'K350', 76),
(57, 'learn', 'learn', 0, 0, 0.3333, 'L650', 13),
(58, 'learn more', 'learn more', 0, 1, 1.3333, 'L656', 13),
(59, 'learn more about', 'learn more about', 0, 1, 1.5333, 'L65613', 13),
(60, 'more', 'more', 0, 0, 0.2667, 'M600', 13),
(61, 'more about', 'more about', 0, 1, 1.3333, 'M613', 13),
(62, 'more about our', 'more about our', 0, 1, 1.4667, 'M6136', 13),
(63, 'our', 'our', 0, 0, 0.2, 'O600', 17),
(64, 'our products', 'our products', 0, 1, 1.4, 'O6163232', 13),
(65, 'products', 'products', 0, 0, 0.5333, 'P63232', 13),
(66, 'professional', 'professional', 0, 0, 0.8, 'P61254', 13),
(67, 'professional joomla', 'professional joomla', 0, 1, 1.6333, 'P61254254', 13),
(68, 'professional joomla templates', 'professional joomla templates', 0, 1, 1.9667, 'P61254254351432', 13),
(69, 'provider', 'provider', 0, 0, 0.5333, 'P6136', 13),
(70, 'rockettheme', 'rockettheme', 0, 0, 0.7333, 'R235', 29),
(71, 'rockettheme elegant', 'rockettheme elegant', 0, 1, 1.6333, 'R2354253', 13),
(72, 'rockettheme elegant templates', 'rockettheme elegant templates', 0, 1, 1.9667, 'R235425351432', 13),
(73, 'rockettheme extensions', 'rockettheme extensions', 0, 1, 1.7333, 'R235235252', 17),
(74, 'rockettheme extensions club', 'rockettheme extensions club', 0, 1, 1.9, 'R23523525241', 13),
(75, 'rockettheme joomla', 'rockettheme joomla', 0, 1, 1.6, 'R235254', 13),
(76, 'rockettheme joomla template', 'rockettheme joomla template', 0, 1, 1.9, 'R23525435143', 13),
(77, 'rockettheme website', 'rockettheme website', 0, 1, 1.6333, 'R235123', 13),
(78, 'rockettheme website to', 'rockettheme website to', 0, 1, 1.7333, 'R235123', 13),
(79, 'set', 'set', 0, 0, 0.2, 'S300', 13),
(80, 'set you', 'set you', 0, 1, 1.2333, 'S300', 13),
(81, 'set you apart', 'set you apart', 0, 1, 1.4333, 'S3163', 13),
(82, 'site', 'site', 0, 0, 0.2667, 'S300', 15),
(83, 'site and', 'site and', 0, 1, 1.2667, 'S353', 13),
(84, 'site and set', 'site and set', 0, 1, 1.4, 'S35323', 13),
(85, 'super', 'super', 0, 0, 0.3333, 'S160', 76),
(86, 'super user', 'super user', 0, 1, 1.3333, 'S1626', 76),
(87, 'template', 'template', 0, 0, 0.5333, 'T5143', 29),
(88, 'template club', 'template club', 0, 1, 1.4333, 'T5143241', 13),
(89, 'template club and', 'template club and', 0, 1, 1.5667, 'T514324153', 13),
(90, 'templates', 'templates', 0, 0, 0.6, 'T51432', 21),
(91, 'templates provider', 'templates provider', 0, 1, 1.6, 'T5143216136', 13),
(92, 'templates to', 'templates to', 0, 1, 1.4, 'T514323', 13),
(93, 'templates to help', 'templates to help', 0, 1, 1.5667, 'T51432341', 13),
(94, 'the', 'the', 0, 0, 0.2, 'T000', 34),
(95, 'the competition', 'the competition', 0, 1, 1.5, 'T25135', 13),
(96, 'the competition visit', 'the competition visit', 0, 1, 1.7, 'T25135123', 13),
(97, 'the rockettheme', 'the rockettheme', 0, 1, 1.5, 'T6235', 13),
(98, 'the rockettheme joomla', 'the rockettheme joomla', 0, 1, 1.7333, 'T6235254', 13),
(99, 'to', 'to', 0, 0, 0.1333, 'T000', 24),
(100, 'to help', 'to help', 0, 1, 1.2333, 'T410', 13),
(101, 'to help transform', 'to help transform', 0, 1, 1.5667, 'T413652165', 13),
(102, 'to learn', 'to learn', 0, 1, 1.2667, 'T465', 13),
(103, 'to learn more', 'to learn more', 0, 1, 1.4333, 'T4656', 13),
(104, 'to professional', 'to professional', 0, 1, 1.5, 'T161254', 13),
(105, 'to professional joomla', 'to professional joomla', 0, 1, 1.7333, 'T161254254', 13),
(106, 'transform', 'transform', 0, 0, 0.6, 'T652165', 13),
(107, 'transform your', 'transform your', 0, 1, 1.4667, 'T6521656', 13),
(108, 'transform your joomla', 'transform your joomla', 0, 1, 1.7, 'T6521656254', 13),
(109, 'user', 'user', 0, 0, 0.2667, 'U260', 76),
(110, 'visit', 'visit', 0, 0, 0.3333, 'V230', 13),
(111, 'visit rockettheme', 'visit rockettheme', 0, 1, 1.5667, 'V236235', 13),
(112, 'visit rockettheme website', 'visit rockettheme website', 0, 1, 1.8333, 'V236235123', 13),
(113, 'website', 'website', 0, 0, 0.4667, 'W123', 13),
(114, 'website to', 'website to', 0, 1, 1.3333, 'W123', 13),
(115, 'website to learn', 'website to learn', 0, 1, 1.5333, 'W123465', 13),
(116, 'you', 'you', 0, 0, 0.2, 'Y000', 18),
(117, 'you apart', 'you apart', 0, 1, 1.3, 'Y163', 13),
(118, 'you apart from', 'you apart from', 0, 1, 1.4667, 'Y163165', 13),
(119, 'your', 'your', 0, 0, 0.2667, 'Y600', 15),
(120, 'your joomla', 'your joomla', 0, 1, 1.3667, 'Y6254', 13),
(121, 'your joomla based', 'your joomla based', 0, 1, 1.5667, 'Y6254123', 13),
(128, '2', '2', 0, 0, 0.1, '', 11),
(129, '2012', '2012', 0, 0, 0.4, '', 16),
(130, '2012 template', '2012 template', 0, 1, 1.4333, 'T5143', 16),
(131, '2012 template release', '2012 template release', 0, 1, 1.7, 'T5143642', 10),
(132, 'a', 'a', 0, 0, 0.0667, 'A000', 53),
(133, 'a beautifully', 'a beautifully', 0, 1, 1.4333, 'A1314', 4),
(134, 'a beautifully layered', 'a beautifully layered', 0, 1, 1.7, 'A131463', 4),
(135, 'a distinct', 'a distinct', 0, 1, 1.3333, 'A323523', 4),
(136, 'a distinct panel-based', 'a distinct panel-based', 0, 1, 1.7333, 'A323523154123', 4),
(137, 'a powerful', 'a powerful', 0, 1, 1.3333, 'A1614', 8),
(138, 'a powerful core', 'a powerful core', 0, 1, 1.5, 'A161426', 4),
(139, 'a range', 'a range', 0, 1, 1.2333, 'A652', 11),
(140, 'a range of', 'a range of', 0, 1, 1.3333, 'A6521', 11),
(141, 'addition', 'addition', 0, 0, 0.5333, 'A350', 4),
(142, 'addition to', 'addition to', 0, 1, 1.3667, 'A353', 4),
(143, 'addition to standard', 'addition to standard', 0, 1, 1.6667, 'A353235363', 4),
(144, 'and functional', 'and functional', 0, 1, 1.4667, 'A53152354', 4),
(145, 'and functional features', 'and functional features', 0, 1, 1.7667, 'A531523541362', 4),
(146, 'april', 'april', 0, 0, 0.3333, 'A164', 4),
(147, 'april 2012', 'april 2012', 0, 1, 1.3333, 'A164', 4),
(148, 'april 2012 template', 'april 2012 template', 0, 1, 1.6333, 'A16435143', 4),
(149, 'as', 'as', 0, 0, 0.1333, 'A200', 14),
(150, 'as roksprocket', 'as roksprocket', 0, 1, 1.4667, 'A2621623', 4),
(151, 'as the', 'as the', 0, 1, 1.2, 'A230', 10),
(152, 'as the stunning', 'as the stunning', 0, 1, 1.5, 'A232352', 4),
(153, 'beautifully', 'beautifully', 0, 0, 0.7333, 'B314', 4),
(154, 'beautifully layered', 'beautifully layered', 0, 1, 1.6333, 'B31463', 4),
(155, 'beautifully layered template', 'beautifully layered template', 0, 1, 1.9333, 'B314635143', 4),
(156, 'built', 'built', 0, 0, 0.3333, 'B430', 6),
(157, 'built on', 'built on', 0, 1, 1.2667, 'B435', 6),
(158, 'built on the', 'built on the', 0, 1, 1.4, 'B4353', 6),
(159, 'colorchooser', 'colorchooser', 0, 0, 0.8, 'C4626', 4),
(160, 'colorchooser system', 'colorchooser system', 0, 1, 1.6333, 'C4626235', 4),
(161, 'colorchooser system the', 'colorchooser system the', 0, 1, 1.7667, 'C46262353', 4),
(162, 'core', 'core', 0, 0, 0.2667, 'C600', 4),
(163, 'core supporting', 'core supporting', 0, 1, 1.5, 'C6216352', 4),
(164, 'core supporting versatile', 'core supporting versatile', 0, 1, 1.8333, 'C621635216234', 4),
(165, 'design', 'design', 0, 0, 0.4, 'D250', 12),
(166, 'design using', 'design using', 0, 1, 1.4, 'D25252', 4),
(167, 'design using the', 'design using the', 0, 1, 1.5333, 'D252523', 4),
(168, 'diametric', 'diametric', 0, 0, 0.6, 'D5362', 4),
(169, 'diametric has', 'diametric has', 0, 1, 1.4333, 'D5362', 4),
(170, 'diametric has a', 'diametric has a', 0, 1, 1.5, 'D5362', 4),
(171, 'diametric march', 'diametric march', 0, 1, 1.5, 'D5362562', 2),
(172, 'diametric march 2012', 'diametric march 2012', 0, 1, 1.6667, 'D5362562', 2),
(173, 'diametric the', 'diametric the', 0, 1, 1.4333, 'D53623', 4),
(174, 'diametric the april', 'diametric the april', 0, 1, 1.6333, 'D53623164', 4),
(175, 'distinct', 'distinct', 0, 0, 0.5333, 'D23523', 9),
(176, 'distinct panel-based', 'distinct panel-based', 0, 1, 1.6667, 'D23523154123', 4),
(177, 'distinct panel-based design', 'distinct panel-based design', 0, 1, 1.9, 'D2352315412325', 4),
(178, 'elements', 'elements', 0, 0, 0.5333, 'E4532', 4),
(179, 'elements such', 'elements such', 0, 1, 1.4333, 'E4532', 4),
(180, 'elements such as', 'elements such as', 0, 1, 1.5333, 'E4532', 4),
(181, 'extensions such', 'extensions such', 0, 1, 1.5, 'E235252', 4),
(182, 'extensions such as', 'extensions such as', 0, 1, 1.6, 'E235252', 4),
(183, 'features in', 'features in', 0, 1, 1.3667, 'F3625', 4),
(184, 'features in addition', 'features in addition', 0, 1, 1.6667, 'F362535', 4),
(185, 'for', 'for', 0, 0, 0.2, 'F600', 13),
(186, 'for a', 'for a', 0, 1, 1.1667, 'F600', 6),
(187, 'for a range', 'for a range', 0, 1, 1.3667, 'F652', 4),
(188, 'framework', 'framework', 0, 0, 0.6, 'F6562', 6),
(189, 'framework diametric', 'framework diametric', 0, 1, 1.6333, 'F656235362', 4),
(190, 'framework diametric has', 'framework diametric has', 0, 1, 1.7667, 'F656235362', 4),
(191, 'functional', 'functional', 0, 0, 0.6667, 'F52354', 4),
(192, 'functional features', 'functional features', 0, 1, 1.6333, 'F523541362', 4),
(193, 'functional features in', 'functional features in', 0, 1, 1.7333, 'F5235413625', 4),
(194, 'fusion', 'fusion', 0, 0, 0.4, 'F250', 4),
(195, 'fusion menu', 'fusion menu', 0, 1, 1.3667, 'F250', 4),
(196, 'gantry', 'gantry', 0, 0, 0.4, 'G536', 6),
(197, 'gantry framework', 'gantry framework', 0, 1, 1.5333, 'G53616562', 6),
(198, 'gantry framework diametric', 'gantry framework diametric', 0, 1, 1.8667, 'G5361656235362', 4),
(199, 'has', 'has', 0, 0, 0.2, 'H200', 8),
(200, 'has a', 'has a', 0, 1, 1.1667, 'H200', 6),
(201, 'has a powerful', 'has a powerful', 0, 1, 1.4667, 'H21614', 4),
(202, 'has integrated', 'has integrated', 0, 1, 1.4667, 'H253263', 6),
(203, 'has integrated styling', 'has integrated styling', 0, 1, 1.7333, 'H25326323452', 6),
(204, 'in', 'in', 0, 0, 0.1333, 'I500', 27),
(205, 'in addition', 'in addition', 0, 1, 1.3667, 'I535', 4),
(206, 'in addition to', 'in addition to', 0, 1, 1.4667, 'I5353', 4),
(207, 'integrated', 'integrated', 0, 0, 0.6667, 'I53263', 11),
(208, 'integrated styling', 'integrated styling', 0, 1, 1.6, 'I5326323452', 11),
(209, 'integrated styling for', 'integrated styling for', 0, 1, 1.7333, 'I532632345216', 11),
(210, 'is', 'is', 0, 0, 0.1333, 'I200', 10),
(211, 'is a', 'is a', 0, 1, 1.1333, 'I200', 6),
(212, 'is a beautifully', 'is a beautifully', 0, 1, 1.5333, 'I21314', 4),
(213, 'layered', 'layered', 0, 0, 0.4667, 'L630', 4),
(214, 'layered template', 'layered template', 0, 1, 1.5333, 'L635143', 4),
(215, 'layered template with', 'layered template with', 0, 1, 1.7, 'L635143', 4),
(216, 'march', 'march', 0, 0, 0.3333, 'M620', 4),
(217, 'march 2012', 'march 2012', 0, 1, 1.3333, 'M620', 4),
(218, 'march 2012 template', 'march 2012 template', 0, 1, 1.6333, 'M6235143', 4),
(219, 'menu', 'menu', 0, 0, 0.2667, 'M000', 4),
(220, 'of', 'of', 0, 0, 0.1333, 'O100', 17),
(221, 'of popular', 'of popular', 0, 1, 1.3333, 'O146', 4),
(222, 'of popular rockettheme', 'of popular rockettheme', 0, 1, 1.7333, 'O146235', 4),
(223, 'on', 'on', 0, 0, 0.1333, 'O500', 8),
(224, 'on the', 'on the', 0, 1, 1.2, 'O530', 6),
(225, 'on the gantry', 'on the gantry', 0, 1, 1.4333, 'O532536', 6),
(226, 'panel-based', 'panel-based', 0, 0, 0.7333, 'P54123', 4),
(227, 'panel-based design', 'panel-based design', 0, 1, 1.6, 'P5412325', 4),
(228, 'panel-based design using', 'panel-based design using', 0, 1, 1.8, 'P5412325252', 4),
(229, 'popular', 'popular', 0, 0, 0.4667, 'P460', 4),
(230, 'popular rockettheme', 'popular rockettheme', 0, 1, 1.6333, 'P46235', 4),
(231, 'popular rockettheme extensions', 'popular rockettheme extensions', 0, 1, 2, 'P46235235252', 4),
(232, 'powerful', 'powerful', 0, 0, 0.5333, 'P614', 10),
(233, 'powerful colorchooser', 'powerful colorchooser', 0, 1, 1.7, 'P61424626', 4),
(234, 'powerful colorchooser system', 'powerful colorchooser system', 0, 1, 1.9333, 'P61424626235', 4),
(235, 'powerful core', 'powerful core', 0, 1, 1.4333, 'P61426', 4),
(236, 'powerful core supporting', 'powerful core supporting', 0, 1, 1.8, 'P61426216352', 4),
(237, 'range', 'range', 0, 0, 0.3333, 'R520', 11),
(238, 'range of', 'range of', 0, 1, 1.2667, 'R521', 11),
(239, 'range of popular', 'range of popular', 0, 1, 1.5333, 'R52146', 4),
(240, 'release', 'release', 0, 0, 0.4667, 'R420', 21),
(241, 'release is', 'release is', 0, 1, 1.3333, 'R420', 10),
(242, 'release is a', 'release is a', 0, 1, 1.4, 'R420', 6),
(243, 'rockettheme extensions such', 'rockettheme extensions such', 0, 1, 1.9, 'R235235252', 4),
(244, 'roksprocket', 'roksprocket', 0, 0, 0.7333, 'R21623', 6),
(245, 'standard', 'standard', 0, 0, 0.5333, 'S35363', 10),
(246, 'standard elements', 'standard elements', 0, 1, 1.5667, 'S353634532', 4),
(247, 'standard elements such', 'standard elements such', 0, 1, 1.7333, 'S353634532', 4),
(248, 'stunning', 'stunning', 0, 0, 0.5333, 'S352', 9),
(249, 'stunning fusion', 'stunning fusion', 0, 1, 1.5, 'S352125', 4),
(250, 'stunning fusion menu', 'stunning fusion menu', 0, 1, 1.6667, 'S352125', 4),
(251, 'styling', 'styling', 0, 0, 0.4667, 'S3452', 11),
(252, 'styling for', 'styling for', 0, 1, 1.3667, 'S345216', 11),
(253, 'styling for a', 'styling for a', 0, 1, 1.4333, 'S345216', 4),
(254, 'such', 'such', 0, 0, 0.2667, 'S000', 12),
(255, 'such as', 'such as', 0, 1, 1.2333, 'S000', 12),
(256, 'such as roksprocket', 'such as roksprocket', 0, 1, 1.6333, 'S621623', 4),
(257, 'such as the', 'such as the', 0, 1, 1.3667, 'S300', 10),
(258, 'supporting', 'supporting', 0, 0, 0.6667, 'S16352', 4),
(259, 'supporting versatile', 'supporting versatile', 0, 1, 1.6667, 'S1635216234', 4),
(260, 'supporting versatile and', 'supporting versatile and', 0, 1, 1.8, 'S163521623453', 4),
(261, 'system', 'system', 0, 0, 0.4, 'S350', 6),
(262, 'system the', 'system the', 0, 1, 1.3333, 'S353', 4),
(263, 'system the template', 'system the template', 0, 1, 1.6333, 'S3535143', 4),
(264, 'template has', 'template has', 0, 1, 1.4, 'T51432', 6),
(265, 'template has integrated', 'template has integrated', 0, 1, 1.7667, 'T5143253263', 6),
(266, 'template release', 'template release', 0, 1, 1.5333, 'T5143642', 10),
(267, 'template release is', 'template release is', 0, 1, 1.6333, 'T5143642', 10),
(268, 'template with', 'template with', 0, 1, 1.4333, 'T5143', 4),
(269, 'template with a', 'template with a', 0, 1, 1.5, 'T5143', 4),
(270, 'the april', 'the april', 0, 1, 1.3, 'T164', 4),
(271, 'the april 2012', 'the april 2012', 0, 1, 1.4667, 'T164', 4),
(272, 'the gantry', 'the gantry', 0, 1, 1.3333, 'T2536', 6),
(273, 'the gantry framework', 'the gantry framework', 0, 1, 1.6667, 'T253616562', 6),
(274, 'the powerful', 'the powerful', 0, 1, 1.4, 'T1614', 4),
(275, 'the powerful colorchooser', 'the powerful colorchooser', 0, 1, 1.8333, 'T161424626', 4),
(276, 'the stunning', 'the stunning', 0, 1, 1.4, 'T2352', 4),
(277, 'the stunning fusion', 'the stunning fusion', 0, 1, 1.6333, 'T2352125', 4),
(278, 'the template', 'the template', 0, 1, 1.4, 'T5143', 8),
(279, 'the template has', 'the template has', 0, 1, 1.5333, 'T51432', 6),
(280, 'to standard', 'to standard', 0, 1, 1.3667, 'T235363', 4),
(281, 'to standard elements', 'to standard elements', 0, 1, 1.6667, 'T2353634532', 4),
(282, 'using', 'using', 0, 0, 0.3333, 'U252', 4),
(283, 'using the', 'using the', 0, 1, 1.3, 'U2523', 4),
(284, 'using the powerful', 'using the powerful', 0, 1, 1.6, 'U25231614', 4),
(285, 'versatile', 'versatile', 0, 0, 0.6, 'V6234', 6),
(286, 'versatile and', 'versatile and', 0, 1, 1.4333, 'V623453', 4),
(287, 'versatile and functional', 'versatile and functional', 0, 1, 1.8, 'V623453152354', 4),
(288, 'with', 'with', 0, 0, 0.2667, 'W300', 17),
(289, 'with a', 'with a', 0, 1, 1.2, 'W300', 4),
(290, 'with a distinct', 'with a distinct', 0, 1, 1.5, 'W323523', 4),
(383, 'diametric april', 'diametric april', 0, 1, 1.5, 'D5362164', 3),
(384, 'diametric april 2012', 'diametric april 2012', 0, 1, 1.6667, 'D5362164', 3),
(386, '2011', '2011', 0, 0, 0.4, '', 13),
(387, '2011 phpbb3', '2011 phpbb3', 0, 1, 1.3667, 'P000', 6),
(388, '2011 phpbb3 club', '2011 phpbb3 club', 0, 1, 1.5333, 'P241', 6),
(389, '2011 style', '2011 style', 0, 1, 1.3333, 'S340', 8),
(390, 'a full', 'a full', 0, 1, 1.2, 'A140', 6),
(391, 'a full scale', 'a full scale', 0, 1, 1.4, 'A1424', 6),
(392, 'additionally', 'additionally', 0, 0, 0.8, 'A354', 6),
(393, 'additionally the', 'additionally the', 0, 1, 1.5333, 'A3543', 6),
(394, 'additionally the standard', 'additionally the standard', 0, 1, 1.8333, 'A3543235363', 6),
(395, 'administrative', 'administrative', 0, 0, 0.9333, 'A3523631', 8),
(396, 'administrative interfaces', 'administrative interfaces', 0, 1, 1.8333, 'A352363153612', 6),
(397, 'also', 'also', 0, 0, 0.2667, 'A420', 6),
(398, 'also a', 'also a', 0, 1, 1.2, 'A420', 6),
(399, 'also a full', 'also a full', 0, 1, 1.3667, 'A4214', 6),
(400, 'also present', 'also present', 0, 1, 1.4, 'A4216253', 6),
(401, 'an', 'an', 0, 0, 0.1333, 'A500', 10),
(402, 'an intricate', 'an intricate', 0, 1, 1.4, 'A53623', 6),
(403, 'an intricate graphical', 'an intricate graphical', 0, 1, 1.7333, 'A5362326124', 6),
(404, 'and featured', 'and featured', 0, 1, 1.4, 'A531363', 6),
(405, 'and featured additionally', 'and featured additionally', 0, 1, 1.8333, 'A53136354', 6),
(406, 'and layout', 'and layout', 0, 1, 1.3333, 'A5343', 6),
(407, 'and layout settings', 'and layout settings', 0, 1, 1.6333, 'A53432352', 6),
(408, 'and roknewspager', 'and roknewspager', 0, 1, 1.5333, 'A536252126', 6),
(409, 'and roknewspager module', 'and roknewspager module', 0, 1, 1.7667, 'A536252126534', 6),
(410, 'are', 'are', 0, 0, 0.2, 'A600', 6),
(411, 'are also', 'are also', 0, 1, 1.2667, 'A642', 6),
(412, 'are also present', 'are also present', 0, 1, 1.5333, 'A64216253', 6),
(413, 'are elegantly', 'are elegantly', 0, 1, 1.4333, 'A642534', 6),
(414, 'are elegantly styled', 'are elegantly styled', 0, 1, 1.6667, 'A6425342343', 6),
(415, 'as the color', 'as the color', 0, 1, 1.4, 'A23246', 6),
(416, 'background', 'background', 0, 0, 0.6667, 'B2653', 13),
(417, 'background image', 'background image', 0, 1, 1.5333, 'B265352', 6),
(418, 'background image configurable', 'background image configurable', 0, 1, 1.9667, 'B265352512614', 6),
(419, 'chooser', 'chooser', 0, 0, 0.4667, 'C600', 8),
(420, 'chooser and', 'chooser and', 0, 1, 1.3667, 'C653', 6),
(421, 'chooser and layout', 'chooser and layout', 0, 1, 1.6, 'C65343', 6),
(422, 'club release', 'club release', 0, 1, 1.4, 'C41642', 6),
(423, 'club release combines', 'club release combines', 0, 1, 1.7, 'C416425152', 6),
(424, 'color', 'color', 0, 0, 0.3333, 'C460', 8),
(425, 'color chooser', 'color chooser', 0, 1, 1.4333, 'C4626', 8),
(426, 'color chooser and', 'color chooser and', 0, 1, 1.5667, 'C462653', 6),
(427, 'combines', 'combines', 0, 0, 0.5333, 'C5152', 13),
(428, 'combines an', 'combines an', 0, 1, 1.3667, 'C51525', 6),
(429, 'combines an intricate', 'combines an intricate', 0, 1, 1.7, 'C515253623', 6),
(430, 'configurable', 'configurable', 0, 0, 0.8, 'C512614', 6),
(431, 'configurable via', 'configurable via', 0, 1, 1.5333, 'C5126141', 6),
(432, 'configurable via the', 'configurable via the', 0, 1, 1.6667, 'C51261413', 6),
(433, 'design with', 'design with', 0, 1, 1.3667, 'D253', 6),
(434, 'design with roktabs', 'design with roktabs', 0, 1, 1.6333, 'D25362312', 6),
(435, 'display', 'display', 0, 0, 0.4667, 'D214', 6),
(436, 'display environment', 'display environment', 0, 1, 1.6333, 'D21451653', 6),
(437, 'display environment also', 'display environment also', 0, 1, 1.8, 'D2145165342', 6),
(438, 'elegantly', 'elegantly', 0, 0, 0.6, 'E42534', 6),
(439, 'elegantly styled', 'elegantly styled', 0, 1, 1.5333, 'E425342343', 6),
(440, 'elegantly styled and', 'elegantly styled and', 0, 1, 1.6667, 'E42534234353', 6),
(441, 'environment', 'environment', 0, 0, 0.7333, 'E51653', 6),
(442, 'environment also', 'environment also', 0, 1, 1.5333, 'E5165342', 6),
(443, 'environment also a', 'environment also a', 0, 1, 1.6, 'E5165342', 6),
(444, 'featured', 'featured', 0, 0, 0.5333, 'F363', 6),
(445, 'featured additionally', 'featured additionally', 0, 1, 1.7, 'F36354', 6),
(446, 'featured additionally the', 'featured additionally the', 0, 1, 1.8333, 'F363543', 6),
(447, 'features such', 'features such', 0, 1, 1.4333, 'F362', 6),
(448, 'features such as', 'features such as', 0, 1, 1.5333, 'F362', 6),
(449, 'full', 'full', 0, 0, 0.2667, 'F400', 6),
(450, 'full scale', 'full scale', 0, 1, 1.3333, 'F424', 6),
(451, 'full scale background', 'full scale background', 0, 1, 1.7, 'F42412653', 6),
(452, 'graphical', 'graphical', 0, 0, 0.6, 'G6124', 6),
(453, 'graphical design', 'graphical design', 0, 1, 1.5333, 'G6124325', 6),
(454, 'graphical design with', 'graphical design with', 0, 1, 1.7, 'G61243253', 6),
(455, 'image', 'image', 0, 0, 0.3333, 'I520', 6),
(456, 'image configurable', 'image configurable', 0, 1, 1.6, 'I52512614', 6),
(457, 'image configurable via', 'image configurable via', 0, 1, 1.7333, 'I525126141', 6),
(458, 'interfaces', 'interfaces', 0, 0, 0.6667, 'I53612', 6),
(459, 'intricate', 'intricate', 0, 0, 0.6, 'I53623', 6),
(460, 'intricate graphical', 'intricate graphical', 0, 1, 1.6333, 'I5362326124', 6),
(461, 'intricate graphical design', 'intricate graphical design', 0, 1, 1.8667, 'I5362326124325', 6),
(462, 'layout', 'layout', 0, 0, 0.4, 'L300', 6),
(463, 'layout settings', 'layout settings', 0, 1, 1.5, 'L32352', 6),
(464, 'layout settings are', 'layout settings are', 0, 1, 1.6333, 'L323526', 6),
(465, 'module', 'module', 0, 0, 0.4, 'M340', 6),
(466, 'module display', 'module display', 0, 1, 1.4667, 'M343214', 6),
(467, 'module display environment', 'module display environment', 0, 1, 1.8667, 'M34321451653', 6),
(468, 'modules', 'modules', 0, 0, 0.4667, 'M342', 6),
(469, 'modules are', 'modules are', 0, 1, 1.3667, 'M3426', 6),
(470, 'modules are elegantly', 'modules are elegantly', 0, 1, 1.7, 'M342642534', 6),
(471, 'momentum', 'momentum', 0, 0, 0.5333, 'M350', 8),
(472, 'momentum november', 'momentum november', 0, 1, 1.5667, 'M351516', 8),
(473, 'momentum november 2011', 'momentum november 2011', 0, 1, 1.7333, 'M351516', 8),
(474, 'momentum the', 'momentum the', 0, 1, 1.4, 'M353', 6),
(475, 'momentum the november', 'momentum the november', 0, 1, 1.7, 'M35351516', 6),
(476, 'november', 'november', 0, 0, 0.5333, 'N1516', 8),
(477, 'november 2011', 'november 2011', 0, 1, 1.4333, 'N1516', 8),
(478, 'november 2011 phpbb3', 'november 2011 phpbb3', 0, 1, 1.6667, 'N15161', 6),
(479, 'november 2011 style', 'november 2011 style', 0, 1, 1.6333, 'N1516234', 8),
(480, 'of features', 'of features', 0, 1, 1.3667, 'O1362', 6),
(481, 'of features such', 'of features such', 0, 1, 1.5333, 'O1362', 6),
(482, 'phpbb3', 'phpbb3', 0, 0, 0.4, 'P000', 7),
(483, 'phpbb3 administrative', 'phpbb3 administrative', 0, 1, 1.7, 'P3523631', 6),
(484, 'phpbb3 administrative interfaces', 'phpbb3 administrative interfaces', 0, 1, 2, 'P352363153612', 6),
(485, 'phpbb3 club', 'phpbb3 club', 0, 1, 1.3667, 'P241', 6),
(486, 'phpbb3 club release', 'phpbb3 club release', 0, 1, 1.6333, 'P241642', 6),
(487, 'present', 'present', 0, 0, 0.4667, 'P6253', 6),
(488, 'release combines', 'release combines', 0, 1, 1.5333, 'R425152', 11),
(489, 'release combines an', 'release combines an', 0, 1, 1.6333, 'R4251525', 6),
(490, 'rokbb3', 'rokbb3', 0, 0, 0.4, 'R210', 6),
(491, 'rokbb3 phpbb3', 'rokbb3 phpbb3', 0, 1, 1.4333, 'R210', 6),
(492, 'rokbb3 phpbb3 administrative', 'rokbb3 phpbb3 administrative', 0, 1, 1.9333, 'R213523631', 6),
(493, 'roknewspager', 'roknewspager', 0, 0, 0.8, 'R252126', 8),
(494, 'roknewspager module', 'roknewspager module', 0, 1, 1.6333, 'R252126534', 6),
(495, 'roknewspager module display', 'roknewspager module display', 0, 1, 1.9, 'R2521265343214', 6),
(496, 'roktabs', 'roktabs', 0, 0, 0.4667, 'R2312', 6),
(497, 'roktabs and', 'roktabs and', 0, 1, 1.3667, 'R231253', 6),
(498, 'roktabs and roknewspager', 'roktabs and roknewspager', 0, 1, 1.8, 'R2312536252126', 6),
(499, 'scale', 'scale', 0, 0, 0.3333, 'S400', 6),
(500, 'scale background', 'scale background', 0, 1, 1.5333, 'S412653', 6),
(501, 'scale background image', 'scale background image', 0, 1, 1.7333, 'S41265352', 6),
(502, 'selection', 'selection', 0, 0, 0.6, 'S4235', 8),
(503, 'selection of', 'selection of', 0, 1, 1.4, 'S42351', 6),
(504, 'selection of features', 'selection of features', 0, 1, 1.7, 'S42351362', 6),
(505, 'settings', 'settings', 0, 0, 0.5333, 'S352', 6),
(506, 'settings are', 'settings are', 0, 1, 1.4, 'S3526', 6),
(507, 'settings are also', 'settings are also', 0, 1, 1.5667, 'S352642', 6),
(508, 'standard selection', 'standard selection', 0, 1, 1.6, 'S3536324235', 6),
(509, 'standard selection of', 'standard selection of', 0, 1, 1.7, 'S35363242351', 6),
(510, 'style', 'style', 0, 0, 0.3333, 'S340', 13),
(511, 'styled', 'styled', 0, 0, 0.4, 'S343', 8),
(512, 'styled and', 'styled and', 0, 1, 1.3333, 'S34353', 6),
(513, 'styled and featured', 'styled and featured', 0, 1, 1.6333, 'S343531363', 6),
(514, 'the color', 'the color', 0, 1, 1.3, 'T246', 8),
(515, 'the color chooser', 'the color chooser', 0, 1, 1.5667, 'T24626', 6),
(516, 'the november', 'the november', 0, 1, 1.4, 'T51516', 6),
(517, 'the november 2011', 'the november 2011', 0, 1, 1.5667, 'T51516', 6),
(518, 'the rokbb3', 'the rokbb3', 0, 1, 1.3333, 'T621', 6),
(519, 'the rokbb3 phpbb3', 'the rokbb3 phpbb3', 0, 1, 1.5667, 'T621', 6),
(520, 'the standard', 'the standard', 0, 1, 1.4, 'T235363', 6),
(521, 'the standard selection', 'the standard selection', 0, 1, 1.7333, 'T23536324235', 6),
(522, 'via', 'via', 0, 0, 0.2, 'V000', 8),
(523, 'via the', 'via the', 0, 1, 1.2333, 'V300', 6),
(524, 'via the rokbb3', 'via the rokbb3', 0, 1, 1.4667, 'V3621', 6),
(525, 'with roktabs', 'with roktabs', 0, 1, 1.4, 'W362312', 6),
(526, 'with roktabs and', 'with roktabs and', 0, 1, 1.5333, 'W36231253', 6),
(641, '2011 release', '2011 release', 0, 1, 1.4, 'R420', 5),
(642, '2011 release combines', '2011 release combines', 0, 1, 1.7, 'R425152', 5),
(643, '2011 theme', '2011 theme', 0, 1, 1.3333, 'T500', 5),
(644, 'adapting', 'adapting', 0, 0, 0.5333, 'A31352', 5),
(645, 'adapting to', 'adapting to', 0, 1, 1.3667, 'A313523', 5),
(646, 'adapting to whichever', 'adapting to whichever', 0, 1, 1.7, 'A313523216', 5),
(647, 'and beautiful', 'and beautiful', 0, 1, 1.4333, 'A531314', 5),
(648, 'and beautiful background', 'and beautiful background', 0, 1, 1.8, 'A53131412653', 5),
(649, 'and power', 'and power', 0, 1, 1.3, 'A5316', 5),
(650, 'and power the', 'and power the', 0, 1, 1.4333, 'A53163', 5),
(651, 'and stunning', 'and stunning', 0, 1, 1.4, 'A532352', 5),
(652, 'and stunning style', 'and stunning style', 0, 1, 1.6, 'A53235234', 5),
(653, 'background counterparts', 'background counterparts', 0, 1, 1.7667, 'B265325361632', 5),
(654, 'beautiful', 'beautiful', 0, 0, 0.6, 'B314', 5),
(655, 'beautiful background', 'beautiful background', 0, 1, 1.6667, 'B31412653', 5),
(656, 'beautiful background counterparts', 'beautiful background counterparts', 0, 1, 2, 'B3141265325361632', 5),
(657, 'colour', 'colour', 0, 0, 0.4, 'C460', 5),
(658, 'colour schemes', 'colour schemes', 0, 1, 1.4667, 'C46252', 5),
(659, 'colour schemes complimenting', 'colour schemes complimenting', 0, 1, 1.9333, 'C462525145352', 5),
(660, 'combines visual', 'combines visual', 0, 1, 1.5, 'C5152124', 5),
(661, 'combines visual sophistication', 'combines visual sophistication', 0, 1, 2, 'C51521242123235', 5),
(662, 'complimenting', 'complimenting', 0, 0, 0.8667, 'C5145352', 5),
(663, 'complimenting their', 'complimenting their', 0, 1, 1.6333, 'C514535236', 5),
(664, 'complimenting their detailed', 'complimenting their detailed', 0, 1, 1.9333, 'C514535236343', 5),
(665, 'counterparts', 'counterparts', 0, 0, 0.8, 'C5361632', 5),
(666, 'december', 'december', 0, 0, 0.5333, 'D2516', 5),
(667, 'december 2011', 'december 2011', 0, 1, 1.4333, 'D2516', 5),
(668, 'december 2011 release', 'december 2011 release', 0, 1, 1.7, 'D251642', 5),
(669, 'december 2011 theme', 'december 2011 theme', 0, 1, 1.6333, 'D251635', 5),
(670, 'detailed', 'detailed', 0, 0, 0.5333, 'D430', 5),
(671, 'detailed and', 'detailed and', 0, 1, 1.4, 'D4353', 5),
(672, 'detailed and beautiful', 'detailed and beautiful', 0, 1, 1.7333, 'D43531314', 5),
(673, 'distinct colour', 'distinct colour', 0, 1, 1.5, 'D23523246', 5),
(674, 'distinct colour schemes', 'distinct colour schemes', 0, 1, 1.7667, 'D23523246252', 5),
(675, 'for numerous', 'for numerous', 0, 1, 1.4, 'F6562', 5),
(676, 'for numerous rockettheme', 'for numerous rockettheme', 0, 1, 1.8, 'F65626235', 5),
(677, 'functionality', 'functionality', 0, 0, 0.8667, 'F523543', 5),
(678, 'functionality and', 'functionality and', 0, 1, 1.5667, 'F52354353', 5),
(679, 'functionality and power', 'functionality and power', 0, 1, 1.7667, 'F5235435316', 5),
(680, 'nebulae', 'nebulae', 0, 0, 0.4667, 'N140', 5),
(681, 'nebulae december', 'nebulae december', 0, 1, 1.5333, 'N1432516', 5),
(682, 'nebulae december 2011', 'nebulae december 2011', 0, 1, 1.7, 'N1432516', 5),
(683, 'nebulae the', 'nebulae the', 0, 1, 1.3667, 'N143', 5),
(684, 'nebulae the december', 'nebulae the december', 0, 1, 1.6667, 'N1432516', 5),
(685, 'numerous', 'numerous', 0, 0, 0.5333, 'N620', 5),
(686, 'numerous rockettheme', 'numerous rockettheme', 0, 1, 1.6667, 'N626235', 5),
(687, 'numerous rockettheme plugins', 'numerous rockettheme plugins', 0, 1, 1.9333, 'N62623514252', 5),
(688, 'of unique', 'of unique', 0, 1, 1.3, 'O152', 5),
(689, 'of unique and', 'of unique and', 0, 1, 1.4333, 'O15253', 5),
(690, 'offers', 'offers', 0, 0, 0.4, 'O162', 7),
(691, 'offers a', 'offers a', 0, 1, 1.2667, 'O162', 7),
(692, 'offers a range', 'offers a range', 0, 1, 1.4667, 'O162652', 5),
(693, 'or', 'or', 0, 0, 0.1333, 'O600', 9),
(694, 'or widget', 'or widget', 0, 1, 1.3, 'O6323', 5),
(695, 'or widget variation', 'or widget variation', 0, 1, 1.6333, 'O63231635', 5),
(696, 'plugins', 'plugins', 0, 0, 0.4667, 'P4252', 5),
(697, 'plugins adapting', 'plugins adapting', 0, 1, 1.5333, 'P425231352', 5),
(698, 'plugins adapting to', 'plugins adapting to', 0, 1, 1.6333, 'P4252313523', 5),
(699, 'power', 'power', 0, 0, 0.3333, 'P600', 5),
(700, 'power the', 'power the', 0, 1, 1.3, 'P630', 5),
(701, 'power the theme', 'power the theme', 0, 1, 1.5, 'P635', 5),
(702, 'range of unique', 'range of unique', 0, 1, 1.5, 'R52152', 5),
(703, 'release combines visual', 'release combines visual', 0, 1, 1.7667, 'R425152124', 5),
(704, 'rockettheme plugins', 'rockettheme plugins', 0, 1, 1.6333, 'R23514252', 5),
(705, 'rockettheme plugins adapting', 'rockettheme plugins adapting', 0, 1, 1.9333, 'R2351425231352', 5),
(706, 'schemes', 'schemes', 0, 0, 0.4667, 'S520', 5),
(707, 'schemes complimenting', 'schemes complimenting', 0, 1, 1.7, 'S525145352', 5),
(708, 'schemes complimenting their', 'schemes complimenting their', 0, 1, 1.9, 'S52514535236', 5),
(709, 'seek', 'seek', 0, 0, 0.2667, 'S000', 5),
(710, 'seek to', 'seek to', 0, 1, 1.2333, 'S300', 5),
(711, 'seek to use', 'seek to use', 0, 1, 1.3667, 'S320', 5),
(712, 'sophistication', 'sophistication', 0, 0, 0.9333, 'S123235', 5),
(713, 'sophistication with', 'sophistication with', 0, 1, 1.6333, 'S1232353', 5),
(714, 'sophistication with functionality', 'sophistication with functionality', 0, 1, 2, 'S12323531523543', 5),
(715, 'stunning style', 'stunning style', 0, 1, 1.4667, 'S35234', 5),
(716, 'stunning style variations', 'stunning style variations', 0, 1, 1.8333, 'S3523416352', 5),
(717, 'style variation', 'style variation', 0, 1, 1.5, 'S341635', 5),
(718, 'style variation or', 'style variation or', 0, 1, 1.6, 'S3416356', 5),
(719, 'style variations', 'style variations', 0, 1, 1.5333, 'S3416352', 5),
(720, 'style variations with', 'style variations with', 0, 1, 1.7, 'S34163523', 5),
(721, 'styling for numerous', 'styling for numerous', 0, 1, 1.6667, 'S345216562', 5),
(722, 'supports', 'supports', 0, 0, 0.5333, 'S1632', 5),
(723, 'supports integrated', 'supports integrated', 0, 1, 1.6333, 'S163253263', 5),
(724, 'supports integrated styling', 'supports integrated styling', 0, 1, 1.9, 'S16325326323452', 5),
(725, 'the december', 'the december', 0, 1, 1.4, 'T2516', 5),
(726, 'the december 2011', 'the december 2011', 0, 1, 1.5667, 'T2516', 5),
(727, 'the theme', 'the theme', 0, 1, 1.3, 'T500', 5),
(728, 'the theme offers', 'the theme offers', 0, 1, 1.5333, 'T5162', 5),
(729, 'the theme supports', 'the theme supports', 0, 1, 1.6, 'T521632', 5),
(730, 'their', 'their', 0, 0, 0.3333, 'T600', 5),
(731, 'their detailed', 'their detailed', 0, 1, 1.4667, 'T6343', 5),
(732, 'their detailed and', 'their detailed and', 0, 1, 1.6, 'T634353', 5),
(733, 'theme', 'theme', 0, 0, 0.3333, 'T500', 7),
(734, 'theme offers', 'theme offers', 0, 1, 1.4, 'T5162', 5),
(735, 'theme offers a', 'theme offers a', 0, 1, 1.4667, 'T5162', 5),
(736, 'theme supports', 'theme supports', 0, 1, 1.4667, 'T521632', 5),
(737, 'theme supports integrated', 'theme supports integrated', 0, 1, 1.8333, 'T52163253263', 5),
(738, 'to use', 'to use', 0, 1, 1.2, 'T200', 5),
(739, 'to whichever', 'to whichever', 0, 1, 1.4, 'T216', 5),
(740, 'to whichever style', 'to whichever style', 0, 1, 1.6, 'T216234', 5),
(741, 'unique', 'unique', 0, 0, 0.4, 'U520', 5),
(742, 'unique and', 'unique and', 0, 1, 1.3333, 'U5253', 5),
(743, 'unique and stunning', 'unique and stunning', 0, 1, 1.6333, 'U52532352', 5),
(744, 'use', 'use', 0, 0, 0.2, 'U200', 7),
(745, 'variation', 'variation', 0, 0, 0.6, 'V635', 5),
(746, 'variation or', 'variation or', 0, 1, 1.4, 'V6356', 5),
(747, 'variation or widget', 'variation or widget', 0, 1, 1.6333, 'V6356323', 5),
(748, 'variation you', 'variation you', 0, 1, 1.4333, 'V635', 5),
(749, 'variation you seek', 'variation you seek', 0, 1, 1.6, 'V6352', 5),
(750, 'variations', 'variations', 0, 0, 0.6667, 'V6352', 5),
(751, 'variations with', 'variations with', 0, 1, 1.5, 'V63523', 5),
(752, 'variations with distinct', 'variations with distinct', 0, 1, 1.8, 'V6352323523', 5),
(753, 'visual', 'visual', 0, 0, 0.4, 'V240', 5),
(754, 'visual sophistication', 'visual sophistication', 0, 1, 1.7, 'V242123235', 5),
(755, 'visual sophistication with', 'visual sophistication with', 0, 1, 1.8667, 'V2421232353', 5),
(756, 'whichever', 'whichever', 0, 0, 0.6, 'W216', 5),
(757, 'whichever style', 'whichever style', 0, 1, 1.5, 'W216234', 5),
(758, 'whichever style variation', 'whichever style variation', 0, 1, 1.8333, 'W2162341635', 5),
(759, 'widget', 'widget', 0, 0, 0.4, 'W323', 5),
(760, 'widget variation', 'widget variation', 0, 1, 1.5333, 'W3231635', 5),
(761, 'widget variation you', 'widget variation you', 0, 1, 1.6667, 'W3231635', 5),
(762, 'with distinct', 'with distinct', 0, 1, 1.4333, 'W323523', 5),
(763, 'with distinct colour', 'with distinct colour', 0, 1, 1.6667, 'W323523246', 5),
(764, 'with functionality', 'with functionality', 0, 1, 1.6, 'W31523543', 5),
(765, 'with functionality and', 'with functionality and', 0, 1, 1.7333, 'W3152354353', 5),
(766, 'you seek', 'you seek', 0, 1, 1.2667, 'Y200', 5),
(767, 'you seek to', 'you seek to', 0, 1, 1.3667, 'Y230', 5),
(768, '3', '3', 0, 0, 0.1, '', 8),
(769, 'a conservative', 'a conservative', 0, 1, 1.4667, 'A2526131', 2),
(770, 'a conservative design', 'a conservative design', 0, 1, 1.7, 'A2526131325', 2),
(771, 'a powerful third', 'a powerful third', 0, 1, 1.5333, 'A1614363', 2),
(772, 'a professionally', 'a professionally', 0, 1, 1.5333, 'A161254', 2),
(773, 'a professionally or', 'a professionally or', 0, 1, 1.6333, 'A1612546', 2),
(774, 'an excellent', 'an excellent', 0, 1, 1.4, 'A52453', 2),
(775, 'an excellent platform', 'an excellent platform', 0, 1, 1.7, 'A52453143165', 2),
(776, 'and individual', 'and individual', 0, 1, 1.4667, 'A5353134', 2),
(777, 'and individual customization', 'and individual customization', 0, 1, 1.9333, 'A5353134235235', 2),
(778, 'and platform', 'and platform', 0, 1, 1.4, 'A53143165', 2),
(779, 'and platform independent', 'and platform independent', 0, 1, 1.8, 'A53143165315353', 2),
(780, 'and subtle', 'and subtle', 0, 1, 1.3333, 'A532134', 2),
(781, 'and subtle reflecting', 'and subtle reflecting', 0, 1, 1.7, 'A5321346142352', 2),
(782, 'as an', 'as an', 0, 1, 1.1667, 'A250', 2),
(783, 'as an excellent', 'as an excellent', 0, 1, 1.5, 'A252453', 2),
(784, 'commercially', 'commercially', 0, 0, 0.8, 'C5624', 2),
(785, 'commercially orientated', 'commercially orientated', 0, 1, 1.7667, 'C5624653', 2),
(786, 'commercially orientated site', 'commercially orientated site', 0, 1, 1.9333, 'C562465323', 2),
(787, 'component', 'component', 0, 0, 0.6, 'C5153', 2),
(788, 'conservative', 'conservative', 0, 0, 0.8, 'C526131', 2),
(789, 'conservative design', 'conservative design', 0, 1, 1.6333, 'C526131325', 2),
(790, 'conservative design direction', 'conservative design direction', 0, 1, 1.9667, 'C52613132536235', 2),
(791, 'customization', 'customization', 0, 0, 0.8667, 'C35235', 4),
(792, 'deployment', 'deployment', 0, 0, 0.6667, 'D1453', 2),
(793, 'deployment on', 'deployment on', 0, 1, 1.4333, 'D14535', 2),
(794, 'deployment on a', 'deployment on a', 0, 1, 1.5, 'D14535', 2),
(795, 'design direction', 'design direction', 0, 1, 1.5333, 'D2536235', 2),
(796, 'design direction perfect', 'design direction perfect', 0, 1, 1.8, 'D253623516123', 2),
(797, 'direction', 'direction', 0, 0, 0.6, 'D6235', 2),
(798, 'direction perfect', 'direction perfect', 0, 1, 1.5667, 'D623516123', 2),
(799, 'direction perfect for', 'direction perfect for', 0, 1, 1.7, 'D62351612316', 2),
(800, 'ecommerce', 'ecommerce', 0, 0, 0.6, 'E2562', 2),
(801, 'ecommerce solution', 'ecommerce solution', 0, 1, 1.6, 'E2562435', 2),
(802, 'ecommerce solution ported', 'ecommerce solution ported', 0, 1, 1.8333, 'E2562435163', 2),
(803, 'ecwid', 'ecwid', 0, 0, 0.3333, 'E230', 2),
(804, 'ecwid a', 'ecwid a', 0, 1, 1.2333, 'E230', 2),
(805, 'ecwid a powerful', 'ecwid a powerful', 0, 1, 1.5333, 'E231614', 2),
(806, 'elegant and', 'elegant and', 0, 1, 1.3667, 'E425353', 2),
(807, 'elegant and subtle', 'elegant and subtle', 0, 1, 1.6, 'E4253532134', 2),
(808, 'excellent', 'excellent', 0, 0, 0.6, 'E2453', 2),
(809, 'excellent platform', 'excellent platform', 0, 1, 1.6, 'E2453143165', 2),
(810, 'excellent platform for', 'excellent platform for', 0, 1, 1.7333, 'E245314316516', 2),
(811, 'extensive', 'extensive', 0, 0, 0.6, 'E23521', 4),
(812, 'extensive and', 'extensive and', 0, 1, 1.4333, 'E2352153', 2),
(813, 'extensive and individual', 'extensive and individual', 0, 1, 1.8, 'E235215353134', 2),
(814, 'for deployment', 'for deployment', 0, 1, 1.4667, 'F631453', 2),
(815, 'for deployment on', 'for deployment on', 0, 1, 1.5667, 'F6314535', 2),
(816, 'for ecwid', 'for ecwid', 0, 1, 1.3, 'F623', 2),
(817, 'for ecwid a', 'for ecwid a', 0, 1, 1.3667, 'F623', 2),
(818, 'for extensive', 'for extensive', 0, 1, 1.4333, 'F623521', 4),
(819, 'for extensive and', 'for extensive and', 0, 1, 1.5667, 'F62352153', 2),
(820, 'halcyon', 'halcyon', 0, 0, 0.4667, 'H425', 8),
(821, 'halcyon january', 'halcyon january', 0, 1, 1.5, 'H425256', 8),
(822, 'halcyon january 2012', 'halcyon january 2012', 0, 1, 1.6667, 'H425256', 8),
(823, 'halcyon the', 'halcyon the', 0, 1, 1.3667, 'H4253', 2),
(824, 'halcyon the january', 'halcyon the january', 0, 1, 1.6333, 'H4253256', 2),
(825, 'independent', 'independent', 0, 0, 0.7333, 'I5315353', 2),
(826, 'independent ecommerce', 'independent ecommerce', 0, 1, 1.7, 'I53153532562', 2),
(827, 'independent ecommerce solution', 'independent ecommerce solution', 0, 1, 2, 'I53153532562435', 2),
(828, 'individual', 'individual', 0, 0, 0.6667, 'I53134', 4),
(829, 'individual customization', 'individual customization', 0, 1, 1.8, 'I53134235235', 4),
(830, 'into', 'into', 0, 0, 0.2667, 'I530', 2),
(831, 'into joomla', 'into joomla', 0, 1, 1.3667, 'I53254', 2),
(832, 'into joomla via', 'into joomla via', 0, 1, 1.5, 'I532541', 2),
(833, 'is elegant', 'is elegant', 0, 1, 1.3333, 'I24253', 2),
(834, 'is elegant and', 'is elegant and', 0, 1, 1.4667, 'I2425353', 2),
(835, 'january', 'january', 0, 0, 0.4667, 'J560', 8),
(836, 'january 2012', 'january 2012', 0, 1, 1.4, 'J560', 8),
(837, 'january 2012 template', 'january 2012 template', 0, 1, 1.7, 'J5635143', 8),
(838, 'joomla via', 'joomla via', 0, 1, 1.3333, 'J541', 2),
(839, 'joomla via our', 'joomla via our', 0, 1, 1.4667, 'J5416', 2),
(840, 'on a', 'on a', 0, 1, 1.1333, 'O500', 2),
(841, 'on a professionally', 'on a professionally', 0, 1, 1.6333, 'O5161254', 2),
(842, 'or as', 'or as', 0, 1, 1.1667, 'O620', 4),
(843, 'or as an', 'or as an', 0, 1, 1.2667, 'O625', 2),
(844, 'or commercially', 'or commercially', 0, 1, 1.5, 'O625624', 2),
(845, 'or commercially orientated', 'or commercially orientated', 0, 1, 1.8667, 'O625624653', 2),
(846, 'orientated', 'orientated', 0, 0, 0.6667, 'O653', 2),
(847, 'orientated site', 'orientated site', 0, 1, 1.5, 'O65323', 2),
(848, 'orientated site or', 'orientated site or', 0, 1, 1.6, 'O653236', 2),
(849, 'our rokecwid', 'our rokecwid', 0, 1, 1.4, 'O623', 2),
(850, 'our rokecwid component', 'our rokecwid component', 0, 1, 1.7333, 'O62325153', 2),
(851, 'party', 'party', 0, 0, 0.3333, 'P630', 2),
(852, 'party and', 'party and', 0, 1, 1.3, 'P6353', 2),
(853, 'party and platform', 'party and platform', 0, 1, 1.6, 'P6353143165', 2),
(854, 'perfect', 'perfect', 0, 0, 0.4667, 'P6123', 2),
(855, 'perfect for', 'perfect for', 0, 1, 1.3667, 'P612316', 2),
(856, 'perfect for deployment', 'perfect for deployment', 0, 1, 1.7333, 'P61231631453', 2),
(857, 'platform', 'platform', 0, 0, 0.5333, 'P43165', 4),
(858, 'platform for', 'platform for', 0, 1, 1.4, 'P4316516', 4),
(859, 'platform for extensive', 'platform for extensive', 0, 1, 1.7333, 'P431651623521', 4),
(860, 'platform independent', 'platform independent', 0, 1, 1.6667, 'P43165315353', 2),
(861, 'platform independent ecommerce', 'platform independent ecommerce', 0, 1, 2, 'P431653153532562', 2),
(862, 'ported', 'ported', 0, 0, 0.4, 'P630', 2),
(863, 'ported into', 'ported into', 0, 1, 1.3667, 'P6353', 2),
(864, 'ported into joomla', 'ported into joomla', 0, 1, 1.6, 'P6353254', 2),
(865, 'powerful third', 'powerful third', 0, 1, 1.4667, 'P614363', 2),
(866, 'powerful third party', 'powerful third party', 0, 1, 1.6667, 'P614363163', 2),
(867, 'professionally', 'professionally', 0, 0, 0.9333, 'P61254', 2),
(868, 'professionally or', 'professionally or', 0, 1, 1.5667, 'P612546', 2),
(869, 'professionally or commercially', 'professionally or commercially', 0, 1, 2, 'P61254625624', 2),
(870, 'reflecting', 'reflecting', 0, 0, 0.6667, 'R142352', 2),
(871, 'reflecting a', 'reflecting a', 0, 1, 1.4, 'R142352', 2),
(872, 'reflecting a conservative', 'reflecting a conservative', 0, 1, 1.8333, 'R142352526131', 2),
(873, 'release is elegant', 'release is elegant', 0, 1, 1.6, 'R424253', 2),
(874, 'rokecwid', 'rokecwid', 0, 0, 0.5333, 'R230', 2),
(875, 'rokecwid component', 'rokecwid component', 0, 1, 1.6, 'R2325153', 2),
(876, 'site or', 'site or', 0, 1, 1.2333, 'S360', 2),
(877, 'site or as', 'site or as', 0, 1, 1.3333, 'S362', 2),
(878, 'solution', 'solution', 0, 0, 0.5333, 'S435', 2),
(879, 'solution ported', 'solution ported', 0, 1, 1.5, 'S435163', 2),
(880, 'solution ported into', 'solution ported into', 0, 1, 1.6667, 'S43516353', 2),
(881, 'styling for ecwid', 'styling for ecwid', 0, 1, 1.5667, 'S34521623', 2),
(882, 'subtle', 'subtle', 0, 0, 0.4, 'S134', 4),
(883, 'subtle reflecting', 'subtle reflecting', 0, 1, 1.5667, 'S1346142352', 2),
(884, 'subtle reflecting a', 'subtle reflecting a', 0, 1, 1.6333, 'S1346142352', 2),
(885, 'the january', 'the january', 0, 1, 1.3667, 'T256', 2),
(886, 'the january 2012', 'the january 2012', 0, 1, 1.5333, 'T256', 2),
(887, 'third', 'third', 0, 0, 0.3333, 'T630', 2),
(888, 'third party', 'third party', 0, 1, 1.3667, 'T63163', 2),
(889, 'third party and', 'third party and', 0, 1, 1.5, 'T6316353', 2),
(890, 'via our', 'via our', 0, 1, 1.2333, 'V600', 2),
(891, 'via our rokecwid', 'via our rokecwid', 0, 1, 1.5333, 'V623', 2),
(895, '4', '4', 0, 0, 0.1, '', 7),
(896, 'a platform', 'a platform', 0, 1, 1.3333, 'A143165', 2),
(897, 'a platform for', 'a platform for', 0, 1, 1.4667, 'A14316516', 2),
(898, 'a subtle', 'a subtle', 0, 1, 1.2667, 'A2134', 2),
(899, 'a subtle theme', 'a subtle theme', 0, 1, 1.4667, 'A213435', 2),
(900, 'a user', 'a user', 0, 1, 1.2, 'A260', 2),
(901, 'a user friendly', 'a user friendly', 0, 1, 1.5, 'A2616534', 2),
(902, 'a variety', 'a variety', 0, 1, 1.3, 'A163', 2),
(903, 'a variety of', 'a variety of', 0, 1, 1.4, 'A1631', 2),
(904, 'addons', 'addons', 0, 0, 0.4, 'A352', 2),
(905, 'addons such', 'addons such', 0, 1, 1.3667, 'A352', 2),
(906, 'addons such as', 'addons such as', 0, 1, 1.4667, 'A352', 2),
(907, 'administrative interface', 'administrative interface', 0, 1, 1.8, 'A352363153612', 2),
(908, 'administrative interface offers', 'administrative interface offers', 0, 1, 2, 'A352363153612162', 2),
(909, 'advanced', 'advanced', 0, 0, 0.5333, 'A31523', 2),
(910, 'advanced content', 'advanced content', 0, 1, 1.5333, 'A3152325353', 2),
(911, 'advanced content extension', 'advanced content extension', 0, 1, 1.8667, 'A315232535323525', 2),
(912, 'and functions', 'and functions', 0, 1, 1.4333, 'A53152352', 2),
(913, 'and functions the', 'and functions the', 0, 1, 1.5667, 'A531523523', 2),
(914, 'and intuitive', 'and intuitive', 0, 1, 1.4333, 'A53531', 2),
(915, 'and intuitive features', 'and intuitive features', 0, 1, 1.7333, 'A53531362', 2),
(916, 'as a', 'as a', 0, 1, 1.1333, 'A200', 2),
(917, 'as a platform', 'as a platform', 0, 1, 1.4333, 'A2143165', 2),
(918, 'as k2', 'as k2', 0, 1, 1.1667, 'A200', 2),
(919, 'as k2 the', 'as k2 the', 0, 1, 1.3, 'A230', 2),
(920, 'as roknewspager', 'as roknewspager', 0, 1, 1.5, 'A26252126', 2),
(921, 'as roknewspager as', 'as roknewspager as', 0, 1, 1.6, 'A262521262', 2),
(922, 'as well', 'as well', 0, 1, 1.2333, 'A240', 2),
(923, 'as well as', 'as well as', 0, 1, 1.3333, 'A242', 2),
(924, 'business', 'business', 0, 0, 0.5333, 'B252', 2),
(925, 'business use', 'business use', 0, 1, 1.4, 'B252', 2),
(926, 'business use or', 'business use or', 0, 1, 1.5, 'B2526', 2),
(927, 'clarion', 'clarion', 0, 0, 0.4667, 'C465', 2),
(928, 'clarion february', 'clarion february', 0, 1, 1.5333, 'C46516', 2),
(929, 'clarion february 2012', 'clarion february 2012', 0, 1, 1.7, 'C46516', 2),
(930, 'clarion has', 'clarion has', 0, 1, 1.3667, 'C4652', 2),
(931, 'clarion has a', 'clarion has a', 0, 1, 1.4333, 'C4652', 2),
(932, 'clarion has styled', 'clarion has styled', 0, 1, 1.6, 'C4652343', 2),
(933, 'clarion the', 'clarion the', 0, 1, 1.3667, 'C4653', 2),
(934, 'clarion the february', 'clarion the february', 0, 1, 1.6667, 'C465316', 2),
(935, 'content', 'content', 0, 0, 0.4667, 'C5353', 4),
(936, 'content extension', 'content extension', 0, 1, 1.5667, 'C535323525', 4),
(937, 'control', 'control', 0, 0, 0.4667, 'C5364', 2),
(938, 'control panel', 'control panel', 0, 1, 1.4333, 'C5364154', 2),
(939, 'control panel for', 'control panel for', 0, 1, 1.5667, 'C536415416', 2),
(940, 'customization clarion', 'customization clarion', 0, 1, 1.7, 'C352352465', 2),
(941, 'customization clarion has', 'customization clarion has', 0, 1, 1.8333, 'C3523524652', 2),
(942, 'customizing', 'customizing', 0, 0, 0.7333, 'C35252', 2),
(943, 'customizing the', 'customizing the', 0, 1, 1.5, 'C352523', 2),
(944, 'customizing the template', 'customizing the template', 0, 1, 1.8, 'C3525235143', 2),
(945, 'extension', 'extension', 0, 0, 0.6, 'E23525', 4),
(946, 'extensive individual', 'extensive individual', 0, 1, 1.6667, 'E2352153134', 2),
(947, 'extensive individual customization', 'extensive individual customization', 0, 1, 2, 'E2352153134235235', 2),
(948, 'features and', 'features and', 0, 1, 1.4, 'F36253', 2);
INSERT INTO `#__finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(949, 'features and functions', 'features and functions', 0, 1, 1.7333, 'F36253152352', 2),
(950, 'february', 'february', 0, 0, 0.5333, 'F600', 2),
(951, 'february 2012', 'february 2012', 0, 1, 1.4333, 'F600', 2),
(952, 'february 2012 template', 'february 2012 template', 0, 1, 1.7333, 'F635143', 2),
(953, 'flexible', 'flexible', 0, 0, 0.5333, 'F4214', 2),
(954, 'flexible and', 'flexible and', 0, 1, 1.4, 'F421453', 2),
(955, 'flexible and intuitive', 'flexible and intuitive', 0, 1, 1.7333, 'F421453531', 2),
(956, 'for a variety', 'for a variety', 0, 1, 1.4333, 'F6163', 2),
(957, 'for business', 'for business', 0, 1, 1.4, 'F61252', 2),
(958, 'for business use', 'for business use', 0, 1, 1.5333, 'F61252', 2),
(959, 'for extensive individual', 'for extensive individual', 0, 1, 1.8, 'F62352153134', 2),
(960, 'for intricately', 'for intricately', 0, 1, 1.5, 'F6536234', 2),
(961, 'for intricately customizing', 'for intricately customizing', 0, 1, 1.9, 'F6536234235252', 2),
(962, 'framework clarion', 'framework clarion', 0, 1, 1.5667, 'F6562465', 2),
(963, 'framework clarion has', 'framework clarion has', 0, 1, 1.7, 'F65624652', 2),
(964, 'friendly', 'friendly', 0, 0, 0.5333, 'F6534', 2),
(965, 'friendly control', 'friendly control', 0, 1, 1.5333, 'F653425364', 2),
(966, 'friendly control panel', 'friendly control panel', 0, 1, 1.7333, 'F653425364154', 2),
(967, 'functions', 'functions', 0, 0, 0.6, 'F52352', 2),
(968, 'functions the', 'functions the', 0, 1, 1.4333, 'F523523', 2),
(969, 'functions the administrative', 'functions the administrative', 0, 1, 1.9333, 'F523523523631', 2),
(970, 'gantry framework clarion', 'gantry framework clarion', 0, 1, 1.8, 'G53616562465', 2),
(971, 'has a range', 'has a range', 0, 1, 1.3667, 'H2652', 2),
(972, 'has styled', 'has styled', 0, 1, 1.3333, 'H2343', 2),
(973, 'has styled support', 'has styled support', 0, 1, 1.6, 'H23432163', 2),
(974, 'individual customization clarion', 'individual customization clarion', 0, 1, 2, 'I531342352352465', 2),
(975, 'interface', 'interface', 0, 0, 0.6, 'I53612', 2),
(976, 'interface offers', 'interface offers', 0, 1, 1.5333, 'I53612162', 2),
(977, 'interface offers a', 'interface offers a', 0, 1, 1.6, 'I53612162', 2),
(978, 'intricately', 'intricately', 0, 0, 0.7333, 'I536234', 2),
(979, 'intricately customizing', 'intricately customizing', 0, 1, 1.7667, 'I536234235252', 2),
(980, 'intricately customizing the', 'intricately customizing the', 0, 1, 1.9, 'I5362342352523', 2),
(981, 'intuitive', 'intuitive', 0, 0, 0.6, 'I531', 2),
(982, 'intuitive features', 'intuitive features', 0, 1, 1.6, 'I531362', 2),
(983, 'intuitive features and', 'intuitive features and', 0, 1, 1.7333, 'I53136253', 2),
(984, 'is a subtle', 'is a subtle', 0, 1, 1.3667, 'I2134', 2),
(985, 'k2 the', 'k2 the', 0, 1, 1.2, 'K300', 2),
(986, 'k2 the advanced', 'k2 the advanced', 0, 1, 1.5, 'K31523', 2),
(987, 'layouts', 'layouts', 0, 0, 0.4667, 'L320', 2),
(988, 'of powerful', 'of powerful', 0, 1, 1.3667, 'O1614', 2),
(989, 'of powerful flexible', 'of powerful flexible', 0, 1, 1.6667, 'O161414214', 2),
(990, 'of rockettheme', 'of rockettheme', 0, 1, 1.4667, 'O16235', 2),
(991, 'of rockettheme addons', 'of rockettheme addons', 0, 1, 1.7, 'O16235352', 2),
(992, 'offers a user', 'offers a user', 0, 1, 1.4333, 'O1626', 2),
(993, 'or as a', 'or as a', 0, 1, 1.2333, 'O620', 2),
(994, 'panel', 'panel', 0, 0, 0.3333, 'P540', 2),
(995, 'panel for', 'panel for', 0, 1, 1.3, 'P5416', 2),
(996, 'panel for intricately', 'panel for intricately', 0, 1, 1.7, 'P5416536234', 2),
(997, 'powerful flexible', 'powerful flexible', 0, 1, 1.5667, 'P61414214', 2),
(998, 'powerful flexible and', 'powerful flexible and', 0, 1, 1.7, 'P6141421453', 2),
(999, 'primed', 'primed', 0, 0, 0.4, 'P653', 2),
(1000, 'primed for', 'primed for', 0, 1, 1.3333, 'P65316', 2),
(1001, 'primed for business', 'primed for business', 0, 1, 1.6333, 'P653161252', 2),
(1002, 'range of powerful', 'range of powerful', 0, 1, 1.5667, 'R521614', 2),
(1003, 'rockettheme addons', 'rockettheme addons', 0, 1, 1.6, 'R235352', 2),
(1004, 'rockettheme addons such', 'rockettheme addons such', 0, 1, 1.7667, 'R235352', 2),
(1005, 'roknewspager as', 'roknewspager as', 0, 1, 1.5, 'R2521262', 2),
(1006, 'roknewspager as well', 'roknewspager as well', 0, 1, 1.6667, 'R25212624', 2),
(1007, 'styled support', 'styled support', 0, 1, 1.4667, 'S3432163', 2),
(1008, 'styled support for', 'styled support for', 0, 1, 1.6, 'S343216316', 2),
(1009, 'subtle theme', 'subtle theme', 0, 1, 1.4, 'S13435', 2),
(1010, 'subtle theme primed', 'subtle theme primed', 0, 1, 1.6333, 'S134351653', 2),
(1011, 'such as roknewspager', 'such as roknewspager', 0, 1, 1.6667, 'S6252126', 2),
(1012, 'support', 'support', 0, 0, 0.4667, 'S163', 2),
(1013, 'support for', 'support for', 0, 1, 1.3667, 'S16316', 2),
(1014, 'support for a', 'support for a', 0, 1, 1.4333, 'S16316', 2),
(1015, 'template layouts', 'template layouts', 0, 1, 1.5333, 'T5143432', 2),
(1016, 'the administrative', 'the administrative', 0, 1, 1.6, 'T523631', 2),
(1017, 'the administrative interface', 'the administrative interface', 0, 1, 1.9333, 'T52363153612', 2),
(1018, 'the advanced', 'the advanced', 0, 1, 1.4, 'T1523', 2),
(1019, 'the advanced content', 'the advanced content', 0, 1, 1.6667, 'T152325353', 2),
(1020, 'the february', 'the february', 0, 1, 1.4, 'T160', 2),
(1021, 'the february 2012', 'the february 2012', 0, 1, 1.5667, 'T160', 2),
(1022, 'the template layouts', 'the template layouts', 0, 1, 1.6667, 'T5143432', 2),
(1023, 'theme primed', 'theme primed', 0, 1, 1.4, 'T51653', 2),
(1024, 'theme primed for', 'theme primed for', 0, 1, 1.5333, 'T5165316', 2),
(1025, 'use or', 'use or', 0, 1, 1.2, 'U260', 2),
(1026, 'use or as', 'use or as', 0, 1, 1.3, 'U262', 2),
(1027, 'user friendly', 'user friendly', 0, 1, 1.4333, 'U2616534', 2),
(1028, 'user friendly control', 'user friendly control', 0, 1, 1.7, 'U261653425364', 2),
(1029, 'variety', 'variety', 0, 0, 0.4667, 'V630', 2),
(1030, 'variety of', 'variety of', 0, 1, 1.3333, 'V631', 2),
(1031, 'variety of rockettheme', 'variety of rockettheme', 0, 1, 1.7333, 'V6316235', 2),
(1032, 'well', 'well', 0, 0, 0.2667, 'W400', 2),
(1033, 'well as', 'well as', 0, 1, 1.2333, 'W420', 2),
(1034, 'well as k2', 'well as k2', 0, 1, 1.3333, 'W420', 2),
(1150, '5', '5', 0, 0, 0.1, '', 7),
(1151, 'a powerful revolutionary', 'a powerful revolutionary', 0, 1, 1.8, 'A1614614356', 2),
(1152, 'accordian', 'accordian', 0, 0, 0.6, 'A2635', 2),
(1153, 'accordian features', 'accordian features', 0, 1, 1.6, 'A26351362', 2),
(1154, 'an incredibly', 'an incredibly', 0, 1, 1.4333, 'A526314', 2),
(1155, 'an incredibly versatile', 'an incredibly versatile', 0, 1, 1.7667, 'A52631416234', 2),
(1156, 'and accordian', 'and accordian', 0, 1, 1.4333, 'A532635', 2),
(1157, 'and accordian features', 'and accordian features', 0, 1, 1.7333, 'A5326351362', 2),
(1158, 'artist''s', 'artist', 0, 0, 0.5333, 'A63232', 2),
(1159, 'artist''s palette', 'artist palette', 0, 1, 1.5333, 'A63232143', 2),
(1160, 'artist''s palette in', 'artist palette in', 0, 1, 1.6333, 'A632321435', 2),
(1161, 'background pattern', 'background pattern', 0, 1, 1.6, 'B26531365', 2),
(1162, 'background pattern parameters', 'background pattern parameters', 0, 1, 1.9667, 'B26531365165362', 2),
(1163, 'chooser system', 'chooser system', 0, 1, 1.4667, 'C6235', 2),
(1164, 'chooser system to', 'chooser system to', 0, 1, 1.5667, 'C62353', 2),
(1165, 'color chooser system', 'color chooser system', 0, 1, 1.6667, 'C4626235', 2),
(1166, 'color selection', 'color selection', 0, 1, 1.5, 'C4624235', 2),
(1167, 'color selection system', 'color selection system', 0, 1, 1.7333, 'C4624235235', 2),
(1168, 'combines tabbed', 'combines tabbed', 0, 1, 1.5, 'C5152313', 2),
(1169, 'combines tabbed showcase', 'combines tabbed showcase', 0, 1, 1.8, 'C51523132', 2),
(1170, 'completely', 'completely', 0, 0, 0.6667, 'C51434', 2),
(1171, 'completely dynamic', 'completely dynamic', 0, 1, 1.6, 'C51434352', 2),
(1172, 'completely dynamic with', 'completely dynamic with', 0, 1, 1.7667, 'C514343523', 2),
(1173, 'comprehensive', 'comprehensive', 0, 0, 0.8667, 'C516521', 2),
(1174, 'comprehensive color', 'comprehensive color', 0, 1, 1.6333, 'C516521246', 2),
(1175, 'comprehensive color chooser', 'comprehensive color chooser', 0, 1, 1.9, 'C51652124626', 2),
(1176, 'content extension that', 'content extension that', 0, 1, 1.7333, 'C5353235253', 2),
(1177, 'date', 'date', 0, 0, 0.2667, 'D000', 2),
(1178, 'date the', 'date the', 0, 1, 1.2667, 'D000', 2),
(1179, 'date the color', 'date the color', 0, 1, 1.4667, 'D246', 2),
(1180, 'debuts', 'debuts', 0, 0, 0.4, 'D132', 2),
(1181, 'debuts with', 'debuts with', 0, 1, 1.3667, 'D1323', 2),
(1182, 'debuts with ionosphere', 'debuts with ionosphere', 0, 1, 1.7333, 'D13235216', 2),
(1183, 'dynamic', 'dynamic', 0, 0, 0.4667, 'D520', 2),
(1184, 'dynamic with', 'dynamic with', 0, 1, 1.4, 'D523', 2),
(1185, 'dynamic with background', 'dynamic with background', 0, 1, 1.7667, 'D52312653', 2),
(1186, 'extension that', 'extension that', 0, 1, 1.4667, 'E235253', 2),
(1187, 'extension that combines', 'extension that combines', 0, 1, 1.7667, 'E23525325152', 2),
(1188, 'hands', 'hands', 0, 0, 0.3333, 'H532', 2),
(1189, 'hands through', 'hands through', 0, 1, 1.4333, 'H532362', 2),
(1190, 'hands through our', 'hands through our', 0, 1, 1.5667, 'H5323626', 2),
(1191, 'in your', 'in your', 0, 1, 1.2333, 'I560', 2),
(1192, 'in your hands', 'in your hands', 0, 1, 1.4333, 'I56532', 2),
(1193, 'incredibly', 'incredibly', 0, 0, 0.6667, 'I526314', 2),
(1194, 'incredibly versatile', 'incredibly versatile', 0, 1, 1.6667, 'I52631416234', 2),
(1195, 'incredibly versatile template', 'incredibly versatile template', 0, 1, 1.9667, 'I5263141623435143', 2),
(1196, 'ionosphere', 'ionosphere', 0, 0, 0.6667, 'I5216', 2),
(1197, 'ionosphere a', 'ionosphere a', 0, 1, 1.4, 'I5216', 2),
(1198, 'ionosphere a powerful', 'ionosphere a powerful', 0, 1, 1.7, 'I52161614', 2),
(1199, 'ionosphere march', 'ionosphere march', 0, 1, 1.5333, 'I5216562', 2),
(1200, 'ionosphere march 2012', 'ionosphere march 2012', 0, 1, 1.7, 'I5216562', 2),
(1201, 'ionosphere the', 'ionosphere the', 0, 1, 1.4667, 'I52163', 2),
(1202, 'ionosphere the march', 'ionosphere the march', 0, 1, 1.6667, 'I52163562', 2),
(1203, 'is an', 'is an', 0, 1, 1.1667, 'I250', 2),
(1204, 'is an incredibly', 'is an incredibly', 0, 1, 1.5333, 'I2526314', 2),
(1205, 'is completely', 'is completely', 0, 1, 1.4333, 'I251434', 2),
(1206, 'is completely dynamic', 'is completely dynamic', 0, 1, 1.7, 'I251434352', 2),
(1207, 'most', 'most', 0, 0, 0.2667, 'M230', 2),
(1208, 'most comprehensive', 'most comprehensive', 0, 1, 1.6, 'M232516521', 2),
(1209, 'most comprehensive color', 'most comprehensive color', 0, 1, 1.8, 'M232516521246', 2),
(1210, 'our most', 'our most', 0, 1, 1.2667, 'O6523', 2),
(1211, 'our most comprehensive', 'our most comprehensive', 0, 1, 1.7333, 'O65232516521', 2),
(1212, 'palette', 'palette', 0, 0, 0.4667, 'P430', 2),
(1213, 'palette in', 'palette in', 0, 1, 1.3333, 'P435', 2),
(1214, 'palette in your', 'palette in your', 0, 1, 1.5, 'P4356', 2),
(1215, 'parameters', 'parameters', 0, 0, 0.6667, 'P65362', 2),
(1216, 'pattern', 'pattern', 0, 0, 0.4667, 'P365', 2),
(1217, 'pattern parameters', 'pattern parameters', 0, 1, 1.6, 'P365165362', 2),
(1218, 'places', 'places', 0, 0, 0.4, 'P420', 2),
(1219, 'places the', 'places the', 0, 1, 1.3333, 'P423', 2),
(1220, 'places the artist''s', 'places the artist', 0, 1, 1.6333, 'P42363232', 2),
(1221, 'powerful revolutionary', 'powerful revolutionary', 0, 1, 1.7333, 'P614614356', 2),
(1222, 'powerful revolutionary content', 'powerful revolutionary content', 0, 1, 2, 'P61461435625353', 2),
(1223, 'release is an', 'release is an', 0, 1, 1.4333, 'R425', 2),
(1224, 'revolutionary', 'revolutionary', 0, 0, 0.8667, 'R14356', 2),
(1225, 'revolutionary content', 'revolutionary content', 0, 1, 1.7, 'R1435625353', 2),
(1226, 'revolutionary content extension', 'revolutionary content extension', 0, 1, 2, 'R143562535323525', 2),
(1227, 'roksprocket debuts', 'roksprocket debuts', 0, 1, 1.6, 'R21623132', 2),
(1228, 'roksprocket debuts with', 'roksprocket debuts with', 0, 1, 1.7667, 'R216231323', 2),
(1229, 'selection system', 'selection system', 0, 1, 1.5333, 'S4235235', 2),
(1230, 'selection system is', 'selection system is', 0, 1, 1.6333, 'S42352352', 2),
(1231, 'showcase', 'showcase', 0, 0, 0.5333, 'S000', 2),
(1232, 'showcase ticker', 'showcase ticker', 0, 1, 1.5, 'S326', 2),
(1233, 'showcase ticker and', 'showcase ticker and', 0, 1, 1.6333, 'S32653', 2),
(1234, 'system is', 'system is', 0, 1, 1.3, 'S352', 2),
(1235, 'system is completely', 'system is completely', 0, 1, 1.6667, 'S35251434', 2),
(1236, 'system to', 'system to', 0, 1, 1.3, 'S353', 2),
(1237, 'system to date', 'system to date', 0, 1, 1.4667, 'S353', 2),
(1238, 'tabbed', 'tabbed', 0, 0, 0.4, 'T130', 2),
(1239, 'tabbed showcase', 'tabbed showcase', 0, 1, 1.5, 'T132', 2),
(1240, 'tabbed showcase ticker', 'tabbed showcase ticker', 0, 1, 1.7333, 'T132326', 2),
(1241, 'template that', 'template that', 0, 1, 1.4333, 'T5143', 2),
(1242, 'template that places', 'template that places', 0, 1, 1.6667, 'T5143142', 2),
(1243, 'that', 'that', 0, 0, 0.2667, 'T000', 2),
(1244, 'that combines', 'that combines', 0, 1, 1.4333, 'T25152', 2),
(1245, 'that combines tabbed', 'that combines tabbed', 0, 1, 1.6667, 'T25152313', 2),
(1246, 'that places', 'that places', 0, 1, 1.3667, 'T142', 2),
(1247, 'that places the', 'that places the', 0, 1, 1.5, 'T1423', 2),
(1248, 'the artist''s', 'the artist', 0, 1, 1.4, 'T63232', 2),
(1249, 'the artist''s palette', 'the artist palette', 0, 1, 1.6667, 'T63232143', 2),
(1250, 'the color selection', 'the color selection', 0, 1, 1.6333, 'T24624235', 2),
(1251, 'the march', 'the march', 0, 1, 1.3, 'T562', 2),
(1252, 'the march 2012', 'the march 2012', 0, 1, 1.4667, 'T562', 2),
(1253, 'through', 'through', 0, 0, 0.4667, 'T620', 2),
(1254, 'through our', 'through our', 0, 1, 1.3667, 'T626', 2),
(1255, 'through our most', 'through our most', 0, 1, 1.5333, 'T626523', 2),
(1256, 'ticker', 'ticker', 0, 0, 0.4, 'T260', 2),
(1257, 'ticker and', 'ticker and', 0, 1, 1.3333, 'T2653', 2),
(1258, 'ticker and accordian', 'ticker and accordian', 0, 1, 1.6667, 'T26532635', 2),
(1259, 'to date', 'to date', 0, 1, 1.2333, 'T000', 2),
(1260, 'to date the', 'to date the', 0, 1, 1.3667, 'T000', 2),
(1261, 'versatile template', 'versatile template', 0, 1, 1.6, 'V623435143', 2),
(1262, 'versatile template that', 'versatile template that', 0, 1, 1.7667, 'V623435143', 2),
(1263, 'with background', 'with background', 0, 1, 1.5, 'W312653', 2),
(1264, 'with background pattern', 'with background pattern', 0, 1, 1.7667, 'W3126531365', 2),
(1265, 'with ionosphere', 'with ionosphere', 0, 1, 1.5, 'W35216', 2),
(1266, 'with ionosphere a', 'with ionosphere a', 0, 1, 1.5667, 'W35216', 2),
(1267, 'your hands', 'your hands', 0, 1, 1.3333, 'Y6532', 2),
(1268, 'your hands through', 'your hands through', 0, 1, 1.6, 'Y6532362', 2),
(1277, '6', '6', 0, 0, 0.1, '', 7),
(1278, 'and rokgallery', 'and rokgallery', 0, 1, 1.4667, 'A536246', 2),
(1279, 'as roksprocket and', 'as roksprocket and', 0, 1, 1.6, 'A262162353', 2),
(1280, 'rokgallery', 'rokgallery', 0, 0, 0.6667, 'R246', 2),
(1281, 'roksprocket and', 'roksprocket and', 0, 1, 1.5, 'R2162353', 2),
(1282, 'roksprocket and rokgallery', 'roksprocket and rokgallery', 0, 1, 1.8667, 'R21623536246', 2),
(1284, 'phpbb3 styles', 'phpbb3 styles', 0, 1, 1.4333, 'P2342', 3),
(1285, 'styles', 'styles', 0, 0, 0.4, 'S342', 3),
(1287, 'wordpress', 'wordpress', 0, 0, 0.6, 'W63162', 1),
(1288, 'wordpress theme', 'wordpress theme', 0, 1, 1.5, 'W6316235', 1),
(1290, '7', '7', 0, 0, 0.1, '', 20),
(1291, 'adipiscing', 'adipiscing', 0, 0, 0.6667, 'A31252', 38),
(1292, 'adipiscing elit', 'adipiscing elit', 0, 1, 1.5, 'A3125243', 26),
(1293, 'adipiscing elit hendrerit', 'adipiscing elit hendrerit', 0, 1, 1.8333, 'A31252435363', 2),
(1294, 'adipiscing elit maecenas', 'adipiscing elit maecenas', 0, 1, 1.8, 'A31252435252', 2),
(1295, 'aenean', 'aenean', 0, 0, 0.4, 'A500', 2),
(1296, 'aenean elementum', 'aenean elementum', 0, 1, 1.5333, 'A54535', 2),
(1297, 'aenean elementum massa', 'aenean elementum massa', 0, 1, 1.7333, 'A545352', 2),
(1298, 'amet', 'amet', 0, 0, 0.2667, 'A530', 30),
(1299, 'amet consectetur', 'amet consectetur', 0, 1, 1.5333, 'A5325236', 26),
(1300, 'amet consectetur adipiscing', 'amet consectetur adipiscing', 0, 1, 1.9, 'A532523631252', 26),
(1301, 'amet facilisis', 'amet facilisis', 0, 1, 1.4667, 'A531242', 2),
(1302, 'amet facilisis dolor', 'amet facilisis dolor', 0, 1, 1.6667, 'A531242346', 2),
(1303, 'consectetur', 'consectetur', 0, 0, 0.7333, 'C5236', 26),
(1304, 'consectetur adipiscing', 'consectetur adipiscing', 0, 1, 1.7333, 'C523631252', 26),
(1305, 'consectetur adipiscing elit', 'consectetur adipiscing elit', 0, 1, 1.9, 'C52363125243', 26),
(1306, 'convallis', 'convallis', 0, 0, 0.6, 'C5142', 2),
(1307, 'convallis nibh', 'convallis nibh', 0, 1, 1.4667, 'C514251', 2),
(1308, 'convallis nibh et', 'convallis nibh et', 0, 1, 1.5667, 'C5142513', 2),
(1309, 'cursus', 'cursus', 0, 0, 0.4, 'C620', 25),
(1310, 'cursus sagittis', 'cursus sagittis', 0, 1, 1.5, 'C6232', 2),
(1311, 'cursus sagittis morbi', 'cursus sagittis morbi', 0, 1, 1.7, 'C6232561', 2),
(1312, 'diam', 'diam', 0, 0, 0.2667, 'D500', 2),
(1313, 'dolor', 'dolor', 0, 0, 0.3333, 'D460', 26),
(1314, 'dolor porta', 'dolor porta', 0, 1, 1.3667, 'D46163', 2),
(1315, 'dolor porta aenean', 'dolor porta aenean', 0, 1, 1.6, 'D461635', 2),
(1316, 'dolor sit', 'dolor sit', 0, 1, 1.3, 'D4623', 26),
(1317, 'dolor sit amet', 'dolor sit amet', 0, 1, 1.4667, 'D462353', 26),
(1318, 'dui', 'dui', 0, 0, 0.2, 'D000', 18),
(1319, 'dui hendrerit', 'dui hendrerit', 0, 1, 1.4333, 'D5363', 2),
(1320, 'dui hendrerit luctus', 'dui hendrerit luctus', 0, 1, 1.6667, 'D53634232', 2),
(1321, 'elementum', 'elementum', 0, 0, 0.6, 'E4535', 26),
(1322, 'elementum massa', 'elementum massa', 0, 1, 1.5, 'E45352', 2),
(1323, 'elementum massa sodales', 'elementum massa sodales', 0, 1, 1.7667, 'E45352342', 2),
(1324, 'elit', 'elit', 0, 0, 0.2667, 'E430', 26),
(1325, 'elit hendrerit', 'elit hendrerit', 0, 1, 1.4667, 'E435363', 2),
(1326, 'elit maecenas', 'elit maecenas', 0, 1, 1.4333, 'E435252', 2),
(1327, 'elit maecenas convallis', 'elit maecenas convallis', 0, 1, 1.7667, 'E4352525142', 2),
(1328, 'et', 'et', 0, 0, 0.1333, 'E300', 18),
(1329, 'et dui', 'et dui', 0, 1, 1.2, 'E300', 2),
(1330, 'et dui hendrerit', 'et dui hendrerit', 0, 1, 1.5333, 'E35363', 2),
(1331, 'facilisis', 'facilisis', 0, 0, 0.6, 'F242', 23),
(1332, 'facilisis dolor', 'facilisis dolor', 0, 1, 1.5, 'F242346', 2),
(1333, 'facilisis dolor porta', 'facilisis dolor porta', 0, 1, 1.7, 'F242346163', 2),
(1334, 'fringilla', 'fringilla', 0, 0, 0.6, 'F6524', 2),
(1335, 'fringilla tortor', 'fringilla tortor', 0, 1, 1.5333, 'F65243636', 2),
(1336, 'fringilla tortor vitae', 'fringilla tortor vitae', 0, 1, 1.7333, 'F6524363613', 2),
(1337, 'hendrerit', 'hendrerit', 0, 0, 0.6, 'H5363', 2),
(1338, 'hendrerit luctus', 'hendrerit luctus', 0, 1, 1.5333, 'H53634232', 2),
(1339, 'hendrerit luctus praesent', 'hendrerit luctus praesent', 0, 1, 1.8333, 'H5363423216253', 2),
(1340, 'ipsum', 'ipsum', 0, 0, 0.3333, 'I125', 26),
(1341, 'ipsum dolor', 'ipsum dolor', 0, 1, 1.3667, 'I125346', 26),
(1342, 'ipsum dolor sit', 'ipsum dolor sit', 0, 1, 1.5, 'I12534623', 26),
(1343, 'lectus', 'lectus', 0, 0, 0.4, 'L232', 23),
(1344, 'lectus tempor', 'lectus tempor', 0, 1, 1.4333, 'L2323516', 2),
(1345, 'lectus tempor sit', 'lectus tempor sit', 0, 1, 1.5667, 'L232351623', 2),
(1346, 'lorem', 'lorem', 0, 0, 0.3333, 'L650', 38),
(1347, 'lorem ipsum', 'lorem ipsum', 0, 1, 1.3667, 'L65125', 26),
(1348, 'lorem ipsum dolor', 'lorem ipsum dolor', 0, 1, 1.5667, 'L65125346', 26),
(1349, 'luctus', 'luctus', 0, 0, 0.4, 'L232', 13),
(1350, 'luctus praesent', 'luctus praesent', 0, 1, 1.5, 'L23216253', 2),
(1351, 'luctus praesent fringilla', 'luctus praesent fringilla', 0, 1, 1.8333, 'L2321625316524', 2),
(1352, 'maecenas', 'maecenas', 0, 0, 0.5333, 'M252', 2),
(1353, 'maecenas convallis', 'maecenas convallis', 0, 1, 1.6, 'M2525142', 2),
(1354, 'maecenas convallis nibh', 'maecenas convallis nibh', 0, 1, 1.7667, 'M252514251', 2),
(1355, 'massa', 'massa', 0, 0, 0.3333, 'M200', 25),
(1356, 'massa sodales', 'massa sodales', 0, 1, 1.4333, 'M2342', 2),
(1357, 'massa sodales tortor', 'massa sodales tortor', 0, 1, 1.6667, 'M23423636', 2),
(1358, 'morbi', 'morbi', 0, 0, 0.3333, 'M610', 18),
(1359, 'morbi ut', 'morbi ut', 0, 1, 1.2667, 'M613', 2),
(1360, 'morbi ut tristique', 'morbi ut tristique', 0, 1, 1.6, 'M6136232', 2),
(1361, 'nibh', 'nibh', 0, 0, 0.2667, 'N100', 23),
(1362, 'nibh et', 'nibh et', 0, 1, 1.2333, 'N130', 2),
(1363, 'nibh et dui', 'nibh et dui', 0, 1, 1.3667, 'N130', 2),
(1364, 'porta', 'porta', 0, 0, 0.3333, 'P630', 23),
(1365, 'porta aenean', 'porta aenean', 0, 1, 1.4, 'P635', 2),
(1366, 'porta aenean elementum', 'porta aenean elementum', 0, 1, 1.7333, 'P6354535', 2),
(1367, 'praesent', 'praesent', 0, 0, 0.5333, 'P6253', 2),
(1368, 'praesent fringilla', 'praesent fringilla', 0, 1, 1.6, 'P625316524', 2),
(1369, 'praesent fringilla tortor', 'praesent fringilla tortor', 0, 1, 1.8333, 'P6253165243636', 2),
(1370, 'sagittis', 'sagittis', 0, 0, 0.5333, 'S320', 11),
(1371, 'sagittis morbi', 'sagittis morbi', 0, 1, 1.4667, 'S32561', 2),
(1372, 'sagittis morbi ut', 'sagittis morbi ut', 0, 1, 1.5667, 'S325613', 2),
(1373, 'sit', 'sit', 0, 0, 0.2, 'S300', 30),
(1374, 'sit amet', 'sit amet', 0, 1, 1.2667, 'S353', 30),
(1375, 'sit amet consectetur', 'sit amet consectetur', 0, 1, 1.6667, 'S35325236', 26),
(1376, 'sit amet facilisis', 'sit amet facilisis', 0, 1, 1.6, 'S3531242', 2),
(1377, 'sodales', 'sodales', 0, 0, 0.4667, 'S342', 2),
(1378, 'sodales tortor', 'sodales tortor', 0, 1, 1.4667, 'S3423636', 2),
(1379, 'sodales tortor cursus', 'sodales tortor cursus', 0, 1, 1.7, 'S3423636262', 2),
(1380, 'tempor', 'tempor', 0, 0, 0.4, 'T516', 2),
(1381, 'tempor sit', 'tempor sit', 0, 1, 1.3333, 'T51623', 2),
(1382, 'tempor sit amet', 'tempor sit amet', 0, 1, 1.5, 'T5162353', 2),
(1383, 'tortor', 'tortor', 0, 0, 0.4, 'T636', 14),
(1384, 'tortor cursus', 'tortor cursus', 0, 1, 1.4333, 'T636262', 2),
(1385, 'tortor cursus sagittis', 'tortor cursus sagittis', 0, 1, 1.7333, 'T63626232', 2),
(1386, 'tortor vitae', 'tortor vitae', 0, 1, 1.4, 'T63613', 2),
(1387, 'tortor vitae lectus', 'tortor vitae lectus', 0, 1, 1.6333, 'T636134232', 2),
(1388, 'tristique', 'tristique', 0, 0, 0.6, 'T6232', 2),
(1389, 'tristique diam', 'tristique diam', 0, 1, 1.4667, 'T623235', 2),
(1390, 'ut', 'ut', 0, 0, 0.1333, 'U300', 30),
(1391, 'ut tristique', 'ut tristique', 0, 1, 1.4, 'U36232', 2),
(1392, 'ut tristique diam', 'ut tristique diam', 0, 1, 1.5667, 'U3623235', 2),
(1393, 'vitae', 'vitae', 0, 0, 0.3333, 'V300', 13),
(1394, 'vitae lectus', 'vitae lectus', 0, 1, 1.4, 'V34232', 2),
(1395, 'vitae lectus tempor', 'vitae lectus tempor', 0, 1, 1.6333, 'V342323516', 2),
(1396, 'ac', 'ac', 0, 0, 0.1333, 'A200', 40),
(1397, 'ac varius', 'ac varius', 0, 1, 1.3, 'A2162', 28),
(1398, 'ac varius nec', 'ac varius nec', 0, 1, 1.4333, 'A216252', 24),
(1399, 'adipiscing elit phasellus', 'adipiscing elit phasellus', 0, 1, 1.8333, 'A31252431242', 24),
(1400, 'aliquet', 'aliquet', 0, 0, 0.4667, 'A423', 24),
(1401, 'aliquet sed', 'aliquet sed', 0, 1, 1.3667, 'A42323', 24),
(1402, 'aliquet sed dictum', 'aliquet sed dictum', 0, 1, 1.6, 'A42323235', 24),
(1403, 'ante', 'ante', 0, 0, 0.2667, 'A530', 24),
(1404, 'ante proin', 'ante proin', 0, 1, 1.3333, 'A53165', 24),
(1405, 'ante proin lacinia', 'ante proin lacinia', 0, 1, 1.6, 'A53165425', 24),
(1406, 'dictum', 'dictum', 0, 0, 0.4, 'D235', 24),
(1407, 'dictum elementum', 'dictum elementum', 0, 1, 1.5333, 'D2354535', 24),
(1408, 'dictum elementum ullamcorper', 'dictum elementum ullamcorper', 0, 1, 1.9333, 'D2354535452616', 24),
(1409, 'dor', 'dor', 0, 0, 0.2, 'D600', 8),
(1410, 'egestas', 'egestas', 0, 0, 0.4667, 'E232', 20),
(1411, 'egestas dor', 'egestas dor', 0, 1, 1.3667, 'E23236', 8),
(1412, 'elementum ullamcorper', 'elementum ullamcorper', 0, 1, 1.7, 'E4535452616', 24),
(1413, 'elit phasellus', 'elit phasellus', 0, 1, 1.4667, 'E431242', 24),
(1414, 'elit phasellus magna', 'elit phasellus magna', 0, 1, 1.6667, 'E431242525', 24),
(1415, 'iaculis', 'iaculis', 0, 0, 0.4667, 'I242', 40),
(1416, 'iaculis ut', 'iaculis ut', 0, 1, 1.3333, 'I2423', 24),
(1417, 'iaculis ut ante', 'iaculis ut ante', 0, 1, 1.5, 'I242353', 24),
(1418, 'imperdiet', 'imperdiet', 0, 0, 0.6, 'I5163', 40),
(1419, 'imperdiet ac', 'imperdiet ac', 0, 1, 1.4, 'I51632', 28),
(1420, 'imperdiet ac varius', 'imperdiet ac varius', 0, 1, 1.6333, 'I51632162', 28),
(1421, 'integer', 'integer', 0, 0, 0.4667, 'I5326', 31),
(1422, 'integer nunc', 'integer nunc', 0, 1, 1.4, 'I532652', 8),
(1423, 'integer nunc lorem', 'integer nunc lorem', 0, 1, 1.6, 'I532652465', 8),
(1424, 'lacinia', 'lacinia', 0, 0, 0.4667, 'L250', 24),
(1425, 'lacinia porttitor', 'lacinia porttitor', 0, 1, 1.5667, 'L251636', 24),
(1426, 'lacinia porttitor aliquet', 'lacinia porttitor aliquet', 0, 1, 1.8333, 'L251636423', 24),
(1427, 'libero', 'libero', 0, 0, 0.4, 'L160', 28),
(1428, 'libero imperdiet', 'libero imperdiet', 0, 1, 1.5333, 'L165163', 28),
(1429, 'libero imperdiet ac', 'libero imperdiet ac', 0, 1, 1.6333, 'L1651632', 28),
(1430, 'lorem egestas', 'lorem egestas', 0, 1, 1.4333, 'L65232', 8),
(1431, 'lorem egestas dor', 'lorem egestas dor', 0, 1, 1.5667, 'L6523236', 8),
(1432, 'magna', 'magna', 0, 0, 0.3333, 'M250', 28),
(1433, 'magna libero', 'magna libero', 0, 1, 1.4, 'M25416', 28),
(1434, 'magna libero imperdiet', 'magna libero imperdiet', 0, 1, 1.7333, 'M254165163', 28),
(1435, 'nec', 'nec', 0, 0, 0.2, 'N200', 40),
(1436, 'nec iaculis', 'nec iaculis', 0, 1, 1.3667, 'N242', 24),
(1437, 'nec iaculis ut', 'nec iaculis ut', 0, 1, 1.4667, 'N2423', 24),
(1438, 'nunc', 'nunc', 0, 0, 0.2667, 'N200', 19),
(1439, 'nunc lorem', 'nunc lorem', 0, 1, 1.3333, 'N2465', 8),
(1440, 'nunc lorem egestas', 'nunc lorem egestas', 0, 1, 1.6, 'N2465232', 8),
(1441, 'phasellus', 'phasellus', 0, 0, 0.6, 'P242', 28),
(1442, 'phasellus magna', 'phasellus magna', 0, 1, 1.5, 'P242525', 28),
(1443, 'phasellus magna libero', 'phasellus magna libero', 0, 1, 1.7333, 'P242525416', 28),
(1444, 'porttitor', 'porttitor', 0, 0, 0.6, 'P636', 24),
(1445, 'porttitor aliquet', 'porttitor aliquet', 0, 1, 1.5667, 'P636423', 24),
(1446, 'porttitor aliquet sed', 'porttitor aliquet sed', 0, 1, 1.7, 'P63642323', 24),
(1447, 'proin', 'proin', 0, 0, 0.3333, 'P650', 24),
(1448, 'proin lacinia', 'proin lacinia', 0, 1, 1.4333, 'P65425', 24),
(1449, 'proin lacinia porttitor', 'proin lacinia porttitor', 0, 1, 1.7667, 'P654251636', 24),
(1450, 'sed', 'sed', 0, 0, 0.2, 'S300', 28),
(1451, 'sed dictum', 'sed dictum', 0, 1, 1.3333, 'S3235', 24),
(1452, 'sed dictum elementum', 'sed dictum elementum', 0, 1, 1.6667, 'S32354535', 24),
(1453, 'ullamcorper', 'ullamcorper', 0, 0, 0.7333, 'U452616', 40),
(1454, 'ut ante', 'ut ante', 0, 1, 1.2333, 'U353', 24),
(1455, 'ut ante proin', 'ut ante proin', 0, 1, 1.4333, 'U353165', 24),
(1456, 'varius', 'varius', 0, 0, 0.4, 'V620', 28),
(1457, 'varius nec', 'varius nec', 0, 1, 1.3333, 'V6252', 24),
(1458, 'varius nec iaculis', 'varius nec iaculis', 0, 1, 1.6, 'V625242', 24),
(1459, 'entertainment', 'entertainment', 0, 0, 0.8667, 'E536353', 7),
(1460, 'movie', 'movie', 0, 0, 0.3333, 'M100', 25),
(1461, 'game', 'game', 0, 0, 0.2667, 'G500', 6),
(1462, 'magazine', 'magazine', 0, 0, 0.5333, 'M250', 5),
(1463, 'ac dignissim', 'ac dignissim', 0, 1, 1.4, 'A232525', 21),
(1464, 'ac dignissim non', 'ac dignissim non', 0, 1, 1.5333, 'A232525', 21),
(1465, 'dignissim', 'dignissim', 0, 0, 0.6, 'D2525', 25),
(1466, 'dignissim non', 'dignissim non', 0, 1, 1.4333, 'D2525', 21),
(1467, 'dignissim non ultrices', 'dignissim non ultrices', 0, 1, 1.7333, 'D25254362', 21),
(1468, 'elementum ullamcorper pellentesque', 'elementum ullamcorper pellentesque', 0, 1, 2, 'E453545261614532', 21),
(1469, 'lectus nulla', 'lectus nulla', 0, 1, 1.4, 'L23254', 21),
(1470, 'lectus nulla porta', 'lectus nulla porta', 0, 1, 1.6, 'L23254163', 21),
(1471, 'ligula', 'ligula', 0, 0, 0.4, 'L240', 21),
(1472, 'non', 'non', 0, 0, 0.2, 'N000', 37),
(1473, 'non ultrices', 'non ultrices', 0, 1, 1.4, 'N4362', 21),
(1474, 'non ultrices quis', 'non ultrices quis', 0, 1, 1.5667, 'N4362', 21),
(1475, 'nulla', 'nulla', 0, 0, 0.3333, 'N400', 25),
(1476, 'nulla porta', 'nulla porta', 0, 1, 1.3667, 'N4163', 21),
(1477, 'nulla porta ac', 'nulla porta ac', 0, 1, 1.4667, 'N41632', 21),
(1478, 'pellentesque', 'pellentesque', 0, 0, 0.8, 'P4532', 33),
(1479, 'pellentesque lectus', 'pellentesque lectus', 0, 1, 1.6333, 'P45324232', 21),
(1480, 'pellentesque lectus nulla', 'pellentesque lectus nulla', 0, 1, 1.8333, 'P4532423254', 21),
(1481, 'porta ac', 'porta ac', 0, 1, 1.2667, 'P632', 21),
(1482, 'porta ac dignissim', 'porta ac dignissim', 0, 1, 1.6, 'P63232525', 21),
(1483, 'quis', 'quis', 0, 0, 0.2667, 'Q000', 28),
(1484, 'quis ligula', 'quis ligula', 0, 1, 1.3667, 'Q424', 21),
(1485, 'ullamcorper pellentesque', 'ullamcorper pellentesque', 0, 1, 1.8, 'U45261614532', 21),
(1486, 'ullamcorper pellentesque lectus', 'ullamcorper pellentesque lectus', 0, 1, 2, 'U452616145324232', 21),
(1487, 'ultrices', 'ultrices', 0, 0, 0.5333, 'U4362', 37),
(1488, 'ultrices quis', 'ultrices quis', 0, 1, 1.4333, 'U4362', 21),
(1489, 'ultrices quis ligula', 'ultrices quis ligula', 0, 1, 1.6667, 'U4362424', 21),
(1494, 'a orci', 'a orci', 0, 1, 1.2, 'A620', 9),
(1495, 'a orci nam', 'a orci nam', 0, 1, 1.3333, 'A625', 9),
(1496, 'ac varius neco', 'ac varius neco', 0, 1, 1.4667, 'A216252', 9),
(1497, 'amet dignissim', 'amet dignissim', 0, 1, 1.4667, 'A532525', 9),
(1498, 'amet dignissim eta', 'amet dignissim eta', 0, 1, 1.6, 'A5325253', 5),
(1499, 'amet dignissim libero', 'amet dignissim libero', 0, 1, 1.7, 'A532525416', 9),
(1500, 'at', 'at', 0, 0, 0.1333, 'A300', 32),
(1501, 'at in', 'at in', 0, 1, 1.1667, 'A350', 9),
(1502, 'at in nibh', 'at in nibh', 0, 1, 1.3333, 'A351', 9),
(1503, 'dignissim eta', 'dignissim eta', 0, 1, 1.4333, 'D25253', 5),
(1504, 'dignissim eta libero', 'dignissim eta libero', 0, 1, 1.6667, 'D25253416', 5),
(1505, 'dignissim libero', 'dignissim libero', 0, 1, 1.5333, 'D2525416', 9),
(1506, 'dignissim libero purus', 'dignissim libero purus', 0, 1, 1.7333, 'D2525416162', 9),
(1507, 'eget', 'eget', 0, 0, 0.2667, 'E230', 21),
(1508, 'eget leo', 'eget leo', 0, 1, 1.2667, 'E234', 9),
(1509, 'eget leo vel', 'eget leo vel', 0, 1, 1.4, 'E23414', 9),
(1510, 'eget velit', 'eget velit', 0, 1, 1.3333, 'E23143', 21),
(1511, 'eget velit sed', 'eget velit sed', 0, 1, 1.4667, 'E2314323', 9),
(1512, 'est', 'est', 0, 0, 0.2, 'E230', 27),
(1513, 'est sit', 'est sit', 0, 1, 1.2333, 'E2323', 9),
(1514, 'est sit amet', 'est sit amet', 0, 1, 1.4, 'E232353', 9),
(1515, 'eta', 'eta', 0, 0, 0.2, 'E300', 5),
(1516, 'eta libero', 'eta libero', 0, 1, 1.3333, 'E3416', 5),
(1517, 'eta libero purusa', 'eta libero purusa', 0, 1, 1.5667, 'E3416162', 5),
(1518, 'facilisis ut', 'facilisis ut', 0, 1, 1.4, 'F2423', 9),
(1519, 'facilisis ut a', 'facilisis ut a', 0, 1, 1.4667, 'F2423', 9),
(1520, 'felis', 'felis', 0, 0, 0.3333, 'F420', 9),
(1521, 'felis phasellus', 'felis phasellus', 0, 1, 1.5, 'F421242', 9),
(1522, 'felis phasellus magna', 'felis phasellus magna', 0, 1, 1.7, 'F421242525', 9),
(1523, 'feugiat', 'feugiat', 0, 0, 0.4667, 'F230', 9),
(1524, 'feugiat facilisis', 'feugiat facilisis', 0, 1, 1.5667, 'F231242', 9),
(1525, 'feugiat facilisis ut', 'feugiat facilisis ut', 0, 1, 1.6667, 'F2312423', 9),
(1526, 'feugiat risus', 'feugiat risus', 0, 1, 1.4333, 'F2362', 9),
(1527, 'feugiat risus in', 'feugiat risus in', 0, 1, 1.5333, 'F23625', 9),
(1528, 'iaculis tincidunt', 'iaculis tincidunt', 0, 1, 1.5667, 'I242352353', 9),
(1529, 'iaculis tincidunt tellus', 'iaculis tincidunt tellus', 0, 1, 1.8, 'I24235235342', 9),
(1530, 'id', 'id', 0, 0, 0.1333, 'I300', 9),
(1531, 'id felis', 'id felis', 0, 1, 1.2667, 'I3142', 9),
(1532, 'id felis phasellus', 'id felis phasellus', 0, 1, 1.6, 'I31421242', 9),
(1533, 'in iaculis', 'in iaculis', 0, 1, 1.3333, 'I5242', 9),
(1534, 'in iaculis tincidunt', 'in iaculis tincidunt', 0, 1, 1.6667, 'I5242352353', 9),
(1535, 'in nibh', 'in nibh', 0, 1, 1.2333, 'I510', 9),
(1536, 'in nibh nullam', 'in nibh nullam', 0, 1, 1.4667, 'I51545', 9),
(1537, 'leo', 'leo', 0, 0, 0.2, 'L000', 9),
(1538, 'leo vel', 'leo vel', 0, 1, 1.2333, 'L140', 9),
(1539, 'leo vel orci', 'leo vel orci', 0, 1, 1.4, 'L1462', 9),
(1540, 'libero purus', 'libero purus', 0, 1, 1.4, 'L16162', 9),
(1541, 'libero purus id', 'libero purus id', 0, 1, 1.5, 'L161623', 9),
(1542, 'libero purusa', 'libero purusa', 0, 1, 1.4333, 'L16162', 5),
(1543, 'nam', 'nam', 0, 0, 0.2, 'N000', 9),
(1544, 'nam feugiat', 'nam feugiat', 0, 1, 1.3667, 'N123', 9),
(1545, 'nam feugiat risus', 'nam feugiat risus', 0, 1, 1.5667, 'N12362', 9),
(1546, 'neco', 'neco', 0, 0, 0.2667, 'N200', 9),
(1547, 'nibh nullam', 'nibh nullam', 0, 1, 1.3667, 'N1545', 21),
(1548, 'nibh nullam eget', 'nibh nullam eget', 0, 1, 1.5333, 'N154523', 9),
(1549, 'nulla viverra', 'nulla viverra', 0, 1, 1.4333, 'N416', 9),
(1550, 'nulla viverra est', 'nulla viverra est', 0, 1, 1.5667, 'N41623', 9),
(1551, 'nullam', 'nullam', 0, 0, 0.4, 'N450', 21),
(1552, 'nullam eget', 'nullam eget', 0, 1, 1.3667, 'N4523', 21),
(1553, 'nullam eget velit', 'nullam eget velit', 0, 1, 1.5667, 'N4523143', 21),
(1554, 'odio', 'odio', 0, 0, 0.2667, 'O300', 21),
(1555, 'odio feugiat', 'odio feugiat', 0, 1, 1.4, 'O3123', 9),
(1556, 'odio feugiat facilisis', 'odio feugiat facilisis', 0, 1, 1.7333, 'O31231242', 9),
(1557, 'orci', 'orci', 0, 0, 0.2667, 'O620', 16),
(1558, 'orci nam', 'orci nam', 0, 1, 1.2667, 'O625', 9),
(1559, 'orci nam feugiat', 'orci nam feugiat', 0, 1, 1.5333, 'O625123', 9),
(1560, 'orci sagittis', 'orci sagittis', 0, 1, 1.4333, 'O6232', 9),
(1561, 'orci sagittis viverra', 'orci sagittis viverra', 0, 1, 1.7, 'O623216', 9),
(1562, 'purus', 'purus', 0, 0, 0.3333, 'P620', 20),
(1563, 'purus id', 'purus id', 0, 1, 1.2667, 'P623', 9),
(1564, 'purus id felis', 'purus id felis', 0, 1, 1.4667, 'P623142', 9),
(1565, 'purusa', 'purusa', 0, 0, 0.4, 'P620', 5),
(1566, 'risus', 'risus', 0, 0, 0.3333, 'R200', 9),
(1567, 'risus in', 'risus in', 0, 1, 1.2667, 'R250', 9),
(1568, 'risus in iaculis', 'risus in iaculis', 0, 1, 1.5333, 'R25242', 9),
(1569, 'sagittis viverra', 'sagittis viverra', 0, 1, 1.5333, 'S3216', 9),
(1570, 'sagittis viverra at', 'sagittis viverra at', 0, 1, 1.6333, 'S32163', 9),
(1571, 'sed odio', 'sed odio', 0, 1, 1.2667, 'S300', 9),
(1572, 'sed odio feugiat', 'sed odio feugiat', 0, 1, 1.5333, 'S3123', 9),
(1573, 'sit amet dignissim', 'sit amet dignissim', 0, 1, 1.6, 'S3532525', 9),
(1574, 'tellus', 'tellus', 0, 0, 0.4, 'T420', 9),
(1575, 'tellus nulla', 'tellus nulla', 0, 1, 1.4, 'T4254', 9),
(1576, 'tellus nulla viverra', 'tellus nulla viverra', 0, 1, 1.6667, 'T425416', 9),
(1577, 'tincidunt', 'tincidunt', 0, 0, 0.6, 'T52353', 32),
(1578, 'tincidunt tellus', 'tincidunt tellus', 0, 1, 1.5333, 'T5235342', 9),
(1579, 'tincidunt tellus nulla', 'tincidunt tellus nulla', 0, 1, 1.7333, 'T523534254', 9),
(1580, 'ut a', 'ut a', 0, 1, 1.1333, 'U300', 9),
(1581, 'ut a orci', 'ut a orci', 0, 1, 1.3, 'U362', 9),
(1582, 'ut eget', 'ut eget', 0, 1, 1.2333, 'U323', 9),
(1583, 'ut eget leo', 'ut eget leo', 0, 1, 1.3667, 'U3234', 9),
(1584, 'varius neco', 'varius neco', 0, 1, 1.3667, 'V6252', 9),
(1585, 'vel', 'vel', 0, 0, 0.2, 'V400', 32),
(1586, 'vel orci', 'vel orci', 0, 1, 1.2667, 'V462', 9),
(1587, 'vel orci sagittis', 'vel orci sagittis', 0, 1, 1.5667, 'V46232', 9),
(1588, 'velit', 'velit', 0, 0, 0.3333, 'V430', 21),
(1589, 'velit sed', 'velit sed', 0, 1, 1.3, 'V4323', 9),
(1590, 'velit sed odio', 'velit sed odio', 0, 1, 1.4667, 'V4323', 9),
(1591, 'viverra', 'viverra', 0, 0, 0.4667, 'V600', 15),
(1592, 'viverra at', 'viverra at', 0, 1, 1.3333, 'V630', 9),
(1593, 'viverra at in', 'viverra at in', 0, 1, 1.4333, 'V635', 9),
(1594, 'viverra est', 'viverra est', 0, 1, 1.3667, 'V623', 15),
(1595, 'viverra est sit', 'viverra est sit', 0, 1, 1.5, 'V62323', 9),
(1621, 'dor imperdiet', 'dor imperdiet', 0, 1, 1.4333, 'D65163', 4),
(1622, 'egestas dor imperdiet', 'egestas dor imperdiet', 0, 1, 1.7, 'E232365163', 4),
(1623, 'lorem ot', 'lorem ot', 0, 1, 1.2667, 'L653', 4),
(1624, 'lorem ot egestas', 'lorem ot egestas', 0, 1, 1.5333, 'L653232', 4),
(1625, 'nunc lorem ot', 'nunc lorem ot', 0, 1, 1.4333, 'N24653', 4),
(1626, 'ot', 'ot', 0, 0, 0.1333, 'O300', 10),
(1627, 'ot egestas', 'ot egestas', 0, 1, 1.3333, 'O3232', 4),
(1628, 'ot egestas dor', 'ot egestas dor', 0, 1, 1.4667, 'O323236', 4),
(1636, 'libero purusa viverra', 'libero purusa viverra', 0, 1, 1.7, 'L1616216', 3),
(1637, 'ligula vi', 'ligula vi', 0, 1, 1.3, 'L241', 3),
(1638, 'purusa viverra', 'purusa viverra', 0, 1, 1.4667, 'P6216', 3),
(1639, 'quis ligula vi', 'quis ligula vi', 0, 1, 1.4667, 'Q4241', 3),
(1640, 'vi', 'vi', 0, 0, 0.1333, 'V000', 3),
(1643, 'ac est', 'ac est', 0, 1, 1.2, 'A230', 16),
(1644, 'ac est imperdiet', 'ac est imperdiet', 0, 1, 1.5333, 'A235163', 16),
(1645, 'accumsan', 'accumsan', 0, 0, 0.5333, 'A2525', 27),
(1646, 'accumsan scelerisque', 'accumsan scelerisque', 0, 1, 1.6667, 'A25252462', 16),
(1647, 'accumsan scelerisque erat', 'accumsan scelerisque erat', 0, 1, 1.8333, 'A2525246263', 16),
(1648, 'at enmum', 'at enmum', 0, 1, 1.2667, 'A350', 4),
(1649, 'at enmum ornare', 'at enmum ornare', 0, 1, 1.5, 'A35656', 4),
(1650, 'at ornare', 'at ornare', 0, 1, 1.3, 'A3656', 16),
(1651, 'at ornare enim', 'at ornare enim', 0, 1, 1.4667, 'A36565', 16),
(1652, 'cras', 'cras', 0, 0, 0.2667, 'C620', 16),
(1653, 'cras volutpat', 'cras volutpat', 0, 1, 1.4333, 'C6214313', 16),
(1654, 'cras volutpat odio', 'cras volutpat odio', 0, 1, 1.6, 'C6214313', 16),
(1655, 'curabitur', 'curabitur', 0, 0, 0.6, 'C6136', 16),
(1656, 'curabitur tincidunt', 'curabitur tincidunt', 0, 1, 1.6333, 'C6136352353', 16),
(1657, 'curabitur tincidunt rhoncus', 'curabitur tincidunt rhoncus', 0, 1, 1.9, 'C6136352353652', 16),
(1658, 'dui iaculis', 'dui iaculis', 0, 1, 1.3667, 'D242', 16),
(1659, 'dui iaculis et', 'dui iaculis et', 0, 1, 1.4667, 'D2423', 16),
(1660, 'enim', 'enim', 0, 0, 0.2667, 'E500', 27),
(1661, 'enim curabitur', 'enim curabitur', 0, 1, 1.4667, 'E526136', 16),
(1662, 'enim curabitur tincidunt', 'enim curabitur tincidunt', 0, 1, 1.8, 'E526136352353', 16),
(1663, 'enmum', 'enmum', 0, 0, 0.3333, 'E500', 4),
(1664, 'enmum ornare', 'enmum ornare', 0, 1, 1.4, 'E5656', 4),
(1665, 'enmum ornare enim', 'enmum ornare enim', 0, 1, 1.5667, 'E56565', 4),
(1666, 'erat', 'erat', 0, 0, 0.2667, 'E630', 16),
(1667, 'erat eu', 'erat eu', 0, 1, 1.2333, 'E630', 16),
(1668, 'erat eu ultrices', 'erat eu ultrices', 0, 1, 1.5333, 'E634362', 16),
(1669, 'erat nec', 'erat nec', 0, 1, 1.2667, 'E6352', 13),
(1670, 'erat nec vulputate', 'erat nec vulputate', 0, 1, 1.6, 'E63521413', 13),
(1671, 'est imperdiet', 'est imperdiet', 0, 1, 1.4333, 'E235163', 16),
(1672, 'est imperdiet facilisis', 'est imperdiet facilisis', 0, 1, 1.7667, 'E2351631242', 16),
(1673, 'et cras', 'et cras', 0, 1, 1.2333, 'E3262', 16),
(1674, 'et cras volutpat', 'et cras volutpat', 0, 1, 1.5333, 'E326214313', 16),
(1675, 'eu', 'eu', 0, 0, 0.1333, 'E000', 16),
(1676, 'eu ultrices', 'eu ultrices', 0, 1, 1.3667, 'E4362', 16),
(1677, 'eu ultrices dui', 'eu ultrices dui', 0, 1, 1.5, 'E43623', 16),
(1678, 'euismod', 'euismod', 0, 0, 0.4667, 'E253', 27),
(1679, 'euismod vivamus', 'euismod vivamus', 0, 1, 1.5, 'E253152', 16),
(1680, 'euismod vivamus at', 'euismod vivamus at', 0, 1, 1.6, 'E2531523', 16),
(1681, 'facilisis mauris', 'facilisis mauris', 0, 1, 1.5333, 'F242562', 16),
(1682, 'facilisis mauris vestibulum', 'facilisis mauris vestibulum', 0, 1, 1.9, 'F242562123145', 16),
(1683, 'iaculis et', 'iaculis et', 0, 1, 1.3333, 'I2423', 16),
(1684, 'iaculis et cras', 'iaculis et cras', 0, 1, 1.5, 'I2423262', 16),
(1685, 'imperdiet facilisis', 'imperdiet facilisis', 0, 1, 1.6333, 'I51631242', 16),
(1686, 'imperdiet facilisis mauris', 'imperdiet facilisis mauris', 0, 1, 1.8667, 'I51631242562', 16),
(1687, 'in vulputate', 'in vulputate', 0, 1, 1.4, 'I51413', 16),
(1688, 'in vulputate mauris', 'in vulputate mauris', 0, 1, 1.6333, 'I51413562', 16),
(1689, 'mauris', 'mauris', 0, 0, 0.4, 'M620', 21),
(1690, 'mauris euismod', 'mauris euismod', 0, 1, 1.4667, 'M6253', 16),
(1691, 'mauris euismod vivamus', 'mauris euismod vivamus', 0, 1, 1.7333, 'M6253152', 16),
(1692, 'mauris vestibulum', 'mauris vestibulum', 0, 1, 1.5667, 'M62123145', 16),
(1693, 'mauris vestibulum nisl', 'mauris vestibulum nisl', 0, 1, 1.7333, 'M6212314524', 16),
(1694, 'nec vulputate', 'nec vulputate', 0, 1, 1.4333, 'N21413', 13),
(1695, 'nisl', 'nisl', 0, 0, 0.2667, 'N240', 27),
(1696, 'nisl non', 'nisl non', 0, 1, 1.2667, 'N245', 16),
(1697, 'nisl non velit', 'nisl non velit', 0, 1, 1.4667, 'N245143', 16),
(1698, 'non velit', 'non velit', 0, 1, 1.3, 'N143', 16),
(1699, 'non velit ullamcorper', 'non velit ullamcorper', 0, 1, 1.7, 'N143452616', 16),
(1700, 'odio ac', 'odio ac', 0, 1, 1.2333, 'O320', 16),
(1701, 'odio ac est', 'odio ac est', 0, 1, 1.3667, 'O323', 16),
(1702, 'ornare', 'ornare', 0, 0, 0.4, 'O656', 16),
(1703, 'ornare enim', 'ornare enim', 0, 1, 1.3667, 'O6565', 16),
(1704, 'ornare enim curabitur', 'ornare enim curabitur', 0, 1, 1.7, 'O656526136', 16),
(1705, 'rhoncus', 'rhoncus', 0, 0, 0.4667, 'R520', 16),
(1706, 'rhoncus erat', 'rhoncus erat', 0, 1, 1.4, 'R5263', 16),
(1707, 'rhoncus erat nec', 'rhoncus erat nec', 0, 1, 1.5333, 'R526352', 13),
(1708, 'scelerisque', 'scelerisque', 0, 0, 0.7333, 'S462', 16),
(1709, 'scelerisque erat', 'scelerisque erat', 0, 1, 1.5333, 'S46263', 16),
(1710, 'scelerisque erat eu', 'scelerisque erat eu', 0, 1, 1.6333, 'S46263', 16),
(1711, 'tincidunt rhoncus', 'tincidunt rhoncus', 0, 1, 1.5667, 'T52353652', 16),
(1712, 'tincidunt rhoncus erat', 'tincidunt rhoncus erat', 0, 1, 1.7333, 'T5235365263', 16),
(1713, 'ullamcorper in', 'ullamcorper in', 0, 1, 1.4667, 'U4526165', 16),
(1714, 'ullamcorper in vulputate', 'ullamcorper in vulputate', 0, 1, 1.8, 'U45261651413', 16),
(1715, 'ultrices dui', 'ultrices dui', 0, 1, 1.4, 'U43623', 16),
(1716, 'ultrices dui iaculis', 'ultrices dui iaculis', 0, 1, 1.6667, 'U43623242', 16),
(1717, 'velit ullamcorper', 'velit ullamcorper', 0, 1, 1.5667, 'V43452616', 16),
(1718, 'velit ullamcorper in', 'velit ullamcorper in', 0, 1, 1.6667, 'V434526165', 16),
(1719, 'vestibulum', 'vestibulum', 0, 0, 0.6667, 'V23145', 16),
(1720, 'vestibulum accumsan', 'vestibulum accumsan', 0, 1, 1.6333, 'V231452525', 16),
(1721, 'vestibulum accumsan scelerisque', 'vestibulum accumsan scelerisque', 0, 1, 2, 'V2314525252462', 16),
(1722, 'vestibulum nisl', 'vestibulum nisl', 0, 1, 1.5, 'V2314524', 16),
(1723, 'vestibulum nisl non', 'vestibulum nisl non', 0, 1, 1.6333, 'V23145245', 16),
(1724, 'vivamus', 'vivamus', 0, 0, 0.4667, 'V520', 16),
(1725, 'vivamus at', 'vivamus at', 0, 1, 1.3333, 'V523', 16),
(1726, 'vivamus at enmum', 'vivamus at enmum', 0, 1, 1.5333, 'V5235', 4),
(1727, 'vivamus at ornare', 'vivamus at ornare', 0, 1, 1.5667, 'V523656', 16),
(1728, 'volutpat', 'volutpat', 0, 0, 0.5333, 'V4313', 16),
(1729, 'volutpat odio', 'volutpat odio', 0, 1, 1.4333, 'V4313', 16),
(1730, 'volutpat odio ac', 'volutpat odio ac', 0, 1, 1.5333, 'V43132', 16),
(1731, 'vulputate', 'vulputate', 0, 0, 0.6, 'V413', 16),
(1732, 'vulputate mauris', 'vulputate mauris', 0, 1, 1.5333, 'V413562', 16),
(1733, 'vulputate mauris euismod', 'vulputate mauris euismod', 0, 1, 1.8, 'V41356253', 16),
(1770, 'a velit', 'a velit', 0, 1, 1.2333, 'A143', 12),
(1771, 'a velit nullam', 'a velit nullam', 0, 1, 1.4667, 'A143545', 12),
(1772, 'ac iaculis', 'ac iaculis', 0, 1, 1.3333, 'A242', 12),
(1773, 'ac iaculis eu', 'ac iaculis eu', 0, 1, 1.4333, 'A242', 12),
(1774, 'ac pulvinar', 'ac pulvinar', 0, 1, 1.3667, 'A214156', 12),
(1775, 'ac pulvinar posuere', 'ac pulvinar posuere', 0, 1, 1.6333, 'A214156126', 12),
(1776, 'adipiscing a', 'adipiscing a', 0, 1, 1.4, 'A31252', 12),
(1777, 'adipiscing a velit', 'adipiscing a velit', 0, 1, 1.6, 'A31252143', 12),
(1778, 'auctor', 'auctor', 0, 0, 0.4, 'A236', 12),
(1779, 'auctor mauris', 'auctor mauris', 0, 1, 1.4333, 'A236562', 12),
(1780, 'auctor mauris vel', 'auctor mauris vel', 0, 1, 1.5667, 'A23656214', 12),
(1781, 'consequat', 'consequat', 0, 0, 0.6, 'C523', 12),
(1782, 'consequat ac', 'consequat ac', 0, 1, 1.4, 'C5232', 12),
(1783, 'consequat ac iaculis', 'consequat ac iaculis', 0, 1, 1.6667, 'C523242', 12),
(1784, 'cursus turpis', 'cursus turpis', 0, 1, 1.4333, 'C623612', 12),
(1785, 'cursus turpis ac', 'cursus turpis ac', 0, 1, 1.5333, 'C623612', 12),
(1786, 'egestas auctor', 'egestas auctor', 0, 1, 1.4667, 'E23236', 12),
(1787, 'egestas auctor mauris', 'egestas auctor mauris', 0, 1, 1.7, 'E23236562', 12),
(1788, 'eget facilisis', 'eget facilisis', 0, 1, 1.4667, 'E231242', 7),
(1789, 'enim consequat', 'enim consequat', 0, 1, 1.4667, 'E52523', 12),
(1790, 'enim consequat ac', 'enim consequat ac', 0, 1, 1.5667, 'E525232', 12),
(1791, 'eu adipiscing', 'eu adipiscing', 0, 1, 1.4333, 'E31252', 12),
(1792, 'eu adipiscing a', 'eu adipiscing a', 0, 1, 1.5, 'E31252', 12),
(1793, 'fermentum', 'fermentum', 0, 0, 0.6, 'F6535', 7),
(1794, 'fermentum ota', 'fermentum ota', 0, 1, 1.4333, 'F65353', 7),
(1795, 'fermentum ota eget', 'fermentum ota eget', 0, 1, 1.6, 'F6535323', 7),
(1796, 'iaculis eu', 'iaculis eu', 0, 1, 1.3333, 'I242', 12),
(1797, 'iaculis eu adipiscing', 'iaculis eu adipiscing', 0, 1, 1.7, 'I24231252', 12),
(1798, 'iaculis sem', 'iaculis sem', 0, 1, 1.3667, 'I2425', 12),
(1799, 'iaculis sem non', 'iaculis sem non', 0, 1, 1.5, 'I2425', 12),
(1800, 'integer venenatis', 'integer venenatis', 0, 1, 1.5667, 'I53261532', 23),
(1801, 'integer venenatis massa', 'integer venenatis massa', 0, 1, 1.7667, 'I5326153252', 23),
(1802, 'justo', 'justo', 0, 0, 0.3333, 'J300', 12),
(1803, 'justo lorem', 'justo lorem', 0, 1, 1.3667, 'J3465', 12),
(1804, 'justo lorem nec', 'justo lorem nec', 0, 1, 1.5, 'J34652', 12),
(1805, 'lorem nec', 'lorem nec', 0, 1, 1.3, 'L652', 12),
(1806, 'lorem nec nibh', 'lorem nec nibh', 0, 1, 1.4667, 'L65251', 12),
(1807, 'massa mi', 'massa mi', 0, 1, 1.2667, 'M250', 12),
(1808, 'massa mi pellentesque', 'massa mi pellentesque', 0, 1, 1.7, 'M2514532', 12),
(1809, 'mattis', 'mattis', 0, 0, 0.4, 'M320', 12),
(1810, 'mattis integer', 'mattis integer', 0, 1, 1.4667, 'M325326', 12),
(1811, 'mattis integer venenatis', 'mattis integer venenatis', 0, 1, 1.8, 'M3253261532', 12),
(1812, 'mauris egestas', 'mauris egestas', 0, 1, 1.4667, 'M6232', 12),
(1813, 'mauris egestas auctor', 'mauris egestas auctor', 0, 1, 1.7, 'M623236', 12),
(1814, 'mauris vel', 'mauris vel', 0, 1, 1.3333, 'M6214', 12),
(1815, 'mauris vel mattis', 'mauris vel mattis', 0, 1, 1.5667, 'M6214532', 12),
(1816, 'metus', 'metus', 0, 0, 0.3333, 'M320', 12),
(1817, 'metus enim', 'metus enim', 0, 1, 1.3333, 'M325', 12),
(1818, 'metus enim consequat', 'metus enim consequat', 0, 1, 1.6667, 'M3252523', 12),
(1819, 'mi', 'mi', 0, 0, 0.1333, 'M000', 12),
(1820, 'mi pellentesque', 'mi pellentesque', 0, 1, 1.5, 'M14532', 12),
(1821, 'mi pellentesque cursus', 'mi pellentesque cursus', 0, 1, 1.7333, 'M1453262', 12),
(1822, 'nec nibh', 'nec nibh', 0, 1, 1.2667, 'N251', 12),
(1823, 'nec nibh nullam', 'nec nibh nullam', 0, 1, 1.5, 'N251545', 12),
(1824, 'nibh nullam metus', 'nibh nullam metus', 0, 1, 1.5667, 'N154532', 12),
(1825, 'non ullamcorper', 'non ullamcorper', 0, 1, 1.5, 'N452616', 7),
(1826, 'non ullamcorper justo', 'non ullamcorper justo', 0, 1, 1.7, 'N45261623', 7),
(1827, 'nullam metus', 'nullam metus', 0, 1, 1.4, 'N4532', 12),
(1828, 'nullam metus enim', 'nullam metus enim', 0, 1, 1.5667, 'N45325', 12),
(1829, 'orci fermentum', 'orci fermentum', 0, 1, 1.4667, 'O6216535', 7),
(1830, 'orci fermentum ota', 'orci fermentum ota', 0, 1, 1.6, 'O62165353', 7),
(1831, 'ota', 'ota', 0, 0, 0.2, 'O300', 7),
(1832, 'ota eget', 'ota eget', 0, 1, 1.2667, 'O323', 7),
(1833, 'ota eget facilisis', 'ota eget facilisis', 0, 1, 1.6, 'O3231242', 7),
(1834, 'pellentesque cursus', 'pellentesque cursus', 0, 1, 1.6333, 'P453262', 12),
(1835, 'pellentesque cursus turpis', 'pellentesque cursus turpis', 0, 1, 1.8667, 'P4532623612', 12),
(1836, 'posuere', 'posuere', 0, 0, 0.4667, 'P260', 12),
(1837, 'posuere tortor', 'posuere tortor', 0, 1, 1.4667, 'P263636', 12),
(1838, 'posuere tortor velit', 'posuere tortor velit', 0, 1, 1.6667, 'P263636143', 12),
(1839, 'pulvinar', 'pulvinar', 0, 0, 0.5333, 'P4156', 12),
(1840, 'pulvinar posuere', 'pulvinar posuere', 0, 1, 1.5333, 'P4156126', 12),
(1841, 'pulvinar posuere tortor', 'pulvinar posuere tortor', 0, 1, 1.7667, 'P41561263636', 12),
(1842, 'quis orci', 'quis orci', 0, 1, 1.3, 'Q620', 7),
(1843, 'quis orci fermentum', 'quis orci fermentum', 0, 1, 1.6333, 'Q6216535', 7),
(1844, 'sem', 'sem', 0, 0, 0.2, 'S500', 23),
(1845, 'sem non', 'sem non', 0, 1, 1.2333, 'S500', 12),
(1846, 'sem non ullamcorper', 'sem non ullamcorper', 0, 1, 1.6333, 'S5452616', 7),
(1847, 'tortor velit', 'tortor velit', 0, 1, 1.4, 'T636143', 12),
(1848, 'tortor velit iaculis', 'tortor velit iaculis', 0, 1, 1.6667, 'T636143242', 12),
(1849, 'turpis', 'turpis', 0, 0, 0.4, 'T612', 12),
(1850, 'turpis ac', 'turpis ac', 0, 1, 1.3, 'T612', 12),
(1851, 'turpis ac pulvinar', 'turpis ac pulvinar', 0, 1, 1.6, 'T61214156', 12),
(1852, 'ullamcorper justo', 'ullamcorper justo', 0, 1, 1.5667, 'U45261623', 7),
(1853, 'ullamcorper justo lorem', 'ullamcorper justo lorem', 0, 1, 1.7667, 'U45261623465', 7),
(1854, 'vel mattis', 'vel mattis', 0, 1, 1.3333, 'V4532', 12),
(1855, 'vel mattis integer', 'vel mattis integer', 0, 1, 1.6, 'V45325326', 12),
(1856, 'velit iaculis', 'velit iaculis', 0, 1, 1.4333, 'V43242', 12),
(1857, 'velit iaculis sem', 'velit iaculis sem', 0, 1, 1.5667, 'V432425', 12),
(1858, 'velit nullam', 'velit nullam', 0, 1, 1.4, 'V43545', 12),
(1859, 'velit nullam eget', 'velit nullam eget', 0, 1, 1.5667, 'V4354523', 12),
(1860, 'venenatis', 'venenatis', 0, 0, 0.6, 'V532', 23),
(1861, 'venenatis massa', 'venenatis massa', 0, 1, 1.5, 'V53252', 23),
(1862, 'venenatis massa mi', 'venenatis massa mi', 0, 1, 1.6, 'V532525', 12),
(1897, 'non ullar', 'non ullar', 0, 1, 1.3, 'N460', 5),
(1898, 'non ullar justo', 'non ullar justo', 0, 1, 1.5, 'N4623', 5),
(1899, 'sem non ullar', 'sem non ullar', 0, 1, 1.4333, 'S546', 5),
(1900, 'ullar', 'ullar', 0, 0, 0.3333, 'U460', 5),
(1901, 'ullar justo', 'ullar justo', 0, 1, 1.3667, 'U4623', 5),
(1902, 'ullar justo lorem', 'ullar justo lorem', 0, 1, 1.5667, 'U4623465', 5),
(1904, 'drama', 'drama', 0, 0, 0.3333, 'D650', 3),
(1905, 'a augue', 'a augue', 0, 1, 1.2333, 'A200', 11),
(1906, 'a augue morbi', 'a augue morbi', 0, 1, 1.4333, 'A2561', 11),
(1907, 'ac lorem', 'ac lorem', 0, 1, 1.2667, 'A2465', 11),
(1908, 'ac lorem integer', 'ac lorem integer', 0, 1, 1.5333, 'A2465326', 11),
(1909, 'accumsan ac', 'accumsan ac', 0, 1, 1.3667, 'A25252', 11),
(1910, 'accumsan ac lorem', 'accumsan ac lorem', 0, 1, 1.5667, 'A25252465', 11);
INSERT INTO `#__finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(1911, 'adipiscing dictum', 'adipiscing dictum', 0, 1, 1.5667, 'A312523235', 11),
(1912, 'adipiscing dictum vel', 'adipiscing dictum vel', 0, 1, 1.7, 'A31252323514', 11),
(1913, 'at luctus', 'at luctus', 0, 1, 1.3, 'A34232', 11),
(1914, 'at luctus ullamcorper', 'at luctus ullamcorper', 0, 1, 1.7, 'A34232452616', 11),
(1915, 'augue', 'augue', 0, 0, 0.3333, 'A200', 11),
(1916, 'augue morbi', 'augue morbi', 0, 1, 1.3667, 'A2561', 11),
(1917, 'augue morbi nunc', 'augue morbi nunc', 0, 1, 1.5333, 'A256152', 11),
(1918, 'bibendum', 'bibendum', 0, 0, 0.5333, 'B535', 11),
(1919, 'bibendum vitae', 'bibendum vitae', 0, 1, 1.4667, 'B53513', 11),
(1920, 'bibendum vitae accumsan', 'bibendum vitae accumsan', 0, 1, 1.7667, 'B535132525', 11),
(1921, 'consectetur nulla', 'consectetur nulla', 0, 1, 1.5667, 'C523654', 11),
(1922, 'consectetur nulla nec', 'consectetur nulla nec', 0, 1, 1.7, 'C52365452', 11),
(1923, 'cursus a', 'cursus a', 0, 1, 1.2667, 'C620', 11),
(1924, 'cursus a augue', 'cursus a augue', 0, 1, 1.4667, 'C620', 11),
(1925, 'dictum vel', 'dictum vel', 0, 1, 1.3333, 'D23514', 11),
(1926, 'dictum vel cursus', 'dictum vel cursus', 0, 1, 1.5667, 'D23514262', 11),
(1927, 'donec', 'donec', 0, 0, 0.3333, 'D520', 11),
(1928, 'donec nisl', 'donec nisl', 0, 1, 1.3333, 'D52524', 11),
(1929, 'donec nisl nisi', 'donec nisl nisi', 0, 1, 1.5, 'D5252452', 11),
(1930, 'elit at', 'elit at', 0, 1, 1.2333, 'E430', 11),
(1931, 'elit at luctus', 'elit at luctus', 0, 1, 1.4667, 'E434232', 11),
(1932, 'enim ut', 'enim ut', 0, 1, 1.2333, 'E530', 11),
(1933, 'enim ut sem', 'enim ut sem', 0, 1, 1.3667, 'E5325', 11),
(1934, 'eros', 'eros', 0, 0, 0.2667, 'E620', 11),
(1935, 'eros sapien', 'eros sapien', 0, 1, 1.3667, 'E6215', 11),
(1936, 'eros sapien consectetur', 'eros sapien consectetur', 0, 1, 1.7667, 'E621525236', 11),
(1937, 'euismod nunc', 'euismod nunc', 0, 1, 1.4, 'E25352', 11),
(1938, 'euismod nunc enim', 'euismod nunc enim', 0, 1, 1.5667, 'E253525', 11),
(1939, 'lorem integer', 'lorem integer', 0, 1, 1.4333, 'L65326', 11),
(1940, 'lorem integer venenatis', 'lorem integer venenatis', 0, 1, 1.7667, 'L653261532', 11),
(1941, 'lorem mauris', 'lorem mauris', 0, 1, 1.4, 'L6562', 5),
(1942, 'luctus ullamcorper', 'luctus ullamcorper', 0, 1, 1.6, 'L232452616', 11),
(1943, 'luctus ullamcorper eros', 'luctus ullamcorper eros', 0, 1, 1.7667, 'L2324526162', 11),
(1944, 'massa lorem', 'massa lorem', 0, 1, 1.3667, 'M2465', 5),
(1945, 'massa lorem mauris', 'massa lorem mauris', 0, 1, 1.6, 'M246562', 5),
(1946, 'morbi nunc', 'morbi nunc', 0, 1, 1.3333, 'M6152', 11),
(1947, 'morbi nunc purus', 'morbi nunc purus', 0, 1, 1.5333, 'M6152162', 11),
(1948, 'nec euismod', 'nec euismod', 0, 1, 1.3667, 'N253', 11),
(1949, 'nec euismod nunc', 'nec euismod nunc', 0, 1, 1.5333, 'N25352', 11),
(1950, 'nisi', 'nisi', 0, 0, 0.2667, 'N200', 11),
(1951, 'nisi tincidunt', 'nisi tincidunt', 0, 1, 1.4667, 'N2352353', 11),
(1952, 'nisi tincidunt adipiscing', 'nisi tincidunt adipiscing', 0, 1, 1.8333, 'N23523531252', 11),
(1953, 'nisl nisi', 'nisl nisi', 0, 1, 1.3, 'N2452', 11),
(1954, 'nisl nisi tincidunt', 'nisl nisi tincidunt', 0, 1, 1.6333, 'N2452352353', 11),
(1955, 'nulla nec', 'nulla nec', 0, 1, 1.3, 'N452', 11),
(1956, 'nulla nec euismod', 'nulla nec euismod', 0, 1, 1.5667, 'N45253', 11),
(1957, 'nunc enim', 'nunc enim', 0, 1, 1.3, 'N250', 11),
(1958, 'nunc enim ut', 'nunc enim ut', 0, 1, 1.4, 'N253', 11),
(1959, 'nunc pellentesque', 'nunc pellentesque', 0, 1, 1.5667, 'N214532', 11),
(1960, 'nunc pellentesque elit', 'nunc pellentesque elit', 0, 1, 1.7333, 'N21453243', 11),
(1961, 'nunc purus', 'nunc purus', 0, 1, 1.3333, 'N2162', 11),
(1962, 'nunc purus pellentesque', 'nunc purus pellentesque', 0, 1, 1.7667, 'N216214532', 11),
(1963, 'pellentesque elit', 'pellentesque elit', 0, 1, 1.5667, 'P453243', 11),
(1964, 'pellentesque elit at', 'pellentesque elit at', 0, 1, 1.6667, 'P453243', 11),
(1965, 'pellentesque quis', 'pellentesque quis', 0, 1, 1.5667, 'P4532', 11),
(1966, 'pellentesque quis bibendum', 'pellentesque quis bibendum', 0, 1, 1.8667, 'P45321535', 11),
(1967, 'purus pellentesque', 'purus pellentesque', 0, 1, 1.6, 'P6214532', 11),
(1968, 'purus pellentesque quis', 'purus pellentesque quis', 0, 1, 1.7667, 'P6214532', 11),
(1969, 'quis bibendum', 'quis bibendum', 0, 1, 1.4333, 'Q1535', 11),
(1970, 'quis bibendum vitae', 'quis bibendum vitae', 0, 1, 1.6333, 'Q153513', 11),
(1971, 'sapien', 'sapien', 0, 0, 0.4, 'S150', 11),
(1972, 'sapien consectetur', 'sapien consectetur', 0, 1, 1.6, 'S1525236', 11),
(1973, 'sapien consectetur nulla', 'sapien consectetur nulla', 0, 1, 1.8, 'S152523654', 11),
(1974, 'sem donec', 'sem donec', 0, 1, 1.3, 'S5352', 11),
(1975, 'sem donec nisl', 'sem donec nisl', 0, 1, 1.4667, 'S5352524', 11),
(1976, 'tincidunt adipiscing', 'tincidunt adipiscing', 0, 1, 1.6667, 'T523531252', 11),
(1977, 'tincidunt adipiscing dictum', 'tincidunt adipiscing dictum', 0, 1, 1.9, 'T5235312523235', 11),
(1978, 'ullamcorper eros', 'ullamcorper eros', 0, 1, 1.5333, 'U4526162', 11),
(1979, 'ullamcorper eros sapien', 'ullamcorper eros sapien', 0, 1, 1.7667, 'U452616215', 11),
(1980, 'ut sem', 'ut sem', 0, 1, 1.2, 'U325', 11),
(1981, 'ut sem donec', 'ut sem donec', 0, 1, 1.4, 'U325352', 11),
(1982, 'vel cursus', 'vel cursus', 0, 1, 1.3333, 'V4262', 11),
(1983, 'vel cursus a', 'vel cursus a', 0, 1, 1.4, 'V4262', 11),
(1984, 'venenatis massa lorem', 'venenatis massa lorem', 0, 1, 1.7, 'V53252465', 5),
(1985, 'vitae accumsan', 'vitae accumsan', 0, 1, 1.4667, 'V32525', 11),
(1986, 'vitae accumsan ac', 'vitae accumsan ac', 0, 1, 1.5667, 'V325252', 11),
(2032, 'itudin', 'itudin', 0, 0, 0.4, 'I350', 5),
(2033, 'itudin pretium', 'itudin pretium', 0, 1, 1.4667, 'I351635', 5),
(2034, 'itudin pretium molestie', 'itudin pretium molestie', 0, 1, 1.7667, 'I351635423', 5),
(2035, 'molestie', 'molestie', 0, 0, 0.5333, 'M423', 5),
(2036, 'morbi sollic', 'morbi sollic', 0, 1, 1.4, 'M61242', 5),
(2037, 'morbi sollic itudin', 'morbi sollic itudin', 0, 1, 1.6333, 'M6124235', 5),
(2038, 'pretium', 'pretium', 0, 0, 0.4667, 'P635', 5),
(2039, 'pretium molestie', 'pretium molestie', 0, 1, 1.5333, 'P635423', 5),
(2040, 'sollic', 'sollic', 0, 0, 0.4, 'S420', 5),
(2041, 'sollic itudin', 'sollic itudin', 0, 1, 1.4333, 'S4235', 5),
(2042, 'sollic itudin pretium', 'sollic itudin pretium', 0, 1, 1.7, 'S42351635', 5),
(2047, 'est morbi', 'est morbi', 0, 1, 1.3, 'E23561', 6),
(2048, 'nulla ot', 'nulla ot', 0, 1, 1.2667, 'N430', 6),
(2049, 'nulla ot viverra', 'nulla ot viverra', 0, 1, 1.5333, 'N4316', 6),
(2050, 'ot viverra', 'ot viverra', 0, 1, 1.3333, 'O316', 6),
(2051, 'ot viverra est', 'ot viverra est', 0, 1, 1.4667, 'O31623', 6),
(2052, 'proin quis', 'proin quis', 0, 1, 1.3333, 'P652', 6),
(2053, 'proin quis nulla', 'proin quis nulla', 0, 1, 1.5333, 'P65254', 6),
(2054, 'quis nulla', 'quis nulla', 0, 1, 1.3333, 'Q540', 6),
(2055, 'quis nulla ot', 'quis nulla ot', 0, 1, 1.4333, 'Q543', 6),
(2056, 'viverra est morbi', 'viverra est morbi', 0, 1, 1.5667, 'V623561', 6);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms_common`
--

DROP TABLE IF EXISTS `#__finder_terms_common`;
CREATE TABLE IF NOT EXISTS `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
);

--
-- Dumping data for table `#__finder_terms_common`
--

INSERT INTO `#__finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens`
--

DROP TABLE IF EXISTS `#__finder_tokens`;
CREATE TABLE IF NOT EXISTS `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `#__finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_types`
--

DROP TABLE IF EXISTS `#__finder_types`;
CREATE TABLE IF NOT EXISTS `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
);

--
-- Dumping data for table `#__finder_types`
--

INSERT INTO `#__finder_types` (`id`, `title`, `mime`) VALUES
(1, 'K2 Item', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', ''),
(6, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

DROP TABLE IF EXISTS `#__languages`;
CREATE TABLE IF NOT EXISTS `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
);

--
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

DROP TABLE IF EXISTS `#__menu`;
CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
);

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 215, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 43, 44, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 10, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"1","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Voxel - May 2012 Template Demo","show_page_heading":0,"page_heading":"","pageclass_sfx":" may12-home","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 29, 30, 1, '*', 0),
(103, 'main', 'RokCandy', 'rokcandy', '', 'rokcandy', 'index.php?option=com_rokcandy', 'component', 0, 1, 1, 10010, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/rokcandy-icon-16.png', 0, '', 45, 50, 0, '', 1),
(104, 'main', 'Macros', 'macros', '', 'rokcandy/macros', 'index.php?option=com_rokcandy', 'component', 0, 103, 2, 10010, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/rokcandy-icon-16.png', 0, '', 46, 47, 0, '', 1),
(105, 'main', 'Categories', 'categories', '', 'rokcandy/categories', 'index.php?option=com_categories&extension=com_rokcandy', 'component', 0, 103, 2, 10010, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/icon-16-category.png', 0, '', 48, 49, 0, '', 1),
(106, 'main', 'RokGallery', 'rokgallery', '', 'rokgallery', 'index.php?option=com_rokgallery', 'component', 0, 1, 1, 10021, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokgallery/assets/images/rokgallery_16x16.png', 0, '', 51, 52, 0, '', 1),
(108, 'mainmenu', 'Features', 'features', '', 'features', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 53, 170, 0, '*', 0),
(109, 'mainmenu', 'Module Positions', 'module-positions', '', 'features/module-positions', 'index.php?option=com_content&view=article&id=2', 'component', 1, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 8, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 54, 55, 0, '*', 0),
(110, 'mainmenu', 'Module Variations', 'module-variations', '', 'features/module-variations', 'index.php?option=com_content&view=article&id=3', 'component', 1, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 56, 57, 0, '*', 0),
(111, 'mainmenu', 'Typography', 'typography', '', 'features/typography', 'index.php?option=com_content&view=article&id=4', 'component', 1, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 58, 59, 0, '*', 0),
(112, 'mainmenu', 'Menu Options', 'menu-options', '', 'features/menu-options', 'index.php?option=com_content&view=article&id=5', 'component', 1, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"2","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"360","fusion_column_widths":"180,180","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 60, 165, 0, '*', 0),
(113, 'mainmenu', 'Extensions', 'extensions', '', 'features/extensions', 'index.php?option=com_content&view=article&id=6', 'component', 1, 108, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 166, 167, 0, '*', 0),
(114, 'mainmenu', 'Tutorials', 'tutorials', '', 'tutorials', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 9, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 171, 180, 0, '*', 0),
(115, 'mainmenu', 'Installation', 'installation', '', 'tutorials/installation', 'index.php?option=com_content&view=article&id=8', 'component', 1, 114, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 172, 173, 0, '*', 0),
(116, 'mainmenu', 'Logo Editing', 'logo-editing', '', 'tutorials/logo-editing', 'index.php?option=com_content&view=article&id=9', 'component', 1, 114, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 174, 175, 0, '*', 0),
(117, 'mainmenu', 'Styles', 'styles', '', 'styles', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 181, 182, 0, '*', 0),
(118, 'mainmenu', 'J! Stuff', 'j-stuff', '', 'j-stuff', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 183, 192, 0, '*', 0),
(119, 'mainmenu', '404 Error Page', '2012-04-13-16-59-36', '', 'features/2012-04-13-16-59-36', 'index.php?option=404&Itemid=1', 'url', 1, 108, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 168, 169, 0, '*', 0),
(120, 'mainmenu', 'More Details', '2012-04-13-17-00-56', '', '2012-04-13-17-00-56', 'http://www.rockettheme.com/joomla-templates/voxel', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 213, 214, 0, '*', 0),
(121, 'mainmenu', 'Forum Guides', '2012-04-13-17-01-58', '', 'tutorials/2012-04-13-17-01-58', 'http://www.rockettheme.com/forum/index.php?f=619&rb_v=viewforum', 'url', 1, 114, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 176, 177, 0, '*', 0),
(122, 'mainmenu', 'Gantry Framework', '2012-04-13-17-02-53', '', 'tutorials/2012-04-13-17-02-53', 'http://www.gantry-framework.org', 'url', 1, 114, 2, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 178, 179, 0, '*', 0),
(123, 'mainmenu', 'Member Access', 'member-access', '', 'j-stuff/member-access', 'index.php?option=com_users&view=login', 'component', 1, 118, 2, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"The RocketTheme Joomla Template Club features exclusive access to professional Joomla templates to help transform your Joomla based site and set you apart from the competition.","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Member Access","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"121","fusion_module_positions":"","splitmenu_item_subtext":""}', 184, 185, 0, '*', 0),
(124, 'mainmenu', 'Category Blog', 'category-blog', '', 'j-stuff/category-blog', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', 1, 118, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 186, 187, 0, '*', 0),
(125, 'mainmenu', 'Web Links', 'web-links', '', 'j-stuff/web-links', 'index.php?option=com_weblinks&view=category&id=13', 'component', 1, 118, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"","show_empty_categories":"","show_subcat_desc":"","show_cat_num_links":"","show_pagination_limit":"","show_headings":"1","show_link_description":"","show_link_hits":"","show_pagination":"","show_pagination_results":"","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"121","fusion_module_positions":"","splitmenu_item_subtext":""}', 188, 189, 0, '*', 0),
(126, 'mainmenu', 'Contact Us', 'contact-us', '', 'j-stuff/contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 118, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 190, 191, 0, '*', 0),
(127, 'mainmenu', 'Menu Examples', '2012-04-16-04-57-32', '', 'features/menu-options/2012-04-16-04-57-32', 'index.php?Itemid=', 'alias', 1, 112, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"1","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 61, 156, 0, '*', 0),
(128, 'mainmenu', 'Menu Types', '2012-04-16-04-57-56', '', 'features/menu-options/2012-04-16-04-57-56', 'index.php?Itemid=', 'alias', 1, 112, 3, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"1","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 157, 164, 0, '*', 0),
(129, 'mainmenu', 'Child Items', '2012-04-16-04-59-34', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34', 'index.php?Itemid=', 'alias', 1, 127, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"230","fusion_column_widths":"230","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 62, 151, 0, '*', 0),
(130, 'mainmenu', 'Menu Icons', '2012-04-16-05-00-08', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-05-00-08', 'index.php?Itemid=', 'alias', 1, 127, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"icon-like.png","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 152, 153, 0, '*', 0),
(131, 'mainmenu', 'Module Menu', '2012-04-16-05-01-09', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-05-01-09', 'index.php?Itemid=', 'alias', 1, 127, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"200","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"modulepos","fusion_modules":"17","fusion_module_positions":"menu-mod","splitmenu_item_subtext":""}', 154, 155, 0, '*', 0),
(132, 'mainmenu', 'Fusion Menu', '2012-04-16-05-01-58', '', 'features/menu-options/2012-04-16-04-57-56/2012-04-16-05-01-58', 'index.php?option=com_content&view=article&id=5&Itemid=112&menu-type=fusionmenu', 'url', 1, 128, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 158, 159, 0, '*', 0),
(133, 'mainmenu', 'Split Menu', '2012-04-16-05-02-22', '', 'features/menu-options/2012-04-16-04-57-56/2012-04-16-05-02-22', 'index.php?option=com_content&view=article&id=5&Itemid=112&menu-type=splitmenu', 'url', 1, 128, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 160, 161, 0, '*', 0),
(134, 'mainmenu', 'No Menu', '2012-04-16-05-03-17', '', 'features/menu-options/2012-04-16-04-57-56/2012-04-16-05-03-17', 'index.php?option=com_content&view=article&id=5&Itemid=112&menu-type=nomenu', 'url', 1, 128, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 162, 163, 0, '*', 0),
(135, 'mainmenu', 'Child Items', '2012-04-16-05-07-10', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-07-10', 'index.php?Itemid=', 'alias', 1, 129, 5, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"Single Column Example","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"130","fusion_column_widths":"130","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 63, 72, 0, '*', 0),
(136, 'mainmenu', 'Child Items', '2012-04-16-05-08-11', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11', 'index.php?Itemid=', 'alias', 1, 129, 5, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"Dual Column Example","fusion_customimage":"","fusion_customclass":"","fusion_columns":"2","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"260","fusion_column_widths":"130,130","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 73, 90, 0, '*', 0),
(137, 'mainmenu', 'Child Items', '2012-04-16-05-11-59', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59', 'index.php?Itemid=', 'alias', 1, 129, 5, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"129","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"Triple Column Example","fusion_customimage":"","fusion_customclass":"","fusion_columns":"3","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"360","fusion_column_widths":"120,120,120","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 91, 116, 0, '*', 0),
(138, 'mainmenu', 'Child Items', '2012-04-16-05-12-41', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41', 'index.php?Itemid=', 'alias', 1, 129, 5, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"Quad Column Example","fusion_customimage":"","fusion_customclass":"","fusion_columns":"4","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"480","fusion_column_widths":"120,120,120,120","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 117, 150, 0, '*', 0),
(139, 'mainmenu', 'Child Item', '2012-04-16-05-13-17', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-07-10/2012-04-16-05-13-17', 'index.php?Itemid=', 'alias', 1, 135, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 64, 65, 0, '*', 0),
(140, 'mainmenu', 'Child Item', '2012-04-16-05-13-18', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-07-10/2012-04-16-05-13-18', 'index.php?Itemid=', 'alias', 1, 135, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 66, 67, 0, '*', 0),
(141, 'mainmenu', 'Child Item', '2012-04-16-05-13-19', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-07-10/2012-04-16-05-13-19', 'index.php?Itemid=', 'alias', 1, 135, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 68, 69, 0, '*', 0),
(142, 'mainmenu', 'Child Item', '2012-04-16-05-13-20', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-07-10/2012-04-16-05-13-20', 'index.php?Itemid=', 'alias', 1, 135, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 70, 71, 0, '*', 0),
(143, 'mainmenu', 'Child Item', '2012-04-16-05-13-17', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-17', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 74, 75, 0, '*', 0),
(144, 'mainmenu', 'Child Item', '2012-04-16-05-13-18', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-18', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 76, 77, 0, '*', 0),
(145, 'mainmenu', 'Child Item', '2012-04-16-05-13-19', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-19', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 78, 79, 0, '*', 0),
(146, 'mainmenu', 'Child Item', '2012-04-16-05-13-20', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-20', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 80, 81, 0, '*', 0),
(147, 'mainmenu', 'Child Item', '2012-04-16-05-13-21', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-21', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 82, 83, 0, '*', 0),
(148, 'mainmenu', 'Child Item', '2012-04-16-05-13-22', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-22', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 84, 85, 0, '*', 0),
(149, 'mainmenu', 'Child Item', '2012-04-16-05-13-23', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-23', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 86, 87, 0, '*', 0),
(150, 'mainmenu', 'Child Item', '2012-04-16-05-13-24', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-08-11/2012-04-16-05-13-24', 'index.php?Itemid=', 'alias', 1, 136, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 88, 89, 0, '*', 0),
(151, 'mainmenu', 'Child Item', '2012-04-16-05-13-17', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-17', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 92, 93, 0, '*', 0),
(152, 'mainmenu', 'Child Item', '2012-04-16-05-13-18', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-18', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 94, 95, 0, '*', 0),
(153, 'mainmenu', 'Child Item', '2012-04-16-05-13-19', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-19', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 96, 97, 0, '*', 0),
(154, 'mainmenu', 'Child Item', '2012-04-16-05-13-20', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-20', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 98, 99, 0, '*', 0),
(155, 'mainmenu', 'Child Item', '2012-04-16-05-13-21', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-21', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 100, 101, 0, '*', 0),
(156, 'mainmenu', 'Child Item', '2012-04-16-05-13-22', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-22', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 102, 103, 0, '*', 0),
(157, 'mainmenu', 'Child Item', '2012-04-16-05-13-23', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-23', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 104, 105, 0, '*', 0);
INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(158, 'mainmenu', 'Child Item', '2012-04-16-05-13-24', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-24', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 106, 107, 0, '*', 0),
(159, 'mainmenu', 'Child Item', '2012-04-16-05-13-25', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-25', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 108, 109, 0, '*', 0),
(160, 'mainmenu', 'Child Item', '2012-04-16-05-13-26', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-26', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 110, 111, 0, '*', 0),
(161, 'mainmenu', 'Child Item', '2012-04-16-05-13-27', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-27', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 112, 113, 0, '*', 0),
(162, 'mainmenu', 'Child Item', '2012-04-16-05-13-28', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-11-59/2012-04-16-05-13-28', 'index.php?Itemid=', 'alias', 1, 137, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 114, 115, 0, '*', 0),
(163, 'mainmenu', 'Child Item', '2012-04-16-05-13-17', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-17', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 118, 119, 0, '*', 0),
(164, 'mainmenu', 'Child Item', '2012-04-16-05-13-18', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-18', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 120, 121, 0, '*', 0),
(165, 'mainmenu', 'Child Item', '2012-04-16-05-13-19', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-19', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 122, 123, 0, '*', 0),
(166, 'mainmenu', 'Child Item', '2012-04-16-05-13-20', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-20', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 124, 125, 0, '*', 0),
(167, 'mainmenu', 'Child Item', '2012-04-16-05-13-21', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-21', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 126, 127, 0, '*', 0),
(168, 'mainmenu', 'Child Item', '2012-04-16-05-13-22', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-22', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 128, 129, 0, '*', 0),
(169, 'mainmenu', 'Child Item', '2012-04-16-05-13-23', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-23', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 130, 131, 0, '*', 0),
(170, 'mainmenu', 'Child Item', '2012-04-16-05-13-24', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-24', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 132, 133, 0, '*', 0),
(171, 'mainmenu', 'Child Item', '2012-04-16-05-13-25', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-25', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 134, 135, 0, '*', 0),
(172, 'mainmenu', 'Child Item', '2012-04-16-05-13-26', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-26', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 136, 137, 0, '*', 0),
(173, 'mainmenu', 'Child Item', '2012-04-16-05-13-27', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-27', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 138, 139, 0, '*', 0),
(174, 'mainmenu', 'Child Item', '2012-04-16-05-13-28', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-28', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 140, 141, 0, '*', 0),
(175, 'mainmenu', 'Child Item', '2012-04-16-05-13-29', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-29', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 142, 143, 0, '*', 0),
(176, 'mainmenu', 'Child Item', '2012-04-16-05-13-30', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-30', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 144, 145, 0, '*', 0),
(177, 'mainmenu', 'Child Item', '2012-04-16-05-13-31', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-31', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 146, 147, 0, '*', 0),
(178, 'mainmenu', 'Child Item', '2012-04-16-05-13-32', '', 'features/menu-options/2012-04-16-04-57-32/2012-04-16-04-59-34/2012-04-16-05-12-41/2012-04-16-05-13-32', 'index.php?Itemid=', 'alias', 1, 138, 6, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"17","fusion_module_positions":"","splitmenu_item_subtext":""}', 148, 149, 0, '*', 0),
(179, 'utilitymenu', 'Template Features', '2012-04-16-16-47-38', '', '2012-04-16-16-47-38', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"108","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 193, 194, 0, '*', 0),
(180, 'utilitymenu', 'RokSprocket Mosaic', '2012-04-16-16-56-07', '', '2012-04-16-16-56-07', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"113","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 195, 196, 0, '*', 0),
(181, 'utilitymenu', 'Menu Options', '2012-04-16-16-56-28', '', '2012-04-16-16-56-28', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"112","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 197, 198, 0, '*', 0),
(183, 'utilitymenu', 'Preset Styles', '2012-04-16-16-57-58', '', '2012-04-16-16-57-58', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"117","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"123","fusion_module_positions":"","splitmenu_item_subtext":""}', 199, 200, 0, '*', 0),
(184, 'copyrightmenu', 'Home', '2012-04-16-19-24-21', '', '2012-04-16-19-24-21', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 201, 202, 0, '*', 0),
(185, 'copyrightmenu', 'Features', '2012-04-16-19-24-37', '', '2012-04-16-19-24-37', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"108","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 203, 204, 0, '*', 0),
(186, 'copyrightmenu', 'Tutorials', '2012-04-16-19-24-51', '', '2012-04-16-19-24-51', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"114","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 205, 206, 0, '*', 0),
(187, 'copyrightmenu', 'Styles', '2012-04-16-19-25-05', '', '2012-04-16-19-25-05', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"117","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 207, 208, 0, '*', 0),
(188, 'copyrightmenu', 'J! Stuff', '2012-04-16-19-25-19', '', '2012-04-16-19-25-19', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"118","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"148","fusion_module_positions":"","splitmenu_item_subtext":""}', 209, 210, 0, '*', 0),
(200, 'mainmenu', 'K2 Demo', 'k2-demo', '', 'k2-demo', 'index.php?option=com_k2&view=latest&layout=latest', 'component', -2, 1, 1, 10052, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","source":"1","latestItemsCols":"2","latestItemsLimit":"1","latestItemsDisplayEffect":"all","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeed":"1","categoryIDs":["1","2","3","4"],"categoryTitle":"1","categoryDescription":"1","categoryImage":"1","categoryFeed":"1","latestItemTitle":"1","latestItemTitleLinked":"1","latestItemDateCreated":"1","latestItemImage":"1","latestItemImageSize":"Medium","latestItemVideo":"1","latestItemVideoWidth":"","latestItemVideoHeight":"","latestItemAudioWidth":"","latestItemAudioHeight":"","latestItemVideoAutoPlay":"0","latestItemIntroText":"1","latestItemCategory":"1","latestItemTags":"1","latestItemReadMore":"1","latestItemCommentsAnchor":"0","feedLink":"1","latestItemK2Plugins":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_manual_distribution":"","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"163","fusion_module_positions":"","splitmenu_item_subtext":""}', 211, 212, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

DROP TABLE IF EXISTS `#__menu_types`;
CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
);

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'utilitymenu', 'Utility Menu', 'Utility Menu'),
(3, 'copyrightmenu', 'Copyright Menu', 'Copyright Menu');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

DROP TABLE IF EXISTS `#__messages`;
CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
);

--
-- Dumping data for table `#__messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

DROP TABLE IF EXISTS `#__messages_cfg`;
CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
);

--
-- Dumping data for table `#__messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

DROP TABLE IF EXISTS `#__modules`;
CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
);

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Module in Menu', '', '<p>This is an example of a module being displayed inside the menu <strong>dropdowns</strong>.</p>\r\n<p><a href="#" class="readon"><span>Read More</span></a></p>', 0, 'menu-mod', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 'Footer - Template Info', '', '<div class="rt-demo-grid-8 nomarginright">\r\n  <ul class="list-icon write">\r\n    <li><h3 class="nobold smallpaddingbottom">All the Features - in One Complete List</h3></li>\r\n  </ul>\r\n  \r\n  <div class="module-title">\r\n    <h3 class="title"><span>Voxel</span> Template</h3>\r\n  </div>\r\n  \r\n  <div class="rt-demo-grid-4 nomarginright nomarginleft">\r\n    <ul class="circle">\r\n      <li>12 Preset Styles</li>\r\n      <li>82 Module Positions</li>\r\n      <li>Powered by Gantry</li>\r\n      <li>Fusion with MegaMenu</li>\r\n      <li>SplitMenu</li>\r\n      <li>Custom Typography</li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class="rt-demo-grid-4 nomarginright">\r\n    <ul class="circle">\r\n      <li>RokSprocket Styling</li>\r\n      <li>RokExtensions Styling</li>\r\n      <li>JavaScript Input Styling</li>\r\n      <li>RTL Layout Support</li>\r\n      <li>Major Browsers Support</li>\r\n      <li>W3C XHTML1.0 / CSS3 Valid</li>\r\n    </ul> \r\n  </div>\r\n  \r\n  <div class="clear"></div>\r\n  \r\n  <div class="module-title">\r\n    <h3 class="title"><span>Gantry</span> Framework</h3>\r\n  </div>\r\n  <div class="rt-demo-grid-4 nomarginright nomarginleft">\r\n    <ul class="circle nomarginbottom">\r\n      <li>960 Grid System - 6 Grids per Row</li>\r\n      <li>Per-menu-item Configuration</li>\r\n      <li>Source Ordered Mainbody</li>\r\n      <li>Extensive Administrator Interface</li>\r\n      <li>Image Smart Loading</li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class="rt-demo-grid-4 nomarginright">\r\n    <ul class="circle nomarginbottom">\r\n      <li>iPhone / Android Compatible</li>\r\n      <li>Grid RTL Support</li>\r\n      <li>Built-in GZip and General Caching</li>\r\n      <li>Google Web Fonts Support</li>   \r\n      <li>Per Browser based CSS / JS control</li>\r\n    </ul> \r\n  </div>\r\n  \r\n  <div class="clear"></div>\r\n  \r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-floatright nomarginleft nomarginright">\r\n  <ul class="list-icon info">\r\n    <li><h3 class="nobold smallpaddingbottom">System Requirements</h3></li>\r\n  </ul>\r\n  \r\n  <ul class="checkmark">\r\n    <li><strong>Apache 2.x or Microsoft IIS 7</strong><br />\r\n      <em>Most widely deployed web server software which is required to run Joomla!</em></li>\r\n    <li><strong>PHP 5.3.x</strong><br />\r\n      <em>General-purpose server-side scripting language designed for web development.</em></li>\r\n    <li><strong>MySQL 5.0.4 or higher</strong><br />\r\n      <em>The most popular open-source database system that providing databases.</em></li>\r\n    <li><strong>Joomla! 2.5.x</strong><br />\r\n      <em>Please download the latest version of Joomla! at <a class="normalfont nobold" href="http://www.joomla.org" target="_blank">Joomla! Official Site</a>.</em></li> \r\n    <li><strong>Gantry Framework</strong><br />\r\n      <em>Please ensure you are using the latest version of <a class="normalfont nobold" href="http://www.gantry-framework.org" target="_blank">Gantry Framework</a>.</em></li>\r\n    <li><strong>RokNavMenu Module</strong><br />\r\n      <em>Essential ingredient of <a class="normalfont nobold" href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112">powerful menu</a> system of RocketTheme templates.</em></li>\r\n  </ul>\r\n  \r\n</div>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Mobile (iPhone/Android) Positions', '', '<p>You can enable or disable the custom iPhone and iPod Touch automatic theme support.</p>\r\n\r\n<p><img src="images/rocketlauncher/module-positions/mobile-support.jpg" width="412" height="86" alt="image" /></p>\r\n\r\n<p>To configure the mobile layout, please navigate to <strong>Admin &rarr; Extensions &rarr; Template Manager &rarr; rt_voxel</strong>, then go to <strong>Mobile</strong> tab.</p>\r\n<p class="attention">You can load either dedicated mobile positions or standard module positions in Mobile view.</p>\r\n<img src="images/rocketlauncher/module-positions/mobile-layout.png" width="430" height="374" class="nomarginbottom" alt="image"/>', 19, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(90, 'Gantry Grid Distribution', '', '<p>Configure at <strong>Admin &rarr; Extensions &rarr; Template Manager &rarr; rt_voxel</strong>, then go to <strong>Layouts</strong> to set the grid widths and allocated positions.</p>\r\n\r\n<p><img src="images/rocketlauncher/module-positions/grid-distribution-1.jpg" alt="image" width="412" height="70" class="rt-image" /></p>\r\n\r\n<p class="nomarginbottom"><img src="images/rocketlauncher/module-positions/grid-distribution-2.jpg" alt="image" width="412" height="70" class="rt-image" /></p>', 17, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Injected Gantry Features', '', '<img width="412" height="170" alt="Non-Standard Elements" src="images/rocketlauncher/module-positions/injected-features.jpg" class="rt-image" />\r\n\r\n<div class="clear"></div><br />\r\n\r\n<p>There are <strong>Features</strong> that are injected into a position when enabled in the <strong>Administrator</strong>, and are stacked vertically.</p> \r\n\r\n<p class="nomarginbottom">These are the Logo, Social Buttons, Date, Font Sizer, Login Panel, Popup Module, RocketTheme Branding, Copyright, To Top Scroller, System Messages and Reset Settings.</p>', 18, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 'MainBody/Sidebar Layouts', '', '<p>Configure at <strong>Admin &rarr; Extensions &rarr; Template Manager &rarr; rt_voxel</strong>, then go to <strong>Layouts</strong> tab and set the varying Mainbody/Sidebar layout possibilities.</p>\r\n\r\n<div class="rt-demo-grid-4 nomarginleft">\r\n<img src="images/rocketlauncher/module-positions/position-config-mb1.jpg" width="290" height="75" class="rt-image" alt="image"/>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4">\r\n<img src="images/rocketlauncher/module-positions/position-config-mb2.jpg" width="290" height="75" class="rt-image" alt="image"/>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 nomarginright">\r\n<img src="images/rocketlauncher/module-positions/position-config-mb3.jpg" width="290" height="75" class="rt-image" alt="image"/>\r\n</div>\r\n\r\n<div class="clear"></div><br />\r\n\r\n<p class="attention">Note: If no modules are assigned to the Sidebar positions, the Mainbody will become full width.</p>\r\n\r\n<p><img width="920" height="506"  alt="Module Positions" src="images/rocketlauncher/module-positions/gantry-layout.jpg" /></p>', 1, 'mainbottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 'Basic: Using Layouts in Voxel', '', '<a rel="rokbox[745 505]" title="Video Tutorial :: Using Gantry Layouts" href="http://www.gantry-framework.org/media/videos/module_widths.mov">\r\n<img class="rt-image rt-floatleft" src="images/rocketlauncher/module-positions/using-layouts.jpg" alt="Using Layouts" width="150" height="150" /></a>\r\n\r\n<p>To find out about <strong>Gantry Layouts</strong> and <strong>Module Widths</strong>, check out this screencast which covers basic concepts of configuring layout with a combination of module setting and the Gantry layout control.</p>\r\n\r\n<a class="readon smallmargintop" href="http://www.gantry-framework.org/documentation/joomla/configure/layouts" target="_blank"><span>View : Using Gantry Layouts</span></a>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(94, 'Advanced: Adding Module Positions', '', '<a rel="rokbox[745 505]" title="Video Tutorial :: Module Positions" href="http://www.gantry-framework.org/media/videos/module_positions.mov">\r\n<img class="rt-image rt-floatleft" src="images/rocketlauncher/module-positions/adding-module-positions.jpg" alt="Using Layouts" width="150" height="150" /></a>\r\n\r\n<p>Check out this quick screencast on <strong>Module Positions</strong> to get an overview of how module positions work within Gantry Framework. Click below button to learn how to <strong>add a new row of module positions</strong>.</p>\r\n\r\n<a class="readon smallmargintop" href="http://www.gantry-framework.org/documentation/joomla/customize/adding-module-positions" target="_blank"><span>Learn : Adding Module Positions</span></a>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(95, 'Standard Variations: 26 Additional Module Class Suffixes', '', '<ul class="nomarginbottom rt-demo-grid-4 nomarginleft">\r\n  <li><strong>rt-center:</strong> centres the content of the module.</li>\r\n  <li><strong>shadow2-10</strong> adds varying shadows around the module.</li>\r\n  <li><strong>rounded, square, basic:</strong> changes the border style of the module.</li>\r\n</ul>\r\n<ul class="nomarginbottom rt-demo-grid-4 nomarginleft nomarginright">\r\n  <li><strong>standardcase, uppercase, lowercase:</strong> change the case of the module title.</li>  \r\n  <li><strong>nomargintop, nomarginright, nomarginbottom, nomarginleft, nomarginall:</strong> removes the various margins around the module.</li>\r\n</ul>\r\n<ul class="nomarginbottom rt-demo-grid-4 nomarginright">\r\n  <li><strong>nopaddingtop, nopaddingright, nopaddingbottom, nopaddingleft, nopaddingall:</strong> removes the various paddings around the module</li>\r\n</ul>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 'Why Use RokCandy', '', '<p><strong>RokCandy</strong> is the ideal solution for those with <strong>limited coding skills</strong> or those who implement our templates for their clients. It is <strong>free</strong> from the WYSIWYG editors horrific filtering habits and can be easily pre-configured for your <strong>personal needs</strong> or the needs of your client.</p>\r\n<a href="http://www.rockettheme.com/extensions-joomla/rokcandy" class="readon" target="_blank"><span>Download : RokCandy</span></a>', 0, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(97, 'Video : Using Typography', '', '<a href="http://www.rockettheme.com/video/joomla15/using-typography-joomla15.mov" title="Video Tutorial :: Joomla Using Typography Video Tutorial" rel="rokbox[540 380]"><img class="rt-image rt-floatleft" src="images/rocketlauncher/typography/using-typography.jpg" alt="Using Typography" width="130" height="130" /></a>\r\n<p>Check out this quick screencast to learn how to use RokCandy to enhance your Joomla! content. The tags are very easy to learn and this guide shows you how to use all the styles.</p>\r\n<a href="http://www.rockettheme.com/video/joomla15/using-typography-joomla15.mov" title="Video Tutorial :: Joomla Using Typography Video Tutorial" rel="rokbox[540 380]" class="readon"><span>Watch : Using Typography</span></a>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 'Menu Options - Set Menu Type Screenshots', '', '<img class="rt-image" src="images/rocketlauncher/menu-options/menu-setting.jpg" alt="Set Menu" width="400" height="209" />', 1, 'feature-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(101, 'Set Menu Type', '', '<p>To find all the parameters for Fusion Menu and Split menu, such as transitions, duration and sublevel position, go to:</p>\r\n\r\n<ul class="dots">\r\n  <li><strong>Extensions &rarr; Template Manager &rarr; rt_voxel</strong></li>\r\n  <li>Then go to <strong>Menu</strong> tab, and set the Menu parameters</li>\r\n</ul>\r\n\r\n<p class="largemargintop attention">Descriptions of each template parameter can be seen when you mouseover the label of each option.</p>', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(102, 'Fusion Menu', '', '<p>A Mootools enhanced CSS dropdown menu, with multi-columns, icons and more.</p>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112&amp;menu-type=fusionmenu" class="readon"><span>FusionMenu</span></a>', 14, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'Split Menu', '', '<p>A static menu system that displays 1st and 2nd level items in the main horizontal menu and further children in the Sidebar.</p>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=112&amp;menu-type=splitmenu" class="readon"><span>SplitMenu</span></a>', 15, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(104, 'No Menu', '', '<p>An option to disable the menu, allowing for normal module use of the navigation position.</p>', 16, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(105, 'SubText Line', '', '<p><img width="260" height="100" alt="Diametric" src="images/rocketlauncher/menu-options/subtext.jpg" class="rt-image" /></p>\r\n<p>The option that allows you to insert additional text to the Menu Item Title. There is separate styling for this, making it useful for adding brief descriptions to menu items.</p>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(106, 'Menu Item Image', '', '<p><img width="260" height="100" alt="Diametric" src="images/rocketlauncher/menu-options/menuimage.jpg" class="rt-image" /></p>\r\n<p>RokNavMenu provides the option to display a small icon image for the menu item. The menu icon can be displayed both for the parent items and the child items.</p>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 'Multiple Columns', '', '<p><img width="260" height="100" alt="Diametric" src="images/rocketlauncher/menu-options/multiplecols.jpg" class="rt-image" /></p>\r\n<p>Who needs a single dropdown column when you can have as many as you want? Using the built-in configurable parameters, you can make incredible multi column dropdowns.</p>', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 'Footer - Extensions', '', '<div class="rt-demo-grid-8 nomarginright">\r\n  <ul class="list-icon write">\r\n    <li><h3 class="nobold smallpaddingbottom">All RocketTheme Extensions - in Extensions Club</h3></li>\r\n  </ul>\r\n  \r\n  <p>Many of our extensions were developed to accompany RocketTheme templates but we have now created versions that are intended to work independently of our templates if you wish.</p>\r\n  \r\n  <div class="module-title">\r\n    <h3 class="title"><span>Club</span> Extensions</h3>\r\n  </div>\r\n  \r\n  <div class="rt-grid-2 largemarginright largepaddingright">\r\n    <ul class="circle">\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokgallery" target="_blank">RokGallery</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokstock" target="_blank">RokStock</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokpad" target="_blank">RokPad</a></li>     \r\n    </ul>\r\n  </div>\r\n  \r\n  <div class="rt-grid-2 largemarginright largepaddingright">\r\n    <ul class="circle">  \r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokminievents" target="_blank">RokMiniEvents</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokweather" target="_blank">RokWeather</a></li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class="rt-grid-2">\r\n    <ul class="circle">\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/roktwittie" target="_blank">RokTwittie</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokfeaturetable" target="_blank">RokFeatureTable</a></li>\r\n    </ul>  \r\n  </div>\r\n  \r\n  <div class="clear"></div>\r\n  \r\n  <div class="module-title">\r\n    <h3 class="title"><span>Free</span> Extensions</h3>\r\n  </div>\r\n  <div class="rt-grid-2 largemarginright largepaddingright">\r\n    <ul class="circle nomarginbottom">\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/roksprocket" target="_blank">RokSprocket</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokbox" target="_blank">RokBox</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokbooster" target="_blank">RokBooster</a></li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class="rt-grid-2 largemarginright largepaddingright">\r\n    <ul class="circle nomarginbottom">\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/roknavmenu" target="_blank">RokNavMenu</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokquickcart" target="_blank">RokQuickCart</a></li>\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokcandy" target="_blank">RokCandy</a></li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class="rt-grid-2">\r\n    <ul class="circle nomarginbottom">\r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokajaxsearch" target="_blank">RokAjaxSearch</a></li>      \r\n      <li><a href="http://www.rockettheme.com/extensions-joomla/rokcomments" target="_blank">RokComments</a></li>\r\n    </ul>  \r\n  </div>\r\n</div>\r\n\r\n<div class="rt-demo-grid-4 rt-floatright nomarginleft nomarginright">\r\n  \r\n  <p class="notice">RokSprocket has been designed to replace our existing ‘content’ modules, including RokStories, RokTabs, RokNewsPager, RokNewsflash and any other module that manipulates &amp; displays articles.</p>\r\n  \r\n  <p>You can download the Voxel Extensions from:</p>\r\n  \r\n  <ul class="normalfont nomarginbottom checkmark">\r\n    <li><strong>Voxel Download Page:</strong><br /><strong>rt_voxel-extensions.zip</strong> for J2.5. Unzip the file, it contains all the extensions used for Voxel template.</li>\r\n    <li class="nomarginbottom"><strong>RocketTheme Extensions Page:</strong><br />Contains all individual extensions are available from the Extensions section of RokDownloads.</li>\r\n  </ul>\r\n  \r\n  <a href="http://www.rockettheme.com/extensions-downloads/" target="_blank" class="readon largemargintop rt-floatright"><span>Download : Voxel Extensions</span></a>\r\n  \r\n</div>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 'Installation Process', '', '<p>Download and install the <strong>Bundle</strong> file if Gantry is not installed, use the Standard Template file if <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=115">Gantry</a> is already present.</p>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=115" class="readon"><span>More Information</span></a>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 'RocketLauncher - Demo Replica', '', '<p>Deploy a <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=115">replica</a> of this month''s demo with ease, using the readily available <strong>RocketLauncher</strong> package.</p><a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=115" class="readon"><span>More Information</span></a>', 1, 'showcase-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(111, 'RocketTheme Tutorials', '', '<p>RocketTheme provides tutorials of template installation, RocketLauncher, and various topics related to RocketTheme templates.</p>\r\n<a href="http://www.rockettheme.com/joomla-tutorials" class="readon" target="_blank"><span>Read More</span></a>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(112, 'Gantry Support', '', '<p>More extensive details of the Gantry Framework, inclusive of both written and video tutorials, please visit Gantry Site.</p>\r\n<a href="http://www.gantry-framework.org/" target="_blank" class="readon"><span>Learn More</span></a>', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(113, 'System Requirements', '', '<ul class="checkmark nomarginbottom">\r\n <li><strong>Apache 2.x or Microsoft IIS 7</strong></li>\r\n <li><strong>PHP 5.3.x</strong></li>\r\n <li><strong>MySQL 5.0.4 or higher</strong></li>\r\n <li><strong>Joomla! 2.5.x</strong></li> \r\n  <li><strong>Gantry Framework</strong></li>\r\n  <li class="nomarginbottom"><strong>RokNavMenu Module</strong></li>\r\n</ul>', 9, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(114, 'RocketLauncher Version', '', '<p class="medmarginbottom"><strong>RocketLauncher</strong> is a customized <strong>Joomla</strong> install, that installs a <strong>replica</strong> of the <strong>demo</strong> onto your Joomla! site.</p>\r\n<p class="alert nomarginbottom"><strong>Note</strong>: All sample content images will be replaced with blank versions in the RocketLauncher.</p>', 10, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(115, 'Essential Files', '', '<ul class="list-icon checkmark normalfont nomarginbottom">\r\n  <li><strong>Gantry Framework</strong> - Download the latest version of Gantry Framework from <a href="" target="_blank">http://www.gantry-framework.org/</a> for update</li>\r\n  <li><strong>Template (Standalone)</strong> <em>rt_voxel.zip</em> - Standalone template file without the Gantry Framework (If Gantry is already installed)</li>\r\n  <li><strong>Template (Bundle)</strong> <em>rt_voxel-bundle.zip</em> - Template plus the Gantry Framework (If Gantry is not installed)</li>\r\n  <li><strong>RokNavMenu</strong> <em>rt_voxel-extensions.zip(<strong>unzip first</strong>) and find mod_roknavmenu.zip</em> - Required for the menu to work</li>\r\n</ul>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 'Additional Files', '', '<ul class="list-icon checkmark normalfont nomarginbottom">\r\n  <li><strong>Source PNG(s)</strong> <em>rt_voxel-sources.zip</em> - Adobe® Fireworks PNG source file(s) and any applicable fonts</li>\r\n  <li><strong>Source BG PNG(s)</strong> <em>rt_voxel-sources-bg.zip</em> - Adobe® Fireworks PNG BG source file(s) — <em>Only distributed if the template has complex BGs</em></li>\r\n  <li><strong>Extensions</strong> <em>rt_voxel-extensions.zip</em> - All extensions used for the template (Unzip first to find the individual extension)</li>\r\n  <li><strong>RocketLauncher</strong> <em>rt_voxel-rocketlauncher.zip</em> - Demo replica installer. RocketLauncher needs a fresh Joomla! installation</li>\r\n</ul>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, '12 Preset Styles - Preview Live', '', '<p class="notice">View all styles live by appending <strong>?presets=preset#</strong> or <strong>&amp;presets=preset#</strong> to the end of your URL such as <strong><a href="#">http://yoursite.com/index.php?presets=preset4</a></strong>.</p>\r\n\r\n<p>In sequential order, <strong>Preset 1 - Preset 12</strong>. Please click on the image to load a live example of each style variation.</p>\r\n\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset1">\r\n  <img alt="Preset 1" src="images/rocketlauncher/styles/ss1.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset2">\r\n  <img alt="Preset 2" src="images/rocketlauncher/styles/ss2.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset3">\r\n  <img alt="Preset 3" src="images/rocketlauncher/styles/ss3.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset4">\r\n  <img alt="Preset 4" src="images/rocketlauncher/styles/ss4.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset5">\r\n  <img alt="Preset 5" src="images/rocketlauncher/styles/ss5.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset6">\r\n  <img alt="Preset 6" src="images/rocketlauncher/styles/ss6.jpg" class="rt-image rt-floatleft nomarginright" width="142" height="428" />\r\n</a>\r\n<div class="clear"></div>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset7">\r\n  <img alt="Preset 7" src="images/rocketlauncher/styles/ss7.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset8">\r\n  <img alt="Preset 8" src="images/rocketlauncher/styles/ss8.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset9">\r\n  <img alt="Preset 9" src="images/rocketlauncher/styles/ss9.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset10">\r\n  <img alt="Preset 10" src="images/rocketlauncher/styles/ss10.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset11">\r\n  <img alt="Preset 11" src="images/rocketlauncher/styles/ss11.jpg" class="rt-image rt-floatleft medmarginright" width="142" height="428" />\r\n</a>\r\n<a href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117&amp;presets=preset12">\r\n  <img alt="Preset 12" src="images/rocketlauncher/styles/ss12.jpg" class="rt-image rt-floatleft nomarginright" width="142" height="428" />\r\n</a>\r\n<div class="clear"></div>', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(121, 'Creating your own Preset Style(s)', '', '<ul class="circle-large">\r\n <li>Go to <strong>Extensions &rarr; Template Manager &rarr; rt_voxel &rarr; Show Presets</strong></li>\r\n  <li>Configure the Settings</li>\r\n <li>Click <strong>Save Preset</strong></li>\r\n <li>Follow the <strong>Preset Saver procedure</strong></li>\r\n</ul>\r\n\r\n<p class="notice">You can edit the prebuilt presets in the <strong>gantry.config.php</strong> file, or use the User Interface method outlined above.</p>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(122, 'Preset Footer B', '', '<br /><br />\r\n<img class="rt-image rt-floatleft medmarginright " alt="Image" src="images/rocketlauncher/styles/style-1.jpg" height="132" width="200" />\r\n<img class="rt-image " alt="Image" src="images/rocketlauncher/styles/style-2.jpg" height="132" width="200" />', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(123, 'Breadcrumb', '', '', 0, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(124, 'Joomla Documentation', '', '<p>Joomla.org is an invaluable resource for general instructions and information on how to use, configure and modify Joomla.</p>\r\n<a href="http://docs.joomla.org" class="readon" target="_blank"><span>Read More</span></a>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(125, 'Main Menu', '', '', 8, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(126, 'Login Form', '', '', 22, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(127, 'Video Tutorials', '', '<ul class="dots">\r\n  <li><a class="nobold" href="http://www.rockettheme.com/video/joomla15/installing-rocketlauncher-joomla15.mov" title="Video Tutorial :: Joomla RocketLauncher Installation Video Tutorial" rel="rokbox[503 356]">RocketLauncher</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/video/joomla15/template-installation-joomla15.mov" title="Video Tutorial :: Joomla Template Installation Video Tutorial" rel="rokbox[800 620]">Template Installation</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/video/joomla15/menu-configuration-joomla15.mov" title="Video Tutorial :: Joomla Menu Setup Video Tutorial" rel="rokbox[504 336]">Menu Setup</a></li>\r\n  <li><a class="nobold" href="http://www.gantry-framework.org/media/videos/module_widths.mov" title="Video Tutorial :: Using Layouts in Diametric" rel="rokbox[745 505]">Using Gantry Layout</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/video/joomla15/using-typography-joomla15.mov" title="Video Tutorial :: Joomla Using Typography Video Tutorial" rel="rokbox[540 380]">Using Typography</a></li>  \r\n  <li><a class="nobold" rel="rokbox[504 360]" title="Video Tutorial :: Joomla 1.5 Template Management" href="http://www.rockettheme.com/video/joomla15/template-manager-joomla15.mov">Template Manager</a></li>\r\n  <li><a class="nobold" rel="rokbox[504 336]" title="Video Tutorial :: Joomla 1.5 Using Custom Modules" href="http://www.rockettheme.com/video/joomla15/custom-modules-joomla15.mov">Custom Modules</a></li>\r\n  <li><a class="nobold" rel="rokbox[504 336]" title="Video Tutorial :: Joomla 1.5 Using the Extensions Manager" href="http://www.rockettheme.com/video/joomla15/extensions-manager-joomla15.mov">Extensions Manager</a></li>\r\n  <li><a class="nobold" rel="rokbox[504 336](joomla15basic)" title="Video Tutorial :: Joomla 1.5 Menu Access Levels" href="http://www.rockettheme.com/video/joomla15/menu-access-levels-joomla15.mov">Menu Access</a></li>\r\n</ul>\r\n<a href="http://www.rockettheme.com/joomla-tutorials/video-tutorials" target="_blank" class="readon largemargintop smallmarginbottom"><span>View All</span></a>', 21, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, 'Forum Guides', '', '<ul class="dots">\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164522&amp;rb_v=viewtopic" target="_blank">Template FAQs</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164520&amp;rb_v=viewtopic" target="_blank">Guide &amp; Support</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164437&amp;rb_v=viewtopic" target="_blank">RokSprocket Setup</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164436&amp;rb_v=viewtopic" target="_blank">Mobile Theme</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164519&amp;rb_v=viewtopic" target="_blank">Demo Content Info</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164432&amp;rb_v=viewtopic" target="_blank">Editing the Logo</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164433&amp;rb_v=viewtopic" target="_blank">Template Text</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164435&amp;rb_v=viewtopic" target="_blank">Popup Module</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164434&amp;rb_v=viewtopic" target="_blank">RokBox Login</a></li>\r\n</ul>\r\n<a class="readon largemargintop smallmarginbottom" target="_blank" href="http://www.rockettheme.com/forum/index.php?f=618&amp;rb_v=viewforum"><span>View All</span></a>', 20, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(129, 'Forum Guides', '', '<ul class="dots">\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164522&amp;rb_v=viewtopic" target="_blank">Template FAQs</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164520&amp;rb_v=viewtopic" target="_blank">Guide &amp; Support</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164437&amp;rb_v=viewtopic" target="_blank">RokSprocket Setup</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164436&amp;rb_v=viewtopic" target="_blank">Mobile Theme</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164519&amp;rb_v=viewtopic" target="_blank">Demo Content Info</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164432&amp;rb_v=viewtopic" target="_blank">Editing the Logo</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164433&amp;rb_v=viewtopic" target="_blank">Template Text</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164435&amp;rb_v=viewtopic" target="_blank">Popup Module</a></li>\r\n  <li><a class="nobold" href="http://www.rockettheme.com/forum/index.php?f=619&amp;t=164434&amp;rb_v=viewtopic" target="_blank">RokBox Login</a></li>\r\n</ul>\r\n<a class="readon largemargintop smallmarginbottom" target="_blank" href="http://www.rockettheme.com/forum/index.php?f=618&amp;rb_v=viewforum"><span>View All</span></a>', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(130, 'Who’s Online', '', '', 25, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","filter_groups":"0"}', 0, '*'),
(131, 'Using a Suffix', '', '<p>Enter any available suffixes at <strong>Extensions &rarr; Module Manager &rarr; <em>Module</em> &rarr; Module Class Suffix</strong>.</p>\r\n<p class="notice nomarginbottom">You can compound multiple suffixes together such as: <strong><em>box1 title3</em></strong>.</p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(132, 'box1 title1', '', '<p>An example module using the <strong>box1 title1</strong> module class suffix.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</p>\r\n<a href="#" class="readon"><span>More</span></a>', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box1 title1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(133, 'box2 title2', '', '<p>An example module using the <strong>box2 title2</strong> module class suffix.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</p>\r\n<a href="#" class="readon"><span>More</span></a>', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2 title2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(134, 'box3 title5', '', '<p>An example module using the <strong>box3 title5</strong> module class suffix.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</p>\r\n<a href="#" class="readon"><span>More</span></a>', 4, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box3 title5","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(135, 'box4 title6', '', '<p>An example module using the <strong>box4 title6</strong> module class suffix.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet nibh.</p>\r\n<a href="#" class="readon"><span>More</span></a>', 5, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box4 title6","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(136, 'Utility Menu', '', '', 1, 'utility-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"utilitymenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"horizmenu nomarginall nopaddingtop nopaddingbottom","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(137, 'RokAjaxSearch', '', '', 1, 'navigation-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokajaxsearch', 1, 0, '{"moduleclass_sfx":"","search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","include_css":"0","theme":"light","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1"}', 0, '*');
INSERT INTO `#__modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(138, 'FP Showcase - RokSprocket Showcase', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 0, '{"provider":"joomla","layout":"features","joomla_articles":{"1":{"root":{"article":"1"}},"2":{"root":{"article":"6"}},"3":{"root":{"article":"5"}}},"k2_sort":"automatic","joomla_sort":"manual","k2_sort_manual_append":"after","joomla_sort_manual_append":"after","headlines_themes":"default","tabs_themes":"default","mosaic_themes":"default","lists_themes":"default","display_limit":"3","lists_enable_accordion":"1","features_themes":"slideshow","headlines_label_text":"","tabs_position":"top","headlines_previews_length":"20","features_show_title":"1","lists_previews_length":"20","tabs_animation":"slideandfade","lists_items_per_page":"5","tabs_autoplay":"0","headlines_show_arrows":"show","mosaic_columns":"3","features_show_article_text":"1","tabs_autoplay_delay":"5","features_show_arrows":"show","lists_show_arrows":"show","headlines_animation":"slideandfade","mosaic_previews_length":"20","features_show_pagination":"0","lists_show_pagination":"1","mosaic_items_per_page":"5","headlines_autoplay":"0","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","headlines_autoplay_delay":"5","mosaic_article_details":"0","lists_autoplay":"0","features_animation":"crossfade","mosaic_animations":["fade","scale","rotate"],"features_autoplay":"0","lists_autoplay_delay":"5","headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","tabs_title_default":"title","headlines_image_default":"primary","features_title_default":"title","lists_title_default":"title","k2_articletext_field":"primary","lists_image_default":"primary","tabs_icon_default":"primary","features_description_default":"primary","headlines_image_default_custom":"","tabs_icon_default_custom":"","lists_image_default_custom":"","headlines_link_default":"primary","features_image_default":"primary","features_image_default_custom":"","lists_link_default":"primary","tabs_link_default":"primary","headlines_link_default_custom":"","tabs_link_default_custom":"","features_link_default":"primary","lists_link_default_custom":"","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"nopaddingleft nopaddingright nopaddingtop","module_cache":"1","cache_time":"900"}', 0, '*'),
(139, 'FP Feature - RokSprocket Mosaic', '', '', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 0, '{"provider":"joomla","layout":"mosaic","joomla_articles":{"1":{"root":{"article":"1"}},"2":{"root":{"article":"6"}},"3":{"root":{"article":"5"}},"4":{"root":{"article":"4"}},"5":{"root":{"article":"10"}},"6":{"root":{"article":"2"}},"7":{"root":{"article":"21"}},"8":{"root":{"article":"27"}},"9":{"root":{"article":"8"}},"10":{"root":{"article":"3"}},"11":{"root":{"article":"29"}},"12":{"root":{"article":"30"}}},"k2_sort":"automatic","joomla_sort":"manual","k2_sort_manual_append":"after","joomla_sort_manual_append":"after","headlines_themes":"default","tabs_themes":"default","mosaic_themes":"default","lists_themes":"default","display_limit":"12","lists_enable_accordion":"1","features_themes":"slideshow","headlines_label_text":"","tabs_position":"top","headlines_previews_length":"20","features_show_title":"1","lists_previews_length":"20","tabs_animation":"slideandfade","lists_items_per_page":"5","tabs_autoplay":"0","headlines_show_arrows":"show","mosaic_columns":"3","features_show_article_text":"1","tabs_autoplay_delay":"5","features_show_arrows":"show","lists_show_arrows":"show","headlines_animation":"slideandfade","mosaic_previews_length":"38","features_show_pagination":"1","lists_show_pagination":"1","mosaic_items_per_page":"6","headlines_autoplay":"0","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","headlines_autoplay_delay":"5","mosaic_article_details":"1","lists_autoplay":"0","features_animation":"crossfade","mosaic_animations":["fade","scale","rotate"],"features_autoplay":"1","lists_autoplay_delay":"5","headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","tabs_title_default":"title","headlines_image_default":"primary","features_title_default":"title","lists_title_default":"title","k2_articletext_field":"primary","lists_image_default":"primary","tabs_icon_default":"primary","features_description_default":"primary","headlines_image_default_custom":"","tabs_icon_default_custom":"","lists_image_default_custom":"","headlines_link_default":"primary","features_image_default":"primary","features_image_default_custom":"","lists_link_default":"primary","tabs_link_default":"primary","headlines_link_default_custom":"","tabs_link_default_custom":"","features_link_default":"primary","lists_link_default_custom":"","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"nopaddingright nopaddingbottom nopaddingleft ","module_cache":"1","cache_time":"900"}', 0, '*'),
(140, 'Latest Tweets', '', '', 7, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roktwittie', 1, 1, '{"use_oauth":"0","consumer_key":"","consumer_secret":"","moduleclass_sfx":"title5","load_css":"0","enable_cache":"1","timeout_connect":"3","timeout_response":"6","enable_cache_time":"5","usernames":"rockettheme","inactive_opacity":"0.5","show_default_avatar":"0","header_style":"dark","include_rts":"1","enable_statuses":"0","status_external":"1","show_feed":"0","show_follow_updates":"0","show_bio":"0","show_web":"0","show_location":"0","show_updates":"0","show_followers":"0","show_following":"0","show_following_icons":"0","following_icons_count":"10","show_viewall":"0","enable_usernames":"0","enable_usernames_avatar":"1","usernames_avatar_size":"24","usernames_count_size":"2","usernames_count_merged":"1","enable_usernames_externals":"1","enable_usernames_source":"1","enable_usernames_user":"1","enable_search":"1","search":"@joomla","enable_search_avatar":"1","search_avatar_size":"24","search_count_size":"3","enable_search_externals":"1","enable_search_source":"1","enable_search_user":"1","oauth_token":"","oauth_token_secret":"","cache":"0","module_cache":"1","cache_time":"900"}', 0, '*'),
(141, 'Popular Features', '', '', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 1, '{"provider":"joomla","layout":"tabs","joomla_filters":{"1":{"root":{"category":"15"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","headlines_themes":"default","mosaic_themes":"default","tabs_themes":"default","lists_themes":"default","lists_enable_accordion":"1","headlines_label_text":"","features_themes":"slideshow","display_limit":"\\u221e","tabs_position":"top","tabs_animation":"slideandfade","headlines_previews_length":"20","lists_previews_length":"20","features_show_title":"1","lists_items_per_page":"5","mosaic_columns":"3","headlines_show_arrows":"show","features_show_article_text":"1","tabs_autoplay":"0","headlines_animation":"slideandfade","tabs_autoplay_delay":"5","features_show_arrows":"show","lists_show_arrows":"show","mosaic_previews_length":"20","mosaic_items_per_page":"5","lists_show_pagination":"1","headlines_autoplay":"0","features_show_pagination":"1","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","headlines_autoplay_delay":"5","features_animation":"crossfade","mosaic_article_details":"0","lists_autoplay":"0","features_autoplay":"1","lists_autoplay_delay":"5","mosaic_animations":["fade","scale","rotate"],"headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","features_autoplay_delay":"5","mosaic_ordering":["default","title","date","random"],"lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","features_title_default":"title","tabs_title_default":"title","headlines_image_default":"primary","lists_title_default":"title","headlines_image_default_custom":"","tabs_icon_default":"primary","lists_image_default":"primary","features_description_default":"primary","headlines_link_default":"primary","lists_image_default_custom":"","tabs_icon_default_custom":"","features_image_default":"primary","features_image_default_custom":"","headlines_link_default_custom":"","lists_link_default":"primary","tabs_link_default":"none","tabs_link_default_custom":"","features_link_default":"primary","lists_link_default_custom":"","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"title5","module_cache":"1","cache_time":"900"}', 0, '*'),
(142, 'RokBox Video', '', '<a href="http://www.youtube.com/watch?v=a0_FIK6h7t8" title="Thor - Official Trailer @ http://www.youtube.com/watch?v=a0_FIK6h7t8" rel="rokbox[580 320]">\r\n  <img alt="Image" src="images/rocketlauncher/frontpage/general/sample-video.jpg" width="267" height="174" />\r\n</a>', 1, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(143, 'Template Tutorials', '', '<img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/tut1.jpg" alt="image" />\r\n<p>Learn how to install the template, extensions and RocketLauncher, with this demo''s <a href="index.php?option=com_content&amp;view=article&amp;id=8&amp;Itemid=115" class="nobold">Installation</a> tutorial.</p>\r\n<div class="clear"></div>\r\n\r\n<img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/tut2.jpg" alt="image" />\r\n<p class="nomarginbottom">Explore even more with a range of template specific <a href="http://www.rockettheme.com/forum/index.php?f=607&amp;rb_v=viewforum" class="nobold">Forum-based Tutorials</a>, such as mobile setup.</p>\r\n<div class="clear"></div>', 1, 'content-bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(144, 'Demo Images', '', '<p><strong>NOTE:</strong> All demo content is for <strong>sample</strong> purposes only, intended to represent a live site. All images are from <a target="_blank" href="http://www.hdwallpapers.in">www.hdwallpapers.in</a> for use on this template demo only.</p>\n\n<h4 class="smallmarginbottom">VOXEL</h4>\n<span>t: +1 (888) 123-4567</span><br />\n<span>e: voxel&#64;contact.com</span>\n', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title2 nopaddingbottom nopaddingright","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(145, 'Inside Voxel', '', '<ul>\r\n  <li><a class="normalfont" href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=108">FEATURES</a></li>\r\n  <li><a class="normalfont" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113">EXTENSIONS</a></li>\r\n  <li><a class="normalfont" href="index.php?option=com_content&amp;view=article&amp;id=4&amp;Itemid=111">TYPOGRAPHY</a></li>\r\n  <li><a class="normalfont" href="index.php?option=com_content&amp;view=article&amp;id=10&amp;Itemid=117">STYLES</a></li>\r\n</ul>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title2 nopaddingbottom","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(146, 'RokSprocket', '', '<p class="smallmarginbottom">A content switchblade module.</p>\r\n\r\n<ul>\r\n  <li><strong>Multiple Layouts: </strong>Features, Tabs, Lists &amp; Headlines</li>\r\n  <li><strong>Various Content Sources: </strong> Joomla, K2, Seblod &amp; Zoo</li>\r\n  <li><strong>Advanced Sorting Rules: </strong> auto, manual, mixed or random</li>\r\n</ul>\r\n\r\n\r\n<div class="rt-floatright medmargintop">\r\n  <a href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=113">Learn More +</a>\r\n</div>\r\n\r\n<div class="clear"></div>\r\n', 1, 'footer-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title2 nopaddingbottom nopaddingleft","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(148, 'FP Bottom - RokSprocket Headlines', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 0, '{"provider":"joomla","layout":"headlines","joomla_filters":{"1":{"root":{"category":"16"}}},"k2_sort":"automatic","joomla_sort":"manual","k2_sort_manual_append":"after","joomla_sort_manual_append":"after","headlines_themes":"default","tabs_themes":"default","mosaic_themes":"default","lists_themes":"default","display_limit":"\\u221e","lists_enable_accordion":"1","features_themes":"slideshow","headlines_label_text":"Headlines","tabs_position":"top","headlines_previews_length":"14","features_show_title":"1","lists_previews_length":"20","tabs_animation":"slideandfade","lists_items_per_page":"5","tabs_autoplay":"0","headlines_show_arrows":"show","mosaic_columns":"3","features_show_article_text":"1","tabs_autoplay_delay":"5","features_show_arrows":"show","lists_show_arrows":"show","headlines_animation":"slideandfade","mosaic_previews_length":"20","features_show_pagination":"1","lists_show_pagination":"1","mosaic_items_per_page":"5","headlines_autoplay":"1","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","headlines_autoplay_delay":"5","mosaic_article_details":"0","lists_autoplay":"0","features_animation":"crossfade","mosaic_animations":["fade","scale","rotate"],"features_autoplay":"1","lists_autoplay_delay":"5","headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","tabs_title_default":"title","headlines_image_default":"primary","features_title_default":"title","lists_title_default":"title","k2_articletext_field":"primary","lists_image_default":"primary","tabs_icon_default":"primary","features_description_default":"primary","headlines_image_default_custom":"","tabs_icon_default_custom":"","lists_image_default_custom":"","headlines_link_default":"primary","features_image_default":"primary","features_image_default_custom":"","lists_link_default":"primary","tabs_link_default":"primary","headlines_link_default_custom":"","tabs_link_default_custom":"","features_link_default":"primary","lists_link_default_custom":"","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(149, 'RocketTheme Banner', '', '<a href="https://www.rockettheme.com/join-a-club" target="_blank" title="Join RocketTheme"><img src="images/rocketlauncher/frontpage/general/rockettheme_268x225.jpg" alt="RocketTheme" width="268" height="225" /></a>', 20, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(150, 'CopyRight Menu', '', '', 1, 'copyright-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"copyrightmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"horizmenu rt-floatright nomarginleft","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(151, 'Most Popular', '', '', 1, 'slideinset', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 1, '{"provider":"joomla","layout":"lists","joomla_filters":{"1":{"root":{"category":"17"}}},"k2_sort":"automatic","joomla_sort":"manual","k2_sort_manual_append":"after","joomla_sort_manual_append":"after","headlines_themes":"default","tabs_themes":"default","mosaic_themes":"default","lists_themes":"default","display_limit":"\\u221e","lists_enable_accordion":"0","features_themes":"slideshow","headlines_label_text":"","tabs_position":"top","headlines_previews_length":"20","features_show_title":"1","lists_previews_length":"6","tabs_animation":"slideandfade","lists_items_per_page":"3","tabs_autoplay":"0","headlines_show_arrows":"show","mosaic_columns":"3","features_show_article_text":"1","tabs_autoplay_delay":"5","features_show_arrows":"show","lists_show_arrows":"show","headlines_animation":"slideandfade","mosaic_previews_length":"20","features_show_pagination":"1","lists_show_pagination":"1","mosaic_items_per_page":"5","headlines_autoplay":"0","tabs_resize_enable":"0","tabs_resize_width":"0","tabs_resize_height":"0","headlines_autoplay_delay":"5","mosaic_article_details":"0","lists_autoplay":"0","features_animation":"crossfade","mosaic_animations":["fade","scale","rotate"],"features_autoplay":"1","lists_autoplay_delay":"5","headlines_resize_enable":"0","headlines_resize_width":"0","headlines_resize_height":"0","mosaic_ordering":["default","title","date","random"],"features_autoplay_delay":"5","lists_resize_enable":"0","lists_resize_width":"0","lists_resize_height":"0","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","tabs_title_default":"title","headlines_image_default":"primary","features_title_default":"title","lists_title_default":"none","k2_articletext_field":"primary","lists_image_default":"primary","tabs_icon_default":"primary","features_description_default":"primary","headlines_image_default_custom":"","tabs_icon_default_custom":"","lists_image_default_custom":"","headlines_link_default":"primary","features_image_default":"primary","features_image_default_custom":"","lists_link_default":"primary","tabs_link_default":"primary","headlines_link_default_custom":"","tabs_link_default_custom":"","features_link_default":"primary","lists_link_default_custom":"","features_link_default_custom":"","mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"title6","module_cache":"1","cache_time":"900"}', 0, '*'),
(153, 'FP Featured RokGallery', '', '', 1, 'fp-featured-rokgallery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokgallery', 1, 0, '{"gallery_id":"1","link":"none","default_menuitem":"184","title":"0","caption":"0","sort_by":"gallery_ordering","sort_direction":"ASC","limit_count":"5","style":"light","layout":"slideshow","columns":"1","arrows":"no","navigation":"thumbnails","animation_type":"slideLeft","animation_duration":"500","autoplay_enabled":"0","autoplay_delay":"7","showcase_arrows":"onhover","showcase_image_position":"left","showcase_imgpadding":"0","showcase_fixedheight":"0","showcase_animatedheight":"1","showcase_animation_type":"random","showcase_captionsanimation":"crossfade","showcase_animation_duration":"500","showcase_autoplay_enabled":"0","showcase_autoplay_delay":"7","cache":"0","module_cache":"1","cache_time":"900","moduleclass_sfx":"-featured-rokgallery"}', 0, '*'),
(154, 'FP Footer D (RokGallery)', '', '', 1, 'footer-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rokgallery', 1, 0, '{"gallery_id":"2","link":"none","default_menuitem":"184","title":"0","caption":"0","sort_by":"gallery_ordering","sort_direction":"ASC","limit_count":"9","style":"light","layout":"grid","columns":"3","arrows":"onhover","navigation":"thumbnails","animation_type":"random","animation_duration":"500","autoplay_enabled":"0","autoplay_delay":"7","showcase_arrows":"onhover","showcase_image_position":"left","showcase_imgpadding":"0","showcase_fixedheight":"0","showcase_animatedheight":"1","showcase_animation_type":"random","showcase_captionsanimation":"crossfade","showcase_animation_duration":"500","showcase_autoplay_enabled":"0","showcase_autoplay_delay":"7","cache":"0","module_cache":"1","cache_time":"900","moduleclass_sfx":"footer-rokgallery box2"}', 0, '*'),
(155, 'Help Desk', '', '<ul>\r\n  <li><a class="normalfont" href="index.php?option=com_content&amp;view=article&amp;id=7&amp;Itemid=114">TUTORIALS &amp; GUIDES</a></li>\r\n  <li><a class="normalfont" href="http://www.rockettheme.com/forum/index.php?f=619&amp;rb_v=viewforum" target="_blank">FORUM SUPPORT</a></li>\r\n</ul>', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title2 nopaddingtop nopaddingbottom","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(157, 'RokGallery', '', '<div class="rt-center">\r\n  <span class="promo3">RokGallery</span>\r\n</div>\r\n<div class="clear"></div>\r\n<p class="medmargintop"><img src="images/rocketlauncher/extensions/ext-rokgallery.jpg" width="268" height="173" alt="image" /></p>\r\n\r\n<p>RokGallery is a ground-up revolutionary gallery extension, developed to be hugely flexible, versatile and user friendly. The system itself is built on a custom tag-based architecture with the ability to have multiple tag-based galleries.</p>\r\n\r\n<a class="readon" target="_blank" href="http://www.rockettheme.com/extensions-joomla/rokgallery"><span>Download: RokGallery</span></a>', 1, 'mainbottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(158, 'RokAjaxSearch', '', '<div class="rt-center">\r\n  <span class="promo3">RokAjaxSearch</span>\r\n</div>\r\n<div class="clear"></div>\r\n<p class="medmargintop"><img src="images/rocketlauncher/extensions/ext-rokajaxsearch.jpg" width="268" height="173" alt="image" /></p>\r\n\r\n<p>RokAjaxSearch is a truly powerful module that brings fantastic search functionality to Joomla, using the powerful and versatile javascript library, Mootools as well as full Google Search integration. It offers AJAX powered real time search results.</p>\r\n\r\n<a class="readon" target="_blank" href="http://www.rockettheme.com/extensions-joomla/rokajaxsearch"><span>Download: RokAjaxSearch</span></a>', 1, 'mainbottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(159, 'RokTwittie', '', '<div class="rt-center">\r\n  <span class="promo3">RokTwittie</span>\r\n</div>\r\n<div class="clear"></div>\r\n<p class="medmargintop"><img src="images/rocketlauncher/extensions/ext-roktwittie.jpg" width="268" height="173" alt="image" /></p>\r\n\r\n<p>RokTwittie is a highly configurable module that integrates Twitter into your Joomla site. Display tweets of any username, or even by search terms, as well as your profile information and various other elements from Twitter itself.</p>\r\n\r\n<a class="readon" target="_blank" href="http://www.rockettheme.com/extensions-joomla/roktwittie"><span>Download: RokTwittie</span></a>', 1, 'mainbottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"box2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(169, 'K2 Information', '', '<p>K2 is the popular powerful content extension for Joomla! with CCK-like features. The version used in Voxel Demo site is <strong>2.5.6</strong>.</p>\r\n\r\n<p class="alert">The 3rd party component K2 is NOT included in RocketLauncher. You will need to download them from <a target="_blank" href="http://getk2.org/">Get K2</a> and configure them on your site.</p>\r\n\r\n<div class="rt-center">\r\n  <a target="_blank" href="http://getk2.org/"><img src="images/rocketlauncher/k2/download-k2.jpg" alt="Download K2" width="268" height="65" /></a>\r\n</div>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(170, 'Ultimate Customization', '', '<img class="rt-floatleft" src="images/rocketlauncher/frontpage/general/color-chooser.jpg" width="110" height="108" alt="image" />\r\n<p>The twelve style variations are fully customizable with the most comprehensive <strong>color chooser </strong>system.</p>\r\n<div class="clear"></div>\r\n<p class="nomarginbottom">Choose just a few tones and shades, and <strong>Voxel</strong> does the rest, <strong>automatically</strong> calculating an appropriate color scheme for the various template elements.</p>', 13, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"title5 box4","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(171, 'Quick Customization', '', '<img class="rt-floatleft" src="images/rocketlauncher/styles/color-panel.jpg" alt="Style" width="167" height="240" />\r\n\r\n<h3>Quick Customization</h3>\r\n\r\n<p><strong>Voxel</strong> provides a selection of customization style variations. Configure background textures, light or dark mainbodys as well as accent colours. </p>\r\n\r\n<p>The twelve style variations are fully customizable with the most comprehensive <strong>color chooser </strong>system.</p>\r\n\r\n<p>Choose just a few tones and shades, and <strong>Voxel</strong> does the rest, <strong>automatically</strong> calculating an appropriate color scheme for the various template elements.</p>', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"nomarginbottom","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(172, 'RokBooster', '', '<div class="rt-center largemargintop">\r\n  <span class="promo2">The New Powerful CSS and Javascript<br />Compression System, <em>RokBooster</em></span>\r\n</div>\r\n\r\n<br />\r\n\r\n<img class="rt-floatleft" src="images/rocketlauncher/extensions/ext-rokbooster.png" width="125" height="109" alt="RokBooster" />\r\n<p class="smallmarginbottom">Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress</strong> and <strong>combine</strong> your <strong>CSS</strong> and <strong>JavaScript</strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.</p>\r\n\r\n<p>It differentiates between the pages so if you have a particular combination of scripts on one page, and a different combination on another, two files will be created and loaded independently, allowing your site to load much faster.</p>\r\n\r\n<div class="clear"></div>\r\n\r\n<h3>Key Features:</h3>\r\n<ul class="checkmark">\r\n  <li>Combine and compress CSS and JavaScript into as few files as possible</li>\r\n  <li>GZip compression used to send CSS and JavaScript files</li>\r\n  <li>Compress Inline CSS and JavaScript</li>\r\n  <li>Customizable cache timeout</li>\r\n  <li>Background rendering, so initial file processing won''t slow your users down</li>\r\n  <li>Full page scan allows for non-header JavaScript and CSS to be included</li>\r\n  <li>Ability to ignore specific CSS and JavaScript files</li>\r\n</ul>\r\n\r\n<p class="notice"><strong>NOTE:</strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit</p>\r\n\r\n\r\n<h3>What does this mean in the real world?</h3>\r\nTo see how this effects a template in the a real world scenario, we''ll examine the front-page of the Voxel demo site from a very average 5MB cable connection. We used the Net panel in Firebug for Firefox to get our data. \r\n\r\n<h4>CSS Files</h4>\r\n<p>We will see how the site loads the CSS without RokBooster enabled:</p>\r\n\r\n<p><img src="images/rocketlauncher/extensions/rokbooster-off-css.png" width="905" height="354" alt="RokBooster" /></p>\r\n\r\n<p>As you can see, because Voxel template allows for maximum flexibility with almost unlimited combinations of header/body/footer/backgrounds etc, there are multiple CSS files loaded as well as some of the CSS files needed for the modules used.</p>\r\n\r\n<p>Let''s turn on RokBooster and see what we get now:</p>\r\n\r\n<p><img src="images/rocketlauncher/extensions/rokbooster-on-css.png" width="905" height="120" alt="RokBooster" /></p>\r\n\r\n<p>As you can clearly see the <strong>25 original requests</strong> have been reduced to <strong>1 request</strong>. The <strong>186.5KB</strong> of CSS files has been reduced to just <strong>33.6KB</strong> (<strong>18%</strong> of the original size!), and the original <strong>423 ms</strong> it took to download the CSS files has been reduced to <strong>166 ms</strong> (<strong>250% faster!</strong>). <strong>A drastic improvement!</strong></p>\r\n\r\n<h4>Javascript Files</h4>\r\n<p>Now to see the effects on the JavaScript side. Voxel is an extremely feature-packed template, and we''ve tried to show off as much as possible on the front page of the demo. This makes it an excellent example to really see the power of RokBooster in action.</p>\r\n\r\n<p>First without RokBooster enabled:</p>\r\n<p><img src="images/rocketlauncher/extensions/rokbooster-off-js.png" width="905" height="354" alt="RokBooster" /></p>\r\n\r\n<p>Once again, there''s a lot of JavaScript there to power all the features and functionality we are showing off on the front page. This of course is a somewhat extreme case, and you probably would not have this much functionality turned on at any one time.</p>\r\n\r\n<p>Let''s enable RokBooster and see what we get:</p>\r\n\r\n<p><img src="images/rocketlauncher/extensions/rokbooster-on-js.png" width="905" height="120" alt="RokBooster" /></p>\r\n\r\n<p>Those original <strong>22 requests</strong> for the JavaScript elements have been reduced to just <strong>1 request</strong>. The <strong>510.5KB</strong> has been reduced to just <strong>140.7KB</strong> (26% of the original size), and the <strong>806 ms</strong> it took before has been reduced to just <strong>322 ms</strong> (<strong>250% faster!</strong>). </p>\r\n\r\n<p>Of course RokBooster is not only particular useful with Voxel due to the large amounts of CSS and JavaScript Files, but RokBooster can be applied to any template that implements addScript() and addStyleSheet() functions and should improve your browsing experience significantly.</p>\r\n\r\n<a class="readon" href="http://www.rockettheme.com/extensions-joomla/rokbooster">Download: RokBooster Now</a>', 1, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

DROP TABLE IF EXISTS `#__modules_menu`;
CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
);

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 108),
(89, 109),
(90, 109),
(91, 109),
(92, 109),
(93, 109),
(94, 109),
(95, 110),
(96, 111),
(97, 111),
(100, 112),
(101, 112),
(102, 112),
(103, 112),
(104, 112),
(105, 112),
(106, 112),
(107, 112),
(108, 113),
(109, 114),
(109, 123),
(109, 125),
(109, 126),
(110, 114),
(110, 123),
(110, 125),
(110, 126),
(111, 114),
(111, 116),
(111, 118),
(111, 123),
(111, 124),
(111, 125),
(111, 126),
(112, 114),
(112, 116),
(112, 118),
(112, 123),
(112, 124),
(112, 125),
(112, 126),
(113, 115),
(114, 115),
(115, 115),
(116, 115),
(120, 117),
(121, 117),
(122, 117),
(123, 118),
(123, 123),
(123, 124),
(123, 125),
(123, 126),
(124, 114),
(124, 116),
(124, 118),
(124, 123),
(124, 124),
(124, 125),
(124, 126),
(125, 124),
(126, 124),
(127, 112),
(127, 114),
(127, 115),
(127, 116),
(127, 117),
(127, 118),
(128, 112),
(128, 115),
(128, 116),
(128, 117),
(128, 118),
(128, 123),
(128, 124),
(128, 125),
(128, 126),
(129, 114),
(130, 116),
(130, 117),
(130, 118),
(130, 124),
(130, 126),
(131, 110),
(132, 110),
(133, 110),
(134, 110),
(135, 110),
(136, 0),
(137, 0),
(138, 101),
(139, 101),
(140, 101),
(141, 101),
(142, 101),
(143, 101),
(144, 101),
(145, 101),
(146, 101),
(148, 101),
(149, 101),
(150, 0),
(151, 101),
(153, 101),
(154, 101),
(155, 101),
(157, 113),
(158, 113),
(159, 113),
(169, 200),
(170, 101),
(171, 117),
(172, 113);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

DROP TABLE IF EXISTS `#__newsfeeds`;
CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
);

--
-- Dumping data for table `#__newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__overrider`
--

DROP TABLE IF EXISTS `#__overrider`;
CREATE TABLE IF NOT EXISTS `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `#__overrider`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__rokcandy`
--

DROP TABLE IF EXISTS `#__rokcandy`;
CREATE TABLE IF NOT EXISTS `#__rokcandy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `macro` text NOT NULL,
  `html` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `#__rokcandy`
--

INSERT INTO `#__rokcandy` (`id`, `catid`, `macro`, `html`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(20, 8, '[h1]{text}[/h1]', '<h1>{text}</h1>', 1, 0, '0000-00-00 00:00:00', 1, ''),
(21, 8, '[h2]{text}[/h2]', '<h2>{text}</h2>', 1, 0, '0000-00-00 00:00:00', 2, ''),
(22, 8, '[h3]{text}[/h3]', '<h3>{text}</h3>', 1, 0, '0000-00-00 00:00:00', 3, ''),
(23, 8, '[h4]{text}[/h4]', '<h4>{text}</h4>', 1, 0, '0000-00-00 00:00:00', 4, ''),
(24, 8, '[h5]{text}[/h5]', '<h5>{text}</h5>', 1, 0, '0000-00-00 00:00:00', 5, ''),
(25, 8, '[b]{text}[/b]', '<strong>{text}</strong>', 1, 0, '0000-00-00 00:00:00', 6, ''),
(26, 8, '[i]{text}[/i]', '<em>{text}</em>', 1, 0, '0000-00-00 00:00:00', 7, ''),
(27, 8, '[code]{text}[/code]', '<code>{text}</code>', 1, 0, '0000-00-00 00:00:00', 8, ''),
(28, 8, '[youtube size="{size}" title="{title}" id="{id}"][/youtube]', '<div class="rokcandy-youtube">     <a rel="rokbox[{size}]" title="{title}" href="http://www.youtube.com/watch?v={id}"><img src="http://img.youtube.com/vi/{id}/0.jpg" alt="{title}" /></a> </div>', -2, 0, '0000-00-00 00:00:00', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__rokcommon_configs`
--

DROP TABLE IF EXISTS `#__rokcommon_configs`;
CREATE TABLE IF NOT EXISTS `#__rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
);

--
-- Dumping data for table `#__rokcommon_configs`
--

INSERT INTO `#__rokcommon_configs` (`id`, `extension`, `type`, `file`, `priority`) VALUES
(1, 'rokgallery', 'container', '/components/com_rokgallery/container.xml', 10),
(2, 'rokgallery', 'library', '/components/com_rokgallery/lib', 10),
(3, 'roksprocket', 'container', '/components/com_roksprocket/container.xml', 10),
(4, 'roksprocket', 'library', '/components/com_roksprocket/lib', 10);

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_files`
--

DROP TABLE IF EXISTS `#__rokgallery_files`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `guid` char(36) NOT NULL,
  `md5` char(32) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `license` varchar(255) DEFAULT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `filesize` int(10) unsigned NOT NULL,
  `type` char(20) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `#__files_sluggable_idx` (`slug`),
  KEY `#__rokgallery_files_published_idx` (`published`),
  KEY `#__rokgallery_files_md5_idx` (`md5`),
  KEY `#__rokgallery_files_guid_idx` (`guid`)
);

--
-- Dumping data for table `#__rokgallery_files`
--

INSERT INTO `#__rokgallery_files` (`id`, `filename`, `guid`, `md5`, `title`, `description`, `license`, `xsize`, `ysize`, `filesize`, `type`, `published`, `created_at`, `updated_at`, `slug`) VALUES
(19, 'sample-image1.jpg', '6adac90d-8e01-430e-ac4e-996c3e264540', '1ef856930145e6b09a8b4066e800c4db', 'sample-image1', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'sample-image1'),
(20, 'sample-image2.jpg', '840264dc-afa5-404a-e329-a6864631f1c7', '1ef856930145e6b09a8b4066e800c4db', 'sample-image2', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'sample-image2'),
(21, 'sample-image3.jpg', '7d328064-bef1-43c3-97a0-993c8412a8d8', '1ef856930145e6b09a8b4066e800c4db', 'sample-image3', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'sample-image3'),
(22, 'sample-image4.jpg', '89e4021d-a0e1-4ee6-ce93-04a595fe9ba9', '1ef856930145e6b09a8b4066e800c4db', 'sample-image4', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'sample-image4'),
(23, 'sample-image5.jpg', '49977dc1-848f-4e34-f0f3-99c29623671e', '1ef856930145e6b09a8b4066e800c4db', 'sample-image5', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'sample-image5'),
(24, 'sample-image6.jpg', '6e96f470-5fce-482f-f050-2b6700b31484', '1ef856930145e6b09a8b4066e800c4db', 'sample-image6', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'sample-image6'),
(25, 'sample-image7.jpg', '1bce83ee-4d5c-4636-cc51-ec2ccaed055f', '1ef856930145e6b09a8b4066e800c4db', 'sample-image7', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'sample-image7'),
(26, 'sample-image8.jpg', '387b555b-4cd0-4ab3-a975-c08ea7220501', '1ef856930145e6b09a8b4066e800c4db', 'sample-image8', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:32', '2012-05-02 18:53:32', 'sample-image8'),
(27, 'sample-image9.jpg', '06cd8035-bae3-4edb-c7e7-e364dc1bfaee', '1ef856930145e6b09a8b4066e800c4db', 'sample-image9', NULL, NULL, 360, 270, 19583, 'jpg', 1, '2012-05-02 18:53:32', '2012-05-02 18:53:32', 'sample-image9');

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_files_index`
--

DROP TABLE IF EXISTS `#__rokgallery_files_index`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_files_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `#__rokgallery_files_index_id_idx` (`id`)
);

--
-- Dumping data for table `#__rokgallery_files_index`
--

INSERT INTO `#__rokgallery_files_index` (`keyword`, `field`, `position`, `id`) VALUES
('image1', 'title', 1, 19),
('sample', 'title', 0, 19),
('image2', 'title', 1, 20),
('sample', 'title', 0, 20),
('image3', 'title', 1, 21),
('sample', 'title', 0, 21),
('image4', 'title', 1, 22),
('sample', 'title', 0, 22),
('image5', 'title', 1, 23),
('sample', 'title', 0, 23),
('image6', 'title', 1, 24),
('sample', 'title', 0, 24),
('image7', 'title', 1, 25),
('sample', 'title', 0, 25),
('image8', 'title', 1, 26),
('sample', 'title', 0, 26),
('image9', 'title', 1, 27),
('sample', 'title', 0, 27);

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_file_loves`
--

DROP TABLE IF EXISTS `#__rokgallery_file_loves`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_file_loves` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
);

--
-- Dumping data for table `#__rokgallery_file_loves`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_file_tags`
--

DROP TABLE IF EXISTS `#__rokgallery_file_tags`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_file_tags` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`,`tag`),
  KEY `#__rokgallery_file_tags_file_id_idx` (`file_id`)
);

--
-- Dumping data for table `#__rokgallery_file_tags`
--

INSERT INTO `#__rokgallery_file_tags` (`file_id`, `tag`) VALUES
(19, 'featured-rokgallery'),
(19, 'footer-rokgallery'),
(20, 'featured-rokgallery'),
(20, 'footer-rokgallery'),
(21, 'featured-rokgallery'),
(21, 'footer-rokgallery'),
(22, 'featured-rokgallery'),
(22, 'footer-rokgallery'),
(23, 'footer-rokgallery'),
(24, 'footer-rokgallery'),
(25, 'footer-rokgallery'),
(26, 'featured-rokgallery'),
(26, 'footer-rokgallery'),
(27, 'featured-rokgallery'),
(27, 'footer-rokgallery');

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_file_views`
--

DROP TABLE IF EXISTS `#__rokgallery_file_views`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_file_views` (
  `file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `kount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `file_id` (`file_id`)
);

--
-- Dumping data for table `#__rokgallery_file_views`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_filters`
--

DROP TABLE IF EXISTS `#__rokgallery_filters`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `query` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `rokgallery_profiles_name_idx` (`name`)
);

--
-- Dumping data for table `#__rokgallery_filters`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_galleries`
--

DROP TABLE IF EXISTS `#__rokgallery_galleries`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `filetags` longtext,
  `width` int(10) unsigned NOT NULL DEFAULT '910',
  `height` int(10) unsigned NOT NULL DEFAULT '500',
  `keep_aspect` tinyint(1) DEFAULT '0',
  `force_image_size` tinyint(1) DEFAULT '0',
  `thumb_xsize` int(10) unsigned NOT NULL DEFAULT '190',
  `thumb_ysize` int(10) unsigned NOT NULL DEFAULT '150',
  `thumb_background` varchar(12) DEFAULT NULL,
  `thumb_keep_aspect` tinyint(1) DEFAULT '0',
  `auto_publish` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `#__rokgallery_galleries_auto_publish_idx` (`auto_publish`)
);

--
-- Dumping data for table `#__rokgallery_galleries`
--

INSERT INTO `#__rokgallery_galleries` (`id`, `name`, `filetags`, `width`, `height`, `keep_aspect`, `force_image_size`, `thumb_xsize`, `thumb_ysize`, `thumb_background`, `thumb_keep_aspect`, `auto_publish`) VALUES
(1, 'Featured RokGallery', 'a:1:{i:0;s:19:"featured-rokgallery";}', 340, 200, 0, 1, 56, 40, 'transparent', 0, 1),
(2, 'Footer RokGallery', 'a:1:{i:0;s:17:"footer-rokgallery";}', 240, 240, 0, 0, 54, 54, 'transparent', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_jobs`
--

DROP TABLE IF EXISTS `#__rokgallery_jobs`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_jobs` (
  `id` char(36) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL,
  `properties` text,
  `state` varchar(255) NOT NULL,
  `status` text,
  `percent` bigint(20) unsigned DEFAULT NULL,
  `sm` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
);

--
-- Dumping data for table `#__rokgallery_jobs`
--

INSERT INTO `#__rokgallery_jobs` (`id`, `type`, `properties`, `state`, `status`, `percent`, `sm`, `created_at`, `updated_at`) VALUES
('1822b93a-52d1-4b88-ea8c-ebfb9c416147', 'Tag Addition', 'a:6:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:26;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:27;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:20;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:21;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:19;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:22;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Addition Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-05-02 18:53:46', '2012-05-02 18:53:47'),
('3783ddb6-b7ca-4765-bbdf-06b482a5452d', 'Update Gallery', 'a:2:{s:9:"galleryId";s:1:"3";s:5:"files";a:5:{i:0;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"1";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"2";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"7";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"8";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"9";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}}', 'Completed', 'Gallery Update Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-24 10:48:03', '2012-04-24 10:48:04'),
('4ba826e1-7a5f-44bb-d887-c62173f7163f', 'Tag Addition', 'a:5:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:9;s:7:"\0*\0tags";a:1:{i:0;s:18:"article-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:7;s:7:"\0*\0tags";a:1:{i:0;s:18:"article-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:8;s:7:"\0*\0tags";a:1:{i:0;s:18:"article-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:1;s:7:"\0*\0tags";a:1:{i:0;s:18:"article-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:2;s:7:"\0*\0tags";a:1:{i:0;s:18:"article-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Addition Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-24 10:43:10', '2012-04-24 10:43:12'),
('56fb7d01-cafa-4b7b-a815-f377ab87db02', 'Tag Addition', 'a:9:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:26;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:27;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:20;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:21;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:23;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:24;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:19;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:22;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:25;s:7:"\0*\0tags";a:1:{i:0;s:17:"footer-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Addition Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-05-02 18:53:56', '2012-05-02 18:53:57'),
('7a8cf76a-bdf3-4882-f23a-e31cf75da979', 'Import', 'a:9:{i:0;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/10356b06-3467-404e-efb7-ed246d925471";s:5:"\0*\0id";s:36:"10356b06-3467-404e-efb7-ed246d925471";s:11:"\0*\0filename";s:17:"sample-image1.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/a43b69cc-b0d3-4b4c-d337-172ab25530e8";s:5:"\0*\0id";s:36:"a43b69cc-b0d3-4b4c-d337-172ab25530e8";s:11:"\0*\0filename";s:17:"sample-image2.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/2f38a173-b8d2-4059-e9bd-cd0d0abb62de";s:5:"\0*\0id";s:36:"2f38a173-b8d2-4059-e9bd-cd0d0abb62de";s:11:"\0*\0filename";s:17:"sample-image3.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/383b510a-debf-4e7f-d281-1f136c3edeff";s:5:"\0*\0id";s:36:"383b510a-debf-4e7f-d281-1f136c3edeff";s:11:"\0*\0filename";s:17:"sample-image4.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/23c313c3-b435-416d-cf25-73182a1eb60d";s:5:"\0*\0id";s:36:"23c313c3-b435-416d-cf25-73182a1eb60d";s:11:"\0*\0filename";s:17:"sample-image5.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/7b3a7c11-6175-4dae-8ac2-858fe1897c21";s:5:"\0*\0id";s:36:"7b3a7c11-6175-4dae-8ac2-858fe1897c21";s:11:"\0*\0filename";s:17:"sample-image6.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/e0fed4fd-c89f-47b4-e7c7-c65ffad582ab";s:5:"\0*\0id";s:36:"e0fed4fd-c89f-47b4-e7c7-c65ffad582ab";s:11:"\0*\0filename";s:17:"sample-image7.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/f7367800-b436-4334-f3c2-15fb3fcccd96";s:5:"\0*\0id";s:36:"f7367800-b436-4334-f3c2-15fb3fcccd96";s:11:"\0*\0filename";s:17:"sample-image8.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/7a8cf76a-bdf3-4882-f23a-e31cf75da979/3478fb7f-6f54-4201-9c4a-87f937276a97";s:5:"\0*\0id";s:36:"3478fb7f-6f54-4201-9c4a-87f937276a97";s:11:"\0*\0filename";s:17:"sample-image9.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Importing Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-05-02 18:51:26', '2012-05-02 18:51:30'),
('836df48d-8f4e-4106-ce81-bca1661f7119', 'Update Gallery', 'a:2:{s:9:"galleryId";s:1:"3";s:5:"files";a:5:{i:0;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"1";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"2";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"7";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"8";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"9";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}}', 'Completed', 'Gallery Update Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-24 10:46:49', '2012-04-24 10:46:50'),
('a4f64ffb-75f7-4691-d589-9808c1b1dd24', 'Import', 'a:9:{i:0;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/6a47dff7-8f8d-44c5-c236-c6ee4078c980";s:5:"\0*\0id";s:36:"6a47dff7-8f8d-44c5-c236-c6ee4078c980";s:11:"\0*\0filename";s:10:"image1.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/4cbdba54-88cc-4577-8289-730c02544a2b";s:5:"\0*\0id";s:36:"4cbdba54-88cc-4577-8289-730c02544a2b";s:11:"\0*\0filename";s:10:"image2.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/77b785f6-b5f2-4c51-a03f-cc9ef8e9bbea";s:5:"\0*\0id";s:36:"77b785f6-b5f2-4c51-a03f-cc9ef8e9bbea";s:11:"\0*\0filename";s:10:"image3.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/144f9df1-f760-4ecc-dcb7-d51e65e1a892";s:5:"\0*\0id";s:36:"144f9df1-f760-4ecc-dcb7-d51e65e1a892";s:11:"\0*\0filename";s:10:"image4.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/04cba74c-33ae-4850-c951-ff6c1a6b2443";s:5:"\0*\0id";s:36:"04cba74c-33ae-4850-c951-ff6c1a6b2443";s:11:"\0*\0filename";s:10:"image5.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/7979a53f-0fc3-4dff-de78-9ee85a82f9d7";s:5:"\0*\0id";s:36:"7979a53f-0fc3-4dff-de78-9ee85a82f9d7";s:11:"\0*\0filename";s:10:"image6.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/8d8ca8ff-cb2e-4627-f812-cb724ba10c71";s:5:"\0*\0id";s:36:"8d8ca8ff-cb2e-4627-f812-cb724ba10c71";s:11:"\0*\0filename";s:10:"image7.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/1c275a5a-c3bb-4e86-de3c-f267bb2c03f3";s:5:"\0*\0id";s:36:"1c275a5a-c3bb-4e86-de3c-f267bb2c03f3";s:11:"\0*\0filename";s:10:"image8.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:151:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/rockettheme/dev/2895-voxel/tmp/a4f64ffb-75f7-4691-d589-9808c1b1dd24/3530f1fe-da9c-4d9f-a58d-8ef0853be337";s:5:"\0*\0id";s:36:"3530f1fe-da9c-4d9f-a58d-8ef0853be337";s:11:"\0*\0filename";s:10:"image9.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Importing Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-17 02:43:28', '2012-04-17 02:43:35'),
('aa175002-5c3b-4e88-b2da-51a8ea285fd0', 'Tag Removal', 'a:5:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:7;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:8;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:1;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:2;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:9;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Removal Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-24 10:51:35', '2012-04-24 10:51:35'),
('c80aefee-bb9c-40c6-dfbe-5105e02e4653', 'Update Gallery', 'a:2:{s:9:"galleryId";s:1:"1";s:5:"files";a:5:{i:0;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"1";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"2";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"7";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"8";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"9";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}}', 'Completed', 'Gallery Update Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-24 11:20:33', '2012-04-24 11:20:34'),
('c9d5b9c1-9137-4dee-d434-6cc0575ffaf1', 'Import', 'a:9:{i:0;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/c1b4a1d7-cf56-4c04-d541-718c63308800";s:5:"\0*\0id";s:36:"c1b4a1d7-cf56-4c04-d541-718c63308800";s:11:"\0*\0filename";s:17:"sample-image1.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/83d0d6a4-7c6c-43eb-917e-1236ef92200e";s:5:"\0*\0id";s:36:"83d0d6a4-7c6c-43eb-917e-1236ef92200e";s:11:"\0*\0filename";s:17:"sample-image2.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/8bd60434-90ad-4fbf-b200-f77ad392e81f";s:5:"\0*\0id";s:36:"8bd60434-90ad-4fbf-b200-f77ad392e81f";s:11:"\0*\0filename";s:17:"sample-image3.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/920a4376-4e1b-4043-b6d5-5659213330f0";s:5:"\0*\0id";s:36:"920a4376-4e1b-4043-b6d5-5659213330f0";s:11:"\0*\0filename";s:17:"sample-image4.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/859c7a2e-76eb-40c0-b2fb-d221850ca03a";s:5:"\0*\0id";s:36:"859c7a2e-76eb-40c0-b2fb-d221850ca03a";s:11:"\0*\0filename";s:17:"sample-image5.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:5;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/67c15430-85fc-4b36-d177-241dca0ddf48";s:5:"\0*\0id";s:36:"67c15430-85fc-4b36-d177-241dca0ddf48";s:11:"\0*\0filename";s:17:"sample-image6.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:6;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/29ffaa1b-017d-4f65-e9ba-a2c182dc31f7";s:5:"\0*\0id";s:36:"29ffaa1b-017d-4f65-e9ba-a2c182dc31f7";s:11:"\0*\0filename";s:17:"sample-image7.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:7;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/fcb0ff16-e69e-49db-92f1-28cdba584ab0";s:5:"\0*\0id";s:36:"fcb0ff16-e69e-49db-92f1-28cdba584ab0";s:11:"\0*\0filename";s:17:"sample-image8.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:8;O:34:"RokGallery_Job_Property_ImportFile":6:{s:7:"\0*\0path";s:143:"/Users/FinLy/Dropbox/SyncStuffs/MAMP/LocalHost/sandbox/voxel-demo/tmp/c9d5b9c1-9137-4dee-d434-6cc0575ffaf1/8b9c912f-9447-41c0-f43e-80200f9ca1d8";s:5:"\0*\0id";s:36:"8b9c912f-9447-41c0-f43e-80200f9ca1d8";s:11:"\0*\0filename";s:17:"sample-image9.jpg";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Importing Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-05-02 18:53:28', '2012-05-02 18:53:32'),
('cd4fa192-88d4-45de-ca3c-60228affd941', 'Tag Addition', 'a:5:{i:0;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:9;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:7;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:8;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:1;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:32:"RokGallery_Job_Property_FileTags":5:{s:9:"\0*\0fileId";i:2;s:7:"\0*\0tags";a:1:{i:0;s:19:"featured-rokgallery";}s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}', 'Completed', 'Tag Addition Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-24 10:52:13', '2012-04-24 10:52:14'),
('ebacec0f-9eea-4c6f-8867-d165d688766e', 'Update Gallery', 'a:2:{s:9:"galleryId";s:1:"1";s:5:"files";a:5:{i:0;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"1";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"2";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"7";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"8";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"9";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}}', 'Completed', 'Gallery Update Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-24 10:53:15', '2012-04-24 10:53:15'),
('f1c66267-264e-4d64-d4d3-4d989a82c2f0', 'Update Gallery', 'a:2:{s:9:"galleryId";s:1:"1";s:5:"files";a:5:{i:0;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"1";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:1;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"2";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:2;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"7";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:3;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"8";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}i:4;O:35:"RokGallery_Job_Property_GalleryFile":4:{s:5:"\0*\0id";s:1:"9";s:12:"\0*\0completed";b:1;s:8:"\0*\0error";b:0;s:9:"\0*\0status";N;}}}', 'Completed', 'Gallery Update Complete', 100, 'O:27:"RokGallery_Job_StateMachine":5:{s:9:"\0*\0_state";O:33:"RokGallery_Job_StateMap_Completed":2:{s:8:"\0*\0_name";s:33:"RokGallery_Job_StateMap.Completed";s:6:"\0*\0_id";i:8;}s:18:"\0*\0_previous_state";O:31:"RokGallery_Job_StateMap_Running":2:{s:8:"\0*\0_name";s:31:"RokGallery_Job_StateMap.Running";s:6:"\0*\0_id";i:2;}s:15:"\0*\0_state_stack";a:0:{}s:14:"\0*\0_transition";N;s:14:"\0*\0_debug_flag";b:0;}', '2012-04-30 13:46:54', '2012-04-30 13:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_profiles`
--

DROP TABLE IF EXISTS `#__rokgallery_profiles`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `profile` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `#__rokgallery_profiles_name_idx` (`name`)
);

--
-- Dumping data for table `#__rokgallery_profiles`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_schema_version`
--

DROP TABLE IF EXISTS `#__rokgallery_schema_version`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_schema_version` (
  `version` int(11) DEFAULT NULL
);

--
-- Dumping data for table `#__rokgallery_schema_version`
--

INSERT INTO `#__rokgallery_schema_version` (`version`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_slices`
--

DROP TABLE IF EXISTS `#__rokgallery_slices`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_slices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `gallery_id` int(10) unsigned DEFAULT NULL,
  `guid` char(36) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `caption` text,
  `link` text,
  `filesize` int(10) unsigned NOT NULL,
  `xsize` int(10) unsigned NOT NULL,
  `ysize` int(10) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `admin_thumb` tinyint(1) NOT NULL DEFAULT '0',
  `manipulations` longtext,
  `palette` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumb_xsize` int(10) unsigned NOT NULL,
  `thumb_ysize` int(10) unsigned NOT NULL,
  `thumb_keep_aspect` tinyint(1) NOT NULL DEFAULT '1',
  `thumb_background` varchar(12) DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `guid` (`guid`),
  UNIQUE KEY `#__rokgallery_slices_sluggable_idx` (`slug`,`gallery_id`),
  KEY `rokgallery_slices_published_idx` (`published`),
  KEY `rokgallery_slices_guid_idx` (`guid`),
  KEY `file_id_idx` (`file_id`),
  KEY `gallery_id_idx` (`gallery_id`)
);

--
-- Dumping data for table `#__rokgallery_slices`
--

INSERT INTO `#__rokgallery_slices` (`id`, `file_id`, `gallery_id`, `guid`, `title`, `caption`, `link`, `filesize`, `xsize`, `ysize`, `published`, `admin_thumb`, `manipulations`, `palette`, `created_at`, `updated_at`, `slug`, `thumb_xsize`, `thumb_ysize`, `thumb_keep_aspect`, `thumb_background`, `ordering`) VALUES
(43, 19, NULL, 'e4db99a6-6d64-4ce6-f7af-6283a38a8b93', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'admin-thumbnail', 150, 150, 1, NULL, 8),
(44, 20, NULL, 'c6dd6edb-e40f-4e91-8b9d-26d56e6b6e00', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'admin-thumbnail-1', 150, 150, 1, NULL, 7),
(45, 21, NULL, '5032d6cf-a6c6-48ff-e1a2-c7fd2626e6d7', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'admin-thumbnail-2', 150, 150, 1, NULL, 6),
(46, 22, NULL, '8095fb81-d288-4908-c6a6-5bed81b2231f', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'admin-thumbnail-3', 150, 150, 1, NULL, 5),
(47, 23, NULL, '40ffb36c-b299-4d4b-c967-df8799af2a94', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'admin-thumbnail-4', 150, 150, 1, NULL, 4),
(48, 24, NULL, 'efaeaf28-8c6d-40af-b297-11fa5475560e', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:31', '2012-05-02 18:53:31', 'admin-thumbnail-5', 150, 150, 1, NULL, 3),
(49, 25, NULL, 'ce9c2bb5-4e0d-47fe-dda4-337b9432598d', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:32', '2012-05-02 18:53:32', 'admin-thumbnail-6', 150, 150, 1, NULL, 2),
(50, 26, NULL, '5bc4a58a-bdc8-457d-8841-c0e15fc61e1e', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:32', '2012-05-02 18:53:32', 'admin-thumbnail-7', 150, 150, 1, NULL, 1),
(51, 27, NULL, '09b77ebf-584b-4a68-92b8-139dc6b19150', 'Admin Thumbnail', 'Admin Thumbnail', NULL, 29757, 300, 180, 0, 1, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:300;s:6:"height";i:225;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:23;s:5:"width";i:300;s:6:"height";i:180;s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:32', '2012-05-02 18:53:32', 'admin-thumbnail-8', 150, 150, 1, NULL, 0),
(52, 26, 1, '546f7737-0afa-4ca1-c541-d00be7e4985a', 'sample-image8', NULL, NULL, 33957, 340, 200, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"340";s:6:"height";i:255;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:28;s:5:"width";s:3:"340";s:6:"height";s:3:"200";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:47', '2012-05-02 18:53:47', 'sample-image8', 56, 40, 0, 'transparent', 5),
(53, 27, 1, '45b2d133-0f95-4c06-d22b-6a8c215644bf', 'sample-image9', NULL, NULL, 33957, 340, 200, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"340";s:6:"height";i:255;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:28;s:5:"width";s:3:"340";s:6:"height";s:3:"200";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:47', '2012-05-02 18:53:47', 'sample-image9', 56, 40, 0, 'transparent', 4),
(54, 20, 1, '8e949cef-562f-46ac-c8aa-8bc174a98294', 'sample-image2', NULL, NULL, 33957, 340, 200, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"340";s:6:"height";i:255;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:28;s:5:"width";s:3:"340";s:6:"height";s:3:"200";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:47', '2012-05-02 18:53:47', 'sample-image2', 56, 40, 0, 'transparent', 3),
(55, 21, 1, '5ac07711-67e1-487c-c75e-5ada01e8e810', 'sample-image3', NULL, NULL, 33957, 340, 200, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"340";s:6:"height";i:255;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:28;s:5:"width";s:3:"340";s:6:"height";s:3:"200";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:47', '2012-05-02 18:53:47', 'sample-image3', 56, 40, 0, 'transparent', 2),
(56, 19, 1, 'af11057b-a9af-415b-fa85-5926cc213503', 'sample-image1', NULL, NULL, 33957, 340, 200, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"340";s:6:"height";i:255;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:28;s:5:"width";s:3:"340";s:6:"height";s:3:"200";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:47', '2012-05-02 18:53:47', 'sample-image1', 56, 40, 0, 'transparent', 1),
(57, 22, 1, '6bf2d4af-2778-41c0-c8fb-5670adb338a0', 'sample-image4', NULL, NULL, 33957, 340, 200, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";s:3:"340";s:6:"height";i:255;s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:0;s:3:"top";i:28;s:5:"width";s:3:"340";s:6:"height";s:3:"200";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:47', '2012-05-02 18:53:47', 'sample-image4', 56, 40, 0, 'transparent', 0),
(58, 26, 2, 'e6953c5d-da9a-4fb5-ac5b-6cf2682524cc', 'sample-image8', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:56', '2012-05-02 18:53:56', 'sample-image8', 54, 54, 0, 'transparent', 8),
(59, 27, 2, '48974729-0773-4944-ce3a-e97557c1db6d', 'sample-image9', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:56', '2012-05-02 18:53:56', 'sample-image9', 54, 54, 0, 'transparent', 7),
(60, 20, 2, 'c6f66b9d-7243-4110-ed8e-41fe78365691', 'sample-image2', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:56', '2012-05-02 18:53:56', 'sample-image2', 54, 54, 0, 'transparent', 6),
(61, 21, 2, '04a09477-46b2-4484-b6a2-3b7544df9641', 'sample-image3', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:56', '2012-05-02 18:53:56', 'sample-image3', 54, 54, 0, 'transparent', 5),
(62, 23, 2, 'e0911a4b-f3b3-4ebc-a7c9-21873f3234f1', 'sample-image5', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:56', '2012-05-02 18:53:56', 'sample-image5', 54, 54, 0, 'transparent', 4),
(63, 24, 2, '8495a402-9abd-4c0e-cb4d-bb8fc4516451', 'sample-image6', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:56', '2012-05-02 18:53:56', 'sample-image6', 54, 54, 0, 'transparent', 3),
(64, 19, 2, '449dd2e8-675c-4ddb-fc43-9c474bee5e59', 'sample-image1', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:56', '2012-05-02 18:53:56', 'sample-image1', 54, 54, 0, 'transparent', 2),
(65, 22, 2, '2bedf4f7-738d-45cb-9dd4-e2797a1ca6ac', 'sample-image4', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:57', '2012-05-02 18:53:57', 'sample-image4', 54, 54, 0, 'transparent', 1),
(66, 25, 2, 'e70ba3b5-e60a-4c47-ae7f-c6273ee47939', 'sample-image7', NULL, NULL, 29672, 240, 240, 1, 0, 'a:2:{i:0;O:37:"RokGallery_Manipulation_Action_Resize":4:{s:7:"\0*\0type";s:6:"resize";s:5:"width";i:320;s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}i:1;O:35:"RokGallery_Manipulation_Action_Crop":6:{s:7:"\0*\0type";s:4:"crop";s:4:"left";i:40;s:3:"top";i:0;s:5:"width";s:3:"240";s:6:"height";s:3:"240";s:8:"\0*\0setup";b:1;}}', NULL, '2012-05-02 18:53:57', '2012-05-02 18:53:57', 'sample-image7', 54, 54, 0, 'transparent', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_slices_index`
--

DROP TABLE IF EXISTS `#__rokgallery_slices_index`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_slices_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `rokgallery_slices_index_id_idx` (`id`)
);

--
-- Dumping data for table `#__rokgallery_slices_index`
--

INSERT INTO `#__rokgallery_slices_index` (`keyword`, `field`, `position`, `id`) VALUES
('admin', 'caption', 0, 43),
('admin', 'title', 0, 43),
('thumbnail', 'caption', 1, 43),
('thumbnail', 'title', 1, 43),
('admin', 'caption', 0, 44),
('admin', 'title', 0, 44),
('thumbnail', 'caption', 1, 44),
('thumbnail', 'title', 1, 44),
('admin', 'caption', 0, 45),
('admin', 'title', 0, 45),
('thumbnail', 'caption', 1, 45),
('thumbnail', 'title', 1, 45),
('admin', 'caption', 0, 46),
('admin', 'title', 0, 46),
('thumbnail', 'caption', 1, 46),
('thumbnail', 'title', 1, 46),
('admin', 'caption', 0, 47),
('admin', 'title', 0, 47),
('thumbnail', 'caption', 1, 47),
('thumbnail', 'title', 1, 47),
('admin', 'caption', 0, 48),
('admin', 'title', 0, 48),
('thumbnail', 'caption', 1, 48),
('thumbnail', 'title', 1, 48),
('admin', 'caption', 0, 49),
('admin', 'title', 0, 49),
('thumbnail', 'caption', 1, 49),
('thumbnail', 'title', 1, 49),
('admin', 'caption', 0, 50),
('admin', 'title', 0, 50),
('thumbnail', 'caption', 1, 50),
('thumbnail', 'title', 1, 50),
('admin', 'caption', 0, 51),
('admin', 'title', 0, 51),
('thumbnail', 'caption', 1, 51),
('thumbnail', 'title', 1, 51),
('image8', 'title', 1, 52),
('sample', 'title', 0, 52),
('image9', 'title', 1, 53),
('sample', 'title', 0, 53),
('image2', 'title', 1, 54),
('sample', 'title', 0, 54),
('image3', 'title', 1, 55),
('sample', 'title', 0, 55),
('image1', 'title', 1, 56),
('sample', 'title', 0, 56),
('image4', 'title', 1, 57),
('sample', 'title', 0, 57),
('image8', 'title', 1, 58),
('sample', 'title', 0, 58),
('image9', 'title', 1, 59),
('sample', 'title', 0, 59),
('image2', 'title', 1, 60),
('sample', 'title', 0, 60),
('image3', 'title', 1, 61),
('sample', 'title', 0, 61),
('image5', 'title', 1, 62),
('sample', 'title', 0, 62),
('image6', 'title', 1, 63),
('sample', 'title', 0, 63),
('image1', 'title', 1, 64),
('sample', 'title', 0, 64),
('image4', 'title', 1, 65),
('sample', 'title', 0, 65),
('image7', 'title', 1, 66),
('sample', 'title', 0, 66);

-- --------------------------------------------------------

--
-- Table structure for table `#__rokgallery_slice_tags`
--

DROP TABLE IF EXISTS `#__rokgallery_slice_tags`;
CREATE TABLE IF NOT EXISTS `#__rokgallery_slice_tags` (
  `slice_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`slice_id`,`tag`),
  KEY `rokgallery_slice_tags_slice_id_idx` (`slice_id`)
);

--
-- Dumping data for table `#__rokgallery_slice_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__roksprocket_items`
--

DROP TABLE IF EXISTS `#__roksprocket_items`;
CREATE TABLE IF NOT EXISTS `#__roksprocket_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `provider_id` varchar(45) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module_id`),
  KEY `idx_module_order` (`module_id`,`order`)
);

--
-- Dumping data for table `#__roksprocket_items`
--

INSERT INTO `#__roksprocket_items` (`id`, `module_id`, `provider`, `provider_id`, `order`, `params`) VALUES
(451, '141', 'joomla', '21', 0, '{"tabs_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(452, '141', 'joomla', '22', 1, '{"tabs_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(453, '141', 'joomla', '23', 2, '{"tabs_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(454, '141', 'joomla', '24', 3, '{"tabs_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1081, '148', 'joomla', '25', 0, '{"headlines_item_image":"-default-","headlines_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1082, '148', 'joomla', '26', 1, '{"headlines_item_image":"-default-","headlines_item_link":"index.php?option=com_content&view=article&id=5&Itemid=112","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1083, '148', 'joomla', '27', 2, '{"headlines_item_image":"-default-","headlines_item_link":"index.php?option=com_content&view=article&id=9&Itemid=116","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1084, '148', 'joomla', '28', 3, '{"headlines_item_image":"-default-","headlines_item_link":"index.php?option=com_content&view=article&id=4&Itemid=111","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1085, '148', 'joomla', '29', 4, '{"headlines_item_image":"-default-","headlines_item_link":"http:\\/\\/sandbox.dev.rockettheme.com\\/joomla25\\/voxel\\/index.php?option=com_k2&view=latest&layout=latest&Itemid=200","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1086, '148', 'joomla', '30', 5, '{"headlines_item_image":"-default-","headlines_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1233, '138', 'joomla', '6', 0, '{"features_item_title":"New Mosaic Layout","features_item_description":"Mosaic is a custom template layout for RokSprocket. It displays an interactive arrangement of content blocks in a dynamically created grid structure, perfect for any magazine\\/news site. Tagging with icons is supported for: computers, movies, fashion, architecture, games, music, sports, or create your own!","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img1.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_6__params_features_item_image''}","features_item_link":"-default-","features_item_tags":"movies","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"headlines_item_image":"-default-","headlines_item_link":"-default-","lists_item_tags":null}'),
(1234, '138', 'joomla', '1', 1, '{"features_item_title":"Gantry Framework","features_item_description":"A comprehensive core framework that powers the features and functions of the template. Such features include an intuitive administrative interface to easily configure the template, and the 960 grid structure.","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img2.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_1__params_features_item_image&undefined''}","features_item_link":"-default-","features_item_tags":"music","mosaic_item_title":"-default-","tabs_item_title":"Title 1 Here","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"headlines_item_image":"-default-","headlines_item_link":"-default-","lists_item_tags":null}'),
(1235, '138', 'joomla', '5', 2, '{"features_item_title":"Fusion Menu","features_item_description":"A Mootools powered CSS dropdown, with MegaMenu features, which include custom column widths, multiple dropdowns, inline menu icons and inline modules and positions. These are controllable on a per menu item basis in the Menu Manager.","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img3.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_5__params_features_item_image''}","features_item_link":"-default-","features_item_tags":"computers","mosaic_item_title":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"headlines_item_image":"-default-","headlines_item_link":"-default-","lists_item_tags":null}'),
(1236, '151', 'joomla', '36', 0, '{"lists_item_title":"-default-","lists_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-lists\\/rs-list-1.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_36__params_lists_item_image''}","lists_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","lists_item_tags":"movies","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","features_item_tags":null}'),
(1237, '151', 'joomla', '34', 1, '{"lists_item_title":"-default-","lists_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-lists\\/rs-list-2.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_34__params_lists_item_image''}","lists_item_link":"index.php?option=com_k2&view=latest&layout=latest&Itemid=200","lists_item_tags":"games","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","features_item_tags":null}'),
(1238, '151', 'joomla', '33', 2, '{"lists_item_title":"-default-","lists_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-lists\\/rs-list-3.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_33__params_lists_item_image''}","lists_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","lists_item_tags":"computer","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","features_item_tags":null}'),
(1239, '151', 'joomla', '35', 3, '{"lists_item_title":"-default-","lists_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-lists\\/rs-list-4.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_35__params_lists_item_image''}","lists_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","lists_item_tags":"fashion","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","features_item_tags":null}'),
(1240, '151', 'joomla', '32', 4, '{"lists_item_title":"-default-","lists_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-lists\\/rs-list-5.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_32__params_lists_item_image''}","lists_item_link":"index.php?option=com_content&view=article&id=9&Itemid=116","lists_item_tags":"music","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","features_item_tags":null}'),
(1241, '151', 'joomla', '31', 5, '{"lists_item_title":"-default-","lists_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-lists\\/rs-list-6.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_31__params_lists_item_image''}","lists_item_link":"index.php?option=com_content&view=article&id=4&Itemid=111","lists_item_tags":"sports","mosaic_item_title":"-default-","tabs_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","features_item_tags":null}'),
(1242, '139', 'joomla', '6', 0, '{"mosaic_item_title":"Mosaic Layout","mosaic_item_description":"Mosaic, a new template layout for RokSprocket, that presents content in a dynamic and interactive grid structure; perfect for magazine sites. The grids auto-align, so it doesn''t matter if you have different sizes for images or text.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img2.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_6__params_mosaic_item_image''}","mosaic_item_link":"-default-","mosaic_item_tags":"movies","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"Praesent Adi Labero","features_item_description":"Aliquam commodo facilisis facilisis. Nullam leo lectus, pellentesque eget tempus sed, scelerisque non mi.","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img2.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_6__params_features_item_image''}","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1243, '139', 'joomla', '1', 1, '{"mosaic_item_title":"Core Framework","mosaic_item_description":"Gantry is the core of the template, providing all the major, standardized features.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img1.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_1__params_mosaic_item_image''}","mosaic_item_link":"-default-","mosaic_item_tags":"computers","tabs_item_title":"Title 1 Here","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"Lorem Ipsum Amet","features_item_description":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis viverra adipiscing arcu, sit amet pellentesque justo pharetra sed.","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img1.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_1__params_features_item_image''}","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1244, '139', 'joomla', '5', 2, '{"mosaic_item_title":"RokBooster","mosaic_item_description":"Increase the speed of your site by enabling the RokBooster plug-in. This advanced extensions will compress and combine your CSS and JavaScript into as few files as possible each, with customizable cache timeout.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img3.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_5__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","mosaic_item_tags":"games","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"Etiam Laoreet Velit","features_item_description":"Vivamus pretium, leo eget rhoncus aliquet, massa turpis scelerisque nulla, ac faucibus lacus ligula sodales lectus. ","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img3.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_5__params_features_item_image''}","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1245, '139', 'joomla', '10', 3, '{"mosaic_item_title":"12 Preset Styles","mosaic_item_description":" A selection of customization style variations. Configure background textures, light or dark mainbodys as well as accent colours. Configure all variations from the Template Manager.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img5-2.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_10__params_mosaic_item_image''}","mosaic_item_link":"-default-","mosaic_item_tags":"movies","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"Mebius Adi Tilo","features_item_description":"Gualitom pretium, leo eget rhoncus aliquet, massa turpis scelerisque nulla, ac faucibus lacus ligula sodales lectus. ","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img5.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_10__params_features_item_image''}","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1246, '139', 'joomla', '4', 4, '{"mosaic_item_title":"Typography","mosaic_item_description":"Individualize your article and\\/or modular content with the template''s custom typography, such as a plethora of list formats and notice styles.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img4.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_4__params_mosaic_item_image''}","mosaic_item_link":"-default-","mosaic_item_tags":"computers","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"Bigma Dolor Amet","features_item_description":"Totem abigus dolor sit amet, consectetur adipiscing elit. Duis viverra adipiscing arcu, sit amet pellentesque justo pharetra sed.","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-showcase\\/img4.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_4__params_features_item_image''}","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1247, '139', 'joomla', '2', 5, '{"mosaic_item_title":"82 Positions","mosaic_item_description":"A vast module positions assortment, spread over Gantry Grid Rows, split into groupings of six, for maximum flexibility, diversity and control. Customize layouts per menu item.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img6.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_2__params_mosaic_item_image''}","mosaic_item_link":"-default-","mosaic_item_tags":"music","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1248, '139', 'joomla', '27', 6, '{"mosaic_item_title":"Logo Picker","mosaic_item_description":"There are two methods of changing the Voxel logo: either via the logo picker or by manual change. You can set Logo Picker to either RokGallery or the Media Manager.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img8.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_27__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=9&Itemid=116","mosaic_item_tags":"music","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1249, '139', 'joomla', '21', 7, '{"mosaic_item_title":"RokSprocket","mosaic_item_description":"A powerful switchblade content extension, that provides an array of display options, all within one single modular framework with an intuitive control interface for all layouts.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img7.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_21__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","mosaic_item_tags":"movies","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1250, '139', 'joomla', '8', 8, '{"mosaic_item_title":"Tutorials","mosaic_item_description":"Extensive overview of template files and instructions for installing and activating the template and overview for customizing your logo with your own logo image.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img9.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_8__params_mosaic_item_image''}","mosaic_item_link":"-default-","mosaic_item_tags":"games","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1251, '139', 'joomla', '3', 9, '{"mosaic_item_title":"-default-","mosaic_item_description":"Voxel has a range of module class suffixes, both stylistic and structural. These allow you to individualize a module to create unique layouts and appearances.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img10.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_3__params_mosaic_item_image''}","mosaic_item_link":"-default-","mosaic_item_tags":"games","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1252, '139', 'joomla', '29', 10, '{"mosaic_item_title":"-default-","mosaic_item_description":"K2 is a powerful CCK extension, that dramatically expands the content power of Joomla. Voxel has custom styling to visually integrate K2 into the template.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img11.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_29__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_k2&view=latest&layout=latest&Itemid=200","mosaic_item_tags":"music","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}'),
(1253, '139', 'joomla', '30', 11, '{"mosaic_item_title":"-default-","mosaic_item_description":"RokGallery is an advanced gallery extension, resting on a custom tag based architecture. It has an non-destructive slice editor to allow you edit photos easily and swiftly.","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/rocketlauncher\\/frontpage\\/roksprocket-mosaic\\/img12.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_30__params_mosaic_item_image''}","mosaic_item_link":"index.php?option=com_content&view=article&id=6&Itemid=113","mosaic_item_tags":"computers","tabs_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","tabs_item_link":"-default-","lists_item_image":"-default-","lists_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","features_item_image":"-default-","features_item_link":"-default-","lists_item_tags":null,"features_item_tags":null}');

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

DROP TABLE IF EXISTS `#__schemas`;
CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
);

--
-- Dumping data for table `#__schemas`
--

INSERT INTO `#__schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.4-2012-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

DROP TABLE IF EXISTS `#__template_styles`;
CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
);

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'rt_voxel', 0, '1', 'rt_voxel - Default', '{"master":"true","current_id":"7","template_full_name":"Voxel","grid_system":"12","template_prefix":"voxel-","cookie_time":"31536000","name":"Preset1","copy_lang_files_if_diff":"1","main":{"style":"light","pattern":"scratch"},"accent":{"colorchooser":"#de2323","overlay":"dark"},"stylepanel":{"enabled":"1","position":"panel"},"loadtransition":"0","webfonts":{"enabled":"0","source":"google"},"font":{"family":"voxel","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","iphonegradients-priority":"5","date-priority":"6","fontsizer-priority":"7","totop-priority":"8","systemmessages-priority":"9","inactive-priority":"10","iphoneimages-priority":"11","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","fusionmenu-priority":"18","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","touchmenu-priority":"26","webfonts-priority":"27","styledeclaration-enabled":"1","logo":{"enabled":"1","position":"header-a","type":"voxel","voxel":{"logostyle":"style1"},"custom":{"image":""}},"social":{"enabled":"1","position":"header-b","facebook":"https:\\/\\/twitter.com\\/#!\\/rockettheme","twitter":"http:\\/\\/www.facebook.com\\/RocketTheme","buzz":"https:\\/\\/plus.google.com\\/114430407008695950828\\/posts","rss":"http:\\/\\/www.rockettheme.com\\/blog?format=feed&amp;type=rss"},"date":{"enabled":"0","position":"utility-a","clientside":"1","formats":"%A, %B %d, %Y"},"fontsizer":{"enabled":"0","position":"utility-b"},"login":{"enabled":"0","position":"utility-c","text":"Member Login","logouttext":"Logout"},"popup":{"enabled":"0","position":"utility-d","text":"Popup Module","width":"250","height":"235"},"branding":{"enabled":"1","position":"copyright-a"},"copyright":{"enabled":"0","position":"copyright-a","text":"\\u00a9 Copyright 2012","layout":"a:1:{i:12;a:2:{i:3;a:3:{i:0;i:3;i:1;i:6;i:2;i:3;}i:4;a:4:{i:0;i:2;i:1;i:3;i:2;i:5;i:3;i:2;}}}","showall":"0","showmax":"6"},"smartload":{"enabled":"0","text":"200","ignores":"com_community,com_contact,com_k2,com_tienda,com_weblinks","exclusion":""},"morearticles":{"enabled":"0","text":"Load More Articles","pagination":"1"},"totop":{"enabled":"1","position":"copyright-d","text":"Top"},"systemmessages":{"enabled":"1","position":"drawer"},"resetsettings":{"enabled":"0","position":"footer-b","text":"Reset Settings"},"analytics":{"enabled":"0","code":"","position":"analytics"},"menu":{"enabled":"1","type":"fusionmenu","fusionmenu":{"menutype":"mainmenu","position":"navigation-a","enable_js":"1","opacity":"1","effect":"slidefade","hidedelay":"500","menu-animation":"Circ.easeOut","menu-duration":"300","centered-offset":"0","tweak-initial-x":"-10","tweak-initial-y":"-12","tweak-subsequent-x":"-8","tweak-subsequent-y":"-11","tweak-width":"18","tweak-height":"20","enable-current-id":"0","theme":"gantry-fusion","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","module_cache":"1"},"splitmenu":{"roknavmenu_fusion_enable-current-id":"0","menutype":"mainmenu","theme":"gantry-splitmenu","cache":"0","module_cache":"1","mainmenu-position":"navigation-a","mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-position":"subnavigation","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"1","submenu-class_sfx":"","sidemenu-position":"sidebar-a","sidemenu-title":"1","sidemenu-class_sfx":"","sidemenu-module_sfx":"","sidemenu-limit_levels":"1","sidemenu-startLevel":"2","sidemenu-endLevel":"9","sidemenu-fulllevel":"0"}},"top":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"navigation":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:9;i:1;i:3;}}}","showall":"0","showmax":"6"},"header":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"showcase":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"feature":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"utility":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:8;i:1;i:4;}}}","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"a:1:{i:12;a:2:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:2;a:2:{s:2:\\"mb\\";i:8;s:2:\\"sa\\";i:4;}}}","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"extension":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"iphone-enabled":"1","android-enabled":"1","iphone-scalable":"0","iphone-switcher":{"enabled":"1","position":"mobile-copyright"},"touchmenu":{"menutype":"mainmenu","enabled":"1","position":"mobile-navigation","theme":"touch","animation":"swap","cache":"0","module_cache":"1","startLevel":"0","endLevel":"20","showAllChildren":"1"},"iphoneimages":{"enabled":"1","minWidth":"80","percentage":"12"},"mobile":{"drawer":"drawer","header":"header-a","navigation":"mobile-navigation","maintop":"content-top-a","bottom":"bottom-b","footer":"footer-a","copyright":"copyright-a"},"cache":{"enabled":"0","time":"900"},"component-enabled":"1","mainbody-enabled":"1","rtl-enabled":"1","moduleoverlays-enabled":"1","pagesuffix-enabled":"1","typography":{"enabled":"1","style":"light"},"k2":"1","selectivizr-enabled":"1"}'),
(8, 'rt_voxel', 0, '0', 'rt_voxel - Module Positions', '{"master":"7","current_id":"8","mainbodyPosition":"a:1:{i:12;a:2:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:2;a:2:{s:2:\\"mb\\";i:6;s:2:\\"sa\\";i:6;}}}"}'),
(9, 'rt_voxel', 0, '0', 'rt_voxel - Tutorials', '{"master":"7","current_id":"9","mainbodyPosition":"a:1:{i:12;a:3:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:3;a:3:{s:2:\\"sa\\";i:3;s:2:\\"mb\\";i:6;s:2:\\"sb\\";i:3;}i:2;a:2:{s:2:\\"mb\\";i:8;s:2:\\"sa\\";i:4;}}}"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

DROP TABLE IF EXISTS `#__updates`;
CREATE TABLE IF NOT EXISTS `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
);

--
-- Dumping data for table `#__updates`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__update_categories`
--

DROP TABLE IF EXISTS `#__update_categories`;
CREATE TABLE IF NOT EXISTS `#__update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
);

--
-- Dumping data for table `#__update_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

DROP TABLE IF EXISTS `#__update_sites`;
CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
);

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1335985415),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1335985415),
(3, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1335985415),
(5, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 1335985415);

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

DROP TABLE IF EXISTS `#__update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
);

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 10001),
(5, 10030),
(5, 10032),
(5, 10055);

-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

DROP TABLE IF EXISTS `#__viewlevels`;
CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
);

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

DROP TABLE IF EXISTS `#__weblinks`;
CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
);

--
-- Dumping data for table `#__weblinks`
--

INSERT INTO `#__weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 13, 0, 'Joomla Templates', 'joomla-templates', 'http://www.rockettheme.com/joomla', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-04-13 17:10:15', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 13, 0, 'WordPress Themes', 'wordpress-themes', 'http://www.rockettheme.com/wordpress', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-04-13 17:10:28', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 13, 0, 'Magento Templates', 'magento-templates', 'http://www.rockettheme.com/magento', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-04-13 17:10:40', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 13, 0, 'phpBB3 Styles', 'phpbb3-styles', 'http://www.rockettheme.com/phpbb3', '', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-04-13 17:10:51', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `#__rokgallery_files_index`
--
ALTER TABLE `#__rokgallery_files_index`
  ADD CONSTRAINT `#__rokgallery_files_index_id_idx` FOREIGN KEY (`id`) REFERENCES `#__rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `#__rokgallery_file_loves`
--
ALTER TABLE `#__rokgallery_file_loves`
  ADD CONSTRAINT `#__file_loves_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `#__rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `#__rokgallery_file_tags`
--
ALTER TABLE `#__rokgallery_file_tags`
  ADD CONSTRAINT `#__file_tags_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `#__rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `#__rokgallery_file_views`
--
ALTER TABLE `#__rokgallery_file_views`
  ADD CONSTRAINT `#__file_views_file_id__files_id` FOREIGN KEY (`file_id`) REFERENCES `#__rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `#__rokgallery_slices`
--
ALTER TABLE `#__rokgallery_slices`
  ADD CONSTRAINT `#__slices_file_id_files_id` FOREIGN KEY (`file_id`) REFERENCES `#__rokgallery_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `#__slices_gallery_id_galleries_id` FOREIGN KEY (`gallery_id`) REFERENCES `#__rokgallery_galleries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `#__rokgallery_slices_index`
--
ALTER TABLE `#__rokgallery_slices_index`
  ADD CONSTRAINT `#__rokgallery_slices_index_id_idx` FOREIGN KEY (`id`) REFERENCES `#__rokgallery_slices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `#__rokgallery_slice_tags`
--
ALTER TABLE `#__rokgallery_slice_tags`
  ADD CONSTRAINT `#__slice_tags_slice_id_slices_id` FOREIGN KEY (`slice_id`) REFERENCES `#__rokgallery_slices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
