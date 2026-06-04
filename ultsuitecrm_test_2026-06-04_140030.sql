/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: conectahogardb    Database: suitecrm_test
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES
('36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-03 15:51:05','2026-06-03 15:51:33','1','1',NULL,0,'1','apartamentos','activo','25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3242',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),
('4b93232d-8e89-43f7-998c-0d90d2d6215f','Malpole','2026-06-03 15:37:57','2026-06-03 15:37:57','1','1','',0,'1','apartamentos','piloto','los 25 de cada mes',NULL,'prueba','Bogota','','calle','',NULL,'3153','','','542563','120',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL),
('4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-20 21:19:41','2026-05-28 16:42:31','1','1','',0,'1','','','',NULL,'','','','','',NULL,'','','','151156','',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),
('9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-20 21:22:08','2026-05-20 21:22:08','1','1','',0,'1','','','',NULL,'','','','','',NULL,'','','','1546','',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
INSERT INTO `accounts_audit` VALUES
('98410fd4-0f4e-4b4e-8dee-7756effa7e42','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','2026-05-28 16:01:19','1','area_mapa_c','relate','','Kennedy',NULL,NULL),
('dd8c4e9a-2980-45b4-a920-ed2b0d32c980','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','2026-05-28 16:01:19','1','ubicacion_mapa_c','relate','','Conjunto nueva roma',NULL,NULL);
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `accounts_caml_apartamentos_1_c`
--

DROP TABLE IF EXISTS `accounts_caml_apartamentos_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_caml_apartamentos_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_caml_apartamentos_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_caml_apartamentos_1caml_apartamentos_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_caml_apartamentos_1_ida1` (`accounts_caml_apartamentos_1accounts_ida`),
  KEY `accounts_caml_apartamentos_1_alt` (`accounts_caml_apartamentos_1caml_apartamentos_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_caml_apartamentos_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts_caml_apartamentos_1_c` DISABLE KEYS */;
INSERT INTO `accounts_caml_apartamentos_1_c` VALUES
('03a44818-fe99-45bf-8eb5-200843a60c6d','2026-06-03 15:51:14',0,'36266f9a-1c2e-48d9-8722-788b8f9c3bc2','c5ae1ae4-bb15-4697-b584-3a5065025535'),
('175a5521-6cf3-49dc-8112-519bae2710f4','2026-05-27 20:23:20',0,'4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','2e4ea246-bbac-4150-b3da-0b86260a455b'),
('61676fa0-b779-41e8-ac19-e1c662674085','2026-05-25 22:59:01',0,'9a7320bf-51c1-45f6-9c84-df8c23e364b5','2d786651-bf2f-4310-9117-8edc0d64bd13'),
('9c795d02-153d-438f-ab95-adf854686aee','2026-06-03 15:51:14',1,'4b93232d-8e89-43f7-998c-0d90d2d6215f','c5ae1ae4-bb15-4697-b584-3a5065025535'),
('fe849b81-20ac-4ef1-bfd5-64b7ec312b8f','2026-05-27 22:00:52',0,'4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','6b965a1c-d5e2-4c8e-a0b1-029c86711879');
/*!40000 ALTER TABLE `accounts_caml_apartamentos_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
INSERT INTO `accounts_contacts` VALUES
('05ef2fbb-7679-47b7-bd3b-3490420089d6','c0b0c51a-f2cc-4591-8263-2fb09088cf58','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','2026-06-03 15:51:33',0),
('0a5642d8-68a0-4a32-b591-07c43265b57f','63deac9b-28a7-4b7d-8a87-39103834d946','9a7320bf-51c1-45f6-9c84-df8c23e364b5','2026-05-25 23:09:00',0),
('3237e5c6-c21e-4efe-86f4-73ade43ea8ab','c0b0c51a-f2cc-4591-8263-2fb09088cf58','4b93232d-8e89-43f7-998c-0d90d2d6215f','2026-06-03 15:45:47',0),
('3dbc866c-f861-4e56-a38d-a7bd0ed7cffb','e0633fa3-4d4d-40eb-8ddf-38162761cb63','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','2026-05-21 20:47:51',0),
('5cda60c7-9a7e-4fa2-83d4-19ee0241200f','996a33c4-43e6-4b5c-8bd7-a1b1b7d83293','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','2026-05-27 20:23:35',0),
('69beaf83-fa64-4543-9a03-8b49f70edd50','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','2026-06-03 15:58:04',0),
('8602bb0d-4bb1-4e50-82c4-6246e2a4f3aa','5697accd-0b22-486d-a0c9-b0b980bc7fa2','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','2026-05-21 20:59:55',0),
('ae53c961-081a-45e5-ad02-0e6ebbd67a4d','5697accd-0b22-486d-a0c9-b0b980bc7fa2','9a7320bf-51c1-45f6-9c84-df8c23e364b5','2026-05-21 20:53:10',0),
('afea8446-290a-4542-ada6-f1c271d2c33d','e0633fa3-4d4d-40eb-8ddf-38162761cb63','9a7320bf-51c1-45f6-9c84-df8c23e364b5','2026-05-21 20:45:24',0),
('ccedb60e-2f5b-48f9-bf56-49ff897af6de','0a436ba0-203f-4411-b45f-82128ef330ce','9a7320bf-51c1-45f6-9c84-df8c23e364b5','2026-05-21 21:27:28',0),
('d342cfc1-58a2-4485-90f0-99891d52317d','19981018-5fc7-435a-9cb5-0d1d479b7cab','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','2026-05-28 16:02:52',0);
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `jjwg_markers_id_c` char(36) DEFAULT NULL,
  `jjwg_areas_id_c` char(36) DEFAULT NULL,
  `jjwg_areas_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES
('36266f9a-1c2e-48d9-8722-788b8f9c3bc2',0.00000000,0.00000000,'','','36ced69c-f8fb-42a4-ae66-3706a18f1645','bc43ebe5-e459-40e0-ba23-790ef9bda408',''),
('4b93232d-8e89-43f7-998c-0d90d2d6215f',0.00000000,0.00000000,NULL,NULL,'36ced69c-f8fb-42a4-ae66-3706a18f1645','d84fdeb3-e0d7-4ad5-a876-4aa354db71b8',NULL),
('4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1',-74.10671997,4.65984058,'','Edificio Elemento Bogota - Entrada Principal','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','a36cc78f-dd00-4282-ba8a-71fb2a871c76',''),
('9a7320bf-51c1-45f6-9c84-df8c23e364b5',-74.08815002,4.73542023,NULL,'Porteria Condominio de Suba',NULL,NULL,NULL);
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES
('007703ba-25e0-4cae-b080-dba2902f4bac','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Opportunities','module',90,0),
('00e08495-c736-4fd5-a439-72bda2c222ba','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','jjwg_Address_Cache','module',90,0),
('019257d1-8aeb-4cf2-a2dd-19dd6903d18a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Documents','module',89,0),
('01b87a50-c085-455d-8395-800c8e9c3233','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','InboundEmail','module',89,0),
('01c477a3-cdcb-4799-9026-1b284dc66f7c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Bugs','module',89,0),
('01d81975-0373-4eff-b820-f8ed1b81107c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Project','module',90,0),
('01fc7954-ab85-4870-a340-9bed42a262d7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Calls_Reschedule','module',90,0),
('034c88ef-af18-4986-ae0b-57c467294d4d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOR_Reports','module',90,0),
('03678749-2b5f-48f2-a17e-19202e345814','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','MediaObjects','module',90,0),
('03d44663-58b6-4a3a-a951-725dfcd65a24','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','jjwg_Areas','module',90,0),
('0423a8af-0ec6-441b-8149-9046c81e8ce7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','OutboundEmailAccounts','module',90,0),
('0436d651-d8b2-4373-b41d-f7765b9144f3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOS_Products','module',90,0),
('04ff9854-f520-4f29-aff8-f5b06b5f9e50','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','jjwg_Address_Cache','module',90,0),
('05236f18-558c-4466-9cb8-c500a80e8f7f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOP_Case_Updates','module',90,0),
('05cb6ce5-3db7-4383-b94d-0addbcd4f7a8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','CalendarAccount','module',90,0),
('05d237ae-da45-4d9b-a6c6-b041f7b0bfef','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Contacts','module',90,0),
('06ab9ab0-d8e3-4935-aeca-3cef2e682833','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Opportunities','module',90,0),
('0778b7d6-fe0a-4cf6-87f2-849e6ced57ad','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Prospects','module',89,0),
('07998e5d-14a4-44ce-9e42-4f8910f116a7','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','edit','caml_tarifa','module',90,0),
('08268032-1577-430f-a191-c4fb10b813f6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Documents','module',90,0),
('0837ad41-578a-4788-b98a-fc0325d93678','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','ProjectTask','module',90,0),
('086b1ebb-d6fb-4796-9961-38c409e76e91','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','EAPM','module',90,0),
('0896724a-9802-42fe-9e2d-83b3443a49a6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOP_Case_Events','module',90,0),
('0aa13749-2d93-43c3-933b-3928d5967bf0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','EmailTemplates','module',90,0),
('0b2578a6-3e8a-42f9-8eac-238d0808d94a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','SecurityGroups','module',90,0),
('0b52974d-6c76-4861-9d2e-47768f0c0a02','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Accounts','module',90,0),
('0bc0a831-9d42-4567-8b68-64710683ef02','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','ProspectLists','module',90,0),
('0be188c5-95c4-447a-89fe-1e3e2180953e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Emails','module',90,0),
('0c00857b-a9eb-44f6-abea-006a70daeace','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','CalendarAccount','module',90,0),
('0c332df7-7d9a-49c2-9538-e57317db56b8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Meetings','module',90,0),
('0c96ccf4-d6dd-4751-9ab6-76b2b64516dd','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AM_TaskTemplates','module',90,0),
('0c9f2b3e-6501-45e0-8fdb-c6bd1c4a9cad','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOW_Processed','module',90,0),
('0d0af477-a23b-4185-9b0b-fbb15c343e1b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Notes','module',90,0),
('0d2427e1-51c0-4027-9b50-5fb3df62a6bf','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','EmailTemplates','module',90,0),
('0d4830c3-def1-41d8-a345-0b7533d565aa','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','SurveyQuestionResponses','module',90,0),
('0d7675c5-1945-41de-8af3-0c6ce10a4148','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','import','caml_tarifa','module',90,0),
('0d925c88-3aa7-499e-bd59-1368e3ba40b3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Calls_Reschedule','module',90,0),
('0e1573d2-5351-4ad9-b5eb-72ba71916c85','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Bugs','module',90,0),
('0e2991bf-b105-47b4-8e73-0dd110dfe32c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','ExternalOAuthProvider','module',90,0),
('0efa118c-6f99-4dda-bc38-5885db67c88c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','ManualMigrationTasks','module',90,0),
('0faf133e-eee4-4a42-a76a-1e42a1965ea7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Surveys','module',89,0),
('1003ee50-a13b-4dd2-840f-d79706396c28','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Tasks','module',90,0),
('10c9e5d7-971d-46e9-93c6-abe8a86b4c0e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','EmailTemplates','module',90,0),
('118a7e16-c69d-4663-a445-7393bce80329','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AsyncTaskItems','module',90,0),
('11c029e4-9220-42b4-8ee3-2bee878ea470','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','ExternalOAuthProvider','module',90,0),
('1235e470-3d90-4621-a1bd-e92afd81ff78','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','edit','caml_apartamentos','module',90,0),
('12e1fc7e-b9f7-4221-a9bc-f9dd47d374a4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Prospects','module',90,0),
('14643016-39cc-49a2-a844-34144ae690d8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Opportunities','module',89,0),
('1481e240-0372-4257-a82a-f0c67953e088','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','EAPM','module',90,0),
('14f6c71c-aaf3-4882-9c17-3deeb0b7a72b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Calls_Reschedule','module',90,0),
('15af59ca-c5b5-425e-a19d-93006ea37da5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Accounts','module',90,0),
('1608ff9e-7f17-4fc5-8b0c-22688a743e18','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Users','module',90,0),
('165f700b-b1d5-4177-8006-a0352a7bfa8a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','EAPM','module',90,0),
('1681f67d-506d-4bcb-bce5-4318c729b7a5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','ProspectLists','module',90,0),
('16890f64-5f6b-4095-a3ce-491bb15e875c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','SurveyQuestions','module',90,0),
('17e3ce84-6c3b-4635-b75b-7ea88a3339bb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Leads','module',90,0),
('1807ccb5-ca12-49ea-a0b6-166161c11521','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Contacts','module',89,0),
('180a639d-8bac-44e2-a194-474bb5edb8b4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','SurveyQuestions','module',90,0),
('18b7175b-d958-45d1-acc8-a8567a855f70','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOP_Case_Events','module',90,0),
('18d91162-b1c6-4a7f-ae87-e3a837929d68','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','massupdate','caml_pagos','module',90,0),
('1967d361-4ed1-4566-9c82-e0bae33f55d3','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','massupdate','caml_parqueaderos','module',90,0),
('19a7ba30-0104-4dd8-a430-86e21ce5b7ee','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','InboundEmail','module',90,0),
('1a72e6a8-4f8a-4205-b03d-b387537ff2c5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','jjwg_Areas','module',90,0),
('1ae8d636-b52b-4f26-8658-d9c92d117d3e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOK_KnowledgeBase','module',90,0),
('1b427e2b-7047-4165-a224-f436de351a11','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','FP_events','module',90,0),
('1b443468-faa8-403f-a1f6-0f6a84e239b5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOP_Case_Events','module',90,0),
('1b6a5128-ef4d-4ef6-9de4-b8bcf9cf577f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','SurveyResponses','module',90,0),
('1b715d2b-a406-43f7-9b44-23054194fc0f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Calls_Reschedule','module',90,0),
('1bdbc446-2c9d-40a0-af5b-3820cf34a75a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','FP_events','module',90,0),
('1c7a86f6-ce5a-44f9-af67-99d82d54e62f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOS_Products','module',90,0),
('1c7f12ed-1091-4546-aed1-8fbca2c97a84','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOS_Invoices','module',90,0),
('1cd5cb0f-32f9-4951-aca3-ffe151e318e0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','ManualMigrationTasks','module',89,0),
('1d94204a-3105-4a62-9fa4-8155031cacf1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','FP_Event_Locations','module',90,0),
('1dc138ad-7195-40e0-8550-ad465889bc88','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','SurveyQuestionOptions','module',90,0),
('1dd35be6-87c5-4c91-beb6-6f5225d2a637','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOK_KnowledgeBase','module',90,0),
('206273c1-860b-47d8-a526-8b46e6d2b64b','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','view','caml_apartamentos','module',90,0),
('20803ef8-3427-4910-aab3-f1cf9e4e3e8f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','ManualMigrationTasks','module',90,0),
('20b90d35-5f3c-4689-9f27-63b92dd6b981','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','OutboundEmailAccounts','module',90,0),
('21de9c2c-3f33-49b8-950c-10dfc5a6cb23','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','ProspectLists','module',90,0),
('22437aa4-2546-45e6-a3ce-110e78e376d4','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','access','caml_control_accesos','module',89,0),
('226abcd2-9f1b-42da-9d1e-120028ed8b91','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Cases','module',90,0),
('227e741e-f63d-4266-b25e-b5b138076d25','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),
('2296f7a2-2a06-4c5c-bc82-1ba9b5a90ea6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Tasks','module',90,0),
('2371a74b-5988-4d13-9c59-8622b23964f7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','EmailMarketing','module',90,0),
('23a16ec0-0ff2-40b4-966c-e91fdde35ef9','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AM_ProjectTemplates','module',90,0),
('23c8df56-a046-4eaa-aa30-776ff8278101','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOS_Contracts','module',90,0),
('24255da7-6c8c-4040-96ac-35d28b05cf15','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','FP_events','module',89,0),
('257b29a9-eabd-4ab7-967b-cffec028956b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOS_Invoices','module',90,0),
('258a9eee-9e3a-4c6f-bc24-fc2bb64d0a4f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','SurveyQuestionResponses','module',89,0),
('2592d8eb-e534-49e2-aaec-23296a44302a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Prospects','module',90,0),
('25c86b46-ca74-462e-a197-2820e3733788','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Alerts','module',90,0),
('2675aed6-fba5-4472-bfc1-694120fe42ec','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','SurveyResponses','module',90,0),
('26b08c1f-e849-4adb-a849-21a8224eab08','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Processes','module',90,0),
('26b0a2b2-fc7a-4fe3-a90e-d3d8e57b5b64','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Campaigns','module',90,0),
('26b5b6f5-9296-41c3-990e-d55f8d4f16a4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOP_Case_Updates','module',90,0),
('274260ff-e032-4731-a6b7-62a237c9f7c1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','FP_Event_Locations','module',90,0),
('27534067-4c9d-4c7c-933c-4c62d3189ff4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOK_Knowledge_Base_Categories','module',90,0),
('282af2b7-a2aa-4825-8245-7b18899ce914','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','delete','caml_control_accesos','module',90,0),
('2847ca95-ebb9-4ae5-8e45-6b40bbb1431d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','EAPM','module',90,0),
('2876a327-7969-47cd-b513-7b58f4c9fa4c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOW_WorkFlow','module',90,0),
('28bb3403-e142-4b1b-9e43-292838cb987b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Documents','module',90,0),
('290d15ec-1203-4362-8342-991d3502241c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOW_Processed','module',90,0),
('2a208419-c5fc-494f-9f6a-724f96432a07','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','FP_events','module',90,0),
('2aa77e66-28f1-4d1a-b7fd-6a2d5dd2ce3c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Documents','module',90,0),
('2b6699a3-1a2d-45f7-8dbb-a1b9a1a6a3dc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','ProjectTask','module',90,0),
('2c48227a-099a-4a13-a4d8-59fc32fd15b7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOR_Scheduled_Reports','module',90,0),
('2cb5bb25-ae18-48ae-9852-f883265b3dfe','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','jjwg_Markers','module',90,0),
('2cfa6b2c-fd7a-4955-b2ad-a666e8d35b40','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOS_Products','module',90,0),
('2d008d9d-02cd-4c55-a642-2c495d35aadb','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','export','caml_vehiculos','module',90,0),
('2d452643-f8a2-477b-8775-c655a4813c99','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','view','caml_parqueaderos','module',90,0),
('2ed65e9d-ad57-460a-b608-53ec276e5690','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Calls','module',90,0),
('2f2dc681-3423-4b29-ab8d-a02f48b822e8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Alerts','module',90,0),
('2f4233f5-9537-4336-99fd-c5721656ac89','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','SurveyQuestionOptions','module',90,0),
('30f4b2b5-1c21-4707-a27d-376a65d085b1','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','export','caml_anuncios','module',90,0),
('321ccae3-d296-4477-8003-055f16635c1c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOR_Scheduled_Reports','module',90,0),
('32856843-f410-43e5-a862-026831fe0d64','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOK_Knowledge_Base_Categories','module',90,0),
('32cbbc12-cb60-4dc0-b52d-0e38a0f53f97','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','TemplateSectionLine','module',89,0),
('3333257a-0dfd-475a-9dbb-8e0f948d3a70','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','view','caml_anuncios','module',90,0),
('33675dc1-a7fa-4e75-bf55-9f3b5a0047a9','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Emails','module',90,0),
('3392234c-6995-499e-a44e-00a37d517d76','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOW_Processed','module',90,0),
('344978cc-a553-4295-88fc-e9caeaa09b93','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Documents','module',90,0),
('34840a18-6618-4a97-b04e-828739ef55f1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOW_WorkFlow','module',90,0),
('34b7e7b4-e7a5-49ca-8f1e-3d393affd5c6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','SurveyQuestionOptions','module',90,0),
('34bfb5db-09f1-4db4-8015-d5ebd1d7b261','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Tasks','module',90,0),
('34e5f8e2-1049-4b58-95c8-e736ddf37313','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOR_Reports','module',90,0),
('3518726d-ed57-4ebe-bd89-b93b4beeb1f1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','InboundEmail','module',90,0),
('3542abf5-83c3-4890-8988-5e1f7c88a8bf','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOP_Case_Updates','module',90,0),
('358089f9-89ed-4803-aa0d-fa39cd1a3014','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','EmailMarketing','module',89,0),
('35b9be9c-81b5-4425-839f-12a194420b89','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Cases','module',90,0),
('3601cee3-db3a-4c0e-adfb-5e7f0c82f996','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','EAPM','module',90,0),
('360c2e8d-ee55-4433-b38d-b556d5393800','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOS_Product_Categories','module',90,0),
('364c239a-35ea-4699-8fdc-20707bd7f812','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','SurveyQuestionOptions','module',90,0),
('365a92ae-d679-445c-8d21-4dcc469cfef0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','jjwg_Maps','module',90,0),
('36657997-c1f1-4d3f-80a1-ce363e160f9e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AsyncTaskItems','module',90,0),
('3688821f-3bab-4ecd-b481-62d1132a19fe','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','EmailMarketing','module',90,0),
('36e58f6f-9fcd-479f-b050-7f20c5d1ca30','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Calls_Reschedule','module',90,0),
('3952389d-867b-4085-8a98-ac294e948589','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOS_Products','module',90,0),
('39eb9f0c-5c16-4e81-bb53-cbd42766ae95','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOK_Knowledge_Base_Categories','module',90,0),
('39fb43bd-5005-4ffc-8b69-55fe3300e608','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','ProjectTask','module',90,0),
('3a05875e-52e2-42ac-8362-18a40062435f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Meetings','module',90,0),
('3a138378-a11f-46ff-a0af-cd5cad8e7233','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','jjwg_Address_Cache','module',89,0),
('3a18ac25-64f7-4b50-8893-121d9a1e7634','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','jjwg_Areas','module',90,0),
('3a40be78-7bb4-4830-ade3-22f7ca5e5b81','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','SecurityGroups','module',90,0),
('3ab43873-7b09-40c3-8007-d5e1f39645e2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Project','module',90,0),
('3b4042e9-da34-42a0-abfb-2d710138a117','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','TemplateSectionLine','module',90,0),
('3cc3dc5a-37e0-43a0-9ae6-c39bd0fd0855','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Meetings','module',90,0),
('3cc41584-5473-4554-8bcd-80200fe8e4ec','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOW_WorkFlow','module',90,0),
('3cc64ce9-0183-47f7-9c36-755e4f2d6367','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','FP_Event_Locations','module',90,0),
('3cc66529-e495-4a37-9d6e-7cbbefd4b055','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AM_ProjectTemplates','module',90,0),
('3d6a7a76-ddea-48f8-8abc-77848e07427f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Alerts','module',90,0),
('3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Cases','module',90,0),
('3e4cf94a-d741-4530-8b35-0055d05a8d01','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Campaigns','module',90,0),
('3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Accounts','module',90,0),
('3ec52466-6af3-4123-b3fd-cb8d27b01283','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Processes','module',89,0),
('3ede0dfb-087e-4c96-b7fe-6cef6050b67a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','jjwg_Address_Cache','module',90,0),
('3f31317a-63a0-4e32-856c-f96306542fff','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Contacts','module',90,0),
('3f31aa4f-bd00-44e0-a05b-0098e049bb70','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Project','module',89,0),
('3ffc96b6-4eaf-440a-ae13-483c0254c80f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Campaigns','module',90,0),
('405a3054-1a5f-4ed8-9f5d-2c852fd5e56e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Alerts','module',90,0),
('40b67a77-7f37-4c83-a662-ebfda4c1a7aa','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','delete','caml_parqueaderos','module',90,0),
('4136fb29-e03a-4d00-8daa-c0f679f707c2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOK_KnowledgeBase','module',90,0),
('41374efd-ac22-4fdc-843b-86d538142b62','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AsyncTaskItems','module',90,0),
('41452b6d-8777-4fd4-b575-0465a402fd9a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOK_KnowledgeBase','module',90,0),
('418f9039-90c0-4b24-a464-7ce927cd55f7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AM_TaskTemplates','module',90,0),
('423957e2-98dd-4750-b459-dfdd0b310083','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Users','module',90,0),
('42497f82-5432-40cb-b2c2-c7d858219138','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Meetings','module',90,0),
('4369f632-ca6c-4ae9-8ca4-1459f13f61df','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_Quotes','module',90,0),
('43986cd4-5e6a-41bb-b06e-f1b1d9f5687e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','jjwg_Address_Cache','module',90,0),
('43a98856-b26d-4add-bb5c-ccd5a7eabd5c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOR_Reports','module',90,0),
('43da9dc0-769b-4514-ac98-8edd54b7a62d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Notes','module',90,0),
('444da529-04ee-4cb8-b608-002d64e51bf1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Campaigns','module',89,0),
('44bb8ba0-0045-465a-b18e-b822734409af','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Surveys','module',90,0),
('4529aa63-fe75-4ba3-a93c-b8633444a611','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','jjwg_Maps','module',90,0),
('45a5c6f6-82a0-4948-9aa8-b1d3875e4e62','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Users','module',89,0),
('481be9e6-a8d2-4e9a-818e-d68033bfdbc6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','MediaObjects','module',90,0),
('49c63a73-6418-41be-b4a4-d20d8900b29c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','MediaObjects','module',89,0),
('4ad6b479-232b-448e-8e2d-b4408f6575b0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Project','module',90,0),
('4ba089f6-65ca-4a5f-b56a-5a1bd756cb0d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AM_ProjectTemplates','module',90,0),
('4ce86533-ee5d-401e-99e9-11a35d8a8f7f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOS_Quotes','module',90,0),
('4d83c3fd-d752-4e32-81aa-ef322acb020c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','jjwg_Maps','module',89,0),
('4e02625d-cacb-4e85-a8b5-a3f64aeb8c64','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','list','caml_anuncios','module',90,0),
('4eec6351-14c2-423c-ab94-efed1866de7a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOS_Product_Categories','module',90,0),
('4f0091ce-9b8c-4561-a3af-0c61b261cd54','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','CalendarAccount','module',90,0),
('50826140-883f-4f1e-958d-611a54babdad','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Leads','module',90,0),
('50928da1-cd4e-48b3-b111-8ba48600e2ae','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','TemplateSectionLine','module',90,0),
('50ba1dc9-ea86-48e6-9bdd-814bd4a7245d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','MediaObjects','module',90,0),
('51342b72-d140-4a13-82f9-ccee058cff94','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','FP_events','module',90,0),
('51528a57-ad42-4578-a3b9-1e906d332761','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','ExternalOAuthProvider','module',90,0),
('5154c973-f20d-4496-b111-bc45d2e8ac52','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','export','caml_apartamentos','module',90,0),
('518fee88-565a-4813-946f-44e5c4989bd8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','EmailTemplates','module',90,0),
('51a52ce6-041c-4aad-96db-9fb7b4076743','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','EAPM','module',90,0),
('51e0ee91-0d9b-41b8-b520-e9e00edac2d7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOP_Case_Events','module',90,0),
('5219d6a7-39b8-4303-9ea6-71ab1f809c09','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AM_ProjectTemplates','module',90,0),
('52e572da-4ca8-410e-9e79-2b93ed72bd7c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','jjwg_Maps','module',90,0),
('52f012c3-46ad-4b46-a684-42f011e0f4d5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Project','module',90,0),
('53294365-6e0a-46a6-b4a2-53dc14eb5441','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Bugs','module',90,0),
('53ca9b0b-c9f2-435c-b806-eda421e9323b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','SecurityGroups','module',89,0),
('53d55058-28eb-4282-92aa-90ae0ca6cb76','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','import','caml_parqueaderos','module',90,0),
('53f01d04-7fa4-4185-9825-003d32a6ad9c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','FP_Event_Locations','module',90,0),
('54291b74-6875-4229-89b2-aef76c4dd5a8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Processes','module',90,0),
('5483c82f-db64-4093-9609-51be18dc91c8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOS_PDF_Templates','module',90,0),
('5484c3c5-f8b0-4488-8e9a-c9ffcce35de7','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','export','caml_control_accesos','module',90,0),
('54b995ba-89da-4c5e-abdd-c0f65c6eb3bd','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','massupdate','caml_vehiculos','module',90,0),
('552137c2-3535-4061-8025-ba99d97a9542','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','ManualMigrationTasks','module',90,0),
('559c2a04-8dc9-44e8-b0fd-2daa9aabf60a','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','edit','caml_control_accesos','module',90,0),
('5650aa7f-d01f-483a-a714-7457c35b2bae','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','jjwg_Address_Cache','module',90,0),
('571330fd-255c-45ab-8980-658b5d294ea1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','SurveyQuestionResponses','module',90,0),
('579b7eb3-9c9f-42f1-ad20-156f63b97708','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','jjwg_Markers','module',90,0),
('58a0034d-6f96-43fc-8a71-26bb4c7deaab','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','SurveyQuestionOptions','module',90,0),
('58e59c97-48a9-4c4b-8c08-c848f2643b03','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Users','module',90,0),
('59917b65-095f-40c0-acc9-0bbce54ba158','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','edit','caml_vehiculos','module',90,0),
('59a22dcd-ba31-4071-a6c4-c322aa8bcb4a','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','view','caml_tarifa','module',90,0),
('59aca587-7123-444b-adc5-beda3e7340b2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','InboundEmail','module',90,0),
('5b7697e3-8f8e-4efa-8b03-acca2d5beb39','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Bugs','module',90,0),
('5c6ae45e-f52e-4384-af56-ce026d499c02','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_Products','module',90,0),
('5c75b700-9cfe-4917-87f4-64a73af5f393','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','TemplateSectionLine','module',90,0),
('5cc64691-03b0-437e-a36a-c70f772eac6a','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','edit','caml_parqueaderos','module',90,0),
('5e00b64d-322f-4c17-9e16-a588a9ee7ed2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Leads','module',90,0),
('5e2f340d-6586-44dd-b1da-93005b3fff4a','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','import','caml_anuncios','module',90,0),
('5ebc633f-1cd1-4236-a22b-54458ab66e75','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','SecurityGroups','module',90,0),
('5f255943-fea3-4a67-9fdb-31540ac92e5b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Campaigns','module',90,0),
('5f32c079-e651-49e6-aa3b-8c8d190dae2a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOP_Case_Updates','module',90,0),
('5f5e281a-351b-4d42-b31f-7ff8095d1163','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','jjwg_Areas','module',90,0),
('5f83f41a-dd6b-42bf-be43-269658e80b32','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','EAPM','module',90,0),
('5f85baad-2295-46a7-b737-ae1e199c6ad8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Bugs','module',90,0),
('5f94fe2a-ebb3-40cf-9f9a-46eb3844360a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Project','module',90,0),
('6037d09f-02e3-4575-8b5f-520a1ac44c98','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','SurveyQuestions','module',90,0),
('60dec127-702e-45f9-ad58-1187c6d4b972','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AM_TaskTemplates','module',90,0),
('620e8b6b-8e3b-43bb-92b3-9dafa1c76efb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Leads','module',90,0),
('625ad116-0023-400a-b317-940d52682990','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOS_PDF_Templates','module',90,0),
('63868b23-ccbc-4dbe-b484-e027e738d4f0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Surveys','module',90,0),
('641dcbdf-ac4b-41e8-9359-b42a1cd111d1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','jjwg_Maps','module',90,0),
('64cf44e2-6999-4c15-bcad-1d5d0353d328','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Contacts','module',90,0),
('6513c08d-2734-469f-9e92-41802cc51bee','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','jjwg_Areas','module',89,0),
('65b9a1f8-e472-48ed-a9e2-17f4eda82eb9','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','InboundEmail','module',90,0),
('6722ec70-7cef-49fa-9351-e68ab5bd7ca5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Notes','module',90,0),
('684bf36b-3298-471c-96c8-e059ee87788f','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','delete','caml_anuncios','module',90,0),
('6a40bb0d-1147-4368-90e9-2206c652892b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','ExternalOAuthConnection','module',90,0),
('6af78ab9-6649-4e8d-b410-9545b6e80707','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Surveys','module',90,0),
('6b07dae0-1b1a-4c56-a913-162b0d20df7e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOS_Quotes','module',90,0),
('6b814a8b-138a-4ee6-8460-bfaf1fa21f92','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','ProjectTask','module',90,0),
('6c0ddb9d-38a8-4244-88be-bd249a57761f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','jjwg_Markers','module',90,0),
('6c0e8ca0-3f9d-4a1a-89cd-07da6803a337','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Alerts','module',89,0),
('6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Cases','module',90,0),
('6c935396-7d5b-49cf-8fd4-fd4201734b99','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Meetings','module',90,0),
('6ccb7be7-b659-418b-980b-5f72b5cc4f1d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','SurveyResponses','module',89,0),
('6d32d1c5-cf2a-4429-b28e-575143c9df94','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','jjwg_Markers','module',90,0),
('6d5fd71b-bb52-420b-b46c-cbb46e3b4fa5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOW_WorkFlow','module',90,0),
('6d9165be-9f00-4355-bb0e-26c73cdbd27f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','SurveyQuestions','module',90,0),
('6db21e1c-3e69-4c35-b50b-ec7941491141','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','TemplateSectionLine','module',90,0),
('6dbf87e7-e63e-4cf4-a900-62811350ad92','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Processes','module',90,0),
('6e34216b-7d9d-47b6-b1d5-b5151d2b0965','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','FP_events','module',90,0),
('6e74593a-b670-41e0-b08a-2066ca1496a8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','ManualMigrationTasks','module',90,0),
('6e7d5960-c8c8-4d98-b823-f148960a016d','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','access','caml_tarifa','module',89,0),
('6ed0bb61-d98c-4b0a-849c-ab48678312df','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','view','caml_control_accesos','module',90,0),
('6f054bce-07a0-4a37-8193-928ea2d917b5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOP_Case_Updates','module',90,0),
('6fa624d6-47b2-4ffb-b853-7eb149490831','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOK_KnowledgeBase','module',90,0),
('6fac6d61-62f5-488c-a724-530366b3337d','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','edit','caml_anuncios','module',90,0),
('6fcbeb87-0692-48c2-8953-231636c86bbb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Documents','module',90,0),
('70243d91-48f1-47a6-b4e2-bb8f30b2a1b0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOS_Invoices','module',90,0),
('70499397-ab94-4895-ba4d-b091ecff36f9','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Contacts','module',90,0),
('708c56d4-7f1b-4bc4-b94f-77a16307053e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_Contracts','module',90,0),
('709cdfc6-d75d-41bc-94c4-0849bfe9b8ff','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','view','caml_vehiculos','module',90,0),
('70c9e918-49c6-414b-bd11-e1ab06f3d90c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','SecurityGroups','module',90,0),
('70fa9f7a-0507-4453-899c-a5a1a7e1dcbc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Accounts','module',90,0),
('711cb551-b416-40fe-afad-9684c7160fb8','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','list','caml_tarifa','module',90,0),
('719be780-0442-4285-aef2-28a20e81fa43','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AM_TaskTemplates','module',90,0),
('72226a25-441f-4769-b6ca-1c711925f5bb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Meetings','module',90,0),
('729fa487-981f-4605-9a30-ea2c524d9bac','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_Product_Categories','module',90,0),
('7383c486-ee0e-4d4e-81f7-0256224ea78a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Calls','module',90,0),
('739af0b9-e3eb-47e1-812e-ecc047a3c73f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','ProspectLists','module',90,0),
('740babf9-0b24-4c2d-b329-f53ed0046b0c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Users','module',90,0),
('747beeb3-d28f-46cd-aa7f-2fd08a23e0d4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_PDF_Templates','module',90,0),
('751e4035-8fa8-4d65-bda8-47e6c0dd5374','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Bugs','module',90,0),
('751eaac8-bbdb-4f17-81a2-da1de14d215b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOW_WorkFlow','module',90,0),
('76177abb-a6c2-4330-a476-9e1f5ff2cd4e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Users','module',90,0),
('764a43ba-0d1e-4059-8781-0137960f5416','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOK_Knowledge_Base_Categories','module',89,0),
('76942153-db98-4866-b2e9-a06b1604866e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','jjwg_Markers','module',89,0),
('76d40b3e-7445-44e2-8991-c36e1b52625c','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','massupdate','caml_anuncios','module',90,0),
('7713c9e0-dcc4-4dbc-899a-d45578e75d55','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','SurveyQuestionResponses','module',90,0),
('776b6324-317f-4112-84e7-995c9b136038','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOP_Case_Events','module',89,0),
('7802d928-b2b2-4091-bee6-abebc1f187d3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Accounts','module',90,0),
('789f928b-63cb-4139-835e-dc56a3d1f37c','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','access','caml_apartamentos','module',89,0),
('78bbb291-7bdf-458d-a3f6-e3b332888031','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','list','caml_apartamentos','module',90,0),
('79000ca2-18a7-449c-964d-4d33d030e8ab','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOS_Product_Categories','module',90,0),
('79841b2c-9fa2-4e02-9c74-8ea5433cc668','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','ExternalOAuthConnection','module',90,0),
('79f909df-b836-4f96-af90-36abccc50b6b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Tasks','module',90,0),
('7b2e05d8-6963-4750-be0b-5feb4be07f12','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOP_Case_Events','module',90,0),
('7b64e235-9a93-4b7b-aac7-c410b1e2c907','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','EmailTemplates','module',90,0),
('7c44c252-4461-4bb1-b24c-dc4fe572c0ef','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Documents','module',90,0),
('7c506b63-4c69-4ee0-9025-c9fc817771c3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOW_Processed','module',89,0),
('7d312fab-0066-4d14-958f-3c9a7c75669d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','EmailMarketing','module',90,0),
('7e29c0bf-65cb-4b29-92cd-b750db96e549','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOS_Product_Categories','module',90,0),
('7ed3ff06-9966-4bc1-9cda-140c94ccb4c3','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','delete','caml_apartamentos','module',90,0),
('8042034d-b38a-46d4-8b3b-d0cc4dc70541','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','ProjectTask','module',90,0),
('804d4438-6bd1-4555-a84a-fd922fe29070','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOR_Scheduled_Reports','module',90,0),
('80b12ca7-3518-4142-b0aa-7877d831707f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOS_Product_Categories','module',90,0),
('80dbf0ba-7d6b-497e-820c-2a3f96225b39','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','ProspectLists','module',90,0),
('8138c36b-a539-43cf-9439-453017afd5b1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Calls_Reschedule','module',89,0),
('8146cae1-b993-481d-a3b3-53938f9e4670','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','SurveyQuestions','module',90,0),
('81578ec5-eda2-4755-a095-a7fe44c6daf1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AM_ProjectTemplates','module',89,0),
('82ed8f88-cb07-48dd-ba03-472af219e642','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','jjwg_Areas','module',90,0),
('836115c9-23cd-4365-bbcb-6bc8a94453ac','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOW_Processed','module',90,0),
('84312d06-a0c2-4bd6-b6b7-509c1a7bd9dd','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Emails','module',89,0),
('85294b70-954f-4d9d-8719-ec7c0d695fb6','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','access','caml_vehiculos','module',89,0),
('875f3849-7559-46f9-901c-ebde05b57e54','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','FP_Event_Locations','module',90,0),
('875f825c-d5eb-41c2-a7c9-d2c4c748d3e2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOR_Reports','module',90,0),
('87b0e7c5-8e40-4a31-9b6a-661d54c42fc7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','ExternalOAuthConnection','module',89,0),
('88b0e5aa-0e8c-4523-90c6-961ddac34dca','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','export','caml_pagos','module',90,0),
('89131fbf-c44f-47a8-a95e-e7a90164b0f0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','OutboundEmailAccounts','module',90,0),
('896d287c-8082-4972-a9a4-d71b9b77cb35','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOW_WorkFlow','module',90,0),
('89a685d4-1c63-494e-a0f8-90f06264f031','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','ExternalOAuthConnection','module',90,0),
('89f8d64d-bbc5-4a0b-a616-8c222d51cf58','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Calls','module',89,0),
('8aafe177-b5f2-44ac-ba37-26b3daa66a94','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','import','caml_pagos','module',90,0),
('8ad52ce9-6d69-4768-903a-d074519dc13c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','EmailMarketing','module',90,0),
('8cfd9b24-0cc2-487d-b5dd-a4f29f0ac55d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','ExternalOAuthConnection','module',90,0),
('8d9bed76-a79f-4906-8d1d-bb4c4061a87c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','ManualMigrationTasks','module',90,0),
('8df6e1fd-3630-4e2f-9a34-dc1bd66e539a','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','delete','caml_pagos','module',90,0),
('8e68e44a-7549-4b5a-95fb-2724c418c14a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','CalendarAccount','module',90,0),
('8f7601b5-4043-4376-be78-8ec5d8d1fd39','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','SurveyResponses','module',90,0),
('908e8c34-d229-4a02-9e33-cdf51b633a10','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','export','caml_parqueaderos','module',90,0),
('91bb421a-5f30-4e3e-96c4-b8ec25f728fa','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','SurveyQuestions','module',89,0),
('91e57684-14f3-4938-9fd3-40526ddf48fd','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOW_Processed','module',90,0),
('920ceb2d-42d4-4b20-92d5-1e6402d684fc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','ExternalOAuthProvider','module',89,0),
('92ff1621-0e5b-4e9c-a2f9-d618866463a2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Opportunities','module',90,0),
('931df4c3-cd28-4ea6-acd4-4975fdaa4f09','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Prospects','module',90,0),
('9338a94d-076b-4251-8521-fee6d0cf93aa','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AM_TaskTemplates','module',90,0),
('9390ad8c-cf60-4539-afff-85ff11fbea19','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','ExternalOAuthProvider','module',90,0),
('9393127c-7f5e-44d9-b046-3af9a0c686b8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Leads','module',89,0),
('93e70a6e-c3f1-4815-918c-8b45d6ddaba2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Campaigns','module',90,0),
('941a2406-b330-4753-85f9-89cd82c1f740','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Meetings','module',89,0),
('942c6ca1-1466-486d-8777-77593489da34','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOS_Contracts','module',90,0),
('95193df2-06eb-47d1-9e18-90c6013a444f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOS_Invoices','module',90,0),
('952dd735-a0af-48f8-905b-5372e60b440c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','FP_events','module',90,0),
('968581ba-05aa-47c4-941f-73902cfeb08b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Opportunities','module',90,0),
('9806eda1-37e0-42af-b5c2-75eb0235df0b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','SurveyQuestionResponses','module',90,0),
('984afbe1-3bec-4765-82f5-dc7f74f78bbc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Leads','module',90,0),
('98fc49a2-c91e-42a6-b33c-63876a36da10','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Calls_Reschedule','module',90,0),
('993b277a-eaf1-4d8c-9928-f0b091ce50d0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','SurveyQuestionOptions','module',90,0),
('993d6927-57ac-46bf-9384-3efe92209dd4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Bugs','module',90,0),
('99a4acda-dbfd-4a2d-bebf-a413a0e03b7c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Accounts','module',90,0),
('9a17cf1f-5861-45bd-a646-563ddf2ad69b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOS_Contracts','module',90,0),
('9a510b97-0f79-4951-a333-f157f75bb472','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOS_Contracts','module',90,0),
('9a659489-59a9-4188-bd7a-3053cb662c48','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','access','caml_parqueaderos','module',89,0),
('9ad8db49-a936-4166-bebc-d99f88e17872','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOP_Case_Updates','module',89,0),
('9b372750-a546-4b0a-8910-562663456f9a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOS_Products','module',89,0),
('9bd85a1f-bc3b-47f7-b644-3a3bbee80b5c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','SurveyQuestions','module',90,0),
('9c0e8322-7665-40a7-9224-2889fcb88873','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','jjwg_Maps','module',90,0),
('9c436a6f-4168-4c72-8a29-9c8cbd617b4a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Surveys','module',90,0),
('9c7e2470-38a0-4b6a-be0b-0da97536716e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','FP_events','module',90,0),
('9c9101c8-7504-461e-b197-224ec15d121a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Notes','module',89,0),
('9c9d705f-8376-4d6e-9062-c43b36d720e4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','TemplateSectionLine','module',90,0),
('9cac006a-5623-410d-a92b-b4a214bcb8f4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Calls','module',90,0),
('9e9664be-f74c-4c69-9251-4aae1cd93c18','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Processes','module',90,0),
('9f4c0431-5ae7-4b37-9903-413dc7496025','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Surveys','module',90,0),
('a0515e3d-56ea-4a5d-94a5-6fcf35eb9a19','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','FP_Event_Locations','module',90,0),
('a11e4cd4-6de4-4d02-9f05-13056bac4001','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','TemplateSectionLine','module',90,0),
('a18d401e-77e0-4d20-bef8-4e5f3229dff9','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOS_Quotes','module',90,0),
('a1cb54e6-6df3-40ea-8612-1c34458b5753','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','OutboundEmailAccounts','module',90,0),
('a23fa4b1-3fb8-4778-ba55-2963168e7f90','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','massupdate','caml_control_accesos','module',90,0),
('a286f30a-c3a1-42c8-8bd3-6ca7edd1e3f7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','ManualMigrationTasks','module',90,0),
('a29ab5c8-0e98-4578-813e-1d95e24b53ad','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Surveys','module',90,0),
('a2ec06a1-0d0e-4528-a5ba-bb53bbf66a07','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Contacts','module',90,0),
('a3d94824-0924-4292-82af-fecb9bbbfdbb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Documents','module',90,0),
('a44951d8-0203-4159-beab-9d851b7805fc','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','view','caml_pagos','module',90,0),
('a4879cf8-15de-444b-be3e-37b9e951cefe','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),
('a53cb42a-772e-4bd2-9a1f-97ff17ef5bdc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Emails','module',90,0),
('a5ec4ecb-8526-4015-9fc6-aa45cbd98655','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','ExternalOAuthConnection','module',90,0),
('a5ed46e1-8e17-4459-a370-0dffaf05e0e3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Prospects','module',90,0),
('a5f9f502-6339-4541-8ebb-97cc40d3d884','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Campaigns','module',90,0),
('a6c05246-5a54-4833-baa1-267650f342aa','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Calls','module',90,0),
('a7e3cf57-2be7-45b2-a712-91485f12404f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','SurveyQuestionOptions','module',90,0),
('a802f3e4-a92d-4ebf-a264-f5ed1cf7ee70','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOW_WorkFlow','module',89,0),
('a884ca63-b1c6-4e6c-8162-11eb4ce764ed','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOS_Product_Categories','module',90,0),
('a91006c1-37c9-4c62-b6b0-2121dcab15da','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOS_Contracts','module',90,0),
('a9307b98-0a55-4b45-aede-4c236d1ac3ac','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AsyncTaskItems','module',90,0),
('a9778af6-1068-421e-8c56-1aa82c01b562','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AsyncTaskItems','module',89,0),
('a9a63ac3-04c8-47ab-9b9f-497d02261fbd','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','MediaObjects','module',90,0),
('aa9f35d2-eaa8-4f26-9abe-975d74882d75','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','jjwg_Markers','module',90,0),
('ab67bcf8-e1b8-4f71-a1b3-7ff905e08017','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','ProjectTask','module',90,0),
('ab753073-8aa9-41f3-8f6d-9c29eb25a057','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','OutboundEmailAccounts','module',89,0),
('ab8e7013-f8a5-4c38-ac61-ed25519ad4f4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOS_Quotes','module',89,0),
('aba576b5-7019-4033-8ee2-c1f9feedfc46','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','OutboundEmailAccounts','module',90,0),
('ac37818f-8487-4b59-a25b-1f4ffd31d7ca','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','jjwg_Markers','module',90,0),
('ad164842-7f1f-43ee-9a57-8aca03838b7b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOP_Case_Events','module',90,0),
('ae351d4b-0bc5-41d3-b09d-7d6b0e690cf0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOW_Processed','module',90,0),
('aed1d182-36b7-42e4-94a8-4ca5d73621be','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOS_Quotes','module',90,0),
('aee46515-030b-4370-8168-7816de8643a7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Surveys','module',90,0),
('afc0d140-10f0-47d7-9323-5ecbcf1ab742','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Contacts','module',90,0),
('afe43274-6b48-47bc-98d6-b261663cfe52','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Notes','module',90,0),
('afe6d7d8-f139-438f-8b67-2084f2d5bbe4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Cases','module',90,0),
('b05bc48a-3a05-4a88-b584-d82d6010bca1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Accounts','module',90,0),
('b074b871-1e2e-475d-89a6-9b6bec77ff70','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOR_Scheduled_Reports','module',90,0),
('b0a22311-3bae-4c4f-b224-dfe09f9ea603','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOR_Reports','module',90,0),
('b13945ec-bf57-45d8-834b-170c276fdcf6','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','import','caml_control_accesos','module',90,0),
('b14096ae-1624-48fc-b53f-1bdb0ff2c977','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOP_Case_Events','module',90,0),
('b159cf4e-3d74-4ec5-9258-c723be022fbf','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','ProjectTask','module',89,0),
('b25193aa-53d1-4c2f-9b39-1d18b5d98fda','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','ManualMigrationTasks','module',90,0),
('b2fc11de-bff5-4433-af2e-2cd7b475e304','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','CalendarAccount','module',90,0),
('b43e352e-f9c1-4e17-a357-2229835f918a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AM_TaskTemplates','module',89,0),
('b533b0a7-4bc6-4772-80dc-1f4ff2db7399','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Emails','module',90,0),
('b65a49b5-db1d-477f-abc1-48eaa08e43f7','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','export','caml_tarifa','module',90,0),
('b70570f8-0c20-434d-b0df-5bc4a06821cc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Tasks','module',89,0),
('b731bfb9-9b44-4795-8c01-0cf8399194b3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','OutboundEmailAccounts','module',90,0),
('b7da0ced-0580-4d2c-bdc4-b550238a5c0c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOK_Knowledge_Base_Categories','module',90,0),
('b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','jjwg_Maps','module',90,0),
('b7edf383-8b88-4418-ae0b-1cefbd614873','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','EAPM','module',89,0),
('b841ac9b-f49e-4930-a133-89c7eb995a89','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Leads','module',90,0),
('b9ad9db4-a5f0-4bab-aeb0-1942c9b1fffa','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOS_PDF_Templates','module',89,0),
('ba51cac3-eec1-49b2-9467-0203cf07f970','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','list','caml_parqueaderos','module',90,0),
('ba51d42d-5dac-4589-8568-5844b3358990','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','import','caml_vehiculos','module',90,0),
('bacfb789-b991-4a74-948f-8fb15d66e5e0','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','MediaObjects','module',90,0),
('bbae6027-8167-416c-a0f6-832b1db98907','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','access','caml_anuncios','module',89,0),
('bbe23deb-c40f-4950-ae1a-a5583d1fc73f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','EmailMarketing','module',90,0),
('bd228d09-2784-4f50-9177-cbd78dfc1182','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Calls','module',90,0),
('bd23b326-255d-4f23-874f-64ea291c2718','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Notes','module',90,0),
('bedab9f4-637f-47a7-a62f-bff4e2deeb52','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Opportunities','module',90,0),
('bf065364-58bd-4b5e-8995-4bafb4cb0b17','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOS_PDF_Templates','module',90,0),
('bf41e9b8-8e41-4c23-a617-642383973ecb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOK_KnowledgeBase','module',90,0),
('bf65aa0d-8b07-4305-9b7d-9a08c96798ff','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOS_Products','module',90,0),
('bfdb58fa-372b-40f4-a2d4-1fdd17d562a6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','jjwg_Markers','module',90,0),
('bff83117-dcb5-4663-8902-700064b23dcf','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','jjwg_Areas','module',90,0),
('c0683561-72f9-4511-b18c-ca192656121c','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','delete','caml_vehiculos','module',90,0),
('c0f5acf3-f0a1-4f35-ba68-e28bc5b1a837','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','ProspectLists','module',89,0),
('c2326652-2664-43e5-9617-52a2cb927a72','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AM_ProjectTemplates','module',90,0),
('c2dbcd44-0103-41fc-841f-2a5f88b093f3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','SurveyQuestions','module',90,0),
('c3fd0f76-b547-4dfe-87d8-8c8fbba805a6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Emails','module',90,0),
('c4f3fe42-75cc-4080-97ea-f1325c8b4ffe','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Opportunities','module',90,0),
('c615ef1d-5481-4ded-a40d-62239d3deb2d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Alerts','module',90,0),
('c65003a2-3143-4e43-8996-c4ca028ca743','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOS_Quotes','module',90,0),
('c66effa2-bf5c-4660-9f32-4b232200bcbe','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','ExternalOAuthProvider','module',90,0),
('c6e4ac3d-8e95-43b6-ac15-97350c759e57','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOS_PDF_Templates','module',90,0),
('c71f5e68-5d74-4dea-9c65-01dc53af6d8b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','SurveyQuestionResponses','module',90,0),
('c832751c-d053-421c-b198-8c14c0df94bc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOK_KnowledgeBase','module',89,0),
('c8e7f56e-76e9-4d7e-9fc1-307445696a79','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOK_KnowledgeBase','module',90,0),
('c981bd45-fecc-4bbc-8b9d-cdb3adc2d574','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','SurveyResponses','module',90,0),
('c9ab568d-57d9-4b60-88a6-3329e9c23503','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','ExternalOAuthConnection','module',90,0),
('ca3fce63-a376-471c-a147-6205fdec43eb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AM_ProjectTemplates','module',90,0),
('ca606fe1-0058-4e20-b124-895421473482','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Contacts','module',90,0),
('cb0492cf-9963-4cc4-aee5-6ecdc09970aa','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Calls','module',90,0),
('cb1d0f60-ac90-4e02-b6cd-5be35ec6add1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOS_Contracts','module',90,0),
('cb33d551-acbc-4b54-8bba-427628d123de','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','EmailTemplates','module',90,0),
('cd363563-01da-4411-93cb-213e3b86a4dd','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','ProjectTask','module',90,0),
('ce7be5fb-5856-4992-8c9b-ee49afdebe8e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Users','module',90,0),
('cef3dcda-cafa-4b83-9eb9-b0135a582723','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AsyncTaskItems','module',90,0),
('cf79b954-fce7-4814-a81d-a1e0b97058c3','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','edit','caml_pagos','module',90,0),
('cf8f3ce0-3684-433d-9f66-2ba4bea03de8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AsyncTaskItems','module',90,0),
('d004670f-38cf-4e81-a9b8-e112da5c5149','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOS_Contracts','module',89,0),
('d196f5be-c80e-4310-8471-9a255f5d9eed','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Tasks','module',90,0),
('d1a70c7d-9707-43ce-8628-4789ebeb73a3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','SecurityGroups','module',90,0),
('d28ed73e-8a3b-4a5e-af2d-1be4fb56cb39','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','ExternalOAuthProvider','module',90,0),
('d29564c2-07a2-439a-974b-93aaceb38d1b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Emails','module',90,0),
('d341cfea-8814-4edf-8db3-f19f95e239f3','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','massupdate','caml_apartamentos','module',90,0),
('d3b6480a-58ea-446f-8fee-c51a2b295938','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','SecurityGroups','module',90,0),
('d453b4cf-e9df-4fd3-88a9-ddb6386362ec','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AM_TaskTemplates','module',90,0),
('d45e5fed-78c1-43e8-854c-5a4283ba9078','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','CalendarAccount','module',89,0),
('d467164c-8170-47c4-a892-43c8b6ded423','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','ProspectLists','module',90,0),
('d4d12005-24a4-4482-a56e-ce12016ddc6b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOS_Quotes','module',90,0),
('d506cb6b-1945-4ea2-9eb4-d003fba772d1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Bugs','module',90,0),
('d54304e4-d130-49e6-adde-004ee313fbdc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','EmailMarketing','module',90,0),
('d575ea98-6279-44f8-b017-e1613d9ba73c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_Invoices','module',90,0),
('d67890cb-de8b-4f68-8324-c0df8c12456d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOR_Scheduled_Reports','module',90,0),
('d6ad5b95-e793-424f-b23c-f3a009af73b5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','OutboundEmailAccounts','module',90,0),
('d707d055-5cd7-467f-851e-5d814c71f1f4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Project','module',90,0),
('d7268c03-cd0a-4fab-9b21-24313d26917f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Notes','module',90,0),
('d72798df-8d98-41db-8201-798b30cb3779','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','ExternalOAuthProvider','module',90,0),
('d829bf88-fbfc-48d1-bb0d-0b1df06ce16e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOP_Case_Updates','module',90,0),
('d8cdd4e2-09e3-48cf-8521-0b959894ce88','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','list','caml_pagos','module',90,0),
('d9625ee5-6015-4d3d-b454-d67083cce4e2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Cases','module',89,0),
('da8c297c-8f47-472a-b15f-a0b836a1b52e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','CalendarAccount','module',90,0),
('db3cbc00-b68f-4f1b-8faf-374c5643cbdf','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOR_Scheduled_Reports','module',90,0),
('dbdf621c-659d-4e47-9b63-a6dd593b7c80','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Emails','module',90,0),
('dc664be5-4cdb-416c-9feb-0ee4219e93b6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','CalendarAccount','module',90,0),
('dcc8e7de-446e-45b6-9f83-34f6e636999f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOR_Scheduled_Reports','module',90,0),
('dcd3a7f4-e2a9-4691-aa6a-08956a6ddc1f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Users','module',90,0),
('ddc733d8-e6d3-4046-9463-382346bf5f64','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Calls','module',90,0),
('de3367fe-b876-4bbe-872c-f9394e056a15','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOW_WorkFlow','module',90,0),
('deea6af2-e078-4870-84f2-8f7e8bf8dabb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','SurveyQuestionResponses','module',90,0),
('df0a892f-9a23-4a3a-96b2-0114ff81e4c1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOS_Invoices','module',89,0),
('df23d201-da1b-4482-ab4e-a69ea1caffc6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Accounts','module',89,0),
('df65321b-1fa3-423b-a0a1-3ce987651621','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AOS_Invoices','module',90,0),
('dfa58461-94d0-48f0-9b02-47ffcd918181','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','InboundEmail','module',90,0),
('dfe8c16b-7795-4659-a3fc-644ebf5b4b93','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Alerts','module',90,0),
('e027e371-8d32-42bb-9eb1-e311a14168fa','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Leads','module',90,0),
('e03c57f8-1c16-43ca-bbbd-e9e865f999d3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Cases','module',90,0),
('e060136d-f93d-4b3b-a156-07572aa45d32','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOS_Products','module',90,0),
('e1347474-2f1c-4bb1-9cbd-cc169d789880','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Tasks','module',90,0),
('e242a97c-d4bf-4154-9643-6002036237bc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','EmailTemplates','module',89,0),
('e24427c5-e771-4a54-a71e-2cf3d317d52a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','SurveyResponses','module',90,0),
('e25000ed-693a-4ad7-aaf6-695f8bdc8a4c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','FP_Event_Locations','module',89,0),
('e274471d-6b57-4406-b64d-2451c92577cb','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOR_Reports','module',90,0),
('e2c488a3-0956-48d0-873a-312a3f7e3b47','2026-05-25 22:54:38','2026-05-25 22:54:38','1','1','import','caml_apartamentos','module',90,0),
('e3a30428-91c5-43ab-8d5e-0e201c9ac435','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOS_Invoices','module',90,0),
('e4af89fa-7c33-4a58-84c6-c49fca3a654e','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','massupdate','caml_tarifa','module',90,0),
('e63e5b9e-f777-48db-88b3-1bd6e4195bd5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','FP_Event_Locations','module',90,0),
('e65e7eea-858a-4afd-930a-1030b0f5b777','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOS_Product_Categories','module',89,0),
('e68efaff-a1fa-4bf8-8200-e33d64ec06a6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','AOS_PDF_Templates','module',90,0),
('e6cdcbfb-ae29-490a-bd66-e0f4dffed2ef','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Prospects','module',90,0),
('e753ea71-9ed2-46d4-882d-4cdbac698a38','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOP_Case_Updates','module',90,0),
('e75f177f-5d2b-4938-b29a-60b1d4435e22','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Processes','module',90,0),
('e788ea01-fa2b-49d3-bc56-6695ef1338b8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','InboundEmail','module',90,0),
('e80aa1ba-ca36-4435-b92e-74205b70a1a6','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','delete','caml_tarifa','module',90,0),
('ea0c3962-69ff-4f0e-999b-31ada7662272','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','list','caml_control_accesos','module',90,0),
('ea5833f8-50a1-4f65-a14b-40a18bb52bd4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Calls_Reschedule','module',90,0),
('ea73f637-7bcd-4353-a06b-4a81beef5cb4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','SurveyQuestionResponses','module',90,0),
('ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Meetings','module',90,0),
('eb0fc3e6-4991-4e17-aaf3-15c80de56332','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Processes','module',90,0),
('eb71dc46-dcc4-42e8-ae3b-6de6105da5ee','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Prospects','module',90,0),
('eb927cf9-64d2-493c-bdca-f113d41adf2a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','MediaObjects','module',90,0),
('eba9cc71-0ac2-4b93-9318-cb9669c9b650','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AOR_Reports','module',90,0),
('ec135e94-31e9-4103-ac0e-623cf814562d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','jjwg_Areas','module',90,0),
('ec3c87de-48f0-4e7a-9e27-bba4ddb71e66','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Prospects','module',90,0),
('ec444537-a741-4a62-922d-1f67bc3dd2c3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','AOW_Processed','module',90,0),
('ec46f441-d584-404f-983e-8679764be5a7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','MediaObjects','module',90,0),
('ec8f4d09-fc8c-4d5b-9d09-57504b7097ea','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','SecurityGroups','module',90,0),
('ed012953-572b-4f6b-8244-be09c52314af','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Alerts','module',90,0),
('ed0f1ee5-a667-4c3b-a4e9-85a5d98cd7f8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','jjwg_Maps','module',90,0),
('ed6024c8-3a6f-4d15-a762-ef63473037cc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Campaigns','module',90,0),
('ed698bd2-d12b-48f7-9afc-1818155a8148','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','ProspectLists','module',90,0),
('ed9ebf2c-d4d6-45df-afb1-eba0aa609b6b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','Tasks','module',90,0),
('ee19dece-e828-47e9-b915-e2227f37e5bf','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AM_TaskTemplates','module',90,0),
('eec1eaff-2188-4ff0-be90-4411818c04ee','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','AOS_PDF_Templates','module',90,0),
('eef73c96-143b-4893-adcd-fe4b8a4bead4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','SurveyResponses','module',90,0),
('f0737257-b264-4da1-b075-acd028fa204d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Notes','module',90,0),
('f27d6465-e3b8-4f27-9657-a1ca680e9bd9','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),
('f29e1783-11cd-49a5-a77e-8c41725ca5b3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','AM_ProjectTemplates','module',90,0),
('f2bf64c6-8f06-4a52-b24a-4e188726c3f2','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOR_Reports','module',89,0),
('f3e7fd4c-4ece-4de2-9df7-c18e5cea78b5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','TemplateSectionLine','module',90,0),
('f4a7a2fc-acc5-47a2-94c8-8a9a2e5f7750','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','AsyncTaskItems','module',90,0),
('f4b7371b-6cf0-49ca-ae21-005a76a40341','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','jjwg_Address_Cache','module',90,0),
('f5308e6d-b67f-4333-8552-324eacd2042d','2026-05-26 19:51:57','2026-05-26 19:51:57','1','1','list','caml_vehiculos','module',90,0),
('f5331f2b-35dc-49d5-b6f9-09d89c46a3ee','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','ExternalOAuthConnection','module',90,0),
('f5afcd8f-0bc8-4af1-a3ab-c51b394174cc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','SurveyQuestionOptions','module',89,0),
('f61bb70a-e4cc-43e7-b2cf-4a0b16943644','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','jjwg_Address_Cache','module',90,0),
('f67028f4-fb9a-450d-b989-1aa10d686598','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','list','Project','module',90,0),
('f6e6f57c-ea10-45fb-9c49-7ad979752bdd','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOR_Scheduled_Reports','module',89,0),
('f8074d67-2627-477f-a903-5a7d82f87cc3','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','InboundEmail','module',90,0),
('f80b3f78-bb1a-48c9-a10c-6571eed2e14a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','EmailTemplates','module',90,0),
('f8415ec2-5c47-4fd5-84fb-fde1126a53f7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Cases','module',90,0),
('f8ce2955-7ea1-4ed9-ab22-ff43adbc4e24','2026-06-03 22:52:20','2026-06-03 22:52:20','1','1','access','caml_pagos','module',89,0),
('fa22f1a1-99c8-4172-84ee-63f646764e78','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','Opportunities','module',90,0),
('fa6d55c0-f8d9-4e16-9d8d-bb4196d08a0f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','SurveyResponses','module',90,0),
('fcb32fc4-a638-4116-b224-350f029bd6e5','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','view','Processes','module',90,0),
('fed3fa8d-1e7b-4e41-8e80-54b0f2691acc','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','EmailMarketing','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES
('bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2026-05-27 21:48:45','2026-05-27 21:48:45','1','1','Residente','Rol de residente',0);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
INSERT INTO `acl_roles_actions` VALUES
('0060442c-3de5-43d0-af93-cea873b6274d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eec1eaff-2188-4ff0-be90-4411818c04ee',0,'2026-05-27 22:13:54',0),
('00d6aa82-2358-4b67-b43c-2dd0d4b40645','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','11c029e4-9220-42b4-8ee3-2bee878ea470',0,'2026-05-27 22:13:54',0),
('01eae5a0-90a7-4abd-9551-dbf538ab90cb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec46f441-d584-404f-983e-8679764be5a7',0,'2026-05-27 22:13:54',0),
('031a5445-5134-4646-8c82-6fc23d3065af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','165f700b-b1d5-4177-8006-a0352a7bfa8a',0,'2026-05-27 22:13:54',0),
('0338eccc-d9ee-48a3-9974-1332f90b40cf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','708c56d4-7f1b-4bc4-b94f-77a16307053e',0,'2026-05-27 22:13:54',0),
('03fac7e4-8fa3-420c-922a-0f1bb403eddf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f94fe2a-ebb3-40cf-9f9a-46eb3844360a',0,'2026-05-27 22:13:54',0),
('046f2705-0524-445c-b8b2-459f7ef55426','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d3b6480a-58ea-446f-8fee-c51a2b295938',0,'2026-05-27 22:13:54',0),
('050deaee-23a1-4d82-ab32-97c7b9ec1dc6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2a208419-c5fc-494f-9f6a-724f96432a07',0,'2026-05-27 22:13:54',0),
('062a6ea5-b90d-4edd-bbc3-0d04226af25f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c3fd0f76-b547-4dfe-87d8-8c8fbba805a6',0,'2026-05-27 22:13:54',0),
('0651fe45-7074-43d0-a34a-1361ce45a66d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aee46515-030b-4370-8168-7816de8643a7',0,'2026-05-27 22:13:54',0),
('065c097d-9eb0-4ddd-86d9-da0508782003','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','896d287c-8082-4972-a9a4-d71b9b77cb35',0,'2026-05-27 22:13:54',0),
('067d5bd8-1826-4150-ad81-b7d85363e11f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','21de9c2c-3f33-49b8-950c-10dfc5a6cb23',0,'2026-05-27 22:13:54',0),
('0725c2cf-4735-4010-8c3a-d7a07b054308','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b25193aa-53d1-4c2f-9b39-1d18b5d98fda',0,'2026-05-27 22:13:54',0),
('07a6fe76-ab93-496d-84ab-30c5ffec7a5b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e4af89fa-7c33-4a58-84c6-c49fca3a654e',0,'2026-05-27 22:13:54',0),
('09d19766-f805-423c-b3bc-c91077771342','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e25000ed-693a-4ad7-aaf6-695f8bdc8a4c',0,'2026-05-27 22:13:54',0),
('0aecfa63-e5de-49eb-bd86-f362750dd7cf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05cb6ce5-3db7-4383-b94d-0addbcd4f7a8',0,'2026-05-27 22:13:54',0),
('0b980c33-20a7-48c2-9b53-9b9ff35eb66d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2f4233f5-9537-4336-99fd-c5721656ac89',0,'2026-05-27 22:13:54',0),
('0d8cd95f-e79a-4e5b-9903-dff155125709','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d925c88-3aa7-499e-bd59-1368e3ba40b3',0,'2026-05-27 22:13:54',0),
('0f9c876e-fa77-46ba-8782-691e669f12eb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','579b7eb3-9c9f-42f1-ad20-156f63b97708',0,'2026-05-27 22:13:54',0),
('10b047fc-5eb6-45d6-9d1f-22ed2512ffdd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f255943-fea3-4a67-9fdb-31540ac92e5b',0,'2026-05-27 22:13:54',0),
('1138f614-9bdb-4cc6-89ac-39a9c604e746','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','deea6af2-e078-4870-84f2-8f7e8bf8dabb',0,'2026-05-27 22:13:54',0),
('1270c96c-e44c-45ce-bd11-7ec2e9739ca4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51d42d-5dac-4589-8568-5844b3358990',0,'2026-05-27 22:13:54',0),
('13304415-0838-4b3a-91c6-4edd16f2c0fb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','50ba1dc9-ea86-48e6-9bdd-814bd4a7245d',0,'2026-05-27 22:13:54',0),
('139843ca-2800-47ec-a70d-81dd9c906fe7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b2fc11de-bff5-4433-af2e-2cd7b475e304',0,'2026-05-27 22:13:54',0),
('13c03cf9-da9d-45d5-95e9-69261dbedf9a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','290d15ec-1203-4362-8342-991d3502241c',0,'2026-05-27 22:13:54',0),
('149c7115-b0bd-4371-bbab-b1e9c03bf166','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0f5acf3-f0a1-4f35-ba68-e28bc5b1a837',-98,'2026-05-27 22:13:54',0),
('1510c049-a012-4ed7-820b-6a4b4619a01d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc3dc5a-37e0-43a0-9ae6-c39bd0fd0855',0,'2026-05-27 22:13:54',0),
('16444734-54be-4fe5-837c-05c2201157b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','79841b2c-9fa2-4e02-9c74-8ea5433cc668',0,'2026-05-27 22:13:54',0),
('167ea488-8559-479a-9b34-c103ac358d19','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d4d12005-24a4-4482-a56e-ce12016ddc6b',0,'2026-05-27 22:13:54',0),
('16c0b015-82bb-44eb-8310-8484f7b5f4ff','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','79000ca2-18a7-449c-964d-4d33d030e8ab',0,'2026-05-27 22:13:54',0),
('1711d469-bcd3-431c-b791-7aeb61525388','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','39eb9f0c-5c16-4e81-bb53-cbd42766ae95',0,'2026-05-27 22:13:54',0),
('18dbd6ee-3d1d-4403-a3f3-12c6a1a26537','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a4879cf8-15de-444b-be3e-37b9e951cefe',0,'2026-05-27 22:13:54',0),
('190359c2-49d2-4792-8255-ae92387fcb39','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d453b4cf-e9df-4fd3-88a9-ddb6386362ec',0,'2026-05-27 22:13:54',0),
('190fed26-0628-4bbf-ac24-2c50fdb4f440','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','84312d06-a0c2-4bd6-b6b7-509c1a7bd9dd',-98,'2026-05-27 22:13:54',0),
('1ae814ce-8739-4dec-94d9-2fcc20481e6d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','968581ba-05aa-47c4-941f-73902cfeb08b',0,'2026-05-27 22:13:54',0),
('1da51728-36a5-4913-80f7-be53fbdffa65','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','942c6ca1-1466-486d-8777-77593489da34',0,'2026-05-27 22:13:54',0),
('1e035db0-df8a-4e00-bd9f-881a45c2075f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c9f2b3e-6501-45e0-8fdb-c6bd1c4a9cad',0,'2026-05-27 22:13:54',0),
('1ef928d1-d778-41e8-a347-91474fc9e996','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a29ab5c8-0e98-4578-813e-1d95e24b53ad',0,'2026-05-27 22:13:54',0),
('1fc26b90-3b01-4535-8bcb-fdb4d9e064a8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ec52466-6af3-4123-b3fd-cb8d27b01283',-98,'2026-05-27 22:13:54',0),
('1fcfb0c2-8ee5-4444-b50f-6f29f0087e91','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e274471d-6b57-4406-b64d-2451c92577cb',0,'2026-05-27 22:13:54',0),
('20f978e9-4714-4bf6-b37a-4dc85eeae38a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a5ed46e1-8e17-4459-a370-0dffaf05e0e3',0,'2026-05-27 22:13:54',0),
('214ff88d-02af-42c1-ade1-e9aed289b8cc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','952dd735-a0af-48f8-905b-5372e60b440c',0,'2026-05-27 22:13:54',0),
('22709013-2818-4b51-9542-345b1f9a7c63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e65e7eea-858a-4afd-930a-1030b0f5b777',-98,'2026-05-27 22:13:54',0),
('22797398-319e-4ffb-8ac6-c26dbff76202','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2c48227a-099a-4a13-a4d8-59fc32fd15b7',0,'2026-05-27 22:13:54',0),
('24b0c27b-13b3-4ddc-b6e5-6cb30570a375','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','920ceb2d-42d4-4b20-92d5-1e6402d684fc',-98,'2026-05-27 22:13:54',0),
('252eac8f-94b3-415b-96d0-29c4955a5bba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bf065364-58bd-4b5e-8995-4bafb4cb0b17',0,'2026-05-27 22:13:54',0),
('258eb804-5728-404e-81ce-6f3886577e9d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','50826140-883f-4f1e-958d-611a54babdad',0,'2026-05-27 22:13:54',0),
('25ff033e-5b2f-4831-ab03-8cd8d09351c9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6af78ab9-6649-4e8d-b410-9545b6e80707',0,'2026-05-27 22:13:54',0),
('266a3d8e-740a-4c57-b032-3c1d8a12bb95','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01d81975-0373-4eff-b820-f8ed1b81107c',0,'2026-05-27 22:13:54',0),
('272b1520-2a05-4215-9bc0-cfe49a091399','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f4a7a2fc-acc5-47a2-94c8-8a9a2e5f7750',0,'2026-05-27 22:13:54',0),
('273c8414-38ab-4de1-bba4-6ae88706f07f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d0af477-a23b-4185-9b0b-fbb15c343e1b',0,'2026-05-27 22:13:54',0),
('277fe01c-41bc-4d29-900f-5797b59d25ff','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','641dcbdf-ac4b-41e8-9359-b42a1cd111d1',0,'2026-05-27 22:13:54',0),
('278ffe8a-6cb8-4d00-bd92-1dc4cb2c128e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fa6d55c0-f8d9-4e16-9d8d-bb4196d08a0f',0,'2026-05-27 22:13:54',0),
('28321bdb-9be7-433b-a8aa-650eabdc675c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7c506b63-4c69-4ee0-9025-c9fc817771c3',0,'2026-05-27 22:13:54',0),
('287e921d-ae76-4c77-8755-1f93098e6fa2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3d6a7a76-ddea-48f8-8abc-77848e07427f',0,'2026-05-27 22:13:54',0),
('29467d9f-4571-47b1-bf5f-c697cc9654fc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','26b0a2b2-fc7a-4fe3-a90e-d3d8e57b5b64',0,'2026-05-27 22:13:54',0),
('2a8b7a39-136f-4556-9c5d-836b2cf46ff6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3952389d-867b-4085-8a98-ac294e948589',0,'2026-05-27 22:13:54',0),
('2b68e1a4-6b7e-488e-b869-16ee3e42394e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','32cbbc12-cb60-4dc0-b52d-0e38a0f53f97',-98,'2026-05-27 22:13:54',0),
('2c600a92-78a8-40a2-95ab-35517703fc63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a802f3e4-a92d-4ebf-a264-f5ed1cf7ee70',0,'2026-05-27 22:13:54',0),
('2ca179a2-9481-475b-8dff-1d3de439855f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eef73c96-143b-4893-adcd-fe4b8a4bead4',0,'2026-05-27 22:13:54',0),
('2cad49b8-c1e7-4f15-99b0-e4f660f7c022','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9390ad8c-cf60-4539-afff-85ff11fbea19',0,'2026-05-27 22:13:54',0),
('2ce42e98-fbdd-49a6-b812-f67a7a2601ec','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfa58461-94d0-48f0-9b02-47ffcd918181',0,'2026-05-27 22:13:54',0),
('2d222269-1be4-444e-922a-2113263c513b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b427e2b-7047-4165-a224-f436de351a11',0,'2026-05-27 22:13:54',0),
('2d9ced34-1543-44c9-beaf-16eee3161409','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51342b72-d140-4a13-82f9-ccee058cff94',0,'2026-05-27 22:13:54',0),
('2db70232-745e-435e-a58f-6d43a5ea6c03','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','23a16ec0-0ff2-40b4-966c-e91fdde35ef9',0,'2026-05-27 22:13:54',0),
('2f3a0838-514b-48ad-b8c5-48ac5edd652a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c71f5e68-5d74-4dea-9c65-01dc53af6d8b',0,'2026-05-27 22:13:54',0),
('2fc11bca-2df7-4f91-8a68-784500625419','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a884ca63-b1c6-4e6c-8162-11eb4ce764ed',0,'2026-05-27 22:13:54',0),
('31be9405-12b7-49e2-a85b-dab8cb535acf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b159cf4e-3d74-4ec5-9258-c723be022fbf',-98,'2026-05-27 22:13:54',0),
('31d3c772-761c-47ee-98a3-2907d516b9b9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8cfd9b24-0cc2-487d-b5dd-a4f29f0ac55d',0,'2026-05-27 22:13:54',0),
('3295d88e-9cfb-4d40-bd0d-159e44060ae9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','321ccae3-d296-4477-8003-055f16635c1c',0,'2026-05-27 22:13:54',0),
('339bea5d-1606-409c-8563-5cf98359e080','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','364c239a-35ea-4699-8fdc-20707bd7f812',0,'2026-05-27 22:13:54',0),
('33bb2d84-522c-4263-a338-2d8b7bb6b779','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01b87a50-c085-455d-8395-800c8e9c3233',-98,'2026-05-27 22:13:54',0),
('33d7b00e-9cf6-478c-85a9-3e540e5a8f9a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','edit',-99,'2026-05-27 22:13:54',0),
('344bb470-9717-47fa-b9e9-ba1d998535b0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d4830c3-def1-41d8-a345-0b7533d565aa',0,'2026-05-27 22:13:54',0),
('34d1c3af-160b-49bb-a8a1-a2dbc098a4bd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5650aa7f-d01f-483a-a714-7457c35b2bae',0,'2026-05-27 22:13:54',0),
('3565d4b4-a8bc-4e8f-a61e-870f0db6b2f8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e80aa1ba-ca36-4435-b92e-74205b70a1a6',0,'2026-05-27 22:13:54',0),
('364405be-ca3b-4c87-ab5c-92b22a0092c6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec3c87de-48f0-4e7a-9e27-bba4ddb71e66',0,'2026-05-27 22:13:54',0),
('373f7177-1ca3-4ddd-937b-4658b5513648','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','36657997-c1f1-4d3f-80a1-ce363e160f9e',0,'2026-05-27 22:13:54',0),
('3749b858-32b4-4313-8ea5-795ac5d0cfc8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5afcd8f-0bc8-4af1-a3ab-c51b394174cc',-98,'2026-05-27 22:13:54',0),
('37d50c56-7764-4fba-8a1c-80180919d660','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d008d9d-02cd-4c55-a642-2c495d35aadb',0,'2026-05-27 22:13:54',0),
('383ad3ad-3607-444e-b785-ad41572827d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4f0091ce-9b8c-4561-a3af-0c61b261cd54',0,'2026-05-27 22:13:54',0),
('38d20d07-24d3-4349-8d86-cf4cfbacbd58','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','14f6c71c-aaf3-4882-9c17-3deeb0b7a72b',0,'2026-05-27 22:13:54',0),
('39087c28-5e71-4cd3-b0ac-c0ea7bb0ad0b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a7e3cf57-2be7-45b2-a712-91485f12404f',0,'2026-05-27 22:13:54',0),
('393ff605-6e58-404d-864e-5c07e2e70eff','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','719be780-0442-4285-aef2-28a20e81fa43',0,'2026-05-27 22:13:54',0),
('395ae990-2ded-4ed8-9606-5979a1cd6d42','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','518fee88-565a-4813-946f-44e5c4989bd8',0,'2026-05-27 22:13:54',0),
('3a810e23-78c1-4611-a9cb-63dd0d0c488f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d7268c03-cd0a-4fab-9b21-24313d26917f',0,'2026-05-27 22:13:54',0),
('3abd4fc6-4378-4cd6-a128-5d9990aa15e1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','836115c9-23cd-4365-bbcb-6bc8a94453ac',0,'2026-05-27 22:13:54',0),
('3aeece1e-1194-4399-a9b8-e5e6793790e9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0423a8af-0ec6-441b-8149-9046c81e8ce7',0,'2026-05-27 22:13:54',0),
('3b25e4c4-bb57-43cb-9f94-74fba2b74d17','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cd363563-01da-4411-93cb-213e3b86a4dd',0,'2026-05-27 22:13:54',0),
('3bbf6d1d-9bae-4009-88a5-30d35758ed4c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5c6ae45e-f52e-4384-af56-ce026d499c02',0,'2026-05-27 22:13:54',0),
('3c318b08-8016-4a24-ad33-a9906d2a9762','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ee19dece-e828-47e9-b915-e2227f37e5bf',0,'2026-05-27 22:13:54',0),
('3d11430d-f825-45a3-8f64-6272ec5b2813','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aba576b5-7019-4033-8ee2-c1f9feedfc46',0,'2026-05-27 22:13:54',0),
('3d552b10-0587-4817-8e62-c77565d4de72','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9393127c-7f5e-44d9-b046-3af9a0c686b8',-98,'2026-05-27 22:13:54',0),
('3fa96f86-ee07-49fb-abe3-51613f2298f3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3688821f-3bab-4ecd-b481-62d1132a19fe',0,'2026-05-27 22:13:54',0),
('3fa9e64c-0f2f-4358-9793-49cdd1a7943c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4eec6351-14c2-423c-ab94-efed1866de7a',0,'2026-05-27 22:13:54',0),
('3faf62b4-de6a-41ad-815d-d70fc733b8ef','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d1a70c7d-9707-43ce-8628-4789ebeb73a3',0,'2026-05-27 22:13:54',0),
('40366a0c-47b9-4291-bb40-815ff3c4d3a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','993d6927-57ac-46bf-9384-3efe92209dd4',0,'2026-05-27 22:13:54',0),
('415220c6-825f-4639-a9e4-6ee5416fca51','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58a0034d-6f96-43fc-8a71-26bb4c7deaab',0,'2026-05-27 22:13:54',0),
('42cc8628-65e0-42c8-93a7-933e792326bd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53ca9b0b-c9f2-435c-b806-eda421e9323b',0,'2026-05-27 22:13:54',0),
('431a2beb-d9f9-45ac-a51b-4721bf46e98c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2847ca95-ebb9-4ae5-8e45-6b40bbb1431d',0,'2026-05-27 22:13:54',0),
('431c2a38-ba19-47d5-949f-9f9165fccd36','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59aca587-7123-444b-adc5-beda3e7340b2',0,'2026-05-27 22:13:54',0),
('4326efda-68b5-40d2-af1f-4aa1c8830e7d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2cb5bb25-ae18-48ae-9852-f883265b3dfe',0,'2026-05-27 22:13:54',0),
('435030bc-644a-4bef-b6b0-e60151456257','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d2427e1-51c0-4027-9b50-5fb3df62a6bf',0,'2026-05-27 22:13:54',0),
('436f86e2-d225-4cd7-b8fb-c2993fc9ee60','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f4b7371b-6cf0-49ca-ae21-005a76a40341',0,'2026-05-27 22:13:54',0),
('43d226ee-9bc2-4e9f-a465-8c6881e7c9fe','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8f7601b5-4043-4376-be78-8ec5d8d1fd39',0,'2026-05-27 22:13:54',0),
('452d9c18-5084-4581-abdb-7f54acfb4022','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4136fb29-e03a-4d00-8daa-c0f679f707c2',0,'2026-05-27 22:13:54',0),
('45aa4852-2960-4798-b2bf-9164ca17449d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2876a327-7969-47cd-b513-7b58f4c9fa4c',0,'2026-05-27 22:13:54',0),
('45c8d2df-121d-4d76-90b7-4e2f0c978c52','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1dc138ad-7195-40e0-8550-ad465889bc88',0,'2026-05-27 22:13:54',0),
('45d574a2-6573-4863-b78e-18a61000b0d9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1dd35be6-87c5-4c91-beb6-6f5225d2a637',0,'2026-05-27 22:13:54',0),
('465abfc9-632c-4bb2-8930-f2d5299658a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','79f909df-b836-4f96-af90-36abccc50b6b',0,'2026-05-27 22:13:54',0),
('46d1eeff-60c3-49ec-8467-c0d5c47038eb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','82ed8f88-cb07-48dd-ba03-472af219e642',0,'2026-05-27 22:13:54',0),
('47657a18-3c15-4593-9b72-4cc5d4432735','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ffc96b6-4eaf-440a-ae13-483c0254c80f',0,'2026-05-27 22:13:54',0),
('47b5a402-a9de-451e-b434-8c9ee34175af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8146cae1-b993-481d-a3b3-53938f9e4670',0,'2026-05-27 22:13:54',0),
('485f6d66-88a2-4dae-bdde-381edb666d85','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','81578ec5-eda2-4755-a095-a7fe44c6daf1',-98,'2026-05-27 22:13:54',0),
('49286381-6f4f-4119-b9c7-72f9b1083bf9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70499397-ab94-4895-ba4d-b091ecff36f9',0,'2026-05-27 22:13:54',0),
('49335817-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-05-27 22:13:54',0),
('49336616-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-05-27 22:13:54',0),
('4933692a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-05-27 22:13:54',0),
('49336af0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-05-27 22:13:54',0),
('49336d8c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-05-27 22:13:54',0),
('493370f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-05-27 22:13:54',0),
('493373d6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-05-27 22:13:54',0),
('49337516-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-05-27 22:13:54',0),
('4933763c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-05-27 22:13:54',0),
('49337749-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-05-27 22:13:54',0),
('493379eb-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-05-27 22:13:54',0),
('49337cec-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-05-27 22:13:54',0),
('49337e62-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-05-27 22:13:54',0),
('49337f7d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-05-27 22:13:54',0),
('49338078-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-05-27 22:13:54',0),
('49338180-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-05-27 22:13:54',0),
('49338532-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',-99,'2026-05-27 22:13:54',0),
('49338691-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-05-27 22:13:54',0),
('493387da-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-05-27 22:13:54',0),
('493388cf-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-05-27 22:13:54',0),
('493389c0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-05-27 22:13:54',0),
('49338c04-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-05-27 22:13:54',0),
('49338e0f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-05-27 22:13:54',0),
('49338f72-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-05-27 22:13:54',0),
('493390d6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-05-27 22:13:54',0),
('493391d9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-05-27 22:13:54',0),
('4933940b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-05-27 22:13:54',0),
('4933956b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0896724a-9802-42fe-9e2d-83b3443a49a6',-99,'2026-05-27 22:13:54',0),
('493397c2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51e0ee91-0d9b-41b8-b520-e9e00edac2d7',-99,'2026-05-27 22:13:54',0),
('49339971-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-05-27 22:13:54',0),
('49339a84-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-05-27 22:13:54',0),
('49339b76-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-05-27 22:13:54',0),
('49339de0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','282af2b7-a2aa-4825-8245-7b18899ce914',-99,'2026-05-27 22:13:54',0),
('49339f26-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','559c2a04-8dc9-44e8-b0fd-2daa9aabf60a',-99,'2026-05-27 22:13:54',0),
('4933a067-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-05-27 22:13:54',0),
('4933a179-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-05-27 22:13:54',0),
('4933a3d0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-05-27 22:13:54',0),
('4933a52a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0683561-72f9-4511-b18c-ca192656121c',-99,'2026-05-27 22:13:54',0),
('4933a6c0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59917b65-095f-40c0-acc9-0bbce54ba158',-99,'2026-05-27 22:13:54',0),
('4933a831-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-05-27 22:13:54',0),
('4933a946-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-05-27 22:13:54',0),
('4933acb6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-05-27 22:13:54',0),
('4933ae26-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','40b67a77-7f37-4c83-a662-ebfda4c1a7aa',-99,'2026-05-27 22:13:54',0),
('4933b02f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5cc64691-03b0-437e-a36a-c70f772eac6a',-99,'2026-05-27 22:13:54',0),
('4933b18a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-05-27 22:13:54',0),
('4933b28a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-05-27 22:13:54',0),
('4933b509-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-05-27 22:13:54',0),
('4933caa4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-05-27 22:13:54',0),
('4933cc5c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-05-27 22:13:54',0),
('4933cda2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-05-27 22:13:54',0),
('4933ce9e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-05-27 22:13:54',0),
('4933cfae-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-05-27 22:13:54',0),
('4933d1fb-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-05-27 22:13:54',0),
('4933d32f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-05-27 22:13:54',0),
('4933d5a5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-05-27 22:13:54',0),
('4933d709-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-05-27 22:13:54',0),
('4933d8d6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-05-27 22:13:54',0),
('4933db38-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-05-27 22:13:54',0),
('4933dc5d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-05-27 22:13:54',0),
('4933dd88-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','72226a25-441f-4769-b6ca-1c711925f5bb',90,'2026-05-27 22:13:54',0),
('4933de75-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-05-27 22:13:54',0),
('4933e089-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-05-27 22:13:54',0),
('4933e20e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-05-27 22:13:54',0),
('4933e3f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-05-27 22:13:54',0),
('4933e542-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-05-27 22:13:54',0),
('4933e6d2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-05-27 22:13:54',0),
('4933ea44-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-05-27 22:13:54',0),
('4933ebaf-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-05-27 22:13:54',0),
('4933ed17-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-05-27 22:13:54',0),
('4933fb27-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-05-27 22:13:54',0),
('4933fcff-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-05-27 22:13:54',0),
('4933fe1c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-05-27 22:13:54',0),
('4933ff6f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05d237ae-da45-4d9b-a6c6-b041f7b0bfef',-99,'2026-05-27 22:13:54',0),
('4934024d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a2ec06a1-0d0e-4528-a5ba-bb53bbf66a07',90,'2026-05-27 22:13:54',0),
('49340453-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-05-27 22:13:54',0),
('493405e8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-05-27 22:13:54',0),
('49340709-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 21:59:08',0),
('4934ae01-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',90,'2026-05-27 21:59:08',0),
('4934b151-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',90,'2026-05-27 21:59:08',0),
('4934b292-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-05-27 22:13:54',0),
('4934b3c7-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-05-27 22:13:54',0),
('4934b68a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-05-27 22:13:54',0),
('4934b7cf-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e7d5960-c8c8-4d98-b823-f148960a016d',89,'2026-05-27 22:13:54',0),
('4934b990-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-05-27 22:13:54',0),
('4934bb24-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-05-27 22:13:54',0),
('4934bd01-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-05-27 22:13:54',0),
('493596aa-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-05-27 22:13:54',0),
('49359f51-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-05-27 22:13:54',0),
('4935a125-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-05-27 22:13:54',0),
('4935ac83-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-05-27 22:13:54',0),
('4935af4d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-05-27 22:13:54',0),
('4935b06b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-05-27 22:13:54',0),
('4935b143-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-05-27 22:13:54',0),
('4935b2df-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-05-27 22:13:54',0),
('4935b433-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-05-27 22:13:54',0),
('4935b51e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-05-27 22:13:54',0),
('4935b5f2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-05-27 22:13:54',0),
('4935b6c1-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-05-27 22:13:54',0),
('4935b794-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-05-27 22:13:54',0),
('4935b855-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-05-27 22:13:54',0),
('4935b91a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-05-27 22:13:54',0),
('4935b9de-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-05-27 22:13:54',0),
('4935baa5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',-99,'2026-05-27 22:13:54',0),
('4935bb6b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-05-27 22:13:54',0),
('4935bcd4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-05-27 22:13:54',0),
('4935be04-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-05-27 22:13:54',0),
('4935bee1-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-05-27 22:13:54',0),
('493681c3-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-05-27 22:13:54',0),
('4936877a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-05-27 22:13:54',0),
('493688c2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-05-27 22:13:54',0),
('49368a83-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-05-27 22:13:54',0),
('49368b84-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-05-27 22:13:54',0),
('49368df5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-05-27 22:13:54',0),
('4936905d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0896724a-9802-42fe-9e2d-83b3443a49a6',-99,'2026-05-27 22:13:54',0),
('493691d4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51e0ee91-0d9b-41b8-b520-e9e00edac2d7',-99,'2026-05-27 22:13:54',0),
('49369482-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-05-27 22:13:54',0),
('493696a5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-05-27 22:13:54',0),
('49369844-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-05-27 22:13:54',0),
('493699a3-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','282af2b7-a2aa-4825-8245-7b18899ce914',-99,'2026-05-27 22:13:54',0),
('49369ac3-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','559c2a04-8dc9-44e8-b0fd-2daa9aabf60a',-99,'2026-05-27 22:13:54',0),
('49369be4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-05-27 22:13:54',0),
('49369eae-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-05-27 22:13:54',0),
('4936a00c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-05-27 22:13:54',0),
('4936a1ed-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0683561-72f9-4511-b18c-ca192656121c',-99,'2026-05-27 22:13:54',0),
('4936a38b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59917b65-095f-40c0-acc9-0bbce54ba158',-99,'2026-05-27 22:13:54',0),
('4936a4a7-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-05-27 22:13:54',0),
('4936a78b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-05-27 22:13:54',0),
('4936a907-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-05-27 22:13:54',0),
('4936aa3b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','40b67a77-7f37-4c83-a662-ebfda4c1a7aa',-99,'2026-05-27 22:13:54',0),
('4936ab4d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5cc64691-03b0-437e-a36a-c70f772eac6a',-99,'2026-05-27 22:13:54',0),
('4936ac73-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-05-27 22:13:54',0),
('4936fe7d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-05-27 22:13:54',0),
('4937014c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-05-27 22:13:54',0),
('493702bc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-05-27 22:13:54',0),
('49370662-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-05-27 22:13:54',0),
('49370810-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-05-27 22:13:54',0),
('493709dd-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-05-27 22:13:54',0),
('49370b1a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-05-27 22:13:54',0),
('49370c2c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-05-27 22:13:54',0),
('49370ef8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-05-27 22:13:54',0),
('49371061-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-05-27 22:13:54',0),
('4937123a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-05-27 22:13:54',0),
('4937137a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-05-27 22:13:54',0),
('49371483-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-05-27 22:13:54',0),
('493716d9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-05-27 22:13:54',0),
('49371a98-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','72226a25-441f-4769-b6ca-1c711925f5bb',90,'2026-05-27 22:13:54',0),
('49371c2f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-05-27 22:13:54',0),
('49371d43-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-05-27 22:13:54',0),
('49371e55-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-05-27 22:13:54',0),
('49371f62-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-05-27 22:13:54',0),
('493721ec-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-05-27 22:13:54',0),
('4937235a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-05-27 22:13:54',0),
('4937247e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-05-27 22:13:54',0),
('4937258a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-05-27 22:13:54',0),
('493726e5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-05-27 22:13:54',0),
('49372983-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-05-27 22:13:54',0),
('49372b80-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-05-27 22:13:54',0),
('49372d0b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-05-27 22:13:54',0),
('49372e49-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05d237ae-da45-4d9b-a6c6-b041f7b0bfef',-99,'2026-05-27 22:13:54',0),
('49372f67-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a2ec06a1-0d0e-4528-a5ba-bb53bbf66a07',90,'2026-05-27 22:13:54',0),
('493731cc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-05-27 22:13:54',0),
('49373346-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-05-27 22:13:54',0),
('49378e0f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 21:59:08',0),
('4937939d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',90,'2026-05-27 21:59:08',0),
('49379565-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',90,'2026-05-27 21:59:08',0),
('4937968e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-05-27 22:13:54',0),
('49379887-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-05-27 22:13:54',0),
('49379a1b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-05-27 22:13:54',0),
('49379cd9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e7d5960-c8c8-4d98-b823-f148960a016d',89,'2026-05-27 22:13:54',0),
('49379e52-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-05-27 22:13:54',0),
('4938a337-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-05-27 22:13:54',0),
('4938a7cc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-05-27 22:13:54',0),
('49966d02-1a44-4292-b632-4982b989ad53','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7b2e05d8-6963-4750-be0b-5feb4be07f12',0,'2026-05-27 22:13:54',0),
('4ad695f1-e7af-438c-9afa-89ed4e2d4ae8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34840a18-6618-4a97-b04e-828739ef55f1',0,'2026-05-27 22:13:54',0),
('4bf090c5-fec7-47d7-9a1d-c419ed64a32b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','08268032-1577-430f-a191-c4fb10b813f6',0,'2026-05-27 22:13:54',0),
('4c465662-191f-420f-8139-2ddabc56d03f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a5f9f502-6339-4541-8ebb-97cc40d3d884',0,'2026-05-27 22:13:54',0),
('4c77f4f8-c04e-4613-bcbc-44c4a10f5d91','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','274260ff-e032-4731-a6b7-62a237c9f7c1',0,'2026-05-27 22:13:54',0),
('4cb548f9-e0bd-44ac-87be-6b25b09f37e3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','80b12ca7-3518-4142-b0aa-7877d831707f',0,'2026-05-27 22:13:54',0),
('4d081196-5461-4930-bb03-4b47e39787e5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','17e3ce84-6c3b-4635-b75b-7ea88a3339bb',0,'2026-05-27 22:13:54',0),
('4d53cea1-99bb-4c34-8ad6-9362c3aa36b8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d341cfea-8814-4edf-8db3-f19f95e239f3',0,'2026-05-27 22:13:54',0),
('4d7de26a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-05-27 22:13:54',0),
('4d7e48b6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-05-27 22:13:54',0),
('4d7e4cea-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-05-27 22:13:54',0),
('4d7e4e2e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-05-27 22:13:54',0),
('4d7e4f53-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-05-27 22:13:54',0),
('4d7e5059-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-05-27 22:13:54',0),
('4d7e5144-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-05-27 22:13:54',0),
('4d7e523b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-05-27 22:13:54',0),
('4d7e54f0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-05-27 22:13:54',0),
('4d7e573a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-05-27 22:13:54',0),
('4d7e5851-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-05-27 22:13:54',0),
('4d7e5940-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-05-27 22:13:54',0),
('4d7e5a26-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-05-27 22:13:54',0),
('4d7e5b0b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-05-27 22:13:54',0),
('4d7e5c03-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-05-27 22:13:54',0),
('4d7e5cfc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-05-27 22:13:54',0),
('4d7e5de5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',-99,'2026-05-27 22:13:54',0),
('4d7e5ec5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-05-27 22:13:54',0),
('4d7e5fa9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-05-27 22:13:54',0),
('4d7e6148-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-05-27 22:13:54',0),
('4d7e629b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-05-27 22:13:54',0),
('4d7e639c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-05-27 22:13:54',0),
('4d7e648a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-05-27 22:13:54',0),
('4d7e656a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-05-27 22:13:54',0),
('4d7e6656-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-05-27 22:13:54',0),
('4d7e6739-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-05-27 22:13:54',0),
('4d7e681a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-05-27 22:13:54',0),
('4d7e68f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0896724a-9802-42fe-9e2d-83b3443a49a6',-99,'2026-05-27 22:13:54',0),
('4d7e6b74-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51e0ee91-0d9b-41b8-b520-e9e00edac2d7',-99,'2026-05-27 22:13:54',0),
('4d7e6ca2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-05-27 22:13:54',0),
('4d7e6e83-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-05-27 22:13:54',0),
('4d7e7014-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-05-27 22:13:54',0),
('4d7e7125-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','282af2b7-a2aa-4825-8245-7b18899ce914',-99,'2026-05-27 22:13:54',0),
('4d7e723c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','559c2a04-8dc9-44e8-b0fd-2daa9aabf60a',-99,'2026-05-27 22:13:54',0),
('4d7e7336-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-05-27 22:13:54',0),
('4d7e741e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-05-27 22:13:54',0),
('4d7e750c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-05-27 22:13:54',0),
('4d7e75f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0683561-72f9-4511-b18c-ca192656121c',-99,'2026-05-27 22:13:54',0),
('4d7e76df-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59917b65-095f-40c0-acc9-0bbce54ba158',-99,'2026-05-27 22:13:54',0),
('4d7e77bc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-05-27 22:13:54',0),
('4d7e78b5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-05-27 22:13:54',0),
('4d7e7a62-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-05-27 22:13:54',0),
('4d7e7bce-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','40b67a77-7f37-4c83-a662-ebfda4c1a7aa',-99,'2026-05-27 22:13:54',0),
('4d7e7cd0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5cc64691-03b0-437e-a36a-c70f772eac6a',-99,'2026-05-27 22:13:54',0),
('4d7e80de-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-05-27 22:13:54',0),
('4d7e83b5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-05-27 22:13:54',0),
('4d7e84e0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-05-27 22:13:54',0),
('4d7e85e2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-05-27 22:13:54',0),
('4d7e86bd-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-05-27 22:13:54',0),
('4d7e879e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-05-27 22:13:54',0),
('4d7e887c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-05-27 22:13:54',0),
('4d7e895e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-05-27 22:13:54',0),
('4d7e8b7e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-05-27 22:13:54',0),
('4d7e8ce1-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-05-27 22:13:54',0),
('4d7e8dd6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-05-27 22:13:54',0),
('4d7e8eb8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-05-27 22:13:54',0),
('4d7e8f9b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-05-27 22:13:54',0),
('4d7e9079-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-05-27 22:13:54',0),
('4d7e9152-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-05-27 22:13:54',0),
('4d7e9227-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','72226a25-441f-4769-b6ca-1c711925f5bb',90,'2026-05-27 22:13:54',0),
('4d7e92f7-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-05-27 22:13:54',0),
('4d7e93ce-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-05-27 22:13:54',0),
('4d7ee946-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-05-27 22:13:54',0),
('4d7eebff-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-05-27 22:13:54',0),
('4d7eedc6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-05-27 22:13:54',0),
('4d7eef4d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-05-27 22:13:54',0),
('4d7ef067-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-05-27 22:13:54',0),
('4d7ef152-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-05-27 22:13:54',0),
('4d7ef282-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-05-27 22:13:54',0),
('4d7ef37e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-05-27 22:13:54',0),
('4d7ef45a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-05-27 22:13:54',0),
('4d7ef54d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-05-27 22:13:54',0),
('4d7ef664-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05d237ae-da45-4d9b-a6c6-b041f7b0bfef',-99,'2026-05-27 22:13:54',0),
('4d7ef74a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a2ec06a1-0d0e-4528-a5ba-bb53bbf66a07',90,'2026-05-27 22:13:54',0),
('4d7ef940-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-05-27 22:13:54',0),
('4d7f3cb6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-05-27 22:13:54',0),
('4d7f4035-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 21:59:15',0),
('4d7f4252-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',90,'2026-05-27 21:59:15',0),
('4d7f43ad-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',90,'2026-05-27 21:59:15',0),
('4d7f44b2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-05-27 22:13:54',0),
('4d7f45a8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-05-27 22:13:54',0),
('4d7f4699-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-05-27 22:13:54',0),
('4d7f477a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e7d5960-c8c8-4d98-b823-f148960a016d',89,'2026-05-27 22:13:54',0),
('4d7f4864-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-05-27 22:13:54',0),
('4d7f494e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-05-27 22:13:54',0),
('4d7f4af8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-05-27 22:13:54',0),
('4e58f3ae-a454-4ae7-a73a-5fe3e966476d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0be188c5-95c4-447a-89fe-1e3e2180953e',0,'2026-05-27 22:13:54',0),
('4e5f411e-655d-4660-a611-f30c107184c9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d72798df-8d98-41db-8201-798b30cb3779',0,'2026-05-27 22:13:54',0),
('4f1c0e27-37b9-448a-9b6c-97b9796cc8bf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d67890cb-de8b-4f68-8324-c0df8c12456d',0,'2026-05-27 22:13:54',0),
('4faa33e5-7330-403b-abc5-e71345fba154','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','24255da7-6c8c-4040-96ac-35d28b05cf15',89,'2026-05-27 22:13:54',0),
('501caac7-e262-4db2-b6ff-e63c87ace66d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','98fc49a2-c91e-42a6-b33c-63876a36da10',0,'2026-05-27 22:13:54',0),
('50d2c76c-55fc-4d64-86b1-a043464dcac3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0778b7d6-fe0a-4cf6-87f2-849e6ced57ad',-98,'2026-05-27 22:13:54',0),
('512d536a-3873-4a1a-8696-557feeb28683','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8042034d-b38a-46d4-8b3b-d0cc4dc70541',0,'2026-05-27 22:13:54',0),
('513f2200-9e43-4216-acb7-f330078a0ead','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9f4c0431-5ae7-4b37-9903-413dc7496025',0,'2026-05-27 22:13:54',0),
('51b9cd6a-3f65-4fea-b7b4-f8cfe9044fcd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b9ad9db4-a5f0-4bab-aeb0-1942c9b1fffa',-98,'2026-05-27 22:13:54',0),
('5315c6a1-4ab8-4141-ae31-b16c7bfa3551','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e6cdcbfb-ae29-490a-bd66-e0f4dffed2ef',0,'2026-05-27 22:13:54',0),
('53899c75-f20a-4771-9ff3-cf315db593f1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','87b0e7c5-8e40-4a31-9b6a-661d54c42fc7',-98,'2026-05-27 22:13:54',0),
('54c3734b-85c9-4bb0-a3d9-af508123265a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8d9bed76-a79f-4906-8d1d-bb4c4061a87c',0,'2026-05-27 22:13:54',0),
('54da99c6-7407-47e8-bb72-0944c68dca56','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9b372750-a546-4b0a-8910-562663456f9a',-98,'2026-05-27 22:13:54',0),
('5526c0d3-5ec8-49d7-a747-0326d1074fdd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7713c9e0-dcc4-4dbc-899a-d45578e75d55',0,'2026-05-27 22:13:54',0),
('553abd8a-8502-489b-8e96-e642594eb0d5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c4f3fe42-75cc-4080-97ea-f1325c8b4ffe',0,'2026-05-27 22:13:54',0),
('5590669c-5a8e-4e91-95de-a5eb2bc67521','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a40be78-7bb4-4830-ade3-22f7ca5e5b81',0,'2026-05-27 22:13:54',0),
('5598ad07-d8ff-47a9-8841-ae408604d7d0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','16890f64-5f6b-4095-a3ce-491bb15e875c',0,'2026-05-27 22:13:54',0),
('55ef4211-98af-4dc6-a8c6-9e56062747d3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec8f4d09-fc8c-4d5b-9d09-57504b7097ea',0,'2026-05-27 22:13:54',0),
('5606f9b9-fb90-4450-bceb-ec2b3b5ef703','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b715d2b-a406-43f7-9b44-23054194fc0f',0,'2026-05-27 22:13:54',0),
('56224454-1d2d-43dc-8e5c-123ec45b248b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','747beeb3-d28f-46cd-aa7f-2fd08a23e0d4',0,'2026-05-27 22:13:54',0),
('56b76334-d37f-486a-bffb-38e26cc1aa54','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4ba089f6-65ca-4a5f-b56a-5a1bd756cb0d',0,'2026-05-27 22:13:54',0),
('56e850dc-077d-4f15-972e-ca9a6f2e2a5a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df65321b-1fa3-423b-a0a1-3ce987651621',0,'2026-05-27 22:13:54',0),
('57394e0a-a271-49a2-b7c0-aeed3b5b50c3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0bc0a831-9d42-4567-8b68-64710683ef02',0,'2026-05-27 22:13:54',0),
('5782ec5b-177c-4a4a-a54d-ca4fcb61201c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','908e8c34-d229-4a02-9e33-cdf51b633a10',0,'2026-05-27 22:13:54',0),
('57afa9ca-803a-4827-b565-b69d7740f83e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f80b3f78-bb1a-48c9-a10c-6571eed2e14a',0,'2026-05-27 22:13:54',0),
('589f7e55-45fe-4c0f-81cb-64dc9c0336d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d467164c-8170-47c4-a892-43c8b6ded423',0,'2026-05-27 22:13:54',0),
('58afd69b-30c7-465f-8801-62b56ea93c79','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','41374efd-ac22-4fdc-843b-86d538142b62',0,'2026-05-27 22:13:54',0),
('58c86c22-ae06-4e1a-93f8-a07a646aaa78','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b2578a6-3e8a-42f9-8eac-238d0808d94a',0,'2026-05-27 22:13:54',0),
('58cf436b-fd60-4875-a97a-7e6f161bc8f3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','63868b23-ccbc-4dbe-b484-e027e738d4f0',0,'2026-05-27 22:13:54',0),
('5a4397ae-fe7b-4ae6-8e99-7bf79edc1e5f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea5833f8-50a1-4f65-a14b-40a18bb52bd4',0,'2026-05-27 22:13:54',0),
('5a64c2f1-3735-4078-a487-08fd34fded18','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9cac006a-5623-410d-a92b-b4a214bcb8f4',0,'2026-05-27 22:13:54',0),
('5a7133ba-5f4d-44bc-b064-8d484242896a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','365a92ae-d679-445c-8d21-4dcc469cfef0',0,'2026-05-27 22:13:54',0),
('5ac68855-1e48-4112-9074-4a2d3c6e5c48','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d29564c2-07a2-439a-974b-93aaceb38d1b',0,'2026-05-27 22:13:54',0),
('5b266741-926e-45c5-84b9-d8b60782150e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2aa77e66-28f1-4d1a-b7fd-6a2d5dd2ce3c',0,'2026-05-27 22:13:54',0),
('5b68de09-82e9-4f9a-ad0f-a0448bfd5a30','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6b07dae0-1b1a-4c56-a913-162b0d20df7e',0,'2026-05-27 22:13:54',0),
('5c6e07d1-d3f9-4a9f-97d9-fc97ab428f02','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c6e4ac3d-8e95-43b6-ac15-97350c759e57',0,'2026-05-27 22:13:54',0),
('5c74f305-00bf-4dfa-9318-de2d1efd70df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a17cf1f-5861-45bd-a646-563ddf2ad69b',0,'2026-05-27 22:13:54',0),
('5d74500e-1bba-4f8c-a0bf-6df8881e2a9a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','00e08495-c736-4fd5-a439-72bda2c222ba',0,'2026-05-27 22:13:54',0),
('5e434127-6254-41b7-925d-6cb20acfcc37','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bbe23deb-c40f-4950-ae1a-a5583d1fc73f',0,'2026-05-27 22:13:54',0),
('5e54ce87-61dd-412a-ae30-3bb1f63cd3c2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afc0d140-10f0-47d7-9323-5ecbcf1ab742',0,'2026-05-27 22:13:54',0),
('5eed12cb-e8af-4f8e-bb09-cd7efe2c780c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51528a57-ad42-4578-a3b9-1e906d332761',0,'2026-05-27 22:13:54',0),
('6043d7b1-5d1c-434e-8c67-dad68b2e8f79','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bd23b326-255d-4f23-874f-64ea291c2718',0,'2026-05-27 22:13:54',0),
('606447f6-c4c1-4b1d-9acf-7ce9cf189480','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5483c82f-db64-4093-9609-51be18dc91c8',0,'2026-05-27 22:13:54',0),
('607109f8-84e3-4675-a739-dc7726ad1f36','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c2326652-2664-43e5-9617-52a2cb927a72',0,'2026-05-27 22:13:54',0),
('60c0ee6d-b16b-4b88-be0f-8ad9d0f286df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7edf383-8b88-4418-ae0b-1cefbd614873',-98,'2026-05-27 22:13:54',0),
('6191a104-d2c4-4030-bed9-28acd27fddf3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','26b08c1f-e849-4adb-a849-21a8224eab08',0,'2026-05-27 22:13:54',0),
('61bca753-93d7-4d9e-a565-b355c759017f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6fa624d6-47b2-4ffb-b853-7eb149490831',0,'2026-05-27 22:13:54',0),
('61d99e30-6a72-410d-af9f-07c939d505a8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ac37818f-8487-4b59-a25b-1f4ffd31d7ca',0,'2026-05-27 22:13:54',0),
('6267b7f3-4b4a-466e-887e-06ad2f0753c4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','50928da1-cd4e-48b3-b111-8ba48600e2ae',0,'2026-05-27 22:13:54',0),
('62c6a7ff-98a0-49c6-b07a-ae581c0c1111','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','db3cbc00-b68f-4f1b-8faf-374c5643cbdf',0,'2026-05-27 22:13:54',0),
('63c42519-73b6-41a3-a9ca-bf9b261b6ddc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bff83117-dcb5-4663-8902-700064b23dcf',0,'2026-05-27 22:13:54',0),
('64018762-1745-42f1-8b47-4961ab20abb3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','42497f82-5432-40cb-b2c2-c7d858219138',0,'2026-05-27 22:13:54',0),
('650bbcbf-847a-4038-a14f-bd4370b22b63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','36e58f6f-9fcd-479f-b050-7f20c5d1ca30',0,'2026-05-27 22:13:54',0),
('6659785f-d964-4367-bdea-59fed7f57fef','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e060136d-f93d-4b3b-a156-07572aa45d32',0,'2026-05-27 22:13:54',0),
('666d0abb-3388-4cfd-82d4-b56ab8631e6e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4369f632-ca6c-4ae9-8ca4-1459f13f61df',0,'2026-05-27 22:13:54',0),
('66a5cdba-a1df-407f-af7a-9afa8180a419','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c615ef1d-5481-4ded-a40d-62239d3deb2d',0,'2026-05-27 22:13:54',0),
('67acc1a3-6658-4336-9284-921c678c78b6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e788ea01-fa2b-49d3-bc56-6695ef1338b8',0,'2026-05-27 22:13:54',0),
('68a78109-ee6d-4ea6-aeff-d5c3c220f937','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c981bd45-fecc-4bbc-8b9d-cdb3adc2d574',0,'2026-05-27 22:13:54',0),
('696f7e31-ab69-4925-98e0-e839a512eedc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53294365-6e0a-46a6-b4a2-53dc14eb5441',0,'2026-05-27 22:13:54',0),
('69c681db-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-05-27 22:13:54',0),
('69c68efb-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-05-27 22:13:54',0),
('69c69219-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',-99,'2026-05-27 22:13:54',0),
('69c695b2-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-05-27 22:13:54',0),
('69c69a38-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-05-27 22:13:54',0),
('69c69c10-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-05-27 22:13:54',0),
('69c69da2-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-05-27 22:13:54',0),
('69c6a04f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-05-27 22:13:54',0),
('69c6a2a7-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-05-27 22:13:54',0),
('69c6a56a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-05-27 22:13:54',0),
('69c75ef4-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-05-27 22:13:54',0),
('69c7638c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-05-27 22:13:54',0),
('69c764f6-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-05-27 22:13:54',0),
('69c7663b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-05-27 22:13:54',0),
('69c7674d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-05-27 22:13:54',0),
('69c76a2f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-05-27 22:13:54',0),
('69c76c32-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-05-27 22:13:54',0),
('69c76da1-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-05-27 22:13:54',0),
('69c76ec3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-05-27 22:13:54',0),
('69c77078-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-05-27 22:13:54',0),
('69c77214-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-05-27 22:13:54',0),
('69c77352-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-05-27 22:13:54',0),
('69c7ae4c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-05-27 22:13:54',0),
('69c7b2f6-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-05-27 22:13:54',0),
('69c7b50e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-05-27 22:13:54',0),
('69c7b6b8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-05-27 22:13:54',0),
('69c7b918-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-05-27 22:13:54',0),
('69c7bc08-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-05-27 22:13:54',0),
('69c7bdf1-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-05-27 22:13:54',0),
('69c7bf70-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-05-27 22:13:54',0),
('69c7c10f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-05-27 22:13:54',0),
('69c7c285-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-05-27 22:13:54',0),
('69c7c39f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-05-27 22:13:54',0),
('69c7c552-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-05-27 22:13:54',0),
('69c7c77d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-05-27 22:13:54',0),
('69c7c90a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-05-27 22:13:54',0),
('69c7ca2c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-05-27 22:13:54',0),
('69c7cd04-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-05-27 22:13:54',0),
('69c7cedd-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-05-27 22:13:54',0),
('69c7d233-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-05-27 22:13:54',0),
('69c7d374-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-05-27 22:13:54',0),
('69c7d522-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-05-27 22:13:54',0),
('69c7d6b8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-05-27 22:13:54',0),
('69c83cc3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-05-27 22:13:54',0),
('69c84097-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-05-27 22:13:54',0),
('69c841fb-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-05-27 22:13:54',0),
('69c84321-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-05-27 22:13:54',0),
('69c8444c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-05-27 22:13:54',0),
('69c84565-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-05-27 22:13:54',0),
('69c8475e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-05-27 22:13:54',0),
('69c84975-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-05-27 22:13:54',0),
('69c84b77-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-05-27 22:13:54',0),
('69c84d77-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-05-27 22:13:54',0),
('69c84f58-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-05-27 22:13:54',0),
('69c897cd-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-05-27 22:13:54',0),
('69c89a7b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-05-27 22:13:54',0),
('69c89bd4-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 22:07:12',0),
('69c89dde-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',100,'2026-05-27 22:07:12',0),
('69c89fc9-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',100,'2026-05-27 22:07:12',0),
('6a473b09-c662-46ba-901c-013a11bae7af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','60dec127-702e-45f9-ad58-1187c6d4b972',0,'2026-05-27 22:13:54',0),
('6a931922-9bd2-4dfd-a877-ab442c4328b2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9338a94d-076b-4251-8521-fee6d0cf93aa',0,'2026-05-27 22:13:54',0),
('6ba9fbfb-8436-4ca4-b29f-ec3e6003d2d5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a91006c1-37c9-4c62-b6b0-2121dcab15da',0,'2026-05-27 22:13:54',0),
('6bfdd218-5a67-434a-a061-7d5743c786ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','552137c2-3535-4061-8025-ba99d97a9542',0,'2026-05-27 22:13:54',0),
('6c83ff6c-2e51-4bba-b094-0eae9f32fed6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b65a49b5-db1d-477f-abc1-48eaa08e43f7',0,'2026-05-27 22:13:54',0),
('6ca9c70e-26c5-4568-9565-f913609c9135','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca3fce63-a376-471c-a147-6205fdec43eb',0,'2026-05-27 22:13:54',0),
('6e2dcc6e-4cc0-4bb1-9d63-f0a0443abab3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70c9e918-49c6-414b-bd11-e1ab06f3d90c',0,'2026-05-27 22:13:54',0),
('6f675b00-cfe7-4666-b57b-3dc595036362','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d6ad5b95-e793-424f-b23c-f3a009af73b5',0,'2026-05-27 22:13:54',0),
('6fa06e2e-9ae6-493e-aed8-98f16ba16842','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','118a7e16-c69d-4663-a445-7393bce80329',0,'2026-05-27 22:13:54',0),
('6fae7c05-81d5-41be-9aee-afdf9660aaab','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','007703ba-25e0-4cae-b080-dba2902f4bac',0,'2026-05-27 22:13:54',0),
('700f427a-be97-4cfa-a281-631e732079d6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fcb32fc4-a638-4116-b224-350f029bd6e5',0,'2026-05-27 22:13:54',0),
('7023267a-eb0a-4eaf-b2e4-ef186111206f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc41584-5473-4554-8bcd-80200fe8e4ec',0,'2026-05-27 22:13:54',0),
('703f8aff-b549-4c5e-9e5f-5df3fb40482a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','931df4c3-cd28-4ea6-acd4-4975fdaa4f09',0,'2026-05-27 22:13:54',0),
('719d0965-c06a-4ca4-9688-22588e5f7950','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dc664be5-4cdb-416c-9feb-0ee4219e93b6',0,'2026-05-27 22:13:54',0),
('71daa214-4c4f-4250-8e01-65aa4ff4971c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4529aa63-fe75-4ba3-a93c-b8633444a611',0,'2026-05-27 22:13:54',0),
('720b64b8-164e-4f62-aa47-63ac8690f692','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec444537-a741-4a62-922d-1f67bc3dd2c3',0,'2026-05-27 22:13:54',0),
('736b0267-167f-4e7a-b6fd-38198cf32b9b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','da8c297c-8f47-472a-b15f-a0b836a1b52e',0,'2026-05-27 22:13:54',0),
('739cfa6f-ef80-4d4d-bf3c-e540be34db19','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53f01d04-7fa4-4185-9825-003d32a6ad9c',0,'2026-05-27 22:13:54',0),
('73eb536a-3724-4dc7-aae0-4ba49cd6b269','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea73f637-7bcd-4353-a06b-4a81beef5cb4',0,'2026-05-27 22:13:54',0),
('740fa7cc-dc68-43b1-a71d-b48ed1faaf63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a6c05246-5a54-4833-baa1-267650f342aa',0,'2026-05-27 22:13:54',0),
('74347a3f-31da-4524-8868-6604cafb4c47','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cb1d0f60-ac90-4e02-b6cd-5be35ec6add1',0,'2026-05-27 22:13:54',0),
('74773765-0ca1-40de-9666-fc6d0a12311d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','086b1ebb-d6fb-4796-9961-38c409e76e91',0,'2026-05-27 22:13:54',0),
('7492bd31-53fa-44b8-a277-5cd83257a1ed','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c332df7-7d9a-49c2-9538-e57317db56b8',0,'2026-05-27 22:13:54',0),
('7559c891-1b47-4cb9-8765-de2bd738c83f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','12e1fc7e-b9f7-4221-a9bc-f9dd47d374a4',0,'2026-05-27 22:13:54',0),
('77d252bf-cdc3-40dd-bcd6-f5c4f114cf4c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c00857b-a9eb-44f6-abea-006a70daeace',0,'2026-05-27 22:13:54',0),
('7867f54a-e746-4ca6-87a4-046d883fc020','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aed1d182-36b7-42e4-94a8-4ca5d73621be',0,'2026-05-27 22:13:54',0),
('78a06b44-ce3e-4a43-b03e-b53e83d3a9bf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01fc7954-ab85-4870-a340-9bed42a262d7',0,'2026-05-27 22:13:54',0),
('78a8d866-7f76-4903-a577-72c7b1171c85','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7d312fab-0066-4d14-958f-3c9a7c75669d',0,'2026-05-27 22:13:54',0),
('7914e888-3967-406d-ab47-7494421fd7aa','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dbdf621c-659d-4e47-9b63-a6dd593b7c80',0,'2026-05-27 22:13:54',0),
('79dbfd67-ff57-4ae2-90bb-e4b029b6b85a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1681f67d-506d-4bcb-bce5-4318c729b7a5',0,'2026-05-27 22:13:54',0),
('7a887634-7b7b-43d7-96f3-78caf9da3293','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e75f177f-5d2b-4938-b29a-60b1d4435e22',0,'2026-05-27 22:13:54',0),
('7a93a4a2-b099-44e8-8798-f06dc14a08f7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d506cb6b-1945-4ea2-9eb4-d003fba772d1',0,'2026-05-27 22:13:54',0),
('7ac936f3-d3e1-45ac-b03c-ff478f1b1317','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','91e57684-14f3-4938-9fd3-40526ddf48fd',0,'2026-05-27 22:13:54',0),
('7af5fa73-1b31-49aa-9116-02a4563ab1d3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b533b0a7-4bc6-4772-80dc-1f4ff2db7399',0,'2026-05-27 22:13:54',0),
('7bcdbea4-0d59-4425-a2da-82e82430d4e3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','06ab9ab0-d8e3-4935-aeca-3cef2e682833',0,'2026-05-27 22:13:54',0),
('7bd736f7-3b6d-4f7d-ba14-f65b8114f4a0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fa22f1a1-99c8-4172-84ee-63f646764e78',0,'2026-05-27 22:13:54',0),
('7cba0d80-e4eb-4029-8fd6-73630e884513','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','14643016-39cc-49a2-a844-34144ae690d8',-98,'2026-05-27 22:13:54',0),
('7d2bc417-0098-49e3-9b3d-973d3fb5a36d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b0a22311-3bae-4c4f-b224-dfe09f9ea603',0,'2026-05-27 22:13:54',0),
('7fb0b76a-065b-4d04-9306-e23fb3840b27','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1c7f12ed-1091-4546-aed1-8fbca2c97a84',0,'2026-05-27 22:13:54',0),
('7fdd1eb6-0006-44be-9868-0c9c9e564bec','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1967d361-4ed1-4566-9c82-e0bae33f55d3',0,'2026-05-27 22:13:54',0),
('7fe899b1-0795-49d3-b43a-bac97b66eac9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c66effa2-bf5c-4660-9f32-4b232200bcbe',0,'2026-05-27 22:13:54',0),
('7ff242df-559a-4bb7-b355-04250bf69c3e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cb33d551-acbc-4b54-8bba-427628d123de',0,'2026-05-27 22:13:54',0),
('804dbbab-f4eb-41a3-bbe7-bc4c9a1280fd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','43da9dc0-769b-4514-ac98-8edd54b7a62d',0,'2026-05-27 22:13:54',0),
('820ce9c2-24a7-4d2c-8f73-b6f27ac3c446','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2cfa6b2c-fd7a-4955-b2ad-a666e8d35b40',0,'2026-05-27 22:13:54',0),
('8263edf5-1ca2-4deb-98a7-419fcf30a0e4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5219d6a7-39b8-4303-9ea6-71ab1f809c09',0,'2026-05-27 22:13:54',0),
('82e31a51-1019-49af-9874-15879ef1bc89','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','751e4035-8fa8-4d65-bda8-47e6c0dd5374',0,'2026-05-27 22:13:54',0),
('8307de8c-11aa-44c1-bb1d-5ca76a5e28ce','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3601cee3-db3a-4c0e-adfb-5e7f0c82f996',0,'2026-05-27 22:13:54',0),
('83478188-439f-4cab-98c5-8484c7ee77ce','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c8e7f56e-76e9-4d7e-9fc1-307445696a79',0,'2026-05-27 22:13:54',0),
('858c3132-63c1-4199-acbc-fecda5b62304','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','03d44663-58b6-4a3a-a951-725dfcd65a24',0,'2026-05-27 22:13:54',0),
('86a0719c-f573-44d5-97ed-13745f603b13','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f2bf64c6-8f06-4a52-b24a-4e188726c3f2',-98,'2026-05-27 22:13:54',0),
('87f6d8e6-e6e0-4cb2-a94d-27b5961262f6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5c75b700-9cfe-4917-87f4-64a73af5f393',0,'2026-05-27 22:13:54',0),
('880b355e-29da-4228-b31b-75d31a314098','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b443468-faa8-403f-a1f6-0f6a84e239b5',0,'2026-05-27 22:13:54',0),
('896f738a-0a5c-42e9-8c78-1d084a2bd626','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d004670f-38cf-4e81-a9b8-e112da5c5149',-98,'2026-05-27 22:13:54',0),
('8d1b7d38-451a-41a2-a065-66e425344aaa','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53d55058-28eb-4282-92aa-90ae0ca6cb76',0,'2026-05-27 22:13:54',0),
('8d38b84a-47c9-4c69-b350-cad6ffe94bf1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9a63ac3-04c8-47ab-9b9f-497d02261fbd',0,'2026-05-27 22:13:54',0),
('8d72f293-385b-41ae-9168-71d60280ec75','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','list',80,'2026-05-27 22:13:54',0),
('8d889627-dde3-49b0-a4e5-538dcd8c8263','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1003ee50-a13b-4dd2-840f-d79706396c28',0,'2026-05-27 22:13:54',0),
('8deb2671-21a8-4f59-a404-9ad986a2c259','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7e29c0bf-65cb-4b29-92cd-b750db96e549',0,'2026-05-27 22:13:54',0),
('8e440000-2712-4436-8fc5-64f222de77d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','43986cd4-5e6a-41bb-b06e-f1b1d9f5687e',0,'2026-05-27 22:13:54',0),
('8e6e319c-33fa-41c0-ae4f-b14a4f49bf58','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34e5f8e2-1049-4b58-95c8-e736ddf37313',0,'2026-05-27 22:13:54',0),
('8ecd3bb1-7498-492a-b6c1-13757d05dc41','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','view',80,'2026-05-27 22:13:54',0),
('8f9cb040-ec82-4340-9085-c37cf8805e49','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','20803ef8-3427-4910-aab3-f1cf9e4e3e8f',0,'2026-05-27 22:13:54',0),
('8fef50cf-cc81-4f7f-8985-063e8c723a7b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','019257d1-8aeb-4cf2-a2dd-19dd6903d18a',-98,'2026-05-27 22:13:54',0),
('925b1466-99a7-4c25-bd21-51d3d603facb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e34216b-7d9d-47b6-b1d5-b5151d2b0965',0,'2026-05-27 22:13:54',0),
('92832dbf-37f2-4523-befd-c55af2532291','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1cd5cb0f-32f9-4951-aca3-ffe151e318e0',-98,'2026-05-27 22:13:54',0),
('92a9a0d4-d989-4d39-a900-193933244d54','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cb0492cf-9963-4cc4-aee5-6ecdc09970aa',0,'2026-05-27 22:13:54',0),
('941eb98d-57ca-475f-8ab0-ad365cd82248','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eb71dc46-dcc4-42e8-ae3b-6de6105da5ee',0,'2026-05-27 22:13:54',0),
('94781af1-100e-40af-8ed1-164f0bfd994c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2296f7a2-2a06-4c5c-bc82-1ba9b5a90ea6',0,'2026-05-27 22:13:54',0),
('94a645be-2883-411d-b97d-6ce2f3131c1f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ab753073-8aa9-41f3-8f6d-9c29eb25a057',-98,'2026-05-27 22:13:54',0),
('9557fbe2-320c-448c-a794-bb53ddf30767','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d5fd71b-bb52-420b-b46c-cbb46e3b4fa5',0,'2026-05-27 22:13:54',0),
('957348c3-3c42-4e0c-8076-c11dc06fb9df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b841ac9b-f49e-4930-a133-89c7eb995a89',0,'2026-05-27 22:13:54',0),
('95bf43f8-38ca-4e21-8a92-673f93fc49a2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9d705f-8376-4d6e-9062-c43b36d720e4',0,'2026-05-27 22:13:54',0),
('96f09e00-7330-4274-aa5e-7640cd063a85','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','344978cc-a553-4295-88fc-e9caeaa09b93',0,'2026-05-27 22:13:54',0),
('970ea538-2c92-4c69-9775-d1f041598760','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','739af0b9-e3eb-47e1-812e-ecc047a3c73f',0,'2026-05-27 22:13:54',0),
('9710926d-0ca9-435e-afa3-94f986b73f69','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','875f825c-d5eb-41c2-a7c9-d2c4c748d3e2',0,'2026-05-27 22:13:54',0),
('9773cce7-c698-42a4-bc48-99b553d3efc5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','54291b74-6875-4229-89b2-aef76c4dd5a8',0,'2026-05-27 22:13:54',0),
('97df95ea-bbfe-4528-a338-11b96a117f93','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','571330fd-255c-45ab-8980-658b5d294ea1',0,'2026-05-27 22:13:54',0),
('982b1fcb-59d4-41d9-9f59-554ed4bacd80','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe43274-6b48-47bc-98d6-b261663cfe52',0,'2026-05-27 22:13:54',0),
('98d7a95b-e190-4c1d-b054-10bfe07eef09','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d45e5fed-78c1-43e8-854c-5a4283ba9078',-98,'2026-05-27 22:13:54',0),
('98f4e77c-f3e1-4911-a610-65a3c65cca88','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e242a97c-d4bf-4154-9643-6002036237bc',-98,'2026-05-27 22:13:54',0),
('994a7234-004d-4a17-88b5-79cb41db648c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d575ea98-6279-44f8-b017-e1613d9ba73c',0,'2026-05-27 22:13:54',0),
('9a2f38f6-e3f5-4cc7-8efe-ad3fa6b639b1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a286f30a-c3a1-42c8-8bd3-6ca7edd1e3f7',0,'2026-05-27 22:13:54',0),
('9bc36875-a102-415a-8a38-f8774318ad76','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f29e1783-11cd-49a5-a77e-8c41725ca5b3',0,'2026-05-27 22:13:54',0),
('9cba5324-1bfa-45f0-8562-e525db1484b8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eb0fc3e6-4991-4e17-aaf3-15c80de56332',0,'2026-05-27 22:13:54',0),
('9d5f54f6-d257-4c70-b7c4-66a35fdcd75a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5484c3c5-f8b0-4488-8e9a-c9ffcce35de7',0,'2026-05-27 22:13:54',0),
('9d60aa59-d7ec-43f6-b5ad-7dc09d65e707','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ab8e7013-f8a5-4c38-ac61-ed25519ad4f4',-98,'2026-05-27 22:13:54',0),
('9d6dc23b-f59f-4b43-8453-4d5f5bda7630','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a0515e3d-56ea-4a5d-94a5-6fcf35eb9a19',0,'2026-05-27 22:13:54',0),
('9d7ae693-ccf6-4c7a-ace3-b556c4796d1f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','711cb551-b416-40fe-afad-9684c7160fb8',0,'2026-05-27 22:13:54',0),
('9d8610c5-4d7a-4860-b94e-98f2b25cc347','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ab67bcf8-e1b8-4f71-a1b3-7ff905e08017',0,'2026-05-27 22:13:54',0),
('9de8a504-f307-450b-9636-f68dc3814e0f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1d94204a-3105-4a62-9fa4-8155031cacf1',0,'2026-05-27 22:13:54',0),
('9e85ddb9-8edd-453d-a8bd-b104267af29f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8e68e44a-7549-4b5a-95fb-2724c418c14a',0,'2026-05-27 22:13:54',0),
('9e889458-e960-427d-a1c6-d618ae039ec2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5e00b64d-322f-4c17-9e16-a588a9ee7ed2',0,'2026-05-27 22:13:54',0),
('9f85cc01-b3b7-4fd0-aa1e-4b29e5ad44c8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6b814a8b-138a-4ee6-8460-bfaf1fa21f92',0,'2026-05-27 22:13:54',0),
('a094e756-12ce-40c9-9333-f7b123d4c187','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','258a9eee-9e3a-4c6f-bc24-fc2bb64d0a4f',-98,'2026-05-27 22:13:54',0),
('a0d32baa-3dcd-4ce2-b8df-516f89d22c22','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01c477a3-cdcb-4799-9026-1b284dc66f7c',0,'2026-05-27 22:13:54',0),
('a2329d20-2442-4b3e-8fbd-f9841d2b94fe','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed012953-572b-4f6b-8244-be09c52314af',0,'2026-05-27 22:13:54',0),
('a34a4a26-32bd-4aa9-b4fd-0f9d73454594','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bf65aa0d-8b07-4305-9b7d-9a08c96798ff',0,'2026-05-27 22:13:54',0),
('a396334e-d7d8-404b-9e39-0fe9ccf261f3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8ad52ce9-6d69-4768-903a-d074519dc13c',0,'2026-05-27 22:13:54',0),
('a3a166ad-2f94-453a-8605-d26f8ce2bf6d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','39fb43bd-5005-4ffc-8b69-55fe3300e608',0,'2026-05-27 22:13:54',0),
('a5fb525d-364c-47d8-98e5-25b8b3fcf8fd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6db21e1c-3e69-4c35-b50b-ec7941491141',0,'2026-05-27 22:13:54',0),
('a6b073bc-5596-4dee-adb4-8bf26fdc8bae','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','23c8df56-a046-4eaa-aa30-776ff8278101',0,'2026-05-27 22:13:54',0),
('a730156a-b8a9-4fdd-b729-bd742cd65956','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9806eda1-37e0-42af-b5c2-75eb0235df0b',0,'2026-05-27 22:13:54',0),
('a7fb074d-4293-49ae-9c80-56b5be359762','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','358089f9-89ed-4803-aa0d-fa39cd1a3014',-98,'2026-05-27 22:13:54',0),
('a87aaa89-1501-414c-b0e5-65207ba55881','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9e9664be-f74c-4c69-9251-4aae1cd93c18',0,'2026-05-27 22:13:54',0),
('a9877da7-2adb-4377-86a6-319867d564af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','227e741e-f63d-4266-b25e-b5b138076d25',0,'2026-05-27 22:13:54',0),
('aa2acba1-2ec0-4c6e-8506-52d1528acc9f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34b7e7b4-e7a5-49ca-8f1e-3d393affd5c6',0,'2026-05-27 22:13:54',0),
('aa9a2f53-dd43-4f27-84c4-908c1feaff2c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0837ad41-578a-4788-b98a-fc0325d93678',0,'2026-05-27 22:13:54',0),
('aa9d7287-2652-4367-a21d-98dd6189e67c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','33675dc1-a7fa-4e75-bf55-9f3b5a0047a9',0,'2026-05-27 22:13:54',0),
('abc8cdff-f33f-49f7-8320-b974bf31be7f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a53cb42a-772e-4bd2-9a1f-97ff17ef5bdc',0,'2026-05-27 22:13:54',0),
('acdd7781-c2a0-44cc-905a-9956eb7a0a3f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ede0dfb-087e-4c96-b7fe-6cef6050b67a',0,'2026-05-27 22:13:54',0),
('adadb004-673a-4e84-a48f-169b56e7f6fc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','20b90d35-5f3c-4689-9f27-63b92dd6b981',0,'2026-05-27 22:13:54',0),
('adcca581-007b-483e-84cc-b15f07f3a4b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1bdbc446-2c9d-40a0-af5b-3820cf34a75a',0,'2026-05-27 22:13:54',0),
('aea96699-ce9a-4a6a-80ef-329b1d91f659','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','32856843-f410-43e5-a862-026831fe0d64',0,'2026-05-27 22:13:54',0),
('af32b801-b012-4de6-b017-80debc766094','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6fcbeb87-0692-48c2-8953-231636c86bbb',0,'2026-05-27 22:13:54',0),
('af3d93e3-7134-44e1-a1da-3f3f9d43af6e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cf8f3ce0-3684-433d-9f66-2ba4bea03de8',0,'2026-05-27 22:13:54',0),
('af3e25c3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-05-27 22:13:54',0),
('af3e2b7d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-05-27 22:13:54',0),
('af3e2e7a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-05-27 22:13:54',0),
('af3e30e8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',-99,'2026-05-27 22:13:54',0),
('af3e326a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-05-27 22:13:54',0),
('af3e33b8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-05-27 22:13:54',0),
('af3e365e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-05-27 22:13:54',0),
('af3e37ee-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-05-27 22:13:54',0),
('af3e39ad-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-05-27 22:13:54',0),
('af3e3c42-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-05-27 22:13:54',0),
('af3e3e9c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-05-27 22:13:54',0),
('af3e400e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-05-27 22:13:54',0),
('af3e4118-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-05-27 22:13:54',0),
('af3e4215-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-05-27 22:13:54',0),
('af3e43e3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-05-27 22:13:54',0),
('af3e4549-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-05-27 22:13:54',0),
('af3e4658-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-05-27 22:13:54',0),
('af3e475d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-05-27 22:13:54',0),
('af3e4872-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-05-27 22:13:54',0),
('af3e4975-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-05-27 22:13:54',0),
('af3e4b31-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-05-27 22:13:54',0),
('af3e4d18-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-05-27 22:13:54',0),
('af3e4f3a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-05-27 22:13:54',0),
('af3e5202-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-05-27 22:13:54',0),
('af3e53d6-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-05-27 22:13:54',0),
('af3e5577-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-05-27 22:13:54',0),
('af3e56f0-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-05-27 22:13:54',0),
('af3e5801-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-05-27 22:13:54',0),
('af3e5a1b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-05-27 22:13:54',0),
('af3e5bf2-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-05-27 22:13:54',0),
('af3e5e44-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-05-27 22:13:54',0),
('af3e6022-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-05-27 22:13:54',0),
('af3e61a5-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-05-27 22:13:54',0),
('af3efe2a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-05-27 22:13:54',0),
('af3f02ef-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-05-27 22:13:54',0),
('af3f0587-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-05-27 22:13:54',0),
('af3f073d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-05-27 22:13:54',0),
('af3f0846-0adf-44fc-8832-e77f45251cf5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','28bb3403-e142-4b1b-9e43-292838cb987b',0,'2026-05-27 22:13:54',0),
('af3f6219-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-05-27 22:13:54',0),
('af3f65e3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-05-27 22:13:54',0),
('af3f6971-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-05-27 22:13:54',0),
('af3f6b98-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-05-27 22:13:54',0),
('af3f6cf3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-05-27 22:13:54',0),
('af3f6e06-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-05-27 22:13:54',0),
('af3f6f1a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-05-27 22:13:54',0),
('af3f7028-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-05-27 22:13:54',0),
('af3f711f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-05-27 22:13:54',0),
('af3f722b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-05-27 22:13:54',0),
('af3f732a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-05-27 22:13:54',0),
('af3f742f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-05-27 22:13:54',0),
('af3f75e5-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-05-27 22:13:54',0),
('af3f77d3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-05-27 22:13:54',0),
('af3f7955-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-05-27 22:13:54',0),
('af3f7a60-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-05-27 22:13:54',0),
('af3f7c3b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-05-27 22:13:54',0),
('af3f7d83-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-05-27 22:13:54',0),
('af3f7e96-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 22:09:09',0),
('af3f7f92-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',80,'2026-05-27 22:09:09',0),
('af3f8161-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',80,'2026-05-27 22:09:09',0),
('af668bdb-5b98-4899-937e-a8c2444905bd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0436d651-d8b2-4373-b41d-f7765b9144f3',0,'2026-05-27 22:13:54',0),
('af8c14ba-05bf-47b8-a47b-2cf167758913','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed698bd2-d12b-48f7-9afc-1818155a8148',0,'2026-05-27 22:13:54',0),
('af8c7936-8831-41dc-b113-68928afbb440','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a3d94824-0924-4292-82af-fecb9bbbfdbb',0,'2026-05-27 22:13:54',0),
('afd09e41-c4a0-40af-868b-c9123f4fbe5b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d9165be-9f00-4355-bb0e-26c73cdbd27f',0,'2026-05-27 22:13:54',0),
('afe6d7d8-f139-438f-8b67-2084f2d5bbe4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-05-27 22:13:54',0),
('b0689a9a-1fef-46df-926d-7ff4b84264f0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0e1573d2-5351-4ad9-b5eb-72ba71916c85',0,'2026-05-27 22:13:54',0),
('b1b7f685-b548-4f97-a581-5f6dc6e8c55c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f3e7fd4c-4ece-4de2-9df7-c18e5cea78b5',0,'2026-05-27 22:13:54',0),
('b2480a45-7357-45a1-b28c-c123dbb53b21','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b074b871-1e2e-475d-89a6-9b6bec77ff70',0,'2026-05-27 22:13:54',0),
('b4118bda-24b4-4bb4-8a30-a7efbb0bbc96','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b6a5128-ef4d-4ef6-9de4-b8bcf9cf577f',0,'2026-05-27 22:13:54',0),
('b59c7cdd-0802-41fb-8a9a-7bc38c7e3ab1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed9ebf2c-d4d6-45df-afb1-eba0aa609b6b',0,'2026-05-27 22:13:54',0),
('b5a7467e-442c-4d88-9341-940422006862','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','43a98856-b26d-4add-bb5c-ccd5a7eabd5c',0,'2026-05-27 22:13:54',0),
('b69d3d6f-2d1c-40e4-8424-116d77c62a19','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d707d055-5cd7-467f-851e-5d814c71f1f4',0,'2026-05-27 22:13:54',0),
('b6b3aff8-fe3f-4770-892a-3bd027b5b8b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','481be9e6-a8d2-4e9a-818e-d68033bfdbc6',0,'2026-05-27 22:13:54',0),
('b6f69ad5-2c80-49f5-8e85-1412b9c6bf9d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc64ce9-0183-47f7-9c36-755e4f2d6367',0,'2026-05-27 22:13:54',0),
('b7558171-7968-4776-b75a-c0c877ccf384','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c0e8322-7665-40a7-9224-2889fcb88873',0,'2026-05-27 22:13:54',0),
('b79c4fc4-f9e8-4034-bca6-7be43cce07c1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','91bb421a-5f30-4e3e-96c4-b8ec25f728fa',-98,'2026-05-27 22:13:54',0),
('b80d481d-ce9d-474c-8f7c-52da7f56d82e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','de3367fe-b876-4bbe-872c-f9394e056a15',0,'2026-05-27 22:13:54',0),
('b8f44a78-656b-4cef-b892-ca848b18eb96','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6dbf87e7-e63e-4cf4-a900-62811350ad92',0,'2026-05-27 22:13:54',0),
('b9348801-2828-4bc2-adee-f663d78d7d69','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','93e70a6e-c3f1-4815-918c-8b45d6ddaba2',0,'2026-05-27 22:13:54',0),
('b9d86ffc-7895-4650-b2be-737404fafe56','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f83f41a-dd6b-42bf-be43-269658e80b32',0,'2026-05-27 22:13:54',0),
('b9f2c62f-ef53-4b43-a69c-6f71c29f893b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','180a639d-8bac-44e2-a194-474bb5edb8b4',0,'2026-05-27 22:13:54',0),
('bb12fb8c-951a-4d3b-ab36-48e6cbe619cb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c9ab568d-57d9-4b60-88a6-3329e9c23503',0,'2026-05-27 22:13:54',0),
('bbb945e4-c18d-4aa0-acec-d1c83d61714e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed6024c8-3a6f-4d15-a762-ef63473037cc',0,'2026-05-27 22:13:54',0),
('bc9aa2de-70b2-4add-bfad-ab0f6e7e7899','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','620e8b6b-8e3b-43bb-92b3-9dafa1c76efb',0,'2026-05-27 22:13:54',0),
('bca0d472-443a-4ba0-80f1-6f8e2a5378c6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4ad6b479-232b-448e-8e2d-b4408f6575b0',0,'2026-05-27 22:13:54',0),
('bd0f6103-9e29-43e6-a007-8fa6cd74aef7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','import',-99,'2026-05-27 22:13:54',0),
('bd5da54e-1027-487e-89da-0b84d6a7d82f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','95193df2-06eb-47d1-9e18-90c6013a444f',0,'2026-05-27 22:13:54',0),
('bd809074-a964-427b-b278-aa63aebfc820','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3518726d-ed57-4ebe-bd89-b93b4beeb1f1',0,'2026-05-27 22:13:54',0),
('be98f1d0-55a3-4295-b693-982c8444a526','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e03c57f8-1c16-43ca-bbbd-e9e865f999d3',0,'2026-05-27 22:13:54',0),
('bea42afe-2d08-46df-91f2-8cf890b0bd6f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ad164842-7f1f-43ee-9a57-8aca03838b7b',0,'2026-05-27 22:13:54',0),
('c05006b4-9eeb-471c-9046-3019441c426c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51a52ce6-041c-4aad-96db-9fb7b4076743',0,'2026-05-27 22:13:54',0),
('c052c2fd-8143-4b70-8237-c51298cd2ae2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d7675c5-1945-41de-8af3-0c6ce10a4148',0,'2026-05-27 22:13:54',0),
('c0689315-7d1b-4f83-acc5-39154261e6bc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','751eaac8-bbdb-4f17-81a2-da1de14d215b',0,'2026-05-27 22:13:54',0),
('c0e1bc9c-4fc3-4870-8aa0-e6ae118b8c41','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bfdb58fa-372b-40f4-a2d4-1fdd17d562a6',0,'2026-05-27 22:13:54',0),
('c1b5ffb7-802c-4ebb-8a7d-c51f49d9b7ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ddc733d8-e6d3-4046-9463-382346bf5f64',0,'2026-05-27 22:13:54',0),
('c2214a83-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-05-27 22:13:54',0),
('c221a279-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-05-27 22:13:54',0),
('c221a761-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-05-27 22:13:54',0),
('c221ba3f-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e753ea71-9ed2-46d4-882d-4cdbac698a38',-99,'2026-05-27 22:13:54',0),
('c221bc78-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','26b5b6f5-9296-41c3-990e-d55f8d4f16a4',-99,'2026-05-27 22:13:54',0),
('c221bdbe-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-05-27 22:13:54',0),
('c221bef6-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-05-27 22:13:54',0),
('c221c9d6-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-05-27 22:13:54',0),
('c221cdcc-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-05-27 22:13:54',0),
('c221d0a1-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-05-27 22:13:54',0),
('c221d21d-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-05-27 22:13:54',0),
('c221d33c-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-05-27 22:13:54',0),
('c221d441-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-05-27 22:13:54',0),
('c221d56b-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-05-27 22:13:54',0),
('c221d679-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-05-27 22:13:54',0),
('c221d999-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-05-27 22:13:54',0),
('c221dbd0-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','764a43ba-0d1e-4059-8781-0137960f5416',89,'2026-05-27 22:13:54',0),
('c221dd8f-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-05-27 22:13:54',0),
('c221e130-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-05-27 22:13:54',0),
('c221e2c2-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-05-27 22:13:54',0),
('c221e3de-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',-99,'2026-05-27 22:13:54',0),
('c221e4e1-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-05-27 22:13:54',0),
('c221e5d5-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-05-27 22:13:54',0),
('c221e703-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-05-27 22:13:54',0),
('c221e802-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-05-27 22:13:54',0),
('c221e9e7-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-05-27 22:13:54',0),
('c221eb75-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-05-27 22:13:54',0),
('c221ec97-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-05-27 22:13:54',0),
('c221edbc-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-05-27 22:13:54',0),
('c221ef6c-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-05-27 22:13:54',0),
('c221f0f7-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-05-27 22:13:54',0),
('c221f24a-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-05-27 22:13:54',0),
('c2426b26-b870-4128-bde4-d02d9b722a3c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52f012c3-46ad-4b46-a684-42f011e0f4d5',0,'2026-05-27 22:13:54',0),
('c398285e-74f7-4646-90f7-2d548002b33c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89a685d4-1c63-494e-a0f8-90f06264f031',0,'2026-05-27 22:13:54',0),
('c3b9e12e-e005-4679-bc1a-73d8a447512b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31aa4f-bd00-44e0-a05b-0098e049bb70',-98,'2026-05-27 22:13:54',0),
('c4188b16-92b7-4a21-8ce4-16431ca25c09','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','export',-99,'2026-05-27 22:13:54',0),
('c47de788-3d09-4b33-82ec-5c8c935e1a6d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d196f5be-c80e-4310-8471-9a255f5d9eed',0,'2026-05-27 22:13:54',0),
('c57279c1-66e4-467a-8636-6cbc83a7d4f6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b05bc48a-3a05-4a88-b584-d82d6010bca1',0,'2026-05-27 22:13:54',0),
('c618a428-636e-4913-9124-ed74be13f51a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a1cb54e6-6df3-40ea-8612-1c34458b5753',0,'2026-05-27 22:13:54',0),
('c6644efe-b9c9-485d-ae51-aa9794ee7d95','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a11e4cd4-6de4-4d02-9f05-13056bac4001',0,'2026-05-27 22:13:54',0),
('c6e44b7e-bea3-4fea-957d-0a04f54676a2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c96ccf4-d6dd-4751-9ab6-76b2b64516dd',0,'2026-05-27 22:13:54',0),
('c750ae03-b2a2-4859-88b9-718aa3d81a44','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d54304e4-d130-49e6-adde-004ee313fbdc',0,'2026-05-27 22:13:54',0),
('c7dbdafc-bf4a-4f26-9b70-92f4b79160ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','10c9e5d7-971d-46e9-93c6-abe8a86b4c0e',0,'2026-05-27 22:13:54',0),
('c7f6e33d-fa08-4acc-a3a3-523b2dcab44d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89131fbf-c44f-47a8-a95e-e7a90164b0f0',0,'2026-05-27 22:13:54',0),
('c8ca858b-f22f-456c-86f1-1624be152c76','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7c44c252-4461-4bb1-b24c-dc4fe572c0ef',0,'2026-05-27 22:13:54',0),
('c8d9d1a1-1d85-4a06-8697-4270e05fe756','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0aa13749-2d93-43c3-933b-3928d5967bf0',0,'2026-05-27 22:13:54',0),
('ca561175-023d-428f-9b79-49c70a822db4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3392234c-6995-499e-a44e-00a37d517d76',0,'2026-05-27 22:13:54',0),
('cb445948-ffd3-4332-ae58-98395c22bf82','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f67028f4-fb9a-450d-b989-1aa10d686598',0,'2026-05-27 22:13:54',0),
('cb853dc8-1865-4745-b644-498c41e47e58','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2b6699a3-1a2d-45f7-8dbb-a1b9a1a6a3dc',0,'2026-05-27 22:13:54',0),
('cb98e524-f4e8-4655-93ec-de1cda9d6a24','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','54b995ba-89da-4c5e-abdd-c0f65c6eb3bd',0,'2026-05-27 22:13:54',0),
('ccbc575e-a465-4784-967d-510893875f37','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e63e5b9e-f777-48db-88b3-1bd6e4195bd5',0,'2026-05-27 22:13:54',0),
('cd34d160-673f-447f-8fca-4d02bc9270b8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8074d67-2627-477f-a903-5a7d82f87cc3',0,'2026-05-27 22:13:54',0),
('cd439e5d-ece4-4ae6-9eb3-d063852ac10c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a23fa4b1-3fb8-4778-ba55-2963168e7f90',0,'2026-05-27 22:13:54',0),
('ce07f8ca-c892-4c49-8ca9-06163bf41d35','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e74593a-b670-41e0-b08a-2066ca1496a8',0,'2026-05-27 22:13:54',0),
('ce150de5-87c3-4059-8a15-2302688866fb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c7e2470-38a0-4b6a-be0b-0da97536716e',0,'2026-05-27 22:13:54',0),
('ce7c50cd-c221-4018-b779-3465cae09383','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5331f2b-35dc-49d5-b6f9-09d89c46a3ee',0,'2026-05-27 22:13:54',0),
('cefc9f38-7d27-4062-b897-6fb51684905f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c2dbcd44-0103-41fc-841f-2a5f88b093f3',0,'2026-05-27 22:13:54',0),
('cf5f3c4a-259d-43bd-82c5-f5bf0c367749','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ae351d4b-0bc5-41d3-b09d-7d6b0e690cf0',0,'2026-05-27 22:13:54',0),
('cf7a82f8-55da-4c29-a90b-1a67fa016bcf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5ebc633f-1cd1-4236-a22b-54458ab66e75',0,'2026-05-27 22:13:54',0),
('cf9bae28-61ae-4e00-93e7-2068ff18699a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9307b98-0a55-4b45-aede-4c236d1ac3ac',0,'2026-05-27 22:13:54',0),
('d090bb95-0d16-4c24-a1b3-a6b4b12dfe1c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec135e94-31e9-4103-ac0e-623cf814562d',0,'2026-05-27 22:13:54',0),
('d0bd5a9a-9374-401e-bd97-4d9bc3a13f62','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eba9cc71-0ac2-4b93-9318-cb9669c9b650',0,'2026-05-27 22:13:54',0),
('d1a0b513-297d-46fa-b4e9-e55eb033d1b0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','access',89,'2026-05-27 22:13:54',0),
('d2cc4d79-41b4-4294-80ff-10e0a9b3beb9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','07998e5d-14a4-44ce-9e42-4f8910f116a7',0,'2026-05-27 22:13:54',0),
('d3131274-fdb9-48c0-824e-f07f9916252d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4ce86533-ee5d-401e-99e9-11a35d8a8f7f',0,'2026-05-27 22:13:54',0),
('d3c99d96-6c4d-4d37-a5c1-cebe789ba724','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','03678749-2b5f-48f2-a17e-19202e345814',0,'2026-05-27 22:13:54',0),
('d456819d-62c7-4290-9c8b-597ce9413277','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2675aed6-fba5-4472-bfc1-694120fe42ec',0,'2026-05-27 22:13:54',0),
('d464f97a-42c3-45e5-a2d0-33829dd9d0bf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed0f1ee5-a667-4c3b-a4e9-85a5d98cd7f8',0,'2026-05-27 22:13:54',0),
('d54e8d98-2980-4ac3-9f10-9935cb5ca60b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','625ad116-0023-400a-b317-940d52682990',0,'2026-05-27 22:13:54',0),
('d5703b6b-34de-4a23-8977-6186d72ac3b5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','80dbf0ba-7d6b-497e-820c-2a3f96225b39',0,'2026-05-27 22:13:54',0),
('d5a34790-88c4-4066-8da8-91be131ea390','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','92ff1621-0e5b-4e9c-a2f9-d618866463a2',0,'2026-05-27 22:13:54',0),
('d5b5719c-2983-4e40-96e6-74fd4d564c56','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d28ed73e-8a3b-4a5e-af2d-1be4fb56cb39',0,'2026-05-27 22:13:54',0),
('d5f25190-4e1d-478b-9d7f-9457ae42caf3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','64cf44e2-6999-4c15-bcad-1d5d0353d328',0,'2026-05-27 22:13:54',0),
('d62b5c24-69fb-490d-b302-556f6e5083ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','65b9a1f8-e472-48ed-a9e2-17f4eda82eb9',0,'2026-05-27 22:13:54',0),
('d62e38bf-329c-451d-9679-33cfc3789d02','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0e2991bf-b105-47b4-8e73-0dd110dfe32c',0,'2026-05-27 22:13:54',0),
('d6869cd0-6bd0-43da-a56a-afa0ff8fc2ef','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fed3fa8d-1e7b-4e41-8e80-54b0f2691acc',0,'2026-05-27 22:13:54',0),
('d6e5059c-b9c9-43f6-91be-67d0aedc4252','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0efa118c-6f99-4dda-bc38-5885db67c88c',0,'2026-05-27 22:13:54',0),
('d7a621de-b8f9-4fc1-bcad-d9a48326c46c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','delete',-99,'2026-05-27 22:13:54',0),
('d7bdb74b-3cbd-4029-82ee-32126a79a6ab','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2371a74b-5988-4d13-9c59-8622b23964f7',0,'2026-05-27 22:13:54',0),
('d81ca6ab-64dc-4a60-b818-e38e58aa73a3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2f2dc681-3423-4b29-ab8d-a02f48b822e8',0,'2026-05-27 22:13:54',0),
('d8c8d035-75a3-4cec-a80e-11f48c65b0e7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c65003a2-3143-4e43-8996-c4ca028ca743',0,'2026-05-27 22:13:54',0),
('d94c4022-bcd8-45e5-9e3d-e78205eece66','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bf41e9b8-8e41-4c23-a617-642383973ecb',0,'2026-05-27 22:13:54',0),
('d9c165ff-1395-4512-94a8-0d1e3ee8dcdb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c436a6f-4168-4c72-8a29-9c8cbd617b4a',0,'2026-05-27 22:13:54',0),
('dc35d629-48e2-4b7c-a4f6-30d2a44ce93a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b13945ec-bf57-45d8-834b-170c276fdcf6',0,'2026-05-27 22:13:54',0),
('dc8143a6-96aa-46ea-aea4-a6d1a9ca2400','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','44bb8ba0-0045-465a-b18e-b822734409af',0,'2026-05-27 22:13:54',0),
('dcced417-f09e-443b-b140-0298e3c25e4d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a5ec4ecb-8526-4015-9fc6-aa45cbd98655',0,'2026-05-27 22:13:54',0),
('dcf8648f-6560-4953-96df-3453fbd1cf84','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0ddb9d-38a8-4244-88be-bd249a57761f',0,'2026-05-27 22:13:54',0),
('dd424326-2c06-44f1-98d6-1508f9ac5353','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59a22dcd-ba31-4071-a6c4-c322aa8bcb4a',0,'2026-05-27 22:13:54',0),
('debdd7ab-8330-45cc-bbf9-eac11f5f816c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6a40bb0d-1147-4368-90e9-2206c652892b',0,'2026-05-27 22:13:54',0),
('deff8c40-00f3-4ce0-9622-f8e1d456f897','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bacfb789-b991-4a74-948f-8fb15d66e5e0',0,'2026-05-27 22:13:54',0),
('dfb228d2-3195-43fd-8ff8-b6bc8708d8f5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dcc8e7de-446e-45b6-9f83-34f6e636999f',0,'2026-05-27 22:13:54',0),
('dfdce3a9-27ba-430e-a7e5-e1d8419303bb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','25c86b46-ca74-462e-a197-2820e3733788',0,'2026-05-27 22:13:54',0),
('e197cb1e-d0b2-441e-b1ea-1021a77ac789','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70243d91-48f1-47a6-b4e2-bb8f30b2a1b0',0,'2026-05-27 22:13:54',0),
('e3342bb1-15bd-4c8f-b415-bbf81cbd3e96','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6f054bce-07a0-4a37-8193-928ea2d917b5',0,'2026-05-27 22:13:54',0),
('e4a28dd1-f7a2-4a43-a45f-eaaa1ddc8263','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7da0ced-0580-4d2c-bdc4-b550238a5c0c',0,'2026-05-27 22:13:54',0),
('e5846bf1-41c4-4fd9-9b2a-9b589a511a4d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','875f3849-7559-46f9-901c-ebde05b57e54',0,'2026-05-27 22:13:54',0),
('e5bdae35-0191-4135-a799-8188d51bb2ec','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5b7697e3-8f8e-4efa-8b03-acca2d5beb39',0,'2026-05-27 22:13:54',0),
('e73dfa2b-d908-4861-9199-2c3fde869001','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8138c36b-a539-43cf-9439-453017afd5b1',-98,'2026-05-27 22:13:54',0),
('e8addcf1-e299-44fc-b0e9-3904048d4c3e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a18d401e-77e0-4d20-bef8-4e5f3229dff9',0,'2026-05-27 22:13:54',0),
('e8baf87f-1d32-4da3-9166-f693821e85d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e24427c5-e771-4a54-a71e-2cf3d317d52a',0,'2026-05-27 22:13:54',0),
('e9082932-bdd5-4387-bb59-2e061904512b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','massupdate',0,'2026-05-27 22:13:54',0),
('e9abe81f-14a2-49fb-b8bc-4766d6402979','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a138378-a11f-46ff-a0af-cd5cad8e7233',-98,'2026-05-27 22:13:54',0),
('ea287c95-1831-4193-beee-6a8eb1db4df1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','418f9039-90c0-4b24-a464-7ce927cd55f7',0,'2026-05-27 22:13:54',0),
('eac458ce-9e62-4823-a3a8-30fad2c7189c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e027e371-8d32-42bb-9eb1-e311a14168fa',0,'2026-05-27 22:13:54',0),
('eb70fb56-943c-4e4e-8baf-42aa3ebec83e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eb927cf9-64d2-493c-bdca-f113d41adf2a',0,'2026-05-27 22:13:54',0),
('ebcbbee4-729a-41e3-8e1a-36e67b883567','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','360c2e8d-ee55-4433-b38d-b556d5393800',0,'2026-05-27 22:13:54',0),
('ec2af2e6-0a0b-4cb1-8284-6eff0a9f7a13','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0faf133e-eee4-4a42-a76a-1e42a1965ea7',-98,'2026-05-27 22:13:54',0),
('ed8cf217-69aa-4a01-9040-a71d87303f28','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','993b277a-eaf1-4d8c-9928-f0b091ce50d0',0,'2026-05-27 22:13:54',0),
('edc846db-bf13-4336-a177-fd3c1ceefc49','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f61bb70a-e4cc-43e7-b2cf-4a0b16943644',0,'2026-05-27 22:13:54',0),
('edddfdc4-cdab-4bfe-859a-0deb41c851a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','729fa487-981f-4605-9a30-ea2c524d9bac',0,'2026-05-27 22:13:54',0),
('edeb7bac-97b9-471c-83e0-8fe7e38747df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a510b97-0f79-4951-a333-f157f75bb472',0,'2026-05-27 22:13:54',0),
('ee085117-71b7-4581-8232-e961928120d2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','984afbe1-3bec-4765-82f5-dc7f74f78bbc',0,'2026-05-27 22:13:54',0),
('ee385202-a9c8-4839-a223-8963ee5bbd76','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bedab9f4-637f-47a7-a62f-bff4e2deeb52',0,'2026-05-27 22:13:54',0),
('ee4d1f50-4732-4c1a-ab86-1245fe78c4d9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ccb7be7-b659-418b-980b-5f72b5cc4f1d',-98,'2026-05-27 22:13:54',0),
('ee86e71a-14e4-44d7-8beb-5e45e6fa4566','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','19a7ba30-0104-4dd8-a430-86e21ce5b7ee',0,'2026-05-27 22:13:54',0),
('eeb5a32e-a1de-4f15-bb9f-206363a9d730','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','034c88ef-af18-4986-ae0b-57c467294d4d',0,'2026-05-27 22:13:54',0),
('eefd3ac6-4812-4760-be63-cc657357915f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bd228d09-2784-4f50-9177-cbd78dfc1182',0,'2026-05-27 22:13:54',0),
('eefe67f9-f56f-4309-a8e1-e0d536ef920f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c935396-7d5b-49cf-8fd4-fd4201734b99',0,'2026-05-27 22:13:54',0),
('ef8a1b1a-a71f-45b4-8d39-fc88d282e53b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f27d6465-e3b8-4f27-9657-a1ca680e9bd9',0,'2026-05-27 22:13:54',0),
('efba982d-0b34-4548-bddc-7f8562f32442','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e68efaff-a1fa-4bf8-8200-e33d64ec06a6',0,'2026-05-27 22:13:54',0),
('f1507dce-9374-441f-82b2-d78072f04c94','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','41452b6d-8777-4fd4-b575-0465a402fd9a',0,'2026-05-27 22:13:54',0),
('f15e9da9-997c-4f3e-bffb-33fd0c7b7c15','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','27534067-4c9d-4c7c-933c-4c62d3189ff4',0,'2026-05-27 22:13:54',0),
('f2167ab4-4359-4ed3-9a50-a3b13e7a4238','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3b4042e9-da34-42a0-abfb-2d710138a117',0,'2026-05-27 22:13:54',0),
('f289d810-e468-4e31-895b-e3d6d6de55ea','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7b64e235-9a93-4b7b-aac7-c410b1e2c907',0,'2026-05-27 22:13:54',0),
('f4788216-cc23-49a3-93cf-38af3c0e35d2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b43e352e-f9c1-4e17-a357-2229835f918a',-98,'2026-05-27 22:13:54',0),
('f588622f-ee1d-4254-9b0d-72c95edcff01','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ab43873-7b09-40c3-8007-d5e1f39645e2',0,'2026-05-27 22:13:54',0),
('f679a5d5-41a2-4f25-9559-7461f8621a18','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1481e240-0372-4257-a82a-f0c67953e088',0,'2026-05-27 22:13:54',0),
('f711d3f2-858b-4fe4-960e-9771811fa1a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9bd85a1f-bc3b-47f7-b644-3a3bbee80b5c',0,'2026-05-27 22:13:54',0),
('f91375ec-2f3e-45b2-80b4-f4082eedb8a2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','804d4438-6bd1-4555-a84a-fd922fe29070',0,'2026-05-27 22:13:54',0),
('f97b5387-e761-4217-afc3-cb7b5f19a6b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f85baad-2295-46a7-b737-ae1e199c6ad8',0,'2026-05-27 22:13:54',0),
('f99de9c3-352f-4981-afcc-fab17f12434b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc66529-e495-4a37-9d6e-7cbbefd4b055',0,'2026-05-27 22:13:54',0),
('fb04e28c-7fb7-45db-a407-b7cc50b5e3cc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cef3dcda-cafa-4b83-9eb9-b0135a582723',0,'2026-05-27 22:13:54',0),
('fc4b57d1-4c60-4e69-9fbf-5a840720770b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1ae8d636-b52b-4f26-8658-d9c92d117d3e',0,'2026-05-27 22:13:54',0),
('fcc19305-0bda-4399-8b39-e78112244a24','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','04ff9854-f520-4f29-aff8-f5b06b5f9e50',0,'2026-05-27 22:13:54',0),
('fd3043f9-b13c-478a-aa41-5166ff94f590','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6037d09f-02e3-4575-8b5f-520a1ac44c98',0,'2026-05-27 22:13:54',0),
('fd3102ab-434b-459e-b9ff-64d0c53f851f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','49c63a73-6418-41be-b4a4-d20d8900b29c',-98,'2026-05-27 22:13:54',0),
('fd40842e-1eb4-496a-b101-932c9e50b8ab','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f5e281a-351b-4d42-b31f-7ff8095d1163',0,'2026-05-27 22:13:54',0),
('fd85eecb-9cff-4c11-8517-4b549edb5793','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2592d8eb-e534-49e2-aaec-23296a44302a',0,'2026-05-27 22:13:54',0),
('fe0ba162-3699-4ece-bef8-5bdc6616ba79','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b731bfb9-9b44-4795-8c01-0cf8399194b3',0,'2026-05-27 22:13:54',0),
('fea50296-06e2-42cf-b5a6-34262f215cdd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e4cf94a-d741-4530-8b35-0055d05a8d01',0,'2026-05-27 22:13:54',0),
('ff098858-f49b-412e-8b36-90e6824d1c52','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f6e6f57c-ea10-45fb-9c49-7ad979752bdd',-98,'2026-05-27 22:13:54',0),
('ff3ae870-8ef8-41b9-a1a4-6d05f914d73e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1c7a86f6-ce5a-44f9-af67-99d82d54e62f',0,'2026-05-27 22:13:54',0);
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
INSERT INTO `acl_roles_users` VALUES
('8c20b190-f8a6-442e-ac34-830d7b55626d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','2026-05-27 22:02:16',0),
('f33a9af9-246a-4c2c-b2d3-cd784e0e925f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','57bef8d2-239b-4960-9c63-f8bc273b8094','2026-06-03 15:58:04',0);
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  `snooze` datetime DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int DEFAULT '0',
  `predecessors` int DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int DEFAULT NULL,
  `order_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
INSERT INTO `aobh_businesshours` VALUES
('aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:26:58','2026-05-26 16:26:58','1','1','',0,'1','1',NULL,'monday');
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
INSERT INTO `aop_case_events` VALUES
('0d2dbf0c-ab07-46df-a984-74cf0f293ef6','Priority changed from  to P2.','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1','Priority changed from  to P2.',0,NULL,'4d6a90a9-c65d-43ef-829b-2717c1e684f0'),
('25925a52-2a16-46af-a0ff-25370bc55740','Assigned User changed from  to .','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1','Assigned User changed from  to .',0,NULL,'4d6a90a9-c65d-43ef-829b-2717c1e684f0'),
('45e7d25a-6777-444b-b13c-fdc72ef5881d','Assigned User changed from  to .','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Assigned User changed from  to .',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('539a1591-da2c-4ae0-b02b-b3caae924160','Status changed from  to Open_New.','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Status changed from  to Open_New.',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('7c3892ce-0f08-42ba-a7bd-0069c66cb7c6','Priority changed from  to High.','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Priority changed from  to High.',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('a2df7f50-c86f-4a98-bc32-856d0c88b406','Type changed from  to Administration.','2026-05-27 20:24:40','2026-05-27 20:24:40','1','1','Type changed from  to Administration.',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('a94bf2cd-d703-49c3-b1b6-e3c115ea4da7','Type changed from  to Administration.','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1','Type changed from  to Administration.',0,NULL,'4d6a90a9-c65d-43ef-829b-2717c1e684f0'),
('dc24f9b8-d8b7-447e-9879-654e597a42ae','Priority changed from  to P2.','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','Priority changed from  to P2.',0,NULL,'794ccd41-3700-48a6-8eab-58d9e6b353b3'),
('e73d0a8a-072f-4e49-88f0-ac5cfbff541b','Assigned User changed from  to .','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','Assigned User changed from  to .',0,NULL,'794ccd41-3700-48a6-8eab-58d9e6b353b3'),
('e875a1a1-76d4-4b11-b49a-ae4e1e6d2197','Type changed from  to Product.','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','Type changed from  to Product.',0,NULL,'794ccd41-3700-48a6-8eab-58d9e6b353b3');
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
INSERT INTO `aop_case_updates` VALUES
('20ae9e07-c83f-45a7-995f-ad27d1d8a1e5','','2026-05-27 20:24:12','2026-05-27 20:24:12','1','1','Se realiza validación del caso',0,'1','353e6a1e-4018-4ee8-bce9-d436b9ab361c',NULL,0),
('49283851-821b-4281-959b-de52fcf2f795','','2026-05-26 15:53:20','2026-05-26 15:53:20','1','1','Nuevo',0,'1','794ccd41-3700-48a6-8eab-58d9e6b353b3',NULL,0);
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int DEFAULT NULL,
  `y_field` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
INSERT INTO `aos_invoices` VALUES
('0f9f6350-9a10-4ca8-b471-b9cdda9623a3','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:42:36','2026-06-04 17:57:21','1','1',NULL,1,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,0.000000,0.000000,0.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,0.000000,0.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:40:41','2026-06-04 17:40:41','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,0.000000,50000.000000,50000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,50000.000000,50000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-03 23:00:22','2026-06-03 23:00:22','1','1','',0,'1','','','','','','','','','','','','',1,100000.000000,100000.000000,100000.000000,100000.000000,0.000000,0.000000,0.000000,0.000000,NULL,0.000000,'0.0',0.000000,0.000000,100000.000000,100000.000000,'-99',NULL,'2026-06-03','2026-06-03','2026-06-07','',NULL,NULL,0.000000),
('c2735663-9462-44ea-b81b-11f3b46aac51','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:41:31','2026-06-04 17:41:31','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,60000.000000,60000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000);
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_invoices_caml_pagos_1_c`
--

DROP TABLE IF EXISTS `aos_invoices_caml_pagos_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices_caml_pagos_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_invoices_caml_pagos_1aos_invoices_ida` varchar(36) DEFAULT NULL,
  `aos_invoices_caml_pagos_1caml_pagos_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_invoices_caml_pagos_1_ida1` (`aos_invoices_caml_pagos_1aos_invoices_ida`),
  KEY `aos_invoices_caml_pagos_1_alt` (`aos_invoices_caml_pagos_1caml_pagos_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_caml_pagos_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_invoices_caml_pagos_1_c` DISABLE KEYS */;
INSERT INTO `aos_invoices_caml_pagos_1_c` VALUES
('4247be83-e080-4693-9555-78e09c6cc831','2026-06-04 16:21:52',0,'9752791a-c0ea-437b-86a4-ee0950baeddf','d16f9531-9edc-4479-ac83-10111b637fc6');
/*!40000 ALTER TABLE `aos_invoices_caml_pagos_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
INSERT INTO `aos_line_item_groups` VALUES
('621085f4-5c25-4575-b144-b6fdd0d191e8','Cuota administracion','2026-06-03 23:00:22','2026-06-03 23:00:22','1','1',NULL,0,'1',0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,NULL,0.000000,0.000000,0.000000,'AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf',2,'-99'),
('8e358f3d-ef40-4f46-b076-ace3bf99104c','Cuota administracion','2026-06-03 23:00:22','2026-06-03 23:00:22','1','1',NULL,0,'1',100000.000000,100000.000000,0.000000,0.000000,100000.000000,100000.000000,0.000000,0.000000,NULL,0.000000,100000.000000,100000.000000,'AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf',3,'-99'),
('cf5bda6a-07de-4526-ad3a-ad2d90790e30','','2026-06-03 23:00:22','2026-06-03 23:00:22','1','1',NULL,0,'1',NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,'AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf',1,'-99');
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext,
  `pdffooter` longtext,
  `margin_left` int DEFAULT '15',
  `margin_right` int DEFAULT '15',
  `margin_top` int DEFAULT '16',
  `margin_bottom` int DEFAULT '16',
  `margin_header` int DEFAULT '9',
  `margin_footer` int DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
INSERT INTO `aos_products_quotes` VALUES
('65da91ce-572f-48bf-8111-913e2fc82fc9','Cobro de Parqueadero - Periodo: Junio 2026','2026-06-04 17:42:36','2026-06-04 17:57:21','1','1',NULL,1,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,0.000000,0.000000,NULL,0.000000,NULL,0.000000,'Percentage',0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,'5.0','AOS_Invoices','0f9f6350-9a10-4ca8-b471-b9cdda9623a3',NULL,NULL),
('8e8dc7de-41c6-4646-ab57-3a4b55a5f792','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-04 17:41:31','2026-06-04 17:41:31','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,'Percentage',60000.000000,60000.000000,0.000000,0.000000,60000.000000,60000.000000,'5.0','AOS_Invoices','c2735663-9462-44ea-b81b-11f3b46aac51',NULL,NULL),
('9367f620-7281-41fb-91d4-463a96398458','Cuota administracion','2026-06-03 23:00:22','2026-06-03 23:00:22','1','1',NULL,0,'1','-99','',NULL,1,NULL,NULL,0.000000,100000.000000,100000.000000,NULL,0.000000,0.000000,0.000000,'Amount',100000.000000,100000.000000,0.000000,0.000000,100000.000000,100000.000000,'0.0','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','0','8e358f3d-ef40-4f46-b076-ace3bf99104c'),
('aca8eb0d-43f7-4ff9-929d-ae2b44677e11','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-04 17:40:41','2026-06-04 17:40:41','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,50000.000000,50000.000000,NULL,0.000000,NULL,0.000000,'Percentage',50000.000000,50000.000000,0.000000,0.000000,50000.000000,50000.000000,'5.0','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7',NULL,NULL);
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  `run_on_import` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `archived_documents_media_objects`
--

DROP TABLE IF EXISTS `archived_documents_media_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `archived_documents_media_objects` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_field` varchar(100) DEFAULT NULL,
  `temporary` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_documents_media_objects`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `archived_documents_media_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_documents_media_objects` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `async_task_items`
--

DROP TABLE IF EXISTS `async_task_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `async_task_items` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `async_task_id` varchar(36) DEFAULT NULL,
  `item_key` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_module` varchar(100) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'queued',
  `error_message` text,
  `data` text,
  `result_data` text,
  `sort_order` int DEFAULT '0',
  `retry_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ati_async_task_id` (`async_task_id`),
  KEY `idx_ati_async_task_status` (`async_task_id`,`status`),
  KEY `idx_ati_item_key` (`async_task_id`,`item_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `async_task_items`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `async_task_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `async_task_items` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `attachments_references`
--

DROP TABLE IF EXISTS `attachments_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments_references` (
  `parent_id` char(36) DEFAULT NULL,
  `parent_field` varchar(255) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source_record_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_attachments_ref_parent_id` (`parent_id`),
  KEY `idx_attachments_ref_source_record_id` (`source_record_id`),
  KEY `idx_attachments_ref_parent` (`parent_id`,`parent_type`,`parent_field`),
  KEY `idx_attachments_ref_source_type` (`type`,`source_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments_references`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `attachments_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments_references` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` char(36) DEFAULT NULL,
  `fixed_in_release` char(36) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cache_rebuild`
--

DROP TABLE IF EXISTS `cache_rebuild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_rebuild` (
  `cache_key` varchar(255) DEFAULT NULL,
  `rebuild` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rebuild`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cache_rebuild` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rebuild` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calendar_account_meetings`
--

DROP TABLE IF EXISTS `calendar_account_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_account_meetings` (
  `id` varchar(36) NOT NULL,
  `calendar_account_id` varchar(36) DEFAULT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `calendar_account_source` varchar(255) DEFAULT NULL,
  `external_event_id` varchar(255) DEFAULT NULL,
  `last_sync` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_calendar_account_meeting` (`calendar_account_id`,`meeting_id`),
  KEY `idx_cal_acc_mtg_cal` (`calendar_account_id`),
  KEY `idx_cal_acc_mtg_mtg` (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_account_meetings`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calendar_account_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_account_meetings` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calendar_accounts`
--

DROP TABLE IF EXISTS `calendar_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'personal',
  `oauth_connection_id` char(36) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `server_url` varchar(500) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_endpoint` varchar(500) DEFAULT NULL,
  `calendar_user_id` char(36) NOT NULL,
  `last_connection_status` tinyint(1) DEFAULT '0',
  `last_connection_test` datetime DEFAULT NULL,
  `last_sync_attempt_date` datetime DEFAULT NULL,
  `last_sync_attempt_status` varchar(20) DEFAULT NULL,
  `last_sync_attempt_message` varchar(50) DEFAULT NULL,
  `last_sync_date` datetime DEFAULT NULL,
  `external_calendar_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cal_acct_user_type_status` (`calendar_user_id`,`type`,`last_connection_status`,`deleted`),
  KEY `idx_cal_acct_external_cal_id` (`external_calendar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_accounts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calendar_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_accounts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_anuncios`
--

DROP TABLE IF EXISTS `caml_anuncios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_anuncios` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `tipo_anuncio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_anuncios`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_anuncios` DISABLE KEYS */;
INSERT INTO `caml_anuncios` VALUES
('a14cd58f-4f3f-46c5-8be0-593addae1d60','2026-06-03 22:32:26','2026-06-03 22:32:26','1','1','',0,'1','Gran rifa fin de semana','',NULL,NULL,'2026-06-03','2026-06-05','Marketing','Marketing Collateral','Active','informativo');
/*!40000 ALTER TABLE `caml_anuncios` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_anuncios_audit`
--

DROP TABLE IF EXISTS `caml_anuncios_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_anuncios_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_caml_anuncios_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_anuncios_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_anuncios_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_anuncios_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_apartamentos`
--

DROP TABLE IF EXISTS `caml_apartamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_apartamentos` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `unidad` varchar(255) DEFAULT NULL,
  `bloque` varchar(255) DEFAULT NULL,
  `valor_admin` int DEFAULT NULL,
  `estado_ocupacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_apartamentos`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_apartamentos` DISABLE KEYS */;
INSERT INTO `caml_apartamentos` VALUES
('09955ec1-6c39-4db8-8778-700f811c6f47','Casa 125 - Bloque 5','2026-05-26 15:51:36','2026-05-26 15:51:36','1','1','',0,'1','casa','125','5',500000,'arrendado'),
('2d786651-bf2f-4310-9117-8edc0d64bd13','','2026-05-25 22:59:01','2026-05-25 23:07:10','1','1',NULL,0,'1','apartamento','112','6',150000,'arrendado'),
('2e4ea246-bbac-4150-b3da-0b86260a455b','Apartamento 201','2026-05-27 20:23:20','2026-05-27 20:23:20','1','1','',0,'1','apartamento','201','',NULL,'propietario'),
('6b965a1c-d5e2-4c8e-a0b1-029c86711879','Apartamento 15 - Bloque 15','2026-05-27 22:00:52','2026-05-27 22:11:59','1','1',NULL,0,'1','apartamento','15','15',150000,'propietario'),
('c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-03 15:39:47','2026-06-04 17:43:34','1','1',NULL,0,'1','apartamento','201','a',60000,'arrendado');
/*!40000 ALTER TABLE `caml_apartamentos` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_apartamentos_aos_invoices_1_c`
--

DROP TABLE IF EXISTS `caml_apartamentos_aos_invoices_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_apartamentos_aos_invoices_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `caml_apartamentos_aos_invoices_1caml_apartamentos_ida` varchar(36) DEFAULT NULL,
  `caml_apartamentos_aos_invoices_1aos_invoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caml_apartamentos_aos_invoices_1_ida1` (`caml_apartamentos_aos_invoices_1caml_apartamentos_ida`),
  KEY `caml_apartamentos_aos_invoices_1_alt` (`caml_apartamentos_aos_invoices_1aos_invoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_apartamentos_aos_invoices_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_apartamentos_aos_invoices_1_c` DISABLE KEYS */;
INSERT INTO `caml_apartamentos_aos_invoices_1_c` VALUES
('82793cc8-e1ae-4747-a7e3-8ae2cc45e736','2026-06-04 17:41:31',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','c2735663-9462-44ea-b81b-11f3b46aac51'),
('ab8f0874-90ab-4fc5-b921-40b9dfa9f0e9','2026-06-04 17:57:21',1,'c5ae1ae4-bb15-4697-b584-3a5065025535','0f9f6350-9a10-4ca8-b471-b9cdda9623a3'),
('e0bda1de-480b-4bb1-835f-9799334d945a','2026-06-04 17:40:41',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','726feaa7-5b34-436d-b35c-c6c3f5e144b7');
/*!40000 ALTER TABLE `caml_apartamentos_aos_invoices_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_apartamentos_audit`
--

DROP TABLE IF EXISTS `caml_apartamentos_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_apartamentos_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_caml_apartamentos_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_apartamentos_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_apartamentos_audit` DISABLE KEYS */;
INSERT INTO `caml_apartamentos_audit` VALUES
('00c265f2-0c19-4c76-b05b-30858054825b','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 17:12:14','1','valor_admin','decimal','50000.00000000','2000',NULL,NULL),
('189c9373-efde-433c-87bd-2cfe7ae38f96','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 16:56:06','1','valor_admin','decimal','55000.00000000','50000',NULL,NULL),
('2d2a5a26-32a4-412c-b030-a09c1a304807','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 17:12:07','1','valor_admin','decimal','5000.00000000','50000',NULL,NULL),
('333f020a-8318-4032-b322-c91e85c607ec','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 17:18:04','1','valor_admin','decimal','2000.00000000','20000',NULL,NULL),
('3f6feeb1-17b3-48ed-a1dc-067305a3a13e','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 17:19:11','1','valor_admin','decimal','20000.00000000','2000',NULL,NULL),
('576caa69-af0d-4cd2-b652-408a6714a598','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 17:21:12','1','valor_admin','int','2000','50000',NULL,NULL),
('5b654d20-808d-4993-83c9-0dbebc748f27','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 17:41:17','1','valor_admin','int','50000','60000',NULL,NULL),
('ac1b60ba-b92a-45a1-b238-6ff8042046b4','c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-04 16:56:13','1','valor_admin','decimal','50000.00000000','5000',NULL,NULL);
/*!40000 ALTER TABLE `caml_apartamentos_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_apartamentos_caml_control_accesos_1_c`
--

DROP TABLE IF EXISTS `caml_apartamentos_caml_control_accesos_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_apartamentos_caml_control_accesos_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida` varchar(36) DEFAULT NULL,
  `caml_apartamentos_caml_control_accesos_1caml_control_accesos_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caml_apartamentos_caml_control_accesos_1_ida1` (`caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida`),
  KEY `caml_apartamentos_caml_control_accesos_1_alt` (`caml_apartamentos_caml_control_accesos_1caml_control_accesos_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_apartamentos_caml_control_accesos_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_apartamentos_caml_control_accesos_1_c` DISABLE KEYS */;
INSERT INTO `caml_apartamentos_caml_control_accesos_1_c` VALUES
('8900e29b-dec6-4e99-b759-c2499de1e9c4','2026-06-04 18:04:35',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','b9461b9a-7b3d-4a66-a6df-43688ccbc766');
/*!40000 ALTER TABLE `caml_apartamentos_caml_control_accesos_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_apartamentos_contacts_1_c`
--

DROP TABLE IF EXISTS `caml_apartamentos_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_apartamentos_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `caml_apartamentos_contacts_1caml_apartamentos_ida` varchar(36) DEFAULT NULL,
  `caml_apartamentos_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caml_apartamentos_contacts_1_alt` (`caml_apartamentos_contacts_1caml_apartamentos_ida`,`caml_apartamentos_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_apartamentos_contacts_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_apartamentos_contacts_1_c` DISABLE KEYS */;
INSERT INTO `caml_apartamentos_contacts_1_c` VALUES
('14af4c5c-7c29-4131-8016-67c5bb05ae18','2026-06-04 17:43:34',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9'),
('5bced0cd-6b82-4fca-b4e6-36d1b1cfe95b','2026-05-25 23:07:10',0,'2d786651-bf2f-4310-9117-8edc0d64bd13','63deac9b-28a7-4b7d-8a87-39103834d946'),
('7969e3e4-128f-4959-8b25-87dc4a92a8fa','2026-05-27 20:23:35',0,'2e4ea246-bbac-4150-b3da-0b86260a455b','996a33c4-43e6-4b5c-8bd7-a1b1b7d83293'),
('8f51509e-f9f0-468c-b59f-d0448b658eb4','2026-05-27 22:01:04',0,'6b965a1c-d5e2-4c8e-a0b1-029c86711879','19981018-5fc7-435a-9cb5-0d1d479b7cab');
/*!40000 ALTER TABLE `caml_apartamentos_contacts_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_control_accesos`
--

DROP TABLE IF EXISTS `caml_control_accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_control_accesos` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT NULL,
  `fecha_salida` datetime DEFAULT NULL,
  `total_pagar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `estado_pago` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_control_accesos`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_control_accesos` DISABLE KEYS */;
INSERT INTO `caml_control_accesos` VALUES
('b9461b9a-7b3d-4a66-a6df-43688ccbc766','pgogfd','2026-06-04 18:04:35','2026-06-04 18:04:35','1','1','',0,'1','2026-06-04 10:00:00','2026-06-04 11:00:00',94000.000000,'-99','pendiente');
/*!40000 ALTER TABLE `caml_control_accesos` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_control_accesos_audit`
--

DROP TABLE IF EXISTS `caml_control_accesos_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_control_accesos_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_caml_control_accesos_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_control_accesos_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_control_accesos_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_control_accesos_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_control_accesos_cstm`
--

DROP TABLE IF EXISTS `caml_control_accesos_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_control_accesos_cstm` (
  `id_c` char(36) NOT NULL,
  `caml_vehiculos_id_c` char(36) DEFAULT NULL,
  `caml_tarifa_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_control_accesos_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_control_accesos_cstm` DISABLE KEYS */;
INSERT INTO `caml_control_accesos_cstm` VALUES
('b9461b9a-7b3d-4a66-a6df-43688ccbc766','7b5eff14-e01e-4916-a7b6-d90cc8146098','0e1b8786-d0cd-4bca-884e-eaa961844fb5');
/*!40000 ALTER TABLE `caml_control_accesos_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_pagos`
--

DROP TABLE IF EXISTS `caml_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_pagos` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `codigo` int DEFAULT NULL,
  `aos_invoices_id_c` char(36) DEFAULT NULL,
  `monto` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `forma_pago` varchar(100) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `estado_pago` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_pagos`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_pagos` DISABLE KEYS */;
INSERT INTO `caml_pagos` VALUES
('d16f9531-9edc-4479-ac83-10111b637fc6','Abono','2026-06-04 16:21:52','2026-06-04 16:21:52','1','1','',0,'1',NULL,NULL,100000.000000,NULL,'Efectivo','','pendiente');
/*!40000 ALTER TABLE `caml_pagos` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_pagos_audit`
--

DROP TABLE IF EXISTS `caml_pagos_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_pagos_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_caml_pagos_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_pagos_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_pagos_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_pagos_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_parqueaderos`
--

DROP TABLE IF EXISTS `caml_parqueaderos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_parqueaderos` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tipo_parqueadero` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `caml_apartamentos_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_parqueaderos`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_parqueaderos` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_parqueaderos` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_parqueaderos_audit`
--

DROP TABLE IF EXISTS `caml_parqueaderos_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_parqueaderos_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_caml_parqueaderos_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_parqueaderos_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_parqueaderos_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_parqueaderos_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_parqueaderos_cstm`
--

DROP TABLE IF EXISTS `caml_parqueaderos_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_parqueaderos_cstm` (
  `id_c` char(36) NOT NULL,
  `caml_vehiculos_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_parqueaderos_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_parqueaderos_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_parqueaderos_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_tarifa`
--

DROP TABLE IF EXISTS `caml_tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_tarifa` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tipo_cobro` varchar(100) DEFAULT NULL,
  `valor` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `minuto_inicial` int DEFAULT NULL,
  `minuto_final` int DEFAULT NULL,
  `minuto_plena` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_tarifa`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_tarifa` DISABLE KEYS */;
INSERT INTO `caml_tarifa` VALUES
('0e1b8786-d0cd-4bca-884e-eaa961844fb5','mensualidad','2026-06-04 18:03:59','2026-06-04 18:03:59','1','1','Prueba',0,'1','mensual',NULL,'-99',NULL,NULL,NULL);
/*!40000 ALTER TABLE `caml_tarifa` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_tarifa_audit`
--

DROP TABLE IF EXISTS `caml_tarifa_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_tarifa_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_caml_tarifa_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_tarifa_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_tarifa_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_tarifa_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_vehiculos`
--

DROP TABLE IF EXISTS `caml_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_vehiculos` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tipo_vehiculo` varchar(100) DEFAULT NULL,
  `marca_color` varchar(255) DEFAULT NULL,
  `caml_apartamentos_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_vehiculos`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_vehiculos` DISABLE KEYS */;
INSERT INTO `caml_vehiculos` VALUES
('7b5eff14-e01e-4916-a7b6-d90cc8146098','ydy84f','2026-06-04 18:04:26','2026-06-04 18:04:26','1','1','',0,'1','moto','honda naranja','c5ae1ae4-bb15-4697-b584-3a5065025535');
/*!40000 ALTER TABLE `caml_vehiculos` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_vehiculos_audit`
--

DROP TABLE IF EXISTS `caml_vehiculos_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_vehiculos_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_caml_vehiculos_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_vehiculos_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_vehiculos_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_vehiculos_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `is_test_entry` tinyint(1) DEFAULT '0',
  `related_type` varchar(255) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_related` (`related_id`,`related_type`,`marketing_id`,`deleted`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `tracker_count` int DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planning',
  `impressions` int DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `budget_usdollar` double DEFAULT NULL,
  `expected_cost_usdollar` double DEFAULT NULL,
  `actual_cost_usdollar` double DEFAULT NULL,
  `expected_revenue_usdollar` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT 'NewsLetter',
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES
('353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-05-27 20:15:39','2026-05-27 20:24:40','1','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Nuevos elementos',0,'',3,'Administration','Open_New','High','',NULL,'','Open',''),
('4d6a90a9-c65d-43ef-829b-2717c1e684f0','nuevo','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1','Solicitud poara',0,'1',1,'Administration',NULL,'P2','',NULL,NULL,'Open',NULL),
('794ccd41-3700-48a6-8eab-58d9e6b353b3','fasf','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','',0,'1',2,'Product',NULL,'P2','',NULL,NULL,'Open',NULL);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `categoria_c` varchar(100) DEFAULT NULL,
  `caml_apartamentos_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
INSERT INTO `cases_cstm` VALUES
('353e6a1e-4018-4ee8-bce9-d436b9ab361c',0.00000000,0.00000000,'','','solicitud',''),
('4d6a90a9-c65d-43ef-829b-2717c1e684f0',0.00000000,0.00000000,NULL,NULL,'solicitud','2d786651-bf2f-4310-9117-8edc0d64bd13'),
('794ccd41-3700-48a6-8eab-58d9e6b353b3',0.00000000,0.00000000,NULL,NULL,'denuncia','09955ec1-6c39-4db8-8778-700f811c6f47');
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES
('notify','fromaddress','do_not_reply@example.com'),
('notify','fromname','SuiteCRM'),
('notify','send_by_default','1'),
('notify','on','1'),
('notify','send_from_assigning_user','0'),
('info','sugar_version','6.5.25'),
('MySettings','tab','YToyNzp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjg6IkNvbnRhY3RzIjtzOjg6IkNvbnRhY3RzIjtzOjEwOiJBT1NfUXVvdGVzIjtzOjEwOiJBT1NfUXVvdGVzIjtzOjg6IkNhbGVuZGFyIjtzOjg6IkNhbGVuZGFyIjtzOjk6IkRvY3VtZW50cyI7czo5OiJEb2N1bWVudHMiO3M6NjoiRW1haWxzIjtzOjY6IkVtYWlscyI7czo1OiJDYWxscyI7czo1OiJDYWxscyI7czo4OiJNZWV0aW5ncyI7czo4OiJNZWV0aW5ncyI7czo1OiJOb3RlcyI7czo1OiJOb3RlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEyOiJBT1NfSW52b2ljZXMiO3M6NToiQ2FzZXMiO3M6NToiQ2FzZXMiO3M6OToiRlBfZXZlbnRzIjtzOjk6IkZQX2V2ZW50cyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjE4OiJGUF9FdmVudF9Mb2NhdGlvbnMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7czoxNDoiRW1haWxUZW1wbGF0ZXMiO3M6NzoiU3VydmV5cyI7czo3OiJTdXJ2ZXlzIjtzOjE3OiJjYW1sX2FwYXJ0YW1lbnRvcyI7czoxNzoiY2FtbF9hcGFydGFtZW50b3MiO3M6MjA6ImNhbWxfY29udHJvbF9hY2Nlc29zIjtzOjIwOiJjYW1sX2NvbnRyb2xfYWNjZXNvcyI7czoxMToiY2FtbF90YXJpZmEiO3M6MTE6ImNhbWxfdGFyaWZhIjtzOjE3OiJjYW1sX3BhcnF1ZWFkZXJvcyI7czoxNzoiY2FtbF9wYXJxdWVhZGVyb3MiO3M6MTQ6ImNhbWxfdmVoaWN1bG9zIjtzOjE0OiJjYW1sX3ZlaGljdWxvcyI7czoxMzoiY2FtbF9hbnVuY2lvcyI7czoxMzoiY2FtbF9hbnVuY2lvcyI7czoxMDoiY2FtbF9wYWdvcyI7czoxMDoiY2FtbF9wYWdvcyI7fQ=='),
('portal','on','0'),
('system','drafts_popup','1'),
('tracker','Tracker','1'),
('sugarfeed','enabled','1'),
('sugarfeed','module_UserFeed','1'),
('sugarfeed','module_Contacts','1'),
('sugarfeed','module_Leads','1'),
('sugarfeed','module_Cases','1'),
('sugarfeed','module_Opportunities','1'),
('Update','CheckUpdates','manual'),
('system','name','SuiteCRM'),
('system','adminwizard','1'),
('info','suitecrm_version','8.10.1'),
('MySettings','disable_useredit','no'),
('MySettings','hide_subpanels','YToxNTp7czo1OiJsZWFkcyI7czo1OiJsZWFkcyI7czoyMjoiYW9zX3Byb2R1Y3RfY2F0ZWdvcmllcyI7czoyMjoiYW9zX3Byb2R1Y3RfY2F0ZWdvcmllcyI7czoxMToiY2FtcGFpZ25sb2ciO3M6MTE6ImNhbXBhaWdubG9nIjtzOjEyOiJhb3NfcHJvZHVjdHMiO3M6MTI6ImFvc19wcm9kdWN0cyI7czoxOToiYW1fcHJvamVjdHRlbXBsYXRlcyI7czoxOToiYW1fcHJvamVjdHRlbXBsYXRlcyI7czo5OiJqandnX21hcHMiO3M6OToiamp3Z19tYXBzIjtzOjIxOiJhb3Jfc2NoZWR1bGVkX3JlcG9ydHMiO3M6MjE6ImFvcl9zY2hlZHVsZWRfcmVwb3J0cyI7czoxNzoiYW9rX2tub3dsZWRnZWJhc2UiO3M6MTc6ImFva19rbm93bGVkZ2ViYXNlIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjI5OiJhb2tfa25vd2xlZGdlX2Jhc2VfY2F0ZWdvcmllcyI7czoyOToiYW9rX2tub3dsZWRnZV9iYXNlX2NhdGVnb3JpZXMiO3M6OToicHJvc3BlY3RzIjtzOjk6InByb3NwZWN0cyI7czo0OiJidWdzIjtzOjQ6ImJ1Z3MiO3M6NzoicHJvamVjdCI7czo3OiJwcm9qZWN0IjtzOjEzOiJwcm9zcGVjdGxpc3RzIjtzOjEzOiJwcm9zcGVjdGxpc3RzIjtzOjEzOiJhb3NfY29udHJhY3RzIjtzOjEzOiJhb3NfY29udHJhY3RzIjt9');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES
('0a436ba0-203f-4411-b45f-82128ef330ce','2026-05-21 21:10:43','2026-05-21 21:10:43','1','1','',0,'1','','fasf','fsfa','1654613',NULL,NULL,0,'','3156465',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('19981018-5fc7-435a-9cb5-0d1d479b7cab','2026-05-27 22:00:25','2026-05-28 16:02:52','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','1',NULL,0,'1','Mr.','solangel','rodriguez','15646',NULL,NULL,0,NULL,'315644564',NULL,NULL,NULL,NULL,NULL,NULL,'Calle 57 c sur','Bogota',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),
('28efc213-1abc-4ec3-8b10-2b2e3f5784a5','2026-05-21 20:55:01','2026-05-21 20:55:01','1','1','',0,'1','Mr.','alejandro','Maldonado','262331',NULL,NULL,0,'','315354',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('3fc6a881-1c34-47a4-9a05-a5ad60757341','2026-05-21 20:43:07','2026-05-21 20:43:07','1','1','',0,'1','Mr.','alejandrof','maldonado','15203254',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,'',NULL,'',NULL,NULL,'Single'),
('5697accd-0b22-486d-a0c9-b0b980bc7fa2','2026-05-21 20:53:10','2026-05-21 20:53:10','1','1','',0,'1','','maria','eugenia','15265',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('59022a4b-fa64-4d15-b189-b20b7510a33c','2026-05-21 20:22:26','2026-05-21 20:40:36','1','1','',1,'1','','dad','dasd','152032',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','2026-06-03 15:58:04','2026-06-03 15:58:04','1','1','',0,'1','Mr.','manuel','murillo','1516156',NULL,NULL,0,'','31515662','3153',NULL,NULL,'',NULL,NULL,'prueba','Bogota','','calle','','','','','','',NULL,NULL,NULL,'','2026-06-03','',NULL,NULL,'Single'),
('63deac9b-28a7-4b7d-8a87-39103834d946','2026-05-21 21:27:57','2026-05-25 23:09:00','1','1','',0,'1','Mr.','alejandro','maldonado','3156416',NULL,NULL,0,'','3432',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),
('65bd9658-5c5a-45c5-842c-4a0378dbb8ff','2026-05-21 21:27:14','2026-05-21 21:27:14','1','1','',0,'1','Mr.','fasfas','fasf','432423',NULL,NULL,0,'','3156',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('69b1eb86-c3db-43ed-b195-aa3a387e3ee0','2026-05-21 20:39:31','2026-05-21 20:40:36','1','1','',1,'1','Mr.','alejandro','maldonado','152032',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,'',NULL,'',NULL,NULL,'Single'),
('70acd44a-1768-414e-ace4-6d7a69a2ee0e','2026-05-21 21:12:35','2026-05-21 21:12:35','1','1','',0,'1','Ms.','sdg','gsd','43245235',NULL,NULL,0,'','3156',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('766ace6c-1013-4afd-9b11-d5897c456ade','2026-05-21 20:36:49','2026-05-21 20:40:36','1','1','',1,'1','','fsaf','fsaf','43234',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('915a3e51-20be-437b-a1b3-f4c30498f451','2026-05-21 20:37:24','2026-05-21 20:40:36','1','1','',1,'1','','fsaf','fsaf','43234',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,'',NULL,'',NULL,NULL,'Single'),
('996a33c4-43e6-4b5c-8bd7-a1b1b7d83293','2026-05-26 22:53:35','2026-05-27 20:23:35','1','1',NULL,0,'1','Mr.','carlos a','maldonado','132415',NULL,NULL,0,NULL,'315358949',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','2026-05-26','',NULL,0,'Single'),
('ac9d89d0-72a7-4239-8c9e-00879a1e449d','2026-05-21 21:08:44','2026-05-21 21:08:44','1','1','',0,'1','Mr.','alejandro','malk','1561632',NULL,NULL,0,'','315541563',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('b0211b4a-7a38-4b27-b02b-6f32317df17d','2026-05-21 20:40:51','2026-05-21 20:40:51','1','1','',0,'1','Mr.','alejandro','maldonado','1520325',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,'',NULL,'',NULL,NULL,'Single'),
('b571a0d1-3e78-4c3e-8532-bf995018d77a','2026-05-21 21:05:49','2026-05-21 21:05:49','1','1','',0,'1','Mr.','prueba','maldonado','156613',NULL,NULL,0,'','3503752816',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('bb1e356a-6e99-4350-ac48-3989d0b6a654','2026-05-21 20:30:57','2026-05-21 20:40:36','1','1','',1,'1','','fasf','fsaf','152032',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('c0b0c51a-f2cc-4591-8263-2fb09088cf58','2026-06-03 15:45:47','2026-06-03 15:45:47','1','1','',0,'1','Mr.','manuel','murillo','1516156',NULL,NULL,0,'','31515662','3153',NULL,NULL,'',NULL,NULL,'prueba','Bogota','','calle','','','','','','',NULL,NULL,NULL,NULL,'2026-06-03',NULL,NULL,NULL,'Single'),
('c6cf26f8-2c58-47f3-9789-05affa0c3b54','2026-05-21 21:34:51','2026-05-21 21:34:51','1','1','',0,'1','Mr.','fsaf','fsaf','1564641',NULL,NULL,0,'','423',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('cd36c614-09f0-4914-98da-374ffdb68d11','2026-05-21 20:26:53','2026-05-21 20:40:36','1','1','',1,'1','','dad','dasd','152032',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,'',NULL,'',NULL,NULL,'Single'),
('d53244c3-4ae4-4594-a8ef-d8edd533cc20','2026-05-21 20:22:16','2026-05-21 20:22:16','1','1','',0,'1','Mr.','alejandro','maldonado','152032',NULL,NULL,0,'','',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),
('e0633fa3-4d4d-40eb-8ddf-38162761cb63','2026-05-21 20:44:07','2026-05-21 20:44:07','1','1','',0,'1','','alejandro','maldonado','156135',NULL,NULL,0,'','3503752816',NULL,NULL,NULL,'',NULL,NULL,'','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `tipo_residente_c` varchar(100) DEFAULT NULL,
  `estado_cuenta_c` varchar(100) DEFAULT NULL,
  `caml_apartamentos_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
INSERT INTO `contacts_cstm` VALUES
('0a436ba0-203f-4411-b45f-82128ef330ce',0.00000000,0.00000000,NULL,NULL,NULL,'',NULL),
('19981018-5fc7-435a-9cb5-0d1d479b7cab',0.00000000,0.00000000,'','','Propietario_Habitante','Activo',NULL),
('28efc213-1abc-4ec3-8b10-2b2e3f5784a5',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('3fc6a881-1c34-47a4-9a05-a5ad60757341',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('5697accd-0b22-486d-a0c9-b0b980bc7fa2',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('59022a4b-fa64-4d15-b189-b20b7510a33c',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9',0.00000000,0.00000000,NULL,NULL,'Propietario_No_Habitante','Activo','c5ae1ae4-bb15-4697-b584-3a5065025535'),
('63deac9b-28a7-4b7d-8a87-39103834d946',0.00000000,0.00000000,'','','Arrendatario','',NULL),
('65bd9658-5c5a-45c5-842c-4a0378dbb8ff',0.00000000,0.00000000,NULL,NULL,NULL,'',NULL),
('69b1eb86-c3db-43ed-b195-aa3a387e3ee0',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('70acd44a-1768-414e-ace4-6d7a69a2ee0e',0.00000000,0.00000000,NULL,NULL,NULL,'',NULL),
('766ace6c-1013-4afd-9b11-d5897c456ade',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('915a3e51-20be-437b-a1b3-f4c30498f451',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('996a33c4-43e6-4b5c-8bd7-a1b1b7d83293',0.00000000,0.00000000,'','','Propietario_Habitante','',NULL),
('ac9d89d0-72a7-4239-8c9e-00879a1e449d',0.00000000,0.00000000,NULL,NULL,NULL,'',NULL),
('b0211b4a-7a38-4b27-b02b-6f32317df17d',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('b571a0d1-3e78-4c3e-8532-bf995018d77a',0.00000000,0.00000000,NULL,NULL,NULL,'',NULL),
('bb1e356a-6e99-4350-ac48-3989d0b6a654',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('c0b0c51a-f2cc-4591-8263-2fb09088cf58',0.00000000,0.00000000,NULL,NULL,'Propietario_No_Habitante','Activo','c5ae1ae4-bb15-4697-b584-3a5065025535'),
('c6cf26f8-2c58-47f3-9789-05affa0c3b54',0.00000000,0.00000000,NULL,NULL,NULL,'',NULL),
('cd36c614-09f0-4914-98da-374ffdb68d11',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('d53244c3-4ae4-4594-a8ef-d8edd533cc20',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL),
('e0633fa3-4d4d-40eb-8ddf-38162761cb63',0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT 'Active',
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES
('05f02d20-984f-4e67-9e2d-49a719ab07c7','684e4680-ded4-44d7-9e3e-501ac3646805','0b516c8f-0986-41c1-89a9-793e202d6760','Users',1,0,'2026-05-21 20:44:07','2026-05-21 20:44:07',0),
('1c824da9-070a-422d-b110-50f07fa64fd6','2f708872-2f7a-461d-b97f-0b3eb29fa975','28efc213-1abc-4ec3-8b10-2b2e3f5784a5','Contacts',1,0,'2026-05-21 20:55:01','2026-05-21 20:55:01',0),
('1d1ab4cb-5251-4bdf-8bc5-78e5089c5ad2','e0ac438f-358f-48e4-942a-bee3ffef7676','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Contacts',1,0,'2026-06-03 15:58:04','2026-06-03 15:58:04',0),
('275db63d-a951-4faa-8987-89dc14e250f1','d59a7904-90be-48eb-96d5-a734aca6fadd','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Users',1,0,'2026-05-26 22:53:35','2026-05-26 22:53:35',0),
('280e159b-2bd9-4abb-a09a-66f00ce34f21','684e4680-ded4-44d7-9e3e-501ac3646805','e0633fa3-4d4d-40eb-8ddf-38162761cb63','Contacts',1,0,'2026-05-21 20:44:07','2026-05-21 20:44:07',0),
('29ad6055-7ac1-4958-bc4b-970392ab7d99','2f708872-2f7a-461d-b97f-0b3eb29fa975','a8cb8418-b90e-4a5a-bbda-f64c001fc224','Users',1,0,'2026-05-21 20:55:01','2026-05-21 20:55:01',0),
('29be464b-9681-4349-ae22-c105e3d5dd48','323c8d4e-2518-4bca-9b06-d5a3066ece74','c6cf26f8-2c58-47f3-9789-05affa0c3b54','Contacts',1,0,'2026-05-21 21:34:51','2026-05-21 21:34:51',0),
('30941432-a79b-4e1d-91ea-7c332d3d48b4','d59a7904-90be-48eb-96d5-a734aca6fadd','996a33c4-43e6-4b5c-8bd7-a1b1b7d83293','Contacts',1,0,'2026-05-26 22:53:35','2026-05-26 22:53:35',0),
('32ddb99c-9406-417f-98e5-6f550f2bc8b4','e0ac438f-358f-48e4-942a-bee3ffef7676','57bef8d2-239b-4960-9c63-f8bc273b8094','Users',1,0,'2026-06-03 15:58:04','2026-06-03 15:58:04',0),
('38d4131e-8013-4de0-8883-9f6a366a33b9','684e4680-ded4-44d7-9e3e-501ac3646805','0a436ba0-203f-4411-b45f-82128ef330ce','Contacts',1,0,'2026-05-21 21:10:43','2026-05-21 21:10:43',0),
('3fa1b5c0-ea58-4e16-b2e4-e98686e7ac55','84110f63-2a45-40fb-a9dc-c64d0038a8c3','4b93232d-8e89-43f7-998c-0d90d2d6215f','Accounts',1,0,'2026-06-03 15:37:57','2026-06-03 15:37:57',0),
('66dd446e-7544-4ea6-b136-69ced062e4ef','684e4680-ded4-44d7-9e3e-501ac3646805','b571a0d1-3e78-4c3e-8532-bf995018d77a','Contacts',1,0,'2026-05-21 21:05:49','2026-05-21 21:05:49',0),
('86d515a2-72a8-4a5a-b406-45edbfd87d7c','684e4680-ded4-44d7-9e3e-501ac3646805','70acd44a-1768-414e-ace4-6d7a69a2ee0e','Contacts',1,0,'2026-05-21 21:12:35','2026-05-21 21:12:35',0),
('88833b21-98e6-41c4-9975-a71886e0b4e8','323c8d4e-2518-4bca-9b06-d5a3066ece74','897b0de3-78c9-4ee3-8b67-9cc910d63f6c','Users',1,0,'2026-05-21 21:27:57','2026-05-21 21:27:57',0),
('94f4fa9c-4b1f-49e3-9bd5-626dacd9bc0e','e0ac438f-358f-48e4-942a-bee3ffef7676','853e0084-4fc8-4f26-bd43-798959a8342f','Users',1,0,'2026-06-03 15:45:47','2026-06-03 15:57:41',1),
('955e2777-75bf-4cae-887a-3c34b61b5966','684e4680-ded4-44d7-9e3e-501ac3646805','65bd9658-5c5a-45c5-842c-4a0378dbb8ff','Contacts',1,0,'2026-05-21 21:27:14','2026-05-21 21:27:14',0),
('bae4d5b6-4018-4548-879c-3c33812f8c43','323c8d4e-2518-4bca-9b06-d5a3066ece74','63deac9b-28a7-4b7d-8a87-39103834d946','Contacts',1,0,'2026-05-21 21:27:57','2026-05-21 21:27:57',0),
('c0497bf2-41d6-4b16-b887-8b4c88dbdecb','e0ac438f-358f-48e4-942a-bee3ffef7676','c0b0c51a-f2cc-4591-8263-2fb09088cf58','Contacts',1,0,'2026-06-03 15:45:47','2026-06-03 15:45:47',0),
('d6b6639e-d436-4689-986c-5f5036e3b97b','12b7fd27-cb04-4d7b-b802-75ecc1e5c519','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','Users',1,0,'2026-05-27 22:00:25','2026-05-27 22:00:25',0),
('e7703e03-b056-4c5f-acc6-bb8b33a49d04','684e4680-ded4-44d7-9e3e-501ac3646805','ac9d89d0-72a7-4239-8c9e-00879a1e449d','Contacts',1,0,'2026-05-21 21:08:44','2026-05-21 21:08:44',0),
('ed430180-4303-4f7f-b326-73942aef7ef7','12b7fd27-cb04-4d7b-b802-75ecc1e5c519','19981018-5fc7-435a-9cb5-0d1d479b7cab','Contacts',1,0,'2026-05-27 22:00:25','2026-05-27 22:00:25',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES
('12b7fd27-cb04-4d7b-b802-75ecc1e5c519','sol@gmail.com','SOL@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2026-05-27 22:00:25','2026-05-27 22:00:25',0),
('2f708872-2f7a-461d-b97f-0b3eb29fa975','camltasks@gmail.com','CAMLTASKS@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2026-05-21 20:55:01','2026-05-21 20:55:01',0),
('323c8d4e-2518-4bca-9b06-d5a3066ece74','ingedev94@gmail.com','INGEDEV94@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2026-05-21 21:27:57','2026-05-21 21:27:57',0),
('684e4680-ded4-44d7-9e3e-501ac3646805','c.a.m.l.123@hotmail.com','C.A.M.L.123@HOTMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2026-05-21 20:44:07','2026-05-21 20:44:07',0),
('84110f63-2a45-40fb-a9dc-c64d0038a8c3','malpole@gmail.com','MALPOLE@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2026-06-03 15:37:57','2026-06-03 15:37:57',0),
('d59a7904-90be-48eb-96d5-a734aca6fadd','camltasks1@gmail.com','CAMLTASKS1@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2026-05-26 22:53:35','2026-05-26 22:53:35',0),
('e0ac438f-358f-48e4-942a-bee3ffef7676','manuel@gmail.com','MANUEL@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2026-06-03 15:45:47','2026-06-03 15:45:47',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int unsigned DEFAULT NULL,
  `imap_uid` int unsigned DEFAULT NULL,
  `msgno` int unsigned DEFAULT NULL,
  `recent` tinyint DEFAULT NULL,
  `flagged` tinyint DEFAULT NULL,
  `answered` tinyint DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `seen` tinyint DEFAULT NULL,
  `draft` tinyint DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT 'draft',
  `duplicate` varchar(255) DEFAULT 'email',
  `queueing_status` varchar(100) DEFAULT 'not_started',
  `type` varchar(100) DEFAULT NULL,
  `has_test_data` tinyint(1) DEFAULT '0',
  `pause_reason` text,
  `trackers_enabled` tinyint(1) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`),
  KEY `idx_status` (`status`),
  KEY `idx_date_start` (`date_start`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`),
  KEY `idx_prospect_list_id` (`prospect_list_id`),
  KEY `idx_email_marketing_id` (`email_marketing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES
('01f039b3-ef1f-4fe6-b8ff-d1afc2a408e8','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\n					    </tbody></table>',0,NULL,NULL,'system'),
('1ab1deae-977f-44d9-aeff-ef4aba25c27b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),
('2900da3d-e1c2-47da-b451-497368caed8f','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Two Factor Authentication email','This template is used to send a user a code for Two Factor Authentication.','Two Factor Authentication Code','Two Factor Authentication code is $code.','<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),
('3119e6da-81f6-41e4-842d-9e3bec68b977','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','User Case Update','Email template to send to a SuiteCRM user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),
('657c756c-0850-43b5-b3c5-4617b6d40d52','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>',0,NULL,NULL,'system'),
('739a4968-66bb-4dc9-8177-8722a9f5ef6a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>',0,NULL,NULL,'system'),
('7862e1ad-5c68-4fde-bded-0a170aa926e6','2013-05-24 14:31:45','2026-05-20 16:29:32','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'system'),
('8fa6eea7-df98-4b7c-be4d-9249b51d9b3b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),
('a780a056-8c04-4fa2-bc50-f859a7f28a13','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),
('c4bf7857-7e6f-43ad-a055-c55ac897bcb7','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_type` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0',
  `marketing_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`),
  KEY `idx_eman_related` (`related_id`,`related_type`,`marketing_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `addrs_metadata` text,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`),
  KEY `idx_email_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `external_oauth_connections`
--

DROP TABLE IF EXISTS `external_oauth_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text,
  `refresh_token` text,
  `external_oauth_provider_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_connections`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `external_oauth_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_connections` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `external_oauth_providers`
--

DROP TABLE IF EXISTS `external_oauth_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `redirect_uri_type` varchar(50) DEFAULT 'pretty_url',
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_providers`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `external_oauth_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_providers` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  `metadata` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES
('Accountsarea_mapa_c','area_mapa_c','LBL_AREA_MAPA','','','Accounts','relate',255,1,NULL,'2026-05-26 16:44:46',0,1,0,0,1,'true','','jjwg_Areas','jjwg_areas_id_c','','[]'),
('Accountsjjwg_areas_id1_c','jjwg_areas_id1_c','LBL_LOCALIDAD_JJWG_AREAS_ID','','','Accounts','id',36,0,NULL,'2026-05-26 16:48:22',0,0,0,0,0,'true','','','','','[]'),
('Accountsjjwg_areas_id_c','jjwg_areas_id_c','LBL_AREA_MAPA_JJWG_AREAS_ID','','','Accounts','id',36,0,NULL,'2026-05-26 16:44:46',0,0,0,0,0,'true','','','','','[]'),
('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Accountsjjwg_markers_id_c','jjwg_markers_id_c','LBL_UBICACION_MAPA_JJWG_MARKERS_ID','','','Accounts','id',36,0,NULL,'2026-05-26 16:42:13',0,0,0,0,0,'true','','','','','[]'),
('Accountslocalidad_c','localidad_c','LBL_LOCALIDAD','','','Accounts','relate',255,0,NULL,'2026-05-26 16:48:22',0,0,0,0,1,'true','','jjwg_Areas','jjwg_areas_id1_c','','[]'),
('Accountsubicacion_mapa_c','ubicacion_mapa_c','LBL_UBICACION_MAPA','','','Accounts','relate',255,1,NULL,'2026-05-26 16:42:13',0,1,0,0,1,'true','','jjwg_Markers','jjwg_markers_id_c','','[]'),
('caml_control_accesoscaml_tarifa_id_c','caml_tarifa_id_c','LBL_TARIFA_CAML_TARIFA_ID','','','caml_control_accesos','id',36,0,NULL,'2026-06-04 17:51:42',0,0,0,0,0,'true','','','','','[]'),
('caml_control_accesoscaml_vehiculos_id_c','caml_vehiculos_id_c','LBL_VEHICULO_CAML_VEHICULOS_ID','','','caml_control_accesos','id',36,0,NULL,'2026-05-26 19:57:09',0,0,0,0,0,'true','','','','','[]'),
('caml_control_accesostarifa_c','tarifa_c','LBL_TARIFA','','','caml_control_accesos','relate',255,1,NULL,'2026-06-04 17:51:42',0,1,0,0,1,'true','','caml_tarifa','caml_tarifa_id_c','','[]'),
('caml_control_accesosvehiculo_c','vehiculo_c','LBL_VEHICULO','','','caml_control_accesos','relate',255,1,NULL,'2026-05-26 19:57:09',0,1,0,0,1,'true','','caml_vehiculos','caml_vehiculos_id_c','','[]'),
('caml_parqueaderoscaml_vehiculos_id_c','caml_vehiculos_id_c','LBL_VEHICULO_CAML_VEHICULOS_ID','','','caml_parqueaderos','id',36,0,NULL,'2026-05-26 19:56:29',0,0,0,0,0,'true','','','','','[]'),
('caml_parqueaderosvehiculo_c','vehiculo_c','LBL_VEHICULO','','','caml_parqueaderos','relate',255,1,NULL,'2026-05-26 19:56:29',0,1,0,0,1,'true','','caml_vehiculos','caml_vehiculos_id_c','','[]'),
('Casesapartamento_c','apartamento_c','LBL_APARTAMENTO','','','Cases','relate',255,0,NULL,'2026-05-26 15:37:55',0,0,0,0,1,'true','','caml_apartamentos','caml_apartamentos_id_c','','[]'),
('Casescaml_apartamentos_id_c','caml_apartamentos_id_c','LBL_APARTAMENTO_CAML_APARTAMENTOS_ID','','','Cases','id',36,0,NULL,'2026-05-26 15:37:55',0,0,0,0,0,'true','','','','','[]'),
('Casescategoria_c','categoria_c','LBL_CATEGORIA','','','Cases','enum',100,0,NULL,'2026-05-26 15:36:50',0,0,0,0,1,'true','categoria_caso_list','','','','[]'),
('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Contactsapartamento_c','apartamento_c','LBL_APARTAMENTO','','','Contacts','relate',255,1,NULL,'2026-06-03 15:42:48',0,1,0,0,1,'true','','caml_apartamentos','caml_apartamentos_id_c','','[]'),
('Contactscaml_apartamentos_id_c','caml_apartamentos_id_c','LBL_APARTAMENTO_CAML_APARTAMENTOS_ID','','','Contacts','id',36,0,NULL,'2026-06-03 15:42:48',0,0,0,0,0,'true','','','','','[]'),
('Contactsestado_cuenta_c','estado_cuenta_c','LBL_ESTADO_CUENTA','','','Contacts','enum',100,0,NULL,'2026-05-21 16:55:20',0,0,0,0,1,'true','estado_cuenta_list','','','','[]'),
('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Contactstipo_residente_c','tipo_residente_c','LBL_TIPO_RESIDENTE','','','Contacts','enum',100,0,NULL,'2026-05-21 16:53:31',0,0,0,0,1,'true','tipo_residente_list','','','','[]'),
('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2026-05-20 16:29:32',0,0,0,0,1,'true',NULL,'','','','[]'),
('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]'),
('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2026-05-20 16:29:32',0,0,0,0,1,'true','8','','','','[]');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
INSERT INTO `fp_event_locations` VALUES
('5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:35','2026-05-26 15:55:35','1','1','',0,NULL,'bogota','bnogota','','11520.','colombia','');
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `last_import_run_datetime` datetime DEFAULT NULL,
  `mailbox_last_imported_days` text,
  `email_import_per_run_threshold` int DEFAULT NULL,
  `email_import_timeframe_start` varchar(255) DEFAULT NULL,
  `email_import_unread_only` tinyint(1) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `email_body_filtering` varchar(255) DEFAULT 'multi',
  `server_url` varchar(100) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int DEFAULT '143',
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT '0',
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT '0',
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
INSERT INTO `jjwg_areas` VALUES
('0123d1fd-ef59-49d9-8c87-15f695e7da99','Sumapaz','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Sumapaz en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.150,3.850\n-74.450,3.850\n-74.300,4.300\n-74.100,4.300\n-74.150,3.850'),
('02df1268-2095-4b73-a2fb-f2f7ca19fb52','Usme','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Usme en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.080,4.400\n-74.150,4.400\n-74.120,4.540\n-74.080,4.540\n-74.080,4.400'),
('18f07ae2-529b-41be-995c-9793a1da558c','Suba','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Suba en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.040,4.720\n-74.130,4.720\n-74.110,4.830\n-74.030,4.830\n-74.040,4.720'),
('1c326b96-4366-4dee-9ab1-6f6e0a31fd90','Antonio Nariño','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Antonio Nariño en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.090,4.570\n-74.110,4.570\n-74.100,4.600\n-74.080,4.600\n-74.090,4.570'),
('1e61de3f-8f4a-4eca-b19d-1f7a592cd675','Chapinero','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Chapinero en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.030,4.630\n-74.070,4.630\n-74.050,4.680\n-74.030,4.680\n-74.030,4.630'),
('207e9cd6-2347-4e2a-aef8-eece81c7bb30','Teusaquillo','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Teusaquillo en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.070,4.620\n-74.100,4.620\n-74.090,4.660\n-74.070,4.660\n-74.070,4.620'),
('2c2f467d-dce6-4593-a4c7-ddcb984e0d55','La Candelaria','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de La Candelaria en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.065,4.590\n-74.078,4.590\n-74.075,4.605\n-74.062,4.605\n-74.065,4.590'),
('36ba6629-9786-4b15-81a1-cb2af5cc0494','Ciudad Bolívar','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Ciudad Bolívar en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.110,4.420\n-74.190,4.420\n-74.160,4.580\n-74.120,4.580\n-74.110,4.420'),
('3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:14:52','2026-05-26 16:21:51','1','1','Geocerca de prueba para el perímetro del complejo empresarial Elemento. Sirve para validar la cobertura de servicios de ConectaHogar en la zona.',0,'1','Bogotá','Bogotá D.C.','Colombia','-74.10735,4.66090\n-74.10580,4.66050\n-74.10615,4.65935\n-74.10770,4.65975\n-74.10735,4.66090'),
('480c4cce-cc60-4353-8d01-fc722a4df03a','Fontibón','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Fontibón en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.120,4.660\n-74.160,4.660\n-74.150,4.700\n-74.110,4.700\n-74.120,4.660'),
('5a05404d-b4b9-4f9b-ad6d-3686c3e829eb','Usaquén','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Usaquén en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.010,4.700\n-74.040,4.700\n-74.040,4.830\n-74.010,4.830\n-74.010,4.700'),
('72c4c023-673b-4713-9df5-874bbe239503','Barrios Unidos','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Barrios Unidos en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.060,4.650\n-74.090,4.650\n-74.080,4.690\n-74.060,4.690\n-74.060,4.650'),
('896ec7c6-d91d-48b3-b9de-c4d8aca1a1f7','Rafael Uribe Uribe','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Rafael Uribe Uribe en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.100,4.540\n-74.130,4.540\n-74.120,4.590\n-74.090,4.590\n-74.100,4.540'),
('8d739e61-c213-491a-8349-eb150d265d06','Los Mártires','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Los Mártires en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.080,4.590\n-74.100,4.590\n-74.090,4.620\n-74.070,4.620\n-74.080,4.590'),
('9c24df2b-3984-4fc2-8061-eb4909c45cb6','Bosa','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Bosa en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.170,4.600\n-74.220,4.600\n-74.200,4.650\n-74.160,4.650\n-74.170,4.600'),
('a36cc78f-dd00-4282-ba8a-71fb2a871c76','Kennedy','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Kennedy en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.130,4.610\n-74.180,4.610\n-74.160,4.670\n-74.120,4.670\n-74.130,4.610'),
('a50e38e6-b441-4002-bec7-a119563fd240','Tunjuelito','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Tunjuelito en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.120,4.560\n-74.150,4.560\n-74.140,4.600\n-74.110,4.600\n-74.120,4.560'),
('a90177b5-dc08-4309-b2ef-38377373b48d','San Cristóbal','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de San Cristóbal en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.050,4.530\n-74.090,4.530\n-74.080,4.580\n-74.050,4.580\n-74.050,4.530'),
('bc43ebe5-e459-40e0-ba23-790ef9bda408','Santa Fe','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Santa Fe en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.040,4.590\n-74.080,4.590\n-74.070,4.620\n-74.040,4.620\n-74.040,4.590'),
('d84fdeb3-e0d7-4ad5-a876-4aa354db71b8','Puente Aranda','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Puente Aranda en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.090,4.600\n-74.130,4.600\n-74.120,4.640\n-74.090,4.640\n-74.090,4.600'),
('fbae4d71-f087-44a7-bb61-31748f0ccf8e','Engativá','2026-05-26 16:38:18','2026-05-26 16:38:18',NULL,NULL,'Polígono de geocerca automatizado para la localidad de Engativá en ConectaHogar.',0,NULL,'Bogotá','Bogotá D.C.','Colombia','-74.090,4.680\n-74.140,4.680\n-74.130,4.730\n-74.090,4.730\n-74.090,4.680');
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
INSERT INTO `jjwg_markers` VALUES
('36ced69c-f8fb-42a4-ae66-3706a18f1645','Conjunto malpole','2026-06-03 15:37:17','2026-06-03 15:37:17','1','1','Conjunto malpole',0,'1','Bogota D.C','Colombia','Bogota',4.64576483,-74.09921265,'castle'),
('97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 15:52:20','2026-05-28 15:52:20','1','1','Cannot determine address at this location.',0,'1','Bogota','Bogota','colombia',4.65984058,-74.10671997,'community_centre'),
('a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:10:48','2026-05-28 16:45:47','1','1','Cannot determine address at this location.',0,'1','Bogota','Cundinamarca','Colombia',4.65984058,-74.10671997,'factory');
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint DEFAULT NULL,
  `failure_count` tinyint DEFAULT NULL,
  `job_delay` int DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `manual_migration_tasks`
--

DROP TABLE IF EXISTS `manual_migration_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `manual_migration_tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `data` longtext,
  `progress` text,
  `phase` varchar(50) DEFAULT NULL,
  `service_key` varchar(255) DEFAULT NULL,
  `last_run_datetime` datetime DEFAULT NULL,
  `allow_failure_retry_action` tinyint(1) DEFAULT NULL,
  `allow_failure_rerun_action` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manual_migration_tasks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `manual_migration_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `manual_migration_tasks` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES
('32a31d1d-0cab-488b-8179-48d4be5eeeff','Reserva Coworking / Salas de juntas Apto mock-apto','2026-05-27 21:04:50','2026-05-27 21:04:50','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Reserva realizada desde la App Móvil Conecta Hogar por carlos alejandro maldonado. Apto ID: mock-apto-101',0,'400fdbe3-e938-4b6a-8deb-a459c22ccba5','Coworking / Salas de juntas',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2026-05-28 12:00:00','2026-05-28 12:00:00',NULL,'Planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('746a5e46-d353-4cd2-a92d-f74fd013929c','Reserva Salón Social Principal Apto mock-apto-101','2026-05-27 21:02:08','2026-05-27 21:02:08','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Reserva realizada desde la App Móvil Conecta Hogar por carlos alejandro maldonado. Apto ID: mock-apto-101',0,'400fdbe3-e938-4b6a-8deb-a459c22ccba5','Salón Social Principal',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2026-05-28 12:00:00','2026-05-28 12:00:00',NULL,'Planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('b039b746-1bd6-4223-b0d2-259d90a5416f','Reserva Kiosco BBQ / Asados Apto mock-apto-101','2026-05-27 21:02:06','2026-05-27 21:02:06','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Reserva realizada desde la App Móvil Conecta Hogar por carlos alejandro maldonado. Apto ID: mock-apto-101',0,'400fdbe3-e938-4b6a-8deb-a459c22ccba5','Kiosco BBQ / Asados',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2026-05-28 12:00:00','2026-05-28 12:00:00',NULL,'Planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
INSERT INTO `meetings_cstm` VALUES
('32a31d1d-0cab-488b-8179-48d4be5eeeff',0.00000000,0.00000000,NULL,NULL),
('746a5e46-d353-4cd2-a92d-f74fd013929c',0.00000000,0.00000000,NULL,NULL),
('b039b746-1bd6-4223-b0d2-259d90a5416f',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msg_queue_available_delivered` (`queue_name`,`available_at`,`delivered_at`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `oauth2authcodes`
--

DROP TABLE IF EXISTS `oauth2authcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2authcodes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `auth_code_is_revoked` tinyint(1) DEFAULT NULL,
  `auto_authorize` tinyint(1) DEFAULT NULL,
  `auth_code_expires` datetime DEFAULT NULL,
  `auth_code` varchar(4000) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2authcodes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `oauth2authcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2authcodes` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int DEFAULT NULL,
  `duration_amount` int DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
INSERT INTO `oauth2clients` VALUES
('5c439fdb-3541-42a6-a98d-3a861f4f091e','prueba','2026-05-26 20:34:02','2026-05-26 20:34:02','1','1',NULL,0,'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','',1,'client_credentials',60,1,'minute','1'),
('6826a248-4f90-4ce5-8921-23b857b7bbb0','prueba','2026-05-26 20:24:30','2026-05-26 20:24:30','1','1',NULL,0,'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','',1,'password',60,1,'minute',NULL);
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
INSERT INTO `oauth2tokens` VALUES
('0dffab68-ed4a-40c5-8e33-7df5439c9bab','','2026-05-26 21:46:12','2026-05-26 21:46:12',NULL,NULL,NULL,0,0,'','2026-05-26 17:46:12','7c1e33c7f8fbaf291e104b7b5420266e32bf744e4a53c674bdd07325cb6f069f1d4d12e99c47e8ef','e1d1a56f80cea1d23e8622b2c99c729347a0de7732e4143abffb66c33cfafb36c5aa03080a1d37f7','2026-06-26 16:46:12','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('12bbb059-dd55-42b1-99d6-89ee5f6d9847','','2026-05-26 21:15:30','2026-05-26 21:15:30',NULL,NULL,NULL,0,0,'','2026-05-26 17:15:30','1ac8ea108abf54097725404bc9f6c01f3077c8236222b92350094382d4adcefca63cbbf4e65c3741','212498e3b7b5f901496a583f7cce9c615ac1574a7d24b04d428006b88a736ba774e25b972d24bf70','2026-06-26 16:15:30','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('190d36e0-284d-407e-b6bc-7e7dc605d80b','','2026-05-27 20:14:02','2026-05-27 20:14:02',NULL,NULL,NULL,0,0,'','2026-05-27 16:14:02','bcc42f5c3763481564ce2f2e65e9315b1eeb47039f87309a6af436de3af34a90ac6ff6f5c92887fd','17b4c932113fa113d38aa5692fe8e5c4826953d6230e0c44b1c2bfdabe01624864799b3f188090d0','2026-06-27 15:14:02','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('3f299d5e-0b99-4d8f-8e3c-3bbba1efd4be','','2026-05-27 21:01:59','2026-05-27 21:01:59',NULL,NULL,NULL,0,0,'','2026-05-27 17:01:59','e6317d87a1e3ec5156178d803aaf7a534e798c121742762e5f454e92cd9112cded0d8d3fbc40d910','105e42ba18c77c084458f8fe1bbd92d33a5975a7d0a65facd47e9ea645cb73f8757e15b72f3568d7','2026-06-27 16:01:59','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('45d13abf-536d-4c66-8c9f-3dfc6fe6fb3e','','2026-05-28 15:45:57','2026-05-28 15:45:57',NULL,NULL,NULL,0,0,'','2026-05-28 11:45:57','a9feeab234ed6f82d9e8ffeb851dbb952741e07b3650e61410baabcd3d62a3f5700f3d015450bf5e','000b12ce99aae0e30c724369cf4d1e429b5426d4dfb467f4292ac37c1d873bbf833c7cf6e1f8318b','2026-06-28 10:45:57','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('4a49feb0-3e6d-4d7f-8237-f0998e45439c','','2026-05-27 17:05:05','2026-05-27 17:05:05',NULL,NULL,NULL,0,0,'','2026-05-27 13:05:06','c117d4ec1d082fb17e28b8c069c8afc21c103bbf378e134bdb2c1c4ede5c5ad4dfc21297595d1b04','246eaeaf7f85848288fc05f938cd174af77059d1429c61edade8715225fb5e9bd753955eb39974fb','2026-06-27 12:05:06','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('4ead3e97-80d3-485a-ad49-05cbafecadbc','','2026-05-26 22:54:25','2026-05-26 22:54:25',NULL,NULL,NULL,0,0,'','2026-05-26 18:54:25','927a1883fad397be0cb4d0b50eec27ad7c0e20714348505ecf65cf98c76ef7f39edadc17fbb0dc90','7e85e47a8420fddc34fff45deb82f53e35784194469b616dd055f27c48452fb54175fe3e45710797','2026-06-26 17:54:25','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('50d757b4-a179-4cba-bff3-0544db9d6d98','','2026-05-26 21:36:52','2026-05-26 21:36:52',NULL,NULL,NULL,0,0,'','2026-05-26 17:36:52','f8e39ce2d7717505bc10097ae3a3c2765a62f10c2cce2abb0a7f11a0d91b61ae5838b0a2b26a1aff','1f4cc7736a46650da4fda5581378be6d100e021a090bbfe75eaee55032f544b1261c65394e32af13','2026-06-26 16:36:52','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('53361217-57c0-481d-ac4c-e975e957775e','','2026-05-26 21:41:18','2026-05-26 21:41:18',NULL,NULL,NULL,0,0,'','2026-05-26 17:41:18','4c8e1571f0d6bf64013cd5986f07ab82147e1b5b5a40ff3163c604e4a2331d8aed5c8f0b32a9f827','1cc236d791546a51b441209f512f533a9ba22133b1e1b5b1571a0943a3ad40a6d8aaec164cd8a899','2026-06-26 16:41:18','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('53bd0f2d-0918-4713-b0d6-e9648621e257','','2026-05-26 22:55:36','2026-05-26 22:55:36',NULL,NULL,NULL,0,0,'','2026-05-26 18:55:36','dc8c220cd93aa9d0c79646bf3c85883107889b389739d16ca03c2487953670dba9df93a4bbbcd972','e17ef502bb5fe91e1a117cfeb2edb4c8ea86868f2c25e809e32d58566108d35af7f9ce8592e16124','2026-06-26 17:55:36','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('55c6214b-4a7a-4726-9c18-f43193de7ec7','','2026-05-27 22:48:55','2026-05-27 22:48:55',NULL,NULL,NULL,0,0,'','2026-05-27 18:48:55','5e58e0a6ebf1081e65f6202cdfa31d8a426433eeb3b02ad182202ae1c7573c2607696dfe015a9bbb','6392cfa3df8a1b26f4c299971b512fd4b030a142c715ebb31f22d27a16e42677e599986bd7968647','2026-06-27 17:48:55','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('5667cbec-3475-450c-a361-9b80903dec37','','2026-05-27 22:17:13','2026-05-27 22:17:13',NULL,NULL,NULL,0,0,'','2026-05-27 18:17:13','fa39188c2521482428073be3036999b861a4c28abadd802be2b2462ef34e6a93df339acfe8e37a25','4b9a2a938d7eecd562f09b1917cd3b53366b0c45de713d0b35092767d069f7883fdf8e90ba1dbca0','2026-06-27 17:17:13','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('58515aad-cd8b-4ebd-a73c-79c26463c312','','2026-05-28 17:03:07','2026-05-28 17:03:07',NULL,NULL,NULL,0,0,'','2026-05-28 13:03:07','b4ad02b5eb5afab8a7ff4fdc8e20d7a84602cd62b818768d0247d0595911cd1138000bc6e24ae72e','bbf51e630d67f4a02b6dc521773d4571ee8ab338dc0fb81bc3c4c9df20cc6ab0404e69f1f4437f00','2026-06-28 12:03:07','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('6037a6ee-9d74-4267-9230-4f24cca49405','','2026-05-27 17:05:22','2026-05-27 17:05:22',NULL,NULL,NULL,0,0,'','2026-05-27 13:05:22','10ef7f5be1c27c1b1724443b4a19f5ae6f84bcdea588c86a3d4255edf1d13fc34eb256803f0d7ee2','e1b96283f64529a3d4e39c3d927fbb0ada2f7ed1483114acac62d6bb05ce76683f6d60ed471e2fb2','2026-06-27 12:05:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('6b8ac173-c8be-4b80-9dc6-56cfaf18e085','','2026-05-27 21:37:04','2026-05-27 21:37:04',NULL,NULL,NULL,0,0,'','2026-05-27 17:37:05','c70fe7c8031ffb06eeb5a7418b7bad151491c453cdf411a8ed9525548dfec60fafc79798d4e43b78','52577888fa023ec62aa679b7ef557a3c57d0cee24cce1eb7b4cecb4842987c16277a3a5ba3469635','2026-06-27 16:37:05','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('6e68dce4-d692-4682-87f3-8bc5d42d6586','','2026-05-27 16:43:42','2026-05-27 16:43:42',NULL,NULL,NULL,0,0,'','2026-05-27 12:43:42','a0fce2a902dfa3da58526a0b07032325bba0bc7ec6886297d6602ce0eabe8e84f423f8e9d3f92b25','114913a43b01689c09aec53015c47ba7c8f236e6264ccd8a7d01b559011274f128535df20aa324bd','2026-06-27 11:43:43','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('7f2064e7-6da1-47b6-83f3-2bb235180175','','2026-05-26 21:36:21','2026-05-26 21:36:21',NULL,NULL,NULL,0,0,'','2026-05-26 17:36:21','c5aa8e37c5d157d51da34f3e03c64ffeec196107a6d89c928fdac7c0e3d372ae6aab483a99162306','72cec5039fceac61e3aff719851aa858a994528c0f674918cb154a430684832193f51948a0f4f39b','2026-06-26 16:36:21','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('83f4c488-fa55-4390-88d0-1c609a2991b7','','2026-05-27 22:19:37','2026-05-27 22:19:37',NULL,NULL,NULL,0,0,'','2026-05-27 18:19:37','b6a1717c4f5ed178c582b5c9853f61db1ab3cd96054de688ff246b315f5e7435e0a7d6056f6fb06f','d75da6e6b3db82c19cc35dbbf1a199e48de8137b15e609b76b0cdc3ff2166132e9e6b85f27c1adf6','2026-06-27 17:19:37','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('84ded438-cd5f-458a-a6e0-25e7ca5cab5c','','2026-05-28 17:04:06','2026-05-28 17:04:06',NULL,NULL,NULL,0,0,'','2026-05-28 13:04:06','29d04173f1cfd199bd91c1dfa6eda828d63175cb3b573f0a6ca07116db4dbdcb4d2499859a636bb5','f79c319c4fcca65b0093e434d4976e07f724925d254a97bb3f29986f38a41cd95fd2911d6ab54ddf','2026-06-28 12:04:06','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('85155dd9-946d-4da2-9028-4bb52513373d','','2026-05-26 20:38:18','2026-05-26 20:38:18',NULL,NULL,NULL,0,0,'','2026-05-26 16:38:18','9a59b2783629733d868470d0fefe8bd5390e36e8949fb48aa766044565ce7b343bb2f4bffe7cf53e','1253c5022c6d14c4479a13c31a6d37d7db917a66b3aa2545512154db7f937f3ceed08a6d921f23c8','2026-06-26 15:38:18','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('863cc9d3-1634-4d4a-990f-4bfa2e82f5f1','','2026-05-26 21:42:22','2026-05-26 21:42:22',NULL,NULL,NULL,0,0,'','2026-05-26 17:42:22','45e0f90c2883cd2c0cda1a93318eaa02a1380d506a8cdd59cc39cc0b3d2b847d6c750c067862d4bf','fa52ad97f7fa28502c8d4602f6c5e05668c5bd8c1370815604f67f052d8498ba4ba0721d32287066','2026-06-26 16:42:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('86c45555-81b4-4f0b-9f14-d3eb59587673','','2026-06-02 22:53:04','2026-06-02 22:53:04',NULL,NULL,NULL,0,0,'','2026-06-02 18:53:04','3da6a81a552de92c9afdf56ccc5dec75565f9cb7e1931f1a883c748fc3923288a97670da592c6c8d','a72eb975d726a85cb3424d89a5baffb08432e55be759fcd710f4ac02fd2e818ee28e71f2ac52da7c','2026-07-02 17:53:04','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('91923e5c-8458-4881-9235-edbe757748ba','','2026-05-27 21:46:36','2026-05-27 21:46:36',NULL,NULL,NULL,0,0,'','2026-05-27 17:46:36','e31307619b04c767df79ed6f969da8843ba5570a9c720e83ef1bc408aa586c70e47e796dbbd2841a','e56e99f5295d580b0a23c88b839ca69d70c43377fbcd0de15e6907ba89c5fffa99b4935f5a535eaf','2026-06-27 16:46:37','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('951208d7-2db5-48a9-8356-07692881cef3','','2026-05-27 21:01:03','2026-05-27 21:01:03',NULL,NULL,NULL,0,0,'','2026-05-27 17:01:03','1bb7c6058920d08dd7c5c364f356f5c4f6b142fe6f8b4d3ff4b27baaa9ebc9f0936850acf5b41028','4e61ac93ecfd6cc1f3bc99a5de0a2882b9d730847a675f7e9de6683fc84f72e745ef7c096c5b73b9','2026-06-27 16:01:03','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('9890c5a5-8b2f-4509-a984-a475bf6a906d','','2026-05-27 17:04:06','2026-05-27 17:04:06',NULL,NULL,NULL,0,0,'','2026-05-27 13:04:06','3de76da520aedf6000797781dc5b926afbdec7019c16492eb0fc7ff5c925528bdc76172ea5dbe537','936cbbca653cb0723529e46c8512bb4b805be12a7c19a10582f164cd5d4265332999562a57d22e45','2026-06-27 12:04:06','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('9bd6ead1-aeda-4f59-b443-c62af4aae215','','2026-05-26 21:37:10','2026-05-26 21:37:10',NULL,NULL,NULL,0,0,'','2026-05-26 17:37:10','a9c66dc5954b5489daebfce261feb11122b51174fa5da24cc052a4d1580b66f17883b80336f7d18c','004cefdecc221c17191a7d86accab206dd7cf28e76ac63384605cdbd5c603f7ca39c08ab138c13cb','2026-06-26 16:37:10','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('9c96f3dd-500d-413c-8211-89dc26489d8c','','2026-05-27 19:04:07','2026-05-27 19:04:07',NULL,NULL,NULL,0,0,'','2026-05-27 15:04:07','147c52737f5e1fe8cae7cb58d7950439e297ca1808bbc753ec8904decf07eeb9919c3e230728af2f','eb06f4e3f0437e8375e308ad776304775bdce3b347bf5c4573957168c04990ec0519b98f71a5c82d','2026-06-27 14:04:07','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('af0b2d9e-5d47-46fc-82e0-1a98924382c0','','2026-06-03 15:27:45','2026-06-03 15:27:45',NULL,NULL,NULL,0,0,'','2026-06-03 11:27:46','208278914ccd413ac39f48f476a9c17d73babe6cdddcc2ba604e9b66552bb88a6ab348972ab41df7','d953ba6e14ccf818286d94557e3df9547872973e96562795d8dc849cdda899f6cbb26c9c0f9d0ad6','2026-07-03 10:27:46','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('bb68469a-759f-424e-a1bc-609fecd8a935','','2026-05-28 20:57:05','2026-05-28 20:57:05',NULL,NULL,NULL,0,0,'','2026-05-28 16:57:05','2d2a2394a98971ea11822e216fac1cd71bae565b4f58176efc7b4e5d27e5399292a9b82e4b169b60','0ab00ca572d871f645447ca23cd2eaaf72f69cbd269c9f2eac0138df0aee2a066dcf23f7e32c0ad5','2026-06-28 15:57:05','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('cdbae404-b0ba-4d25-bfe2-4b2b5edb2089','','2026-05-27 22:36:51','2026-05-27 22:36:51',NULL,NULL,NULL,0,0,'','2026-05-27 18:36:51','97f2c37220d78cbb4d62c3447ef4bbaddc7c135eb148ed5eda1d542e413533cc4169d94132d57cb5','2cb3d12e9c86f898eed8e0bcc40cccdee104614f67e816787883eee2751ebaa56670d0a5f9929624','2026-06-27 17:36:51','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('cfcd5e9d-86e4-4b22-8511-9fd153ec5a7e','','2026-05-26 21:16:02','2026-05-26 21:16:02',NULL,NULL,NULL,0,0,'','2026-05-26 17:16:02','f8c6dca495b0d93b9cf5f1bb197e3c852a732f9d100cdc4b8654acb408c6c0c44f63c5150a275066','fb97172a0eb23d0dc184edf2a37d946a2bd4ac58bdcc5de0a3c85770628e9e78e52cf11d6d35af5b','2026-06-26 16:16:02','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('d614d4de-f964-44c2-8b78-1bc47776ca34','','2026-05-27 21:23:10','2026-05-27 21:23:10',NULL,NULL,NULL,0,0,'','2026-05-27 17:23:10','ad1df9c84538c8046feeffc48340943773546e76755394fe5da04a2f8fa7449838e884b61775537f','475410c3b24d3889f1fc85bcc083c90d35ab62414f339e31fbc2cfe5e96a78581f6c30f895e297bd','2026-06-27 16:23:10','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('da7aef25-c15b-49ad-8f46-fe2797e19d86','','2026-05-28 16:27:20','2026-05-28 16:27:20',NULL,NULL,NULL,0,0,'','2026-05-28 12:27:20','e652e37ad1922f50d83a667ff3649329b2f9e6c55fe6357f2d4d5d12a0430efa150a8db683f5cddc','75cd71abb37067ac913021e9ab9093711ee07636e638a26d7fce9ac24aef0b1629c6766796e48c87','2026-06-28 11:27:20','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('e31876f6-02c4-491b-bb8a-9f16fce9d53b','','2026-05-27 20:37:59','2026-05-27 20:37:59',NULL,NULL,NULL,0,0,'','2026-05-27 16:37:59','44738428f25c5a6c42460ed07d92cf87c61b0873e653ea7b88dcc6ccc587c509fa584a3463a6c5e0','f3a201847e4e0ff62fe9a488f0e8b78bd7b4ae017b6eb78137ce3450fd8777dbc1d74640ada37630','2026-06-27 15:37:59','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('e6b473a0-df8e-4cd7-ab19-2164b73300fc','','2026-05-28 16:46:39','2026-05-28 16:46:39',NULL,NULL,NULL,0,0,'','2026-05-28 12:46:39','d313ae94557887e0aa9a518bf37c88c3db932d5ec8055611d4a30df74f20c1bcf7ddcde9049c70a4','749216da533b12736e413be79f9645ea1e5667ac551de56076fe957f696f6008d4afb018f98079fc','2026-06-28 11:46:39','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('eb2fedeb-bf97-47db-a2e0-9865efacf395','','2026-05-28 17:03:22','2026-05-28 17:03:22',NULL,NULL,NULL,0,0,'','2026-05-28 13:03:22','64da68363d07b9eeb61c3369c8ae91dafa457c65e94aa815e3890c90a91bda4ffbdc2d402ae0e45c','e0446abb7deb178fa38290191629192e898daaa0aa743c532ea24887e8ab7cf4798c2cd950b0ab77','2026-06-28 12:03:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('f3c73275-0f7b-4f42-954d-e1fcb6dfc086','','2026-05-26 21:15:28','2026-05-26 21:15:28',NULL,NULL,NULL,0,0,'','2026-05-26 17:15:28','131ba901e29ce9f2f685e2be9bfb0d5377deddb4f6c511edcaf47604b3ad0309e44c671a68fc9b0d','96a5396dc22aee8cbd3ee4e3e0668e389c441e10e46d90a25ae819c66746390b1b2aeef72b791c8c','2026-06-26 16:15:28','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('f8a15c25-d070-47cb-9f77-f6da8e8371ec','','2026-05-27 22:45:10','2026-05-27 22:45:10',NULL,NULL,NULL,0,0,'','2026-05-27 18:45:10','d646a20ae79f3b583c064a02def7a587433a0f4a3dd0c03b63505d69b477efb6ea10dadd50f95ed1','0f1528c3c707a3b61bb1ecbb052a19cd5ba809a63a149dd77d5570a88ba48df1c98f2d203c8eaa31','2026-06-27 17:45:10','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('fae70b7b-b899-4b74-8050-9b1b39f51a97','','2026-05-27 19:59:18','2026-05-27 19:59:18',NULL,NULL,NULL,0,0,'','2026-05-27 15:59:18','d8fd30de6b32d00166e67da79edcd608b8e9717b5e201b4025865197d546fca507c112681411890a','c610f908c1e3669b410f3af08935e3738e020fdb4ff88233020662585cd0bb2d0eb9fc523b723b99','2026-06-27 14:59:18','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5');
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'no_auth',
  `external_oauth_connection_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES
('04103c19-bbff-4946-ba37-654705ac6d50','system','system','1',0,NULL,NULL,NULL,NULL,NULL,'SMTP','other','','25','','',1,'0',NULL,NULL,NULL,NULL,0,NULL,'no_auth',NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `private_documents_media_objects`
--

DROP TABLE IF EXISTS `private_documents_media_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `private_documents_media_objects` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_field` varchar(100) DEFAULT NULL,
  `temporary` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_documents_media_objects`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `private_documents_media_objects` DISABLE KEYS */;
INSERT INTO `private_documents_media_objects` VALUES
('1f15f9c0-f11e-64f2-84c6-a7ea30052d83',NULL,'2026-06-03 17:32:09','2026-06-03 17:32:09','1','1',NULL,0,'1','019e8f9d-9508-753e-abfa-6d790ca382a5',3838570,'image/png','1c8aa030-8421-4059-9078-a23c2cf8f9a9.png','[1024,1536]','caml_anuncios','a14cd58f-4f3f-46c5-8be0-593addae1d60','uploadfile',0);
/*!40000 ALTER TABLE `private_documents_media_objects` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `private_images_media_objects`
--

DROP TABLE IF EXISTS `private_images_media_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `private_images_media_objects` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_field` varchar(100) DEFAULT NULL,
  `temporary` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_images_media_objects`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `private_images_media_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `private_images_media_objects` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `processes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `data` longtext,
  `progress` text,
  `phase` varchar(50) DEFAULT NULL,
  `service_key` varchar(255) DEFAULT NULL,
  `last_run_datetime` datetime DEFAULT NULL,
  `allow_failure_retry_action` tinyint(1) DEFAULT NULL,
  `allow_failure_rerun_action` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int DEFAULT NULL,
  `time_finish` int DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int DEFAULT '1',
  `task_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `actual_effort` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`),
  KEY `idx_list_type` (`list_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`),
  KEY `idx_related` (`related_id`,`related_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `public_documents_media_objects`
--

DROP TABLE IF EXISTS `public_documents_media_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `public_documents_media_objects` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_field` varchar(100) DEFAULT NULL,
  `temporary` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_documents_media_objects`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `public_documents_media_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `public_documents_media_objects` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `public_images_media_objects`
--

DROP TABLE IF EXISTS `public_images_media_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `public_images_media_objects` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `dimensions` varchar(50) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_field` varchar(100) DEFAULT NULL,
  `temporary` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_images_media_objects`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `public_images_media_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `public_images_media_objects` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES
('0086e7bd-2efc-4eb9-a91b-b1b0a152baf0','caml_apartamentos_caml_control_accesos_1','caml_apartamentos','caml_apartamentos','id','caml_control_accesos','caml_control_accesos','id','caml_apartamentos_caml_control_accesos_1_c','caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida','caml_apartamentos_caml_control_accesos_1caml_control_accesos_idb','many-to-many',NULL,NULL,0,0),
('00bfe2ed-cd40-4b89-bdea-f349a5e6e16a','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('00fcda51-804f-4764-9113-b2d4a072f9b5','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('01f9c252-746e-4e04-a82d-9a0bb90609da','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0216e3e6-b1dd-4594-a28e-3d57336e290e','manualmigrationtasks_created_by','Users','users','id','ManualMigrationTasks','manual_migration_tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('02ad7a0e-00b5-4c45-935f-a0677f2210c6','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),
('02b07fc0-d37c-4bd7-a947-44615c141a46','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),
('03fac082-bc18-47fe-8c2c-9e1b42b9974d','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),
('04228223-ac75-4803-b603-bdcb7542651a','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0579373e-b4dc-4610-b0c4-3d226a6be9d6','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('05861fcd-d516-42f6-b4c4-dd551962b477','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('05e0d8e7-ed61-4741-ba6c-dc4e3c213c5a','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('05f49c57-73d9-4933-b954-308f897ab080','processes_created_by','Users','users','id','Processes','processes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('062f881a-254c-484e-a97a-28d46e3d1d77','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('06c48825-4760-4f57-8b5c-012cefb0296d','email_marketing_campaignlog','EmailMarketing','email_marketing','id','CampaignLog','campaign_log','marketing_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('07297202-a086-4b11-ae11-572626547746','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('07902d5d-eb7e-45bf-b488-2ecbd45d0637','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),
('081b71ae-7fa8-4c9e-ac73-b8bf7da8b4be','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),
('09f14bb9-5f2a-43a2-a8cb-0361eb29c829','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0a219020-052e-4b1a-9c83-d1d124499caa','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0a2952bd-0f3d-4436-b064-97e1c3bc5ec1','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0a3f7788-f18f-4fdc-9dcb-82c3f67367fd','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0a47ccfc-23c5-4b31-abe4-44b71c6c4263','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),
('0a8bf4d3-87d9-48f8-a7a3-8d1013f20bcb','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0acf133e-19a5-4631-bc9a-66eb9ee93231','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0aeb8323-d518-4014-918d-c28f3fe7a96e','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),
('0af1fc48-d4b9-4f64-9cee-5995a1001ba5','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0bdcf25f-4e49-4d21-b60e-b4c313caf19b','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0d7ca58c-7a3e-452c-aa26-173148071d45','accounts_caml_apartamentos_1','Accounts','accounts','id','caml_apartamentos','caml_apartamentos','id','accounts_caml_apartamentos_1_c','accounts_caml_apartamentos_1accounts_ida','accounts_caml_apartamentos_1caml_apartamentos_idb','many-to-many',NULL,NULL,0,0),
('0e27fa7c-d5ec-4fdb-92f9-7d61331e28e4','caml_anuncios_created_by','Users','users','id','caml_anuncios','caml_anuncios','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0e5c5392-ea93-4677-95b3-17ccd1897606','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0f5fc418-3941-4169-9ac8-4bafaffe4bd0','securitygroups_caml_apartamentos','SecurityGroups','securitygroups','id','caml_apartamentos','caml_apartamentos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_apartamentos',0,0),
('0f6ac393-3c68-484b-af21-1f65ffe8cf38','caml_vehiculos_modified_user','Users','users','id','caml_vehiculos','caml_vehiculos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1050a42c-9c71-4ce7-91f0-1a81e3074499','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('114962ec-1a45-4ef6-8a92-7e55044410d6','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('119b68cb-ff77-4697-bf6f-5d0ea2ec319b','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),
('11bb839b-9b9b-4143-a67a-39954ad54983','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('13fb9ca6-d9f8-4d3c-b532-7a172b2158d5','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),
('14926f45-0f59-4478-8be0-d685380562d2','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('14f6e539-12f5-40c4-95a3-b0821982ccd6','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('15e521a7-2940-41d9-bd8c-8432075974ea','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1790fb9d-c466-4352-b343-5e49f6f7fea2','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),
('190257d0-5501-4746-8b78-8df090bdd06a','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),
('19696710-5d3d-4337-9aa1-e0c2c4908bd8','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('19e2bc36-a875-4fe7-a1d8-0ee778e2bfd8','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),
('1a18f25e-c485-4f27-af43-140e51b7c18a','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1a52999e-d92a-47c0-91c5-3a7a74e2480c','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1a8db9d0-1e4d-4044-a887-11a9d4b2e683','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1ad3c154-edc2-4e5e-aaaa-cd1a9f1555d8','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),
('1c3db6c7-181d-478e-9135-69aaa62a5003','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),
('1c79baad-5a26-4657-b2a3-6667015c437e','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),
('1d5fc179-4551-47e2-bcf9-04f2d818f518','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1d727996-4093-4037-a30e-2ecaa0d617a2','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1dc28f73-4a1c-4c81-a7f7-3574c682b787','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1dcb8256-54ef-466f-a8b1-7b9a21d5d1de','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1e052d12-6a84-4893-84a0-7305acd7a83a','calendar_account_meetings','CalendarAccount','calendar_accounts','id','Meetings','meetings','id','calendar_account_meetings','calendar_account_id','meeting_id','one-to-many',NULL,NULL,0,0),
('1e0dcd38-09d7-4f47-88bb-0c0667d66d4e','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1f1f0886-b5aa-45ac-8f05-c04a4b85c3ae','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1f440a17-2d86-47a5-af67-60f8b65f20c1','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1fa6da14-f741-43aa-9993-eba2834a22dc','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1fe90dd6-477c-4daf-beff-380c12183bb7','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('20841775-0a0b-4f86-a93b-a4f6e50ca176','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2092e5aa-dda1-4848-a963-dc5e1a4ca746','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),
('20d16145-db58-42ca-afd3-53aef6eadcab','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('214a7853-fe4f-4d93-b231-c2c73762cc31','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('21567ec2-a046-45bb-ae65-f1e7c6f7c2bf','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('217553a2-233d-42b8-89cc-e46d978c1282','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('21a92322-113d-4fd0-8ce7-3b854058d09b','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('223283b7-edd6-4b54-b099-cff8804afa59','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('22f70962-55ec-4141-8b1c-b9f5bbe435cd','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),
('2348292f-dd92-4b20-910a-3355e15a9362','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('239fbfed-f06a-4ce7-8b92-80b01f63d025','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('23a04803-6ddc-4e4f-81f7-2eef5a74a102','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('240cd189-1964-4869-9577-935e655b149c','processes_modified_user','Users','users','id','Processes','processes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('243f986d-0fe4-4c66-8910-371d9865090c','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),
('246635d7-fc60-4606-96cd-2322d5bd6525','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('246c38eb-a332-481e-a29e-aeb54ccdebad','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('24b6cf8f-4656-43a7-96e3-d3879bd19d0d','securitygroups_caml_parqueaderos','SecurityGroups','securitygroups','id','caml_parqueaderos','caml_parqueaderos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_parqueaderos',0,0),
('256068cc-71ad-46ed-a75b-32a44f023cde','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('261ee8d9-d51b-4b83-b12c-768ff42514b5','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),
('2669b4c4-a401-4e49-8e70-b50caf3bfbf9','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('26c2b294-6dba-4b07-877c-a8fb15bd2673','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2747f30d-476a-44fa-9cd2-43913fe64b84','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('279b475a-356e-4cbd-af5a-b749c46ab48b','securitygroups_caml_control_accesos','SecurityGroups','securitygroups','id','caml_control_accesos','caml_control_accesos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_control_accesos',0,0),
('27fdb6ca-4153-4a63-8e4d-250acefecce9','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),
('280e322d-4301-448b-95a0-c9098e843744','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('285fe269-5241-4684-8d19-efad6b9fa60c','externaloauthconnection_created_by','Users','users','id','ExternalOAuthConnection','external_oauth_connections','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('28a6da4c-a444-4829-a207-4a3ba7474860','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('28c55256-815f-47b3-b116-f79993615a40','campaign_notes','Campaigns','campaigns','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Campaigns',0,0),
('28e3984c-6c4b-412b-a644-6bc0c16544e0','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2a13e7a2-3a83-4cc1-b705-ea83c6d4877f','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('2a4a3a37-3c96-41e2-aee8-622d37d78f31','asynctaskitems_created_by','Users','users','id','AsyncTaskItems','async_task_items','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2a555d89-21b7-4c7a-97ec-ea59e5304672','securitygroups_externaloauthprovider','SecurityGroups','securitygroups','id','ExternalOAuthProvider','external_oauth_providers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthProvider',0,0),
('2a681a1b-09c7-449b-9d0f-8ee9b2e8ba99','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),
('2a7630b3-c10b-430f-89ac-5051ad1f5afa','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2a7a0e40-70f5-462d-a550-8b819b3a99a0','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2a7d8917-a0ec-41f4-9a6f-181c9d28d1e5','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),
('2a878258-48f7-4bc5-a232-7afb88360282','securitygroups_processes','SecurityGroups','securitygroups','id','Processes','processes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Processes',0,0),
('2b893cf4-03e8-4d36-a319-6a584ca8c1bb','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2dbf5c2e-8e8c-4862-82b0-70e3ab76eed8','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2df1822a-ec9e-4668-998c-e67e419e09f8','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2ed59e01-d312-4006-9ce9-23ea11a3dd67','inbound_emails_case_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','create_case_template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2f72e9aa-5547-4b63-ac1c-0bf6953f5137','manualmigrationtasks_assigned_user','Users','users','id','ManualMigrationTasks','manual_migration_tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('31dc58b4-af9f-4af6-8eb8-0bf38f96609b','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),
('3214ce40-0403-414a-8adb-dc24afc7d99b','externaloauthprovider_created_by','Users','users','id','ExternalOAuthProvider','external_oauth_providers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3216689b-ab96-45fa-bb3b-90ed26b70259','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('3295c54a-2cf5-4b11-a749-ed08ecb9b9ee','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),
('330f52a3-53b5-4001-9d2c-1fbde8124fef','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),
('334752e7-7c16-4129-972d-a479e3038e54','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('339f880c-266d-4873-b544-93e2984e6234','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('34d2b52b-eeaf-4a82-952e-c658e2c2e17a','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),
('357b001c-70ca-4ca4-ba1b-26d966804cfc','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('35e04db8-79c4-48c0-a516-df4bbf1c7b21','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('36747fef-687f-44e1-b4bd-74227c8a12c2','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('367bcc58-96ec-466b-8050-e67c3af13ec4','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),
('36d4d3db-8c26-4296-87e3-12957e078e95','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('370b637c-5809-4a4c-b8f6-1e3c8df8fab4','securitygroups_caml_vehiculos','SecurityGroups','securitygroups','id','caml_vehiculos','caml_vehiculos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_vehiculos',0,0),
('371b5b1d-0a16-47d7-b032-302fc4a6b39b','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('371de2bb-63c6-418d-af7a-2fe313f8f3bd','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('373115ad-fee5-406c-98a1-3e2be477d326','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),
('37359f24-3427-4693-b764-cdc9a300777f','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),
('374620d4-357a-4d66-8f0a-9e5fe43898c7','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3796402e-3663-456e-a92b-ecc3ed085f23','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('37d0d030-bdcf-499d-b083-5fda23c9b580','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),
('37f94bc4-d4a6-444a-962e-f2b28ea738ca','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),
('381f6303-f9fb-48f4-afb6-cd5fae8ad34e','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),
('3928fb66-23a6-43d7-8d96-6772d2773e91','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('397015fd-3b31-4e22-b3e1-3bd745e7c529','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('398f2fb7-796e-4ce5-b3ad-fa4384f371f4','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('39ee4cdf-0d9e-453d-91a7-3db4e52648ba','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3ad5f02e-d763-4dd8-bf34-68698b52a11a','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3b20ad60-428d-445f-87a9-b2697f8da49c','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),
('3c06f529-757e-49c5-bc94-db791484d9d8','securitygroups_caml_anuncios','SecurityGroups','securitygroups','id','caml_anuncios','caml_anuncios','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_anuncios',0,0),
('3db78338-bf4d-4711-8bc9-6b62a7e645db','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),
('3dea6aae-7445-45dd-bfca-e56e82c1e2ad','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3e09bdff-040e-407b-b543-9c52096adc10','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3e31bd2a-69ae-4010-8d94-6b58dbee64d6','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),
('3e79b32f-f0d9-4bb4-8e34-77a112f69cac','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3ea4823d-74b0-4b3e-ae78-0ada2cb8c718','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),
('3fecfab9-a78a-48c3-8d17-e499052a67ae','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('400c6b75-dad7-48be-ac6a-4e4554c79219','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('411e1691-3838-4797-b603-aadcd982617e','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
('4179bc80-a349-45ea-845a-5cb1d2222c39','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('41ca887c-c2d2-420f-b2d2-fb0285a341d5','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('425076a3-4493-47f9-a086-090034d46d8c','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),
('425cca9a-3249-45e8-9245-f1dd64072715','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('428757ee-62dc-4f7a-8beb-6bea1385ed07','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('431adfa3-cd52-43de-9f23-dbdbd48a98f9','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('43f97702-6b4d-4637-b52c-69fbe92c4c9e','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),
('4430305f-8efc-4f20-9d39-994eed92e389','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('44bc0eec-28b0-4611-a846-e058c99ab028','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('44cce057-1520-49f7-a9b6-3a5f6ecd83e1','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),
('458c4711-130c-4c21-b8c0-87c2736eff2f','securitygroups_outboundemailaccounts','SecurityGroups','securitygroups','id','OutboundEmailAccounts','outbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','OutboundEmailAccounts',0,0),
('45dbf062-3ede-4f6a-ab7a-bc240f51a454','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4709b327-7c62-42a0-b6cc-c7af5e610727','caml_apartamentos_assigned_user','Users','users','id','caml_apartamentos','caml_apartamentos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('47d7e607-51b5-46be-8792-3c874a001cd5','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),
('4b5adcb0-c2bf-46ce-9d24-50aa17975945','caml_pagos_created_by','Users','users','id','caml_pagos','caml_pagos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4ba30110-2710-4da1-b875-402575af1308','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4c061dff-8a13-4ddb-883d-bdc268860126','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('4cdedc50-ba4b-4a08-b419-a0dd1fe5a8a0','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4ceeed11-6be9-46ef-8f3f-470437aeebfb','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),
('4d97d7bd-f3da-4442-ada9-e57c2ae998e2','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4ed0f78e-4408-4083-bcaf-27c349510148','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4f3ee7a6-5714-4b4a-89df-bb5c8c2c25c5','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),
('4f8f3a84-e28a-4963-8018-7f9e71a56297','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),
('5007cdc4-a820-456a-987d-04d3f27243f2','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5018b671-9bcd-4dff-b66a-ce0c9c251fe2','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),
('542625ab-00be-4587-9202-feee61642f5e','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('545618a6-c4c6-4209-8705-6d33c75469af','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),
('54f1a97c-39b6-4f15-a1e9-3bb29fc3ee03','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('5540c88c-aea5-4a64-8082-c41689557eba','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('55430899-dbd2-4389-8874-a03c0bb3f5cf','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),
('55885534-0c75-4529-940a-6a25689f3440','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('56047d0d-66c1-4ff1-944d-ca90517cdf8c','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('561a82b3-b801-401f-a632-f256211c1d31','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('56394ff8-e247-4f32-b9b5-c63659e56c99','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('56411aa4-189c-4784-b714-91222cc026be','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5686ea97-7719-4f11-9db3-6c8ae2f7e17c','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5688a8ab-4c6f-4d1c-8ce8-66ea363ceaa8','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('58ce0943-fb01-461b-b501-c563b9eb35f5','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),
('59014666-56b6-489b-bf09-b956ff0db559','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('594865f7-954b-4593-884a-6a825dbdca7a','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('59edf60e-4253-4f73-88fc-41cffbed3cc3','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5a186408-099f-4661-862e-ccf17716aba0','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),
('5a454081-2538-4255-8aa5-82d2424e4004','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5a69f7a9-3298-42d5-9867-10462eb49b0e','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('5a77ccdd-48ce-433b-9671-d98935e84430','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5aa8d9ef-d3ec-4f17-ad84-159df1eb2e9e','mediaobjects_modified_user','Users','users','id','MediaObjects','archived_documents_media_objects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5b2341d8-778a-48a6-bb55-adf9dab9c912','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5b5dd792-16f8-4072-a510-7d03d91dbe3c','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5b9ce356-08e2-47eb-8cf2-8cfa5a1cabe8','surveyquestions_surveyquestionresponses','SurveyQuestions','surveyquestions','id','SurveyQuestionResponses','surveyquestionresponses','surveyquestion_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5ba3f9f3-e7cf-49c1-96a3-da3d547df484','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),
('5c07c310-36e7-42c4-9bee-f6c9d32726c9','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),
('5c4f6bd6-7555-4b81-98f4-e02cb1e51105','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5d8aa273-b391-4988-962d-fe1e0157d865','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5dd9e977-a738-4ff7-995d-777db5f3626b','caml_pagos_modified_user','Users','users','id','caml_pagos','caml_pagos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5e1823b3-6181-481a-a2ea-e2e46e857ea7','mediaobjects_assigned_user','Users','users','id','MediaObjects','archived_documents_media_objects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5f0e52c5-e004-45ca-9929-005a7d2cf385','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5f472567-c5ee-4af9-b79b-01acf4818a0b','email_marketing_survey','Surveys','surveys','id','EmailMarketing','email_marketing','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5f573313-af89-403f-bff7-84d83b2f36e2','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5f74df86-e303-4ec7-85c2-1c7ca8566c10','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('60148cbe-52b4-409a-a540-0846d3112d44','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('6065b590-b9b4-4a38-961e-df1d9273afbd','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('606ee8a9-20a9-447c-a4f3-2cc0db5874b5','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),
('60ac9a86-c235-4c02-8a9a-4bb879f34d64','aos_invoices_caml_pagos_1','AOS_Invoices','aos_invoices','id','caml_pagos','caml_pagos','id','aos_invoices_caml_pagos_1_c','aos_invoices_caml_pagos_1aos_invoices_ida','aos_invoices_caml_pagos_1caml_pagos_idb','many-to-many',NULL,NULL,0,0),
('60ed272c-badb-417d-bde9-8b9d3f8f0b12','mediaobjects_created_by','Users','users','id','MediaObjects','archived_documents_media_objects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('60f286c6-159a-4e67-b4e9-47d5bee58ed0','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6170e37e-adb1-4e79-b133-296cfda456dd','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('61b6395a-5427-4a40-b3e1-409c0ea50d8d','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('62a9a2ec-bfca-46fd-93b0-a44401e737d1','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('62dfe34f-318c-4afb-8705-6bc0ac7b25d5','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('62ef8a87-d9fa-447b-9cbb-7bce8eec7ea1','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('63737cdf-9aa9-4507-bbc0-88a6477659b3','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6432171b-9ade-4eea-acbe-6b52ddf195a1','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),
('6469dd8d-5052-4178-94ca-cbff29200ba0','calendaraccount_modified_user','Users','users','id','CalendarAccount','calendar_accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('65e690c8-f387-4548-a749-4d302a3ef81c','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('66cde904-2f49-4b37-aebe-15ba1e694ae0','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),
('67441bb5-7f66-49bb-81bf-490effbee72c','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('678f5268-74e8-47eb-9913-61dd0852a862','caml_apartamentos_modified_user','Users','users','id','caml_apartamentos','caml_apartamentos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('679ec8ef-ea58-42eb-ac69-66d024991a70','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('67c43371-6628-4e62-9d1f-8af0a4ab6bc6','securitygroups_externaloauthconnection','SecurityGroups','securitygroups','id','ExternalOAuthConnection','external_oauth_connections','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthConnection',0,0),
('6952b142-fdd5-499a-9b8c-a20d1f1ce5ed','emailman_assigned_user','Users','users','id','Emailman','emailman','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6966eb40-e258-4524-8812-a528510741b0','outbound_email_accounts_email_marketing','OutboundEmailAccounts','outbound_email','id','EmailMarketing','email_marketing','outbound_email_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('69aba0d7-a89c-4e59-9db9-48057303edee','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('69ff80a8-827e-46cd-894e-caa557472aaa','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6a2d5282-183b-43c4-b931-d6dffa338ce1','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),
('6a469ea4-3af0-4c0f-b9b6-7a569a7f5f2f','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('6a881fbc-b63c-4dad-a638-a2d067bc4064','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),
('6acc015e-7dbe-4ad3-ac14-614f617aa0d2','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6ad9f233-5d29-4562-869c-88ba08acbc55','oauth2authcodes_assigned_user','Users','users','id','OAuth2AuthCodes','oauth2authcodes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6b70e762-1747-4ce3-affa-f705b8de092f','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6bc304f5-b6be-4fdd-9205-c46f9018af10','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6c6104d8-1d41-47ea-96a4-9085fb6002f9','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6d3e564e-5f6e-438c-ae64-393019826e92','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6dc06fb8-0bf3-44a5-a2fd-8b20cfa66fc0','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6dc5461d-4639-468b-bf1c-670a4a6d81c1','caml_apartamentos_aos_invoices_1','caml_apartamentos','caml_apartamentos','id','AOS_Invoices','aos_invoices','id','caml_apartamentos_aos_invoices_1_c','caml_apartamentos_aos_invoices_1caml_apartamentos_ida','caml_apartamentos_aos_invoices_1aos_invoices_idb','many-to-many',NULL,NULL,0,0),
('6df04a2d-d297-4b3c-9d9c-b19bf7940645','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6ea9305b-4c40-41d4-a758-cf941207042e','oauth2authcodes_created_by','Users','users','id','OAuth2AuthCodes','oauth2authcodes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6ed106a3-0a76-4b52-9a53-f4d58e821ac5','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6fbb30bc-18f6-45ee-a0f8-39181f5e7195','outbound_emails_external_oauth_connections','ExternalOAuthConnection','external_oauth_connections','id','OutboundEmailAccounts','outbound_email','external_oauth_connection_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('704a5552-1cb8-4779-9272-b5f0238b03ed','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('709f8522-de8c-40c4-ad4e-4745175b8c3f','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('70e565ee-918a-4deb-8c31-bda8b61baea5','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('71ef2768-4423-4690-8f3e-3050ccd86f97','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7245be3a-2a8d-4aa0-b174-ad7c5ebfa902','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7256d4fc-7e1f-4f29-a6bf-ba14b789226c','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('726bd8b0-97fb-4336-8de4-2e1a59aca645','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('72bac897-88a0-4786-878c-e2fe298a51db','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('72c7d3b2-9fcc-4ae2-8447-0ba090f2e5ea','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7331e9c6-7159-4bc4-802e-0a6eea7b79cd','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('73edb59b-bc92-418b-a14b-12797c08c9ec','asynctaskitems_modified_user','Users','users','id','AsyncTaskItems','async_task_items','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('745d8759-fb5c-4fe7-96ca-344e854ebe26','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('74810868-40b0-400c-b195-3e2c445f4eb6','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('74b013a2-37f8-4c48-af42-ef0fc217c0aa','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('74cffa11-bab0-4b37-a8a9-825cd8a4afb9','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('74e3a4ab-3b3b-49fa-ab9e-31bf39542c98','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7617e366-d4c9-4a6b-ab77-4841b3955337','caml_tarifa_modified_user','Users','users','id','caml_tarifa','caml_tarifa','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('76936ba3-174b-44ab-88a3-5507ce72bebd','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7818992a-7dde-4680-85fd-9b720b987ced','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),
('792a69cf-9557-4475-9252-e5adeadfbada','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7948e0c2-a66f-4457-a73f-263203e26a39','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),
('79864dcf-7531-4d2a-99a9-1f6fc368f07d','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7a693d41-3b70-4010-ac82-66ab7b94dfd6','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7adc75ed-b6ba-4f92-a113-4b10a08ba699','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7c24f3b5-32dc-43ba-8ec3-d9d633bd8712','users_users_password_link','Users','users','id',NULL,'users_signatures','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7c295f9d-3c93-420e-9fa2-914bba41cf40','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),
('7c8508f6-9623-402d-ab3b-8feb31006ac7','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),
('7c9bd4ae-7709-498d-9175-9261529fc0b6','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),
('7d2cbc67-8c53-4062-8b4b-f0ff06eb6345','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7dcdaba9-8a4e-4e94-b470-bda94e335cf8','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7e0681d9-0584-40ce-a1fa-c411eb3168b6','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7e47b35b-976f-408d-b310-77a47f7c09f7','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('808dbe9b-c5a2-4185-b794-6af79fadafaa','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('80a82a78-0a5c-4400-af71-3600b9720384','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('8117a024-9b6b-4f59-a3ac-c7e607c2b250','caml_parqueaderos_assigned_user','Users','users','id','caml_parqueaderos','caml_parqueaderos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('81e2219b-134d-462b-9310-48c53e62ffde','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),
('8215d421-ec25-4a69-9b6c-2e287135b73c','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('8312be33-fbb5-415c-bc16-27cbcfe941bf','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('83b14e4c-7997-4f27-91d0-9e419ffe9147','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),
('83e69f09-3f88-4947-952e-64f58dec708d','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),
('846652e7-576d-41ce-9542-4cc3364e2e1d','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('84925c58-f307-402f-8f02-16326185cbcb','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('84d40683-97c7-47f6-a485-7b1f03b0f8ce','caml_parqueaderos_modified_user','Users','users','id','caml_parqueaderos','caml_parqueaderos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('86747b5c-93f8-4544-b10c-ffa170934aa3','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('86f81d50-898c-42db-8661-b1856cf7e84c','calendaraccount_created_by','Users','users','id','CalendarAccount','calendar_accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('87484d3b-5bfd-4d8c-b082-f517a4ad94f5','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8929d5c4-d23f-44c8-8bf7-62c67d835407','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8942cf00-1ead-42f7-b047-6978b94e90e2','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('897cb7c2-c84c-489a-b230-2ad49e2ce0ee','caml_vehiculos_assigned_user','Users','users','id','caml_vehiculos','caml_vehiculos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8a44bb2d-3e5a-4370-948f-8be9264c3194','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8a970c05-642c-4805-866e-9fdb41b76b40','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),
('8abb835c-35e2-4ca1-b2ff-9dbc6db6dc5d','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),
('8b09fcc8-869a-42c6-86c2-3f90d8fa24eb','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8b34a7b2-5eb0-4592-baae-57439ae4c7bc','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8b398b13-d615-4040-ab4c-287d99fb11dc','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8b3d1f69-358e-46c9-b516-5b662a5b557b','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8bc055f3-caf7-458d-8e3b-7d20c3aaa59e','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('8bda3cb7-8e78-420e-8370-a1f09d206998','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8c67d3b1-daed-46f0-9c5d-c45737aec39b','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('8d63a3ce-221d-4515-b955-f103cc08a8b7','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),
('8dd3af87-165c-489c-a282-5f8d0db1c7e0','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),
('8e2a7c0f-9cf7-4e72-924e-c39d46cb852a','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),
('8e6c1090-8651-4e28-9f3e-c8dfacb51eb6','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8f7eb7be-bb91-4865-a926-9c8aafe3d703','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('905d3565-1378-416c-8bb2-79927d63a23b','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('91327a0b-a87d-4bbb-9006-51706cdd6c9a','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),
('916520a7-564b-4cf6-919b-dd3c481b2176','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),
('916a117e-9ea9-43e9-80ab-97ed54b06d65','calendar_accounts_calendar_user','Users','users','id','CalendarAccount','calendar_accounts','calendar_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('91c0ec95-c6f9-494d-9f0b-103dc4584145','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),
('924ab1e0-43f9-4bd7-b6bb-87828c079eb4','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),
('9282f0d3-2ee3-4db0-ba94-55b01d488411','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('93338016-f435-4f4c-8274-b84f05c742ab','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('936e40e1-25c1-4d11-9024-3cdb6371e97d','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('93795b98-61fb-4bc9-a5d1-fd5085faabb7','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9461ff93-8d75-42c9-9e62-6391435f6735','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('94872559-4eb8-4204-9129-c401e31ba877','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('94f269b2-2887-4faf-aa52-c3b26c65a0f9','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),
('9502f4af-4c3d-4099-a785-1ad55da77956','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),
('9560210a-76e9-4d16-b8de-22d6f16adee9','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('95afe049-e283-402f-8d2d-96d2a583ca9d','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),
('964403bd-233c-4133-847d-3fbcb8af13b2','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('967c1c32-31e7-45f7-97ee-a77d59cb0580','external_oauth_connections_external_oauth_providers','ExternalOAuthProvider','external_oauth_providers','id','ExternalOAuthConnection','external_oauth_connections','external_oauth_provider_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('96a56734-bc3a-468f-82ea-9e775a120d99','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),
('96d852ad-c6cc-475a-8c28-6f3d6059d7b9','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('96f8284e-f68f-431b-b1ee-86b23ab6bb28','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9751b562-54b6-4c7d-8dc4-0718ca1bbb2c','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9950a626-e89c-4137-bbe4-272212e846e3','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('99d3b37a-951f-4359-afb0-d5b0f93ec88c','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),
('9a0f3650-f90c-4f58-8dca-bdb8d8f855f6','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('9a39a6d6-64ab-41e4-a68d-3aa357d5413e','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('9a3a8c6a-590b-4d9b-a88f-c6cc2189eae0','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9ad43996-f895-4db5-aeee-d9880bf95692','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9aecf117-e542-473a-a4e0-b5af7f704f4f','inbound_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','InboundEmail','inbound_email','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9be66af9-83be-45e4-918d-135bbe2a1cd3','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9c0aa242-f584-4846-b66a-18b5f0c62233','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9ca9bef0-5cf4-402a-8097-3b0a834edbd2','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),
('9d007417-be12-4c9d-82d0-aabe38344d7c','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),
('9d069b37-f46c-446d-89d2-7acc48e8f9b4','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),
('9d18f6eb-565c-49c6-9519-ca0f96d7d593','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9d581f5e-f2c7-4734-b82d-1cf97fbbf399','caml_control_accesos_modified_user','Users','users','id','caml_control_accesos','caml_control_accesos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9db4361d-029c-42bf-85a1-baa9de42f2a5','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('9eab63f1-2842-47b4-a710-c156d58c0209','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9ed21562-5299-4906-943c-05e2e2597896','caml_apartamentos_contacts_1','caml_apartamentos','caml_apartamentos','id','Contacts','contacts','id','caml_apartamentos_contacts_1_c','caml_apartamentos_contacts_1caml_apartamentos_ida','caml_apartamentos_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),
('9f8e54d4-e036-45dc-a687-c926e0a73f4d','calendaraccount_assigned_user','Users','users','id','CalendarAccount','calendar_accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9fccc99b-b250-4308-90d6-f7814ecdc58d','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a00785c8-bd25-4778-a299-879750783146','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a16822b5-32d4-479a-b7d1-84cf34252417','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a1b76530-5fdd-43c2-a50b-f9e8a94b1638','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a3614029-46b5-4787-a6cc-1c04725e4867','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),
('a3cd91c4-e240-455d-9711-85a8e60e570c','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a3e97f33-b6c0-4512-9424-347296635579','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a4abb4ba-4f54-4379-99e9-aa131a4e96d0','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('a4c8ca53-b927-412a-9371-e599e3643865','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),
('a4d46a7b-5b43-440e-9ef5-cabdabbba82a','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a6352fa5-98db-459b-a3b6-c50559fefe5b','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),
('a70f83ba-c812-46ce-b977-32e23b38b482','email_marketing_emailman','EmailMarketing','email_marketing','id','EmailMan','emailman','marketing_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a73aa4e3-ee92-497f-ba9e-41ed2b907118','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('a764bd85-f0d2-4f01-8da7-58e9b7c1593c','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('a7f9dd3e-ef64-4db3-a873-2a6972cdf360','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a83277e4-5653-4ced-a25c-c8fca1d0d670','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('a843a024-d59e-49e4-85a6-0a72ed758a82','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a86b5bdf-b93a-4c2d-b8d2-69c1f2dff90b','caml_tarifa_created_by','Users','users','id','caml_tarifa','caml_tarifa','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a8f2eb5f-7caf-4342-a89b-f36b6c8777a6','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a91cda46-f3ab-4fab-89c5-08573773588a','caml_control_accesos_created_by','Users','users','id','caml_control_accesos','caml_control_accesos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a966b4f5-ccbf-4351-9861-53ba76f0ec24','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),
('a971839c-de24-4956-868c-6492e34fa571','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a98502d9-4cdf-46ed-8461-fdeadfc68b1e','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('aa506b18-a8da-467c-91d5-b21af1ca0c63','caml_vehiculos_created_by','Users','users','id','caml_vehiculos','caml_vehiculos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('aa9f4265-670d-4a10-9688-3a470335f019','caml_tarifa_assigned_user','Users','users','id','caml_tarifa','caml_tarifa','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ab9c46f7-e0e7-4ef6-a0e8-f125969dbf91','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ac7da330-430c-4473-89fe-e20039d26da7','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('acaf34a9-7e6d-46fc-bf45-b5c1c0b56acd','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('acc506f6-1a0c-4b0a-9703-3f76a1c70c55','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('acdf8842-49b7-4e19-9764-bdefb4caacba','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ad0faaab-2b3b-424d-a04a-4e53126ff037','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ad54bef5-24c9-4661-b709-452e95b6db2a','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),
('ad872ac9-5049-4b54-aa65-6a14fba244a3','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),
('ad960261-78e3-4018-8463-bf474ea39d31','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b0695636-5d2a-419a-9b44-d565d31acfdd','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b0911643-f721-48a9-8654-19bbb3d2593d','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b13b42ae-7719-48bf-b2c4-d702f2e5c4e9','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),
('b1790ce9-da08-4a6e-a454-61033c3855f7','processes_assigned_user','Users','users','id','Processes','processes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b326d49f-1a97-4093-985f-0e15b5cc4707','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),
('b38c1782-a5b0-4431-b99a-c8e1bcc345bb','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b4402f97-aff9-4a98-b7e0-149d0f12f881','caml_parqueaderos_created_by','Users','users','id','caml_parqueaderos','caml_parqueaderos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b4c4851b-55ae-4595-8c83-a6cadb82d1cb','inbound_emails_autoreply_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b55a26ee-134c-4c7c-9493-b0e6d87d1999','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b5f6fbde-80fd-4b7f-b745-0bf5fc7408c8','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b5fdfaa5-73fd-4854-a89e-be457a7f286d','oauth2authcodes_modified_user','Users','users','id','OAuth2AuthCodes','oauth2authcodes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b610982c-19fa-4ad1-8bd9-d67902ee771d','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),
('b824e35a-8061-4ef5-ad89-04bc5cce232e','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),
('b9714b57-a1c0-41dc-83aa-3e0742d70184','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ba0b0131-af83-4f5a-89bc-35ec3dc0b7bb','email_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','Emails','emails','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bacf3f4c-1ef8-44fa-beb6-8e5bc3e13e5e','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bad64632-3ec8-4d7d-a527-d75baafe6578','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bb2fbe50-781d-4ae3-90c3-4a2aaadb18f7','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('bb4aab9b-fed8-45eb-8d03-83f95338ec1b','externaloauthconnection_modified_user','Users','users','id','ExternalOAuthConnection','external_oauth_connections','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bba262ac-f9ab-4b87-b41d-dfb7af4b78f9','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
('bc53552a-72bd-4000-a15f-c3365edb378c','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bc928db8-014a-477f-9599-52264d666aae','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),
('bd8f0493-8bd2-4cfb-8894-f3ade59c936d','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('be6c1460-b6ff-4a73-9ef7-c5d78bec8526','surveyresponses_accounts','Accounts','accounts','id','SurveyResponses','surveyresponses','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('be748910-c203-4bd3-97ec-d41c84e56286','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('be76bc94-4237-40a4-b52d-2611d54b0d9e','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('bf50982b-0693-45e9-a420-c9ef29303327','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bfab8b1d-58c0-4037-9694-d7963b1e3141','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),
('bfb5aab2-b0c8-4aed-95b5-a6d9516049dd','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c034c093-f175-4e5e-992a-f1085697a0f2','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c04971c9-56dc-4403-ac5d-d589c3cd6899','externaloauthprovider_modified_user','Users','users','id','ExternalOAuthProvider','external_oauth_providers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c0716890-831b-4a0b-aae8-2e11ca1068f0','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c0d04ccd-4138-48a8-90ad-fd6e4c04ed23','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('c0daabbc-3a7c-4395-9717-1194df35fb55','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c1a0c602-ebca-4a2a-a32d-bed34758e6a1','manualmigrationtasks_modified_user','Users','users','id','ManualMigrationTasks','manual_migration_tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c2ff9807-ebe7-45cb-a02c-7d7685748123','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),
('c33bf787-d098-4779-8b6d-70c51c0d675d','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),
('c3f9a95b-6342-4b58-915f-6c14dfd887ef','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c4054833-99f0-42cd-8faf-90346935059e','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('c525e89e-1d79-4c8d-ba9e-9eb68b9eabec','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),
('c54273c4-529d-4c77-aa29-a5ea5deb76a2','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),
('c553fb9c-7b22-43ea-a529-45f81f92cd81','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('c6e14518-14c5-4e51-8275-f3dadb080dca','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c8189a87-5621-4c29-9e5f-7b7cfc338b03','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),
('c8562700-47d3-47e9-8728-7ce7bf4dcd76','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),
('c8c8c1b2-4cd3-4aa6-898c-cfd21cff1946','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c8fbc277-e7cb-432c-9b63-8b8279467002','inbound_emails_external_oauth_connections','ExternalOAuthConnection','external_oauth_connections','id','InboundEmail','inbound_email','external_oauth_connection_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ca168489-59c5-4987-90af-5d10a0143dd9','securitygroups_inboundemail','SecurityGroups','securitygroups','id','InboundEmail','inbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','InboundEmail',0,0),
('cb3c2fac-8cda-4764-b18d-047d7693baf9','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cb86186b-496e-4f3c-8ef1-da60d44f3b02','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cc33dded-89fd-46c4-900d-176bfff89d55','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),
('cd2c7fa1-5053-4d28-bb6d-d1ec094edd70','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cd8c59f7-c59e-4c30-9ab5-dc0dbe6cb95b','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cdac8aa5-1753-46f9-a4dd-292ad6805d5f','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ce21f6e2-f69e-438c-b3d3-20dbecfca7fc','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ce41a439-6729-468c-8135-09307422d5e0','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cf3c9e40-105d-4963-8885-46d36cb7344f','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cf7a1286-d3fe-4e07-aa8f-57c5dc5bb845','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cfc79cb3-1411-4494-987e-144b5f399619','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d00b0e86-f434-4704-a524-caac81db51da','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),
('d0acbff7-2689-4fe4-8312-745ceab2c14c','securitygroups_calendaraccount','SecurityGroups','securitygroups','id','CalendarAccount','calendar_accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','CalendarAccount',0,0),
('d1c90221-2cd7-4d34-8061-16695bd659e3','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),
('d1cfaae1-b5ea-4c09-a525-77862853133d','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d2aea0da-0a78-48db-9fd7-bb47723a2548','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
('d2d2d3ab-a440-40c5-b671-cd419ea25cff','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d4670158-e8dc-4fbe-9217-3c2f05a1baf6','outbound_email_owner_user','Users','users','id','OutboundEmailAccounts','outbound_email','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d4ce5ebf-808f-400d-bf30-2d5caa5facb0','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d5ddfb80-0c5f-4047-8392-9202a4944016','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),
('d5eb691c-834e-4a6a-8d10-cf7deff46932','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('d5f9333e-d2c8-49ef-9c3e-42573250040b','securitygroups_manualmigrationtasks','SecurityGroups','securitygroups','id','ManualMigrationTasks','manual_migration_tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ManualMigrationTasks',0,0),
('d616f1a9-c9f1-4fac-b8ef-a9b674ad5c1a','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),
('d67de8d9-a180-4ea6-bde1-365f33c6f6fa','prospectlists_assigned_user','Users','users','id','ProspectLists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d727d78a-b5d6-431a-9c32-e4e4253ae6a2','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d79df2ab-fa27-40c4-86a2-a1dbe9872aa4','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d7f7cbfe-10ad-47e3-8721-d517a3350475','email_marketing_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','EmailMarketing','email_marketing','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d819e590-0cc8-45b6-9d2d-1d9010635066','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d8b01ab1-9ae0-4e8c-b271-9282f17cb1dd','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d926f852-c2dd-4927-b9cf-09d80e4b003d','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d9551d26-7753-4ff2-9aeb-435e21b21a64','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),
('da4400a6-ea2d-4c2b-aa95-2e02a89a708d','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('dab7d524-0cf3-4da2-9a6f-c7da31e8d28d','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('dc649eec-7b4c-4102-bf95-666ed0870794','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('dd1aa6de-d3a8-40f0-a728-ae31a17cce42','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('dd8226e2-2f3d-4f87-a577-d74c2911c783','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),
('ddb72ae7-93c6-4d6e-a94f-ad821948121e','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ddc1556a-1502-4b96-b7ac-66940c97763e','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),
('ddea8339-0a00-48d0-b5e7-f79a833b0ae2','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('de3c0823-33a2-4952-b7e1-1fccd3c2d082','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('dea90331-44c4-4e6e-8759-8f280e64bfde','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ded02627-3633-4f78-9a7d-a212f5105b0a','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),
('df25e89d-788b-40cf-9967-f0e929c773aa','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('df65a4eb-89b8-4ef1-802e-98628a550f4b','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),
('dfeaa82c-9ae2-4971-87f8-f8b3aedd8569','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('e03bac3b-dc67-4950-a9d7-1e4d3280adba','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e0f0fc25-8c66-4333-bd9f-4daad13402d5','caml_pagos_assigned_user','Users','users','id','caml_pagos','caml_pagos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e1735e4a-a44b-497c-be15-e58c22f5205c','securitygroups_caml_tarifa','SecurityGroups','securitygroups','id','caml_tarifa','caml_tarifa','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_tarifa',0,0),
('e1cbb728-dc2d-419b-b9bb-fbfbe739fb5f','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e1e87e98-afc2-4ac2-9c7e-ac362be162da','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e1ed50b6-246d-4bca-ab64-885d61dfbe1e','caml_apartamentos_created_by','Users','users','id','caml_apartamentos','caml_apartamentos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e224a1b6-4255-4371-bb56-f4ebae45875c','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e257b3e7-9288-4b2b-9643-973100a5c931','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),
('e2d9687f-f74c-47cd-9278-71dc5bf35af9','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),
('e3577806-a9fb-4930-95ab-19abd70f69ed','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),
('e378e3fd-1405-4f32-a361-30e54d3062cd','caml_anuncios_modified_user','Users','users','id','caml_anuncios','caml_anuncios','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e3c6afef-12e1-469e-a251-7c8056faa02e','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
('e422c30b-7ef7-4d45-ab2e-e73dc4d23e62','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e4595adb-977f-45db-bfb8-0c64787bb63f','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e56395f7-324b-480a-9376-9fbcd0392e2c','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e59fe740-cb58-4372-aa3c-53406d220937','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),
('e6496a8f-bf74-4d11-85eb-6c13fdd07bfb','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),
('e65a6bcb-c98a-414a-a45f-5b66276752b7','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e6a25267-8a6d-45a1-b835-49bb74ffc89b','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e6e09363-1871-4542-a53c-512c4ec1bf58','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e78635af-4cb3-46c2-9b87-3b03c0213610','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),
('e838a9f1-4b64-4c11-89c1-03a9851dca98','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e944ec68-81c8-4cbe-be7e-6b87e69ef9be','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e96ee7af-bbb3-4e3e-becf-7ac6a0d4af7b','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),
('e9f4a7ba-27de-43a9-8fc5-d4278f01618a','securitygroups_caml_pagos','SecurityGroups','securitygroups','id','caml_pagos','caml_pagos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_pagos',0,0),
('eacf272e-3773-4838-aea9-562f851b990c','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),
('eb02ab46-f35c-44d0-ab4a-0188045a39b9','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),
('ebf98a5e-aa73-4b93-a7bc-92f9728b31b4','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ec1c2019-4494-4f10-8c2e-bdb640494230','securitygroups_mediaobjects','SecurityGroups','securitygroups','id','MediaObjects','archived_documents_media_objects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','MediaObjects',0,0),
('ec1ea4f7-c9b4-4715-8b7e-6554d53562ec','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('ecb42500-aa98-4282-8909-84d4e9fba8ba','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),
('ed6f50b0-0465-4d1a-b656-fe96f7c32561','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('ed8b7e89-3ad3-47bc-9108-1fcf4b458a1a','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('edb9c20e-40e7-4e89-9157-ea5fcbcf7d3f','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ee195975-7648-473f-a82f-9d69c40079ce','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ee1efa53-4f8e-4242-b9b2-0aa75b8b2755','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ee26e312-acdf-490c-beba-83ea40457212','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ef44b9fb-1799-4f44-b802-b3e65a64c12e','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('f05ab5ef-97f7-480c-aef9-88a3226527ab','caml_anuncios_assigned_user','Users','users','id','caml_anuncios','caml_anuncios','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f066b85b-caaf-4826-829a-85609ccf067d','inbound_emails_distribution_user','Users','users','id','InboundEmail','inbound_email','distribution_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f0afab35-eb13-46b1-9e7f-33b94616892c','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),
('f0be5c3f-738b-444c-a595-016333490c5a','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f144c847-107f-4657-9dfe-bebf6d50eed3','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f14d9afd-75f6-43e4-a51a-2dc6d11d4eb5','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f1c7b31f-73fc-47db-9150-6a791b213051','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f3e1688d-94e4-4ce5-99ce-02485ab2b3dd','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),
('f4eab127-f70c-4faf-a44b-4eba74744e9d','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f5027ee9-971a-401f-b329-96c97e4bace9','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f5487c43-57e4-4d08-bf09-9f969d359ac8','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f5cdc747-6eaf-4290-8890-863a216f6fdd','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),
('f72f7ea1-dd13-44bc-96e3-0de5c33e51e0','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('f82e3dcc-b54c-4d9d-b7bc-d54c4f55422b','surveyresponses_contacts','Contacts','contacts','id','SurveyResponses','surveyresponses','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f8fdbe5a-f8c0-4c95-b627-58669844c0d2','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f975ef6e-e87b-479a-893a-17ff01268c45','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f9a7fdc6-44ce-4109-8f0b-d29454e0c492','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f9ec95ef-b8bd-4ac0-8688-f9a3e348cbd9','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),
('fb2eaeac-0b68-472e-b945-c4d60b6cedcb','oauth2clients_oauth2authcodes','OAuth2Clients','oauth2clients','id','Oauth2AuthCodes','oauth2authcodes','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fbaafef0-7850-4ac2-876e-2d43ea4879b7','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
('fbedd01f-2718-447f-86a2-acc0c5866d44','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fcc1e548-7f2b-4baa-938f-814e17c40b72','caml_control_accesos_assigned_user','Users','users','id','caml_control_accesos','caml_control_accesos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fcc4d96f-6468-4e17-8fb5-11fac4cee959','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),
('fcfb1f55-f092-4b26-b6eb-b8ae1752d196','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fd6cae7f-588c-4acb-9688-043592837ad1','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('febf03c4-b578-477c-842b-63bd1622785c','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),
('ff6478b9-e031-4d7d-95a5-2bd2f8ea0ff7','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `quick_filter` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES
('08284fe6-f84e-47e5-a0b1-4ddb95b5e3a9',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 12:30:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),
('127d6254-a613-425f-b989-e288c1bf4144',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 15:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Inactive',1),
('2eaaaecc-be07-4c98-a88d-3a7d20ed895a',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Prune Database on 1st of Month','scheduler::prune-database','2015-01-01 13:30:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),
('37afb894-4d32-426b-a78b-98f4921893c6',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 18:45:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),
('56b121d9-005e-40be-a239-793e25a1f742',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 15:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),
('589310ee-c760-4751-8c8f-fd9af48c346e',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Queue Campaign Emails','scheduler::email-to-queue','2015-01-01 07:30:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),
('6657b909-4bef-40cf-80e3-0aad48989163',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Calendar Accounts Sync','function::calendarSyncJob','2015-01-01 10:00:01',NULL,'*/15::*::*::*::*',NULL,NULL,NULL,'Active',0),
('80611488-422a-4d84-afda-01099fa0dc47',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 16:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),
('81f777cb-8f8e-4d50-bda7-51823788f374',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Send Campaign Emails','scheduler::send-from-queue','2015-01-01 17:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),
('91334147-cf11-457a-b8a5-395ccd6b9654',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 15:30:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),
('ac476670-4011-4baf-a7bb-604daf87b8a0',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 06:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),
('af0b32e6-9bba-471d-b870-51dcf511fff7',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 15:15:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),
('b8b2e774-af4d-4728-8804-832d639027dc',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 06:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),
('be4ec6fb-5826-4515-aeb1-cf160457ad57',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Clean Up Temporary Files','scheduler::clean-up-temporary-files','2015-01-01 06:30:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),
('ce35f7ee-6024-4ca8-b406-63d7865bbf84',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Perform Elasticsearch Index','function::runElasticSearchIndexerScheduler','2015-01-01 06:15:01',NULL,'30::4::*::*::*',NULL,NULL,NULL,'Active',0),
('fa5dccb0-5f03-4810-8f68-89dea5a0ba44',0,'2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 06:15:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
INSERT INTO `securitygroups` VALUES
('3804e731-1770-4773-bd1c-a620c682134b','Grupo - Condominio de suba','2026-05-20 21:22:08','2026-05-20 21:22:08','1','1','Grupo de aislamiento exclusivo para los residentes y registros de: Condominio de suba',0,'1',NULL),
('4443348b-7b93-4f68-949c-3ceb6d81bf5c','Grupo - Conjunto Nueva Roma','2026-05-20 21:19:41','2026-05-20 21:19:41','1','1','Grupo de aislamiento exclusivo para los residentes y registros de: Conjunto Nueva Roma',0,'1',NULL),
('59c9506c-79a2-45a2-a81c-8923dc1770d9','Grupo - conjunto malpole2','2026-06-03 15:51:05','2026-06-03 15:51:05','1','1','Grupo de aislamiento exclusivo para los residentes y registros de: conjunto malpole2',0,'1',NULL),
('c4251f42-bae0-43a5-8c80-1b16e689cffb','admin','2026-06-03 20:02:58','2026-06-03 20:03:07','1','1',NULL,0,'1',0);
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
INSERT INTO `securitygroups_records` VALUES
('00062e10-5fa0-11f1-a230-7a1c31c0a057','c4251f42-bae0-43a5-8c80-1b16e689cffb','9752791a-c0ea-437b-86a4-ee0950baeddf','AOS_Invoices','2026-06-03 00:00:00',NULL,NULL,0),
('1906c84f-5f9c-11f1-a230-7a1c31c0a057','c4251f42-bae0-43a5-8c80-1b16e689cffb','a14cd58f-4f3f-46c5-8be0-593addae1d60','caml_anuncios','2026-06-03 00:00:00',NULL,NULL,0),
('266b127c-3e56-43b9-bcde-cf0ec87bcf30','4443348b-7b93-4f68-949c-3ceb6d81bf5c','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Accounts','2026-05-20 21:19:41',NULL,NULL,0),
('34d89c3e-a821-4bcb-b644-d8ae3f22668d','4443348b-7b93-4f68-949c-3ceb6d81bf5c','6b965a1c-d5e2-4c8e-a0b1-029c86711879','caml_apartamentos','2026-05-27 22:11:59',NULL,NULL,0),
('416838c0-a74a-4835-bc21-ea3faba98fa3','59c9506c-79a2-45a2-a81c-8923dc1770d9','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','Accounts','2026-06-03 15:51:05',NULL,NULL,0),
('7f04473e-6031-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','d16f9531-9edc-4479-ac83-10111b637fc6','caml_pagos','2026-06-04 00:00:00',NULL,NULL,0),
('8197bc36-603c-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','726feaa7-5b34-436d-b35c-c6c3f5e144b7','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('9f612bb5-603c-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','c2735663-9462-44ea-b81b-11f3b46aac51','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('ae181878-6035-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','c5ae1ae4-bb15-4697-b584-3a5065025535','caml_apartamentos','2026-06-04 00:00:00',NULL,NULL,0),
('c27fc835-6b25-4ac8-bcd8-438a02234a00','59c9506c-79a2-45a2-a81c-8923dc1770d9','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Contacts','2026-06-03 15:58:04',NULL,NULL,0),
('c30432c6-603f-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','0e1b8786-d0cd-4bca-884e-eaa961844fb5','caml_tarifa','2026-06-04 00:00:00',NULL,NULL,0),
('c4405d80-eedc-4e29-8171-eac64486c31f','4443348b-7b93-4f68-949c-3ceb6d81bf5c','19981018-5fc7-435a-9cb5-0d1d479b7cab','Contacts','2026-05-28 16:02:52','','',0),
('c60062d1-603c-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','0f9f6350-9a10-4ca8-b471-b9cdda9623a3','AOS_Invoices','2026-06-04 17:57:21',NULL,NULL,1),
('d320ce2a-603f-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','7b5eff14-e01e-4916-a7b6-d90cc8146098','caml_vehiculos','2026-06-04 00:00:00',NULL,NULL,0),
('d8709ab4-603f-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','b9461b9a-7b3d-4a66-a6df-43688ccbc766','caml_control_accesos','2026-06-04 00:00:00',NULL,NULL,0),
('fbb5ee13-96b6-4201-8fa7-d4ec96065c2d','3804e731-1770-4773-bd1c-a620c682134b','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Accounts','2026-05-20 21:22:08',NULL,NULL,0);
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
INSERT INTO `securitygroups_users` VALUES
('47518273-0e54-40c1-968f-cf23ebd06f31','2026-06-03 20:03:07',0,'c4251f42-bae0-43a5-8c80-1b16e689cffb','1',NULL,0),
('4eae82dd-7744-4c69-9c24-68706ee2dabe','2026-06-03 15:58:04',0,'59c9506c-79a2-45a2-a81c-8923dc1770d9','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0),
('e52110ac-4da8-463b-a90c-abd110cb3797','2026-05-28 16:02:52',0,'4443348b-7b93-4f68-949c-3ceb6d81bf5c','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a',0,0);
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES
('00d6bd91-035a-4bb8-8e84-1d97083224f6','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:9adcbe23-9e93-4cdc-b063-0e6d37df8694:alejandro maldonado]','2026-05-21 20:42:58','2026-05-21 20:42:58','1','1',NULL,0,'1','Contacts','9adcbe23-9e93-4cdc-b063-0e6d37df8694',NULL,NULL),
('0509c581-034e-4358-952f-b67bab4837f0','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9:manuel murillo]','2026-06-03 15:58:04','2026-06-03 15:58:04','1','1',NULL,0,'1','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9',NULL,NULL),
('11664a7a-75d9-4066-8c4b-bf3733f35441','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:3fc6a881-1c34-47a4-9a05-a5ad60757341:alejandrof maldonado]','2026-05-21 20:43:07','2026-05-21 20:43:07','1','1',NULL,0,'1','Contacts','3fc6a881-1c34-47a4-9a05-a5ad60757341',NULL,NULL),
('17059530-109f-4058-b068-89194f94ed5b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e0633fa3-4d4d-40eb-8ddf-38162761cb63:alejandro maldonado]','2026-05-21 20:44:07','2026-05-21 20:44:07','1','1',NULL,0,'1','Contacts','e0633fa3-4d4d-40eb-8ddf-38162761cb63',NULL,NULL),
('235b875e-7448-4521-95de-3c02f4990bb8','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:794ccd41-3700-48a6-8eab-58d9e6b353b3:fasf] {SugarFeed.FOR} [Accounts::]:','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1',NULL,0,'1','Cases','794ccd41-3700-48a6-8eab-58d9e6b353b3',NULL,NULL),
('3438d3d2-0542-45a6-8e0a-e690b146a541','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:4d6a90a9-c65d-43ef-829b-2717c1e684f0:nuevo] {SugarFeed.FOR} [Accounts::]: Solicitud poara','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1',NULL,0,'1','Cases','4d6a90a9-c65d-43ef-829b-2717c1e684f0',NULL,NULL),
('37257163-609e-4317-a820-68c78cd5db97','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:0a436ba0-203f-4411-b45f-82128ef330ce:fasf fsfa]','2026-05-21 21:10:43','2026-05-21 21:10:43','1','1',NULL,0,'1','Contacts','0a436ba0-203f-4411-b45f-82128ef330ce',NULL,NULL),
('4feb2de5-94c6-4e95-8fc2-428f04066d3c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:19981018-5fc7-435a-9cb5-0d1d479b7cab:solangel rodriguez]','2026-05-27 22:00:25','2026-05-27 22:00:25','1','1',NULL,0,'1','Contacts','19981018-5fc7-435a-9cb5-0d1d479b7cab',NULL,NULL),
('60fbfb6c-f166-4c53-9741-d57afb0f76e2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c6cf26f8-2c58-47f3-9789-05affa0c3b54:fsaf fsaf]','2026-05-21 21:34:51','2026-05-21 21:34:51','1','1',NULL,0,'1','Contacts','c6cf26f8-2c58-47f3-9789-05affa0c3b54',NULL,NULL),
('64d9adac-dad7-44b9-bb8a-b135ab468c9c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c0b0c51a-f2cc-4591-8263-2fb09088cf58:manuel murillo]','2026-06-03 15:45:47','2026-06-03 15:45:47','1','1',NULL,0,'1','Contacts','c0b0c51a-f2cc-4591-8263-2fb09088cf58',NULL,NULL),
('81ba5fec-1edd-428a-bddb-b56fc3209cce','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b571a0d1-3e78-4c3e-8532-bf995018d77a:prueba maldonado]','2026-05-21 21:05:49','2026-05-21 21:05:49','1','1',NULL,0,'1','Contacts','b571a0d1-3e78-4c3e-8532-bf995018d77a',NULL,NULL),
('864dc288-0215-416f-ab64-9419a5f76f18','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:915a3e51-20be-437b-a1b3-f4c30498f451:fsaf fsaf]','2026-05-21 20:37:24','2026-05-21 20:37:24','1','1',NULL,0,'1','Contacts','915a3e51-20be-437b-a1b3-f4c30498f451',NULL,NULL),
('88b87e29-e52b-422b-af99-2de5d18b1b02','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:bb1e356a-6e99-4350-ac48-3989d0b6a654:fasf fsaf]','2026-05-21 20:30:57','2026-05-21 20:30:57','1','1',NULL,0,'1','Contacts','bb1e356a-6e99-4350-ac48-3989d0b6a654',NULL,NULL),
('8f25266a-f71a-4674-9e96-d44315314964','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:d53244c3-4ae4-4594-a8ef-d8edd533cc20:alejandro maldonado]','2026-05-21 20:22:16','2026-05-21 20:22:16','1','1',NULL,0,'1','Contacts','d53244c3-4ae4-4594-a8ef-d8edd533cc20',NULL,NULL),
('99bb7ec9-286b-4490-9265-60c0190c5eba','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:353e6a1e-4018-4ee8-bce9-d436b9ab361c:[Reclamo] solicitud datos de parqueadero] {SugarFeed.FOR} [Accounts:mock-apto-101:]: Nuevos elementos','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5',NULL,0,NULL,'Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c',NULL,NULL),
('99d168d5-6c1e-4a92-a70f-771bfe863ae2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b0211b4a-7a38-4b27-b02b-6f32317df17d:alejandro maldonado]','2026-05-21 20:40:51','2026-05-21 20:40:51','1','1',NULL,0,'1','Contacts','b0211b4a-7a38-4b27-b02b-6f32317df17d',NULL,NULL),
('9ddde3fb-9c7e-4632-8fb2-b0093c6fe411','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:5697accd-0b22-486d-a0c9-b0b980bc7fa2:maria eugenia]','2026-05-21 20:53:10','2026-05-21 20:53:10','1','1',NULL,0,'1','Contacts','5697accd-0b22-486d-a0c9-b0b980bc7fa2',NULL,NULL),
('a02edab1-1f88-43bb-aac2-647c227bd7fd','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:cd36c614-09f0-4914-98da-374ffdb68d11:dad dasd]','2026-05-21 20:26:53','2026-05-21 20:26:53','1','1',NULL,0,'1','Contacts','cd36c614-09f0-4914-98da-374ffdb68d11',NULL,NULL),
('a1f44f89-f0da-41c1-97ab-7497e0d34cb2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:766ace6c-1013-4afd-9b11-d5897c456ade:fsaf fsaf]','2026-05-21 20:36:49','2026-05-21 20:36:49','1','1',NULL,0,'1','Contacts','766ace6c-1013-4afd-9b11-d5897c456ade',NULL,NULL),
('aa35f506-8cf7-422a-84d7-f0e88ba05899','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:ac9d89d0-72a7-4239-8c9e-00879a1e449d:alejandro malk]','2026-05-21 21:08:44','2026-05-21 21:08:44','1','1',NULL,0,'1','Contacts','ac9d89d0-72a7-4239-8c9e-00879a1e449d',NULL,NULL),
('ab6a0687-da47-4e3f-bbf1-93187859048f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:69b1eb86-c3db-43ed-b195-aa3a387e3ee0:alejandro maldonado]','2026-05-21 20:39:31','2026-05-21 20:39:31','1','1',NULL,0,'1','Contacts','69b1eb86-c3db-43ed-b195-aa3a387e3ee0',NULL,NULL),
('b716d4e4-b14d-4347-9178-38e536a2c8d8','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:28efc213-1abc-4ec3-8b10-2b2e3f5784a5:alejandro Maldonado]','2026-05-21 20:55:01','2026-05-21 20:55:01','1','1',NULL,0,'1','Contacts','28efc213-1abc-4ec3-8b10-2b2e3f5784a5',NULL,NULL),
('c3cd33c4-a47f-44d9-84b4-897a36bab373','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:63deac9b-28a7-4b7d-8a87-39103834d946:alejandro maldonado]','2026-05-21 21:27:57','2026-05-21 21:27:57','1','1',NULL,0,'1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946',NULL,NULL),
('c65743b2-dcb5-4c17-aac5-90586e5e340a','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:59022a4b-fa64-4d15-b189-b20b7510a33c:dad dasd]','2026-05-21 20:22:26','2026-05-21 20:22:26','1','1',NULL,0,'1','Contacts','59022a4b-fa64-4d15-b189-b20b7510a33c',NULL,NULL),
('cbbb7593-678c-4711-b437-e89d54e32375','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:70acd44a-1768-414e-ace4-6d7a69a2ee0e:sdg gsd]','2026-05-21 21:12:35','2026-05-21 21:12:35','1','1',NULL,0,'1','Contacts','70acd44a-1768-414e-ace4-6d7a69a2ee0e',NULL,NULL),
('d1a5d350-cdb8-40cd-a63e-334d4eb650bb','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:65bd9658-5c5a-45c5-842c-4a0378dbb8ff:fasfas fasf]','2026-05-21 21:27:14','2026-05-21 21:27:14','1','1',NULL,0,'1','Contacts','65bd9658-5c5a-45c5-842c-4a0378dbb8ff',NULL,NULL),
('e86ba554-2c50-4b8e-8d76-b61ee995495f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:996a33c4-43e6-4b5c-8bd7-a1b1b7d83293:carlos a maldonado]','2026-05-26 22:53:35','2026-05-26 22:53:35','1','1',NULL,0,'1','Contacts','996a33c4-43e6-4b5c-8bd7-a1b1b7d83293',NULL,NULL),
('f151c6c8-1eaa-4abe-9d88-952bdb3fc196','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:36b33635-82b0-4bd4-8a4a-b51f8c299862:alejandro maldonado]','2026-05-21 20:40:42','2026-05-21 20:40:42','1','1',NULL,0,'1','Contacts','36b33635-82b0-4bd4-8a4a-b51f8c299862',NULL,NULL),
('fdaec1af-63c0-4b80-a061-19687d068542','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c5b677c1-bbf0-4af1-a23f-187c9b04fca1:alejandro maldonado]','2026-05-21 20:40:25','2026-05-21 20:40:25','1','1',NULL,0,'1','Contacts','c5b677c1-bbf0-4af1-a23f-187c9b04fca1',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES
(1,'4ab011ef-25e2-4d2c-8452-e5d0045b434c','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-20 21:19:43','detailview','dd0cd225028c5034d37dcfc2e185cd8a',1,0),
(2,'fcf6a592-9681-4627-b448-4025645f03ee','1','SecurityGroups','4443348b-7b93-4f68-949c-3ceb6d81bf5c','Grupo - Conjunto Nueva Roma','2026-05-20 21:19:49','detailview','dd0cd225028c5034d37dcfc2e185cd8a',1,0),
(3,'9e3cad3d-32ac-4a2f-a0e4-f088cc4cba3e','1','SecurityGroups','4443348b-7b93-4f68-949c-3ceb6d81bf5c','Grupo - Conjunto Nueva Roma','2026-05-20 21:19:51','detailview','dd0cd225028c5034d37dcfc2e185cd8a',1,0),
(4,'4b69a7bb-b691-4039-a600-6c4154a4b5e1','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-20 21:19:57','detailview','dd0cd225028c5034d37dcfc2e185cd8a',1,0),
(5,'b31640ec-8bc7-4645-84b6-d356c2b0439f','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-20 21:22:09','detailview','dd0cd225028c5034d37dcfc2e185cd8a',1,0),
(6,'749b29ae-4c9b-4467-8729-d9d049715f84','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 17:01:40','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(7,'94a396dd-6336-45e2-8baf-123c014e5569','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 17:02:01','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(8,'51855ead-6612-4032-a3f7-28366fec16ce','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 20:20:38','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(9,'35047f5d-3507-4c41-86bd-64a812a83766','1','Contacts','d53244c3-4ae4-4594-a8ef-d8edd533cc20','Sr. alejandro maldonado','2026-05-21 20:22:17','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(10,'bfb8acb0-0062-4ac3-a705-4f2e8efc59fe','1','Contacts','59022a4b-fa64-4d15-b189-b20b7510a33c','dad dasd','2026-05-21 20:22:27','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',0,0),
(11,'ce3288b4-d569-40de-9115-aa9c4e1c2bd4','1','Contacts','cd36c614-09f0-4914-98da-374ffdb68d11','dad dasd','2026-05-21 20:26:54','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',0,0),
(12,'8914c597-a659-42e6-bd2f-b588b0a55620','1','Contacts','bb1e356a-6e99-4350-ac48-3989d0b6a654','fasf fsaf','2026-05-21 20:30:58','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',0,0),
(13,'cde11aeb-d81f-456a-b72e-dc95b6e3d187','1','Contacts','766ace6c-1013-4afd-9b11-d5897c456ade','fsaf fsaf','2026-05-21 20:36:51','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',0,0),
(14,'0e414e8d-2d3e-41a3-8b6e-436ce77fe1c4','1','Contacts','915a3e51-20be-437b-a1b3-f4c30498f451','fsaf fsaf','2026-05-21 20:37:26','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',0,0),
(15,'0bd3d335-70fa-45ae-a4a5-dcd8d137967f','1','Contacts','d53244c3-4ae4-4594-a8ef-d8edd533cc20','Sr. alejandro maldonado','2026-05-21 20:39:29','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(16,'bae04d33-1a72-474e-b266-1647d0c01231','1','Contacts','69b1eb86-c3db-43ed-b195-aa3a387e3ee0','Sr. alejandro maldonado','2026-05-21 20:39:33','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',0,0),
(17,'340b2218-0d37-4858-94a3-46c111032b5a','1','Contacts','d53244c3-4ae4-4594-a8ef-d8edd533cc20','Sr. alejandro maldonado','2026-05-21 20:40:39','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(18,'78804cfe-27db-43cc-8020-245dd392978c','1','Contacts','d53244c3-4ae4-4594-a8ef-d8edd533cc20','Sr. alejandro maldonado','2026-05-21 20:40:48','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(19,'493e6e25-01b9-4508-9136-1ccd74147a2c','1','Contacts','b0211b4a-7a38-4b27-b02b-6f32317df17d','Sr. alejandro maldonado','2026-05-21 20:40:52','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(20,'17b4cb20-b7ad-4a54-90ec-65f9f05730f6','1','Contacts','b0211b4a-7a38-4b27-b02b-6f32317df17d','Sr. alejandro maldonado','2026-05-21 20:43:03','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(21,'44682bb4-8535-47b6-9872-76bfde7a249d','1','Contacts','3fc6a881-1c34-47a4-9a05-a5ad60757341','Sr. alejandrof maldonado','2026-05-21 20:43:08','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(22,'014aee6a-665c-456f-910a-52d93e22b17f','1','Contacts','e0633fa3-4d4d-40eb-8ddf-38162761cb63','alejandro maldonado','2026-05-21 20:44:08','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(23,'04f26f0b-7a9b-4be4-a5af-857864321deb','1','Users','0b516c8f-0986-41c1-89a9-793e202d6760','alejandro maldonado','2026-05-21 20:44:17','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(24,'807083bb-21e3-4436-abef-4c3fa4dc1ba1','1','Users','0b516c8f-0986-41c1-89a9-793e202d6760','alejandro maldonado','2026-05-21 20:44:18','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(25,'085b5647-f05e-49ae-ae00-61f763253b0d','1','Contacts','e0633fa3-4d4d-40eb-8ddf-38162761cb63','alejandro maldonado','2026-05-21 20:44:37','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(26,'6048bf87-8dfa-4f74-93c4-c53550423f17','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 20:45:09','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(27,'aaf0fb2d-7999-4383-ac9d-9579cdd99813','1','Contacts','e0633fa3-4d4d-40eb-8ddf-38162761cb63','alejandro maldonado','2026-05-21 20:45:32','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(28,'a9a605c3-33f6-419a-b7f7-4463fb8eb765','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-21 20:47:48','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(29,'36459b59-091f-4eda-9e22-82a1ba8f2408','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 20:47:58','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(30,'7b37c470-79a5-4563-851d-ff966b334819','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 20:52:57','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(31,'c10c8f01-c066-4ec3-986b-dbe249c3fffb','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 20:53:11','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(32,'bdd9e0ef-85d4-4eaf-9e5a-cacb7289bfc2','1','Contacts','28efc213-1abc-4ec3-8b10-2b2e3f5784a5','Sr. alejandro Maldonado','2026-05-21 20:55:02','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(33,'ba8e6029-844d-481c-932b-640d41abd3be','1','Contacts','e0633fa3-4d4d-40eb-8ddf-38162761cb63','alejandro maldonado','2026-05-21 20:56:55','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(34,'ed66bc99-c3f1-4d81-8a53-cef1beccd1f5','1','Contacts','e0633fa3-4d4d-40eb-8ddf-38162761cb63','alejandro maldonado','2026-05-21 20:57:15','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(35,'1e0f5004-6b41-4820-ac00-8b62dbcd6e2b','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-21 20:59:50','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(36,'d6bed249-6765-4b4e-8883-bafcb01ce49a','1','Contacts','b571a0d1-3e78-4c3e-8532-bf995018d77a','Sr. prueba maldonado','2026-05-21 21:05:51','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(37,'077626be-9834-4310-b9f3-f4417f41f38c','1','Contacts','ac9d89d0-72a7-4239-8c9e-00879a1e449d','Sr. alejandro malk','2026-05-21 21:08:45','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(38,'a9591896-3408-4df9-bfc5-19a0fc49266d','1','Contacts','0a436ba0-203f-4411-b45f-82128ef330ce','fasf fsfa','2026-05-21 21:10:45','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(39,'d3421aab-8b74-4945-b4e2-1d019978603d','1','Contacts','70acd44a-1768-414e-ace4-6d7a69a2ee0e','Sra. sdg gsd','2026-05-21 21:12:36','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(40,'90bd57fa-1344-4a26-a7bb-d3549270c869','1','Contacts','65bd9658-5c5a-45c5-842c-4a0378dbb8ff','Sr. fasfas fasf','2026-05-21 21:27:16','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(41,'ff3abaa8-30fe-482a-ab2b-5c40710aa604','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 21:27:23','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(42,'cfe62be0-15cd-48c6-b0e4-75bf2125e84e','1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946','Sr. alejandro maldonado','2026-05-21 21:27:59','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(43,'61504077-3bb0-48c1-a004-9cc280bf2d04','1','Users','897b0de3-78c9-4ee3-8b67-9cc910d63f6c','alejandro maldonado','2026-05-21 21:28:03','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(44,'248f1a4b-e541-4743-af2e-c19097795c5e','1','Users','897b0de3-78c9-4ee3-8b67-9cc910d63f6c','alejandro maldonado','2026-05-21 21:28:04','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(45,'63fb6ecf-ee50-4614-af12-c43fc59b9440','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-21 21:28:14','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(46,'2a850b8b-c607-4ac6-b975-bdbf3827598d','1','Contacts','28efc213-1abc-4ec3-8b10-2b2e3f5784a5','Sr. alejandro Maldonado','2026-05-21 21:29:02','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(47,'d30e7556-8c62-42bf-85c5-fb7dd773052d','1','Contacts','c6cf26f8-2c58-47f3-9789-05affa0c3b54','Sr. fsaf fsaf','2026-05-21 21:34:53','detailview','1f6ece1a875827c9b4c91f1a198d3fd9',1,0),
(48,'edc2ff86-5fef-4560-abe6-8865c0ec9045','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 22:56:24','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(49,'83892309-1f31-4a22-94a1-0bb2dde35782','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 22:59:02','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(50,'bde00245-2ca7-4e63-8691-a4914cb5cadd','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 22:59:55','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(51,'1e5498ca-b634-4ebd-9e30-c12d5f3eb1b0','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 23:02:13','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(52,'cebadd0d-6a79-4c7f-bac7-a5bcdbe51580','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 23:03:06','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(53,'13ce0cd6-0492-4d7a-ae03-04b0f82f378f','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 23:05:54','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(54,'9a6af1bf-d776-4d0f-b81a-9b1084d084da','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 23:06:27','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(55,'0ee8d3e5-eac8-46a5-9981-c02d07e13098','1','caml_apartamentos','2d786651-bf2f-4310-9117-8edc0d64bd13',NULL,'2026-05-25 23:06:29','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(56,'aaa4d7f2-4bed-4812-97f5-1da5965f8b8e','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-25 23:06:35','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(57,'c9aabc16-bac5-4fe5-8fd5-cdfdcc37f6ef','1','caml_apartamentos','2d786651-bf2f-4310-9117-8edc0d64bd13',NULL,'2026-05-25 23:07:06','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(58,'e83c8f2d-8a8c-4c5d-825f-3768aab3d976','1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946','Sr. alejandro maldonado','2026-05-25 23:07:18','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(59,'75bb7431-f95d-41ff-80cc-aef418bfa223','1','caml_apartamentos','2d786651-bf2f-4310-9117-8edc0d64bd13',NULL,'2026-05-25 23:08:50','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(60,'94e263f7-3916-40e7-bab9-6cbfdabc53d6','1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946','Sr. alejandro maldonado','2026-05-25 23:08:52','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(61,'d1379731-126c-4f29-8ad7-15a656e420cc','1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946','Sr. alejandro maldonado','2026-05-25 23:09:01','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(62,'33bd6afd-7f77-4ebc-acbb-5b4372286ecc','1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946','Sr. alejandro maldonado','2026-05-25 23:09:05','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(63,'6cf205f6-2566-4e1a-ae43-f42a88ab6877','1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946','Sr. alejandro maldonado','2026-05-25 23:11:34','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(64,'df4c412b-b3ef-40dd-b6bd-c79686fbed6d','1','Contacts','63deac9b-28a7-4b7d-8a87-39103834d946','Sr. alejandro maldonado','2026-05-25 23:14:25','detailview','0f0b2e7865b5fd8171d495a476ec684f',1,0),
(65,'a7d907aa-1136-42d2-9ba6-e0f59fb9577d','1','Cases','4d6a90a9-c65d-43ef-829b-2717c1e684f0','nuevo','2026-05-26 15:44:14','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(66,'ff0d69de-a91f-4281-a2ab-6f8a8983ee0f','1','caml_apartamentos','2d786651-bf2f-4310-9117-8edc0d64bd13',NULL,'2026-05-26 15:49:15','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(67,'4170656d-fd1c-4737-b07b-8b92e6092f2b','1','caml_apartamentos','2d786651-bf2f-4310-9117-8edc0d64bd13',NULL,'2026-05-26 15:51:21','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(68,'bcbe0cc2-6701-4840-a50a-8b2f23eef5c2','1','caml_apartamentos','09955ec1-6c39-4db8-8778-700f811c6f47','Casa 125 - Bloque 5','2026-05-26 15:51:38','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(69,'f260a1e9-eb51-490c-b29d-d1c7f4d22e8b','1','Cases','794ccd41-3700-48a6-8eab-58d9e6b353b3','fasf','2026-05-26 15:52:02','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(70,'976d05ce-d966-4e58-a9f6-2b6a2ecc8d1d','1','Cases','794ccd41-3700-48a6-8eab-58d9e6b353b3','fasf','2026-05-26 15:53:15','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(71,'f96469ae-bc80-4695-9bbd-8b09e0a816da','1','Cases','794ccd41-3700-48a6-8eab-58d9e6b353b3','fasf','2026-05-26 15:53:32','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(72,'798aaf66-c48a-41a2-a8a1-99e669cd0554','1','FP_Event_Locations','5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:35','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(73,'8a8a34bf-5c31-461c-be6d-7a2d52b3d4df','1','FP_Event_Locations','5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:35','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(74,'5f5fcd8c-be01-4566-85af-9a076f93244c','1','FP_Event_Locations','5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:36','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(75,'1f887fd3-c9bb-4e8f-a2d9-01ee83178528','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:10:48','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(76,'c8de51b4-2f49-431e-b9c4-52ff7ee78e3b','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:10:48','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(77,'6732d6ef-338b-477e-84eb-1858eb619240','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:10:49','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(78,'c0b4779a-ff5b-42c4-8763-2fe2b9ef4638','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:10:53','editview','70b95717f294b867943b8a60b16518a3',1,0),
(79,'136e74db-65aa-48c2-9e07-343029b2c1f5','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:10:53','editview','70b95717f294b867943b8a60b16518a3',1,0),
(80,'e87ab329-2a34-4a44-a7d0-95addf7a0d72','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:10:54','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(81,'72e61e8d-204f-4f6b-ae01-4157e249a78a','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:11:24','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(82,'0a093dd6-1400-4193-a470-8f3fe1c454d8','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:11:25','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(83,'b0a84eb9-f764-4679-9906-c379d2b7c847','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:11:26','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(84,'22665579-9660-4474-8bf7-4ae9a73f86ed','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-26 16:11:40','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(85,'70cf2ecb-1f31-48e1-a820-c266fe1ce105','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:14:54','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(86,'f3da6291-8cb0-4566-89d3-9161774b025a','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:14:58','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(87,'9724f5c4-413e-4fdc-a95e-d7e527f0bcbd','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:14:59','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(88,'2af112ad-b5e4-41a4-8b9e-77005862899c','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:15:30','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(89,'f32e24f0-3896-4cde-99b4-18ea03a7d8c2','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:15:31','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(90,'c28b1089-26f5-46c5-b96f-b4639aaeb31f','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:28','editview','70b95717f294b867943b8a60b16518a3',1,0),
(91,'ae0b9cec-3a01-4969-b987-b3dff4f266c6','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:29','editview','70b95717f294b867943b8a60b16518a3',1,0),
(92,'d6ae0ccc-4ce7-413b-9ae8-20a8e17f058e','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:31','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(93,'676ae317-1960-445a-852b-43c64d79ab8b','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:33','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(94,'42f5d8d1-fbe3-437d-aeec-f0110843dab7','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:33','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(95,'de06a293-ca02-4a35-abac-27538d10005d','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:34','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(96,'abe0eaf0-f353-46c1-9c02-19a8cf94a620','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:49','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(97,'8cbb4dd2-96f8-4904-9dc1-96b2be9d90c5','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:18:51','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(98,'4b6e62ce-6759-4344-a9ff-d9440dcbf267','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:09','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(99,'e40448d4-8301-48b7-81ef-f4dffcd0ad46','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:10','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(100,'cf9016a7-46aa-4e3e-b53d-83cf07471f67','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:14','editview','70b95717f294b867943b8a60b16518a3',1,0),
(101,'27a7bc54-9979-48f9-9444-2964b5540059','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:14','editview','70b95717f294b867943b8a60b16518a3',1,0),
(102,'1e4a6ac1-8e81-4dfe-a7e2-c7ff00bf8b82','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:16','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(103,'7ea3e45c-58c3-4a12-a66b-96229785cfb0','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:20','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(104,'45d42379-5958-4853-a9d2-5a6048074e2a','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:21','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(105,'fab84c10-e9f0-4a86-9ae6-58204458ac94','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:22','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(106,'0f6b05bc-8950-4e4b-a915-bc8d6c9b23b5','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:47','editview','70b95717f294b867943b8a60b16518a3',1,0),
(107,'33938dc7-bcc1-41ff-b6c6-f97cbb79c8f2','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:48','editview','70b95717f294b867943b8a60b16518a3',1,0),
(108,'acf0dbda-ba85-41e3-94fc-6964b5ae268d','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:49','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(109,'58854583-2b08-471a-b588-1868f8569acf','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:51','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(110,'737a4ecf-4f04-4f23-8e6c-9a7ac60d8423','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:51','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(111,'07063a0b-5d73-4224-8507-4e8ae5b0c267','1','jjwg_Areas','3cc7d967-5822-471b-82db-fc7437d29722','Zona Comercial - Edificio Elemento','2026-05-26 16:21:52','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(112,'ace31801-7da0-43ac-94cf-c5347d4ee820','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:26:58','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(113,'95e4293d-8c1e-4624-aa5b-3d6568321e5e','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:26:58','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(114,'c49305f5-cb35-4b6b-b4fd-a5d1c7c08e87','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:26:59','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(115,'dd59fc4a-db18-4521-ae18-1f9e3d1f26a3','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:28:30','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(116,'7c3f39b9-9d7b-4e8a-bd81-1ccc95e8d248','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:28:31','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(117,'1593e7bd-e46a-4219-bc3f-cd95af929d48','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:15','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(118,'3c09c726-ee62-42ee-b05e-2c464b0f0cc5','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:16','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(119,'059863c0-b677-457e-9278-7b3f5853d90c','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:18','editview','70b95717f294b867943b8a60b16518a3',1,0),
(120,'0ae5bd52-a395-4860-b5d0-814b915af0d5','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:18','editview','70b95717f294b867943b8a60b16518a3',1,0),
(121,'aa06249e-f0c1-45eb-b59b-4796c7418cc2','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:19','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(122,'cc7887d9-7ffb-45f2-9271-755219821b27','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:20','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(123,'f12b9060-d6b7-4c5f-b0b0-cb5b89453799','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:21','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(124,'dde27971-2fb3-461a-a667-54e3d361cbb1','1','AOBH_BusinessHours','aa91173d-2945-4523-97f1-c2cdadf32f4c','prueab','2026-05-26 16:29:46','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(125,'d6e8301b-a292-42cc-bb49-9b5b0eb75407','1','jjwg_Areas','a36cc78f-dd00-4282-ba8a-71fb2a871c76','Kennedy','2026-05-26 16:38:28','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(126,'c2b36a85-1458-44ff-b946-bd12bdddd3f0','1','jjwg_Areas','a36cc78f-dd00-4282-ba8a-71fb2a871c76','Kennedy','2026-05-26 16:38:29','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(127,'12bb29cb-346c-4046-bed2-65204a0867ec','1','jjwg_Areas','5a05404d-b4b9-4f9b-ad6d-3686c3e829eb','Usaquén','2026-05-26 16:38:35','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(128,'41a96f72-56a3-4c56-a46a-aba9984731b5','1','jjwg_Areas','5a05404d-b4b9-4f9b-ad6d-3686c3e829eb','Usaquén','2026-05-26 16:38:37','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(129,'2b5da546-7918-4927-832c-23160cc4445d','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-26 16:45:59','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(130,'47470da6-9a04-43fe-ab1b-d1a3bd897ce0','1','caml_apartamentos','09955ec1-6c39-4db8-8778-700f811c6f47','Casa 125 - Bloque 5','2026-05-26 19:53:58','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(131,'9c99026d-5777-49bf-a704-ef73beef4cc5','1','OAuth2Clients','6826a248-4f90-4ce5-8921-23b857b7bbb0','prueba','2026-05-26 20:24:30','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(132,'1c8012fe-09ac-4251-9add-c047ab1d345b','1','OAuth2Clients','6826a248-4f90-4ce5-8921-23b857b7bbb0','prueba','2026-05-26 20:24:30','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(133,'e39e0f52-9db4-4315-99b9-846c47e4b8c7','1','OAuth2Clients','6826a248-4f90-4ce5-8921-23b857b7bbb0','prueba','2026-05-26 20:24:31','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(134,'2f9378ae-3a14-4818-93bf-fd665520f322','1','OAuth2Clients','5c439fdb-3541-42a6-a98d-3a861f4f091e','prueba','2026-05-26 20:34:02','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(135,'7b8db36d-21d3-4ef2-ba40-286d9b85ef58','1','OAuth2Clients','5c439fdb-3541-42a6-a98d-3a861f4f091e','prueba','2026-05-26 20:34:02','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(136,'501e7775-dcd5-4e86-8951-42c16030d548','1','OAuth2Clients','5c439fdb-3541-42a6-a98d-3a861f4f091e','prueba','2026-05-26 20:34:03','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(137,'27346886-ee0f-4e8c-a4b0-48c5b291cdc6','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-26 22:52:21','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(138,'ac09e3dc-1466-498d-b042-507d683249e2','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-26 22:53:37','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(139,'203ef1a4-ac56-4092-a367-40a03b28ba89','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:53:43','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(140,'bf6abecb-4661-4629-8adb-1d986f4a619f','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:53:45','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(141,'a5ef3881-2ad7-4a02-8df8-46dd693c0d0d','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:53:49','editview','70b95717f294b867943b8a60b16518a3',1,0),
(142,'e4f99a54-171f-4092-9726-b4238e64d07d','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:53:49','editview','70b95717f294b867943b8a60b16518a3',1,0),
(143,'320e486c-bfa8-49b1-8fc0-20871bbba909','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:53:50','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(144,'93f57871-1c27-40e1-8f64-bf086fea9534','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:53:57','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(145,'6faa3a81-d6a1-41fd-b159-18b2b21bff24','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:53:58','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(146,'520e4a48-4447-440d-a69d-d5bdac973835','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:54:00','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(147,'12050d84-74d7-4d70-be60-2e39d16a7b0f','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:54:40','editview','70b95717f294b867943b8a60b16518a3',1,0),
(148,'df6d0233-1cf4-4985-8002-4cc421f1dae8','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:54:40','editview','70b95717f294b867943b8a60b16518a3',1,0),
(149,'7cd0d442-654b-4658-bb73-a69df9e25d19','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:54:41','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(150,'afa99ec9-9724-4b01-a18c-77f71e1dd82c','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:54:44','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(151,'f488c274-39b3-49eb-aa52-1df28efe5cc3','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:54:45','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(152,'90990408-23f8-48b4-9242-3a95b161b155','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos a maldonado','2026-05-26 22:54:46','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(153,'a91fc0f0-1ecc-4c8a-95ee-e86583524617','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-05-26 22:56:31','detailview','70b95717f294b867943b8a60b16518a3',1,0),
(154,'10dfa48b-6fa2-459c-bcf8-1d447c5471db','1','Contacts','996a33c4-43e6-4b5c-8bd7-a1b1b7d83293','Sr. carlos a maldonado','2026-05-27 20:16:37','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(155,'d52a715c-5878-4b0c-a490-a287b0bdcecc','1','Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-05-27 20:16:48','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(156,'ffd2b7f1-76a1-4954-88ef-001ff515b80e','1','Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-05-27 20:17:31','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(157,'45c40332-47c7-4dbc-9635-20044a7c40b3','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos alejandro maldonado','2026-05-27 20:17:33','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(158,'0f120089-73a4-438c-9bd1-b6edf9b0fd02','1','Users','400fdbe3-e938-4b6a-8deb-a459c22ccba5','carlos alejandro maldonado','2026-05-27 20:17:34','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(159,'31cd2db3-5d86-4330-aedd-4776e4d27182','1','Contacts','996a33c4-43e6-4b5c-8bd7-a1b1b7d83293','Sr. carlos a maldonado','2026-05-27 20:17:56','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(160,'f9589eef-fe26-4067-b1e9-e9f86d31767a','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 20:18:40','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(161,'9372675a-1aaf-4645-ba86-f19106184a93','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 20:23:22','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(162,'09d60d63-95bf-45bb-8956-2a9c630aeeb4','1','Contacts','996a33c4-43e6-4b5c-8bd7-a1b1b7d83293','Sr. carlos a maldonado','2026-05-27 20:23:31','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(163,'afc97623-0b5d-489b-97d4-12ca26a67d5a','1','Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-05-27 20:24:02','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(164,'b61db8a1-a5fd-48b2-8055-f0ccdc2736ec','1','Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-05-27 20:24:25','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(165,'5b42c1e3-77a1-4bab-bffd-ce4aee5d67a1','1','Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-05-27 20:24:41','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(166,'b021f8f3-84e3-4d54-afb1-d9a1d49397a5','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 21:26:33','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(167,'97937ceb-ff6c-4381-9ca9-eed6667ae533','1','caml_apartamentos','2e4ea246-bbac-4150-b3da-0b86260a455b','Apartamento 201','2026-05-27 21:26:35','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(168,'bda5e2e7-43f1-4960-b0f2-4b5e68c8392a','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 21:26:36','detailview','14dc1e85a89918bd931580446d6d66fa',1,0),
(169,'2ce21e00-1619-49bd-80a0-d455d8644dde','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:48:45','save','46b3a09becafb175debce44f9cd75cbb',1,0),
(170,'bd088dfc-1406-4001-acd3-eb8b0bc38511','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:48:45','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(171,'5e9c6337-be79-483c-8251-6cabc684ff99','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:48:46','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(172,'ee80c4ea-de66-4556-9356-2ae474ae5412','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:48:47','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(173,'994f819a-da65-4dc2-804e-9088684ef69f','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:55:27','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(174,'c116879d-52e2-40d5-b579-44bf81eee471','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:55:28','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(175,'c7261ff2-ce78-449a-8d18-bee4adba128a','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:59:20','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(176,'d7e9ebda-dbcb-429a-aa1b-f5e52c5bdfdd','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 21:59:21','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(177,'69f6eedd-2916-46dd-a1ff-6d6ab356bedd','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 21:59:45','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(178,'9521eac8-200c-4a83-a408-750d9dec0c36','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 22:00:26','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(179,'fafec91e-fbd1-4475-b7a2-fa02fd9ab8fc','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 22:00:53','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(180,'2caa124b-79b1-4dc9-b5ea-0b7f3f1a7601','1','Contacts','19981018-5fc7-435a-9cb5-0d1d479b7cab','Sr. solangel rodriguez','2026-05-27 22:00:56','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(181,'38528c48-a8cf-4d54-8e66-5da8acc607cf','1','Contacts','19981018-5fc7-435a-9cb5-0d1d479b7cab','Sr. solangel rodriguez','2026-05-27 22:01:01','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(182,'34456f8e-c5c3-4c48-bb4a-b3f8362eb9da','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:20','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(183,'745cba01-271b-4ea6-98b1-e22b62995444','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:22','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(184,'a155b9f3-dd9b-4f5d-86f7-7bfe959d962c','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:23','editview','46b3a09becafb175debce44f9cd75cbb',1,0),
(185,'3a7c503d-6e47-44df-ac79-b6517c4ae508','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:25','editview','46b3a09becafb175debce44f9cd75cbb',1,0),
(186,'783dcc2f-0496-4977-9819-55caddd447b3','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:26','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(187,'2f08edaf-f062-40d1-9279-bdc003b71112','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:36','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(188,'5094248e-ade0-4abd-a613-e04ca0064fe0','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:37','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(189,'592d57f7-808c-4994-ba6d-ea216a41a8a6','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:01:39','detailview','46b3a09becafb175debce44f9cd75cbb',1,0),
(190,'9e715a60-dbe4-40ca-8f26-11bc51169f0c','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:02:10','detailview','e739493415bdc6e2e2f8f237a010532d',1,0),
(191,'31c299f3-0025-4b14-9cd5-bf77fed8884b','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:02:12','detailview','e739493415bdc6e2e2f8f237a010532d',1,0),
(192,'ebca5a35-e50a-4dea-a0c2-32354741517c','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:02:50','detailview','5dc7babd268c80b2fc29c3f9a6501e0c',1,0),
(193,'9d5a7b0c-2d9e-4195-bee3-d84df74cc4b4','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:02:51','detailview','5dc7babd268c80b2fc29c3f9a6501e0c',1,0),
(194,'031e9160-40a8-4a29-a0fe-32dd8562270e','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:05:30','detailview','f7e4d92c5a8b6326c544d2367e774882',1,0),
(195,'6316bfe5-889a-4c9d-b68e-b4196c7a8ce0','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:05:32','detailview','f7e4d92c5a8b6326c544d2367e774882',1,0),
(196,'687702be-f441-4b6d-b689-4fe5e5c781c8','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:07:18','detailview','f7e4d92c5a8b6326c544d2367e774882',1,0),
(197,'3cfb4b83-490b-4ed8-bcd1-489ba097e6ee','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:07:20','detailview','f7e4d92c5a8b6326c544d2367e774882',1,0),
(198,'f6cc096e-ed83-47f4-a2ac-9eab71194d81','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:09:14','detailview','f7e4d92c5a8b6326c544d2367e774882',1,0),
(199,'419565c6-4b86-4504-8e0d-5730a4156fc8','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:09:15','detailview','f7e4d92c5a8b6326c544d2367e774882',1,0),
(200,'60eeaf44-d0ef-4359-a845-6ed167037abe','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 22:11:43','detailview','29307a5e6766e24a0b12b00b5cc5112f',1,0),
(201,'61ba6933-dd56-40cc-9547-0714ddff3dc4','1','caml_apartamentos','6b965a1c-d5e2-4c8e-a0b1-029c86711879','Apartamento 15 - Bloque 15','2026-05-27 22:11:54','detailview','29307a5e6766e24a0b12b00b5cc5112f',1,0),
(202,'36a53b63-016c-40c7-b7f2-80764dc96f72','1','Contacts','19981018-5fc7-435a-9cb5-0d1d479b7cab','Sr. solangel rodriguez','2026-05-27 22:12:08','detailview','29307a5e6766e24a0b12b00b5cc5112f',1,0),
(203,'0ada4d5a-6ebd-493c-94d9-81302b3b2d4e','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:13:26','detailview','520a1994ef1b7e2978c8363c1a26b067',1,0),
(204,'213faedc-21f9-403d-a0f0-c76837b51c36','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:13:27','detailview','520a1994ef1b7e2978c8363c1a26b067',1,0),
(205,'c95bdc8e-4da0-44f7-ac7f-d0c76ea94698','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:13:31','detailview','520a1994ef1b7e2978c8363c1a26b067',1,0),
(206,'6cbbba46-185f-4a55-9f37-67227649f093','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-05-27 22:13:32','detailview','520a1994ef1b7e2978c8363c1a26b067',1,0),
(207,'3f000cb8-601d-4cd7-b9af-0169da633741','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:15:00','detailview','d5cb9ae9843a864fffdc5ad95c81edba',1,0),
(208,'5c218026-a2df-43b1-b623-31f99be1c44d','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:15:01','detailview','d5cb9ae9843a864fffdc5ad95c81edba',1,0),
(209,'f6c80475-b46f-439a-a81c-1f20a5571e05','1','Users','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','solangel rodriguez','2026-05-27 22:15:06','detailview','d5cb9ae9843a864fffdc5ad95c81edba',1,0),
(210,'00dc1220-7cd4-4456-a185-35b045021ae7','1','caml_apartamentos','6b965a1c-d5e2-4c8e-a0b1-029c86711879','Apartamento 15 - Bloque 15','2026-05-27 22:21:05','detailview','d5cb9ae9843a864fffdc5ad95c81edba',1,0),
(211,'ad24f8f1-deda-48bb-89c5-145f51b9c1d8','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-27 22:52:55','detailview','d5cb9ae9843a864fffdc5ad95c81edba',1,0),
(212,'a024bf82-cfcc-4906-8429-1a65eac9f1b5','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 15:48:57','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(213,'6ce846ff-cf92-4916-897a-7c8780fe3839','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 15:52:20','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(214,'d8d71dda-f9e9-43bf-979f-03a93857d269','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 15:52:20','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(215,'9c2f665a-4198-4e69-b185-f943c814fccd','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 15:52:21','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(216,'0e209be7-c98e-4ca1-8d5b-46bda68f856c','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 15:52:47','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(217,'f54b80f2-c99b-46b9-a80d-90bd51053375','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:01:19','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(218,'346af61f-1b88-48ad-91c7-1bf3878b0cf6','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:01:25','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(219,'befcc375-6c1c-47a3-add8-02e5b83f6e1e','1','Contacts','19981018-5fc7-435a-9cb5-0d1d479b7cab','Sr. solangel rodriguez','2026-05-28 16:03:07','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(220,'85bfd170-be5a-490f-971b-0068587fac32','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:07:26','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(221,'26c68d01-ea98-4009-b6cf-4b4356c551ee','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:07:27','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(222,'d2af078c-537d-403a-83a6-d8025a539948','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:08:01','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(223,'f8ee27cb-ea1b-4dc8-9a0c-e8665ac78e91','1','caml_apartamentos','6b965a1c-d5e2-4c8e-a0b1-029c86711879','Apartamento 15 - Bloque 15','2026-05-28 16:08:15','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(224,'0fcd51ad-a3a3-44b6-96fb-3c9d21a25aee','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:08:24','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(225,'6d19d69e-8389-4236-8343-7f5c42ad5f18','1','Contacts','19981018-5fc7-435a-9cb5-0d1d479b7cab','Sr. solangel rodriguez','2026-05-28 16:08:40','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(226,'371a0328-e139-4e04-8f33-4fb22e4f8e76','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:11:06','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(227,'ffd4a7df-a65d-45b5-8bc3-59070b9490ab','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:19:39','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(228,'8b935bdd-1335-4c7e-9652-8df7d69a6879','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:19:42','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(229,'46910045-54d6-4ec6-a55f-1748f54b3607','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:19:49','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(230,'9693ad44-9549-4489-956c-7d091fe74707','1','jjwg_Areas','a36cc78f-dd00-4282-ba8a-71fb2a871c76','Kennedy','2026-05-28 16:19:58','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(231,'4cd5a638-35aa-4621-b994-e5fa9578b106','1','jjwg_Areas','a36cc78f-dd00-4282-ba8a-71fb2a871c76','Kennedy','2026-05-28 16:19:59','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(232,'125f9f73-0538-4cb5-bb69-1d7c7689a884','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:20:02','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(233,'c5505f8b-60ba-48de-b780-87f96dfc3c3b','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:20:04','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(234,'e1cbfb74-9d4a-496f-bcda-ea9716c3d558','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:20:05','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(235,'e30ba7b1-60f4-44a3-9776-0b19dcdb9d45','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:20:17','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(236,'64191bb1-3e05-4231-8a5c-e157af86e182','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:36:25','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(237,'ea3be16e-0e22-400c-9d0d-a5aa44755d58','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:36:26','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(238,'00b0567f-d536-47b6-bd4b-00b8996584b2','1','jjwg_Areas','a36cc78f-dd00-4282-ba8a-71fb2a871c76','Kennedy','2026-05-28 16:37:02','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(239,'00c2f8f0-1bf5-444f-af02-54a95f64b7c9','1','jjwg_Areas','a36cc78f-dd00-4282-ba8a-71fb2a871c76','Kennedy','2026-05-28 16:37:03','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(240,'91c1f7c4-ff11-4008-be97-ba9946f61a9a','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:37:10','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(241,'9b1a7a24-a351-441e-aca5-95ff6d6aee2e','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:37:11','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(242,'b7261715-d954-4f84-b026-8f478d339745','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:38:04','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(243,'f4c8c1c8-1b09-451f-b9c5-cd7043b07a26','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:40:03','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(244,'f9cb3d62-5288-4f17-98bd-a83114ad2189','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:42:18','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(245,'6670c9b2-4e56-47d1-8889-ce7969f9df26','1','jjwg_Markers','97bd25ec-2d21-424f-a2a9-cbe2b19ef6b0','Conjunto nueva roma','2026-05-28 16:42:19','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(246,'1adc9e21-4227-4552-913b-2b170304a8ca','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 16:42:32','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(247,'ffb2b662-ab85-49b6-9c47-e9a71131b4e5','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:33','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(248,'d897a466-106f-4a4c-8b61-a7ad481742e0','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:34','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(249,'61e759d2-d9aa-460c-a3d0-8ce64cc03a01','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:38','editview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(250,'b759b289-2e49-42a7-86bb-f4a8e4e73cd1','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:38','editview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(251,'90c5e727-dfaa-493d-900d-8987e1dfa115','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:39','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(252,'7f016ba5-3984-49c0-ae4e-da028079af8f','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:47','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(253,'a592b655-0e21-4037-9bf9-298e8b8a521b','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:47','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(254,'bb551984-18c1-4d89-9612-078f4f5e2446','1','jjwg_Markers','a88b7984-7b39-4731-afc0-333008354ad2','Edificio elemento bogota','2026-05-28 16:45:48','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(255,'669585d3-234c-418c-83c9-b13af40876b4','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 19:51:19','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(256,'e14aa05a-3734-4bfb-927f-1d63884f5da3','1','Accounts','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Conjunto Nueva Roma','2026-05-28 19:51:52','detailview','13cd25bd2797bdafbb8eb541d86d8df5',1,0),
(257,'1cb6698d-a444-4362-9123-63a930e9e029','1','Accounts','9a7320bf-51c1-45f6-9c84-df8c23e364b5','Condominio de suba','2026-06-03 15:30:31','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(258,'361f5c70-6076-4dd9-88d4-e7869e9c68db','1','Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-06-03 15:30:50','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(259,'3136f3a2-f906-444a-8bc6-4cbf386b0097','1','jjwg_Markers','36ced69c-f8fb-42a4-ae66-3706a18f1645','Conjunto malpole','2026-06-03 15:37:17','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(260,'4a99052c-ee2a-4ee4-8e44-99d68c063584','1','jjwg_Markers','36ced69c-f8fb-42a4-ae66-3706a18f1645','Conjunto malpole','2026-06-03 15:37:17','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(261,'65c23686-6226-4b97-ab5b-9b16e9bb0c6b','1','jjwg_Markers','36ced69c-f8fb-42a4-ae66-3706a18f1645','Conjunto malpole','2026-06-03 15:37:18','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(262,'0426a299-1568-4320-a555-16cde2a9f9fb','1','Accounts','4b93232d-8e89-43f7-998c-0d90d2d6215f','Malpole','2026-06-03 15:37:58','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(263,'1a1f7093-7da0-4d10-8e99-d32572883eed','1','Accounts','4b93232d-8e89-43f7-998c-0d90d2d6215f','Malpole','2026-06-03 15:39:49','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(264,'15e435b7-8fa7-4dd2-a305-c091f4589302','1','Accounts','4b93232d-8e89-43f7-998c-0d90d2d6215f','Malpole','2026-06-03 15:43:18','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(265,'c74b708e-ab0e-4865-a6d7-b09027004d3d','1','Accounts','4b93232d-8e89-43f7-998c-0d90d2d6215f','Malpole','2026-06-03 15:45:49','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(266,'fbbe7d15-d88e-4009-8963-ecbd2a24791c','1','Accounts','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-03 15:51:06','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(267,'ca92cb48-658c-46c9-877c-8ac0bbe82b9d','1','Contacts','c0b0c51a-f2cc-4591-8263-2fb09088cf58','Sr. manuel murillo','2026-06-03 15:53:51','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(268,'eb1edf1a-6bf4-4b97-85e0-b934cd694f2f','1','Users','853e0084-4fc8-4f26-bd43-798959a8342f','manuel murillo','2026-06-03 15:54:01','detailview','d75a7cfaa3205b830528713aa67343ce',0,0),
(269,'6b4f4d75-362c-4e0f-ba16-a9bdf78efac5','1','Users','853e0084-4fc8-4f26-bd43-798959a8342f','manuel murillo','2026-06-03 15:54:03','detailview','d75a7cfaa3205b830528713aa67343ce',0,0),
(270,'77aca95b-3041-4a42-9747-0c8bd38ab139','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-03 15:55:43','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(271,'b7140a7a-ab2a-401f-b327-ede3667e2448','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-03 15:55:44','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(272,'71ccf759-0ca3-49ed-81a3-f66dfef4fce6','1','Contacts','c0b0c51a-f2cc-4591-8263-2fb09088cf58','Sr. manuel murillo','2026-06-03 15:57:59','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(273,'dc8f9a73-357f-4548-9c91-ad2e0e7bd9ca','1','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-03 15:58:06','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(274,'eb0e1a4e-ee35-4f62-b5dd-66753df299b2','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-03 15:58:25','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(275,'f2bf414a-36eb-4eea-935b-42665136f4fa','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-03 15:58:26','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(276,'2fbb8279-559a-4589-8cf3-ea9797b35a05','1','Accounts','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-03 19:24:17','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(277,'fe66d12c-2157-4835-ae50-cd57389ff065','1','Users','1','Administrator','2026-06-03 19:55:42','editview','d75a7cfaa3205b830528713aa67343ce',1,0),
(278,'181739d9-8e80-47a4-9e80-f98fc79312e6','1','Users','1','Administrator','2026-06-03 19:55:44','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(279,'3d5a6fe2-6081-48ac-89bd-f3e12f06d460','1','Users','1','Administrator','2026-06-03 19:55:54','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(280,'52e0370c-74c1-42c2-ab25-7f6208e45d24','1','Users','1','Administrator','2026-06-03 19:55:54','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(281,'6bcc22d5-7ebc-45da-813c-fb397dc1fb48','1','Users','1','Administrator','2026-06-03 19:55:56','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(282,'9ce9f824-39c3-4f47-b07f-2767998a60a5','1','Users','1','Administrator','2026-06-03 20:02:42','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(283,'60d04b06-7b78-49d1-9342-cd9cc979dab6','1','Users','1','Administrator','2026-06-03 20:02:43','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(284,'e9aeba20-c3da-4c4d-bdbe-0e6a18735feb','1','SecurityGroups','c4251f42-bae0-43a5-8c80-1b16e689cffb','admin','2026-06-03 20:02:58','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(285,'85434ec3-617b-433d-a16c-0925f8e46fa7','1','SecurityGroups','c4251f42-bae0-43a5-8c80-1b16e689cffb','admin','2026-06-03 20:02:59','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(286,'5d86669d-871d-4787-b6f6-510a5038ef31','1','SecurityGroups','c4251f42-bae0-43a5-8c80-1b16e689cffb','admin','2026-06-03 20:03:00','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(287,'6aacbfce-14cd-46e2-aaaa-cb491f003111','1','caml_anuncios','a14cd58f-4f3f-46c5-8be0-593addae1d60','Gran rifa fin de semana','2026-06-03 22:32:27','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(288,'ebe44ffe-9e3b-4c74-a883-ef556ca1c103','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-03 22:36:36','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(289,'33b030f7-c4b9-4d63-9ec1-49018f9054ca','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-03 22:36:44','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(290,'55e63f47-2b22-4e1e-9fc6-9b822bbc5c82','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-03 22:38:28','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(291,'d302aa59-717e-4781-844b-6a965f232ba2','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-03 22:38:39','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(292,'1b19623d-60a7-4b03-9e0a-cb59ff24f5b7','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-03 23:00:22','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(293,'ab2a3334-11e3-4eba-824c-fc0555d28256','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-03 23:00:22','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(294,'6716d61d-73b5-4bda-b799-8dc7379a06fd','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-03 23:00:24','detailview','d75a7cfaa3205b830528713aa67343ce',1,0),
(295,'ebc20a2f-4780-4533-abed-68876c612de5','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:11:04','detailview','a1de67e604df0214975b1c25606534de',1,0),
(296,'62ad943d-11a6-4ffd-95f6-7b110453abba','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:11:06','detailview','a1de67e604df0214975b1c25606534de',1,0),
(297,'9e0dba3a-1826-477f-ad85-36a86d07c8e7','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:14:50','detailview','4506f339472541b91da952ff17836239',1,0),
(298,'017af76f-bec0-4529-bd0f-13e134c72490','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:14:51','detailview','4506f339472541b91da952ff17836239',1,0),
(299,'e6df8465-0dce-4a1e-996a-e32ca64541b0','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:18:15','detailview','4506f339472541b91da952ff17836239',1,0),
(300,'8ed23cee-d18c-44a5-9d67-310b4c43188c','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:18:17','detailview','4506f339472541b91da952ff17836239',1,0),
(301,'aed597f9-0975-4e68-affe-da2367d6822a','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:21:04','detailview','4506f339472541b91da952ff17836239',1,0),
(302,'19649680-c96f-44e0-9b1a-fbfdd521c0ac','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:21:05','detailview','4506f339472541b91da952ff17836239',1,0),
(303,'789dd8cb-675a-4715-a50c-573d3e0ef7ea','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:21:52','detailview','4506f339472541b91da952ff17836239',1,0),
(304,'7ba786d6-ae52-4f9f-96e2-1a90ca7a5b8b','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:23:21','detailview','4506f339472541b91da952ff17836239',1,0),
(305,'49c40157-6d64-4e83-9614-2da2e71e21fb','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:23:22','detailview','4506f339472541b91da952ff17836239',1,0),
(306,'633be6df-2313-490f-b9b6-957ab3977eb0','1','caml_pagos','d16f9531-9edc-4479-ac83-10111b637fc6','Abono','2026-06-04 16:25:51','detailview','4506f339472541b91da952ff17836239',1,0),
(307,'b13b1eb3-cb11-4f02-b640-5a8e0c5f56a7','1','caml_pagos','d16f9531-9edc-4479-ac83-10111b637fc6','Abono','2026-06-04 16:27:31','detailview','4506f339472541b91da952ff17836239',1,0),
(308,'b83a5776-c146-45e9-bda7-44ce395d4a59','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:27:33','detailview','4506f339472541b91da952ff17836239',1,0),
(309,'373735d4-e657-4957-9704-2c2c9ee589ef','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:27:35','detailview','4506f339472541b91da952ff17836239',1,0),
(310,'b6e08dd4-d231-4f27-bdfc-5cc22f7905c2','1','caml_pagos','d16f9531-9edc-4479-ac83-10111b637fc6','Abono','2026-06-04 16:27:37','detailview','4506f339472541b91da952ff17836239',1,0),
(311,'bd64cf6a-7d70-4f80-8844-cab321b8cf6a','1','caml_pagos','d16f9531-9edc-4479-ac83-10111b637fc6','Abono','2026-06-04 16:28:19','detailview','4506f339472541b91da952ff17836239',1,0),
(312,'b54f5634-e587-43b4-8e97-c7db8d1d3d8c','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:42:53','detailview','4506f339472541b91da952ff17836239',1,0),
(313,'84f36900-fc7c-4c97-a69b-efa2d37304cb','1','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-04 16:42:55','detailview','4506f339472541b91da952ff17836239',1,0),
(314,'ff6aea2f-4bf4-43f8-ac40-9b1f3490aa49','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 16:51:06','detailview','4506f339472541b91da952ff17836239',1,0),
(315,'9192224b-bf32-4589-b887-916c8c754d98','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 16:51:31','detailview','4506f339472541b91da952ff17836239',1,0),
(316,'3d5fe68e-4f48-46d7-94b0-ef3f3a964076','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 16:51:50','detailview','4506f339472541b91da952ff17836239',1,0),
(317,'69ef7630-3ef4-49a4-a7ad-43012ac85c87','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 16:56:00','detailview','4506f339472541b91da952ff17836239',1,0),
(318,'a1408f38-ea80-447f-9a3c-830132411f84','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 16:56:07','detailview','4506f339472541b91da952ff17836239',1,0),
(319,'9730f126-411f-48bf-b4d9-401d7edcffcf','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 16:56:13','detailview','4506f339472541b91da952ff17836239',1,0),
(320,'977da2a7-b463-4ed1-b833-59395704b04c','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 16:57:15','detailview','4506f339472541b91da952ff17836239',1,0),
(321,'f353b803-63a1-4924-a37f-a58b95880c6f','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:08:37','detailview','4506f339472541b91da952ff17836239',1,0),
(322,'653b0167-5848-4bd4-b540-9f1f8b652898','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:08:44','detailview','4506f339472541b91da952ff17836239',1,0),
(323,'6ea8c5e1-d8c5-45eb-bdd9-144dd2bc9124','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:12:04','detailview','4506f339472541b91da952ff17836239',1,0),
(324,'ec64987f-5e53-487e-a25b-4b5c4369dba5','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:12:08','detailview','4506f339472541b91da952ff17836239',1,0),
(325,'b891a03c-b4ee-4824-8e2c-8d9de5915a9c','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:12:14','detailview','4506f339472541b91da952ff17836239',1,0),
(326,'dfcb3336-b470-4f14-a5bd-249164a7ae70','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:17:10','detailview','4506f339472541b91da952ff17836239',1,0),
(327,'e3be9671-8e88-430c-b02e-99d2168009cc','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:17:39','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(328,'7da5f964-3820-4d2a-b826-5ab94b825599','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:18:05','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(329,'f3fb7f94-eec5-4060-8b16-704217b218cb','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:19:05','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(330,'bb2cf20c-fb31-42f8-8b1a-92bcd096773d','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:19:12','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(331,'cb807e3c-17e0-4ad2-8b40-2f268790f429','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:21:05','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(332,'e6a03abb-410e-4ea8-9717-a0c56ce6adcf','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:21:12','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(333,'114e54ab-1579-4784-8728-be444032cbff','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:21:54','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(334,'f2e9a844-16ea-4aa0-b75e-f4856e31ad9b','1','Accounts','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-04 17:38:52','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(335,'5e643a43-a9a1-4ec6-9382-247814605645','1','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:40:50','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(336,'fe020154-7857-4b04-9c46-2f636921c68a','1','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:40:52','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(337,'85f29c8b-ee7e-4e42-944e-3617dec1588d','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:41:07','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(338,'2efa4c2a-b4b7-46f3-8bb3-68f05be8fb8f','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:41:17','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(339,'c69b880e-7b3f-4303-9a6a-d44398315c33','1','AOS_Invoices','c2735663-9462-44ea-b81b-11f3b46aac51','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:41:36','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(340,'d6c58efa-bd6a-44b5-8dd6-71f02d4f05a8','1','AOS_Invoices','c2735663-9462-44ea-b81b-11f3b46aac51','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:41:37','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(341,'b3eb81e8-979a-47fe-a163-0370a4ef65a6','1','AOS_Invoices','0f9f6350-9a10-4ca8-b471-b9cdda9623a3','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:42:41','detailview','c20e13d1daecc287981afdf44f21a665',0,0),
(342,'643ce8ce-1fb1-45a7-b94e-a8b86b7524db','1','AOS_Invoices','0f9f6350-9a10-4ca8-b471-b9cdda9623a3','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:42:43','detailview','c20e13d1daecc287981afdf44f21a665',0,0),
(343,'9864ad8d-6899-4f9f-b4aa-dda58df9d562','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:43:31','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(344,'b63be63e-571e-47e3-9470-9190c21fedfd','1','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-04 17:43:36','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(345,'7c864ef3-8bbf-4e3e-b845-b3b9fbe698ca','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:57:58','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(346,'09ecf8b6-bc26-4ab2-9f4b-774e02629430','1','Accounts','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-04 17:58:16','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(347,'fd961ef3-dc78-49ee-950e-30e272c9a1ec','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:58:22','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(348,'0fd8f78e-c99d-4e13-a390-df7b03a60217','1','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:58:46','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(349,'6a265fb2-6108-489f-b164-5ed459929222','1','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:58:47','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(350,'3496164d-981f-47be-9590-d4305b3119c2','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 17:59:01','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(351,'92a0fde1-3a07-44b5-b83d-14f584ba67cf','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 18:00:53','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(352,'d4ac682f-8c6c-4b62-84bc-2343d923735b','1','caml_tarifa','0e1b8786-d0cd-4bca-884e-eaa961844fb5','mensualidad','2026-06-04 18:04:02','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(353,'3cd389eb-b099-4e6b-bf39-6520cb7f37b1','1','caml_vehiculos','7b5eff14-e01e-4916-a7b6-d90cc8146098','ydy84f','2026-06-04 18:04:29','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(354,'d24186cb-9c52-44ab-bb4e-7ca49c48d0b1','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 18:04:37','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(355,'6da1a0dd-682f-41b7-a788-bbe8e86b9111','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 18:05:01','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(356,'ef18b7dd-c29f-4b74-bce6-ae0b379909fc','1','caml_control_accesos','b9461b9a-7b3d-4a66-a6df-43688ccbc766','pgogfd','2026-06-04 18:55:34','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(357,'4532fd83-3283-4e82-8079-83fdcf8c351e','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 18:56:54','detailview','c20e13d1daecc287981afdf44f21a665',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES
('0d1206bb-9811-41a8-be21-ea72e2dfa517','upload/upgrades/module/anuncios2026_06_03_173043.zip','1019fb27d93d998f5aad4d61d2598b4d','module','installed','1780525843','anuncios','Modulo de anuncios','anuncios','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO319czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJjYW1sIjtzOjY6ImF1dGhvciI7czo0OiJjYW1sIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxODoiTW9kdWxvIGRlIGFudW5jaW9zIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjg6ImFudW5jaW9zIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyNi0wNi0wMyAyMjozMDo0MyI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE3ODA1MjU4NDM7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjg6ImFudW5jaW9zIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEzOiJjYW1sX2FudW5jaW9zIjtzOjU6ImNsYXNzIjtzOjEzOiJjYW1sX2FudW5jaW9zIjtzOjQ6InBhdGgiO3M6Mzk6Im1vZHVsZXMvY2FtbF9hbnVuY2lvcy9jYW1sX2FudW5jaW9zLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2NhbWxfYW51bmNpb3MiO3M6MjoidG8iO3M6MjE6Im1vZHVsZXMvY2FtbF9hbnVuY2lvcyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZXNfTVgubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19NWCI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=','2026-06-03 22:30:43',1),
('257b5368-73a4-4999-aaef-2a0830633ca2','upload/upgrades/module/apartamentos2026_05_25_175439.zip','28fc8c7785f1d9fb54d29f69235aae48','module','installed','1779749678','apartamentos','Apartamentos','apartamentos','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO319czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJjYW1sIjtzOjY6ImF1dGhvciI7czo0OiJjYW1sIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxMjoiQXBhcnRhbWVudG9zIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjEyOiJhcGFydGFtZW50b3MiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDI2LTA1LTI1IDIyOjU0OjM4IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTc3OTc0OTY3ODtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTI6ImFwYXJ0YW1lbnRvcyI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxNzoiY2FtbF9hcGFydGFtZW50b3MiO3M6NToiY2xhc3MiO3M6MTc6ImNhbWxfYXBhcnRhbWVudG9zIjtzOjQ6InBhdGgiO3M6NDc6Im1vZHVsZXMvY2FtbF9hcGFydGFtZW50b3MvY2FtbF9hcGFydGFtZW50b3MucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvY2FtbF9hcGFydGFtZW50b3MiO3M6MjoidG8iO3M6MjU6Im1vZHVsZXMvY2FtbF9hcGFydGFtZW50b3MiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VzX01YLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZXNfTVgiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2026-05-25 22:54:38',1),
('32a64d09-a212-4e85-873b-e9064a4ac005','upload/upgrades/module/gestion_parqueadero2026_05_26_145157.zip','84fa5fb0aaa16854c59fe33c11ba99e6','module','installed','1779825117','gestion_parqueadero','Parqueaderos del conjunto','gestion_parqueadero','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO319czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJjYW1sIjtzOjY6ImF1dGhvciI7czo0OiJjYW1sIjtzOjExOiJkZXNjcmlwdGlvbiI7czoyNToiUGFycXVlYWRlcm9zIGRlbCBjb25qdW50byI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxOToiZ2VzdGlvbl9wYXJxdWVhZGVybyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjYtMDUtMjYgMTk6NTE6NTciO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNzc5ODI1MTE3O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxOToiZ2VzdGlvbl9wYXJxdWVhZGVybyI7czo1OiJiZWFucyI7YTo0OntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoyMDoiY2FtbF9jb250cm9sX2FjY2Vzb3MiO3M6NToiY2xhc3MiO3M6MjA6ImNhbWxfY29udHJvbF9hY2Nlc29zIjtzOjQ6InBhdGgiO3M6NTM6Im1vZHVsZXMvY2FtbF9jb250cm9sX2FjY2Vzb3MvY2FtbF9jb250cm9sX2FjY2Vzb3MucGhwIjtzOjM6InRhYiI7YjoxO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czoxMToiY2FtbF90YXJpZmEiO3M6NToiY2xhc3MiO3M6MTE6ImNhbWxfdGFyaWZhIjtzOjQ6InBhdGgiO3M6MzU6Im1vZHVsZXMvY2FtbF90YXJpZmEvY2FtbF90YXJpZmEucGhwIjtzOjM6InRhYiI7YjoxO31pOjI7YTo0OntzOjY6Im1vZHVsZSI7czoxNzoiY2FtbF9wYXJxdWVhZGVyb3MiO3M6NToiY2xhc3MiO3M6MTc6ImNhbWxfcGFycXVlYWRlcm9zIjtzOjQ6InBhdGgiO3M6NDc6Im1vZHVsZXMvY2FtbF9wYXJxdWVhZGVyb3MvY2FtbF9wYXJxdWVhZGVyb3MucGhwIjtzOjM6InRhYiI7YjoxO31pOjM7YTo0OntzOjY6Im1vZHVsZSI7czoxNDoiY2FtbF92ZWhpY3Vsb3MiO3M6NToiY2xhc3MiO3M6MTQ6ImNhbWxfdmVoaWN1bG9zIjtzOjQ6InBhdGgiO3M6NDE6Im1vZHVsZXMvY2FtbF92ZWhpY3Vsb3MvY2FtbF92ZWhpY3Vsb3MucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YTo0OntpOjA7YToyOntzOjQ6ImZyb20iO3M6NTI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvY2FtbF9jb250cm9sX2FjY2Vzb3MiO3M6MjoidG8iO3M6Mjg6Im1vZHVsZXMvY2FtbF9jb250cm9sX2FjY2Vzb3MiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NDM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvY2FtbF90YXJpZmEiO3M6MjoidG8iO3M6MTk6Im1vZHVsZXMvY2FtbF90YXJpZmEiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvY2FtbF9wYXJxdWVhZGVyb3MiO3M6MjoidG8iO3M6MjU6Im1vZHVsZXMvY2FtbF9wYXJxdWVhZGVyb3MiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NDY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvY2FtbF92ZWhpY3Vsb3MiO3M6MjoidG8iO3M6MjI6Im1vZHVsZXMvY2FtbF92ZWhpY3Vsb3MiO319czo4OiJsYW5ndWFnZSI7YToyOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VzX01YLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZXNfTVgiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2026-05-26 19:51:57',1),
('3af44738-633c-4f84-8651-2b6ce32cbc44','upload/upgrades/module/pagos2026_06_03_175220.zip','8eee8ce5915321593024afe42ddb6298','module','installed','1780527140','pagos','Modulo de pagos','pagos','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO319czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJjYW1sIjtzOjY6ImF1dGhvciI7czo0OiJjYW1sIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNToiTW9kdWxvIGRlIHBhZ29zIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjU6InBhZ29zIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyNi0wNi0wMyAyMjo1MjoyMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE3ODA1MjcxNDA7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjU6InBhZ29zIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEwOiJjYW1sX3BhZ29zIjtzOjU6ImNsYXNzIjtzOjEwOiJjYW1sX3BhZ29zIjtzOjQ6InBhdGgiO3M6MzM6Im1vZHVsZXMvY2FtbF9wYWdvcy9jYW1sX3BhZ29zLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2NhbWxfcGFnb3MiO3M6MjoidG8iO3M6MTg6Im1vZHVsZXMvY2FtbF9wYWdvcyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZXNfTVgubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19NWCI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=','2026-06-03 22:52:20',1),
('d4ba8be3-9dde-42dc-9693-c7aecd0bc4e8','upload/upgrades/langpack/es_MX_SuiteCRM_lang_8.10.zip','d626be6e45d85efcbb9aa48a6bfdcbc9','langpack','installed','8.10-26.04','','','','YTozOntzOjg6Im1hbmlmZXN0IjthOjc6e3M6NDoibmFtZSI7czoxNjoiU3BhbmlzaCAoTWV4aWNvKSI7czoxMToiZGVzY3JpcHRpb24iO3M6NTM6IlRyYW5zbGF0aW9uOiBjcm93ZGluLmNvbS9wcm9qZWN0L3N1aXRlY3JtdHJhbnNsYXRpb25zIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6MzoiWWVzIjtzOjY6ImF1dGhvciI7czoxODoiQ29tdW5pZGFkIFN1aXRlQ1JNIjtzOjc6InZlcnNpb24iO3M6MTA6IjguMTAtMjYuMDQiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDI2LTA0LTMwIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJlc19NWCI7czo5OiJpbWFnZV9kaXIiO3M6MTc6IjxiYXNlcGF0aD4vaW1hZ2VzIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2luY2x1ZGUiO3M6MjoidG8iO3M6NzoiaW5jbHVkZSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5zdGFsbCI7czoyOiJ0byI7czo3OiJpbnN0YWxsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2026-05-20 20:31:59',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES
('017b128e-5e45-46b1-8f0b-0b45de750ac1','Home2_LEAD',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('03e410de-85b6-4dc4-a298-2b5676db176a','Home2_LEAD_6ec481b0-682c-47f1-b9c3-7e8e193ffda2',0,'2026-05-27 22:01:48','2026-05-27 22:01:48','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('062ab565-0596-4652-af1d-5092fee84ec1','ACLRoles',0,'2026-05-27 22:05:33','2026-05-27 22:05:33','1','YTowOnt9'),
('0723407d-ca78-4d3e-99b1-4b329d577e40','Home',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImZmNjQ4M2EzLTJkN2MtNGZmMy04YTNlLWUwNTBkZmRmYTRkMyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImIzM2EyZTBhLTk5MzMtNGUxYy1hM2VhLTRjNDRmOTUwMWY4OSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjRiM2E3MTAwLWE5NTQtNDcxOC1hOTE3LTFhNGYwZDNjZWY3NCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImQwZjYyMjI4LTQyZTktNGFiYi05NjJmLTMxNTNhZWUwZjQyOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOWViNDZjMjQtZDdhNC00NTFiLWE4MmEtZDg1NGRhODE0NjNiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmVjNDgxYjAtNjgyYy00N2YxLWI5YzMtN2U4ZTE5M2ZmZGEyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJiMzNhMmUwYS05OTMzLTRlMWMtYTNlYS00YzQ0Zjk1MDFmODkiO2k6MTtzOjM2OiI0YjNhNzEwMC1hOTU0LTQ3MTgtYTkxNy0xYTRmMGQzY2VmNzQiO2k6MjtzOjM2OiJkMGY2MjIyOC00MmU5LTRhYmItOTYyZi0zMTUzYWVlMGY0MjgiO2k6MztzOjM2OiI5ZWI0NmMyNC1kN2E0LTQ1MWItYTgyYS1kODU0ZGE4MTQ2M2IiO2k6NDtzOjM2OiI2ZWM0ODFiMC02ODJjLTQ3ZjEtYjljMy03ZThlMTkzZmZkYTIiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImZmNjQ4M2EzLTJkN2MtNGZmMy04YTNlLWUwNTBkZmRmYTRkMyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('09a4e197-6fa7-48ca-81f9-795a7f3595d7','Home2_LEAD',0,'2026-05-27 22:01:47','2026-05-27 22:01:47','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('0ef5728d-c92f-4200-adba-2576cbce0332','Emails',0,'2026-05-21 20:40:58','2026-06-04 16:57:16','1','YTowOnt9'),
('178ca1f1-e987-47d0-b8ff-eaa818e6e06b','global',0,'2026-05-21 21:27:57','2026-05-21 21:27:57','897b0de3-78c9-4ee3-8b67-9cc910d63f6c','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjRhN2VjOGM3LWVkNjMtNGU5OS05NmNhLTM3MTYwMjNlMWExYiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('1cc816c0-9578-41c9-a46f-644713668255','search',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEyOiJnbG9iYWxTZWFyY2giO2E6MTE6e3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo1OiJDYXNlcyI7czo1OiJDYXNlcyI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czo1OiJMZWFkcyI7czo1OiJMZWFkcyI7czo4OiJNZWV0aW5ncyI7czo4OiJNZWV0aW5ncyI7czo1OiJOb3RlcyI7czo1OiJOb3RlcyI7czo5OiJDYW1wYWlnbnMiO3M6OToiQ2FtcGFpZ25zIjt9fQ=='),
('23c02782-58fd-4d4a-ac36-5f0ba47431ce','ETag',0,'2026-05-25 22:54:38','2026-06-03 22:52:20','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NDt9'),
('24f0dc92-1755-49e7-a3f4-213be67f065f','AOS_Invoices',0,'2026-06-04 16:50:56','2026-06-04 16:50:56','1','YTowOnt9'),
('25a7bd25-cbe1-4c75-ac29-b5717d31bb51','Home2_ACCOUNT',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2d78c801-33af-475e-b116-3d082527551c','Home2_DOCUMENT',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3bb0b5ca-cf3f-4bb3-902b-b525d701c186','global',0,'2026-05-20 16:29:32','2026-06-04 18:04:30','1','YTo1ODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjFkMmIwZDcxLTYwZDUtNDVhYS1hMGY0LTc3YTg4NDRlNmJiZCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjI0OiJzdWJwYW5lbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MjQ6Imxpc3R2aWV3X3BhZ2luYXRpb25fdHlwZSI7czoxMDoicGFnaW5hdGlvbiI7czoyODoicmVjb3JkX21vZGFsX3BhZ2luYXRpb25fdHlwZSI7czoxMDoicGFnaW5hdGlvbiI7czoxODoic25vb3plX2FsZXJ0X3RpbWVyIjtzOjM6IjYwMCI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MTQ6IkFtZXJpY2EvQm9nb3RhIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiWS1tLWQiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVzX01YIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJzaWduYXR1cmVfZGVmYXVsdCI7czowOiIiO3M6MTc6InNpZ25hdHVyZV9wcmVwZW5kIjtzOjA6IiI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo3OiJ0aW55bWNlIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTk6ImVtYWlsX2VkaXRvcl9vcHRpb24iO3M6NzoidGlueW1jZSI7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6ImRhdGVmb3JtYXQiO3M6NToiWS1tLWQiO3M6MTA6InRpbWVmb3JtYXQiO3M6MzoiSDppIjtzOjI6InVpIjtzOjEwNTY3OiJ7Im5vb3AiOiJub29wIiwiYWNjb3VudHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhZG1pbmlzdHJhdGlvbi1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjozLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjozfSwicmVjb3JkSWRzIjpbeyJpZCI6IjJlNGVhMjQ2LWJiYWMtNDE1MC1iM2RhLTBiODYyNjBhNDU1YiJ9LHsiaWQiOiIwOTk1NWVjMS02YzM5LTRkYjgtODc3OC03MDBmODExYzZmNDcifSx7ImlkIjoiMmQ3ODY2NTEtYmYyZi00MzEwLTkxMTctOGVkYzBkNjRiZDEzIn1dfSwidXNlcnMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJ1c2Vycy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwidXNlcnMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwidXNlcnMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwidXNlcnMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6NywicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6N30sInJlY29yZElkcyI6W3siaWQiOiI1N2JlZjhkMi0yMzliLTQ5NjAtOWM2My1mOGJjMjczYjgwOTQifSx7ImlkIjoiN2ExZjE1YzItYWNhOS00YmYyLWE5ZjgtMjZjMDczZDViNjNhIn0seyJpZCI6IjQwMGZkYmUzLWU5MzgtNGI2YS04ZGViLWE0NTljMjJjY2JhNSJ9LHsiaWQiOiI4OTdiMGRlMy03OGM5LTRlZTMtOGI2Ny05Y2M5MTBkNjNmNmMifSx7ImlkIjoiYThjYjg0MTgtYjkwZS00YTVhLWJiZGEtZjY0YzAwMWZjMjI0In0seyJpZCI6IjBiNTE2YzhmLTA5ODYtNDFjMS04OWE5LTc5M2UyMDJkNjc2MCJ9LHsiaWQiOiIxIn1dfSwiY29udGFjdHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjb250YWN0cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiY29udGFjdHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiY29udGFjdHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiY29udGFjdHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MTcsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjE3fSwicmVjb3JkSWRzIjpbeyJpZCI6IjE5OTgxMDE4LTVmYzctNDM1YS05Y2I1LTBkMWQ0NzliN2NhYiJ9LHsiaWQiOiI5OTZhMzNjNC00M2U2LTRiNWMtOGJkNy1hMWIxYjdkODMyOTMifSx7ImlkIjoiYzZjZjI2ZjgtMmM1OC00N2YzLTk3ODktMDVhZmZhMGMzYjU0In0seyJpZCI6IjYzZGVhYzliLTI4YTctNGI3ZC04YTg3LTM5MTAzODM0ZDk0NiJ9LHsiaWQiOiI2NWJkOTY1OC01YzVhLTQ1YzUtODQyYy00YTAzNzhkYmI4ZmYifSx7ImlkIjoiNzBhY2Q0NGEtMTc2OC00MTRlLWFjZTQtNmQ3YTY5YTJlZTBlIn0seyJpZCI6IjBhNDM2YmEwLTIwM2YtNDQxMS1iNDVmLTgyMTI4ZWYzMzBjZSJ9LHsiaWQiOiJhYzlkODlkMC03MmE3LTQyMzktOGM5ZS0wMDg3OWExZTQ0OWQifSx7ImlkIjoiYjU3MWEwZDEtM2U3OC00YzNlLTg1MzItYmY5OTUwMThkNzdhIn0seyJpZCI6IjI4ZWZjMjEzLTFhYmMtNGVjMy04YjEwLTJiMmUzZjU3ODRhNSJ9LHsiaWQiOiI1Njk3YWNjZC0wYjIyLTQ4NmQtYTBjOS1iMGI5ODBiYzdmYTIifSx7ImlkIjoiNTY5N2FjY2QtMGIyMi00ODZkLWEwYzktYjBiOTgwYmM3ZmEyIn0seyJpZCI6ImUwNjMzZmEzLTRkNGQtNDBlYi04ZGRmLTM4MTYyNzYxY2I2MyJ9LHsiaWQiOiJlMDYzM2ZhMy00ZDRkLTQwZWItOGRkZi0zODE2Mjc2MWNiNjMifSx7ImlkIjoiM2ZjNmE4ODEtMWMzNC00N2E0LTlhMDUtYTVhZDYwNzU3MzQxIn0seyJpZCI6ImIwMjExYjRhLTdhMzgtNGIyNy1iMDJiLTZmMzIzMTdkZjE3ZCJ9LHsiaWQiOiJkNTMyNDRjMy00YWU0LTQ1OTQtYThlZi1kOGVkZDUzM2NjMjAifV19LCJjb250YWN0cy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJjb250YWN0cy1zdWJwYW5lbC1jb250YWluZXItY29sbGFwc2UiOmZhbHNlLCJjb250YWN0cy1zdWJwYW5lbC1jb250YWluZXItb3Blbi1zdWJwYW5lbHMiOlsiY2FtbF9hcGFydGFtZW50b3NfY29udGFjdHNfMSIsInNlY3VyaXR5Z3JvdXBzIl0sImFjY291bnRzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjIsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjJ9LCJyZWNvcmRJZHMiOlt7ImlkIjoiOWE3MzIwYmYtNTFjMS00NWY2LTljODQtZGY4YzIzZTM2NGI1In0seyJpZCI6IjRiOWZjZDNmLTdlZmEtNDIwZi04MGVhLWRjZTRlODBjZGNmMSJ9XX0sImFjY291bnRzLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsImFjY291bnRzLXN1YnBhbmVsLWNvbnRhaW5lci1jb2xsYXBzZSI6ZmFsc2UsImFjY291bnRzLXN1YnBhbmVsLWNvbnRhaW5lci1vcGVuLXN1YnBhbmVscyI6WyJjb250YWN0cyIsImFjY291bnRzX2NhbWxfYXBhcnRhbWVudG9zXzEiLCJzZWN1cml0eWdyb3VwcyJdLCJob21lLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjQsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjR9LCJyZWNvcmRJZHMiOlt7ImlkIjoiMzYyNjZmOWEtMWMyZS00OGQ5LTg3MjItNzg4YjhmOWMzYmMyIn0seyJpZCI6IjRiOTMyMzJkLThlODktNDNmNy05OThjLTBkOTBkMmQ2MjE1ZiJ9LHsiaWQiOiI5YTczMjBiZi01MWMxLTQ1ZjYtOWM4NC1kZjhjMjNlMzY0YjUifSx7ImlkIjoiNGI5ZmNkM2YtN2VmYS00MjBmLTgwZWEtZGNlNGU4MGNkY2YxIn1dfSwiY2FtbF9hcGFydGFtZW50b3MtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNhbWxfYXBhcnRhbWVudG9zLXN1YnBhbmVsLWNvbnRhaW5lci1vcGVuLXN1YnBhbmVscyI6WyJjYW1sX2FwYXJ0YW1lbnRvc19jb250YWN0c18xIiwic2VjdXJpdHlncm91cHMiLCJjYW1sX2FwYXJ0YW1lbnRvc19hb3NfaW52b2ljZXNfMSIsImNhbWxfYXBhcnRhbWVudG9zX2NhbWxfY29udHJvbF9hY2Nlc29zXzEiXSwiY2FzZXMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjYXNlcy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJjYXNlcy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJjYXNlcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiY2FzZXMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MywicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6M30sInJlY29yZElkcyI6W3siaWQiOiIzNTNlNmExZS00MDE4LTRlZTgtYmNlOS1kNDM2YjlhYjM2MWMifSx7ImlkIjoiNzk0Y2NkNDEtMzcwMC00OGE2LThlYWItNThkOWU2YjM1M2IzIn0seyJpZCI6IjRkNmE5MGE5LWM2NWQtNDNlZi04MjliLTI3MTdjMWU2ODRmMCJ9XX0sImNhc2VzLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsImNhc2VzLXN1YnBhbmVsLWNvbnRhaW5lci1jb2xsYXBzZSI6ZmFsc2UsImNhbWxfYXBhcnRhbWVudG9zLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sImNhbWxfYXBhcnRhbWVudG9zLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNhbWxfYXBhcnRhbWVudG9zLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNhbWxfYXBhcnRhbWVudG9zLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjUsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjV9LCJyZWNvcmRJZHMiOlt7ImlkIjoiYzVhZTFhZTQtYmIxNS00Njk3LWI1ODQtM2E1MDY1MDI1NTM1In0seyJpZCI6IjZiOTY1YTFjLWQ1ZTItNGM4ZS1hMGIxLTAyOWM4NjcxMTg3OSJ9LHsiaWQiOiIyZTRlYTI0Ni1iYmFjLTQxNTAtYjNkYS0wYjg2MjYwYTQ1NWIifSx7ImlkIjoiMDk5NTVlYzEtNmMzOS00ZGI4LTg3NzgtNzAwZjgxMWM2ZjQ3In0seyJpZCI6IjJkNzg2NjUxLWJmMmYtNDMxMC05MTE3LThlZGMwZDY0YmQxMyJ9XX0sImNhc2VzLXN1YnBhbmVsLWNvbnRhaW5lci1vcGVuLXN1YnBhbmVscyI6W10sImJ1c2luZXNzLWhvdXJzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiYnVzaW5lc3MtaG91cnMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYnVzaW5lc3MtaG91cnMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiYnVzaW5lc3MtaG91cnMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sIm1hcmtlcnMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MiwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6Mn0sInJlY29yZElkcyI6W3siaWQiOiI5N2JkMjVlYy0yZDIxLTQyNGYtYTJhOS1jYmUyYjE5ZWY2YjAifSx7ImlkIjoiYTg4Yjc5ODQtN2IzOS00NzMxLWFmYzAtMzMzMDA4MzU0YWQyIn1dfSwibWFya2Vycy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsIm1hcmtlcnMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwibWFya2Vycy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJtYXJrZXJzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhY2wtcm9sZXMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJhY2wtcm9sZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNsLXJvbGVzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFjbC1yb2xlcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiYWNsLXJvbGVzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjEsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjF9LCJyZWNvcmRJZHMiOlt7ImlkIjoiYmM4YjdlNWMtOGQwOS00OTBlLWI0YzAtZDIzODVmOTY5ZmExIn1dfSwiYWRkcmVzcy1jYWNoZS1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImFkZHJlc3MtY2FjaGUtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWRkcmVzcy1jYWNoZS1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJhZGRyZXNzLWNhY2hlLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiTk9ORSJ9LCJhcmVhcy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImFyZWFzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImFyZWFzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFyZWFzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhcmVhcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6MjAsImxhc3QiOjIwLCJ0b3RhbCI6MjEsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjIwfSwicmVjb3JkSWRzIjpbeyJpZCI6IjVhMDU0MDRkLWI0YjktNGY5Yi1hZDZkLTM2ODZjM2U4MjllYiJ9LHsiaWQiOiJmYmFlNGQ3MS1mMDg3LTQ0YTctYmI2MS0zMTc0OGYwY2NmOGUifSx7ImlkIjoiZDg0ZmRlYjMtZTBkNy00YWQ1LWE4NzYtNGFhMzU0ZGI3MWI4In0seyJpZCI6ImJjNDNlYmU1LWU0NTktNDBlMC1iYTIzLTc5MGVmOWJkYTQwOCJ9LHsiaWQiOiJhOTAxNzdiNS1kYzA4LTQzMDktYjJlZi0zODM3NzM3M2I0OGQifSx7ImlkIjoiYTUwZTM4ZTYtYjQ0MS00MDAyLWJlYzctYTExOTU2M2ZkMjQwIn0seyJpZCI6ImEzNmNjNzhmLWRkMDAtNDI4Mi1iYThhLTcxZmIyYTg3MWM3NiJ9LHsiaWQiOiI5YzI0ZGYyYi0zOTg0LTRmYzItODA2MS1lYjQ5MDljNDVjYjYifSx7ImlkIjoiOGQ3MzllNjEtYzIxMy00OTFhLTgzNDktZWIxNTBkMjY1ZDA2In0seyJpZCI6Ijg5NmVjN2M2LWQ5MWQtNDhiMy1iOWRlLWM0ZDhhY2ExYTFmNyJ9LHsiaWQiOiI3MmM0YzAyMy02NzNiLTQ3MTMtOWRmNS04NzRiYmUyMzk1MDMifSx7ImlkIjoiMDEyM2QxZmQtZWY1OS00OWQ5LThjODctMTVmNjk1ZTdkYTk5In0seyJpZCI6IjQ4MGM0Y2NlLWNjNjAtNDM1My04ZDAxLWZjNzIyYTRkZjAzYSJ9LHsiaWQiOiIzNmJhNjYyOS05Nzg2LTRiMTUtODFhMS1jYjJhZjVjYzA0OTQifSx7ImlkIjoiMmMyZjQ2N2QtZGNlNi00NTkzLWE0YzctZGRjYjk4NGUwZDU1In0seyJpZCI6IjIwN2U5Y2Q2LTIzNDctNGUyYS1hZWY4LWVlY2U4MWM3YmIzMCJ9LHsiaWQiOiIxZTYxZGUzZi04ZjRhLTRlY2EtYjE5ZC0xZjdhNTkyY2Q2NzUifSx7ImlkIjoiMWMzMjZiOTYtNDM2Ni00ZGVlLTlhYjEtNmY2ZTBhMzFmZDkwIn0seyJpZCI6IjE4ZjA3YWUyLTUyOWItNDFiZS05OTVjLTk3OTNhMWRhNTU4YyJ9LHsiaWQiOiIwMmRmMTI2OC0yMDk1LTRiNzMtYTJmYi1mMmY3Y2ExOWZiNTIifV19LCJtYXBzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjoyMCwibGFzdCI6MjAsInRvdGFsIjoyMSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MjB9LCJyZWNvcmRJZHMiOlt7ImlkIjoiNWEwNTQwNGQtYjRiOS00ZjliLWFkNmQtMzY4NmMzZTgyOWViIn0seyJpZCI6ImZiYWU0ZDcxLWYwODctNDRhNy1iYjYxLTMxNzQ4ZjBjY2Y4ZSJ9LHsiaWQiOiJkODRmZGViMy1lMGQ3LTRhZDUtYTg3Ni00YWEzNTRkYjcxYjgifSx7ImlkIjoiYmM0M2ViZTUtZTQ1OS00MGUwLWJhMjMtNzkwZWY5YmRhNDA4In0seyJpZCI6ImE5MDE3N2I1LWRjMDgtNDMwOS1iMmVmLTM4Mzc3MzczYjQ4ZCJ9LHsiaWQiOiJhNTBlMzhlNi1iNDQxLTQwMDItYmVjNy1hMTE5NTYzZmQyNDAifSx7ImlkIjoiYTM2Y2M3OGYtZGQwMC00MjgyLWJhOGEtNzFmYjJhODcxYzc2In0seyJpZCI6IjljMjRkZjJiLTM5ODQtNGZjMi04MDYxLWViNDkwOWM0NWNiNiJ9LHsiaWQiOiI4ZDczOWU2MS1jMjEzLTQ5MWEtODM0OS1lYjE1MGQyNjVkMDYifSx7ImlkIjoiODk2ZWM3YzYtZDkxZC00OGIzLWI5ZGUtYzRkOGFjYTFhMWY3In0seyJpZCI6IjcyYzRjMDIzLTY3M2ItNDcxMy05ZGY1LTg3NGJiZTIzOTUwMyJ9LHsiaWQiOiIwMTIzZDFmZC1lZjU5LTQ5ZDktOGM4Ny0xNWY2OTVlN2RhOTkifSx7ImlkIjoiNDgwYzRjY2UtY2M2MC00MzUzLThkMDEtZmM3MjJhNGRmMDNhIn0seyJpZCI6IjM2YmE2NjI5LTk3ODYtNGIxNS04MWExLWNiMmFmNWNjMDQ5NCJ9LHsiaWQiOiIyYzJmNDY3ZC1kY2U2LTQ1OTMtYTRjNy1kZGNiOTg0ZTBkNTUifSx7ImlkIjoiMjA3ZTljZDYtMjM0Ny00ZTJhLWFlZjgtZWVjZTgxYzdiYjMwIn0seyJpZCI6IjFlNjFkZTNmLThmNGEtNGVjYS1iMTlkLTFmN2E1OTJjZDY3NSJ9LHsiaWQiOiIxYzMyNmI5Ni00MzY2LTRkZWUtOWFiMS02ZjZlMGEzMWZkOTAifSx7ImlkIjoiMThmMDdhZTItNTI5Yi00MWJlLTk5NWMtOTc5M2ExZGE1NThjIn0seyJpZCI6IjAyZGYxMjY4LTIwOTUtNGI3My1hMmZiLWYyZjdjYTE5ZmI1MiJ9XX0sImludm9pY2VzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sImludm9pY2VzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjEsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjF9LCJyZWNvcmRJZHMiOlt7ImlkIjoiOTc1Mjc5MWEtYzBlYS00MzdiLTg2YTQtZWUwOTUwYmFlZGRmIn1dfSwiY2FtbF9wYWdvcy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FtbF92ZWhpY3Vsb3MtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2V9IjtzOjExOiJqandnX0FyZWFzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJqandnX01hcHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTQ6Ik9BdXRoMkNsaWVudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQUNMUm9sZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTU6IlNlY3VyaXR5R3JvdXBzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjY6IlVzZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czoxODoiY2FtbF9hcGFydGFtZW50b3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fX0='),
('42f56965-6d14-46d5-96e1-2fc14f7b3088','Users',0,'2026-05-27 22:02:13','2026-05-27 22:15:02','1','YTowOnt9'),
('44c4dd8e-7df9-4dbc-a845-1a297ba47f33','jjwg_Areas',0,'2026-05-26 16:38:38','2026-05-26 16:38:38','1','YTowOnt9'),
('4bb8fecd-444f-43b5-8a28-06cf3b651083','global',0,'2026-06-03 15:45:47','2026-06-03 15:57:41','853e0084-4fc8-4f26-bd43-798959a8342f','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjI5NjhkNzZhLTM2NjQtNDkyMS05YjFlLWU4YTY5MjExYmU0OSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('4d21ae75-eb3d-4707-b4db-6991f42e6ec6','jjwg_Markers',0,'2026-05-28 15:52:42','2026-06-03 15:37:59','1','YTowOnt9'),
('5071fcef-bbaf-4dcf-a8ed-bf979a4cfc8b','Home2_CALL',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('585590e1-f55c-4291-8077-8336e020d539','SecurityGroups2_SECURITYGROUP',0,'2026-05-27 22:15:04','2026-05-27 22:15:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5d4c1cce-5c59-4a77-aa21-05d9f59310c7','Emails',0,'2026-05-27 22:12:35','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YTowOnt9'),
('6028621d-98ed-491c-aecb-dc8d93d6fbd2','ACLRoles2_ACLROLE',0,'2026-05-27 22:02:15','2026-05-27 22:02:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('649f808c-a361-49ae-945c-9d69c684d575','Home2_CALL',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6ca1fd29-f86e-4225-befd-a1d9c4c3f65c','Home2_MEETING',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6e20f438-8d43-4b15-b015-2ec8accd163a','Dashboard',0,'2026-05-27 22:12:35','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YTowOnt9'),
('75319964-2c36-4bce-9d43-b7830f357972','global',0,'2026-05-21 20:44:07','2026-05-21 20:44:07','0b516c8f-0986-41c1-89a9-793e202d6760','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImRkZTk5MDIwLTljMjgtNDFmZS04OGVjLTgxMjdhZDA3MmNlYiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('75be192f-473a-4a68-a45b-c29aebef12c0','Home2_MEETING',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('78215e24-2a0a-4210-8f7f-3097691b1812','Home',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjA2YTE2YzEwLTIyMDMtNDlmNi1iYWVhLTYxZDFkYmQwZmMyNSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjgxM2JmNzZmLWE1YTgtNDQ5MS04ZTNiLTI5N2Y3ZGY2YWE0NCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImU1OThjZmYwLWQ5ZTgtNGQ4Yi1iMjc4LTRiY2M0YmMxMzNiZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjVmOTUyMDUwLTIxYWYtNDA1Ny04OGUxLTNlNjBmOTgxMmM5MyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzg0MjQ5MWYtM2M3Mi00NjZlLWFhYjQtNjk5NmM2Njc3MTM5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZjJmYTAxYmQtMTRiMS00NmU3LTljY2MtZjJlZjFiYjY4MWFkIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI4MTNiZjc2Zi1hNWE4LTQ0OTEtOGUzYi0yOTdmN2RmNmFhNDQiO2k6MTtzOjM2OiJlNTk4Y2ZmMC1kOWU4LTRkOGItYjI3OC00YmNjNGJjMTMzYmYiO2k6MjtzOjM2OiI1Zjk1MjA1MC0yMWFmLTQwNTctODhlMS0zZTYwZjk4MTJjOTMiO2k6MztzOjM2OiI3ODQyNDkxZi0zYzcyLTQ2NmUtYWFiNC02OTk2YzY2NzcxMzkiO2k6NDtzOjM2OiJmMmZhMDFiZC0xNGIxLTQ2ZTctOWNjYy1mMmVmMWJiNjgxYWQiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjA2YTE2YzEwLTIyMDMtNDlmNi1iYWVhLTYxZDFkYmQwZmMyNSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('78a8e759-6603-45c4-bb4f-7c284775ca84','OAuth2Clients2_OAUTH2CLIENTS',0,'2026-05-26 20:22:16','2026-05-26 20:22:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('87aebe5c-8480-4be9-90db-7d1c21f7b3dc','Home2_AOS_CONTRACTS',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8ed46e65-8296-434e-93ac-30cb0cabd5ae','Home2_LEAD',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9061165e-8903-4ca8-a467-34079ea86e87','global',0,'2026-05-21 20:55:01','2026-05-21 20:55:01','a8cb8418-b90e-4a5a-bbda-f64c001fc224','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImFlMTUzMDI1LTYyYjAtNDQ5MS05YzFjLWIwYjVhMWRlM2IzNiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('930d3e40-f2e2-410e-a06c-12c9420131ce','global',0,'2026-05-27 22:00:25','2026-05-27 22:37:07','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YTo0NDp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7czozOiI2MDAiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO2I6MDtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7YjowO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czoxNDoiQW1lcmljYS9Cb2dvdGEiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6MTA6IklTTy04ODU5LTEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoyOiJ1aSI7czoxOTg3OiJ7Im5vb3AiOiJub29wIiwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjYW1sX2FwYXJ0YW1lbnRvcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNjb3VudHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjotMjAsInRvdGFsIjowLCJwYWdlRmlyc3QiOjAsInBhZ2VMYXN0IjowfSwicmVjb3JkSWRzIjpbXX0sImFjY291bnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiY29udGFjdHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MX0sInJlY29yZElkcyI6W3siaWQiOiIxOTk4MTAxOC01ZmM3LTQzNWEtOWNiNS0wZDFkNDc5YjdjYWIifV19LCJjb250YWN0cy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJjYXNlcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoxLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoxfSwicmVjb3JkSWRzIjpbeyJpZCI6IjRiOWZjZDNmLTdlZmEtNDIwZi04MGVhLWRjZTRlODBjZGNmMSJ9XX0sImNhc2VzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FzZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiY2FzZXMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiY2FzZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn19Ijt9'),
('976849d4-2860-433a-941e-bcbe55ba884c','Home2_NOTE',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('97d0962f-1da0-48a8-ae09-94b2a74b402d','Home2_ACCOUNT',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9cfd0847-2a79-4b86-9902-8231a7e9cd5b','Home2_ACCOUNT',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a8259d04-835d-4070-b613-f7aafaaa72c7','Users2_USER',0,'2026-06-03 15:57:41','2026-06-03 15:57:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a9b455a4-f1bb-44fc-9326-a9747b94098e','Home2_OPPORTUNITY',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('acecf0a8-2a69-4acc-80e4-26719bf00cd5','Assistant',0,'2026-05-21 21:09:33','2026-06-04 16:57:16','1','YTowOnt9'),
('b00de8cf-59e0-4cb6-94a4-1658041c696b','jjwg_Areas2_JJWG_AREAS',0,'2026-05-26 16:14:52','2026-05-26 16:14:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b0239944-fef1-4719-b81a-9ef943b241de','Home2_LEAD_f2fa01bd-14b1-46e7-9ccc-f2ef1bb681ad',0,'2026-05-26 22:59:01','2026-05-26 22:59:01','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b1b456a0-ffae-4ace-9339-bb5c6082298e','Home',0,'2026-05-20 16:30:57','2026-06-04 17:08:46','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImI2MDU0MzMxLWUyYzgtNDcxMy1iNTkzLTVkYzEwMmIzZTRkNSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImQxZTNiMzVhLWVkZWEtNGQ3YS1hZDUyLTMyZTBlOWM1NWQwYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjBjOWNiYzk5LWVlZTktNDZhOC05ZTk1LWE0NThkN2EwMTlmYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImE4NTY1NzEyLTJhY2QtNGFhMi05M2I2LTkyODBjODRmMmNlZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjkyMmUxZTEtZmI3ZS00Mjg0LWFjYjYtNGU1MmNiMWMyZWI4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmJlZDU1ZGQtNGUyOC00MmJmLWE5MDgtZDJmYTY3ZDdjYTU1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjA6e319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MDoiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('bbd1e521-f3e3-40aa-8f5e-7396e45eef0b','Home2_SUGARFEED',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bc5975dc-4436-49d2-a9fe-d54986bdd1ed','global',0,'2026-05-26 22:53:35','2026-05-27 20:14:58','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YTo0OTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjVhZjQ1ZTkwLTE4MjAtNDQ1Yy05YTUwLTFhYTFjMDI3YTQ0YyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7czozOiI2MDAiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO2I6MDtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7YjowO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czoxNDoiQW1lcmljYS9Cb2dvdGEiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6MTA6IklTTy04ODU5LTEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19NWCI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MjoidWkiO3M6MzQ3OiJ7Im5vb3AiOiJub29wIiwiYWNjb3VudHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24ifSI7fQ=='),
('bf61b2c4-4939-4325-a2f0-dc76a3a70eb8','Home2_OPPORTUNITY',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cb1cdecc-0ab8-4174-9425-20357e6d0cc6','Home2_SUGARFEED',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cc76247d-ed6b-46ac-beac-75ef488ac3e7','Home2_SUGARFEED',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d1e20bda-49ff-4940-b699-03c63e187af6','Home2_CALL',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dac689ea-1ffa-47ec-9f0e-68be81c6d627','Home2_MEETING',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('db3a1255-e77f-4b3f-aef3-d628788a35a9','Home2_CASE',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('db4cc39f-2670-4a85-9f0f-692e7865d5dc','Accounts2_ACCOUNT',0,'2026-06-03 22:55:23','2026-06-03 22:55:23','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ddcebe8e-e0f7-4321-b4f3-c9f38ddf6481','Home2_LEAD_4c66cefd-a889-48dd-8e41-57699079a786',0,'2026-05-20 16:30:58','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e376bea3-28fc-4835-95e2-814c3aa9030d','jjwg_Maps2_JJWG_MAPS',0,'2026-05-26 19:59:56','2026-05-28 16:08:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e6d2b25f-1858-4328-b8ac-52b53f8b9bd5','global',0,'2026-06-03 15:58:04','2026-06-03 15:58:04','57bef8d2-239b-4960-9c63-f8bc273b8094','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImM5NTE2OGY4LWNhYWEtNDQ3MC1iNzk5LTMyZGY4NzhmYjYwNCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('e9a96f33-b59f-48d9-bdba-3dd8ed40d05e','Dashboard',0,'2026-05-21 20:40:58','2026-06-04 17:08:46','1','YTowOnt9'),
('ed2fdbe4-f87c-4066-ba6e-07afe732ce9e','Home2_OPPORTUNITY',0,'2026-05-27 22:01:47','2026-05-27 22:01:47','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('edc4fe2c-793b-435f-a4f6-e922af649530','Home2_CONTACT',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f0e69975-c196-4a48-8745-bc6065883948','ModuleBuilder',0,'2026-05-25 23:14:26','2026-06-04 16:57:16','1','YTowOnt9'),
('fcd66be9-45e5-4f03-98f4-07ccda1c9aeb','caml_apartamentos2_CAML_APARTAMENTOS',0,'2026-06-03 22:54:58','2026-06-03 22:54:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('fe270d19-0d29-4013-8640-84f7807d2e43','Home2_CAMPAIGN',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  `totp_secret` varchar(255) DEFAULT NULL,
  `is_totp_enabled` tinyint(1) DEFAULT NULL,
  `backup_codes` text,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
('0b516c8f-0986-41c1-89a9-793e202d6760','c.a.m.l.123@hotmail.com','$2y$10$Van330ZR7e313dMmprkLcuVbDBPmKC9xu5HWnpYODzc8sPTbm9yvy',0,NULL,NULL,1,'alejandro','maldonado',0,0,1,NULL,'2026-05-21 20:44:07','2026-05-21 20:44:07','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
('1','admin','$2y$10$u9XwQilt69nJePK4V977xeYrwFxnqaXrug0ZGl/wsNHDoXy9kuYna',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2026-05-20 16:29:32','2026-06-03 19:55:53','1','1','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL,NULL,0,NULL),
('400fdbe3-e938-4b6a-8deb-a459c22ccba5','camltasks1@gmail.com','$2y$10$bskrlcp7/5uXmkEbZZdo9OKGlGap9h6BfLYlbQy7VvsOE5RZY899a',0,'2026-05-27 03:53:00',NULL,1,'carlos alejandro','maldonado',1,0,1,NULL,'2026-05-26 22:53:35','2026-05-27 20:14:58','400fdbe3-e938-4b6a-8deb-a459c22ccba5','1','132415',NULL,NULL,NULL,'3503752816',NULL,NULL,NULL,'Active','calle 57','bogota',NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL,NULL,0,NULL),
('57bef8d2-239b-4960-9c63-f8bc273b8094','manuel@gmail.com','$2y$10$fSstXkKfR9.leR8To6xtBeQvqVH90FcwC6F4c1B8WztD2G5LGarDK',0,NULL,NULL,1,'manuel','murillo',0,0,1,NULL,'2026-06-03 15:58:04','2026-06-03 15:58:04','1','1','1516156',NULL,NULL,NULL,'31515662','3153',NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
('7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','sol@gmail.com','$2y$10$2rDR9OXeEaKB8aB8.GHJ.esK/POWxcG/la4sqUJ/TmYav2j0p3mTK',0,'2026-05-27 22:01:00',NULL,1,'solangel','rodriguez',0,0,1,NULL,'2026-05-27 22:00:25','2026-05-27 22:15:06','1','1','15646',NULL,NULL,NULL,'315644564',NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL,NULL,0,NULL),
('853e0084-4fc8-4f26-bd43-798959a8342f','manuel@gmail.com','$2y$10$e3G0x/iQPnXokaOHUi8/OeS5mVsVxQWE1xmeNp2gsd2aDY1QTv6sW',0,NULL,NULL,1,'manuel','murillo',0,0,1,NULL,'2026-06-03 15:45:47','2026-06-03 15:57:41','1','1','1516156',NULL,NULL,NULL,'31515662','3153',NULL,NULL,'Inactive',NULL,NULL,NULL,NULL,NULL,1,0,1,'Terminated',NULL,NULL,'',0,0,NULL,NULL,0,NULL),
('897b0de3-78c9-4ee3-8b67-9cc910d63f6c','ingedev94@gmail.com','$2y$10$Ul9FZPm/YAN7owSWqOgTL.3COaz/twevYlVnUu.lPCH5ld8ypK/9y',0,NULL,NULL,1,'alejandro','maldonado',0,0,1,NULL,'2026-05-21 21:27:57','2026-05-21 21:27:57','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),
('a8cb8418-b90e-4a5a-bbda-f64c001fc224','camltasks@gmail.com','$2y$10$1F6l0EDrcNhEBT8RncpsEOFvZRy/Zc8GY4.122VXeRJ5Cm.TNFrgK',0,NULL,NULL,1,'alejandro','Maldonado',0,0,1,NULL,'2026-05-21 20:55:01','2026-05-21 20:55:01','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
INSERT INTO `vcals` VALUES
('93393d3c-36d0-4897-b471-6be7122f85fd',0,'2026-05-27 21:02:06','2026-05-27 21:04:50','400fdbe3-e938-4b6a-8deb-a459c22ccba5','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SuiteCRM//SuiteCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=carlos alejandro maldonado:VFREEBUSY\nDTSTART:2026-05-26 05:00:00\nDTEND:2026-07-26 05:00:00\nDTSTAMP:2026-05-27 21:04:50\nEND:VFREEBUSY\nEND:VCALENDAR\n');
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-06-04 14:02:37
