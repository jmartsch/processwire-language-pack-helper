-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: processwire-lang-de
-- ------------------------------------------------------
-- Server version 	8.0.23
-- Date: Tue, 07 Sep 2021 12:12:59 +0200

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `processwire-lang-de`
--

/*!40000 DROP DATABASE IF EXISTS `processwire-lang-de`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `processwire-lang-de` /*!40100 DEFAULT CHARACTER SET utf8  COLLATE utf8_general_ci */;

USE `processwire-lang-de`;

--
-- Table structure for table `caches`
--

DROP TABLE IF EXISTS `caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caches` (
  `name` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `field_admin_theme`
--

DROP TABLE IF EXISTS `field_admin_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_admin_theme` (
  `pages_id` int unsigned NOT NULL,
  `data` int NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_admin_theme`
--

LOCK TABLES `field_admin_theme` WRITE;
/*!40000 ALTER TABLE `field_admin_theme` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_admin_theme` VALUES (41,160);
/*!40000 ALTER TABLE `field_admin_theme` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_admin_theme` with 1 row(s)
--

--
-- Table structure for table `field_aos_column_break`
--

DROP TABLE IF EXISTS `field_aos_column_break`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_aos_column_break` (
  `pages_id` int unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_aos_column_break`
--

LOCK TABLES `field_aos_column_break` WRITE;
/*!40000 ALTER TABLE `field_aos_column_break` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `field_aos_column_break` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_aos_column_break` with 0 row(s)
--

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_email` (
  `pages_id` int unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_email`
--

LOCK TABLES `field_email` WRITE;
/*!40000 ALTER TABLE `field_email` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_email` VALUES (41,'admin@example.com');
/*!40000 ALTER TABLE `field_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_email` with 1 row(s)
--

--
-- Table structure for table `field_language`
--

DROP TABLE IF EXISTS `field_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language` (
  `pages_id` int unsigned NOT NULL,
  `data` int NOT NULL,
  `sort` int unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language`
--

LOCK TABLES `field_language` WRITE;
/*!40000 ALTER TABLE `field_language` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_language` VALUES (40,1017,0),(41,1019,0);
/*!40000 ALTER TABLE `field_language` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_language` with 2 row(s)
--

--
-- Table structure for table `field_language_files`
--

DROP TABLE IF EXISTS `field_language_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language_files` (
  `pages_id` int unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int DEFAULT NULL,
  `created_users_id` int unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files`
--

LOCK TABLES `field_language_files` WRITE;
/*!40000 ALTER TABLE `field_language_files` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_language_files` VALUES (1019,'wire--templates-admin--topnav-inc.json',198,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',130,41,41),(1019,'wire--modules--textformatter--textformattermarkdownextra--parsedown--parsedown-php.json',197,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',228,41,41),(1019,'wire--modules--admintheme--adminthemedefault--default-php.json',194,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',178,41,41),(1019,'wire--modules--image--imagesizerengineimagick--imagesizerengineimagick-module.json',195,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',218,41,41),(1019,'wire--modules--process--processpagesearch--processpagesearchlive-php.json',196,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',200,41,41),(1019,'wire--modules--inputfield--inputfieldtext--inputfieldtext-module.json',185,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',4723,41,41),(1019,'wire--core--imagesizerenginegd-php.json',186,'[\"\"]','2021-08-30 09:49:39','2021-08-30 09:49:39','',132,41,41),(1019,'wire--core--interfaces-php.json',187,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',116,41,41),(1019,'wire--core--languagefunctions-php.json',188,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',130,41,41),(1019,'wire--core--processcontroller-php.json',189,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',130,41,41),(1019,'wire--modules--admintheme--adminthemedefault--adminthemedefaulthelpers-php.json',193,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',212,41,41),(1019,'wire--core--wire-php.json',191,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',104,41,41),(1019,'wire--core--wiretexttools-php.json',192,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',122,41,41),(1019,'wire--core--tfa-php.json',190,'[\"\"]','2021-08-30 09:49:40','2021-08-30 09:49:40','',102,41,41),(1019,'wire--modules--inputfield--inputfieldimage--config-php.json',184,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',7080,41,41),(1019,'wire--modules--inputfield--inputfieldfile--config-php.json',183,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',3053,41,41),(1019,'wire--modules--inputfield--inputfielddatetime--types--inputfielddatetimetext-php.json',182,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',5168,41,41),(1019,'wire--modules--inputfield--inputfielddatetime--types--inputfielddatetimeselect-php.json',181,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',1678,41,41),(1019,'wire--modules--inputfield--inputfielddatetime--types--inputfielddatetimehtml-php.json',180,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',1349,41,41),(1019,'wire--modules--inputfield--inputfieldcheckbox--inputfieldcheckbox-module.json',179,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',1721,41,41),(1019,'wire--modules--fieldtype--fieldtypefile--config-php.json',177,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',11213,41,41),(1019,'wire--modules--fieldtype--fieldtypefile--fieldtypefile-module.json',178,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',1042,41,41),(1019,'wire--modules--fieldtype--fieldtypecomments--commentlistcustom-php.json',176,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',550,41,41),(1019,'wire--modules--process--processforgotpassword--processforgotpassword-module.json',171,'[\"\"]','2021-08-30 08:11:43','2021-08-30 08:11:43','',10586,41,41),(1019,'wire--core--fieldstabletools-php.json',172,'[\"\"]','2021-08-30 08:37:03','2021-08-30 08:37:03','',1207,41,41),(1019,'wire--core--selector-php.json',173,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',6969,41,41),(1019,'wire--modules--admintheme--adminthemeuikit--adminthemeuikitcss-php.json',174,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',417,41,41),(1019,'wire--modules--fieldtype--fieldtypedecimal-module.json',175,'[\"\"]','2021-08-30 08:37:04','2021-08-30 08:37:04','',1409,41,41),(1019,'wire--modules--inputfield--inputfieldtexttags--inputfieldtexttags-module.json',170,'[\"\"]','2021-08-30 07:59:47','2021-08-30 07:59:47','',6966,41,41),(1019,'wire--core--admintheme-php.json',168,'[\"\"]','2021-08-30 07:27:04','2021-08-30 07:27:04','',957,41,41),(1019,'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json',169,'[\"\"]','2021-08-30 07:42:36','2021-08-30 07:42:36','',4676,41,41),(1019,'wire--modules--system--systemupdater--systemupdaterchecks-php.json',167,'[\"\"]','2020-04-20 15:59:03','2020-04-20 15:59:03','',4602,0,0),(1019,'wire--modules--inputfield--inputfieldtoggle--inputfieldtoggle-module.json',166,'[\"\"]','2020-04-20 15:59:03','2020-04-20 15:59:03','',3260,0,0),(1019,'wire--modules--fieldtype--fieldtypetoggle-module.json',165,'[\"\"]','2020-04-20 15:59:03','2020-04-20 15:59:03','',2230,0,0),(1019,'wire--core--processwire-php.json',163,'[\"\"]','2020-04-20 15:59:02','2020-04-20 15:59:02','',214,0,0),(1019,'wire--modules--pagepathhistory-module.json',164,'[\"\"]','2020-04-20 15:59:03','2020-04-20 15:59:03','',1399,0,0),(1019,'wire--core--pagesnames-php.json',162,'[\"\"]','2020-04-20 15:59:02','2020-04-20 15:59:02','',780,0,0),(1019,'wire--templates-admin--default-php.json',161,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',2434,0,0),(1019,'wire--templates-admin--debug-inc.json',160,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',2023,0,0),(1019,'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json',158,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1040,0,0),(1019,'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json',159,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1340,0,0),(1019,'wire--modules--textformatter--textformatterentities-module.json',157,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',705,0,0),(1019,'wire--modules--system--systemupdater--systemupdater-module.json',156,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1023,0,0),(1019,'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json',155,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',5884,0,0),(1019,'wire--modules--system--systemnotifications--systemnotifications-module.json',154,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',2626,0,0),(1019,'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json',153,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',2166,0,0),(1019,'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json',152,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1994,0,0),(1019,'wire--modules--session--sessionhandlerdb--processsessiondb-module.json',151,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1627,0,0),(1019,'wire--modules--process--processuser--processuserconfig-php.json',150,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',729,0,0),(1019,'wire--modules--process--processuser--processuser-module.json',149,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1896,0,0),(1019,'wire--modules--process--processtemplate--processtemplateexportimport-php.json',148,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',6245,0,0),(1019,'wire--modules--process--processtemplate--processtemplate-module.json',147,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',57707,0,0),(1019,'wire--modules--process--processrole--processrole-module.json',146,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',6102,0,0),(1019,'wire--modules--process--processrecentpages--processrecentpages-module.json',145,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',2289,0,0),(1019,'wire--modules--process--processprofile--processprofile-module.json',144,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',2905,0,0),(1019,'wire--modules--process--processpagetype--processpagetype-module.json',142,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1099,0,0),(1019,'wire--modules--process--processpermission--processpermission-module.json',143,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1686,0,0),(1019,'wire--modules--process--processpagesexportimport--processpagesexportimport-module.json',141,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',12879,0,0),(1019,'wire--modules--process--processpagesearch--processpagesearch-module.json',140,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',5472,0,0),(1019,'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json',139,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',3914,0,0),(1019,'wire--modules--process--processpagelister--processpagelister-module.json',138,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',4439,0,0),(1019,'wire--modules--process--processpagelist--processpagelistrenderjson-php.json',137,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',550,0,0),(1019,'wire--modules--process--processpagelist--processpagelistrender-php.json',136,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1438,0,0),(1019,'wire--modules--process--processpagelist--processpagelistactions-php.json',135,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1250,0,0),(1019,'wire--modules--process--processpagelist--processpagelist-module.json',134,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',5653,0,0),(1019,'wire--modules--process--processpageeditlink--processpageeditlink-module.json',133,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',5479,0,0),(1019,'wire--modules--process--processpageedit--processpageedit-module.json',131,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',15808,0,0),(1019,'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json',132,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',8604,0,0),(1019,'wire--modules--process--processpageedit--pagebookmarks-php.json',130,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',1940,0,0),(1019,'wire--modules--process--processpageadd--processpageadd-module.json',129,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',4488,0,0),(1019,'wire--modules--process--processmodule--processmoduleinstall-php.json',128,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',3479,0,0),(1019,'wire--modules--process--processmodule--processmodule-module.json',127,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',19602,0,0),(1019,'wire--modules--process--processlogin--processlogin-module.json',126,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',7433,0,0),(1019,'wire--modules--process--processlogger--processlogger-module.json',125,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',4704,0,0),(1019,'wire--modules--process--processpageview-module.json',121,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',401,0,0),(1019,'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json',122,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',6440,0,0),(1019,'wire--modules--process--processfield--processfield-module.json',123,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',29604,0,0),(1019,'wire--modules--process--processfield--processfieldexportimport-php.json',124,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',6306,0,0),(1019,'wire--modules--process--processpagetrash-module.json',120,'[\"\"]','2019-10-30 23:19:00','2019-10-30 23:19:00','',2120,0,0),(1019,'wire--modules--process--processpagesort-module.json',119,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1180,0,0),(1019,'wire--modules--process--processpageclone-module.json',118,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2567,0,0),(1019,'wire--modules--process--processlist-module.json',117,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',684,0,0),(1019,'wire--modules--process--processhome-module.json',116,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',442,0,0),(1019,'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json',115,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',6067,0,0),(1019,'wire--modules--page--pagefrontedit--pagefrontedit-module.json',114,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',672,0,0),(1019,'wire--modules--markup--markuppagernav--markuppagernav-module.json',113,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',995,0,0),(1019,'wire--modules--markup--markuppagefields-module.json',112,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',312,0,0),(1019,'wire--modules--languagesupport--languagetranslator-php.json',110,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',3361,0,0),(1019,'wire--modules--languagesupport--processlanguage-module.json',111,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2580,0,0),(1019,'wire--modules--languagesupport--languagetabs-module.json',109,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',650,0,0),(1019,'wire--modules--languagesupport--languagesupportpagenames-module.json',108,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1948,0,0),(1019,'wire--modules--languagesupport--languagesupportinstall-php.json',107,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1706,0,0),(1019,'wire--modules--languagesupport--languagesupportfields-module.json',106,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',778,0,0),(1019,'wire--modules--languagesupport--languagesupport-module.json',105,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',844,0,0),(1019,'wire--modules--languagesupport--languageparser-php.json',104,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',948,0,0),(1019,'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json',99,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',430,0,0),(1019,'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json',100,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',7187,0,0),(1019,'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json',103,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',852,0,0),(1019,'wire--modules--jquery--jqueryui--jqueryui-module.json',102,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',337,0,0),(1019,'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json',101,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',389,0,0),(1019,'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json',98,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',6892,0,0),(1019,'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json',97,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',492,0,0),(1019,'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json',96,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',330,0,0),(1019,'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json',95,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',5312,0,0),(1019,'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json',94,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1366,0,0),(1019,'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json',92,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1120,0,0),(1019,'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json',93,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1231,0,0),(1019,'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json',91,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2118,0,0),(1019,'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json',90,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',10462,0,0),(1019,'wire--modules--inputfield--inputfieldselect-module.json',80,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',3541,0,0),(1019,'wire--modules--inputfield--inputfieldselectmultiple-module.json',81,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',530,0,0),(1019,'wire--modules--inputfield--inputfieldtextarea-module.json',82,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',777,0,0),(1019,'wire--modules--inputfield--inputfieldurl-module.json',83,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',804,0,0),(1019,'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json',84,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1049,0,0),(1019,'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json',85,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2154,0,0),(1019,'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json',86,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',12289,0,0),(1019,'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json',87,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',840,0,0),(1019,'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json',88,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2637,0,0),(1019,'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json',89,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',497,0,0),(1019,'wire--modules--inputfield--inputfieldmarkup-module.json',78,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1034,0,0),(1019,'wire--modules--inputfield--inputfieldname-module.json',79,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',572,0,0),(1019,'wire--modules--inputfield--inputfieldinteger-module.json',77,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2242,0,0),(1019,'wire--modules--inputfield--inputfieldhidden-module.json',76,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',558,0,0),(1019,'wire--modules--inputfield--inputfieldform-module.json',75,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',515,0,0),(1019,'wire--modules--inputfield--inputfieldfieldset-module.json',73,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',398,0,0),(1019,'wire--modules--inputfield--inputfieldfloat-module.json',74,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',515,0,0),(1019,'wire--modules--inputfield--inputfieldemail-module.json',72,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1489,0,0),(1019,'wire--modules--inputfield--inputfieldbutton-module.json',71,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',424,0,0),(1019,'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json',69,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2402,0,0),(1019,'wire--modules--image--imagesizerengineanimatedgif--imagesizerengineanimatedgif-module.json',70,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',407,0,0),(1019,'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json',68,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',465,0,0),(1019,'wire--modules--fieldtype--fieldtyperepeater--fieldtypefieldsetpage-module.json',67,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',876,0,0),(1019,'wire--modules--fieldtype--fieldtyperepeater--fieldsetpageinstructions-php.json',66,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2559,0,0),(1019,'wire--modules--fieldtype--fieldtyperepeater--config-php.json',65,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',9278,0,0),(1019,'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json',64,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',853,0,0),(1019,'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json',63,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',3343,0,0),(1019,'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json',62,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1112,0,0),(1019,'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json',61,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2855,0,0),(1019,'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json',60,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',13591,0,0),(1019,'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json',59,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',507,0,0),(1019,'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json',58,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',3371,0,0),(1019,'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json',57,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1030,0,0),(1019,'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json',55,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',927,0,0),(1019,'wire--modules--fieldtype--fieldtypecomments--commentform-php.json',56,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1922,0,0),(1019,'wire--modules--fieldtype--fieldtypeurl-module.json',54,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',3162,0,0),(1019,'wire--modules--fieldtype--fieldtypetextareahelper-php.json',53,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',6880,0,0),(1019,'wire--modules--fieldtype--fieldtypepage-module.json',49,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',2898,0,0),(1019,'wire--modules--fieldtype--fieldtypepagetable-module.json',50,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',4101,0,0),(1019,'wire--modules--fieldtype--fieldtypeselector-module.json',51,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',736,0,0),(1019,'wire--modules--fieldtype--fieldtypetext-module.json',52,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1601,0,0),(1019,'wire--modules--fieldtype--fieldtypemodule-module.json',48,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1808,0,0),(1019,'wire--modules--fieldtype--fieldtypeinteger-module.json',47,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',1636,0,0),(1019,'wire--modules--admintheme--adminthemeuikit--config-php.json',41,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',15160,0,0),(1019,'wire--modules--admintheme--adminthemeuikit--_masthead-php.json',42,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',278,0,0),(1019,'wire--modules--admintheme--adminthemeuikit--_sidenav-masthead-php.json',43,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',501,0,0),(1019,'wire--modules--fieldtype--fieldtypedatetime-module.json',44,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',2030,0,0),(1019,'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json',45,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',787,0,0),(1019,'wire--modules--fieldtype--fieldtypefloat-module.json',46,'[\"\"]','2019-10-30 23:18:59','2019-10-30 23:18:59','',515,0,0),(1019,'wire--modules--admintheme--adminthemeuikit--adminthemeuikit-module.json',40,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',292,0,0),(1019,'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json',38,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1025,0,0),(1019,'wire--modules--admintheme--adminthemereno--debug-inc.json',39,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1670,0,0),(1019,'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json',36,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',650,0,0),(1019,'wire--modules--admintheme--adminthemereno--adminthemereno-module.json',37,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',2861,0,0),(1019,'wire--modules--pagerender-module.json',35,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1245,0,0),(1019,'wire--modules--pagepaths-module.json',34,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',531,0,0),(1019,'wire--modules--filecompilertags-module.json',33,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',358,0,0),(1019,'wire--core--wireshutdown-php.json',31,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',2676,0,0),(1019,'wire--core--wireupload-php.json',32,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1745,0,0),(1019,'wire--core--wirehttp-php.json',30,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',505,0,0),(1019,'wire--core--wiredatetime-php.json',29,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',3332,0,0),(1019,'wire--core--wirecache-php.json',28,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',727,0,0),(1019,'wire--core--sessioncsrf-php.json',27,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',267,0,0),(1019,'wire--core--session-php.json',26,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',204,0,0),(1019,'wire--core--sanitizer-php.json',25,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',242,0,0),(1019,'wire--core--process-php.json',24,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',428,0,0),(1019,'wire--core--permissions-php.json',23,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',2339,0,0),(1019,'wire--core--password-php.json',22,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',327,0,0),(1019,'wire--core--paginatedarray-php.json',21,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',344,0,0),(1019,'wire--core--pagesexportimport-php.json',20,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1258,0,0),(1019,'wire--core--pageseditor-php.json',19,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1298,0,0),(1019,'wire--core--pageimage-php.json',18,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',259,0,0),(1019,'wire--core--modulesduplicates-php.json',17,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',469,0,0),(1019,'wire--core--modules-php.json',16,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',3184,0,0),(1019,'wire--core--markupqa-php.json',15,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',710,0,0),(1019,'wire--core--inputfieldwrapper-php.json',14,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',359,0,0),(1019,'wire--core--inputfield-php.json',13,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',4078,0,0),(1019,'wire--core--imagesizerengine-php.json',12,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1538,0,0),(1019,'wire--core--functions-php.json',11,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',631,0,0),(1019,'wire--core--filevalidatormodule-php.json',10,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',440,0,0),(1019,'wire--core--filecompilermodule-php.json',9,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',474,0,0),(1019,'wire--core--filecompiler-php.json',8,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',230,0,0),(1019,'wire--core--fieldtypemulti-php.json',7,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1658,0,0),(1019,'wire--core--fieldtype-php.json',6,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1230,0,0),(1019,'wire--core--fieldselectorinfo-php.json',5,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',419,0,0),(1019,'wire--core--fields-php.json',4,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',692,0,0),(1019,'wire--core--fieldgroups-php.json',3,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',577,0,0),(1019,'wire--core--field-php.json',2,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',458,0,0),(1019,'wire--core--adminthemeframework-php.json',1,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1499,0,0),(1019,'wire--core--admin-php.json',0,'[\"\"]','2019-10-30 23:18:58','2019-10-30 23:18:58','',1236,0,0);
/*!40000 ALTER TABLE `field_language_files` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_language_files` with 199 row(s)
--

--
-- Table structure for table `field_language_files_site`
--

DROP TABLE IF EXISTS `field_language_files_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language_files_site` (
  `pages_id` int unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  `filesize` int DEFAULT NULL,
  `created_users_id` int unsigned NOT NULL DEFAULT '0',
  `modified_users_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files_site`
--

LOCK TABLES `field_language_files_site` WRITE;
/*!40000 ALTER TABLE `field_language_files_site` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_language_files_site` VALUES (1019,'site--modules--processwireupgrade--processwireupgradecheck-config-php.json',1,'[\"\"]','2020-04-20 16:13:33','2020-04-20 16:13:33','',NULL,0,0),(1019,'site--modules--processwireupgrade--processwireupgrade-module.json',0,'[\"\"]','2020-04-20 16:13:33','2020-04-20 16:13:33','',NULL,0,0),(1019,'site--modules--processwireupgrade--processwireupgradecheck-module.json',2,'[\"\"]','2020-04-20 16:13:33','2020-04-20 16:13:33','',NULL,0,0);
/*!40000 ALTER TABLE `field_language_files_site` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_language_files_site` with 3 row(s)
--

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_pass` (
  `pages_id` int unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_pass`
--

LOCK TABLES `field_pass` WRITE;
/*!40000 ALTER TABLE `field_pass` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_pass` VALUES (41,'woZafR3tbCsfGNDq00jYJj2.Fld61Se','$2y$11$0w4IbzjifK.YXNaWGZECXe'),(40,'','');
/*!40000 ALTER TABLE `field_pass` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_pass` with 2 row(s)
--

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_permissions` (
  `pages_id` int unsigned NOT NULL,
  `data` int NOT NULL,
  `sort` int unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_permissions`
--

LOCK TABLES `field_permissions` WRITE;
/*!40000 ALTER TABLE `field_permissions` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_permissions` VALUES (38,32,1),(38,34,2),(38,35,3),(37,36,0),(38,36,0),(38,50,4),(38,51,5),(38,52,7),(38,53,8),(38,54,6);
/*!40000 ALTER TABLE `field_permissions` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_permissions` with 10 row(s)
--

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_process` (
  `pages_id` int NOT NULL DEFAULT '0',
  `data` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_process`
--

LOCK TABLES `field_process` WRITE;
/*!40000 ALTER TABLE `field_process` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_process` VALUES (6,17),(3,12),(8,12),(9,14),(10,7),(11,47),(16,48),(300,104),(21,50),(29,66),(23,10),(304,138),(31,136),(22,76),(30,68),(303,129),(2,87),(302,121),(301,109),(28,76),(1007,150),(1010,159),(1012,161),(1016,164),(1018,165),(1020,166);
/*!40000 ALTER TABLE `field_process` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_process` with 26 row(s)
--

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_roles` (
  `pages_id` int unsigned NOT NULL,
  `data` int NOT NULL,
  `sort` int unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_roles`
--

LOCK TABLES `field_roles` WRITE;
/*!40000 ALTER TABLE `field_roles` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_roles` VALUES (40,37,0),(41,37,0),(41,38,2);
/*!40000 ALTER TABLE `field_roles` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_roles` with 3 row(s)
--

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_title` (
  `pages_id` int unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_title`
--

LOCK TABLES `field_title` WRITE;
/*!40000 ALTER TABLE `field_title` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `field_title` VALUES (11,'Templates'),(16,'Fields'),(22,'Setup'),(3,'Pages'),(6,'Add Page'),(8,'Tree'),(9,'Save Sort'),(10,'Edit'),(21,'Modules'),(29,'Users'),(30,'Roles'),(2,'Admin'),(7,'Trash'),(27,'404 Not Found'),(302,'Insert Link'),(23,'Login'),(304,'Profile'),(301,'Empty Trash'),(300,'Search'),(303,'Insert Image'),(28,'Access'),(31,'Permissions'),(32,'Edit pages'),(34,'Delete pages'),(35,'Move pages (change parent)'),(36,'View pages'),(50,'Sort child pages'),(51,'Change templates on pages'),(52,'Administer users'),(53,'User can update profile/password'),(54,'Lock or unlock a page'),(1,'Home'),(1006,'Use Page Lister'),(1007,'Find'),(1010,'Recent'),(1011,'Can see recently edited pages'),(1012,'Logs'),(1013,'Can view system logs'),(1014,'Can manage system logs'),(1015,'Administer languages and static translation files'),(1016,'Languages'),(1017,'Default'),(1018,'Language Translator'),(1019,'Deutsch'),(1020,'Upgrades'),(1021,'eine seite');
/*!40000 ALTER TABLE `field_title` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `field_title` with 46 row(s)
--

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `fieldgroups` VALUES (2,'admin'),(3,'user'),(4,'role'),(5,'permission'),(1,'home'),(83,'basic-page'),(97,'language');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fieldgroups` with 7 row(s)
--

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int unsigned NOT NULL DEFAULT '0',
  `fields_id` int unsigned NOT NULL DEFAULT '0',
  `sort` int unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups_fields`
--

LOCK TABLES `fieldgroups_fields` WRITE;
/*!40000 ALTER TABLE `fieldgroups_fields` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `fieldgroups_fields` VALUES (2,2,1,NULL),(2,1,0,NULL),(3,4,2,NULL),(3,92,1,NULL),(4,5,0,NULL),(5,1,0,NULL),(3,97,3,NULL),(83,1,0,NULL),(1,1,0,NULL),(3,3,0,NULL),(97,1,0,NULL),(97,98,1,NULL),(97,99,2,NULL),(3,100,4,NULL);
/*!40000 ALTER TABLE `fieldgroups_fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fieldgroups_fields` with 14 row(s)
--

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `fields` VALUES (1,'FieldtypePageTitle','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}'),(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),(97,'FieldtypeModule','admin_theme',8,'Admin Theme','{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}'),(98,'FieldtypeFile','language_files_site',24,'Site Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":14}'),(99,'FieldtypeFile','language_files',24,'Core Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":14}'),(100,'FieldtypePage','language',24,'Language','{\"derefAsPage\":1,\"parent_id\":1016,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}'),(101,'FieldtypeText','aos_column_break',0,'','{\"skipLabel\":true,\"collapsed\":8,\"tags\":\"-aos\"}');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fields` with 11 row(s)
--

--
-- Table structure for table `fieldtype_options`
--

DROP TABLE IF EXISTS `fieldtype_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldtype_options` (
  `fields_id` int unsigned NOT NULL,
  `option_id` int unsigned NOT NULL,
  `title` text,
  `value` varchar(250) DEFAULT NULL,
  `sort` int unsigned NOT NULL,
  PRIMARY KEY (`fields_id`,`option_id`),
  UNIQUE KEY `title` (`title`(250),`fields_id`),
  KEY `value` (`value`,`fields_id`),
  KEY `sort` (`sort`,`fields_id`),
  FULLTEXT KEY `title_ft` (`title`),
  FULLTEXT KEY `value_ft` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldtype_options`
--

LOCK TABLES `fieldtype_options` WRITE;
/*!40000 ALTER TABLE `fieldtype_options` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `fieldtype_options` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `fieldtype_options` with 0 row(s)
--

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `modules` VALUES (1,'FieldtypeTextarea',0,'','2019-10-30 21:55:18'),(3,'FieldtypeText',1,'','2019-10-30 21:55:18'),(4,'FieldtypePage',3,'','2019-10-30 21:55:18'),(30,'InputfieldForm',0,'','2019-10-30 21:55:18'),(6,'FieldtypeFile',5,'{\"-dups\":[\"\\/wire\\/modules\\/Fieldtype\\/FieldtypeFile.module\",\"\\/wire\\/modules\\/Fieldtype\\/FieldtypeFile\\/FieldtypeFile.module\"],\"-dups-use\":\"\\/wire\\/modules\\/Fieldtype\\/FieldtypeFile\\/FieldtypeFile.module\"}','2019-10-30 21:55:18'),(7,'ProcessPageEdit',1,'','2019-10-30 21:55:18'),(10,'ProcessLogin',0,'','2019-10-30 21:55:18'),(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50,\"useTrash\":\"\",\"speed\":0,\"qtyType\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}','2019-10-30 21:55:18'),(121,'ProcessPageEditLink',1,'','2019-10-30 21:55:18'),(14,'ProcessPageSort',0,'','2019-10-30 21:55:18'),(15,'InputfieldPageListSelect',0,'','2019-10-30 21:55:18'),(117,'JqueryUI',1,'','2019-10-30 21:55:18'),(17,'ProcessPageAdd',0,'','2019-10-30 21:55:18'),(125,'SessionLoginThrottle',11,'','2019-10-30 21:55:18'),(122,'InputfieldPassword',0,'','2019-10-30 21:55:18'),(25,'InputfieldAsmSelect',0,'','2019-10-30 21:55:18'),(116,'JqueryCore',1,'','2019-10-30 21:55:18'),(27,'FieldtypeModule',1,'','2019-10-30 21:55:18'),(28,'FieldtypeDatetime',0,'','2019-10-30 21:55:18'),(29,'FieldtypeEmail',1,'','2019-10-30 21:55:18'),(108,'InputfieldURL',0,'','2019-10-30 21:55:18'),(32,'InputfieldSubmit',0,'','2019-10-30 21:55:18'),(34,'InputfieldText',4,'{\"-dups\":[\"\\/wire\\/modules\\/Inputfield\\/InputfieldText.module\",\"\\/wire\\/modules\\/Inputfield\\/InputfieldText\\/InputfieldText.module\"],\"-dups-use\":\"\\/wire\\/modules\\/Inputfield\\/InputfieldText\\/InputfieldText.module\"}','2019-10-30 21:55:18'),(35,'InputfieldTextarea',0,'','2019-10-30 21:55:18'),(36,'InputfieldSelect',0,'','2019-10-30 21:55:18'),(37,'InputfieldCheckbox',4,'{\"-dups\":[\"\\/wire\\/modules\\/Inputfield\\/InputfieldCheckbox.module\",\"\\/wire\\/modules\\/Inputfield\\/InputfieldCheckbox\\/InputfieldCheckbox.module\"],\"-dups-use\":\"\\/wire\\/modules\\/Inputfield\\/InputfieldCheckbox\\/InputfieldCheckbox.module\"}','2019-10-30 21:55:18'),(38,'InputfieldCheckboxes',0,'','2019-10-30 21:55:18'),(39,'InputfieldRadios',0,'','2019-10-30 21:55:18'),(40,'InputfieldHidden',0,'','2019-10-30 21:55:18'),(41,'InputfieldName',0,'','2019-10-30 21:55:18'),(43,'InputfieldSelectMultiple',0,'','2019-10-30 21:55:18'),(45,'JqueryWireTabs',0,'','2019-10-30 21:55:18'),(47,'ProcessTemplate',0,'','2019-10-30 21:55:18'),(48,'ProcessField',32,'','2019-10-30 21:55:18'),(50,'ProcessModule',0,'','2019-10-30 21:55:18'),(114,'PagePermissions',3,'','2019-10-30 21:55:18'),(97,'FieldtypeCheckbox',1,'','2019-10-30 21:55:18'),(115,'PageRender',3,'{\"clearCache\":1}','2019-10-30 21:55:18'),(55,'InputfieldFile',0,'','2019-10-30 21:55:18'),(56,'InputfieldImage',0,'','2019-10-30 21:55:18'),(57,'FieldtypeImage',36,'{\"-dups\":[\"\\/wire\\/modules\\/Fieldtype\\/FieldtypeImage.module\",\"\\/wire\\/modules\\/Fieldtype\\/FieldtypeImage\\/FieldtypeImage.module\"],\"-dups-use\":\"\\/wire\\/modules\\/Fieldtype\\/FieldtypeImage\\/FieldtypeImage.module\"}','2019-10-30 21:55:18'),(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}','2019-10-30 21:55:18'),(61,'TextformatterEntities',0,'','2019-10-30 21:55:18'),(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}','2019-10-30 21:55:18'),(67,'MarkupAdminDataTable',0,'','2019-10-30 21:55:18'),(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}','2019-10-30 21:55:18'),(76,'ProcessList',0,'','2019-10-30 21:55:18'),(78,'InputfieldFieldset',0,'','2019-10-30 21:55:18'),(79,'InputfieldMarkup',0,'','2019-10-30 21:55:18'),(80,'InputfieldEmail',0,'','2019-10-30 21:55:18'),(89,'FieldtypeFloat',1,'','2019-10-30 21:55:18'),(83,'ProcessPageView',0,'','2019-10-30 21:55:18'),(84,'FieldtypeInteger',0,'','2019-10-30 21:55:18'),(85,'InputfieldInteger',0,'','2019-10-30 21:55:18'),(86,'InputfieldPageName',0,'','2019-10-30 21:55:18'),(87,'ProcessHome',0,'','2019-10-30 21:55:18'),(90,'InputfieldFloat',0,'','2019-10-30 21:55:18'),(94,'InputfieldDatetime',0,'','2019-10-30 21:55:18'),(98,'MarkupPagerNav',0,'','2019-10-30 21:55:18'),(129,'ProcessPageEditImageSelect',1,'','2019-10-30 21:55:18'),(103,'JqueryTableSorter',1,'','2019-10-30 21:55:18'),(104,'ProcessPageSearch',1,'{\"searchFields\":[\"title\"],\"displayField\":\"title path\",\"searchTypesOrder\":[\"pages\",\"trash\",\"modules\",\"fields\",\"templates\",\"users\"],\"noSearchTypes\":[],\"searchFields2\":[\"title\"],\"operator\":\"%=\",\"operator2\":\"%=\",\"uninstall\":\"\",\"submit_save_module\":\"Absenden\"}','2019-10-30 21:55:18'),(105,'FieldtypeFieldsetOpen',1,'','2019-10-30 21:55:18'),(106,'FieldtypeFieldsetClose',1,'','2019-10-30 21:55:18'),(107,'FieldtypeFieldsetTabOpen',1,'','2019-10-30 21:55:18'),(109,'ProcessPageTrash',1,'','2019-10-30 21:55:18'),(111,'FieldtypePageTitle',1,'','2019-10-30 21:55:18'),(112,'InputfieldPageTitle',0,'','2019-10-30 21:55:18'),(113,'MarkupPageArray',3,'','2019-10-30 21:55:18'),(131,'InputfieldButton',0,'','2019-10-30 21:55:18'),(133,'FieldtypePassword',1,'','2019-10-30 21:55:18'),(134,'ProcessPageType',33,'{\"showFields\":[]}','2019-10-30 21:55:18'),(135,'FieldtypeURL',1,'','2019-10-30 21:55:18'),(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}','2019-10-30 21:55:18'),(137,'InputfieldPageListSelectMultiple',0,'','2019-10-30 21:55:18'),(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}','2019-10-30 21:55:18'),(139,'SystemUpdater',1,'{\"systemVersion\":19,\"coreVersion\":\"3.0.184\"}','2019-10-30 21:55:18'),(148,'AdminThemeDefault',10,'{\"colors\":\"classic\"}','2019-10-30 21:55:18'),(149,'InputfieldSelector',42,'','2019-10-30 21:55:18'),(150,'ProcessPageLister',32,'','2019-10-30 21:55:18'),(151,'JqueryMagnific',1,'','2019-10-30 21:55:18'),(155,'InputfieldCKEditor',0,'','2019-10-30 21:55:18'),(156,'MarkupHTMLPurifier',0,'','2019-10-30 21:55:18'),(159,'ProcessRecentPages',1,'','2019-10-30 21:55:40'),(160,'AdminThemeUikit',10,'','2019-10-30 21:55:40'),(161,'ProcessLogger',1,'','2019-10-30 21:55:53'),(162,'InputfieldIcon',0,'','2019-10-30 21:55:53'),(163,'LanguageSupport',35,'{\"languagesPageID\":1016,\"defaultLanguagePageID\":1017,\"otherLanguagePageIDs\":[1019],\"languageTranslatorPageID\":1018}','2019-10-30 21:57:22'),(164,'ProcessLanguage',1,'','2019-10-30 21:57:22'),(165,'ProcessLanguageTranslator',1,'','2019-10-30 21:57:22'),(166,'ProcessWireUpgrade',1,'','2020-04-20 13:30:02'),(167,'ProcessWireUpgradeCheck',11,'','2020-04-20 13:30:03'),(168,'AdminOnSteroids',11,'{\"enabled\":0,\"enabledSubmodules\":[\"Hotkeys\",\"Misc\",\"UikitTweaks\"],\"AddNewChildFirst_enabledTemplates\":[],\"AdminTweaks\":[],\"AsmTweaks\":[],\"CKEaddons_plugins\":[],\"CKEaddons_enabledFields\":[],\"CKEaddons_skin\":\"default\",\"ListerTweaks_find\":[\"\"],\"ListerTweaks_users\":[\"\"],\"ListerTweaks_options\":[],\"DeselectRadios\":[\"adminOnly\"],\"FieldAndTemplateEditLinks\":\"pw-blank\",\"FileFieldTweaks\":[],\"FieldOverrides\":\"\",\"FocusInputOnLangTabSwitch\":\"focus\",\"FocusInputOnLangTabSwitchCKE\":\"focus\",\"Hotkeys\":[\"removeNoticeHotkey\",\"save\"],\"IUC_mode\":[\"button\"],\"IUC_buttonPosition\":\"button-left\",\"IUC_target\":\"pw-blank\",\"IUC_forceHttp\":\"\",\"IUC_enabledTemplates\":[],\"LongClickDuration\":\"600\",\"Misc\":[\"adminLangSwitcher\"],\"ModuleTweaks\":[],\"NavItems_pages_submenu\":null,\"NavItems_pages\":[],\"NavItems_custom\":\"\",\"PageListIcons\":\"\",\"PageListThumbs_style\":\"circle\",\"PageListThumbs_items\":\"\",\"PageListThumbs_options\":[],\"PageListTweaks\":[],\"PagePreviewBtn\":\"pw-blank\",\"RenoTweaks\":[],\"RestrictTreeDropdown\":[],\"Tooltips\":[],\"UikitTweaks\":[\"headSticky\"],\"AdminStyle\":\"\",\"AdminScript\":\"\",\"CKEStyle\":\"\",\"CKEScript\":\"\",\"CKEtemplates\":\"\",\"FieldOverridesFile\":\"\",\"BrandingLogo\":\"\",\"restore\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2020-07-20 15:53:48'),(169,'FieldtypeOptions',1,'','2021-08-30 08:10:20');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `modules` with 94 row(s)
--

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `templates_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 05:09:00',
  `created_users_id` int unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pages` VALUES (1,0,1,'home',9,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(2,1,2,'processwire',1035,'2019-10-30 21:55:54',40,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',5),(3,2,2,'page',21,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(6,3,2,'add',21,'2019-10-30 21:55:59',40,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',1),(7,1,2,'trash',1039,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',6),(8,3,2,'list',21,'2019-10-30 21:56:07',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(9,3,2,'sort',1047,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',3),(10,3,2,'edit',1045,'2019-10-30 21:56:06',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',4),(11,22,2,'template',21,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(16,22,2,'field',21,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',2),(21,2,2,'module',21,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',2),(22,2,2,'setup',21,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',1),(23,2,2,'login',1035,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',4),(27,1,29,'http404',1035,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',3,'2019-10-30 22:55:18',4),(28,2,2,'access',13,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',3),(29,28,2,'users',29,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(30,28,2,'roles',29,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',1),(31,28,2,'permissions',29,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',2),(32,31,5,'page-edit',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',2),(34,31,5,'page-delete',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',3),(35,31,5,'page-move',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',4),(36,31,5,'page-view',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(37,30,4,'guest',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(38,30,4,'superuser',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',1),(41,29,3,'admin',1,'2021-08-30 08:00:07',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',0),(40,29,3,'guest',25,'2019-10-30 21:57:22',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',1),(50,31,5,'page-sort',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',41,'2019-10-30 22:55:18',5),(51,31,5,'page-template',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',41,'2019-10-30 22:55:18',6),(52,31,5,'user-admin',25,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',41,'2019-10-30 22:55:18',10),(53,31,5,'profile-edit',1,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',41,'2019-10-30 22:55:18',13),(54,31,5,'page-lock',1,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',41,'2019-10-30 22:55:18',8),(300,3,2,'search',1045,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',6),(301,3,2,'trash',1047,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',6),(302,3,2,'link',1041,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',7),(303,3,2,'image',1041,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',2,'2019-10-30 22:55:18',8),(304,2,2,'profile',1025,'2019-10-30 21:55:18',41,'2019-10-30 21:55:18',41,'2019-10-30 22:55:18',5),(1006,31,5,'page-lister',1,'2019-10-30 21:55:18',40,'2019-10-30 21:55:18',40,'2019-10-30 22:55:18',9),(1007,3,2,'lister',1,'2019-10-30 21:55:18',40,'2019-10-30 21:55:18',40,'2019-10-30 22:55:18',9),(1010,3,2,'recent-pages',1,'2019-10-30 21:55:40',40,'2019-10-30 21:55:40',40,'2019-10-30 22:55:40',10),(1011,31,5,'page-edit-recent',1,'2019-10-30 21:55:40',40,'2019-10-30 21:55:40',40,'2019-10-30 22:55:40',10),(1012,22,2,'logs',1,'2019-10-30 21:55:53',40,'2019-10-30 21:55:53',40,'2019-10-30 22:55:53',2),(1013,31,5,'logs-view',1,'2019-10-30 21:55:53',40,'2019-10-30 21:55:53',40,'2019-10-30 22:55:53',11),(1014,31,5,'logs-edit',1,'2019-10-30 21:55:53',40,'2019-10-30 21:55:53',40,'2019-10-30 22:55:53',12),(1015,31,5,'lang-edit',1,'2019-10-30 21:57:22',41,'2019-10-30 21:57:22',41,'2019-10-30 22:57:22',13),(1016,22,2,'languages',16,'2019-10-30 21:57:22',41,'2019-10-30 21:57:22',41,'2019-10-30 22:57:22',3),(1017,1016,43,'default',16,'2019-10-30 21:57:22',41,'2019-10-30 21:57:22',41,'2019-10-30 22:57:22',0),(1018,22,2,'language-translator',1040,'2019-10-30 21:57:22',41,'2019-10-30 21:57:22',41,'2019-10-30 22:57:22',4),(1019,1016,43,'de',1,'2021-08-30 07:49:40',41,'2019-10-30 21:58:04',41,'2019-10-30 22:58:04',1),(1020,22,2,'upgrades',1,'2020-04-20 13:30:02',41,'2020-04-20 13:30:02',41,'2020-04-20 15:30:02',5),(1021,1,29,'eine-seite',2049,'2021-08-04 13:05:15',41,'2021-08-04 13:05:15',41,NULL,3);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `pages` with 50 row(s)
--

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_access` (
  `pages_id` int NOT NULL,
  `templates_id` int NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_access`
--

LOCK TABLES `pages_access` WRITE;
/*!40000 ALTER TABLE `pages_access` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pages_access` VALUES (37,2,'2019-10-30 21:55:18'),(38,2,'2019-10-30 21:55:18'),(32,2,'2019-10-30 21:55:18'),(34,2,'2019-10-30 21:55:18'),(35,2,'2019-10-30 21:55:18'),(36,2,'2019-10-30 21:55:18'),(50,2,'2019-10-30 21:55:18'),(51,2,'2019-10-30 21:55:18'),(52,2,'2019-10-30 21:55:18'),(53,2,'2019-10-30 21:55:18'),(54,2,'2019-10-30 21:55:18'),(1006,2,'2019-10-30 21:55:18'),(1011,2,'2019-10-30 21:55:40'),(1013,2,'2019-10-30 21:55:53'),(1014,2,'2019-10-30 21:55:53'),(1015,2,'2019-10-30 21:57:22'),(1017,2,'2019-10-30 21:57:22'),(1019,2,'2019-10-30 21:58:04'),(1021,1,'2021-08-04 13:05:15');
/*!40000 ALTER TABLE `pages_access` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `pages_access` with 19 row(s)
--

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_parents` (
  `pages_id` int unsigned NOT NULL,
  `parents_id` int unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_parents`
--

LOCK TABLES `pages_parents` WRITE;
/*!40000 ALTER TABLE `pages_parents` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `pages_parents` VALUES (2,1),(3,1),(3,2),(7,1),(22,1),(22,2),(28,1),(28,2),(29,1),(29,2),(29,28),(30,1),(30,2),(30,28),(31,1),(31,2),(31,28),(1016,2),(1016,22);
/*!40000 ALTER TABLE `pages_parents` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `pages_parents` with 19 row(s)
--

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_sortfields` (
  `pages_id` int unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_sortfields`
--

LOCK TABLES `pages_sortfields` WRITE;
/*!40000 ALTER TABLE `pages_sortfields` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `pages_sortfields` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `pages_sortfields` with 0 row(s)
--

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int unsigned NOT NULL DEFAULT '0',
  `last_attempt` int unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_login_throttle`
--

LOCK TABLES `session_login_throttle` WRITE;
/*!40000 ALTER TABLE `session_login_throttle` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `session_login_throttle` VALUES ('admin',1,1631009576);
/*!40000 ALTER TABLE `session_login_throttle` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `session_login_throttle` with 1 row(s)
--

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int unsigned NOT NULL DEFAULT '0',
  `flags` int NOT NULL DEFAULT '0',
  `cache_time` mediumint NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `templates` VALUES (2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1630931998,\"ns\":\"ProcessWire\"}'),(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(1,'home',1,0,0,'{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1630931998,\"ns\":\"\\\\\",\"roles\":[37]}'),(29,'basic-page',83,0,0,'{\"slashUrls\":1,\"compile\":3,\"modified\":1630931998,\"ns\":\"\\\\\"}'),(43,'language',97,8,0,'{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1572472642}');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `templates` with 7 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Tue, 07 Sep 2021 12:12:59 +0200
