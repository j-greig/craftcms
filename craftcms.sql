-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2017 at 03:16 PM
-- Server version: 5.6.36
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `craftcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfiles`
--

CREATE TABLE IF NOT EXISTS `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfiles`
--

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(10, 1, 1, 'o8a8104-rt-c6i6.jpg', 'image', 2000, 1500, 1350462, '2017-10-04 10:57:45', '2017-10-04 10:57:45', '2017-10-04 10:57:45', '85b9317c-53ff-4bf1-a6f6-3764801c6b7c'),
(11, 1, 1, 'bute-copyline-image-tdqs.jpg', 'image', 2000, 1500, 1446763, '2017-10-04 11:35:47', '2017-10-04 11:35:47', '2017-10-04 11:35:47', 'f6b96e5e-6e26-4559-ab60-0f54f427564f'),
(12, 1, 1, 'bute9-783z.jpg', 'image', 2000, 1500, 2242454, '2017-10-04 11:35:48', '2017-10-04 11:35:48', '2017-10-04 11:35:48', 'ec76a766-6d00-4835-b871-75bcd308b4d1'),
(13, 1, 1, 'butelogotype-nntr.jpg', 'image', 2000, 1500, 157285, '2017-10-04 11:35:48', '2017-10-04 11:35:48', '2017-10-04 11:35:48', '1dbe523f-996c-4ed1-8c92-ca897f3631b4'),
(14, 1, 1, 'o8a7886-rt-u87b.jpg', 'image', 2000, 1125, 1535141, '2017-10-04 11:35:48', '2017-10-04 11:35:49', '2017-10-04 11:35:49', '7d98cbdc-8f77-4128-a6cd-5c087b00fd00'),
(15, 1, 1, 'webgrid-dka3.jpg', 'image', 2000, 1500, 280287, '2017-10-04 11:35:49', '2017-10-04 11:35:49', '2017-10-04 11:35:49', '556bfbb3-26e7-49dd-8467-8b9ffb0518f9'),
(16, 1, 1, 'webgrid4-kbx7.jpg', 'image', 2000, 1500, 1490117, '2017-10-04 11:35:49', '2017-10-04 11:35:50', '2017-10-04 11:35:50', '71618550-c495-4db8-ade8-42f95b5e0609');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetfolders`
--

CREATE TABLE IF NOT EXISTS `craft_assetfolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetfolders`
--

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2017-08-04 11:56:28', '2017-08-04 11:56:28', '88e40bde-ab36-47ef-a2cd-9312bad25595');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE IF NOT EXISTS `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(11) NOT NULL,
  `offset` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetsources`
--

CREATE TABLE IF NOT EXISTS `craft_assetsources` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_assetsources`
--

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Images', 'images', 'Local', '{"path":"images\\/","publicURLs":"1","url":"images\\/"}', 1, 16, '2017-08-04 11:56:28', '2017-10-04 11:35:41', '07892bce-9c67-42b4-bc3b-e4366806dd4b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE IF NOT EXISTS `craft_assettransformindex` (
  `id` int(11) NOT NULL,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE IF NOT EXISTS `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE IF NOT EXISTS `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_addresses`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_addresses` (
  `id` int(11) NOT NULL,
  `attention` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countryId` int(11) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternativePhone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessTaxId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `businessId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_addresses`
--

INSERT INTO `craft_commerce_addresses` (`id`, `attention`, `title`, `firstName`, `lastName`, `countryId`, `stateId`, `address1`, `address2`, `city`, `zipCode`, `phone`, `alternativePhone`, `businessName`, `businessTaxId`, `businessId`, `stateName`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '', 'Mr', 'James', 'Greig', 77, NULL, '', '', '', '', '', '', 'SWG3', '', '', NULL, '2017-10-04 13:20:43', '2017-10-04 13:23:38', '84125601-f904-457e-ac55-1847323272b0'),
(2, '21 Billington road', 'Mr', 'James', 'Greig', 77, NULL, '21 Billington road', '', 'London', 'SE14 5QH', '', '', '', '', '', NULL, '2017-10-04 15:15:21', '2017-10-04 15:15:21', '07d586ae-964c-419c-a0b4-c98f689e7c97');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_countries`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `stateRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_countries`
--

INSERT INTO `craft_commerce_countries` (`id`, `name`, `iso`, `stateRequired`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Andorra', 'AD', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '668f9cc0-70f0-4e49-837e-26134cd20acf'),
(2, 'United Arab Emirates', 'AE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '55ac07d4-7369-425d-8971-ce8ad541f59b'),
(3, 'Afghanistan', 'AF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bd86de2e-3b42-45ff-a9e0-e4d2a18faa9b'),
(4, 'Antigua and Barbuda', 'AG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '21c1961c-ef1a-46ad-95f4-4265bb0cc855'),
(5, 'Anguilla', 'AI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e19037db-ce19-4ab2-b841-e0af50a28f0a'),
(6, 'Albania', 'AL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'de810160-f233-412c-aafa-f78bfc085ca6'),
(7, 'Armenia', 'AM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '03f8dbc9-f039-4db0-a269-e9f3b8378abc'),
(8, 'Angola', 'AO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7a5b64da-3c94-4e04-8fff-ec9ddf6c68c1'),
(9, 'Antarctica', 'AQ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2eb1cbd0-038e-4fb0-b6e3-0267958665ae'),
(10, 'Argentina', 'AR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3ea6c7c9-b189-4cf3-a13e-6ef3b7da5ca3'),
(11, 'American Samoa', 'AS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bb03e48d-edd0-4060-9bbb-8ffc975159e7'),
(12, 'Austria', 'AT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '52f19a15-f367-4303-812f-145d65b77d6e'),
(13, 'Australia', 'AU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b2d4d31a-32d7-4fed-81a2-914c90f2cc12'),
(14, 'Aruba', 'AW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e3148be8-9b4c-4c8f-996e-9f4fdaeb0f7c'),
(15, 'Aland Islands', 'AX', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8f24b459-5290-4826-a660-cde1ed82444a'),
(16, 'Azerbaijan', 'AZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '29f1aba0-c1de-4dc1-aa3e-3b4e42e6e987'),
(17, 'Bosnia and Herzegovina', 'BA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '565093a6-4485-4e86-b83e-382452a5f43a'),
(18, 'Barbados', 'BB', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '91f712db-ea7c-41df-a131-17b1d3165337'),
(19, 'Bangladesh', 'BD', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '09f4c620-b6a9-4ab6-9908-17086503bb54'),
(20, 'Belgium', 'BE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c8819810-61d2-43d5-a450-c0cacf976d7a'),
(21, 'Burkina Faso', 'BF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1d9d0f40-f401-4ffe-b852-95c39f7b6156'),
(22, 'Bulgaria', 'BG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5f90e0ba-0426-46ed-9b3b-31f02ac33fc2'),
(23, 'Bahrain', 'BH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '52183fb7-bae3-4215-afe1-a603dd14e625'),
(24, 'Burundi', 'BI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '76804daa-1ae2-40c7-b325-c9336893b26b'),
(25, 'Benin', 'BJ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '70d16b44-4e55-4e73-9cc4-f5e9e48a8a23'),
(26, 'Saint Barthelemy', 'BL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f69aefd7-4e6f-4845-9606-8d46523abec2'),
(27, 'Bermuda', 'BM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '46f51454-9f8f-4eed-a19e-17bd09140005'),
(28, 'Brunei Darussalam', 'BN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '0262674f-1aed-49a1-941d-7f5af845dfee'),
(29, 'Bolivia', 'BO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c3aa2d87-e69e-47ad-8d13-4941372e4096'),
(30, 'Bonaire, Sint Eustatius and Saba', 'BQ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'efec6a05-76f1-48de-aa47-01ec38306265'),
(31, 'Brazil', 'BR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5b6a9fee-b3a3-4649-acea-2f293a731edf'),
(32, 'Bahamas', 'BS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c8174c58-bc1b-43df-9aa4-f9a87eb4d7ba'),
(33, 'Bhutan', 'BT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '74bf57e4-554f-4e60-ada1-7a3927505679'),
(34, 'Bouvet Island', 'BV', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '4119d346-0278-421d-876e-d7f9d70560e0'),
(35, 'Botswana', 'BW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5227f67f-2339-4011-9eb5-2f63e0c7c28b'),
(36, 'Belarus', 'BY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8720fc22-2987-4c40-9f18-7bbd36c8e719'),
(37, 'Belize', 'BZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '15ebe8c4-832b-44e6-a529-37effafa547d'),
(38, 'Canada', 'CA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3f7d4483-6fdf-451a-a884-e1902a6124f1'),
(39, 'Cocos (Keeling) Islands', 'CC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a2dd2874-9b57-4ca2-9426-646630a34109'),
(40, 'Democratic Republic of Congo', 'CD', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e8aec14d-2f1e-4c82-bbb4-bec4d752dab8'),
(41, 'Central African Republic', 'CF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2a6df43a-e3a5-4acd-b7fe-2dee3c3fdee2'),
(42, 'Congo', 'CG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8447dc32-adf1-4d45-9eb3-23f70e4aa9ef'),
(43, 'Switzerland', 'CH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a3be877d-6c62-4e84-9db4-7ab4efec1adc'),
(44, 'Ivory Coast', 'CI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd5b5939f-5f9f-40d6-a2c4-126748abec4a'),
(45, 'Cook Islands', 'CK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f6e6cd5b-c230-43e0-ae09-f719d6e4d572'),
(46, 'Chile', 'CL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '404ea6ee-2758-4d54-9f76-6136988f5de3'),
(47, 'Cameroon', 'CM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f34333dd-5424-4a73-8370-0ab5f03dc8aa'),
(48, 'China', 'CN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b75b92c8-8ccf-42ae-b97b-c300f4fe0a20'),
(49, 'Colombia', 'CO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e0b491b3-581d-4f37-8d9d-dc087e7a2632'),
(50, 'Costa Rica', 'CR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a7b4946b-a065-45a4-bd78-0920316815a7'),
(51, 'Cuba', 'CU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c8bffaa4-3e53-4ac0-9000-3bbb2fc2a86e'),
(52, 'Cape Verde', 'CV', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8e75953c-5894-465c-9874-cea27e645071'),
(53, 'Curacao', 'CW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '96e5c888-6bd7-47e3-b1de-385be01ab91e'),
(54, 'Christmas Island', 'CX', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c3f728ee-7da8-420f-b06f-9b20f9b8a24f'),
(55, 'Cyprus', 'CY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '508499a4-a206-400a-917c-147093837893'),
(56, 'Czech Republic', 'CZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '612ce939-0fdd-4ca7-b097-b4c57a12a53b'),
(57, 'Germany', 'DE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1599d352-daa4-49f9-8d93-0f90e029dab9'),
(58, 'Djibouti', 'DJ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '16e8fe5b-3b45-4710-914b-14010d432679'),
(59, 'Denmark', 'DK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '9df84d1c-df8b-4cb0-ae93-703d4c0014e7'),
(60, 'Dominica', 'DM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '71ab06ef-459b-4c89-930a-91c25ed51e69'),
(61, 'Dominican Republic', 'DO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a6dd033b-0c27-4d12-a206-826ac0445a8e'),
(62, 'Algeria', 'DZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3ab7c7ed-04c0-47c0-8f82-a61df82d31be'),
(63, 'Ecuador', 'EC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '65b5103e-a656-417d-a6de-203fc468c645'),
(64, 'Estonia', 'EE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bf94a25c-8867-418d-a2a6-ecc8bf1caae5'),
(65, 'Egypt', 'EG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'dbe1acc1-a732-451b-b5ca-6a530aeec246'),
(66, 'Western Sahara', 'EH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '871497a0-29b7-4bc3-9405-3b4da13775f8'),
(67, 'Eritrea', 'ER', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b7c83853-1be3-496e-9b1f-9ad82f33821a'),
(68, 'Spain', 'ES', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8f0f1cf1-2ed7-44ed-ae2b-af43bdfd9ac7'),
(69, 'Ethiopia', 'ET', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '130f189e-1902-425e-8aab-95b2a6159fc7'),
(70, 'Finland', 'FI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '35aa1a89-ef45-43fb-a959-98dd3b947b42'),
(71, 'Fiji', 'FJ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7f53b331-9e01-45b4-a049-fabce4c078ed'),
(72, 'Falkland Islands (Malvinas)', 'FK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'cb1c34c5-9f8a-43a2-9750-b376c45b2733'),
(73, 'Micronesia', 'FM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'cf988603-ac0f-4230-a049-c6a030ab87ce'),
(74, 'Faroe Islands', 'FO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6af927f6-ee46-4385-b38b-8d7e90c80fbd'),
(75, 'France', 'FR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd1f1a1f7-6e3a-4bc6-99fc-9039f72da80f'),
(76, 'Gabon', 'GA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '46ff89b2-6ffd-4b6a-b660-7810e2912e73'),
(77, 'United Kingdom', 'GB', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f4ea45c7-c453-4f9d-8fbd-414f14a0445a'),
(78, 'Grenada', 'GD', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '63c53c8f-0921-447e-87d8-ce395d560f80'),
(79, 'Georgia', 'GE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f840bb93-8266-434b-8a7e-3c6dbebcec5c'),
(80, 'French Guiana', 'GF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '0deab93b-9d21-4a10-ac49-33ee44e448c9'),
(81, 'Guernsey', 'GG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6d13cdbe-6663-45e2-ac5c-9878de2725ab'),
(82, 'Ghana', 'GH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1bad7500-d588-4895-87c6-c669e259c304'),
(83, 'Gibraltar', 'GI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f1860087-38d8-4c90-978a-868b3b718142'),
(84, 'Greenland', 'GL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3a282286-fa0b-414c-a6dd-54aecc3777ee'),
(85, 'Gambia', 'GM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3d6c6882-b131-4c08-ae53-df5c2d768e21'),
(86, 'Guinea', 'GN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd6f08cdc-5b4a-44c0-829a-b042ee0c0832'),
(87, 'Guadeloupe', 'GP', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '84dd867b-bf5b-4e39-9e8f-5f944567df16'),
(88, 'Equatorial Guinea', 'GQ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2dc1365f-066e-4802-b2f1-de247f874da0'),
(89, 'Greece', 'GR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '263c6e43-b1e3-428e-90e3-f1cfb427bb44'),
(90, 'S. Georgia and S. Sandwich Isls.', 'GS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '609a8517-a7cb-4800-b34d-14cb9415d0ff'),
(91, 'Guatemala', 'GT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2bdecaa6-3d42-48d4-a092-1206d4b0254f'),
(92, 'Guam', 'GU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '034bef34-1d11-480f-bcce-1290237b3933'),
(93, 'Guinea-Bissau', 'GW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6dd7820a-74df-42fd-bd6b-f8cbe287a663'),
(94, 'Guyana', 'GY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6e0aac0b-c685-4237-9625-337cd2906e43'),
(95, 'Hong Kong', 'HK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b6b03ad3-ec8b-49cd-aa72-061284888dc3'),
(96, 'Heard and McDonald Islands', 'HM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5572545d-c1df-46a0-8cea-34e3631e6c02'),
(97, 'Honduras', 'HN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c2735510-4b01-4693-a4cf-564be70597b0'),
(98, 'Croatia (Hrvatska)', 'HR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2cc22b7f-799e-4cdb-9599-0f9fb91664e5'),
(99, 'Haiti', 'HT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e78ec620-87e4-4d9f-8157-befc4f5719e9'),
(100, 'Hungary', 'HU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '33c7003e-1d49-402f-bb26-525aeefab140'),
(101, 'Indonesia', 'ID', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bae25958-a36b-4e21-aef4-9990d41606b0'),
(102, 'Ireland', 'IE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f3a8d003-650a-4ffb-a855-f27a2c00a8da'),
(103, 'Israel', 'IL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6621fb3a-7e0e-4683-9a59-1bb26104e992'),
(104, 'Isle Of Man', 'IM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '86ff275c-0245-4eed-bf94-49c29d9e037b'),
(105, 'India', 'IN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5bed12ef-b1bc-4fa5-9702-ee50dab7c634'),
(106, 'British Indian Ocean Territory', 'IO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5d057194-27a5-4dbd-997c-4b883be4f0ee'),
(107, 'Iraq', 'IQ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '63c9b4db-e937-4e0a-97db-9e32609c7bf9'),
(108, 'Iran', 'IR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e46e0b8a-ce06-499e-9763-ecbbda882f43'),
(109, 'Iceland', 'IS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e5a25e02-96c4-429b-9486-850575f699bb'),
(110, 'Italy', 'IT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'dd74660d-f592-4b39-993e-d4648c034188'),
(111, 'Jersey', 'JE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '46b617f9-17f4-48a0-b95e-65ea457b9086'),
(112, 'Jamaica', 'JM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '07b82f30-a341-4333-961b-a4084c321b1b'),
(113, 'Jordan', 'JO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '70bc03d1-5b06-49ca-9183-b819d3cb7b6f'),
(114, 'Japan', 'JP', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8f8ecf86-3006-45ca-9b5f-6a68f20e72a3'),
(115, 'Kenya', 'KE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6bc60583-2311-4948-b750-2e89be5d96c7'),
(116, 'Kyrgyzstan', 'KG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '542fe108-f920-439c-bbc5-2aaff2da23d8'),
(117, 'Cambodia', 'KH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '71cedaac-eaac-4209-9ad0-ddc0fbea5c3b'),
(118, 'Kiribati', 'KI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '03685d6f-7c5e-4a60-a28a-05bdb829d8ac'),
(119, 'Comoros', 'KM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '9b6cdc4c-114f-451a-a10f-6a3b7999e99b'),
(120, 'Saint Kitts and Nevis', 'KN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ee20b2cc-5d22-403f-b132-f5859c119633'),
(121, 'Korea (North)', 'KP', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '74c62f02-de48-403d-a696-689603847ff1'),
(122, 'Korea (South)', 'KR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '07759712-0d2c-44e5-9a93-0538e403a76c'),
(123, 'Kuwait', 'KW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '140cc6c9-a337-474c-8e66-9251c6dae5c3'),
(124, 'Cayman Islands', 'KY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '980cd7cf-2099-42ad-b843-19807405ffa9'),
(125, 'Kazakhstan', 'KZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1c962445-32d5-4d25-8857-da06279fd13d'),
(126, 'Laos', 'LA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b36403c5-3121-497f-afc9-ea9f2963f358'),
(127, 'Lebanon', 'LB', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'dcf796e0-369c-4c39-89c3-25a255e46bc4'),
(128, 'Saint Lucia', 'LC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '27d2e056-d1d4-4268-8e93-b98ddf95bb71'),
(129, 'Liechtenstein', 'LI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '42d51a3d-40e0-41cc-a0e9-c959dc67f176'),
(130, 'Sri Lanka', 'LK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'fe72c806-670a-4607-9bf2-94430d736800'),
(131, 'Liberia', 'LR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '69aefc2b-6af6-4af2-942b-99da36df0c9b'),
(132, 'Lesotho', 'LS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd150e997-384e-429b-a912-4d2ebac5db2b'),
(133, 'Lithuania', 'LT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '37eb6aeb-a2e8-4aea-9a20-0da5e2a09fef'),
(134, 'Luxembourg', 'LU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '178e84e0-9b78-443b-8320-817257c3ae43'),
(135, 'Latvia', 'LV', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '83f98722-a994-49af-afd0-2f28cc1ee2e5'),
(136, 'Libya', 'LY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd1571cde-9c82-49b5-8f69-f5d0c907a54a'),
(137, 'Morocco', 'MA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bc75c8c4-2660-4aaa-a742-c4a2102387ae'),
(138, 'Monaco', 'MC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b145b40d-9fe8-4667-af61-5fd2aabf2bb9'),
(139, 'Moldova', 'MD', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c7c0349f-5b3d-4bd8-9307-372030dce806'),
(140, 'Montenegro', 'ME', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '10801806-4b8d-4cf0-a8bd-96e86d348cb3'),
(141, 'Saint Martin (French part)', 'MF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e314cad0-9a93-4153-b07a-24f095cca07f'),
(142, 'Madagascar', 'MG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bc6b0d25-0140-423b-8ff7-8dfb995db112'),
(143, 'Marshall Islands', 'MH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '18b6c1cb-09fd-4207-a7f8-e04102dcfe5d'),
(144, 'Macedonia', 'MK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '976882e9-b0e7-4587-bca5-1a11f1370ea7'),
(145, 'Mali', 'ML', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b1138ebb-a925-43b6-86d8-cbad9dc2f594'),
(146, 'Burma (Myanmar)', 'MM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '552ddd5f-e451-4e53-9e13-5cce572350fc'),
(147, 'Mongolia', 'MN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '9fdce30c-a6a9-44d8-921b-9812c2cc721f'),
(148, 'Macau', 'MO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a0f6ea52-a292-4761-b797-49e1479c8732'),
(149, 'Northern Mariana Islands', 'MP', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2c6acc27-6a4f-4ab1-8bff-fc88ef66da2f'),
(150, 'Martinique', 'MQ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b1a9a432-73dd-4ae3-9436-b1ffacd15450'),
(151, 'Mauritania', 'MR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '99530070-94e6-46bb-991a-a06d654ff883'),
(152, 'Montserrat', 'MS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f5e381cd-c6d0-4331-8650-f14815cdfc73'),
(153, 'Malta', 'MT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'cf6ee4e8-3ffd-4238-b6ba-f77584301695'),
(154, 'Mauritius', 'MU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '67bfb4d7-4e62-4b84-9c5a-d6456ed67f27'),
(155, 'Maldives', 'MV', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c119c1dc-4da3-4816-9f65-345620b777e9'),
(156, 'Malawi', 'MW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '28726909-45b8-443f-9cdd-a3975fcb1536'),
(157, 'Mexico', 'MX', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '991167aa-b817-434e-869d-4b5bcb4d0cd7'),
(158, 'Malaysia', 'MY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '227c7281-8a81-4d3a-bffa-febca67c32cb'),
(159, 'Mozambique', 'MZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6f6d61e3-b0a3-4ad5-9909-13718808928c'),
(160, 'Namibia', 'NA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c8f3e19c-b095-4ac5-880e-d7c274a588bc'),
(161, 'New Caledonia', 'NC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a72fa869-121b-4ab7-a999-4399f093ce9c'),
(162, 'Niger', 'NE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e4ca69da-c582-47b8-af30-1c6d341268a7'),
(163, 'Norfolk Island', 'NF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'de293c17-9419-4608-8fd6-4eb75b25d645'),
(164, 'Nigeria', 'NG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3feb40f6-b7e0-460b-944c-984602f702db'),
(165, 'Nicaragua', 'NI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b5775819-f9ab-43ef-9d8d-fedf203ec57b'),
(166, 'Netherlands', 'NL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ce67218f-a65b-4e0b-9cb2-d468bb890f01'),
(167, 'Norway', 'NO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '99782ea5-d1c9-46d9-a2f0-9856e7ff6578'),
(168, 'Nepal', 'NP', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd977c4e4-2138-4b58-af16-6f88902e1819'),
(169, 'Nauru', 'NR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '89aeaa35-8942-4e00-b028-3af3f326dd02'),
(170, 'Niue', 'NU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '39eded0c-3014-411e-b5e9-db8792357a72'),
(171, 'New Zealand', 'NZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3322a7b3-0143-4269-bd64-87afb16597b3'),
(172, 'Oman', 'OM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c3b94afd-720e-4504-bba5-3a4758b1acb1'),
(173, 'Panama', 'PA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ad8c4819-50d5-4b6a-918f-71e976ea1da2'),
(174, 'Peru', 'PE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '98351296-c272-4aea-a320-9d51fe9c9a66'),
(175, 'French Polynesia', 'PF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '73b36845-0b14-4ede-b26f-052ffeea827e'),
(176, 'Papua New Guinea', 'PG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3f0a00bd-54f7-4d0e-8bb6-9c6a827f0b7a'),
(177, 'Philippines', 'PH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '25887c12-dc28-4bdf-a5e2-989bfe52c85e'),
(178, 'Pakistan', 'PK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '26fa2a58-c1dd-4c3b-9f43-7650f4fc9fd9'),
(179, 'Poland', 'PL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bb7da809-1b77-4b83-93a4-7f8002dea02a'),
(180, 'St. Pierre and Miquelon', 'PM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd3bd166f-82a6-44c4-88f8-80f7cd543e43'),
(181, 'Pitcairn', 'PN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1737e356-096a-41b7-982d-5e47becaf0bd'),
(182, 'Puerto Rico', 'PR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '4e04da6c-bc4e-455f-a352-c7e0e4c43529'),
(183, 'Palestinian Territory, Occupied', 'PS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '385dd7ab-efad-4c5c-8ad1-6f838a59a637'),
(184, 'Portugal', 'PT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '46b312f3-9cdc-49ac-8fe8-34b353fd8bbc'),
(185, 'Palau', 'PW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a0ade371-da99-4867-b4b6-f7e3b2424e63'),
(186, 'Paraguay', 'PY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '807d861c-9ee0-4414-bb17-3a9648d5477f'),
(187, 'Qatar', 'QA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7ec0299e-a3a8-4d13-94bf-d0f8a1dea71f'),
(188, 'Reunion', 'RE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b4f28f3a-9775-4884-8395-7f59332c438b'),
(189, 'Romania', 'RO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'acacaf0e-46db-469d-9d62-8eef85a9e05c'),
(190, 'Republic of Serbia', 'RS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3f368ab5-c886-4dda-9d68-e0290c192cc5'),
(191, 'Russia', 'RU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '0799ba41-f1e5-4cbb-85de-8c6b7a294c84'),
(192, 'Rwanda', 'RW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '61744d94-3243-40ef-b203-89c1c7b7a9c7'),
(193, 'Saudi Arabia', 'SA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7e027b9f-e4fd-4e1c-bb07-97400e21d336'),
(194, 'Solomon Islands', 'SB', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2574c0dd-76c9-4b0f-a89c-6c8b3bacac27'),
(195, 'Seychelles', 'SC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7d67b772-2395-4403-8693-40a089c32eae'),
(196, 'Sudan', 'SD', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '43df5920-bdcf-4bf8-bd26-007b713ea367'),
(197, 'Sweden', 'SE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '23a12eb0-8192-420d-9175-91077295e64b'),
(198, 'Singapore', 'SG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'cee2ecef-95fd-453c-97bd-583193ebec6a'),
(199, 'St. Helena', 'SH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f0b0c665-dde2-44b2-9cd4-9718c4ccdd33'),
(200, 'Slovenia', 'SI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '62e50e6b-ec81-44fb-b1ae-2b6e345ffc9b'),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ac196eee-0642-458c-ae21-eb845ea5059c'),
(202, 'Slovak Republic', 'SK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6cbfe610-3ef8-44fb-8e60-1ae0877f75f8'),
(203, 'Sierra Leone', 'SL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3ba33287-fa2b-4796-96fb-6be651f93748'),
(204, 'San Marino', 'SM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a48b4147-89d5-4f2e-bc07-8a6c5f572a1a'),
(205, 'Senegal', 'SN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b2b42b91-1a65-44ca-bb85-387461e80f8e'),
(206, 'Somalia', 'SO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f28c5c51-e274-4903-9c61-f8272ad5156d'),
(207, 'Suriname', 'SR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd7061591-1865-44f7-a566-287821a30496'),
(208, 'South Sudan', 'SS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1cf6a965-090d-4df5-9004-c638f93561cc'),
(209, 'Sao Tome and Principe', 'ST', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6e7d5c90-72b7-42b0-b272-8e274e2cb75a'),
(210, 'El Salvador', 'SV', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6577992d-0844-43e6-a849-89be6b46105b'),
(211, 'Sint Maarten (Dutch part)', 'SX', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ef9d2137-b120-4ee3-9c18-2914dd76fdb1'),
(212, 'Syria', 'SY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '143370c1-add9-47e7-a6fd-5f4048308338'),
(213, 'Swaziland', 'SZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7214aeac-5209-4682-8ac4-2fe9ab11ea67'),
(214, 'Turks and Caicos Islands', 'TC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '905811fd-ca33-42b5-bb42-653281bd4b73'),
(215, 'Chad', 'TD', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b9e0ef1c-cf70-455b-8d36-6cf32916b1c5'),
(216, 'French Southern Territories', 'TF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e40afb18-4df8-4698-ace4-9b75eee7a5f0'),
(217, 'Togo', 'TG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c297bad7-c3b9-4dfd-a3cc-6a934035682e'),
(218, 'Thailand', 'TH', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '0ae01f88-ea44-406e-a37c-6c2e4630df54'),
(219, 'Tajikistan', 'TJ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ba0b2bc0-d639-40bd-86e0-f8e98fbd5f8a'),
(220, 'Tokelau', 'TK', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '59245ff5-9543-4c49-aaa5-2d08e80b5cdc'),
(221, 'Timor-Leste', 'TL', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7bc2f576-c755-452c-8ff1-d2f5f15d518b'),
(222, 'Turkmenistan', 'TM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2e556eeb-1f24-4ca2-baac-2b75b422b828'),
(223, 'Tunisia', 'TN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '54762cca-baea-42e1-ae87-3030760482f6'),
(224, 'Tonga', 'TO', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '0f27cd39-f853-4d59-bbe4-6359afde9708'),
(225, 'Turkey', 'TR', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'aaa77c8c-eaa5-4967-8713-585a95e20ef4'),
(226, 'Trinidad and Tobago', 'TT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd8d931b6-6592-4910-a547-e1a0d06cf628'),
(227, 'Tuvalu', 'TV', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '86b31fb0-93e0-4e78-a463-36b095cd697f'),
(228, 'Taiwan', 'TW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '020251a5-c15a-47be-aee6-59bf2a459180'),
(229, 'Tanzania', 'TZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c8c55b8f-5e10-4233-846d-f1ce683c39c7'),
(230, 'Ukraine', 'UA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b02f0ec3-0847-4806-ac60-8f44c992afd2'),
(231, 'Uganda', 'UG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a582a99e-a042-4310-9f32-4891ab644a4e'),
(232, 'United States Minor Outlying Islands', 'UM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '017679b0-82c6-4fae-a858-2122ef1dd4f1'),
(233, 'United States', 'US', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '888a184b-23bf-4c25-9651-5eb112722416'),
(234, 'Uruguay', 'UY', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2334ff12-bd9e-4168-bb55-c04e08353338'),
(235, 'Uzbekistan', 'UZ', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ec291586-6dd7-4466-ad21-3a21fd1c1a15'),
(236, 'Vatican City State (Holy See)', 'VA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7b389baf-2e66-4b78-9ab3-1583e2ea0302'),
(237, 'Saint Vincent and the Grenadines', 'VC', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c51edc09-cd6e-4463-b06a-7ffedca9b06b'),
(238, 'Venezuela', 'VE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '357677ad-c5f5-459c-a2bd-41907f3df613'),
(239, 'Virgin Islands (British)', 'VG', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6461861f-8ca5-408f-a117-65e3dce5dc6d'),
(240, 'Virgin Islands (U.S.)', 'VI', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e2212a1b-26d6-4ef2-9f06-76c665045e3e'),
(241, 'Viet Nam', 'VN', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bd88ab48-606d-4daa-96b7-82441e5f0792'),
(242, 'Vanuatu', 'VU', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '85e131b7-52d9-408e-ad5c-463657981374'),
(243, 'Wallis and Futuna Islands', 'WF', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3382037d-2dc9-4736-9cb2-d0143fdcbae3'),
(244, 'Samoa', 'WS', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '06065256-e25d-41e4-832c-26db61cd48a3'),
(245, 'Yemen', 'YE', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd12a1e7f-e44d-4f59-a835-9392bad48592'),
(246, 'Mayotte', 'YT', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a02be1ca-a6c6-47d4-acf9-8c610defd5a2'),
(247, 'South Africa', 'ZA', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c30f3214-9cd4-4c2a-98ca-2d9166b97c71'),
(248, 'Zambia', 'ZM', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7a3c5bf8-7ffd-4905-8883-8783999a066c'),
(249, 'Zimbabwe', 'ZW', 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '4f4066f7-6e13-4528-9d62-ea37e6af6b85');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_customers`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_customers` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `lastUsedBillingAddressId` int(11) DEFAULT NULL,
  `lastUsedShippingAddressId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_customers`
--

INSERT INTO `craft_commerce_customers` (`id`, `userId`, `lastUsedBillingAddressId`, `lastUsedShippingAddressId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, NULL, '2017-10-04 13:20:18', '2017-10-04 13:20:18', '0d670238-a978-4ae3-847e-58e685fea248'),
(2, NULL, NULL, NULL, '2017-10-04 15:14:09', '2017-10-04 15:14:09', '8a2eb792-8058-40cf-87cb-85f87141c866'),
(3, NULL, NULL, NULL, '2017-10-04 15:15:56', '2017-10-04 15:15:56', '6091e9b0-54af-4377-8c9d-a4f3d71e2038'),
(4, NULL, NULL, NULL, '2017-10-04 15:15:59', '2017-10-04 15:15:59', '19ee4dbb-c013-4d9a-a1d0-eb2720886378'),
(5, NULL, NULL, NULL, '2017-10-04 15:16:06', '2017-10-04 15:16:06', '6433f634-6dc2-4103-ab44-bb37bcd0f3eb'),
(6, NULL, NULL, NULL, '2017-10-04 15:16:08', '2017-10-04 15:16:08', '55d2cae7-1349-4945-b132-a342296980c2'),
(7, NULL, NULL, NULL, '2017-10-04 15:16:13', '2017-10-04 15:16:13', '60238e51-5d3f-48c2-b614-9948e915e24b'),
(8, NULL, NULL, NULL, '2017-10-04 15:16:16', '2017-10-04 15:16:16', '86edded1-4821-47dd-a0f2-be32e5258c01'),
(9, NULL, NULL, NULL, '2017-10-04 15:16:55', '2017-10-04 15:16:55', 'ef7928fc-942f-4cb4-956d-08c5b0ad7244');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_customers_addresses`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_customers_addresses` (
  `id` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `addressId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_customers_addresses`
--

INSERT INTO `craft_commerce_customers_addresses` (`id`, `customerId`, `addressId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, '2017-10-04 13:20:43', '2017-10-04 13:23:38', '696962ae-88a0-4cc0-b37f-3b347f57815b'),
(2, 2, 2, '2017-10-04 15:15:21', '2017-10-04 15:15:21', '570900db-7a7a-476d-963c-0ddddedb04d3');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_customer_discountuses`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_customer_discountuses` (
  `id` int(11) NOT NULL,
  `discountId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `uses` int(10) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_discounts`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_discounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perUserLimit` int(10) unsigned NOT NULL DEFAULT '0',
  `perEmailLimit` int(10) unsigned NOT NULL DEFAULT '0',
  `totalUseLimit` int(10) unsigned NOT NULL DEFAULT '0',
  `totalUses` int(10) unsigned NOT NULL DEFAULT '0',
  `dateFrom` datetime DEFAULT NULL,
  `dateTo` datetime DEFAULT NULL,
  `purchaseTotal` int(11) NOT NULL DEFAULT '0',
  `purchaseQty` int(11) NOT NULL DEFAULT '0',
  `maxPurchaseQty` int(11) NOT NULL DEFAULT '0',
  `baseDiscount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `perItemDiscount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `percentDiscount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `percentageOffSubject` enum('original','discounted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'discounted',
  `excludeOnSale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `freeShipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allGroups` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allProducts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allProductTypes` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `stopProcessing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_discount_products`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_discount_products` (
  `id` int(11) NOT NULL,
  `discountId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_discount_producttypes`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_discount_producttypes` (
  `id` int(11) NOT NULL,
  `discountId` int(11) NOT NULL,
  `productTypeId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_discount_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_discount_usergroups` (
  `id` int(11) NOT NULL,
  `discountId` int(11) NOT NULL,
  `userGroupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_emails`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_emails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recipientType` enum('customer','custom') COLLATE utf8_unicode_ci DEFAULT 'custom',
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bcc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `templatePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_lineitems`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_lineitems` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `purchasableId` int(11) DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `optionsSignature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(14,4) unsigned NOT NULL,
  `saleAmount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `salePrice` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `taxIncluded` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `shippingCost` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `discount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `weight` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `height` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `length` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `width` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `total` decimal(14,4) unsigned NOT NULL DEFAULT '0.0000',
  `qty` int(10) unsigned NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `snapshot` text COLLATE utf8_unicode_ci NOT NULL,
  `taxCategoryId` int(11) NOT NULL,
  `shippingCategoryId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_lineitems`
--

INSERT INTO `craft_commerce_lineitems` (`id`, `orderId`, `purchasableId`, `options`, `optionsSignature`, `price`, `saleAmount`, `salePrice`, `tax`, `taxIncluded`, `shippingCost`, `discount`, `weight`, `height`, `length`, `width`, `total`, `qty`, `note`, `snapshot`, `taxCategoryId`, `shippingCategoryId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 25, 20, '[]', 'd751713988987e9331980363e24189ce', 20.0000, 0.0000, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 100.0000, 50.0000, 20.0000, 1, NULL, '{"id":"20","enabled":"1","archived":"0","locale":"en_gb","localeEnabled":"1","slug":"parka-with-stripes-on-back","uri":null,"dateCreated":"2017-10-04 13:14:09","dateUpdated":"2017-10-04 13:23:25","root":null,"lft":null,"rgt":null,"level":null,"searchScore":null,"productId":"19","isDefault":"1","sku":"Parka with Stripes on Back","price":"20.0000","sortOrder":"1","width":"50.0000","height":"200.0000","length":"100.0000","weight":"0.0000","stock":"0","unlimitedStock":"1","minQty":null,"maxQty":null,"onSale":0,"cpEditUrl":"#","product":{"id":"19","enabled":"1","archived":"0","locale":"en_gb","localeEnabled":"1","slug":"parka-with-stripes-on-back","uri":"shop\\/products\\/parka-with-stripes-on-back","dateCreated":"2017-10-04 13:14:09","dateUpdated":"2017-10-04 13:23:25","root":null,"lft":null,"rgt":null,"level":null,"searchScore":null,"typeId":"1","taxCategoryId":"1","shippingCategoryId":"1","promotable":"1","freeShipping":"0","postDate":"2017-10-04 13:14:00","expiryDate":null,"defaultVariantId":"20","defaultSku":"Parka with Stripes on Back","defaultPrice":"20.0000","defaultHeight":"200.0000","defaultLength":"100.0000","defaultWidth":"50.0000","defaultWeight":"0.0000","title":"Parka with Stripes on Back"},"description":"Parka with Stripes on Back","purchasableId":"20","options":[]}', 1, 1, '2017-10-04 13:20:19', '2017-10-04 15:16:55', '6895a203-6d01-4d02-9696-19d00a40f829'),
(2, 26, 20, '{"giftWrapped":"no"}', '3e4afd673bf6ab55b4118b13d600b211', 20.0000, 0.0000, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 200.0000, 100.0000, 50.0000, 20.0000, 1, NULL, '{"id":"20","enabled":"1","archived":"0","locale":"en_gb","localeEnabled":"1","slug":"parka-with-stripes-on-back","uri":null,"dateCreated":"2017-10-04 13:14:09","dateUpdated":"2017-10-04 13:23:25","root":null,"lft":null,"rgt":null,"level":null,"searchScore":null,"productId":"19","isDefault":"1","sku":"Parka with Stripes on Back","price":"20.0000","sortOrder":"1","width":"50.0000","height":"200.0000","length":"100.0000","weight":"0.0000","stock":"0","unlimitedStock":"1","minQty":null,"maxQty":null,"onSale":0,"cpEditUrl":"#","product":{"id":"19","enabled":"1","archived":"0","locale":"en_gb","localeEnabled":"1","slug":"parka-with-stripes-on-back","uri":"shop\\/products\\/parka-with-stripes-on-back","dateCreated":"2017-10-04 13:14:09","dateUpdated":"2017-10-04 13:23:25","root":null,"lft":null,"rgt":null,"level":null,"searchScore":null,"typeId":"1","taxCategoryId":"1","shippingCategoryId":"1","promotable":"1","freeShipping":"0","postDate":"2017-10-04 13:14:00","expiryDate":null,"defaultVariantId":"20","defaultSku":"Parka with Stripes on Back","defaultPrice":"20.0000","defaultHeight":"200.0000","defaultLength":"100.0000","defaultWidth":"50.0000","defaultWeight":"0.0000","title":"Parka with Stripes on Back"},"description":"Parka with Stripes on Back","purchasableId":"20","options":{"giftWrapped":"no"}}', 1, 1, '2017-10-04 15:14:09', '2017-10-04 15:15:26', '15dd6e06-b87c-47b5-a236-480db26fbe81');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_orderadjustments`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_orderadjustments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL,
  `included` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `optionsJson` text COLLATE utf8_unicode_ci NOT NULL,
  `orderId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_orderadjustments`
--

INSERT INTO `craft_commerce_orderadjustments` (`id`, `type`, `name`, `description`, `amount`, `included`, `optionsJson`, `orderId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(18, 'Shipping', 'Free Shipping', 'All Countries, free shipping.', 0.0000, 0, '{"lineItemsAffected":[],"id":"1","name":"Free Everywhere ","description":"All Countries, free shipping.","shippingZoneId":null,"methodId":"1","priority":"0","enabled":"1","minQty":"0","maxQty":"0","minTotal":0,"maxTotal":0,"minWeight":0,"maxWeight":0,"baseRate":"0.0000","perItemRate":"0.0000","weightRate":"0.0000","percentageRate":"0.0000","minRate":"0.0000","maxRate":"0.0000"}', 26, '2017-10-04 15:15:26', '2017-10-04 15:15:26', '81cbd644-f6bc-4530-9ba6-410b44f7a160'),
(25, 'Shipping', 'Free Shipping', 'All Countries, free shipping.', 0.0000, 0, '{"lineItemsAffected":[],"id":"1","name":"Free Everywhere ","description":"All Countries, free shipping.","shippingZoneId":null,"methodId":"1","priority":"0","enabled":"1","minQty":"0","maxQty":"0","minTotal":0,"maxTotal":0,"minWeight":0,"maxWeight":0,"baseRate":"0.0000","perItemRate":"0.0000","weightRate":"0.0000","percentageRate":"0.0000","minRate":"0.0000","maxRate":"0.0000"}', 25, '2017-10-04 15:16:55', '2017-10-04 15:16:55', '9d826c6a-a2af-49fb-ad7f-4a922b8b8beb');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_orderhistories`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_orderhistories` (
  `id` int(11) NOT NULL,
  `prevStatusId` int(11) DEFAULT NULL,
  `newStatusId` int(11) DEFAULT NULL,
  `orderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_orders`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_orders` (
  `billingAddressId` int(11) DEFAULT NULL,
  `shippingAddressId` int(11) DEFAULT NULL,
  `paymentMethodId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `orderStatusId` int(11) DEFAULT NULL,
  `number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `couponCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemTotal` decimal(15,4) DEFAULT '0.0000',
  `baseDiscount` decimal(15,4) DEFAULT '0.0000',
  `baseShippingCost` decimal(15,4) DEFAULT '0.0000',
  `baseTax` decimal(15,4) DEFAULT '0.0000',
  `baseTaxIncluded` decimal(15,4) DEFAULT '0.0000',
  `totalPrice` decimal(15,4) DEFAULT '0.0000',
  `totalPaid` decimal(15,4) DEFAULT '0.0000',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isCompleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateOrdered` datetime DEFAULT NULL,
  `datePaid` datetime DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentCurrency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastIp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancelUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shippingMethod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_orders`
--

INSERT INTO `craft_commerce_orders` (`billingAddressId`, `shippingAddressId`, `paymentMethodId`, `customerId`, `id`, `orderStatusId`, `number`, `couponCode`, `itemTotal`, `baseDiscount`, `baseShippingCost`, `baseTax`, `baseTaxIncluded`, `totalPrice`, `totalPaid`, `email`, `isCompleted`, `dateOrdered`, `datePaid`, `currency`, `paymentCurrency`, `lastIp`, `orderLocale`, `message`, `returnUrl`, `cancelUrl`, `shippingMethod`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(NULL, NULL, 2, 9, 25, NULL, '5eb501462ca084bdbfd0dd0482c250d0', NULL, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 20.0000, 0.0000, '', 0, NULL, NULL, 'GBP', 'GBP', '127.0.0.1', 'en_gb', NULL, '/shop/customer/order?number=5eb501462ca084bdbfd0dd0482c250d0', '/shop/checkout/payment', 'freeShipping', '2017-10-04 13:20:19', '2017-10-04 15:16:55', '145a6f21-61b2-4ab4-ade8-b973db25a2cf'),
(2, 2, 2, 2, 26, NULL, '08ca57beae7927cd577eaa9479bc0421', NULL, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 20.0000, 0.0000, '3stripe@gmail.com', 0, NULL, NULL, 'GBP', 'GBP', '127.0.0.1', 'en_gb', NULL, '/shop/customer/order?number=08ca57beae7927cd577eaa9479bc0421', '/shop/checkout/payment', 'freeShipping', '2017-10-04 15:14:09', '2017-10-04 15:15:26', '9ffacea2-2c5f-47fe-9849-40fd60776742');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_ordersettings`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_ordersettings` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_ordersettings`
--

INSERT INTO `craft_commerce_ordersettings` (`id`, `fieldLayoutId`, `name`, `handle`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 17, 'Order', 'order', '2017-10-04 13:14:08', '2017-10-04 13:14:08', 'b8948b3d-9640-4472-8eb6-91d016f902e5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_orderstatuses`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_orderstatuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` enum('green','orange','red','blue','yellow','pink','purple','turquoise','light','grey','black') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'green',
  `sortOrder` int(11) DEFAULT NULL,
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_orderstatuses`
--

INSERT INTO `craft_commerce_orderstatuses` (`id`, `name`, `handle`, `color`, `sortOrder`, `default`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Processing', 'processing', 'green', 999, 1, '2017-10-04 13:14:08', '2017-10-04 13:14:08', '9f308e07-27ec-4494-a4d4-dad3b59d1dbc'),
(2, 'Shipped', 'shipped', 'blue', 999, 0, '2017-10-04 13:14:08', '2017-10-04 13:14:08', '877c1eda-5bd1-427e-802d-f61fa7d24062');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_orderstatus_emails`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_orderstatus_emails` (
  `id` int(11) NOT NULL,
  `orderStatusId` int(11) NOT NULL,
  `emailId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_paymentcurrencies`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_paymentcurrencies` (
  `id` int(11) NOT NULL,
  `iso` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `primary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_paymentcurrencies`
--

INSERT INTO `craft_commerce_paymentcurrencies` (`id`, `iso`, `primary`, `rate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'GBP', 1, 1.0000, '2017-10-04 13:14:08', '2017-10-04 13:22:21', '81c58987-48f0-434e-b24d-be8a65410677'),
(2, 'EUR', 0, 1.0000, '2017-10-04 13:22:31', '2017-10-04 13:22:31', 'f38e29d9-fa9d-4587-a69e-4bc0cd12c140');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_paymentmethods`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_paymentmethods` (
  `id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `paymentType` enum('authorize','purchase') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'purchase',
  `frontendEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isArchived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateArchived` datetime DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_paymentmethods`
--

INSERT INTO `craft_commerce_paymentmethods` (`id`, `class`, `name`, `settings`, `paymentType`, `frontendEnabled`, `isArchived`, `dateArchived`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Dummy', 'Dummy', '[]', 'purchase', 1, 0, NULL, 2, '2017-10-04 13:14:09', '2017-10-04 13:16:12', '68933b7a-2dda-46db-9c1d-a32e862498c3'),
(2, 'PayPal_Express', 'PayPal', '{"username":"3stripe_api1.gmail.com","password":"XNWSZHK58F9FRL73","signature":"AFcWxV21C7fd0v3bYYYRCpSSRl31Aqa-daO5Ex09BfPgQvauQIoYPtNs","testMode":"1","solutionType":"Sole","landingPage":"Billing","brandName":"","headerImageUrl":"","logoImageUrl":"","borderColor":""}', 'purchase', 1, 0, NULL, 1, '2017-10-04 13:16:06', '2017-10-04 13:33:53', 'a9fdd4d4-a94b-427b-805d-6ffbc6e9c552');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_products`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_products` (
  `id` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) NOT NULL,
  `shippingCategoryId` int(11) NOT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `promotable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `freeShipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `defaultVariantId` int(11) DEFAULT NULL,
  `defaultSku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultPrice` decimal(15,4) DEFAULT NULL,
  `defaultHeight` decimal(15,4) DEFAULT NULL,
  `defaultLength` decimal(15,4) DEFAULT NULL,
  `defaultWidth` decimal(15,4) DEFAULT NULL,
  `defaultWeight` decimal(15,4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_products`
--

INSERT INTO `craft_commerce_products` (`id`, `typeId`, `taxCategoryId`, `shippingCategoryId`, `postDate`, `expiryDate`, `promotable`, `freeShipping`, `defaultVariantId`, `defaultSku`, `defaultPrice`, `defaultHeight`, `defaultLength`, `defaultWidth`, `defaultWeight`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(17, 1, 1, 1, '2017-10-04 13:14:08', NULL, 1, 0, 18, 'A New Toga', 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3a389e24-be92-463e-81d2-ba3e81aaaba8'),
(19, 1, 1, 1, '2017-10-04 13:14:00', NULL, 1, 0, 20, 'Parka with Stripes on Back', 20.0000, 200.0000, 100.0000, 50.0000, 0.0000, '2017-10-04 13:14:09', '2017-10-04 13:23:25', 'd0491ed3-78a3-4148-bfa5-6d44a3909256'),
(21, 1, 1, 1, '2017-10-04 13:14:09', NULL, 1, 0, 22, 'Romper for a Red Eye', 30.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'acb990ad-718c-4a32-8f5d-17b33cee48c7'),
(23, 1, 1, 1, '2017-10-04 13:14:09', NULL, 1, 0, 24, 'The Fleece Awakens', 40.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '921eaacc-11b1-44c0-a503-adc86038eb2e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_producttypes`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_producttypes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `variantFieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasDimensions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasVariants` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hasVariantTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skuFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descriptionFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_producttypes`
--

INSERT INTO `craft_commerce_producttypes` (`id`, `fieldLayoutId`, `variantFieldLayoutId`, `name`, `handle`, `hasUrls`, `hasDimensions`, `hasVariants`, `hasVariantTitleField`, `titleFormat`, `skuFormat`, `descriptionFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 22, 23, 'Clothing', 'clothing', 1, 1, 0, 0, '{product.title}', '', '', 'shop/products/_product', '2017-10-04 13:14:08', '2017-10-04 13:18:06', 'adbc79be-dd13-4e07-9276-9804533673b0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_producttypes_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_producttypes_i18n` (
  `id` int(11) NOT NULL,
  `productTypeId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_producttypes_i18n`
--

INSERT INTO `craft_commerce_producttypes_i18n` (`id`, `productTypeId`, `locale`, `urlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_gb', 'shop/products/{slug}', '2017-10-04 13:14:08', '2017-10-04 13:14:08', 'ba2fa926-ca0e-4885-acf7-d99c8a15b87c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_producttypes_shippingcategories`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_producttypes_shippingcategories` (
  `id` int(11) NOT NULL,
  `productTypeId` int(11) NOT NULL,
  `shippingCategoryId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_producttypes_shippingcategories`
--

INSERT INTO `craft_commerce_producttypes_shippingcategories` (`id`, `productTypeId`, `shippingCategoryId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 1, '2017-10-04 13:18:06', '2017-10-04 13:18:06', '67d9aa66-b2db-425c-a969-ff6605c74284');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_producttypes_taxcategories`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_producttypes_taxcategories` (
  `id` int(11) NOT NULL,
  `productTypeId` int(11) NOT NULL,
  `taxCategoryId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_producttypes_taxcategories`
--

INSERT INTO `craft_commerce_producttypes_taxcategories` (`id`, `productTypeId`, `taxCategoryId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, 1, '2017-10-04 13:18:06', '2017-10-04 13:18:06', '809a7ac0-bb70-4c0d-89c6-e3df24f37a2d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_purchasables`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_purchasables` (
  `id` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_purchasables`
--

INSERT INTO `craft_commerce_purchasables` (`id`, `sku`, `price`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(18, 'A New Toga', 10.0000, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '0c466e56-f284-491c-83ab-7c7127194c22'),
(20, 'Parka with Stripes on Back', 20.0000, '2017-10-04 13:14:09', '2017-10-04 13:23:25', 'f4c94822-87c8-47ea-bb89-91a74342102a'),
(22, 'Romper for a Red Eye', 30.0000, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '918825ba-b9c2-4172-9df8-69e1e8a687cb'),
(24, 'The Fleece Awakens', 40.0000, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f748333f-a948-4bd5-ae7f-807150645d60');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_sales`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_sales` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `dateFrom` datetime DEFAULT NULL,
  `dateTo` datetime DEFAULT NULL,
  `discountType` enum('percent','flat') COLLATE utf8_unicode_ci NOT NULL,
  `discountAmount` decimal(15,4) NOT NULL,
  `allGroups` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allProducts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allProductTypes` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_sale_products`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_sale_products` (
  `id` int(11) NOT NULL,
  `saleId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_sale_producttypes`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_sale_producttypes` (
  `id` int(11) NOT NULL,
  `saleId` int(11) NOT NULL,
  `productTypeId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_sale_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_sale_usergroups` (
  `id` int(11) NOT NULL,
  `saleId` int(11) NOT NULL,
  `userGroupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_shippingcategories`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_shippingcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_shippingcategories`
--

INSERT INTO `craft_commerce_shippingcategories` (`id`, `name`, `handle`, `description`, `default`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'General', 'general', NULL, 1, '2017-10-04 13:14:08', '2017-10-04 13:14:08', '30b2ea89-25ff-43bb-b572-575ea3008189');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_shippingmethods`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_shippingmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_shippingmethods`
--

INSERT INTO `craft_commerce_shippingmethods` (`id`, `name`, `handle`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Free Shipping', 'freeShipping', 1, '2017-10-04 13:14:08', '2017-10-04 13:14:08', '030c2b81-8377-4a33-9377-afb3d3d26833'),
(2, 'Normal shipping', 'normalShipping', 1, '2017-10-04 13:21:36', '2017-10-04 13:21:36', 'a6aa5616-0feb-41cc-8126-b8a05eb0fef4');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_shippingrules`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_shippingrules` (
  `id` int(11) NOT NULL,
  `shippingZoneId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methodId` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `minQty` int(11) NOT NULL DEFAULT '0',
  `maxQty` int(11) NOT NULL DEFAULT '0',
  `minTotal` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `maxTotal` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `minWeight` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `maxWeight` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `baseRate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `perItemRate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `weightRate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `percentageRate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `minRate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `maxRate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_shippingrules`
--

INSERT INTO `craft_commerce_shippingrules` (`id`, `shippingZoneId`, `name`, `description`, `methodId`, `priority`, `enabled`, `minQty`, `maxQty`, `minTotal`, `maxTotal`, `minWeight`, `maxWeight`, `baseRate`, `perItemRate`, `weightRate`, `percentageRate`, `minRate`, `maxRate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Free Everywhere ', 'All Countries, free shipping.', 1, 0, 1, 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '2017-10-04 13:14:08', '2017-10-04 13:14:08', '4c6ad52e-e7af-4545-b359-d4551ef6cf86');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_shippingrule_categories`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_shippingrule_categories` (
  `id` int(11) NOT NULL,
  `shippingRuleId` int(11) DEFAULT NULL,
  `shippingCategoryId` int(11) DEFAULT NULL,
  `condition` enum('allow','disallow','require') COLLATE utf8_unicode_ci NOT NULL,
  `perItemRate` decimal(15,4) DEFAULT NULL,
  `weightRate` decimal(15,4) DEFAULT NULL,
  `percentageRate` decimal(15,4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_shippingzones`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_shippingzones` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryBased` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_shippingzones`
--

INSERT INTO `craft_commerce_shippingzones` (`id`, `name`, `description`, `countryBased`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'UK', 'UK', 1, '2017-10-04 13:21:07', '2017-10-04 13:21:07', 'aaac373f-c258-42d5-bb22-82880474cca7'),
(2, 'Euroep', 'Europe', 1, '2017-10-04 13:21:25', '2017-10-04 13:21:25', 'aaad8539-e202-45c5-95a9-80e29b32657b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_shippingzone_countries`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_shippingzone_countries` (
  `id` int(11) NOT NULL,
  `shippingZoneId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_shippingzone_countries`
--

INSERT INTO `craft_commerce_shippingzone_countries` (`id`, `shippingZoneId`, `countryId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 77, '2017-10-04 13:21:07', '2017-10-04 13:21:07', '3595a7c6-9e28-4aef-ab4c-b82767a4eb11'),
(2, 2, 4, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '8df783de-f0f4-4f49-bbef-69bc77fa38a7'),
(3, 2, 9, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '37a4f55b-58c1-4bb1-86ac-12abf60154e1'),
(4, 2, 103, '2017-10-04 13:21:25', '2017-10-04 13:21:25', 'd269af36-0714-4c55-ab97-ce09d3be00aa'),
(5, 2, 136, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '87cca787-a85b-4f4a-a502-19f5542262da'),
(6, 2, 131, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '5b61961c-e165-4a85-a6cd-eee8928116cd'),
(7, 2, 222, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '9383fc43-2ef8-424d-9606-bba912714246'),
(8, 2, 225, '2017-10-04 13:21:25', '2017-10-04 13:21:25', 'a508dd72-c141-41e6-94b3-c0b83b2ee881'),
(9, 2, 243, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '1cb0ef44-18df-4f82-9a13-8a46f26e2a4a'),
(10, 2, 238, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '5d0a090d-466f-4843-8524-47ccb4fc3c72'),
(11, 2, 236, '2017-10-04 13:21:25', '2017-10-04 13:21:25', '03c3d753-eb7d-42c9-a955-7ab52119b8dc'),
(12, 2, 242, '2017-10-04 13:21:25', '2017-10-04 13:21:25', 'b7522641-4582-4b5e-b3c2-cc660c1e2d72'),
(13, 2, 235, '2017-10-04 13:21:25', '2017-10-04 13:21:25', 'd5b161b3-f135-4866-b17d-351c2be75187');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_shippingzone_states`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_shippingzone_states` (
  `id` int(11) NOT NULL,
  `shippingZoneId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_states`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_states`
--

INSERT INTO `craft_commerce_states` (`id`, `name`, `abbreviation`, `countryId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Australian Capital Territory', 'ACT', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b98aae69-ebdb-4b37-a7aa-383db10e6fb8'),
(2, 'New South Wales', 'NSW', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '87584c6d-1ff2-4cc0-88a6-2c6e72d6fdea'),
(3, 'Northern Territory', 'NT', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '0be97f1c-9d3e-498a-9520-308f8925292f'),
(4, 'Queensland', 'QLD', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6ea4a9de-253b-4e05-9a57-ba79701ceb66'),
(5, 'South Australia', 'SA', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '74807332-32dc-46f5-b21f-e45a5973cb27'),
(6, 'Tasmania', 'TAS', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b5b5ceb1-58d8-47fc-8b45-8e2e844f99f6'),
(7, 'Victoria', 'VIC', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a298190a-22ef-4d7b-b947-d636ca0d0d02'),
(8, 'Western Australia', 'WA', 13, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c9fd1271-489e-40bc-a693-57c9df461a41'),
(9, 'Alberta', 'AB', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '969390c0-8c59-4938-bf1e-1edc975c0a9f'),
(10, 'British Columbia', 'BC', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '06be165e-ee1c-4b31-83cf-4dbd505bd2bb'),
(11, 'Manitoba', 'MB', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6193ce31-f02e-4461-b2c1-9b3fe1283461'),
(12, 'New Brunswick', 'NB', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a7515ccf-8498-4d93-a0d1-7a79b9e50a20'),
(13, 'Newfoundland and Labrador', 'NL', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e08a3a88-8019-4993-8ff8-008cfdc6bcc6'),
(14, 'Northwest Territories', 'NT', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8685185b-09df-4919-8ab3-9c4a7239896c'),
(15, 'Nova Scotia', 'NS', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd392af5b-423e-4f35-a171-24213c09d75b'),
(16, 'Nunavut', 'NU', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f82428cf-79c3-4a2f-b3a1-0445efd9ae6e'),
(17, 'Ontario', 'ON', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '85ea9b37-59b4-42fa-9380-861870d0a654'),
(18, 'Prince Edward Island', 'PE', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '4de7e8a2-f0d8-4f33-b3a0-119521a59580'),
(19, 'Quebec', 'QC', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '4e61da4a-691a-433d-a00b-3af136e76b17'),
(20, 'Saskatchewan', 'SK', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '15ed3aff-1388-42fd-b471-90667d8ddb02'),
(21, 'Yukon', 'YT', 38, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8cc00514-9e07-4fc5-a393-6d731f706985'),
(22, 'Alabama', 'AL', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '16755bdb-3aab-46e9-a6fe-2bd8215e10b4'),
(23, 'Alaska', 'AK', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '01fc2462-5d34-4067-9a21-fc215ec2f97c'),
(24, 'Arizona', 'AZ', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'd4b7178d-94ab-4ea5-8e5e-80db94356ed0'),
(25, 'Arkansas', 'AR', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b8f6373e-d935-4297-b7dd-7ea30c6315f2'),
(26, 'California', 'CA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '6a834d77-3d39-4a34-8b84-e82801cb7c1a'),
(27, 'Colorado', 'CO', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '47120853-8314-4d9f-a25f-efe58b5ea9c5'),
(28, 'Connecticut', 'CT', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '976409e1-aa5b-4c50-a32b-7dc8be464214'),
(29, 'Delaware', 'DE', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '06ba93cf-dcb3-4077-b990-677a0f1d25dd'),
(30, 'District of Columbia', 'DC', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '262c9ff3-e4db-4726-a0b2-f6a18f208737'),
(31, 'Florida', 'FL', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a16b08aa-10f7-4f9e-b447-f0a072f1ee27'),
(32, 'Georgia', 'GA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '469e12f3-89ca-4e75-9eea-97ee1d574d6c'),
(33, 'Hawaii', 'HI', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '272a3aef-0f78-4e51-bdd7-4f4dd163ffad'),
(34, 'Idaho', 'ID', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c81e8e1c-1083-4dbc-87a5-26b3badf6c63'),
(35, 'Illinois', 'IL', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1d5f7094-a887-436a-9982-cd22344fbf3e'),
(36, 'Indiana', 'IN', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '7230e943-c9bc-44a5-b50f-71b3b222b091'),
(37, 'Iowa', 'IA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1c8a1462-dd53-4572-8032-4a5a5aa172e8'),
(38, 'Kansas', 'KS', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2ddb7d8c-17cb-47d4-8837-120888fe315d'),
(39, 'Kentucky', 'KY', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '28a66110-ec97-41c5-b8d1-9d2c9bb3696b'),
(40, 'Louisiana', 'LA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '9ba3bf37-0d25-49c9-a2d0-6773d96241db'),
(41, 'Maine', 'ME', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '145b5119-eb0a-4016-b404-02ebc499610d'),
(42, 'Maryland', 'MD', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '67918a7c-61d1-4ea0-bf2f-f7ac598b7f58'),
(43, 'Massachusetts', 'MA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'fd15f325-0d43-4220-9079-535ec92e04bc'),
(44, 'Michigan', 'MI', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c78fb07a-437b-4370-95a3-6bd5e1480086'),
(45, 'Minnesota', 'MN', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c418a9d9-4aee-4de9-bace-10d8e7152619'),
(46, 'Mississippi', 'MS', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '28edc720-9dd9-459b-b4ac-dd1669d1eb45'),
(47, 'Missouri', 'MO', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5d08ea99-04a7-4d40-926f-d3b309a6681b'),
(48, 'Montana', 'MT', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'c63423d2-b32d-4f15-b79e-64dfe56de176'),
(49, 'Nebraska', 'NE', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'cb17c205-b75f-4a26-8d7a-bc3d71c112b6'),
(50, 'Nevada', 'NV', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '4960f5c8-5a4e-4c8b-9526-ef324660b906'),
(51, 'New Hampshire', 'NH', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3d756af3-2a69-4090-a404-8c209637a739'),
(52, 'New Jersey', 'NJ', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '552766cd-7480-4907-8b7c-3d99bd7c776b'),
(53, 'New Mexico', 'NM', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2fc69833-344a-459e-a482-2fc67afc831a'),
(54, 'New York', 'NY', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '445e5da6-2ff0-40d8-8c1f-f7dfdb2abdbf'),
(55, 'North Carolina', 'NC', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3c2483fe-fa72-4e50-b5c7-9df7d9cec060'),
(56, 'North Dakota', 'ND', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'daae683c-6a20-4998-90b6-eff0158805e5'),
(57, 'Ohio', 'OH', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'ab29e3f6-2f92-439c-8fa1-dbc437f2a690'),
(58, 'Oklahoma', 'OK', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '2a5efff0-fd16-479e-b69b-523306a753f9'),
(59, 'Oregon', 'OR', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '63e22f32-f3b0-41f5-9fc9-ca30139f7b25'),
(60, 'Pennsylvania', 'PA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '1b8010c7-f20f-448c-8f01-c071b08bdae2'),
(61, 'Rhode Island', 'RI', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '00f6276f-d921-4828-833e-3b3e56acede0'),
(62, 'South Carolina', 'SC', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a431a6cb-aa28-49cf-a63a-2e9a77a9d7fc'),
(63, 'South Dakota', 'SD', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '648be194-48ce-4474-aaa6-c7e8efaa1cd1'),
(64, 'Tennessee', 'TN', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '943ecc9f-a173-4445-adbe-363833feeedf'),
(65, 'Texas', 'TX', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '112a743d-94ca-42d8-b191-a22d2c5a1f20'),
(66, 'Utah', 'UT', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '5f66c253-ac26-4daf-ab20-0ddf6aaf6dfc'),
(67, 'Vermont', 'VT', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'f4f4e462-3533-468b-a03b-1b0ec2ac46fe'),
(68, 'Virginia', 'VA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'b5648ed9-7bd4-446e-a955-c48558b94c50'),
(69, 'Washington', 'WA', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '8eae1a00-0419-40a1-a0eb-ae918cdabd17'),
(70, 'West Virginia', 'WV', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3e8c74ff-f4a5-4db1-9bb1-e2bc7c2f4a7c'),
(71, 'Wisconsin', 'WI', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '83bd548f-3776-4933-a55c-4902ff1974cf'),
(72, 'Wyoming', 'WY', 233, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '314dd161-14bf-4035-aba5-8f687d6fc267');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_taxcategories`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_taxcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_taxcategories`
--

INSERT INTO `craft_commerce_taxcategories` (`id`, `name`, `handle`, `description`, `default`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'General', 'general', NULL, 1, '2017-10-04 13:14:08', '2017-10-04 13:14:08', '9b29ad54-5785-49d8-9a60-fa519f971971');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_taxrates`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_taxrates` (
  `id` int(11) NOT NULL,
  `taxZoneId` int(11) NOT NULL,
  `taxCategoryId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(15,4) NOT NULL,
  `include` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isVat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `taxable` enum('price','shipping','price_shipping','order_total_shipping','order_total_price') COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_taxzones`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_taxzones` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryBased` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_taxzone_countries`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_taxzone_countries` (
  `id` int(11) NOT NULL,
  `taxZoneId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_taxzone_states`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_taxzone_states` (
  `id` int(11) NOT NULL,
  `taxZoneId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_transactions`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_transactions` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `paymentMethodId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `hash` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('authorize','capture','purchase','refund') COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,4) DEFAULT NULL,
  `paymentAmount` decimal(15,4) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentCurrency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paymentRate` decimal(15,4) DEFAULT NULL,
  `status` enum('pending','redirect','success','failed') COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `response` text COLLATE utf8_unicode_ci,
  `orderId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_transactions`
--

INSERT INTO `craft_commerce_transactions` (`id`, `parentId`, `paymentMethodId`, `userId`, `hash`, `type`, `amount`, `paymentAmount`, `currency`, `paymentCurrency`, `paymentRate`, `status`, `reference`, `code`, `message`, `response`, `orderId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 2, 1, 'de5ce3f4545980514e2edf5903b36baa', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'You do not have permissions to make this API call', '{"TIMESTAMP":"2017-10-04T13:23:55Z","CORRELATIONID":"2b7c54c0629c6","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Authentication\\/Authorization Failed","L_LONGMESSAGE0":"You do not have permissions to make this API call","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:23:54', '2017-10-04 13:23:55', 'ff33003f-3c52-4347-866c-f70a9eb69197'),
(2, NULL, 2, 1, 'a0efe3b89f77d582346e656e8158ee07', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'You do not have permissions to make this API call', '{"TIMESTAMP":"2017-10-04T13:24:10Z","CORRELATIONID":"28ac549a5aa77","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Authentication\\/Authorization Failed","L_LONGMESSAGE0":"You do not have permissions to make this API call","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:24:09', '2017-10-04 13:24:10', 'd05864e9-d4fa-44ba-8b7e-e3a1247ef52c'),
(3, NULL, 2, 1, '2e8810bd3f5fdb3a2e50835be40f0477', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'You do not have permissions to make this API call', '{"TIMESTAMP":"2017-10-04T13:24:13Z","CORRELATIONID":"46e0dba0c0501","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Authentication\\/Authorization Failed","L_LONGMESSAGE0":"You do not have permissions to make this API call","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:24:11', '2017-10-04 13:24:13', 'be2076be-b7c6-455c-8ee1-8bbf8b03ed8b'),
(4, NULL, 2, 1, 'fde5ee0fbe82f54fd5803d4c35d819a8', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T13:33:58Z","CORRELATIONID":"72ce564468b3a","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:33:57', '2017-10-04 13:33:58', 'baf518eb-f9e4-401d-9ac2-32f2bb1e2ffd'),
(5, NULL, 2, 1, '02e6c3036768ed6db6271e92d7180c24', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T13:34:08Z","CORRELATIONID":"e53dd1642b669","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:34:01', '2017-10-04 13:34:08', '847efd61-fc3a-40bd-9d30-b70f347fdd09'),
(6, NULL, 2, 1, '96a0a4ef7da7ba3efdb0b9c500e4e4d5', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T13:34:56Z","CORRELATIONID":"c685b0079051b","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:34:55', '2017-10-04 13:34:56', 'e945f302-fbae-4413-8a15-57c2721086ca'),
(7, NULL, 2, 1, '220c338d37ae14f92f9d519e5e1d8c59', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T13:35:02Z","CORRELATIONID":"f377d8e499b5","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:35:01', '2017-10-04 13:35:02', '839203be-dd35-460d-b616-a74346fb2598'),
(8, NULL, 2, 1, '3bcc71a6e14c6cf83d25050df6af12bb', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T13:35:08Z","CORRELATIONID":"cd1ce9e9287b6","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 13:35:07', '2017-10-04 13:35:08', '7936f806-303a-4a2c-8506-f49059d37e54'),
(9, NULL, 2, 1, 'c53a1e89aa5404ce9278fc3a3ecbc6c2', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T14:21:07Z","CORRELATIONID":"6f847a7215711","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 14:21:06', '2017-10-04 14:21:07', 'd7141364-9edc-442e-99f4-f509f22cb817'),
(10, NULL, 2, 1, 'f95b17edc75ad98d6596678aff799fcd', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T14:21:08Z","CORRELATIONID":"9cc0498f6dd23","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 14:21:07', '2017-10-04 14:21:08', 'b27e25fb-7296-4a22-9f3e-6e43e0594e32'),
(11, NULL, 2, 1, '960deaa87d69be8f140cb9024463f4ce', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T14:21:09Z","CORRELATIONID":"cb889221c199f","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 25, '2017-10-04 14:21:08', '2017-10-04 14:21:09', '149136ad-2235-416d-a078-b45e49280106'),
(12, NULL, 2, NULL, '0f9a807ec9c15b8542a38ce925e0b204', 'purchase', 20.0000, 20.0000, 'GBP', 'GBP', 1.0000, 'failed', NULL, NULL, 'Security header is not valid', '{"TIMESTAMP":"2017-10-04T15:15:28Z","CORRELATIONID":"7b8ba5ed10c84","ACK":"Failure","VERSION":"119.0","BUILD":"39073839","L_ERRORCODE0":"10002","L_SHORTMESSAGE0":"Security error","L_LONGMESSAGE0":"Security header is not valid","L_SEVERITYCODE0":"Error"}', 26, '2017-10-04 15:15:26', '2017-10-04 15:15:28', '8feae135-7810-470c-b7cc-a3fbfd3ac248');

-- --------------------------------------------------------

--
-- Table structure for table `craft_commerce_variants`
--

CREATE TABLE IF NOT EXISTS `craft_commerce_variants` (
  `productId` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `price` decimal(15,4) NOT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `width` decimal(15,4) DEFAULT NULL,
  `height` decimal(15,4) DEFAULT NULL,
  `length` decimal(15,4) DEFAULT NULL,
  `weight` decimal(15,4) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `unlimitedStock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minQty` int(11) DEFAULT NULL,
  `maxQty` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_commerce_variants`
--

INSERT INTO `craft_commerce_variants` (`productId`, `id`, `sku`, `isDefault`, `price`, `sortOrder`, `width`, `height`, `length`, `weight`, `stock`, `unlimitedStock`, `minQty`, `maxQty`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(17, 18, 'A New Toga', 1, 10.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 1, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'e7556e38-1380-48d4-bbe5-69f070520275'),
(19, 20, 'Parka with Stripes on Back', 1, 20.0000, 1, 50.0000, 200.0000, 100.0000, 0.0000, 0, 1, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:23:25', '94cf6697-b626-4453-bada-1abad413920f'),
(21, 22, 'Romper for a Red Eye', 1, 30.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 1, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '40059c6e-b6c2-4cf0-ad8f-cb8c03627406'),
(23, 24, 'The Fleece Awakens', 1, 40.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0, 1, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bdbeedb0-a4b5-46ba-8690-7e0d4fec9977');

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE IF NOT EXISTS `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_secondaryContents` text COLLATE utf8_unicode_ci,
  `field_standfirst` text COLLATE utf8_unicode_ci,
  `field_projectTitle` text COLLATE utf8_unicode_ci,
  `field_testimonialTitle` text COLLATE utf8_unicode_ci,
  `field_testimonial` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_body`, `field_secondaryContents`, `field_standfirst`, `field_projectTitle`, `field_testimonialTitle`, `field_testimonial`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_gb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 14:04:49', '2017-07-17 14:04:49', 'c08d9a98-3382-4fbe-b20b-34a8b67c5b1c'),
(2, 2, 'en_gb', 'Welcome to Craftcms!', '<p>It’s true, this site doesn’t have a whole lot of content yet, but don’t worry. Our web developers have just installed the CMS, and they’re setting things up for the content editors this very moment. Soon Craftcms will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.</p>', NULL, NULL, NULL, NULL, NULL, '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'b979d6dc-5cc1-489e-a6dd-29c10d83393c'),
(3, 3, 'en_gb', 'So this is a news article.', '<p>Craft is the CMS that’s powering Craftcms. It’s beautiful, powerful, flexible, and easy-to-use, and it’s made by Pixel &amp; Tonic. We can’t wait to dive in and see what it’s capable of!</p>\n<!--pagebreak-->\n<p>This is even more captivating content, which you couldn’t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.</p>\n<p>Craft: a nice alternative to Word, if you’re making a website.</p>', '<p>Well this is lovely isn''t it?</p>', NULL, NULL, NULL, NULL, '2017-07-17 14:04:50', '2017-08-04 09:08:27', '4f37ac1c-baf1-479e-ae26-fe700f8567f5'),
(4, 4, 'en_gb', 'company', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 15:02:40', '2017-07-17 15:02:40', '34b81220-7615-4473-921a-1a507c5d55a1'),
(5, 5, 'en_gb', 'Bute Fabrics', '<p>We revitalised Bute Fabrics’ brand, enabling them to develop their well-established reputation and explore new markets. </p>\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets. </p>\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.</p>\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.</p>\n<p><a href="http://butefabrics.com" target="_blank" rel="noreferrer noopener">butefabrics.com</a> </p>', NULL, 'Founded in 1947 on the Scottish island after which they take their name, Bute Fabrics supply an international marketplace with exquisite, high performance woollen textiles.', 'Colour. Texture. Bute.', 'Client Testimonial', '<p><em>Graphical House have been instrumental in the rebrand of our business.</em></p>\n<p><em>They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.</em></p>\n<p><em>They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.</em></p>\n<p><em>The Graphical House team are great communicators — we’ve had one-hundred percent confidence in them from day one, in what’s been a game-changing rebrand for Bute Fabrics.</em></p>\n<p>John Glen<br />Managing Director<br />Bute Fabrics</p>', '2017-08-04 11:59:07', '2017-10-04 11:52:53', 'ab9a3474-1329-463a-aa9f-6889704e21b5'),
(7, 7, 'en_gb', 'artdirection', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 10:30:08', '2017-10-04 10:30:08', 'f68c062a-bb38-4c57-b8a6-fb46dd424a4b'),
(8, 8, 'en_gb', 'identity', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 10:30:12', '2017-10-04 10:30:12', '069ffce2-8ef8-4bbe-a7e9-3efc13b1fd95'),
(9, 9, 'en_gb', 'digital', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 10:30:14', '2017-10-04 10:30:14', 'f78605be-b0cf-4dba-a2ee-c5331b9f839d'),
(10, 10, 'en_gb', 'Bute Fabrics composition', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 10:57:45', '2017-10-04 11:10:13', '729b2dfd-0357-4056-869d-6d437c363da3'),
(11, 11, 'en_gb', 'Strategy. Campaign line.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 11:35:47', '2017-10-04 11:47:55', '574f2dfd-7ea2-485e-906a-f0a5ad8fbf63'),
(12, 12, 'en_gb', 'Art direction. Colour.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 11:35:48', '2017-10-04 11:48:38', '77fd92fa-e33b-43f7-9a01-ad3656755768'),
(13, 13, 'en_gb', 'Identity. Logotype.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 11:35:48', '2017-10-04 11:48:24', '164d664b-9611-4cd6-a40a-6236f1b14485'),
(14, 14, 'en_gb', 'Art direction. Campaign imagery.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 11:35:49', '2017-10-04 11:49:02', '5c72d5f6-561f-4e37-844e-64f90037b7f5'),
(15, 15, 'en_gb', 'Identity. Colour.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 11:35:49', '2017-10-04 11:48:16', 'c39e78cb-21de-4699-b8ac-81220206fb8d'),
(16, 16, 'en_gb', 'Art direction. Set design and photoshoot.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 11:35:50', '2017-10-04 11:48:50', '07a57016-1bbf-4b25-9ec7-84be87259a80'),
(17, 17, 'en_gb', 'A New Toga', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:18:06', 'b2052c98-4625-44c0-9cf4-d1611889dc8c'),
(18, 18, 'en_gb', 'A New Toga', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '3934bb61-8c6e-4f2d-b790-fa7cf89ab988'),
(19, 19, 'en_gb', 'Parka with Stripes on Back', '', NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:23:25', 'b126e64f-b0a0-4520-8867-ce27e9bc80f1'),
(20, 20, 'en_gb', 'Parka with Stripes on Back', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:23:25', 'bff08384-05eb-4dc2-8230-8edbe45423e2'),
(21, 21, 'en_gb', 'Romper for a Red Eye', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:18:06', '8bae0ee3-f2ea-430f-8059-742a42e5eb65'),
(22, 22, 'en_gb', 'Romper for a Red Eye', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'dc4a887d-5394-4baa-8685-6ce3d5c534b0'),
(23, 23, 'en_gb', 'The Fleece Awakens', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:18:06', '199b0e70-173b-437d-9261-e8b42f89522e'),
(24, 24, 'en_gb', 'The Fleece Awakens', NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'acd56c10-bf67-47c0-bfb9-6d5a219b68d9'),
(25, 25, 'en_gb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 13:20:18', '2017-10-04 15:16:55', '1bbda4c7-1957-4a5a-bad8-26dcd4648db0'),
(26, 26, 'en_gb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-04 15:14:09', '2017-10-04 15:15:26', '3ebea82c-eba3-4a35-b286-a50ddc9ae02c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE IF NOT EXISTS `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE IF NOT EXISTS `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elementindexsettings`
--

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Entry', '{"sources":{"section:3":{"tableAttributes":{"1":"field:4","2":"postDate","3":"link","4":"slug"}},"section:2":{"tableAttributes":{"1":"postDate","2":"expiryDate","3":"link"}},"*":{"tableAttributes":{"1":"section","2":"postDate","3":"expiryDate","4":"link","5":"field:4"}}}}', '2017-08-08 11:10:49', '2017-10-04 11:51:44', '5fee706e-75b7-4f0f-b8a6-fbe73772aa94');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE IF NOT EXISTS `craft_elements` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'User', 1, 0, '2017-07-17 14:04:49', '2017-07-17 14:04:49', 'f531f80b-f720-46f8-ae71-a0bbb2996084'),
(2, 'Entry', 1, 0, '2017-07-17 14:04:50', '2017-07-17 14:04:50', '0ac3932e-a57e-4d4b-b6ca-754687741ce3'),
(3, 'Entry', 1, 0, '2017-07-17 14:04:50', '2017-08-04 09:08:27', 'b394c954-ecb2-4d11-a7f1-77b1de52645f'),
(4, 'Tag', 1, 0, '2017-07-17 15:02:40', '2017-07-17 15:02:40', '01e4f61e-1529-4bef-9810-d0a8e80dbf1e'),
(5, 'Entry', 1, 0, '2017-08-04 11:59:07', '2017-10-04 11:52:53', '3b9e6711-ce95-4d6d-8042-6be17950ea51'),
(7, 'Tag', 1, 0, '2017-10-04 10:30:08', '2017-10-04 10:30:08', '14ef92b2-8b34-4458-bc27-2bfdaf981299'),
(8, 'Tag', 1, 0, '2017-10-04 10:30:12', '2017-10-04 10:30:12', 'b0259434-f7a5-4317-abde-c1a1ae790416'),
(9, 'Tag', 1, 0, '2017-10-04 10:30:14', '2017-10-04 10:30:14', '2121496c-a940-4963-85e0-fbc5fac41d7b'),
(10, 'Asset', 1, 0, '2017-10-04 10:57:45', '2017-10-04 11:10:13', '2dffc635-9981-48cd-9c4f-6ee4569cce7e'),
(11, 'Asset', 1, 0, '2017-10-04 11:35:47', '2017-10-04 11:47:55', '81639989-0480-41b6-b02a-f3fc8eb80ed3'),
(12, 'Asset', 1, 0, '2017-10-04 11:35:48', '2017-10-04 11:48:38', 'ee20f8bd-dfd5-49a3-b3b3-833518a1cf8f'),
(13, 'Asset', 1, 0, '2017-10-04 11:35:48', '2017-10-04 11:48:24', 'ba8ab744-6723-4a7f-a350-4b485049a9ea'),
(14, 'Asset', 1, 0, '2017-10-04 11:35:49', '2017-10-04 11:49:02', 'faf10156-22f4-457f-aff1-167d8166ff7f'),
(15, 'Asset', 1, 0, '2017-10-04 11:35:49', '2017-10-04 11:48:16', '0f1cf085-cced-4e71-9020-0a6bc846c42f'),
(16, 'Asset', 1, 0, '2017-10-04 11:35:50', '2017-10-04 11:48:50', '2e52effd-a88e-48f1-8f43-d55113ce0b5e'),
(17, 'Commerce_Product', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:18:06', 'fce62a04-d1dd-41fe-8cc2-83964908723e'),
(18, 'Commerce_Variant', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '92f92bca-323a-4408-8e92-a31e45748995'),
(19, 'Commerce_Product', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:23:25', '1019b7d1-d472-4c61-8753-c1046ba30b82'),
(20, 'Commerce_Variant', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:23:25', '3bc5203d-0dab-4bd8-88f1-fd60876bf1e9'),
(21, 'Commerce_Product', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:18:06', '8464a868-4445-4bfc-9d50-f0318312b3d2'),
(22, 'Commerce_Variant', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'bfeb2409-9690-4ce4-9c5d-34c9cea0db8d'),
(23, 'Commerce_Product', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:18:06', '18da17a7-57a0-4ffe-ab42-4597ef9fc496'),
(24, 'Commerce_Variant', 1, 0, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a3f93858-a726-4ae3-8b04-c31e1574bbcf'),
(25, 'Commerce_Order', 1, 0, '2017-10-04 13:20:18', '2017-10-04 15:16:55', '32baccab-c1b3-4a21-8968-5bc609ce886d'),
(26, 'Commerce_Order', 1, 0, '2017-10-04 15:14:09', '2017-10-04 15:15:26', '102f3ff9-6f87-457a-91b8-226ba1f579a7');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_elements_i18n` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_elements_i18n`
--

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_gb', '', NULL, 1, '2017-07-17 14:04:49', '2017-07-17 14:04:49', 'ec72735d-168e-4718-a0e5-2a977c378e89'),
(2, 2, 'en_gb', 'homepage', '__home__', 1, '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'd7ed0f38-4fa6-4f65-ae68-506ea38891c0'),
(3, 3, 'en_gb', 'we-just-installed-craft', 'news/2017/we-just-installed-craft', 1, '2017-07-17 14:04:50', '2017-08-04 09:08:27', 'c868f20c-c86a-4dfd-b201-622be0f9d625'),
(4, 4, 'en_gb', 'company', NULL, 1, '2017-07-17 15:02:40', '2017-07-17 15:02:40', '71c0a6d6-2773-48eb-8dda-e88d6ad0cc88'),
(5, 5, 'en_gb', 'bute-fabrics', 'work/bute-fabrics', 1, '2017-08-04 11:59:07', '2017-10-04 11:52:53', '316d6fb6-68c1-48c3-84a8-0733fd0104df'),
(7, 7, 'en_gb', 'artdirection', NULL, 1, '2017-10-04 10:30:08', '2017-10-04 10:30:08', 'd86dfe6f-ffce-4876-a869-6c6cac57a656'),
(8, 8, 'en_gb', 'identity', NULL, 1, '2017-10-04 10:30:12', '2017-10-04 10:30:12', '2a71636f-c232-4ba3-b763-857a91c4205a'),
(9, 9, 'en_gb', 'digital', NULL, 1, '2017-10-04 10:30:14', '2017-10-04 10:30:14', '816428c3-8aeb-4ed8-ad53-0ce38cc4a54c'),
(10, 10, 'en_gb', 'o8a8104-rt-c6i6', NULL, 1, '2017-10-04 10:57:45', '2017-10-04 11:10:13', '355d7923-a9c0-401b-8ab0-ce31fdd21f17'),
(11, 11, 'en_gb', 'bute-copyline-image-tdqs', NULL, 1, '2017-10-04 11:35:47', '2017-10-04 11:47:55', '99bfa5a6-1c1e-4915-9b8d-8af418254d8e'),
(12, 12, 'en_gb', 'bute9-783z', NULL, 1, '2017-10-04 11:35:48', '2017-10-04 11:48:38', '52a4e461-dc3e-48af-94ab-42e5ac799133'),
(13, 13, 'en_gb', 'butelogotype-nntr', NULL, 1, '2017-10-04 11:35:48', '2017-10-04 11:48:24', '0335bb8c-4e9b-4fb4-a06c-bcb3db626b8e'),
(14, 14, 'en_gb', 'o8a7886-rt-u87b', NULL, 1, '2017-10-04 11:35:49', '2017-10-04 11:49:02', '00f9f2e1-c020-4e42-96d2-9945143c329c'),
(15, 15, 'en_gb', 'webgrid-dka3', NULL, 1, '2017-10-04 11:35:49', '2017-10-04 11:48:16', '6ebda8ff-6b60-4345-b011-2de8a28e99e2'),
(16, 16, 'en_gb', 'webgrid4-kbx7', NULL, 1, '2017-10-04 11:35:50', '2017-10-04 11:48:50', '65440e07-b91e-4007-9faf-9e8fd3c90d9a'),
(17, 17, 'en_gb', 'a-new-toga', 'shop/products/a-new-toga', 1, '2017-10-04 13:14:09', '2017-10-04 13:18:06', '28c1f47d-bce8-476e-bffd-2cadaf26a070'),
(18, 18, 'en_gb', 'a-new-toga', NULL, 1, '2017-10-04 13:14:09', '2017-10-04 13:14:09', '415adfec-525c-419e-81d1-d2922c59b769'),
(19, 19, 'en_gb', 'parka-with-stripes-on-back', 'shop/products/parka-with-stripes-on-back', 1, '2017-10-04 13:14:09', '2017-10-04 13:23:25', '454ef822-a6bb-4cf2-9723-a671b1f16062'),
(20, 20, 'en_gb', 'parka-with-stripes-on-back', NULL, 1, '2017-10-04 13:14:09', '2017-10-04 13:23:25', 'eb8d85e1-55c9-4fd6-8990-32f652ad090d'),
(21, 21, 'en_gb', 'romper-for-a-red-eye', 'shop/products/romper-for-a-red-eye', 1, '2017-10-04 13:14:09', '2017-10-04 13:18:06', '7392afe8-70de-4026-9af7-d2d184959793'),
(22, 22, 'en_gb', 'romper-for-a-red-eye', NULL, 1, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'de20ed38-fa92-4a1e-8af6-b0fee7719cb0'),
(23, 23, 'en_gb', 'the-fleece-awakens', 'shop/products/the-fleece-awakens', 1, '2017-10-04 13:14:09', '2017-10-04 13:18:06', '7c304572-7151-4d0d-8738-5c25454b372a'),
(24, 24, 'en_gb', 'the-fleece-awakens', NULL, 1, '2017-10-04 13:14:09', '2017-10-04 13:14:09', 'a253e86b-68d1-414a-8140-05d9482ebfa5'),
(25, 25, 'en_gb', '', NULL, 1, '2017-10-04 13:20:18', '2017-10-04 15:16:55', 'c62a8682-4722-4eb5-ab15-2a4f3902b610'),
(26, 26, 'en_gb', '', NULL, 1, '2017-10-04 15:14:09', '2017-10-04 15:15:26', '40515b55-d7c8-41b7-b12f-aa7fc7ca5bb8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_emailmessages`
--

CREATE TABLE IF NOT EXISTS `craft_emailmessages` (
  `id` int(11) NOT NULL,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

CREATE TABLE IF NOT EXISTS `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, NULL, '2017-07-17 14:04:50', NULL, '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'cdcd16c8-ec36-4a2c-b229-52c1a3094009'),
(3, 2, 2, 1, '2017-07-17 14:04:00', NULL, '2017-07-17 14:04:50', '2017-08-04 09:08:27', '4271f8d9-2575-465a-830b-50dd65110601'),
(5, 3, 3, 1, '2017-08-04 11:59:00', NULL, '2017-08-04 11:59:07', '2017-10-04 11:52:53', 'bf3451df-1750-4283-994d-327886914d1f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrydrafts`
--

CREATE TABLE IF NOT EXISTS `craft_entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE IF NOT EXISTS `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 3, 'Homepage', 'homepage', 1, 'Title', NULL, 1, '2017-07-17 14:04:50', '2017-07-17 14:04:50', '97e7de57-239d-40c7-a123-7b49d1e5e99b'),
(2, 2, 6, 'News', 'news', 1, 'Title', NULL, 1, '2017-07-17 14:04:50', '2017-07-17 14:31:40', '1f445fe6-165d-4a29-9288-2060d52c7ec3'),
(3, 3, 15, 'Projects', 'project', 1, 'Title', NULL, 1, '2017-08-04 11:53:23', '2017-10-04 11:34:33', '6cf548b0-9754-41b4-9497-d91b60bb1f4f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entryversions`
--

CREATE TABLE IF NOT EXISTS `craft_entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_entryversions`
--

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 1, 1, 'en_gb', 1, NULL, '{"typeId":"1","authorId":null,"title":"Homepage","slug":"homepage","postDate":1500300290,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'fa1eab96-5e2c-451f-81e7-ee6710267aab'),
(2, 2, 1, 1, 'en_gb', 2, NULL, '{"typeId":null,"authorId":null,"title":"Welcome to Craftcms!","slug":"homepage","postDate":1500300290,"expiryDate":null,"enabled":"1","parentId":null,"fields":{"1":"<p>It\\u2019s true, this site doesn\\u2019t have a whole lot of content yet, but don\\u2019t worry. Our web developers have just installed the CMS, and they\\u2019re setting things up for the content editors this very moment. Soon Craftcms will be an oasis of fresh perspectives, sharp analyses, and astute opinions that will keep you coming back again and again.<\\/p>"}}', '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'e2164521-58c7-4373-a1d2-5d9db345cb52'),
(3, 3, 2, 1, 'en_gb', 1, NULL, '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1500300290,"expiryDate":null,"enabled":1,"parentId":null,"fields":[]}', '2017-07-17 14:04:50', '2017-07-17 14:04:50', '7758e688-72da-4b3d-bd34-7e389f7eb545'),
(4, 3, 2, 1, 'en_gb', 2, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!","slug":"we-just-installed-craft","postDate":1500300240,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Craft is the CMS that\\u2019s powering Craftcms. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","3":"<p>Well this is lovely isn''t it?<\\/p>","2":""}}', '2017-07-17 14:31:54', '2017-07-17 14:31:54', 'e94684f6-d7ec-4bd9-98d1-f15c1fd1d9a2'),
(5, 3, 2, 1, 'en_gb', 3, '', '{"typeId":"2","authorId":"1","title":"We just installed Craft!!!","slug":"we-just-installed-craft","postDate":1500300240,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Craft is the CMS that\\u2019s powering Craftcms. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","3":"<p>Well this is lovely isn''t it?<\\/p>","2":["4"]}}', '2017-07-17 15:02:53', '2017-07-17 15:02:53', 'c16d8be2-68b4-4bcf-aade-3a9cb97952be'),
(6, 3, 2, 1, 'en_gb', 4, '', '{"typeId":"2","authorId":"1","title":"So this is a news article.","slug":"we-just-installed-craft","postDate":1500300240,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>Craft is the CMS that\\u2019s powering Craftcms. It\\u2019s beautiful, powerful, flexible, and easy-to-use, and it\\u2019s made by Pixel & Tonic. We can\\u2019t wait to dive in and see what it\\u2019s capable of!<\\/p>\\r\\n<hr class=\\"redactor_pagebreak\\" style=\\"display:none\\" unselectable=\\"on\\" contenteditable=\\"false\\">\\r\\n<p>This is even more captivating content, which you couldn\\u2019t see on the News index page because it was entered after a Page Break, and the News index template only likes to show the content on the first page.<\\/p>\\r\\n<p>Craft: a nice alternative to Word, if you\\u2019re making a website.<\\/p>","3":"<p>Well this is lovely isn''t it?<\\/p>","2":["4"]}}', '2017-08-04 09:08:27', '2017-08-04 09:08:27', '1a8732a5-131b-4a96-9b81-e4af4b784906'),
(7, 5, 3, 1, 'en_gb', 1, '', '{"typeId":null,"authorId":"1","title":"Architect IPA","slug":"architect-ipa","postDate":1501847947,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>As part of the Festival, we were asked by the Glasgow Institute of Architects to brand and package their festival ale, Architect IPA, made specially by Drygate Brewery to be sold at events throughout the year.&nbsp;<\\/p><p>Following GIA\\u2019s competition to select six of the nation\\u2019s favourite architects, we created label designs, colour palettes, illustrations and motifs, referencing each architect\\u2019s respective style.<\\/p><p>As Architect IPA is served at pop-up bars and events around the country, our bespoke packaging creates brand recognition.<\\/p><p>Our design clearly conveys the vision of the project &mdash; placing Scottish architectural talent at the front and centre of the celebrations.<\\/p>","4":""}}', '2017-08-04 11:59:07', '2017-08-04 11:59:07', 'f9270379-e7c2-4180-9f6e-89dee6de394f'),
(8, 5, 3, 1, 'en_gb', 2, '', '{"typeId":"3","authorId":"1","title":"Architect IPA","slug":"architect-ipa","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>As part of the Festival, we were asked by the Glasgow Institute of Architects to brand and package their festival ale, Architect IPA, made specially by Drygate Brewery to be sold at events throughout the year.&nbsp;<\\/p>\\r\\n<p>Following GIA\\u2019s competition to select six of the nation\\u2019s favourite architects, we created label designs, colour palettes, illustrations and motifs, referencing each architect\\u2019s respective style.<\\/p>\\r\\n<p>As Architect IPA is served at pop-up bars and events around the country, our bespoke packaging creates brand recognition.<\\/p>\\r\\n<p>Our design clearly conveys the vision of the project &mdash; placing Scottish architectural talent at the front and centre of the celebrations.<\\/p>","4":""}}', '2017-08-04 12:00:50', '2017-08-04 12:00:50', 'f368fc72-d312-4d87-b18f-545e7774b544'),
(9, 5, 3, 1, 'en_gb', 3, '', '{"typeId":"3","authorId":"1","title":"Architect IPA","slug":"architect-ipa","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>As part of the Festival, we were asked by the Glasgow Institute of Architects to brand and package their festival ale, Architect IPA, made specially by Drygate Brewery to be sold at events throughout the year.&nbsp;<\\/p>\\r\\n<p>Following GIA\\u2019s competition to select six of the nation\\u2019s favourite architects, we created label designs, colour palettes, illustrations and motifs, referencing each architect\\u2019s respective style.<\\/p>\\r\\n<p>As Architect IPA is served at pop-up bars and events around the country, our bespoke packaging creates brand recognition.<\\/p>\\r\\n<p>Our design clearly conveys the vision of the project &mdash; placing Scottish architectural talent at the front and centre of the celebrations.<\\/p>","4":""}}', '2017-08-08 11:02:46', '2017-08-08 11:02:46', 'f0390779-73b4-4596-91ca-62809ca1a0b1'),
(10, 5, 3, 1, 'en_gb', 4, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":"","6":"Colour. Texture. Bute.","5":"","2":["7","8","9"],"8":"*Graphical House have been instrumental in the rebrand of our business.*   *They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.*  *They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.*  *The Graphical House team are great communicators \\u2014 we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.*  John Glen Managing Director Bute Fabrics","7":"Client Testimonial"}}', '2017-10-04 10:30:54', '2017-10-04 10:30:54', '1ecdcd39-1a37-4a90-97ff-bc0efbe03026'),
(11, 5, 3, 1, 'en_gb', 5, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":"","6":"Colour. Texture. Bute.","5":"","2":["7","8","9"],"8":"*Graphical House have been instrumental in the rebrand of our business.* \\r\\n\\r\\n*They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.*\\r\\n\\r\\n*They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.*\\r\\n\\r\\n*The Graphical House team are great communicators \\u2014 we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.*\\r\\n\\r\\nJohn Glen\\r\\nManaging Director\\r\\nBute Fabrics","7":"Client Testimonial"}}', '2017-10-04 10:50:51', '2017-10-04 10:50:51', 'bfe32246-468c-4e0d-ba3e-c3712cd2ce22'),
(12, 5, 3, 1, 'en_gb', 6, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":"","6":"Colour. Texture. Bute.","5":"","2":["7","8","9"],"8":"<p><em>Graphical House have been instrumental in the rebrand of our business.<\\/em><\\/p>\\r\\n<p><em>They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.<\\/em><\\/p>\\r\\n<p><em>They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.<\\/em><\\/p>\\r\\n<p><em>The Graphical House team are great communicators &mdash; we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.<\\/em><\\/p>\\r\\n<p>John Glen<br>Managing Director<br>Bute Fabrics<\\/p>","7":"Client Testimonial"}}', '2017-10-04 10:55:37', '2017-10-04 10:55:37', '671e75a3-3367-44a9-9d16-24ca35e7ff02'),
(13, 5, 3, 1, 'en_gb', 7, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":["10"],"6":"Colour. Texture. Bute.","5":"","2":["7","8","9"],"8":"<p><em>Graphical House have been instrumental in the rebrand of our business.<\\/em><\\/p>\\r\\n<p><em>They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.<\\/em><\\/p>\\r\\n<p><em>They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.<\\/em><\\/p>\\r\\n<p><em>The Graphical House team are great communicators &mdash; we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.<\\/em><\\/p>\\r\\n<p>John Glen<br>Managing Director<br>Bute Fabrics<\\/p>","7":"Client Testimonial"}}', '2017-10-04 10:58:33', '2017-10-04 10:58:33', '62f1ce7d-0968-4558-b0fd-0ae5f7bc6fd9'),
(14, 5, 3, 1, 'en_gb', 8, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":["10"],"9":"","6":"Colour. Texture. Bute.","5":"Founded in 1947 on the Scottish island after which they take their name, Bute Fabrics supply an international marketplace with exquisite, high performance woollen textiles.","2":["7","8","9"],"8":"<p><em>Graphical House have been instrumental in the rebrand of our business.<\\/em><\\/p>\\r\\n<p><em>They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.<\\/em><\\/p>\\r\\n<p><em>They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.<\\/em><\\/p>\\r\\n<p><em>The Graphical House team are great communicators &mdash; we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.<\\/em><\\/p>\\r\\n<p>John Glen<br>Managing Director<br>Bute Fabrics<\\/p>","7":"Client Testimonial"}}', '2017-10-04 11:34:46', '2017-10-04 11:34:46', '0c9fc6da-7d98-4a75-bc12-1d6a90f5f1db'),
(15, 5, 3, 1, 'en_gb', 9, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":["10"],"9":["11","12","13","14","15","16"],"6":"Colour. Texture. Bute.","5":"Founded in 1947 on the Scottish island after which they take their name, Bute Fabrics supply an international marketplace with exquisite, high performance woollen textiles.","2":["7","8","9"],"8":"<p><em>Graphical House have been instrumental in the rebrand of our business.<\\/em><\\/p>\\r\\n<p><em>They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.<\\/em><\\/p>\\r\\n<p><em>They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.<\\/em><\\/p>\\r\\n<p><em>The Graphical House team are great communicators &mdash; we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.<\\/em><\\/p>\\r\\n<p>John Glen<br>Managing Director<br>Bute Fabrics<\\/p>","7":"Client Testimonial"}}', '2017-10-04 11:37:08', '2017-10-04 11:37:08', '12f4579a-313a-4026-90cb-fb2142a14ebf'),
(16, 5, 3, 1, 'en_gb', 10, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":["10"],"9":["11","14","13","15","12","16"],"6":"Colour. Texture. Bute.","5":"Founded in 1947 on the Scottish island after which they take their name, Bute Fabrics supply an international marketplace with exquisite, high performance woollen textiles.","2":["7","8","9"],"8":"<p><em>Graphical House have been instrumental in the rebrand of our business.<\\/em><\\/p>\\r\\n<p><em>They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.<\\/em><\\/p>\\r\\n<p><em>They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.<\\/em><\\/p>\\r\\n<p><em>The Graphical House team are great communicators &mdash; we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.<\\/em><\\/p>\\r\\n<p>John Glen<br>Managing Director<br>Bute Fabrics<\\/p>","7":"Client Testimonial"}}', '2017-10-04 11:49:11', '2017-10-04 11:49:11', 'ebb5fe70-2bca-4dbb-8d4a-56d879da7f4e'),
(17, 5, 3, 1, 'en_gb', 11, '', '{"typeId":"3","authorId":"1","title":"Bute Fabrics","slug":"bute-fabrics","postDate":1501847940,"expiryDate":null,"enabled":1,"parentId":null,"fields":{"1":"<p>We revitalised Bute Fabrics\\u2019 brand, enabling them to develop their well-established reputation and explore new markets.&nbsp;<\\/p>\\r\\n<p>Our modern logotype retains the key features of original, while the new diagonal-strike motif evokes the angles of the textiles on the loom. A flexible colour palette can be adapted to reflect changing seasons and distinct markets.&nbsp;<\\/p>\\r\\n<p>With striking new art direction we developed an innovative new website that enables designers to create and share digital mood-boards, while our bespoke sample box allows the freedom to interact with the fabrics, colours and textures like never before.<\\/p>\\r\\n<p>With a modern and adaptable brand, our creative insight enabled Bute Fabrics to develop an industry-leading approach to sampling, tailored to the needs of their customers.<\\/p>\\r\\n<p><a href=\\"http:\\/\\/butefabrics.com\\" target=\\"_blank\\" rel=\\"noreferrer noopener\\">butefabrics.com<\\/a>&nbsp;<\\/p>","4":["10"],"9":["11","14","13","15","12","16"],"6":"Colour. Texture. Bute.","5":"Founded in 1947 on the Scottish island after which they take their name, Bute Fabrics supply an international marketplace with exquisite, high performance woollen textiles.","2":["7","8","9"],"8":"<p><em><strong><\\/strong>Graphical House have been instrumental in the rebrand of our business.<\\/em><\\/p>\\r\\n<p><em>They were very easy to work with and quickly became an extension of our internal marketing team, developing an understanding of our business and our need for change.<\\/em><\\/p>\\r\\n<p><em>They have taken us out of our comfort zone and achieved results beyond expectation, enabling us to think differently about our products and how they are communicated to our markets, both existing and new.<\\/em><\\/p>\\r\\n<p><em>The Graphical House team are great communicators &mdash; we\\u2019ve had one-hundred percent confidence in them from day one, in what\\u2019s been a game-changing rebrand for Bute Fabrics.<\\/em><\\/p>\\r\\n<p>John Glen<br>Managing Director<br>Bute Fabrics<\\/p>","7":"Client Testimonial"}}', '2017-10-04 11:52:53', '2017-10-04 11:52:53', 'b5a47833-4409-4cc8-815a-8e15959159ab');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE IF NOT EXISTS `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'e7d2ed9d-4d46-4599-b345-826f48588d6c'),
(2, 'Images', '2017-07-17 14:30:39', '2017-10-04 11:31:50', 'ee132872-77d2-4988-b219-b9b6676f86d6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 1, 1, 1, 1, '2017-07-17 14:04:50', '2017-07-17 14:04:50', '70caf622-5079-4453-9a78-d946f2d1028e'),
(4, 6, 3, 1, 1, 1, '2017-07-17 14:31:40', '2017-07-17 14:31:40', '32791bc0-bab1-4956-8bc5-f7ed53deac3a'),
(5, 6, 3, 2, 0, 2, '2017-07-17 14:31:40', '2017-07-17 14:31:40', 'c036ab97-dbfd-4953-94d3-63b31b45d95f'),
(6, 6, 3, 3, 0, 3, '2017-07-17 14:31:40', '2017-07-17 14:31:40', 'efd76f54-8862-4c43-8fbe-bfa9cd040446'),
(16, 15, 7, 6, 0, 1, '2017-10-04 11:34:33', '2017-10-04 11:34:33', '2c580268-8d66-435c-aa1c-b4b4a23f6524'),
(17, 15, 7, 5, 0, 2, '2017-10-04 11:34:33', '2017-10-04 11:34:33', 'de7203e5-0403-4016-ad92-007c73c16b50'),
(18, 15, 7, 2, 0, 3, '2017-10-04 11:34:33', '2017-10-04 11:34:33', 'd97b471b-c529-4067-84c5-f4c67d60616b'),
(19, 15, 7, 1, 0, 4, '2017-10-04 11:34:33', '2017-10-04 11:34:33', '2ad854d5-e892-4dc6-a5dd-7284a1c85ddb'),
(20, 15, 7, 7, 0, 5, '2017-10-04 11:34:33', '2017-10-04 11:34:33', '52f2ae6c-4df0-4244-871a-63da1063f8b4'),
(21, 15, 7, 8, 0, 6, '2017-10-04 11:34:33', '2017-10-04 11:34:33', '1b4f5971-a991-4343-89e2-78b105d3f940'),
(22, 15, 8, 4, 0, 1, '2017-10-04 11:34:33', '2017-10-04 11:34:33', 'e21b38c5-0208-4539-a26c-890e23b422d2'),
(23, 15, 8, 9, 0, 2, '2017-10-04 11:34:33', '2017-10-04 11:34:33', '68f09c04-89bd-4f82-904a-e67bb1c1fae0'),
(24, 22, 9, 1, 0, 1, '2017-10-04 13:18:06', '2017-10-04 13:18:06', '7ffa402d-7eac-46ab-a2de-83e70b643b1c'),
(25, 22, 9, 2, 0, 2, '2017-10-04 13:18:06', '2017-10-04 13:18:06', '129dadf5-21e1-4c86-88d5-05fce3291d37'),
(26, 22, 9, 4, 0, 3, '2017-10-04 13:18:06', '2017-10-04 13:18:06', 'dd6dcdef-b520-498d-bcc8-2a3bab29a26d'),
(27, 22, 9, 9, 0, 4, '2017-10-04 13:18:06', '2017-10-04 13:18:06', 'bc3f5698-1bf6-4a5e-a254-aaf29528babc');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Tag', '2017-07-17 14:04:50', '2017-07-17 14:04:50', '13fb53de-3a64-4b8f-a452-cd2154a8e91b'),
(3, 'Entry', '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'cdbfde7f-ed4a-45cc-850d-b2c923a70876'),
(6, 'Entry', '2017-07-17 14:31:40', '2017-07-17 14:31:40', '051f0c32-ce71-47e4-9f87-f95deee112fd'),
(15, 'Entry', '2017-10-04 11:34:33', '2017-10-04 11:34:33', '413164d1-7bfa-4f79-baa6-ffd340430218'),
(16, 'Asset', '2017-10-04 11:35:41', '2017-10-04 11:35:41', 'ff50dfeb-56a9-4d9f-90b6-54ecf86ee7d2'),
(17, 'Commerce_Order', '2017-10-04 13:14:08', '2017-10-04 13:14:08', '987ae580-a5d1-48f4-93c8-9e69a9fab9d2'),
(18, 'Commerce_Product', '2017-10-04 13:14:08', '2017-10-04 13:14:08', 'beaa0c06-5ba5-49b0-bc46-c91e05ffe4b1'),
(19, 'Commerce_Variant', '2017-10-04 13:14:08', '2017-10-04 13:14:08', 'ecc1eb45-4461-480d-8d57-61737d9fa6db'),
(22, 'Commerce_Product', '2017-10-04 13:18:06', '2017-10-04 13:18:06', '68b54ef2-d03e-4e39-bae5-e96b4df05f7a'),
(23, 'Commerce_Variant', '2017-10-04 13:18:06', '2017-10-04 13:18:06', 'c4d39849-f864-4b05-9a65-839bfada5ec5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE IF NOT EXISTS `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 'Content', 1, '2017-07-17 14:04:50', '2017-07-17 14:04:50', '7a086ddd-e045-43f3-982d-93c9bba639d2'),
(3, 6, 'Content', 1, '2017-07-17 14:31:40', '2017-07-17 14:31:40', '74bc0362-d9c1-4b49-9ef1-d31ce5024ae7'),
(7, 15, 'Text', 1, '2017-10-04 11:34:33', '2017-10-04 11:34:33', '9e629f02-aef9-4468-a613-a1e958791fb4'),
(8, 15, 'Images', 2, '2017-10-04 11:34:33', '2017-10-04 11:34:33', '9f410218-2401-4c69-a2a7-2db6d7c8fe7a'),
(9, 22, 'Default', 1, '2017-10-04 13:18:06', '2017-10-04 13:18:06', '00eeec22-51c5-41c5-add8-a7110cdb7d6f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE IF NOT EXISTS `craft_fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Body', 'body', 'global', '', 0, 'RichText', '{"configFile":"Simple.json","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","purifierConfig":"","columnType":"text"}', '2017-07-17 14:04:50', '2017-10-04 11:57:47', '1ad4a675-0489-41be-9f36-f7b63a07abbd'),
(2, 1, 'Tags', 'tags', 'global', NULL, 0, 'Tags', '{"source":"taggroup:1"}', '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'ffd8a766-8985-41ef-a5d0-a0850b7d170a'),
(3, 2, 'Secondary Contents', 'secondaryContents', 'global', '', 0, 'RichText', '{"configFile":"","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","purifierConfig":"","columnType":"text"}', '2017-07-17 14:31:26', '2017-07-17 14:31:26', '6fb1b2dc-17c4-4db9-a0a5-2bad5ce5dc37'),
(4, 2, 'Hero Image', 'heroImage', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"1","allowedKinds":["image"],"limit":"1","viewMode":"large","selectionLabel":""}', '2017-08-04 11:52:58', '2017-10-04 11:31:55', '78d91c2d-1ec3-4762-a7a1-2ee00ba027a6'),
(5, 1, 'Standfirst', 'standfirst', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"1","initialRows":"4"}', '2017-10-04 10:24:00', '2017-10-04 11:34:55', 'c5b62d21-3ca3-4313-9217-4c90fb5bd031'),
(6, 1, 'Project Title', 'projectTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2017-10-04 10:24:22', '2017-10-04 10:24:22', 'b1e72059-b4a3-45d9-9879-1fac05898bec'),
(7, 1, 'Testimonial Title', 'testimonialTitle', 'global', '', 0, 'PlainText', '{"placeholder":"","maxLength":"","multiline":"","initialRows":"4"}', '2017-10-04 10:24:38', '2017-10-04 10:24:38', '3194c4f9-bb52-4929-b02c-c8324b3125a3'),
(8, 1, 'Testimonial', 'testimonial', 'global', '', 0, 'RichText', '{"configFile":"Simple.json","availableAssetSources":"*","availableTransforms":"*","cleanupHtml":"1","purifyHtml":"1","purifierConfig":"","columnType":"text"}', '2017-10-04 10:24:53', '2017-10-04 11:58:01', '96ab85aa-0cc7-4220-9456-537d2fdc06f8'),
(9, 2, 'Project Images', 'projectImages', 'global', '', 0, 'Assets', '{"useSingleFolder":"","sources":"*","defaultUploadLocationSource":"1","defaultUploadLocationSubpath":"","singleUploadLocationSource":"1","singleUploadLocationSubpath":"","restrictFiles":"","limit":"","viewMode":"list","selectionLabel":""}', '2017-10-04 11:32:30', '2017-10-04 11:32:30', '3ebdfd6d-fe7b-4fcd-a2b1-b0e62af1c6aa');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE IF NOT EXISTS `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE IF NOT EXISTS `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '2.6.2991', '2.6.10', 0, 'Graphical House', 'http://craftcms', 'UTC', 1, 0, '2017-07-17 14:04:48', '2017-10-04 10:56:11', 'cb02b485-2b2a-4c41-9004-66d2a0bb66e8');

-- --------------------------------------------------------

--
-- Table structure for table `craft_locales`
--

CREATE TABLE IF NOT EXISTS `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_locales`
--

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
('en_gb', 1, '2017-07-17 14:04:48', '2017-07-17 14:04:48', '58f06ee5-74f0-46b4-96da-e2458d824b74');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE IF NOT EXISTS `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE IF NOT EXISTS `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'm000000_000000_base', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'bd5ce7d2-7b13-4ea2-88ab-c1d13d11e459'),
(2, NULL, 'm140730_000001_add_filename_and_format_to_transformindex', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '5fc29f18-7676-4fe5-875d-c9ca2020f354'),
(3, NULL, 'm140815_000001_add_format_to_transforms', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2db4f7ea-ffa2-482a-80b1-019665f8ed60'),
(4, NULL, 'm140822_000001_allow_more_than_128_items_per_field', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'b60cab11-2285-4b04-bd9f-96d5d5eaae05'),
(5, NULL, 'm140829_000001_single_title_formats', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '8c01a988-fb35-4b27-bdd9-72a9aba5eb22'),
(6, NULL, 'm140831_000001_extended_cache_keys', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '22389c4f-d1ac-41ca-b70f-2ada80a16049'),
(7, NULL, 'm140922_000001_delete_orphaned_matrix_blocks', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '172f52d0-1ad1-4ff4-ac23-86c1d311ea14'),
(8, NULL, 'm141008_000001_elements_index_tune', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'a798c39c-5dfe-405e-b995-92e933bd6464'),
(9, NULL, 'm141009_000001_assets_source_handle', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '440ae5a8-1bb8-4ca2-8ea3-0d15bca3e4f9'),
(10, NULL, 'm141024_000001_field_layout_tabs', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '7ea67271-7966-40d5-a10b-9f5e05ce371f'),
(11, NULL, 'm141030_000000_plugin_schema_versions', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'd9513811-27e3-43ac-9d29-9c07e8b510e2'),
(12, NULL, 'm141030_000001_drop_structure_move_permission', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'f9a05000-10fa-4a9c-aefb-d5fbc210d5b9'),
(13, NULL, 'm141103_000001_tag_titles', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '99c195fb-b254-4e37-aeb4-fcfeb3127713'),
(14, NULL, 'm141109_000001_user_status_shuffle', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'ad98fb69-d2a3-4a9b-9bf9-9f4604c50abd'),
(15, NULL, 'm141126_000001_user_week_start_day', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '254bc6df-794e-42b4-8783-256197503244'),
(16, NULL, 'm150210_000001_adjust_user_photo_size', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'd860234e-cea3-4171-a2f0-7d904cd33cc2'),
(17, NULL, 'm150724_000001_adjust_quality_settings', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '19f31d53-d6b0-4fb0-a76a-fdea400e94ba'),
(18, NULL, 'm150827_000000_element_index_settings', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'f6e09f90-922a-4b44-bae5-bee29ba09d34'),
(19, NULL, 'm150918_000001_add_colspan_to_widgets', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '1a054efc-3fd2-47a6-ac92-822b238164dd'),
(20, NULL, 'm151007_000000_clear_asset_caches', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '7551fbb5-6bb8-42cd-9a5e-f15c18305a04'),
(21, NULL, 'm151109_000000_text_url_formats', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '4c6a0214-30e8-44eb-a59b-8b7f7a267d2f'),
(22, NULL, 'm151110_000000_move_logo', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'd8a04962-78c7-4ed7-8493-1efffcf32a7a'),
(23, NULL, 'm151117_000000_adjust_image_widthheight', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'ccd6212c-e5ba-4391-81d9-14ee31f78c4c'),
(24, NULL, 'm151127_000000_clear_license_key_status', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '1f66888c-701d-4799-86f9-3cb9e997479a'),
(25, NULL, 'm151127_000000_plugin_license_keys', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'e25b7561-fca4-46c5-b1e4-756253009449'),
(26, NULL, 'm151130_000000_update_pt_widget_feeds', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '60d5d616-52a9-4c5f-bf10-8b0c07fb492a'),
(27, NULL, 'm160114_000000_asset_sources_public_url_default_true', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'bdf916c8-843a-4a5e-84f0-0ad8a4c2ebbc'),
(28, NULL, 'm160223_000000_sortorder_to_smallint', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '3756f489-1dc0-49af-826f-3d0023d81b67'),
(29, NULL, 'm160229_000000_set_default_entry_statuses', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '9023cfa7-dc11-4e67-8736-e936f769cc26'),
(30, NULL, 'm160304_000000_client_permissions', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'a4be34ea-4b35-4f6e-81a3-a9cae8f2d7ab'),
(31, NULL, 'm160322_000000_asset_filesize', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '48d86a95-861f-4a48-b59b-c913d93b4ab2'),
(32, NULL, 'm160503_000000_orphaned_fieldlayouts', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'fdfc14d5-1f3c-4fac-809b-0bfadade26ad'),
(33, NULL, 'm160510_000000_tasksettings', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'd6e94c03-6bcd-45a4-9f80-cdd95f587cde'),
(34, NULL, 'm160829_000000_pending_user_content_cleanup', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'c6568446-bb1a-4deb-abc6-d07ffd3f086f'),
(35, NULL, 'm160830_000000_asset_index_uri_increase', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'bd6f499d-873f-4366-b840-661f3bf10bb8'),
(36, NULL, 'm160919_000000_usergroup_handle_title_unique', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '0b704fce-e642-43b8-ad4d-7b04b60e873b'),
(37, NULL, 'm161108_000000_new_version_format', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '4d00895d-3d42-4656-a6e4-85664dfa8ba9'),
(38, NULL, 'm161109_000000_index_shuffle', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', 'bac8b717-8263-4ec9-9bc0-ea0aa9543aa2'),
(39, NULL, 'm170612_000000_route_index_shuffle', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '2017-07-17 14:04:48', '9b26ef6c-7430-466a-b6bd-51fa0c961027'),
(40, 2, 'm150916_010101_Commerce_Rename', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '6aee0c84-ff81-48f9-b93b-d81ad87e3c44'),
(41, 2, 'm150917_010101_Commerce_DropEmailTypeColumn', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'c040ff7c-f0da-49cb-adb3-3e3900360eec'),
(42, 2, 'm150917_010102_Commerce_RenameCodeToHandletaxCatColumn', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'c4cc6e93-4bf3-4dab-b94d-60b9c62415f3'),
(43, 2, 'm150918_010101_Commerce_AddProductTypeLocales', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'f1e8d15f-2115-41a1-ac56-ae9c686a43ae'),
(44, 2, 'm150918_010102_Commerce_RemoveNonLocaleBasedUrlFormat', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'e2d801df-7cc1-45d1-bb9f-577833b1aadd'),
(45, 2, 'm150919_010101_Commerce_AddHasDimensionsToProductType', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'ad6f2f37-679f-4beb-816e-36411bdea355'),
(46, 2, 'm151004_142113_commerce_PaymentMethods_name_unique', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '5317375e-3431-4f34-8304-2904fefa67cb'),
(47, 2, 'm151018_010101_Commerce_DiscountCodeNull', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '890401cc-fb9c-4e4c-aa30-9c64ea447ba9'),
(48, 2, 'm151025_010101_Commerce_AddHandleToShippingMethod', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'd2ae0de0-35c5-4d25-9aab-d60b8fd7876a'),
(49, 2, 'm151027_010101_Commerce_NewVariantUI', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'ebe26e44-4bad-4c57-990a-f20321f91cae'),
(50, 2, 'm151027_010102_Commerce_ProductDateNames', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '382b8e6e-d9f2-417a-b985-52246757313b'),
(51, 2, 'm151102_010101_Commerce_PaymentTypeInMethodNotSettings', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '0458cdca-5788-49c1-a266-42c3ddafd5c6'),
(52, 2, 'm151103_010101_Commerce_DefaultVariant', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2f03c2fa-53d9-4eb1-a0f7-0271c4cabff0'),
(53, 2, 'm151109_010101_Commerce_AddCompanyNumberToAddress', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '76851b86-5ec1-4db4-a598-68ef45541749'),
(54, 2, 'm151109_010102_Commerce_AddOptionsToLineItems', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '911646e3-997c-4983-8a10-ace13e94f659'),
(55, 2, 'm151110_010101_Commerce_RenameCompanyToAddress', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '95ad6cb4-edb3-44d3-b95b-2d3cc067e1a3'),
(56, 2, 'm151111_010101_Commerce_ShowVariantTitleField', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '099608f2-e86b-456b-b2e4-b9fa6e8f9464'),
(57, 2, 'm151112_010101_Commerce_AutoSkuFormat', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '70ef7af2-cbd4-4fe9-9b7e-26380e9e3e18'),
(58, 2, 'm151117_010101_Commerce_TaxIncluded', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'f8879d98-06a5-417f-87f4-d8ff5d443703'),
(59, 2, 'm151124_010101_Commerce_AddressManagement', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '7bff8fa3-05fb-44b5-8393-d3918c47f800'),
(60, 2, 'm151127_010101_Commerce_TaxRateTaxableOptions', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '5c08caad-fe9f-45d1-be10-b94e2e1ad90d'),
(61, 2, 'm151210_010101_Commerce_FixMissingLineItemDimensionData', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '65d06f0f-f516-44fa-a34b-9a81d03574a8'),
(62, 2, 'm160215_010101_Commerce_ConsistentDecimalType', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'fa5a930b-870d-4f6a-a695-8c0c8e68c06c'),
(63, 2, 'm160226_010101_Commerce_OrderStatusSortOrder', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '22dc841a-c0e7-4464-84ea-474881b5caa7'),
(64, 2, 'm160226_010102_Commerce_isCompleted', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'dbd53505-e09e-48a1-be5a-ecf91b551196'),
(65, 2, 'm160227_010101_Commerce_OrderAdjustmentIncludedFlag', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '9ce1db32-0491-466a-9465-c7c5e8c51f91'),
(66, 2, 'm160229_010101_Commerce_ShippingZone', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'f7395606-0cad-46e2-9cef-2d3408e36940'),
(67, 2, 'm160229_010104_Commerce_SoftDeleteAndReorderPaymentMethod', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2b3b3530-6314-468c-904c-919a6a9700da'),
(68, 2, 'm160401_010101_Commerce_KeepAllTransactions', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '13a80fae-1e60-4852-99f4-81ece0340238'),
(69, 2, 'm160405_010101_Commerce_FixDefaultVariantId', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'ceb95b17-c9a7-4618-b633-e0270b35e18e'),
(70, 2, 'm160406_010101_Commerce_RemoveUnusedAuthorId', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '1414da10-935f-4851-8815-3cdfb9a49364'),
(71, 2, 'm160425_010101_Commerce_DeleteCountriesAndStates', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'd53200f3-bb44-4f42-ada1-a92aaa7c93ca'),
(72, 2, 'm160510_010101_Commerce_EmailRecipientType', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '182365eb-50fb-42f4-82d7-d8c9fbf1cf63'),
(73, 2, 'm160606_010101_Commerce_PerEmailLimitOnDiscount', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'f07464e3-7c8c-4fa2-96f0-c22b7337f192'),
(74, 2, 'm160706_010101_Commerce_Currencies', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'b908a6a2-399f-4bc7-a90a-e96ebb28be59'),
(75, 2, 'm160806_010101_Commerce_RemoveShowInLabel', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'b82e5ce7-0a88-4f96-bf19-21565fc69914'),
(76, 2, 'm160806_010102_Commerce_AddVatTaxRateOption', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'a1dfd51c-0657-4077-9c14-e13159e70685'),
(77, 2, 'm160825_010101_Commerce_AddMaxQtyToDiscount', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'e639857a-577e-493e-9bd9-d3bfcc3856a5'),
(78, 2, 'm160826_010101_Commerce_NewAddressFields', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'a26165e3-9ac3-4b0d-a593-216133915d38'),
(79, 2, 'm160915_010101_Commerce_RenameCurrencies', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '002e428d-68e2-40e3-919f-98b3b0afc1ca'),
(80, 2, 'm160916_010102_Commerce_PdfFilenameFormat', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '67aa35cc-9956-48c0-8417-9f08f7cd9d13'),
(81, 2, 'm160917_010103_Commerce_DescriptionFormat', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'b8a0bfd8-fd50-4ac1-bfac-c3e835cc7b14'),
(82, 2, 'm160917_010104_Commerce_ShippingCategories', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '0540464b-f26d-4290-a33d-e87acf8b0095'),
(83, 2, 'm160923_010101_Commerce_OrderLocale', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2ceafb34-5132-4f66-8eb1-a785df5f19cf'),
(84, 2, 'm160927_010101_Commerce_ProductTypeShippingTaxCategories', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '83413b46-e29b-48b1-96f9-a2199c3a388d'),
(85, 2, 'm160927_010101_Commerce_ShippingRuleCategories', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '98551f0d-71e0-4d8e-8a42-a5cc863940b4'),
(86, 2, 'm160930_010101_Commerce_RenameDefaultCurrencyToPrimary', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'edbb1a7b-6db9-4149-af6e-e37295a4ae61'),
(87, 2, 'm161001_010101_Commerce_LineItemShippingCat', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'be743af8-d0bd-44ec-805f-df4fa8cb97de'),
(88, 2, 'm161001_010102_Commerce_DiscountOrdering', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'd8f72922-a699-4703-8862-61fd6b6f6a6e'),
(89, 2, 'm161001_010103_Commerce_DiscountStopProcessing', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '4e2fecbd-a32f-4a06-a76a-e654b9231cbb'),
(90, 2, 'm161001_010104_Commerce_SaveTransactionCode', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '6cc789ca-4dc1-494b-b06d-bf8fecd46199'),
(91, 2, 'm161001_010105_Commerce_RemovePaymentCurrencyName', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'bca2b3e8-56b3-4b1e-9534-946d58e17179'),
(92, 2, 'm161024_010101_Commerce_FixDefaultShippingAndTaxCategoriesOnProducts', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'afaa8e04-e89d-4cde-8bee-8462953c9222'),
(93, 2, 'm161101_010101_Commerce_AddBaseTaxToOrder', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '838ab290-be67-4ff6-a2f9-6dcf0f28b4e9'),
(94, 2, 'm170227_010101_Commerce_RemoveNameUniquenessFromShippingRules', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '848f6160-e099-41f2-b2d7-64010070e4d9'),
(95, 2, 'm170411_010101_Commerce_AdditionalTaxRateTaxables', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '1462a8b4-96c6-4d32-8434-917df41be604'),
(96, 2, 'm170411_010102_Commerce_OrderBaseTaxIncluded', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '5d3eaae1-87be-46be-9bb2-42527ace7b47'),
(97, 2, 'm170426_010101_Commerce_IncreaseTaxRateDecimal', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '96860de0-5a0a-4d9b-8efa-ffa8a8aaeafd'),
(98, 2, 'm170609_010101_Commerce_AddRecieptEmailSettingToStripeGateway', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'fc86340d-b434-4cad-94d0-90dc854212b7'),
(99, 2, 'm170727_010101_Commerce_AddPercentageOffOption', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'acc661eb-26e1-4509-b470-7c61018f8187'),
(100, 2, 'm170801_010101_Commerce_DropCustomerEmail', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-04 13:14:06', 'cf45292e-db1f-4395-82eb-cf8c9aea0107');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE IF NOT EXISTS `craft_plugins` (
  `id` int(11) NOT NULL,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'InstantAnalytics', '1.1.10', '1.0.0', NULL, 'unknown', 1, '{"googleAnalyticsTracking":"UA-41226144-5","stripQueryString":"1","productCategoryField":"","productBrandField":"","autoSendAddToCart":true,"autoSendRemoveFromCart":true,"autoSendPurchaseComplete":true}', '2017-08-04 11:49:22', '2017-08-04 11:49:22', '2017-10-06 12:03:09', '1e655e3e-9375-4812-8e0d-d8ba9759f025'),
(2, 'Commerce', '1.2.1349', '1.2.80', NULL, 'unknown', 1, '{"weightUnits":"g","dimensionUnits":"mm","emailSenderAddress":null,"emailSenderName":null,"orderPdfPath":"shop\\/_pdf\\/order","orderPdfFilenameFormat":"Order-{number}"}', '2017-10-04 13:14:06', '2017-10-04 13:14:06', '2017-10-06 12:03:09', 'e9c5016e-c8d8-4828-bd06-928cfeabb15f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_rackspaceaccess`
--

CREATE TABLE IF NOT EXISTS `craft_rackspaceaccess` (
  `id` int(11) NOT NULL,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE IF NOT EXISTS `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 3, NULL, 4, 1, '2017-08-04 09:08:27', '2017-08-04 09:08:27', '90ba138a-9bcd-47c5-8a74-3312557ca171'),
(40, 2, 5, NULL, 7, 1, '2017-10-04 11:52:53', '2017-10-04 11:52:53', '131c735e-ee6e-4c1f-8965-d542d4e4354b'),
(41, 2, 5, NULL, 8, 2, '2017-10-04 11:52:53', '2017-10-04 11:52:53', 'd5e5aa24-d187-448e-b792-0b22ce3bc599'),
(42, 2, 5, NULL, 9, 3, '2017-10-04 11:52:53', '2017-10-04 11:52:53', 'f78a87c9-2e5c-43e4-99d7-2f3ec36d1796'),
(43, 4, 5, NULL, 10, 1, '2017-10-04 11:52:53', '2017-10-04 11:52:53', 'fbbff7cc-6302-41e5-8e15-22fdedc376cc'),
(44, 9, 5, NULL, 11, 1, '2017-10-04 11:52:53', '2017-10-04 11:52:53', '4c666c55-5c52-492c-94c0-d6334e324caf'),
(45, 9, 5, NULL, 14, 2, '2017-10-04 11:52:53', '2017-10-04 11:52:53', '5389466d-7cfa-4e8e-823e-f4a12e8513f8'),
(46, 9, 5, NULL, 13, 3, '2017-10-04 11:52:53', '2017-10-04 11:52:53', '68588c91-5c7b-41a8-a230-b6f4bf406b70'),
(47, 9, 5, NULL, 15, 4, '2017-10-04 11:52:53', '2017-10-04 11:52:53', 'b680fc72-8f35-4274-8593-7cb33699a151'),
(48, 9, 5, NULL, 12, 5, '2017-10-04 11:52:53', '2017-10-04 11:52:53', 'a3914682-d844-445d-a252-5ea0fb404d8e'),
(49, 9, 5, NULL, 16, 6, '2017-10-04 11:52:53', '2017-10-04 11:52:53', 'de312709-5380-4632-bb77-880c5182df55');

-- --------------------------------------------------------

--
-- Table structure for table `craft_routes`
--

CREATE TABLE IF NOT EXISTS `craft_routes` (
  `id` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_routes`
--

INSERT INTO `craft_routes` (`id`, `locale`, `urlParts`, `urlPattern`, `template`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, '["tags\\/"]', 'tags\\/', 'tags/_tag', 1, '2017-07-17 15:14:41', '2017-07-17 15:42:06', 'b59c95f3-198f-498f-9f79-3ef097596ea2'),
(2, NULL, '["work\\/",["slug","[^\\\\\\/]+"]]', 'work\\/(?P<slug>[^\\/]+)', 'work/_entry', 2, '2017-08-08 11:13:29', '2017-08-08 11:38:57', 'adb17fc0-5a15-412d-9070-1d2fd9b59c20');

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE IF NOT EXISTS `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`) VALUES
(10, 'kind', 0, 'en_gb', ' image '),
(10, 'extension', 0, 'en_gb', ' jpg '),
(10, 'filename', 0, 'en_gb', ' o8a8104 rt c6i6 jpg '),
(2, 'slug', 0, 'en_gb', ' homepage '),
(2, 'title', 0, 'en_gb', ' welcome to craftcms '),
(2, 'field', 1, 'en_gb', ' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon craftcms will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
(3, 'slug', 0, 'en_gb', ' we just installed craft '),
(3, 'title', 0, 'en_gb', ' so this is a news article '),
(3, 'field', 1, 'en_gb', ' craft is the cms that s powering craftcms it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),
(3, 'field', 2, 'en_gb', ' company '),
(3, 'field', 3, 'en_gb', ' well this is lovely isn t it '),
(5, 'slug', 0, 'en_gb', ' bute fabrics '),
(5, 'title', 0, 'en_gb', ' bute fabrics '),
(5, 'field', 4, 'en_gb', ' bute fabrics composition '),
(5, 'field', 1, 'en_gb', ' we revitalised bute fabrics brand enabling them to develop their well established reputation and explore new markets our modern logotype retains the key features of original while the new diagonal strike motif evokes the angles of the textiles on the loom a flexible colour palette can be adapted to reflect changing seasons and distinct markets with striking new art direction we developed an innovative new website that enables designers to create and share digital mood boards while our bespoke sample box allows the freedom to interact with the fabrics colours and textures like never before with a modern and adaptable brand our creative insight enabled bute fabrics to develop an industry leading approach to sampling tailored to the needs of their customers butefabrics com  '),
(4, 'name', 0, 'en_gb', ' company '),
(4, 'slug', 0, 'en_gb', ' company '),
(4, 'title', 0, 'en_gb', ' company '),
(1, 'username', 0, 'en_gb', ' global_admin '),
(1, 'firstname', 0, 'en_gb', ''),
(1, 'lastname', 0, 'en_gb', ''),
(1, 'fullname', 0, 'en_gb', ''),
(1, 'email', 0, 'en_gb', ' james greig cc '),
(1, 'slug', 0, 'en_gb', ''),
(5, 'field', 6, 'en_gb', ' colour texture bute '),
(5, 'field', 5, 'en_gb', ' founded in 1947 on the scottish island after which they take their name bute fabrics supply an international marketplace with exquisite high performance woollen textiles '),
(5, 'field', 2, 'en_gb', ' artdirection identity digital '),
(5, 'field', 7, 'en_gb', ' client testimonial '),
(5, 'field', 8, 'en_gb', ' graphical house have been instrumental in the rebrand of our business they were very easy to work with and quickly became an extension of our internal marketing team developing an understanding of our business and our need for change they have taken us out of our comfort zone and achieved results beyond expectation enabling us to think differently about our products and how they are communicated to our markets both existing and new the graphical house team are great communicators we ve had one hundred percent confidence in them from day one in what s been a game changing rebrand for bute fabrics john glenmanaging directorbute fabrics '),
(7, 'name', 0, 'en_gb', ' artdirection '),
(7, 'slug', 0, 'en_gb', ' artdirection '),
(7, 'title', 0, 'en_gb', ' artdirection '),
(8, 'name', 0, 'en_gb', ' identity '),
(8, 'slug', 0, 'en_gb', ' identity '),
(8, 'title', 0, 'en_gb', ' identity '),
(9, 'name', 0, 'en_gb', ' digital '),
(9, 'slug', 0, 'en_gb', ' digital '),
(9, 'title', 0, 'en_gb', ' digital '),
(10, 'slug', 0, 'en_gb', ' o8a8104 rt c6i6 '),
(10, 'title', 0, 'en_gb', ' bute fabrics composition '),
(5, 'field', 9, 'en_gb', ' strategy campaign line art direction campaign imagery identity logotype identity colour art direction colour art direction set design and photoshoot '),
(11, 'filename', 0, 'en_gb', ' bute copyline image tdqs jpg '),
(11, 'extension', 0, 'en_gb', ' jpg '),
(11, 'kind', 0, 'en_gb', ' image '),
(11, 'slug', 0, 'en_gb', ' bute copyline image tdqs '),
(11, 'title', 0, 'en_gb', ' strategy campaign line '),
(12, 'filename', 0, 'en_gb', ' bute9 783z jpg '),
(12, 'extension', 0, 'en_gb', ' jpg '),
(12, 'kind', 0, 'en_gb', ' image '),
(12, 'slug', 0, 'en_gb', ' bute9 783z '),
(12, 'title', 0, 'en_gb', ' art direction colour '),
(13, 'filename', 0, 'en_gb', ' butelogotype nntr jpg '),
(13, 'extension', 0, 'en_gb', ' jpg '),
(13, 'kind', 0, 'en_gb', ' image '),
(13, 'slug', 0, 'en_gb', ' butelogotype nntr '),
(13, 'title', 0, 'en_gb', ' identity logotype '),
(14, 'filename', 0, 'en_gb', ' o8a7886 rt u87b jpg '),
(14, 'extension', 0, 'en_gb', ' jpg '),
(14, 'kind', 0, 'en_gb', ' image '),
(14, 'slug', 0, 'en_gb', ' o8a7886 rt u87b '),
(14, 'title', 0, 'en_gb', ' art direction campaign imagery '),
(15, 'filename', 0, 'en_gb', ' webgrid dka3 jpg '),
(15, 'extension', 0, 'en_gb', ' jpg '),
(15, 'kind', 0, 'en_gb', ' image '),
(15, 'slug', 0, 'en_gb', ' webgrid dka3 '),
(15, 'title', 0, 'en_gb', ' identity colour '),
(16, 'filename', 0, 'en_gb', ' webgrid4 kbx7 jpg '),
(16, 'extension', 0, 'en_gb', ' jpg '),
(16, 'kind', 0, 'en_gb', ' image '),
(16, 'slug', 0, 'en_gb', ' webgrid4 kbx7 '),
(16, 'title', 0, 'en_gb', ' art direction set design and photoshoot '),
(17, 'title', 0, 'en_gb', ' a new toga '),
(17, 'defaultsku', 0, 'en_gb', ' a new toga '),
(17, 'slug', 0, 'en_gb', ' a new toga '),
(18, 'sku', 0, 'en_gb', ' a new toga '),
(18, 'price', 0, 'en_gb', ' 10 '),
(18, 'width', 0, 'en_gb', ''),
(18, 'height', 0, 'en_gb', ''),
(18, 'length', 0, 'en_gb', ''),
(18, 'weight', 0, 'en_gb', ''),
(18, 'stock', 0, 'en_gb', ' 0 '),
(18, 'unlimitedstock', 0, 'en_gb', ' 1 '),
(18, 'minqty', 0, 'en_gb', ''),
(18, 'maxqty', 0, 'en_gb', ''),
(18, 'slug', 0, 'en_gb', ' a new toga '),
(18, 'title', 0, 'en_gb', ' a new toga '),
(19, 'title', 0, 'en_gb', ' parka with stripes on back '),
(19, 'defaultsku', 0, 'en_gb', ' parka with stripes on back '),
(19, 'slug', 0, 'en_gb', ' parka with stripes on back '),
(20, 'sku', 0, 'en_gb', ' parka with stripes on back '),
(20, 'price', 0, 'en_gb', ' 20 '),
(20, 'width', 0, 'en_gb', ' 50 '),
(20, 'height', 0, 'en_gb', ' 200 '),
(20, 'length', 0, 'en_gb', ' 100 '),
(20, 'weight', 0, 'en_gb', ' 0 '),
(20, 'stock', 0, 'en_gb', ' 0 '),
(20, 'unlimitedstock', 0, 'en_gb', ' 1 '),
(20, 'minqty', 0, 'en_gb', ''),
(20, 'maxqty', 0, 'en_gb', ''),
(20, 'slug', 0, 'en_gb', ' parka with stripes on back '),
(20, 'title', 0, 'en_gb', ' parka with stripes on back '),
(21, 'title', 0, 'en_gb', ' romper for a red eye '),
(21, 'defaultsku', 0, 'en_gb', ' romper for a red eye '),
(21, 'slug', 0, 'en_gb', ' romper for a red eye '),
(22, 'sku', 0, 'en_gb', ' romper for a red eye '),
(22, 'price', 0, 'en_gb', ' 30 '),
(22, 'width', 0, 'en_gb', ''),
(22, 'height', 0, 'en_gb', ''),
(22, 'length', 0, 'en_gb', ''),
(22, 'weight', 0, 'en_gb', ''),
(22, 'stock', 0, 'en_gb', ' 0 '),
(22, 'unlimitedstock', 0, 'en_gb', ' 1 '),
(22, 'minqty', 0, 'en_gb', ''),
(22, 'maxqty', 0, 'en_gb', ''),
(22, 'slug', 0, 'en_gb', ' romper for a red eye '),
(22, 'title', 0, 'en_gb', ' romper for a red eye '),
(23, 'title', 0, 'en_gb', ' the fleece awakens '),
(23, 'defaultsku', 0, 'en_gb', ' the fleece awakens '),
(23, 'slug', 0, 'en_gb', ' the fleece awakens '),
(24, 'sku', 0, 'en_gb', ' the fleece awakens '),
(24, 'price', 0, 'en_gb', ' 40 '),
(24, 'width', 0, 'en_gb', ''),
(24, 'height', 0, 'en_gb', ''),
(24, 'length', 0, 'en_gb', ''),
(24, 'weight', 0, 'en_gb', ''),
(24, 'stock', 0, 'en_gb', ' 0 '),
(24, 'unlimitedstock', 0, 'en_gb', ' 1 '),
(24, 'minqty', 0, 'en_gb', ''),
(24, 'maxqty', 0, 'en_gb', ''),
(24, 'slug', 0, 'en_gb', ' the fleece awakens '),
(24, 'title', 0, 'en_gb', ' the fleece awakens '),
(17, 'field', 1, 'en_gb', ''),
(17, 'field', 2, 'en_gb', ''),
(17, 'field', 4, 'en_gb', ''),
(17, 'field', 9, 'en_gb', ''),
(19, 'field', 1, 'en_gb', ''),
(19, 'field', 2, 'en_gb', ''),
(19, 'field', 4, 'en_gb', ''),
(19, 'field', 9, 'en_gb', ''),
(21, 'field', 1, 'en_gb', ''),
(21, 'field', 2, 'en_gb', ''),
(21, 'field', 4, 'en_gb', ''),
(21, 'field', 9, 'en_gb', ''),
(23, 'field', 1, 'en_gb', ''),
(23, 'field', 2, 'en_gb', ''),
(23, 'field', 4, 'en_gb', ''),
(23, 'field', 9, 'en_gb', ''),
(25, 'number', 0, 'en_gb', ' 5eb501462ca084bdbfd0dd0482c250d0 '),
(25, 'email', 0, 'en_gb', ''),
(25, 'slug', 0, 'en_gb', ''),
(26, 'number', 0, 'en_gb', ' 08ca57beae7927cd577eaa9479bc0421 '),
(26, 'email', 0, 'en_gb', ' 3stripe gmail com '),
(26, 'slug', 0, 'en_gb', '');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE IF NOT EXISTS `craft_sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'index', 1, '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'e4dfb648-74c2-437a-ae0c-ab05ed64743d'),
(2, NULL, 'News', 'news', 'channel', 1, 'news/_entry', 1, '2017-07-17 14:04:50', '2017-07-17 14:04:50', '2aff4007-7877-4f8c-b702-ec8e7480e851'),
(3, NULL, 'Projects', 'projects', 'channel', 1, 'work/_entry', 1, '2017-08-04 11:53:23', '2017-10-04 11:34:04', '1e94754f-07cb-453f-8bda-0a6e661c6266');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_i18n`
--

CREATE TABLE IF NOT EXISTS `craft_sections_i18n` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sections_i18n`
--

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'en_gb', 1, '__home__', NULL, '2017-07-17 14:04:50', '2017-07-17 14:04:50', '94c23e17-7e6b-405c-8376-cbba049cdaeb'),
(2, 2, 'en_gb', 1, 'news/{postDate.year}/{slug}', NULL, '2017-07-17 14:04:50', '2017-07-17 14:04:50', '1c6e0773-374f-42b5-b9be-ff71a440b7be'),
(3, 3, 'en_gb', 1, 'work/{slug}', NULL, '2017-08-04 11:53:23', '2017-08-04 11:53:23', '33ad6742-5e40-4cfd-9363-987063f3ccd6');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE IF NOT EXISTS `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'de6a9648c2326541b0c66a6ebbb678d30b89f229czozMjoidzllOVFlTDMxbW56fno0dkt2d1lnODJQS1BEQ3Z1VDMiOw==', '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'be0ed063-eff7-4ebd-92d5-2f64f44ac1c1'),
(2, 1, 'a6a733af484522aea6a81669a4445eaf5c06dc0eczozMjoifmRIb0lnXzM5TnpDb1h6SVdNUzg1an5DYXl5UThBZV8iOw==', '2017-08-04 08:59:24', '2017-08-04 08:59:24', 'd5ec106d-d31d-4755-b3bb-74631f58cd41'),
(4, 1, '2bdbfb65d35bd604a13ded73ce6a6b21dd43ffbdczozMjoiZnFnVExQVjVhdWdyZXVYU0dyUDVrVnZwT2k0VExCMDUiOw==', '2017-08-04 14:05:01', '2017-08-04 14:05:01', '2cb092c9-eb85-4872-b438-292accc2278f'),
(5, 1, 'e968b00f025e5ea722f6c65c6007d72754597cb6czozMjoiTU1tX2NvZlFyaV82Z0hHSjVHNzVidXlNM3lzazU0ZWoiOw==', '2017-08-04 14:05:02', '2017-08-04 14:05:02', '12467919-c9a9-4644-bf71-b91bb07b9d57'),
(6, 1, '170c1629749228a6b28bac89bd2db85b798883a1czozMjoiNWEySGlVUWpsMDdUOHpxRmZvUE5WTF9WbzJmTHZDeHYiOw==', '2017-08-08 11:01:49', '2017-08-08 11:01:49', 'e76e82c3-582f-4a8e-bdd6-1c7d3415ed71'),
(7, 1, '61c13a7655f06fbe6db274e579cd79e3bee10794czozMjoiUEdZSloxMGFURE1FS3JyaWRJajR4RFQwOUNKMExJWTkiOw==', '2017-10-04 10:22:54', '2017-10-04 15:14:43', '553d3da3-0a84-4d94-8578-1e52efecce57'),
(8, 1, '5bf0235a04307304046a09855fdde77cec8fdf56czozMjoidEdYQzhYSzlPamZqZzVOeEp3V1Y3SzhEQ3hHVFZHTzAiOw==', '2017-10-06 12:03:06', '2017-10-06 12:03:06', 'c0497e80-981b-4080-92d7-fbc2cfb96b8f');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE IF NOT EXISTS `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE IF NOT EXISTS `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE IF NOT EXISTS `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemsettings`
--

CREATE TABLE IF NOT EXISTS `craft_systemsettings` (
  `id` int(11) NOT NULL,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_systemsettings`
--

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'email', '{"protocol":"php","emailAddress":"james@greig.cc","senderName":"James Greig"}', '2017-07-17 14:04:50', '2017-07-17 14:04:50', '62e24442-b95b-4ec8-919f-4f19fe4fb1fa');

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE IF NOT EXISTS `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_taggroups`
--

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Default', 'default', 1, '2017-07-17 14:04:50', '2017-07-17 14:04:50', 'c6ad4d2f-373d-4ec9-8c70-8d6be2e66bc3');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE IF NOT EXISTS `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_tags`
--

INSERT INTO `craft_tags` (`id`, `groupId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 1, '2017-07-17 15:02:40', '2017-07-17 15:02:40', 'd96d5df6-4433-4486-9bb5-ddd8f2ecf0df'),
(7, 1, '2017-10-04 10:30:08', '2017-10-04 10:30:08', 'c9c374f1-e846-4c36-8702-dd8192b3a085'),
(8, 1, '2017-10-04 10:30:12', '2017-10-04 10:30:12', 'db0737b5-9472-47d1-aef8-a043e4d71a58'),
(9, 1, '2017-10-04 10:30:14', '2017-10-04 10:30:14', '4977814c-5e16-46bd-b70e-7e15ef519bff');

-- --------------------------------------------------------

--
-- Table structure for table `craft_tasks`
--

CREATE TABLE IF NOT EXISTS `craft_tasks` (
  `id` int(11) NOT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachecriteria`
--

CREATE TABLE IF NOT EXISTS `craft_templatecachecriteria` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE IF NOT EXISTS `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE IF NOT EXISTS `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE IF NOT EXISTS `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE IF NOT EXISTS `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE IF NOT EXISTS `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

CREATE TABLE IF NOT EXISTS `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'global_admin', NULL, NULL, NULL, 'james@greig.cc', '$2y$13$7ND3A2b7zCgQrxMT0gxwROn4o4MPP7dnVHQM/.HEKVl3h9CkLiYP.', NULL, 0, 1, 0, 0, 0, 0, 0, '2017-10-06 12:03:06', '127.0.0.1', NULL, NULL, '2017-08-04 08:59:17', NULL, NULL, NULL, NULL, 0, '2017-07-17 14:04:49', '2017-07-17 14:04:49', '2017-10-06 12:03:06', 'a83823f4-e88d-4c90-b7c6-660957aaabd1');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE IF NOT EXISTS `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'RecentEntries', 1, NULL, NULL, 1, '2017-07-17 14:04:54', '2017-10-04 14:56:27', '54b01afc-2c1b-4253-8cfb-0fa1edc31c8c'),
(2, 1, 'GetHelp', 4, NULL, NULL, 0, '2017-07-17 14:04:54', '2017-10-04 14:56:23', '8fe6139b-4a8e-46c5-9c70-a88f5618b8a4'),
(3, 1, 'Updates', 3, NULL, NULL, 1, '2017-07-17 14:04:54', '2017-10-04 14:56:27', 'edb882d7-0d43-4de1-bd1f-a2680d9b091e'),
(4, 1, 'Feed', 4, 2, '{"url":"https:\\/\\/craftcms.com\\/news.rss","title":"Craft News"}', 0, '2017-07-17 14:04:54', '2017-10-04 14:55:33', '66e92df0-89bc-4d82-bbd9-fefda863eaa6'),
(5, 1, 'QuickPost', 2, NULL, '{"section":"3","entryType":""}', 1, '2017-10-04 14:55:55', '2017-10-04 14:56:27', 'ca3c1a19-3b4c-4ec2-89fb-918804c2e8d7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  ADD KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  ADD KEY `craft_assetfiles_folderId_fk` (`folderId`);

--
-- Indexes for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  ADD KEY `craft_assetfolders_parentId_fk` (`parentId`),
  ADD KEY `craft_assetfolders_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  ADD KEY `craft_assetindexdata_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  ADD KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_fk` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  ADD KEY `craft_categorygroups_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_commerce_addresses`
--
ALTER TABLE `craft_commerce_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_addresses_countryId_fk` (`countryId`),
  ADD KEY `craft_commerce_addresses_stateId_fk` (`stateId`);

--
-- Indexes for table `craft_commerce_countries`
--
ALTER TABLE `craft_commerce_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_countries_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_commerce_countries_iso_unq_idx` (`iso`);

--
-- Indexes for table `craft_commerce_customers`
--
ALTER TABLE `craft_commerce_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_customers_userId_fk` (`userId`);

--
-- Indexes for table `craft_commerce_customers_addresses`
--
ALTER TABLE `craft_commerce_customers_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_customers_addresses_customerId_addressId_unq_idx` (`customerId`,`addressId`),
  ADD KEY `craft_commerce_customers_addresses_customerId_idx` (`customerId`),
  ADD KEY `craft_commerce_customers_addresses_addressId_idx` (`addressId`);

--
-- Indexes for table `craft_commerce_customer_discountuses`
--
ALTER TABLE `craft_commerce_customer_discountuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_customer_discountuses_customerId_discountId_unq_i` (`customerId`,`discountId`),
  ADD KEY `craft_commerce_customer_discountuses_discountId_fk` (`discountId`);

--
-- Indexes for table `craft_commerce_discounts`
--
ALTER TABLE `craft_commerce_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_discounts_code_unq_idx` (`code`),
  ADD KEY `craft_commerce_discounts_dateFrom_idx` (`dateFrom`),
  ADD KEY `craft_commerce_discounts_dateTo_idx` (`dateTo`);

--
-- Indexes for table `craft_commerce_discount_products`
--
ALTER TABLE `craft_commerce_discount_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_discount_products_discountId_productId_unq_idx` (`discountId`,`productId`),
  ADD KEY `craft_commerce_discount_products_productId_fk` (`productId`);

--
-- Indexes for table `craft_commerce_discount_producttypes`
--
ALTER TABLE `craft_commerce_discount_producttypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerc_discoun_producttype_discountI_productTypeI_unq_idx` (`discountId`,`productTypeId`),
  ADD KEY `craft_commerce_discount_producttypes_productTypeId_fk` (`productTypeId`);

--
-- Indexes for table `craft_commerce_discount_usergroups`
--
ALTER TABLE `craft_commerce_discount_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_discount_usergroups_discountId_userGroupId_unq_id` (`discountId`,`userGroupId`),
  ADD KEY `craft_commerce_discount_usergroups_userGroupId_fk` (`userGroupId`);

--
-- Indexes for table `craft_commerce_emails`
--
ALTER TABLE `craft_commerce_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_commerce_lineitems`
--
ALTER TABLE `craft_commerce_lineitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craf_commerc_lineitem_orderI_purchasableI_optionsSignatu_unq_idx` (`orderId`,`purchasableId`,`optionsSignature`),
  ADD KEY `craft_commerce_lineitems_purchasableId_fk` (`purchasableId`),
  ADD KEY `craft_commerce_lineitems_taxCategoryId_fk` (`taxCategoryId`),
  ADD KEY `craft_commerce_lineitems_shippingCategoryId_fk` (`shippingCategoryId`);

--
-- Indexes for table `craft_commerce_orderadjustments`
--
ALTER TABLE `craft_commerce_orderadjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_orderadjustments_orderId_idx` (`orderId`);

--
-- Indexes for table `craft_commerce_orderhistories`
--
ALTER TABLE `craft_commerce_orderhistories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_orderhistories_orderId_fk` (`orderId`),
  ADD KEY `craft_commerce_orderhistories_prevStatusId_fk` (`prevStatusId`),
  ADD KEY `craft_commerce_orderhistories_newStatusId_fk` (`newStatusId`),
  ADD KEY `craft_commerce_orderhistories_customerId_fk` (`customerId`);

--
-- Indexes for table `craft_commerce_orders`
--
ALTER TABLE `craft_commerce_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_orders_number_idx` (`number`),
  ADD KEY `craft_commerce_orders_billingAddressId_fk` (`billingAddressId`),
  ADD KEY `craft_commerce_orders_shippingAddressId_fk` (`shippingAddressId`),
  ADD KEY `craft_commerce_orders_paymentMethodId_fk` (`paymentMethodId`),
  ADD KEY `craft_commerce_orders_customerId_fk` (`customerId`),
  ADD KEY `craft_commerce_orders_orderStatusId_fk` (`orderStatusId`);

--
-- Indexes for table `craft_commerce_ordersettings`
--
ALTER TABLE `craft_commerce_ordersettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_ordersettings_handle_unq_idx` (`handle`),
  ADD KEY `craft_commerce_ordersettings_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_commerce_orderstatuses`
--
ALTER TABLE `craft_commerce_orderstatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_commerce_orderstatus_emails`
--
ALTER TABLE `craft_commerce_orderstatus_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_orderstatus_emails_orderStatusId_fk` (`orderStatusId`),
  ADD KEY `craft_commerce_orderstatus_emails_emailId_fk` (`emailId`);

--
-- Indexes for table `craft_commerce_paymentcurrencies`
--
ALTER TABLE `craft_commerce_paymentcurrencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_paymentcurrencies_iso_unq_idx` (`iso`);

--
-- Indexes for table `craft_commerce_paymentmethods`
--
ALTER TABLE `craft_commerce_paymentmethods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_paymentmethods_name_unq_idx` (`name`);

--
-- Indexes for table `craft_commerce_products`
--
ALTER TABLE `craft_commerce_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_products_typeId_idx` (`typeId`),
  ADD KEY `craft_commerce_products_postDate_idx` (`postDate`),
  ADD KEY `craft_commerce_products_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_commerce_products_taxCategoryId_fk` (`taxCategoryId`),
  ADD KEY `craft_commerce_products_shippingCategoryId_fk` (`shippingCategoryId`);

--
-- Indexes for table `craft_commerce_producttypes`
--
ALTER TABLE `craft_commerce_producttypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_producttypes_handle_unq_idx` (`handle`),
  ADD KEY `craft_commerce_producttypes_fieldLayoutId_fk` (`fieldLayoutId`),
  ADD KEY `craft_commerce_producttypes_variantFieldLayoutId_fk` (`variantFieldLayoutId`);

--
-- Indexes for table `craft_commerce_producttypes_i18n`
--
ALTER TABLE `craft_commerce_producttypes_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_producttypes_i18n_productTypeId_locale_unq_idx` (`productTypeId`,`locale`),
  ADD KEY `craft_commerce_producttypes_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_commerce_producttypes_shippingcategories`
--
ALTER TABLE `craft_commerce_producttypes_shippingcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craf_commer_productty_shippingcateg_productTy_shippingCateg_un_i` (`productTypeId`,`shippingCategoryId`),
  ADD KEY `craft_commerc_producttype_shippingcategorie_shippingCategoryI_fk` (`shippingCategoryId`);

--
-- Indexes for table `craft_commerce_producttypes_taxcategories`
--
ALTER TABLE `craft_commerce_producttypes_taxcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craf_commerc_producttyp_taxcategori_productType_taxCategory_un_i` (`productTypeId`,`taxCategoryId`),
  ADD KEY `craft_commerce_producttypes_taxcategories_taxCategoryId_fk` (`taxCategoryId`);

--
-- Indexes for table `craft_commerce_purchasables`
--
ALTER TABLE `craft_commerce_purchasables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_purchasables_sku_unq_idx` (`sku`);

--
-- Indexes for table `craft_commerce_sales`
--
ALTER TABLE `craft_commerce_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_commerce_sale_products`
--
ALTER TABLE `craft_commerce_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_sale_products_saleId_productId_unq_idx` (`saleId`,`productId`),
  ADD KEY `craft_commerce_sale_products_productId_fk` (`productId`);

--
-- Indexes for table `craft_commerce_sale_producttypes`
--
ALTER TABLE `craft_commerce_sale_producttypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_sale_producttypes_saleId_productTypeId_unq_idx` (`saleId`,`productTypeId`),
  ADD KEY `craft_commerce_sale_producttypes_productTypeId_fk` (`productTypeId`);

--
-- Indexes for table `craft_commerce_sale_usergroups`
--
ALTER TABLE `craft_commerce_sale_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_sale_usergroups_saleId_userGroupId_unq_idx` (`saleId`,`userGroupId`),
  ADD KEY `craft_commerce_sale_usergroups_userGroupId_fk` (`userGroupId`);

--
-- Indexes for table `craft_commerce_shippingcategories`
--
ALTER TABLE `craft_commerce_shippingcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_shippingcategories_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_commerce_shippingmethods`
--
ALTER TABLE `craft_commerce_shippingmethods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_shippingmethods_name_unq_idx` (`name`);

--
-- Indexes for table `craft_commerce_shippingrules`
--
ALTER TABLE `craft_commerce_shippingrules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_shippingrules_name_idx` (`name`),
  ADD KEY `craft_commerce_shippingrules_methodId_idx` (`methodId`),
  ADD KEY `craft_commerce_shippingrules_shippingZoneId_fk` (`shippingZoneId`);

--
-- Indexes for table `craft_commerce_shippingrule_categories`
--
ALTER TABLE `craft_commerce_shippingrule_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_shippingrule_categories_shippingRuleId_idx` (`shippingRuleId`),
  ADD KEY `craft_commerce_shippingrule_categories_shippingCategoryId_idx` (`shippingCategoryId`);

--
-- Indexes for table `craft_commerce_shippingzones`
--
ALTER TABLE `craft_commerce_shippingzones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_shippingzones_name_unq_idx` (`name`);

--
-- Indexes for table `craft_commerce_shippingzone_countries`
--
ALTER TABLE `craft_commerce_shippingzone_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerc_shippingzon_countrie_shippingZoneI_countryI_unq_id` (`shippingZoneId`,`countryId`),
  ADD KEY `craft_commerce_shippingzone_countries_shippingZoneId_idx` (`shippingZoneId`),
  ADD KEY `craft_commerce_shippingzone_countries_countryId_idx` (`countryId`);

--
-- Indexes for table `craft_commerce_shippingzone_states`
--
ALTER TABLE `craft_commerce_shippingzone_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_shippingzone_states_shippingZoneId_stateId_unq_id` (`shippingZoneId`,`stateId`),
  ADD KEY `craft_commerce_shippingzone_states_shippingZoneId_idx` (`shippingZoneId`),
  ADD KEY `craft_commerce_shippingzone_states_stateId_idx` (`stateId`);

--
-- Indexes for table `craft_commerce_states`
--
ALTER TABLE `craft_commerce_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_states_name_countryId_unq_idx` (`name`,`countryId`),
  ADD KEY `craft_commerce_states_countryId_fk` (`countryId`);

--
-- Indexes for table `craft_commerce_taxcategories`
--
ALTER TABLE `craft_commerce_taxcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_taxcategories_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_commerce_taxrates`
--
ALTER TABLE `craft_commerce_taxrates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_taxrates_taxZoneId_idx` (`taxZoneId`),
  ADD KEY `craft_commerce_taxrates_taxCategoryId_idx` (`taxCategoryId`);

--
-- Indexes for table `craft_commerce_taxzones`
--
ALTER TABLE `craft_commerce_taxzones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_taxzones_name_unq_idx` (`name`);

--
-- Indexes for table `craft_commerce_taxzone_countries`
--
ALTER TABLE `craft_commerce_taxzone_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_taxzone_countries_taxZoneId_countryId_unq_idx` (`taxZoneId`,`countryId`),
  ADD KEY `craft_commerce_taxzone_countries_taxZoneId_idx` (`taxZoneId`),
  ADD KEY `craft_commerce_taxzone_countries_countryId_idx` (`countryId`);

--
-- Indexes for table `craft_commerce_taxzone_states`
--
ALTER TABLE `craft_commerce_taxzone_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_taxzone_states_taxZoneId_stateId_unq_idx` (`taxZoneId`,`stateId`),
  ADD KEY `craft_commerce_taxzone_states_taxZoneId_idx` (`taxZoneId`),
  ADD KEY `craft_commerce_taxzone_states_stateId_idx` (`stateId`);

--
-- Indexes for table `craft_commerce_transactions`
--
ALTER TABLE `craft_commerce_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_commerce_transactions_parentId_fk` (`parentId`),
  ADD KEY `craft_commerce_transactions_paymentMethodId_fk` (`paymentMethodId`),
  ADD KEY `craft_commerce_transactions_orderId_fk` (`orderId`),
  ADD KEY `craft_commerce_transactions_userId_fk` (`userId`);

--
-- Indexes for table `craft_commerce_variants`
--
ALTER TABLE `craft_commerce_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_commerce_variants_sku_unq_idx` (`sku`),
  ADD KEY `craft_commerce_variants_productId_fk` (`productId`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD KEY `craft_content_title_idx` (`title`),
  ADD KEY `craft_content_locale_fk` (`locale`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`);

--
-- Indexes for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  ADD UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  ADD KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  ADD KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  ADD KEY `craft_emailmessages_locale_fk` (`locale`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_fk` (`authorId`);

--
-- Indexes for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entrydrafts_locale_fk` (`locale`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  ADD UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  ADD KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  ADD KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  ADD KEY `craft_entryversions_locale_fk` (`locale`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_context_idx` (`context`),
  ADD KEY `craft_fields_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_locales`
--
ALTER TABLE `craft_locales`
  ADD PRIMARY KEY (`locale`),
  ADD KEY `craft_locales_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  ADD KEY `craft_migrations_pluginId_fk` (`pluginId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  ADD KEY `craft_relations_sourceId_fk` (`sourceId`),
  ADD KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  ADD KEY `craft_relations_targetId_fk` (`targetId`);

--
-- Indexes for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_routes_locale_idx` (`locale`),
  ADD KEY `craft_routes_urlPattern_idx` (`urlPattern`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  ADD KEY `craft_sections_structureId_fk` (`structureId`);

--
-- Indexes for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  ADD KEY `craft_sections_i18n_locale_fk` (`locale`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_fk` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tasks_root_idx` (`root`),
  ADD KEY `craft_tasks_lft_idx` (`lft`),
  ADD KEY `craft_tasks_rgt_idx` (`rgt`),
  ADD KEY `craft_tasks_level_idx` (`level`);

--
-- Indexes for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecachecriteria_type_idx` (`type`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_fk` (`elementId`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  ADD KEY `craft_templatecaches_locale_fk` (`locale`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_fk` (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  ADD UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_preferredLocale_fk` (`preferredLocale`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_fk` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_addresses`
--
ALTER TABLE `craft_commerce_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_countries`
--
ALTER TABLE `craft_commerce_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `craft_commerce_customers`
--
ALTER TABLE `craft_commerce_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `craft_commerce_customers_addresses`
--
ALTER TABLE `craft_commerce_customers_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_customer_discountuses`
--
ALTER TABLE `craft_commerce_customer_discountuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_discounts`
--
ALTER TABLE `craft_commerce_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_discount_products`
--
ALTER TABLE `craft_commerce_discount_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_discount_producttypes`
--
ALTER TABLE `craft_commerce_discount_producttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_discount_usergroups`
--
ALTER TABLE `craft_commerce_discount_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_emails`
--
ALTER TABLE `craft_commerce_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_lineitems`
--
ALTER TABLE `craft_commerce_lineitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_orderadjustments`
--
ALTER TABLE `craft_commerce_orderadjustments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `craft_commerce_orderhistories`
--
ALTER TABLE `craft_commerce_orderhistories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_ordersettings`
--
ALTER TABLE `craft_commerce_ordersettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_commerce_orderstatuses`
--
ALTER TABLE `craft_commerce_orderstatuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_orderstatus_emails`
--
ALTER TABLE `craft_commerce_orderstatus_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_paymentcurrencies`
--
ALTER TABLE `craft_commerce_paymentcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_paymentmethods`
--
ALTER TABLE `craft_commerce_paymentmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_producttypes`
--
ALTER TABLE `craft_commerce_producttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_commerce_producttypes_i18n`
--
ALTER TABLE `craft_commerce_producttypes_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_commerce_producttypes_shippingcategories`
--
ALTER TABLE `craft_commerce_producttypes_shippingcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_producttypes_taxcategories`
--
ALTER TABLE `craft_commerce_producttypes_taxcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_sales`
--
ALTER TABLE `craft_commerce_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_sale_products`
--
ALTER TABLE `craft_commerce_sale_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_sale_producttypes`
--
ALTER TABLE `craft_commerce_sale_producttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_sale_usergroups`
--
ALTER TABLE `craft_commerce_sale_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_shippingcategories`
--
ALTER TABLE `craft_commerce_shippingcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_commerce_shippingmethods`
--
ALTER TABLE `craft_commerce_shippingmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_shippingrules`
--
ALTER TABLE `craft_commerce_shippingrules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_commerce_shippingrule_categories`
--
ALTER TABLE `craft_commerce_shippingrule_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_shippingzones`
--
ALTER TABLE `craft_commerce_shippingzones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_commerce_shippingzone_countries`
--
ALTER TABLE `craft_commerce_shippingzone_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `craft_commerce_shippingzone_states`
--
ALTER TABLE `craft_commerce_shippingzone_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_states`
--
ALTER TABLE `craft_commerce_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `craft_commerce_taxcategories`
--
ALTER TABLE `craft_commerce_taxcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_commerce_taxrates`
--
ALTER TABLE `craft_commerce_taxrates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_taxzones`
--
ALTER TABLE `craft_commerce_taxzones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_taxzone_countries`
--
ALTER TABLE `craft_commerce_taxzone_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_taxzone_states`
--
ALTER TABLE `craft_commerce_taxzone_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_commerce_transactions`
--
ALTER TABLE `craft_commerce_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_rackspaceaccess`
--
ALTER TABLE `craft_rackspaceaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `craft_routes`
--
ALTER TABLE `craft_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_systemsettings`
--
ALTER TABLE `craft_systemsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `craft_tasks`
--
ALTER TABLE `craft_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetfiles`
--
ALTER TABLE `craft_assetfiles`
  ADD CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetfolders`
--
ALTER TABLE `craft_assetfolders`
  ADD CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assetsources`
--
ALTER TABLE `craft_assetsources`
  ADD CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_i18n`
--
ALTER TABLE `craft_categorygroups_i18n`
  ADD CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_addresses`
--
ALTER TABLE `craft_commerce_addresses`
  ADD CONSTRAINT `craft_commerce_addresses_countryId_fk` FOREIGN KEY (`countryId`) REFERENCES `craft_commerce_countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_commerce_addresses_stateId_fk` FOREIGN KEY (`stateId`) REFERENCES `craft_commerce_states` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_commerce_customers`
--
ALTER TABLE `craft_commerce_customers`
  ADD CONSTRAINT `craft_commerce_customers_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_commerce_customers_addresses`
--
ALTER TABLE `craft_commerce_customers_addresses`
  ADD CONSTRAINT `craft_commerce_customers_addresses_addressId_fk` FOREIGN KEY (`addressId`) REFERENCES `craft_commerce_addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_customers_addresses_customerId_fk` FOREIGN KEY (`customerId`) REFERENCES `craft_commerce_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_customer_discountuses`
--
ALTER TABLE `craft_commerce_customer_discountuses`
  ADD CONSTRAINT `craft_commerce_customer_discountuses_customerId_fk` FOREIGN KEY (`customerId`) REFERENCES `craft_commerce_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_customer_discountuses_discountId_fk` FOREIGN KEY (`discountId`) REFERENCES `craft_commerce_discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_discount_products`
--
ALTER TABLE `craft_commerce_discount_products`
  ADD CONSTRAINT `craft_commerce_discount_products_discountId_fk` FOREIGN KEY (`discountId`) REFERENCES `craft_commerce_discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_discount_products_productId_fk` FOREIGN KEY (`productId`) REFERENCES `craft_commerce_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_discount_producttypes`
--
ALTER TABLE `craft_commerce_discount_producttypes`
  ADD CONSTRAINT `craft_commerce_discount_producttypes_discountId_fk` FOREIGN KEY (`discountId`) REFERENCES `craft_commerce_discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_discount_producttypes_productTypeId_fk` FOREIGN KEY (`productTypeId`) REFERENCES `craft_commerce_producttypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_discount_usergroups`
--
ALTER TABLE `craft_commerce_discount_usergroups`
  ADD CONSTRAINT `craft_commerce_discount_usergroups_discountId_fk` FOREIGN KEY (`discountId`) REFERENCES `craft_commerce_discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_discount_usergroups_userGroupId_fk` FOREIGN KEY (`userGroupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_lineitems`
--
ALTER TABLE `craft_commerce_lineitems`
  ADD CONSTRAINT `craft_commerce_lineitems_orderId_fk` FOREIGN KEY (`orderId`) REFERENCES `craft_commerce_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_commerce_lineitems_purchasableId_fk` FOREIGN KEY (`purchasableId`) REFERENCES `craft_elements` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_lineitems_shippingCategoryId_fk` FOREIGN KEY (`shippingCategoryId`) REFERENCES `craft_commerce_shippingcategories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_lineitems_taxCategoryId_fk` FOREIGN KEY (`taxCategoryId`) REFERENCES `craft_commerce_taxcategories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_orderadjustments`
--
ALTER TABLE `craft_commerce_orderadjustments`
  ADD CONSTRAINT `craft_commerce_orderadjustments_orderId_fk` FOREIGN KEY (`orderId`) REFERENCES `craft_commerce_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_commerce_orderhistories`
--
ALTER TABLE `craft_commerce_orderhistories`
  ADD CONSTRAINT `craft_commerce_orderhistories_customerId_fk` FOREIGN KEY (`customerId`) REFERENCES `craft_commerce_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_orderhistories_newStatusId_fk` FOREIGN KEY (`newStatusId`) REFERENCES `craft_commerce_orderstatuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_orderhistories_orderId_fk` FOREIGN KEY (`orderId`) REFERENCES `craft_commerce_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_orderhistories_prevStatusId_fk` FOREIGN KEY (`prevStatusId`) REFERENCES `craft_commerce_orderstatuses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_orders`
--
ALTER TABLE `craft_commerce_orders`
  ADD CONSTRAINT `craft_commerce_orders_billingAddressId_fk` FOREIGN KEY (`billingAddressId`) REFERENCES `craft_commerce_addresses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_commerce_orders_customerId_fk` FOREIGN KEY (`customerId`) REFERENCES `craft_commerce_customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_commerce_orders_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_commerce_orders_orderStatusId_fk` FOREIGN KEY (`orderStatusId`) REFERENCES `craft_commerce_orderstatuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_orders_paymentMethodId_fk` FOREIGN KEY (`paymentMethodId`) REFERENCES `craft_commerce_paymentmethods` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_commerce_orders_shippingAddressId_fk` FOREIGN KEY (`shippingAddressId`) REFERENCES `craft_commerce_addresses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_commerce_ordersettings`
--
ALTER TABLE `craft_commerce_ordersettings`
  ADD CONSTRAINT `craft_commerce_ordersettings_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_commerce_orderstatus_emails`
--
ALTER TABLE `craft_commerce_orderstatus_emails`
  ADD CONSTRAINT `craft_commerce_orderstatus_emails_emailId_fk` FOREIGN KEY (`emailId`) REFERENCES `craft_commerce_emails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_orderstatus_emails_orderStatusId_fk` FOREIGN KEY (`orderStatusId`) REFERENCES `craft_commerce_orderstatuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_products`
--
ALTER TABLE `craft_commerce_products`
  ADD CONSTRAINT `craft_commerce_products_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_commerce_products_shippingCategoryId_fk` FOREIGN KEY (`shippingCategoryId`) REFERENCES `craft_commerce_shippingcategories` (`id`),
  ADD CONSTRAINT `craft_commerce_products_taxCategoryId_fk` FOREIGN KEY (`taxCategoryId`) REFERENCES `craft_commerce_taxcategories` (`id`),
  ADD CONSTRAINT `craft_commerce_products_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_commerce_producttypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_commerce_producttypes`
--
ALTER TABLE `craft_commerce_producttypes`
  ADD CONSTRAINT `craft_commerce_producttypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_commerce_producttypes_variantFieldLayoutId_fk` FOREIGN KEY (`variantFieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_commerce_producttypes_i18n`
--
ALTER TABLE `craft_commerce_producttypes_i18n`
  ADD CONSTRAINT `craft_commerce_producttypes_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_producttypes_i18n_productTypeId_fk` FOREIGN KEY (`productTypeId`) REFERENCES `craft_commerce_producttypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_commerce_producttypes_shippingcategories`
--
ALTER TABLE `craft_commerce_producttypes_shippingcategories`
  ADD CONSTRAINT `craft_commerc_producttype_shippingcategorie_shippingCategoryI_fk` FOREIGN KEY (`shippingCategoryId`) REFERENCES `craft_commerce_shippingcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_producttypes_shippingcategories_productTypeId_fk` FOREIGN KEY (`productTypeId`) REFERENCES `craft_commerce_producttypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_producttypes_taxcategories`
--
ALTER TABLE `craft_commerce_producttypes_taxcategories`
  ADD CONSTRAINT `craft_commerce_producttypes_taxcategories_productTypeId_fk` FOREIGN KEY (`productTypeId`) REFERENCES `craft_commerce_producttypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_commerce_producttypes_taxcategories_taxCategoryId_fk` FOREIGN KEY (`taxCategoryId`) REFERENCES `craft_commerce_taxcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_commerce_purchasables`
--
ALTER TABLE `craft_commerce_purchasables`
  ADD CONSTRAINT `craft_commerce_purchasables_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_commerce_sale_products`
--
ALTER TABLE `craft_commerce_sale_products`
  ADD CONSTRAINT `craft_commerce_sale_products_productId_fk` FOREIGN KEY (`productId`) REFERENCES `craft_commerce_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_sale_products_saleId_fk` FOREIGN KEY (`saleId`) REFERENCES `craft_commerce_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_sale_producttypes`
--
ALTER TABLE `craft_commerce_sale_producttypes`
  ADD CONSTRAINT `craft_commerce_sale_producttypes_productTypeId_fk` FOREIGN KEY (`productTypeId`) REFERENCES `craft_commerce_producttypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_sale_producttypes_saleId_fk` FOREIGN KEY (`saleId`) REFERENCES `craft_commerce_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_sale_usergroups`
--
ALTER TABLE `craft_commerce_sale_usergroups`
  ADD CONSTRAINT `craft_commerce_sale_usergroups_saleId_fk` FOREIGN KEY (`saleId`) REFERENCES `craft_commerce_sales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_sale_usergroups_userGroupId_fk` FOREIGN KEY (`userGroupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_shippingrules`
--
ALTER TABLE `craft_commerce_shippingrules`
  ADD CONSTRAINT `craft_commerce_shippingrules_methodId_fk` FOREIGN KEY (`methodId`) REFERENCES `craft_commerce_shippingmethods` (`id`),
  ADD CONSTRAINT `craft_commerce_shippingrules_shippingZoneId_fk` FOREIGN KEY (`shippingZoneId`) REFERENCES `craft_commerce_shippingzones` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_commerce_shippingrule_categories`
--
ALTER TABLE `craft_commerce_shippingrule_categories`
  ADD CONSTRAINT `craft_commerce_shippingrule_categories_shippingCategoryId_fk` FOREIGN KEY (`shippingCategoryId`) REFERENCES `craft_commerce_shippingcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_commerce_shippingrule_categories_shippingRuleId_fk` FOREIGN KEY (`shippingRuleId`) REFERENCES `craft_commerce_shippingrules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_commerce_shippingzone_countries`
--
ALTER TABLE `craft_commerce_shippingzone_countries`
  ADD CONSTRAINT `craft_commerce_shippingzone_countries_countryId_fk` FOREIGN KEY (`countryId`) REFERENCES `craft_commerce_countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_shippingzone_countries_shippingZoneId_fk` FOREIGN KEY (`shippingZoneId`) REFERENCES `craft_commerce_shippingzones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_shippingzone_states`
--
ALTER TABLE `craft_commerce_shippingzone_states`
  ADD CONSTRAINT `craft_commerce_shippingzone_states_shippingZoneId_fk` FOREIGN KEY (`shippingZoneId`) REFERENCES `craft_commerce_shippingzones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_shippingzone_states_stateId_fk` FOREIGN KEY (`stateId`) REFERENCES `craft_commerce_states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_states`
--
ALTER TABLE `craft_commerce_states`
  ADD CONSTRAINT `craft_commerce_states_countryId_fk` FOREIGN KEY (`countryId`) REFERENCES `craft_commerce_countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_taxrates`
--
ALTER TABLE `craft_commerce_taxrates`
  ADD CONSTRAINT `craft_commerce_taxrates_taxCategoryId_fk` FOREIGN KEY (`taxCategoryId`) REFERENCES `craft_commerce_taxcategories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_taxrates_taxZoneId_fk` FOREIGN KEY (`taxZoneId`) REFERENCES `craft_commerce_taxzones` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_taxzone_countries`
--
ALTER TABLE `craft_commerce_taxzone_countries`
  ADD CONSTRAINT `craft_commerce_taxzone_countries_countryId_fk` FOREIGN KEY (`countryId`) REFERENCES `craft_commerce_countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_taxzone_countries_taxZoneId_fk` FOREIGN KEY (`taxZoneId`) REFERENCES `craft_commerce_taxzones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_taxzone_states`
--
ALTER TABLE `craft_commerce_taxzone_states`
  ADD CONSTRAINT `craft_commerce_taxzone_states_stateId_fk` FOREIGN KEY (`stateId`) REFERENCES `craft_commerce_states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_taxzone_states_taxZoneId_fk` FOREIGN KEY (`taxZoneId`) REFERENCES `craft_commerce_taxzones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_commerce_transactions`
--
ALTER TABLE `craft_commerce_transactions`
  ADD CONSTRAINT `craft_commerce_transactions_orderId_fk` FOREIGN KEY (`orderId`) REFERENCES `craft_commerce_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_commerce_transactions_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_commerce_transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_transactions_paymentMethodId_fk` FOREIGN KEY (`paymentMethodId`) REFERENCES `craft_commerce_paymentmethods` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_commerce_transactions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_commerce_variants`
--
ALTER TABLE `craft_commerce_variants`
  ADD CONSTRAINT `craft_commerce_variants_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_commerce_variants_productId_fk` FOREIGN KEY (`productId`) REFERENCES `craft_commerce_products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_elements_i18n`
--
ALTER TABLE `craft_elements_i18n`
  ADD CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_emailmessages`
--
ALTER TABLE `craft_emailmessages`
  ADD CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrydrafts`
--
ALTER TABLE `craft_entrydrafts`
  ADD CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entryversions`
--
ALTER TABLE `craft_entryversions`
  ADD CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_routes`
--
ALTER TABLE `craft_routes`
  ADD CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_i18n`
--
ALTER TABLE `craft_sections_i18n`
  ADD CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachecriteria`
--
ALTER TABLE `craft_templatecachecriteria`
  ADD CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
