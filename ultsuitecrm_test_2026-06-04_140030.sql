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
('0b2fd4ad-bb4b-442e-b895-1fbd7c1eaf51','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','view','caml_chat','module',90,0),
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
('20d04d57-289b-45b5-9092-3760bd14ba82','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','export','caml_chat','module',90,0),
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
('354ee0b4-48d5-41a8-941f-3ab5d6dc0042','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','massupdate','caml_mensajes','module',90,0),
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
('431416f4-5113-4604-b4de-a2cbd7b253a4','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','edit','caml_chat','module',90,0),
('4369f632-ca6c-4ae9-8ca4-1459f13f61df','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_Quotes','module',90,0),
('43986cd4-5e6a-41bb-b06e-f1b1d9f5687e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','jjwg_Address_Cache','module',90,0),
('43a98856-b26d-4add-bb5c-ccd5a7eabd5c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOR_Reports','module',90,0),
('43da9dc0-769b-4514-ac98-8edd54b7a62d','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','massupdate','Notes','module',90,0),
('444da529-04ee-4cb8-b608-002d64e51bf1','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Campaigns','module',89,0),
('44bb8ba0-0045-465a-b18e-b822734409af','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Surveys','module',90,0),
('4529aa63-fe75-4ba3-a93c-b8633444a611','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','delete','jjwg_Maps','module',90,0),
('45a5c6f6-82a0-4948-9aa8-b1d3875e4e62','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','Users','module',89,0),
('47e171bc-88ef-41eb-9e3d-48e95b495c97','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','delete','caml_mensajes','module',90,0),
('481be9e6-a8d2-4e9a-818e-d68033bfdbc6','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','MediaObjects','module',90,0),
('49c63a73-6418-41be-b4a4-d20d8900b29c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','MediaObjects','module',89,0),
('4aa86fb5-7fb9-40fa-85c1-84c93ad95c31','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','export','caml_mensajes','module',90,0),
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
('57ec7b15-7c40-47a9-a854-c5833a1e8510','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','list','caml_chat','module',90,0),
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
('623f510b-27c0-48ea-8b1f-10b4cd5a168e','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','edit','caml_mensajes','module',90,0),
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
('73fc0e3b-f8c3-4db5-ae9d-2ebf47fcbefb','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','list','caml_mensajes','module',90,0),
('740babf9-0b24-4c2d-b329-f53ed0046b0c','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Users','module',90,0),
('747beeb3-d28f-46cd-aa7f-2fd08a23e0d4','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOS_PDF_Templates','module',90,0),
('751e4035-8fa8-4d65-bda8-47e6c0dd5374','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','edit','Bugs','module',90,0),
('751eaac8-bbdb-4f17-81a2-da1de14d215b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','import','AOW_WorkFlow','module',90,0),
('76177abb-a6c2-4330-a476-9e1f5ff2cd4e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','export','Users','module',90,0),
('764a43ba-0d1e-4059-8781-0137960f5416','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','AOK_Knowledge_Base_Categories','module',89,0),
('76942153-db98-4866-b2e9-a06b1604866e','2026-05-20 16:29:32','2026-05-20 16:29:32','1','','access','jjwg_Markers','module',89,0),
('76d40b3e-7445-44e2-8991-c36e1b52625c','2026-06-03 22:30:43','2026-06-03 22:30:43','1','1','massupdate','caml_anuncios','module',90,0),
('76d900f3-1eaa-4f64-8a6e-68660fb50d0a','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','view','caml_mensajes','module',90,0),
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
('86a366f5-faf9-4556-8061-c6e79a308558','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','access','caml_mensajes','module',89,0),
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
('902fd324-e6e7-4dc0-a81b-0aa2dd21a3eb','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','massupdate','caml_chat','module',90,0),
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
('9e76cb47-fb28-4c90-be69-0429bec042c7','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','import','caml_chat','module',90,0),
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
('bd0e1c31-d9a1-4375-8b25-e563bde037d3','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','delete','caml_chat','module',90,0),
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
('d66ac3b4-8019-468a-947e-598cf249957c','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','access','caml_chat','module',89,0),
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
('dcf3aa17-3819-4d2e-986a-c8f9a515c975','2026-06-04 21:04:05','2026-06-04 21:04:05','1','1','import','caml_mensajes','module',90,0),
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
('0060442c-3de5-43d0-af93-cea873b6274d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eec1eaff-2188-4ff0-be90-4411818c04ee',0,'2026-06-05 18:15:07',0),
('00d6aa82-2358-4b67-b43c-2dd0d4b40645','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','11c029e4-9220-42b4-8ee3-2bee878ea470',0,'2026-06-05 18:15:07',0),
('01eae5a0-90a7-4abd-9551-dbf538ab90cb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec46f441-d584-404f-983e-8679764be5a7',0,'2026-06-05 18:15:07',0),
('031a5445-5134-4646-8c82-6fc23d3065af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','165f700b-b1d5-4177-8006-a0352a7bfa8a',0,'2026-06-05 18:15:07',0),
('0338eccc-d9ee-48a3-9974-1332f90b40cf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','708c56d4-7f1b-4bc4-b94f-77a16307053e',0,'2026-06-05 18:15:07',0),
('03fac7e4-8fa3-420c-922a-0f1bb403eddf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f94fe2a-ebb3-40cf-9f9a-46eb3844360a',0,'2026-06-05 18:15:07',0),
('046f2705-0524-445c-b8b2-459f7ef55426','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d3b6480a-58ea-446f-8fee-c51a2b295938',0,'2026-06-05 18:15:07',0),
('050deaee-23a1-4d82-ab32-97c7b9ec1dc6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2a208419-c5fc-494f-9f6a-724f96432a07',0,'2026-06-05 18:15:07',0),
('0513ff64-358f-4c1a-9546-1fafb7474234','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','88b0e5aa-0e8c-4523-90c6-961ddac34dca',0,'2026-06-05 18:15:07',0),
('062a6ea5-b90d-4edd-bbc3-0d04226af25f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c3fd0f76-b547-4dfe-87d8-8c8fbba805a6',0,'2026-06-05 18:15:07',0),
('0651fe45-7074-43d0-a34a-1361ce45a66d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aee46515-030b-4370-8168-7816de8643a7',0,'2026-06-05 18:15:07',0),
('065c097d-9eb0-4ddd-86d9-da0508782003','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','896d287c-8082-4972-a9a4-d71b9b77cb35',0,'2026-06-05 18:15:07',0),
('067d5bd8-1826-4150-ad81-b7d85363e11f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','21de9c2c-3f33-49b8-950c-10dfc5a6cb23',0,'2026-06-05 18:15:07',0),
('0725c2cf-4735-4010-8c3a-d7a07b054308','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b25193aa-53d1-4c2f-9b39-1d18b5d98fda',0,'2026-06-05 18:15:07',0),
('07a6fe76-ab93-496d-84ab-30c5ffec7a5b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e4af89fa-7c33-4a58-84c6-c49fca3a654e',0,'2026-06-05 18:15:07',0),
('09b95106-ea98-4b72-872e-cd63518885bf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bd0e1c31-d9a1-4375-8b25-e563bde037d3',0,'2026-06-05 18:15:07',0),
('09d19766-f805-423c-b3bc-c91077771342','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e25000ed-693a-4ad7-aaf6-695f8bdc8a4c',0,'2026-06-05 18:15:07',0),
('09fa8774-b6ea-46a3-ad6d-42af9315d288','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','73fc0e3b-f8c3-4db5-ae9d-2ebf47fcbefb',0,'2026-06-05 18:15:07',0),
('0aecfa63-e5de-49eb-bd86-f362750dd7cf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05cb6ce5-3db7-4383-b94d-0addbcd4f7a8',0,'2026-06-05 18:15:07',0),
('0b980c33-20a7-48c2-9b53-9b9ff35eb66d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2f4233f5-9537-4336-99fd-c5721656ac89',0,'2026-06-05 18:15:07',0),
('0d8cd95f-e79a-4e5b-9903-dff155125709','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d925c88-3aa7-499e-bd59-1368e3ba40b3',0,'2026-06-05 18:15:07',0),
('0f9c876e-fa77-46ba-8782-691e669f12eb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','579b7eb3-9c9f-42f1-ad20-156f63b97708',0,'2026-06-05 18:15:07',0),
('10b047fc-5eb6-45d6-9d1f-22ed2512ffdd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f255943-fea3-4a67-9fdb-31540ac92e5b',0,'2026-06-05 18:15:07',0),
('1138f614-9bdb-4cc6-89ac-39a9c604e746','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','deea6af2-e078-4870-84f2-8f7e8bf8dabb',0,'2026-06-05 18:15:07',0),
('1270c96c-e44c-45ce-bd11-7ec2e9739ca4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51d42d-5dac-4589-8568-5844b3358990',0,'2026-06-05 18:15:07',0),
('13304415-0838-4b3a-91c6-4edd16f2c0fb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','50ba1dc9-ea86-48e6-9bdd-814bd4a7245d',0,'2026-06-05 18:15:07',0),
('13863431-eeca-44f6-8415-1b0778f331a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dcf3aa17-3819-4d2e-986a-c8f9a515c975',0,'2026-06-05 18:15:07',0),
('139843ca-2800-47ec-a70d-81dd9c906fe7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b2fc11de-bff5-4433-af2e-2cd7b475e304',0,'2026-06-05 18:15:07',0),
('13c03cf9-da9d-45d5-95e9-69261dbedf9a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','290d15ec-1203-4362-8342-991d3502241c',0,'2026-06-05 18:15:07',0),
('149c7115-b0bd-4371-bbab-b1e9c03bf166','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0f5acf3-f0a1-4f35-ba68-e28bc5b1a837',-98,'2026-06-05 18:15:07',0),
('1510c049-a012-4ed7-820b-6a4b4619a01d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc3dc5a-37e0-43a0-9ae6-c39bd0fd0855',0,'2026-06-05 18:15:07',0),
('16444734-54be-4fe5-837c-05c2201157b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','79841b2c-9fa2-4e02-9c74-8ea5433cc668',0,'2026-06-05 18:15:07',0),
('167ea488-8559-479a-9b34-c103ac358d19','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d4d12005-24a4-4482-a56e-ce12016ddc6b',0,'2026-06-05 18:15:07',0),
('16c0b015-82bb-44eb-8310-8484f7b5f4ff','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','79000ca2-18a7-449c-964d-4d33d030e8ab',0,'2026-06-05 18:15:07',0),
('1711d469-bcd3-431c-b791-7aeb61525388','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','39eb9f0c-5c16-4e81-bb53-cbd42766ae95',0,'2026-06-05 18:15:07',0),
('18dbd6ee-3d1d-4403-a3f3-12c6a1a26537','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a4879cf8-15de-444b-be3e-37b9e951cefe',0,'2026-06-05 18:15:07',0),
('190359c2-49d2-4792-8255-ae92387fcb39','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d453b4cf-e9df-4fd3-88a9-ddb6386362ec',0,'2026-06-05 18:15:07',0),
('190fed26-0628-4bbf-ac24-2c50fdb4f440','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','84312d06-a0c2-4bd6-b6b7-509c1a7bd9dd',-98,'2026-06-05 18:15:07',0),
('1ae814ce-8739-4dec-94d9-2fcc20481e6d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','968581ba-05aa-47c4-941f-73902cfeb08b',0,'2026-06-05 18:15:07',0),
('1da51728-36a5-4913-80f7-be53fbdffa65','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','942c6ca1-1466-486d-8777-77593489da34',0,'2026-06-05 18:15:07',0),
('1e035db0-df8a-4e00-bd9f-881a45c2075f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c9f2b3e-6501-45e0-8fdb-c6bd1c4a9cad',0,'2026-06-05 18:15:07',0),
('1ef928d1-d778-41e8-a347-91474fc9e996','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a29ab5c8-0e98-4578-813e-1d95e24b53ad',0,'2026-06-05 18:15:07',0),
('1fc26b90-3b01-4535-8bcb-fdb4d9e064a8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ec52466-6af3-4123-b3fd-cb8d27b01283',-98,'2026-06-05 18:15:07',0),
('1fcfb0c2-8ee5-4444-b50f-6f29f0087e91','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e274471d-6b57-4406-b64d-2451c92577cb',0,'2026-06-05 18:15:07',0),
('205e6b8f-f013-42b0-b6ed-69061522af67','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a44951d8-0203-4159-beab-9d851b7805fc',0,'2026-06-05 18:15:07',0),
('20f978e9-4714-4bf6-b37a-4dc85eeae38a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a5ed46e1-8e17-4459-a370-0dffaf05e0e3',0,'2026-06-05 18:15:07',0),
('214ff88d-02af-42c1-ade1-e9aed289b8cc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','952dd735-a0af-48f8-905b-5372e60b440c',0,'2026-06-05 18:15:07',0),
('22709013-2818-4b51-9542-345b1f9a7c63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e65e7eea-858a-4afd-930a-1030b0f5b777',-98,'2026-06-05 18:15:07',0),
('22797398-319e-4ffb-8ac6-c26dbff76202','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2c48227a-099a-4a13-a4d8-59fc32fd15b7',0,'2026-06-05 18:15:07',0),
('24b0c27b-13b3-4ddc-b6e5-6cb30570a375','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','920ceb2d-42d4-4b20-92d5-1e6402d684fc',-98,'2026-06-05 18:15:07',0),
('250f553a-9a8a-4d22-a5de-e3c114cc2f7c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76d900f3-1eaa-4f64-8a6e-68660fb50d0a',0,'2026-06-05 18:15:07',0),
('252eac8f-94b3-415b-96d0-29c4955a5bba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bf065364-58bd-4b5e-8995-4bafb4cb0b17',0,'2026-06-05 18:15:07',0),
('258eb804-5728-404e-81ce-6f3886577e9d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','50826140-883f-4f1e-958d-611a54babdad',0,'2026-06-05 18:15:07',0),
('25ff033e-5b2f-4831-ab03-8cd8d09351c9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6af78ab9-6649-4e8d-b410-9545b6e80707',0,'2026-06-05 18:15:07',0),
('266a3d8e-740a-4c57-b032-3c1d8a12bb95','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01d81975-0373-4eff-b820-f8ed1b81107c',0,'2026-06-05 18:15:07',0),
('270770a0-ebd8-4057-8a23-6913dadcaa6f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','902fd324-e6e7-4dc0-a81b-0aa2dd21a3eb',0,'2026-06-05 18:15:07',0),
('272b1520-2a05-4215-9bc0-cfe49a091399','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f4a7a2fc-acc5-47a2-94c8-8a9a2e5f7750',0,'2026-06-05 18:15:07',0),
('273c8414-38ab-4de1-bba4-6ae88706f07f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d0af477-a23b-4185-9b0b-fbb15c343e1b',0,'2026-06-05 18:15:07',0),
('277fe01c-41bc-4d29-900f-5797b59d25ff','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','641dcbdf-ac4b-41e8-9359-b42a1cd111d1',0,'2026-06-05 18:15:07',0),
('278ffe8a-6cb8-4d00-bd92-1dc4cb2c128e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fa6d55c0-f8d9-4e16-9d8d-bb4196d08a0f',0,'2026-06-05 18:15:07',0),
('28321bdb-9be7-433b-a8aa-650eabdc675c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7c506b63-4c69-4ee0-9025-c9fc817771c3',0,'2026-06-05 18:15:07',0),
('287e921d-ae76-4c77-8755-1f93098e6fa2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3d6a7a76-ddea-48f8-8abc-77848e07427f',0,'2026-06-05 18:15:07',0),
('28a5e07b-bdf9-48d7-97c9-64766e39b142','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5e2f340d-6586-44dd-b1da-93005b3fff4a',0,'2026-06-05 18:15:07',0),
('29467d9f-4571-47b1-bf5f-c697cc9654fc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','26b0a2b2-fc7a-4fe3-a90e-d3d8e57b5b64',0,'2026-06-05 18:15:07',0),
('2a8b7a39-136f-4556-9c5d-836b2cf46ff6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3952389d-867b-4085-8a98-ac294e948589',0,'2026-06-05 18:15:07',0),
('2b68e1a4-6b7e-488e-b869-16ee3e42394e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','32cbbc12-cb60-4dc0-b52d-0e38a0f53f97',-98,'2026-06-05 18:15:07',0),
('2c600a92-78a8-40a2-95ab-35517703fc63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a802f3e4-a92d-4ebf-a264-f5ed1cf7ee70',0,'2026-06-05 18:15:07',0),
('2ca179a2-9481-475b-8dff-1d3de439855f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eef73c96-143b-4893-adcd-fe4b8a4bead4',0,'2026-06-05 18:15:07',0),
('2cad49b8-c1e7-4f15-99b0-e4f660f7c022','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9390ad8c-cf60-4539-afff-85ff11fbea19',0,'2026-06-05 18:15:07',0),
('2ce42e98-fbdd-49a6-b812-f67a7a2601ec','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfa58461-94d0-48f0-9b02-47ffcd918181',0,'2026-06-05 18:15:07',0),
('2d222269-1be4-444e-922a-2113263c513b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b427e2b-7047-4165-a224-f436de351a11',0,'2026-06-05 18:15:07',0),
('2d60ab88-4c72-4908-a352-29bd8e6a2059','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d66ac3b4-8019-468a-947e-598cf249957c',0,'2026-06-05 18:15:07',0),
('2d9ced34-1543-44c9-beaf-16eee3161409','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51342b72-d140-4a13-82f9-ccee058cff94',0,'2026-06-05 18:15:07',0),
('2db70232-745e-435e-a58f-6d43a5ea6c03','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','23a16ec0-0ff2-40b4-966c-e91fdde35ef9',0,'2026-06-05 18:15:07',0),
('2f3a0838-514b-48ad-b8c5-48ac5edd652a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c71f5e68-5d74-4dea-9c65-01dc53af6d8b',0,'2026-06-05 18:15:07',0),
('2fc11bca-2df7-4f91-8a68-784500625419','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a884ca63-b1c6-4e6c-8162-11eb4ce764ed',0,'2026-06-05 18:15:07',0),
('31be9405-12b7-49e2-a85b-dab8cb535acf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b159cf4e-3d74-4ec5-9258-c723be022fbf',-98,'2026-06-05 18:15:07',0),
('31d3c772-761c-47ee-98a3-2907d516b9b9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8cfd9b24-0cc2-487d-b5dd-a4f29f0ac55d',0,'2026-06-05 18:15:07',0),
('3295d88e-9cfb-4d40-bd0d-159e44060ae9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','321ccae3-d296-4477-8003-055f16635c1c',0,'2026-06-05 18:15:07',0),
('339bea5d-1606-409c-8563-5cf98359e080','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','364c239a-35ea-4699-8fdc-20707bd7f812',0,'2026-06-05 18:15:07',0),
('33bb2d84-522c-4263-a338-2d8b7bb6b779','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01b87a50-c085-455d-8395-800c8e9c3233',-98,'2026-06-05 18:15:07',0),
('33d7b00e-9cf6-478c-85a9-3e540e5a8f9a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','edit',-99,'2026-06-05 18:15:07',0),
('344bb470-9717-47fa-b9e9-ba1d998535b0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d4830c3-def1-41d8-a345-0b7533d565aa',0,'2026-06-05 18:15:07',0),
('34d1c3af-160b-49bb-a8a1-a2dbc098a4bd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5650aa7f-d01f-483a-a714-7457c35b2bae',0,'2026-06-05 18:15:07',0),
('3565d4b4-a8bc-4e8f-a61e-870f0db6b2f8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e80aa1ba-ca36-4435-b92e-74205b70a1a6',0,'2026-06-05 18:15:07',0),
('364405be-ca3b-4c87-ab5c-92b22a0092c6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec3c87de-48f0-4e7a-9e27-bba4ddb71e66',0,'2026-06-05 18:15:07',0),
('372cc4a0-10dd-4a5c-9108-bd8ed57e4b7d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','354ee0b4-48d5-41a8-941f-3ab5d6dc0042',0,'2026-06-05 18:15:07',0),
('373f7177-1ca3-4ddd-937b-4658b5513648','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','36657997-c1f1-4d3f-80a1-ce363e160f9e',0,'2026-06-05 18:15:07',0),
('3749b858-32b4-4313-8ea5-795ac5d0cfc8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5afcd8f-0bc8-4af1-a3ab-c51b394174cc',-98,'2026-06-05 18:15:07',0),
('37d50c56-7764-4fba-8a1c-80180919d660','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d008d9d-02cd-4c55-a642-2c495d35aadb',0,'2026-06-05 18:15:07',0),
('383ad3ad-3607-444e-b785-ad41572827d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4f0091ce-9b8c-4561-a3af-0c61b261cd54',0,'2026-06-05 18:15:07',0),
('38d20d07-24d3-4349-8d86-cf4cfbacbd58','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','14f6c71c-aaf3-4882-9c17-3deeb0b7a72b',0,'2026-06-05 18:15:07',0),
('39087c28-5e71-4cd3-b0ac-c0ea7bb0ad0b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a7e3cf57-2be7-45b2-a712-91485f12404f',0,'2026-06-05 18:15:07',0),
('393ff605-6e58-404d-864e-5c07e2e70eff','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','719be780-0442-4285-aef2-28a20e81fa43',0,'2026-06-05 18:15:07',0),
('395ae990-2ded-4ed8-9606-5979a1cd6d42','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','518fee88-565a-4813-946f-44e5c4989bd8',0,'2026-06-05 18:15:07',0),
('3a810e23-78c1-4611-a9cb-63dd0d0c488f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d7268c03-cd0a-4fab-9b21-24313d26917f',0,'2026-06-05 18:15:07',0),
('3abd4fc6-4378-4cd6-a128-5d9990aa15e1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','836115c9-23cd-4365-bbcb-6bc8a94453ac',0,'2026-06-05 18:15:07',0),
('3aeece1e-1194-4399-a9b8-e5e6793790e9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0423a8af-0ec6-441b-8149-9046c81e8ce7',0,'2026-06-05 18:15:07',0),
('3b25e4c4-bb57-43cb-9f94-74fba2b74d17','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cd363563-01da-4411-93cb-213e3b86a4dd',0,'2026-06-05 18:15:07',0),
('3bbf6d1d-9bae-4009-88a5-30d35758ed4c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5c6ae45e-f52e-4384-af56-ce026d499c02',0,'2026-06-05 18:15:07',0),
('3c318b08-8016-4a24-ad33-a9906d2a9762','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ee19dece-e828-47e9-b915-e2227f37e5bf',0,'2026-06-05 18:15:07',0),
('3d11430d-f825-45a3-8f64-6272ec5b2813','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aba576b5-7019-4033-8ee2-c1f9feedfc46',0,'2026-06-05 18:15:07',0),
('3d552b10-0587-4817-8e62-c77565d4de72','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9393127c-7f5e-44d9-b046-3af9a0c686b8',-98,'2026-06-05 18:15:07',0),
('3fa96f86-ee07-49fb-abe3-51613f2298f3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3688821f-3bab-4ecd-b481-62d1132a19fe',0,'2026-06-05 18:15:07',0),
('3fa9e64c-0f2f-4358-9793-49cdd1a7943c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4eec6351-14c2-423c-ab94-efed1866de7a',0,'2026-06-05 18:15:07',0),
('3faf62b4-de6a-41ad-815d-d70fc733b8ef','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d1a70c7d-9707-43ce-8628-4789ebeb73a3',0,'2026-06-05 18:15:07',0),
('40366a0c-47b9-4291-bb40-815ff3c4d3a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','993d6927-57ac-46bf-9384-3efe92209dd4',0,'2026-06-05 18:15:07',0),
('415220c6-825f-4639-a9e4-6ee5416fca51','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58a0034d-6f96-43fc-8a71-26bb4c7deaab',0,'2026-06-05 18:15:07',0),
('42c9be09-e717-4f1f-a60c-2af792294bf8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','684bf36b-3298-471c-96c8-e059ee87788f',0,'2026-06-05 18:15:07',0),
('42cc8628-65e0-42c8-93a7-933e792326bd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53ca9b0b-c9f2-435c-b806-eda421e9323b',0,'2026-06-05 18:15:07',0),
('42db4aa3-0ddd-4acf-860b-f363b870a12d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cf79b954-fce7-4814-a81d-a1e0b97058c3',0,'2026-06-05 18:15:07',0),
('431a2beb-d9f9-45ac-a51b-4721bf46e98c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2847ca95-ebb9-4ae5-8e45-6b40bbb1431d',0,'2026-06-05 18:15:07',0),
('431c2a38-ba19-47d5-949f-9f9165fccd36','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59aca587-7123-444b-adc5-beda3e7340b2',0,'2026-06-05 18:15:07',0),
('4326efda-68b5-40d2-af1f-4aa1c8830e7d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2cb5bb25-ae18-48ae-9852-f883265b3dfe',0,'2026-06-05 18:15:07',0),
('435030bc-644a-4bef-b6b0-e60151456257','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d2427e1-51c0-4027-9b50-5fb3df62a6bf',0,'2026-06-05 18:15:07',0),
('436f86e2-d225-4cd7-b8fb-c2993fc9ee60','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f4b7371b-6cf0-49ca-ae21-005a76a40341',0,'2026-06-05 18:15:07',0),
('43d226ee-9bc2-4e9f-a465-8c6881e7c9fe','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8f7601b5-4043-4376-be78-8ec5d8d1fd39',0,'2026-06-05 18:15:07',0),
('452d9c18-5084-4581-abdb-7f54acfb4022','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4136fb29-e03a-4d00-8daa-c0f679f707c2',0,'2026-06-05 18:15:07',0),
('45aa4852-2960-4798-b2bf-9164ca17449d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2876a327-7969-47cd-b513-7b58f4c9fa4c',0,'2026-06-05 18:15:07',0),
('45c8d2df-121d-4d76-90b7-4e2f0c978c52','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1dc138ad-7195-40e0-8550-ad465889bc88',0,'2026-06-05 18:15:07',0),
('45d574a2-6573-4863-b78e-18a61000b0d9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1dd35be6-87c5-4c91-beb6-6f5225d2a637',0,'2026-06-05 18:15:07',0),
('465abfc9-632c-4bb2-8930-f2d5299658a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','79f909df-b836-4f96-af90-36abccc50b6b',0,'2026-06-05 18:15:07',0),
('46d1eeff-60c3-49ec-8467-c0d5c47038eb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','82ed8f88-cb07-48dd-ba03-472af219e642',0,'2026-06-05 18:15:07',0),
('47657a18-3c15-4593-9b72-4cc5d4432735','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ffc96b6-4eaf-440a-ae13-483c0254c80f',0,'2026-06-05 18:15:07',0),
('47b5a402-a9de-451e-b434-8c9ee34175af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8146cae1-b993-481d-a3b3-53938f9e4670',0,'2026-06-05 18:15:07',0),
('485f6d66-88a2-4dae-bdde-381edb666d85','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','81578ec5-eda2-4755-a095-a7fe44c6daf1',-98,'2026-06-05 18:15:07',0),
('48ea3fd9-0012-4eb9-9eb9-d59e3e3d1c5e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','20d04d57-289b-45b5-9092-3760bd14ba82',0,'2026-06-05 18:15:07',0),
('49286381-6f4f-4119-b9c7-72f9b1083bf9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70499397-ab94-4895-ba4d-b091ecff36f9',0,'2026-06-05 18:15:07',0),
('49335817-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-06-05 18:15:07',0),
('49336616-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-06-05 18:15:07',0),
('4933692a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-06-05 18:15:07',0),
('49336af0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-06-05 18:15:07',0),
('49336d8c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-06-05 18:15:07',0),
('493370f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-06-05 18:15:07',0),
('493373d6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-06-05 18:15:07',0),
('49337516-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-06-05 18:15:07',0),
('4933763c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-06-05 18:15:07',0),
('49337749-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-06-05 18:15:07',0),
('493379eb-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-06-05 18:15:07',0),
('49337cec-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-06-05 18:15:07',0),
('49337e62-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-06-05 18:15:07',0),
('49337f7d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-06-05 18:15:07',0),
('49338078-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-06-05 18:15:07',0),
('49338180-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-06-05 18:15:07',0),
('49338532-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',75,'2026-06-05 18:15:07',0),
('49338691-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-06-05 18:15:07',0),
('493387da-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-06-05 18:15:07',0),
('493388cf-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-06-05 18:15:07',0),
('493389c0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-06-05 18:15:07',0),
('49338c04-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-06-05 18:15:07',0),
('49338e0f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-06-05 18:15:07',0),
('49338f72-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-06-05 18:15:07',0),
('493390d6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-06-05 18:15:07',0),
('493391d9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-06-05 18:15:07',0),
('4933940b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-06-05 18:15:07',0),
('4933956b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0896724a-9802-42fe-9e2d-83b3443a49a6',-99,'2026-06-05 18:15:07',0),
('493397c2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51e0ee91-0d9b-41b8-b520-e9e00edac2d7',-99,'2026-06-05 18:15:07',0),
('49339971-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-06-05 18:15:07',0),
('49339a84-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-06-05 18:15:07',0),
('49339b76-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-06-05 18:15:07',0),
('49339de0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','282af2b7-a2aa-4825-8245-7b18899ce914',-99,'2026-06-05 18:15:07',0),
('49339f26-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','559c2a04-8dc9-44e8-b0fd-2daa9aabf60a',-99,'2026-06-05 18:15:07',0),
('4933a067-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-06-05 18:15:07',0),
('4933a179-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-06-05 18:15:07',0),
('4933a3d0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-06-05 18:15:07',0),
('4933a52a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0683561-72f9-4511-b18c-ca192656121c',-99,'2026-06-05 18:15:07',0),
('4933a6c0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59917b65-095f-40c0-acc9-0bbce54ba158',80,'2026-06-05 18:15:07',0),
('4933a831-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-06-05 18:15:07',0),
('4933a946-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-06-05 18:15:07',0),
('4933acb6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-06-05 18:15:07',0),
('4933ae26-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','40b67a77-7f37-4c83-a662-ebfda4c1a7aa',-99,'2026-06-05 18:15:07',0),
('4933b02f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5cc64691-03b0-437e-a36a-c70f772eac6a',-99,'2026-06-05 18:15:07',0),
('4933b18a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-06-05 18:15:07',0),
('4933b28a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-06-05 18:15:07',0),
('4933b509-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-06-05 18:15:07',0),
('4933caa4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-06-05 18:15:07',0),
('4933cc5c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-06-05 18:15:07',0),
('4933cda2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-06-05 18:15:07',0),
('4933ce9e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-06-05 18:15:07',0),
('4933cfae-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-06-05 18:15:07',0),
('4933d1fb-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-06-05 18:15:07',0),
('4933d32f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-06-05 18:15:07',0),
('4933d5a5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-06-05 18:15:07',0),
('4933d709-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-06-05 18:15:07',0),
('4933d8d6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-06-05 18:15:07',0),
('4933db38-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-06-05 18:15:07',0),
('4933dc5d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-06-05 18:15:07',0),
('4933dd88-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','72226a25-441f-4769-b6ca-1c711925f5bb',90,'2026-06-05 18:15:07',0),
('4933de75-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-06-05 18:15:07',0),
('4933e089-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-06-05 18:15:07',0),
('4933e20e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-06-05 18:15:07',0),
('4933e3f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-06-05 18:15:07',0),
('4933e542-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-06-05 18:15:07',0),
('4933e6d2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-06-05 18:15:07',0),
('4933ea44-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-06-05 18:15:07',0),
('4933ebaf-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-06-05 18:15:07',0),
('4933ed17-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-06-05 18:15:07',0),
('4933fb27-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-06-05 18:15:07',0),
('4933fcff-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-06-05 18:15:07',0),
('4933fe1c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-06-05 18:15:07',0),
('4933ff6f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05d237ae-da45-4d9b-a6c6-b041f7b0bfef',-99,'2026-06-05 18:15:07',0),
('4934024d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a2ec06a1-0d0e-4528-a5ba-bb53bbf66a07',90,'2026-06-05 18:15:07',0),
('49340453-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-06-05 18:15:07',0),
('493405e8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-06-05 18:15:07',0),
('49340709-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 21:59:08',0),
('4934ae01-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',90,'2026-05-27 21:59:08',0),
('4934b151-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',90,'2026-05-27 21:59:08',0),
('4934b292-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-06-05 18:15:07',0),
('4934b3c7-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-06-05 18:15:07',0),
('4934b68a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-06-05 18:15:07',0),
('4934b7cf-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e7d5960-c8c8-4d98-b823-f148960a016d',89,'2026-06-05 18:15:07',0),
('4934b990-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-06-05 18:15:07',0),
('4934bb24-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-06-05 18:15:07',0),
('4934bd01-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-06-05 18:15:07',0),
('493596aa-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-06-05 18:15:07',0),
('49359f51-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-06-05 18:15:07',0),
('4935a125-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-06-05 18:15:07',0),
('4935ac83-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-06-05 18:15:07',0),
('4935af4d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-06-05 18:15:07',0),
('4935b06b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-06-05 18:15:07',0),
('4935b143-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-06-05 18:15:07',0),
('4935b2df-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-06-05 18:15:07',0),
('4935b433-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-06-05 18:15:07',0),
('4935b51e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-06-05 18:15:07',0),
('4935b5f2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-06-05 18:15:07',0),
('4935b6c1-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-06-05 18:15:07',0),
('4935b794-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-06-05 18:15:07',0),
('4935b855-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-06-05 18:15:07',0),
('4935b91a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-06-05 18:15:07',0),
('4935b9de-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-06-05 18:15:07',0),
('4935baa5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',75,'2026-06-05 18:15:07',0),
('4935bb6b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-06-05 18:15:07',0),
('4935bcd4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-06-05 18:15:07',0),
('4935be04-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-06-05 18:15:07',0),
('4935bee1-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-06-05 18:15:07',0),
('493681c3-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-06-05 18:15:07',0),
('4936877a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-06-05 18:15:07',0),
('493688c2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-06-05 18:15:07',0),
('49368a83-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-06-05 18:15:07',0),
('49368b84-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-06-05 18:15:07',0),
('49368df5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-06-05 18:15:07',0),
('4936905d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0896724a-9802-42fe-9e2d-83b3443a49a6',-99,'2026-06-05 18:15:07',0),
('493691d4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51e0ee91-0d9b-41b8-b520-e9e00edac2d7',-99,'2026-06-05 18:15:07',0),
('49369482-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-06-05 18:15:07',0),
('493696a5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-06-05 18:15:07',0),
('49369844-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-06-05 18:15:07',0),
('493699a3-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','282af2b7-a2aa-4825-8245-7b18899ce914',-99,'2026-06-05 18:15:07',0),
('49369ac3-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','559c2a04-8dc9-44e8-b0fd-2daa9aabf60a',-99,'2026-06-05 18:15:07',0),
('49369be4-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-06-05 18:15:07',0),
('49369eae-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-06-05 18:15:07',0),
('4936a00c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-06-05 18:15:07',0),
('4936a1ed-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0683561-72f9-4511-b18c-ca192656121c',-99,'2026-06-05 18:15:07',0),
('4936a38b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59917b65-095f-40c0-acc9-0bbce54ba158',80,'2026-06-05 18:15:07',0),
('4936a4a7-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-06-05 18:15:07',0),
('4936a78b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-06-05 18:15:07',0),
('4936a907-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-06-05 18:15:07',0),
('4936aa3b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','40b67a77-7f37-4c83-a662-ebfda4c1a7aa',-99,'2026-06-05 18:15:07',0),
('4936ab4d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5cc64691-03b0-437e-a36a-c70f772eac6a',-99,'2026-06-05 18:15:07',0),
('4936ac73-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-06-05 18:15:07',0),
('4936fe7d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-06-05 18:15:07',0),
('4937014c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-06-05 18:15:07',0),
('493702bc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-06-05 18:15:07',0),
('49370662-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-06-05 18:15:07',0),
('49370810-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-06-05 18:15:07',0),
('493709dd-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-06-05 18:15:07',0),
('49370b1a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-06-05 18:15:07',0),
('49370c2c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-06-05 18:15:07',0),
('49370ef8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-06-05 18:15:07',0),
('49371061-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-06-05 18:15:07',0),
('4937123a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-06-05 18:15:07',0),
('4937137a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-06-05 18:15:07',0),
('49371483-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-06-05 18:15:07',0),
('493716d9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-06-05 18:15:07',0),
('49371a98-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','72226a25-441f-4769-b6ca-1c711925f5bb',90,'2026-06-05 18:15:07',0),
('49371c2f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-06-05 18:15:07',0),
('49371d43-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-06-05 18:15:07',0),
('49371e55-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-06-05 18:15:07',0),
('49371f62-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-06-05 18:15:07',0),
('493721ec-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-06-05 18:15:07',0),
('4937235a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-06-05 18:15:07',0),
('4937247e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-06-05 18:15:07',0),
('4937258a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-06-05 18:15:07',0),
('493726e5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-06-05 18:15:07',0),
('49372983-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-06-05 18:15:07',0),
('49372b80-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-06-05 18:15:07',0),
('49372d0b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-06-05 18:15:07',0),
('49372e49-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05d237ae-da45-4d9b-a6c6-b041f7b0bfef',-99,'2026-06-05 18:15:07',0),
('49372f67-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a2ec06a1-0d0e-4528-a5ba-bb53bbf66a07',90,'2026-06-05 18:15:07',0),
('493731cc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-06-05 18:15:07',0),
('49373346-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-06-05 18:15:07',0),
('49378e0f-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 21:59:08',0),
('4937939d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',90,'2026-05-27 21:59:08',0),
('49379565-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',90,'2026-05-27 21:59:08',0),
('4937968e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-06-05 18:15:07',0),
('49379887-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-06-05 18:15:07',0),
('49379a1b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-06-05 18:15:07',0),
('49379cd9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e7d5960-c8c8-4d98-b823-f148960a016d',89,'2026-06-05 18:15:07',0),
('49379e52-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-06-05 18:15:07',0),
('4938a337-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-06-05 18:15:07',0),
('4938a7cc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-06-05 18:15:07',0),
('49966d02-1a44-4292-b632-4982b989ad53','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7b2e05d8-6963-4750-be0b-5feb4be07f12',0,'2026-06-05 18:15:07',0),
('4ad695f1-e7af-438c-9afa-89ed4e2d4ae8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34840a18-6618-4a97-b04e-828739ef55f1',0,'2026-06-05 18:15:07',0),
('4bf090c5-fec7-47d7-9a1d-c419ed64a32b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','08268032-1577-430f-a191-c4fb10b813f6',0,'2026-06-05 18:15:07',0),
('4c465662-191f-420f-8139-2ddabc56d03f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a5f9f502-6339-4541-8ebb-97cc40d3d884',0,'2026-06-05 18:15:07',0),
('4c77f4f8-c04e-4613-bcbc-44c4a10f5d91','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','274260ff-e032-4731-a6b7-62a237c9f7c1',0,'2026-06-05 18:15:07',0),
('4cb548f9-e0bd-44ac-87be-6b25b09f37e3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','80b12ca7-3518-4142-b0aa-7877d831707f',0,'2026-06-05 18:15:07',0),
('4d081196-5461-4930-bb03-4b47e39787e5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','17e3ce84-6c3b-4635-b75b-7ea88a3339bb',0,'2026-06-05 18:15:07',0),
('4d53cea1-99bb-4c34-8ad6-9362c3aa36b8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d341cfea-8814-4edf-8db3-f19f95e239f3',0,'2026-06-05 18:15:07',0),
('4d7de26a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-06-05 18:15:07',0),
('4d7e48b6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-06-05 18:15:07',0),
('4d7e4cea-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-06-05 18:15:07',0),
('4d7e4e2e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-06-05 18:15:07',0),
('4d7e4f53-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-06-05 18:15:07',0),
('4d7e5059-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-06-05 18:15:07',0),
('4d7e5144-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-06-05 18:15:07',0),
('4d7e523b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-06-05 18:15:07',0),
('4d7e54f0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-06-05 18:15:07',0),
('4d7e573a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-06-05 18:15:07',0),
('4d7e5851-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-06-05 18:15:07',0),
('4d7e5940-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-06-05 18:15:07',0),
('4d7e5a26-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-06-05 18:15:07',0),
('4d7e5b0b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-06-05 18:15:07',0),
('4d7e5c03-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-06-05 18:15:07',0),
('4d7e5cfc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-06-05 18:15:07',0),
('4d7e5de5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',75,'2026-06-05 18:15:07',0),
('4d7e5ec5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-06-05 18:15:07',0),
('4d7e5fa9-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-06-05 18:15:07',0),
('4d7e6148-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-06-05 18:15:07',0),
('4d7e629b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-06-05 18:15:07',0),
('4d7e639c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-06-05 18:15:07',0),
('4d7e648a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-06-05 18:15:07',0),
('4d7e656a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-06-05 18:15:07',0),
('4d7e6656-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-06-05 18:15:07',0),
('4d7e6739-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-06-05 18:15:07',0),
('4d7e681a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-06-05 18:15:07',0),
('4d7e68f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0896724a-9802-42fe-9e2d-83b3443a49a6',-99,'2026-06-05 18:15:07',0),
('4d7e6b74-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51e0ee91-0d9b-41b8-b520-e9e00edac2d7',-99,'2026-06-05 18:15:07',0),
('4d7e6ca2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-06-05 18:15:07',0),
('4d7e6e83-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-06-05 18:15:07',0),
('4d7e7014-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-06-05 18:15:07',0),
('4d7e7125-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','282af2b7-a2aa-4825-8245-7b18899ce914',-99,'2026-06-05 18:15:07',0),
('4d7e723c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','559c2a04-8dc9-44e8-b0fd-2daa9aabf60a',-99,'2026-06-05 18:15:07',0),
('4d7e7336-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-06-05 18:15:07',0),
('4d7e741e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-06-05 18:15:07',0),
('4d7e750c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-06-05 18:15:07',0),
('4d7e75f5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c0683561-72f9-4511-b18c-ca192656121c',-99,'2026-06-05 18:15:07',0),
('4d7e76df-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59917b65-095f-40c0-acc9-0bbce54ba158',80,'2026-06-05 18:15:07',0),
('4d7e77bc-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-06-05 18:15:07',0),
('4d7e78b5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-06-05 18:15:07',0),
('4d7e7a62-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-06-05 18:15:07',0),
('4d7e7bce-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','40b67a77-7f37-4c83-a662-ebfda4c1a7aa',-99,'2026-06-05 18:15:07',0),
('4d7e7cd0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5cc64691-03b0-437e-a36a-c70f772eac6a',-99,'2026-06-05 18:15:07',0),
('4d7e80de-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-06-05 18:15:07',0),
('4d7e83b5-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-06-05 18:15:07',0),
('4d7e84e0-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-06-05 18:15:07',0),
('4d7e85e2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-06-05 18:15:07',0),
('4d7e86bd-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-06-05 18:15:07',0),
('4d7e879e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-06-05 18:15:07',0),
('4d7e887c-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-06-05 18:15:07',0),
('4d7e895e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-06-05 18:15:07',0),
('4d7e8b7e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-06-05 18:15:07',0),
('4d7e8ce1-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-06-05 18:15:07',0),
('4d7e8dd6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-06-05 18:15:07',0),
('4d7e8eb8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-06-05 18:15:07',0),
('4d7e8f9b-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-06-05 18:15:07',0),
('4d7e9079-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-06-05 18:15:07',0),
('4d7e9152-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-06-05 18:15:07',0),
('4d7e9227-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','72226a25-441f-4769-b6ca-1c711925f5bb',90,'2026-06-05 18:15:07',0),
('4d7e92f7-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-06-05 18:15:07',0),
('4d7e93ce-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-06-05 18:15:07',0),
('4d7ee946-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-06-05 18:15:07',0),
('4d7eebff-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-06-05 18:15:07',0),
('4d7eedc6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-06-05 18:15:07',0),
('4d7eef4d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-06-05 18:15:07',0),
('4d7ef067-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-06-05 18:15:07',0),
('4d7ef152-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-06-05 18:15:07',0),
('4d7ef282-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-06-05 18:15:07',0),
('4d7ef37e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-06-05 18:15:07',0),
('4d7ef45a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-06-05 18:15:07',0),
('4d7ef54d-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-06-05 18:15:07',0),
('4d7ef664-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05d237ae-da45-4d9b-a6c6-b041f7b0bfef',-99,'2026-06-05 18:15:07',0),
('4d7ef74a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a2ec06a1-0d0e-4528-a5ba-bb53bbf66a07',90,'2026-06-05 18:15:07',0),
('4d7ef940-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-06-05 18:15:07',0),
('4d7f3cb6-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-06-05 18:15:07',0),
('4d7f4035-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 21:59:15',0),
('4d7f4252-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',90,'2026-05-27 21:59:15',0),
('4d7f43ad-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',90,'2026-05-27 21:59:15',0),
('4d7f44b2-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-06-05 18:15:07',0),
('4d7f45a8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-06-05 18:15:07',0),
('4d7f4699-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-06-05 18:15:07',0),
('4d7f477a-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e7d5960-c8c8-4d98-b823-f148960a016d',89,'2026-06-05 18:15:07',0),
('4d7f4864-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-06-05 18:15:07',0),
('4d7f494e-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-06-05 18:15:07',0),
('4d7f4af8-5a17-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-06-05 18:15:07',0),
('4e58f3ae-a454-4ae7-a73a-5fe3e966476d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0be188c5-95c4-447a-89fe-1e3e2180953e',0,'2026-06-05 18:15:07',0),
('4e5f411e-655d-4660-a611-f30c107184c9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d72798df-8d98-41db-8201-798b30cb3779',0,'2026-06-05 18:15:07',0),
('4e8f8808-250d-49c1-9c1f-d50cbe4a6aac','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','30f4b2b5-1c21-4707-a27d-376a65d085b1',0,'2026-06-05 18:15:07',0),
('4f1c0e27-37b9-448a-9b6c-97b9796cc8bf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d67890cb-de8b-4f68-8324-c0df8c12456d',0,'2026-06-05 18:15:07',0),
('4faa33e5-7330-403b-abc5-e71345fba154','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','24255da7-6c8c-4040-96ac-35d28b05cf15',89,'2026-06-05 18:15:07',0),
('501caac7-e262-4db2-b6ff-e63c87ace66d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','98fc49a2-c91e-42a6-b33c-63876a36da10',0,'2026-06-05 18:15:07',0),
('50d2c76c-55fc-4d64-86b1-a043464dcac3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0778b7d6-fe0a-4cf6-87f2-849e6ced57ad',-98,'2026-06-05 18:15:07',0),
('512d536a-3873-4a1a-8696-557feeb28683','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8042034d-b38a-46d4-8b3b-d0cc4dc70541',0,'2026-06-05 18:15:07',0),
('513f2200-9e43-4216-acb7-f330078a0ead','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9f4c0431-5ae7-4b37-9903-413dc7496025',0,'2026-06-05 18:15:07',0),
('51b9cd6a-3f65-4fea-b7b4-f8cfe9044fcd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b9ad9db4-a5f0-4bab-aeb0-1942c9b1fffa',-98,'2026-06-05 18:15:07',0),
('5315c6a1-4ab8-4141-ae31-b16c7bfa3551','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e6cdcbfb-ae29-490a-bd66-e0f4dffed2ef',0,'2026-06-05 18:15:07',0),
('53899c75-f20a-4771-9ff3-cf315db593f1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','87b0e7c5-8e40-4a31-9b6a-661d54c42fc7',-98,'2026-06-05 18:15:07',0),
('54c3734b-85c9-4bb0-a3d9-af508123265a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8d9bed76-a79f-4906-8d1d-bb4c4061a87c',0,'2026-06-05 18:15:07',0),
('54da99c6-7407-47e8-bb72-0944c68dca56','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9b372750-a546-4b0a-8910-562663456f9a',-98,'2026-06-05 18:15:07',0),
('5526c0d3-5ec8-49d7-a747-0326d1074fdd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7713c9e0-dcc4-4dbc-899a-d45578e75d55',0,'2026-06-05 18:15:07',0),
('553abd8a-8502-489b-8e96-e642594eb0d5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c4f3fe42-75cc-4080-97ea-f1325c8b4ffe',0,'2026-06-05 18:15:07',0),
('5590669c-5a8e-4e91-95de-a5eb2bc67521','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a40be78-7bb4-4830-ade3-22f7ca5e5b81',0,'2026-06-05 18:15:07',0),
('5598ad07-d8ff-47a9-8841-ae408604d7d0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','16890f64-5f6b-4095-a3ce-491bb15e875c',0,'2026-06-05 18:15:07',0),
('55ef4211-98af-4dc6-a8c6-9e56062747d3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec8f4d09-fc8c-4d5b-9d09-57504b7097ea',0,'2026-06-05 18:15:07',0),
('5606f9b9-fb90-4450-bceb-ec2b3b5ef703','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b715d2b-a406-43f7-9b44-23054194fc0f',0,'2026-06-05 18:15:07',0),
('56224454-1d2d-43dc-8e5c-123ec45b248b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','747beeb3-d28f-46cd-aa7f-2fd08a23e0d4',0,'2026-06-05 18:15:07',0),
('56b76334-d37f-486a-bffb-38e26cc1aa54','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4ba089f6-65ca-4a5f-b56a-5a1bd756cb0d',0,'2026-06-05 18:15:07',0),
('56e850dc-077d-4f15-972e-ca9a6f2e2a5a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df65321b-1fa3-423b-a0a1-3ce987651621',0,'2026-06-05 18:15:07',0),
('57394e0a-a271-49a2-b7c0-aeed3b5b50c3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0bc0a831-9d42-4567-8b68-64710683ef02',0,'2026-06-05 18:15:07',0),
('5782ec5b-177c-4a4a-a54d-ca4fcb61201c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','908e8c34-d229-4a02-9e33-cdf51b633a10',0,'2026-06-05 18:15:07',0),
('57afa9ca-803a-4827-b565-b69d7740f83e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f80b3f78-bb1a-48c9-a10c-6571eed2e14a',0,'2026-06-05 18:15:07',0),
('589f7e55-45fe-4c0f-81cb-64dc9c0336d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d467164c-8170-47c4-a892-43c8b6ded423',0,'2026-06-05 18:15:07',0),
('58afd69b-30c7-465f-8801-62b56ea93c79','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','41374efd-ac22-4fdc-843b-86d538142b62',0,'2026-06-05 18:15:07',0),
('58c86c22-ae06-4e1a-93f8-a07a646aaa78','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b2578a6-3e8a-42f9-8eac-238d0808d94a',0,'2026-06-05 18:15:07',0),
('58cf436b-fd60-4875-a97a-7e6f161bc8f3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','63868b23-ccbc-4dbe-b484-e027e738d4f0',0,'2026-06-05 18:15:07',0),
('5a4397ae-fe7b-4ae6-8e99-7bf79edc1e5f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea5833f8-50a1-4f65-a14b-40a18bb52bd4',0,'2026-06-05 18:15:07',0),
('5a64c2f1-3735-4078-a487-08fd34fded18','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9cac006a-5623-410d-a92b-b4a214bcb8f4',0,'2026-06-05 18:15:07',0),
('5a7133ba-5f4d-44bc-b064-8d484242896a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','365a92ae-d679-445c-8d21-4dcc469cfef0',0,'2026-06-05 18:15:07',0),
('5ac68855-1e48-4112-9074-4a2d3c6e5c48','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d29564c2-07a2-439a-974b-93aaceb38d1b',0,'2026-06-05 18:15:07',0),
('5b266741-926e-45c5-84b9-d8b60782150e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2aa77e66-28f1-4d1a-b7fd-6a2d5dd2ce3c',0,'2026-06-05 18:15:07',0),
('5b68de09-82e9-4f9a-ad0f-a0448bfd5a30','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6b07dae0-1b1a-4c56-a913-162b0d20df7e',0,'2026-06-05 18:15:07',0),
('5c6e07d1-d3f9-4a9f-97d9-fc97ab428f02','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c6e4ac3d-8e95-43b6-ac15-97350c759e57',0,'2026-06-05 18:15:07',0),
('5c74f305-00bf-4dfa-9318-de2d1efd70df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a17cf1f-5861-45bd-a646-563ddf2ad69b',0,'2026-06-05 18:15:07',0),
('5d74500e-1bba-4f8c-a0bf-6df8881e2a9a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','00e08495-c736-4fd5-a439-72bda2c222ba',0,'2026-06-05 18:15:07',0),
('5e434127-6254-41b7-925d-6cb20acfcc37','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bbe23deb-c40f-4950-ae1a-a5583d1fc73f',0,'2026-06-05 18:15:07',0),
('5e54ce87-61dd-412a-ae30-3bb1f63cd3c2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afc0d140-10f0-47d7-9323-5ecbcf1ab742',0,'2026-06-05 18:15:07',0),
('5eed12cb-e8af-4f8e-bb09-cd7efe2c780c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51528a57-ad42-4578-a3b9-1e906d332761',0,'2026-06-05 18:15:07',0),
('6043d7b1-5d1c-434e-8c67-dad68b2e8f79','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bd23b326-255d-4f23-874f-64ea291c2718',0,'2026-06-05 18:15:07',0),
('606447f6-c4c1-4b1d-9acf-7ce9cf189480','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5483c82f-db64-4093-9609-51be18dc91c8',0,'2026-06-05 18:15:07',0),
('607109f8-84e3-4675-a739-dc7726ad1f36','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c2326652-2664-43e5-9617-52a2cb927a72',0,'2026-06-05 18:15:07',0),
('60c0ee6d-b16b-4b88-be0f-8ad9d0f286df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7edf383-8b88-4418-ae0b-1cefbd614873',-98,'2026-06-05 18:15:07',0),
('6191a104-d2c4-4030-bed9-28acd27fddf3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','26b08c1f-e849-4adb-a849-21a8224eab08',0,'2026-06-05 18:15:07',0),
('61bca753-93d7-4d9e-a565-b355c759017f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6fa624d6-47b2-4ffb-b853-7eb149490831',0,'2026-06-05 18:15:07',0),
('61d99e30-6a72-410d-af9f-07c939d505a8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ac37818f-8487-4b59-a25b-1f4ffd31d7ca',0,'2026-06-05 18:15:07',0),
('6267b7f3-4b4a-466e-887e-06ad2f0753c4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','50928da1-cd4e-48b3-b111-8ba48600e2ae',0,'2026-06-05 18:15:07',0),
('62c6a7ff-98a0-49c6-b07a-ae581c0c1111','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','db3cbc00-b68f-4f1b-8faf-374c5643cbdf',0,'2026-06-05 18:15:07',0),
('63c42519-73b6-41a3-a9ca-bf9b261b6ddc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bff83117-dcb5-4663-8902-700064b23dcf',0,'2026-06-05 18:15:07',0),
('64018762-1745-42f1-8b47-4961ab20abb3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','42497f82-5432-40cb-b2c2-c7d858219138',0,'2026-06-05 18:15:07',0),
('650bbcbf-847a-4038-a14f-bd4370b22b63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','36e58f6f-9fcd-479f-b050-7f20c5d1ca30',0,'2026-06-05 18:15:07',0),
('6659785f-d964-4367-bdea-59fed7f57fef','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e060136d-f93d-4b3b-a156-07572aa45d32',0,'2026-06-05 18:15:07',0),
('666d0abb-3388-4cfd-82d4-b56ab8631e6e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4369f632-ca6c-4ae9-8ca4-1459f13f61df',0,'2026-06-05 18:15:07',0),
('66a5cdba-a1df-407f-af7a-9afa8180a419','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c615ef1d-5481-4ded-a40d-62239d3deb2d',0,'2026-06-05 18:15:07',0),
('67acc1a3-6658-4336-9284-921c678c78b6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e788ea01-fa2b-49d3-bc56-6695ef1338b8',0,'2026-06-05 18:15:07',0),
('68a78109-ee6d-4ea6-aeff-d5c3c220f937','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c981bd45-fecc-4bbc-8b9d-cdb3adc2d574',0,'2026-06-05 18:15:07',0),
('69309015-8d02-4d4c-8f3c-e6030c84072d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3333257a-0dfd-475a-9dbb-8e0f948d3a70',0,'2026-06-05 18:15:07',0),
('696f7e31-ab69-4925-98e0-e839a512eedc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53294365-6e0a-46a6-b4a2-53dc14eb5441',0,'2026-06-05 18:15:07',0),
('69a7036e-cffa-4c46-aaf8-b4bffb307c47','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8df6e1fd-3630-4e2f-9a34-dc1bd66e539a',0,'2026-06-05 18:15:07',0),
('69c681db-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-06-05 18:15:07',0),
('69c68efb-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-06-05 18:15:07',0),
('69c69219-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',75,'2026-06-05 18:15:07',0),
('69c695b2-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-06-05 18:15:07',0),
('69c69a38-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-06-05 18:15:07',0),
('69c69c10-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-06-05 18:15:07',0),
('69c69da2-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-06-05 18:15:07',0),
('69c6a04f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-06-05 18:15:07',0),
('69c6a2a7-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-06-05 18:15:07',0),
('69c6a56a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-06-05 18:15:07',0),
('69c75ef4-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-06-05 18:15:07',0),
('69c7638c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-06-05 18:15:07',0),
('69c764f6-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-06-05 18:15:07',0),
('69c7663b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-06-05 18:15:07',0),
('69c7674d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-06-05 18:15:07',0),
('69c76a2f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-06-05 18:15:07',0),
('69c76c32-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-06-05 18:15:07',0),
('69c76da1-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-06-05 18:15:07',0),
('69c76ec3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-06-05 18:15:07',0),
('69c77078-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-06-05 18:15:07',0),
('69c77214-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-06-05 18:15:07',0),
('69c77352-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-06-05 18:15:07',0),
('69c7ae4c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-06-05 18:15:07',0),
('69c7b2f6-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-06-05 18:15:07',0),
('69c7b50e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-06-05 18:15:07',0),
('69c7b6b8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-06-05 18:15:07',0),
('69c7b918-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-06-05 18:15:07',0),
('69c7bc08-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-06-05 18:15:07',0),
('69c7bdf1-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-06-05 18:15:07',0),
('69c7bf70-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-06-05 18:15:07',0),
('69c7c10f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-06-05 18:15:07',0),
('69c7c285-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-06-05 18:15:07',0),
('69c7c39f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-06-05 18:15:07',0),
('69c7c552-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-06-05 18:15:07',0),
('69c7c77d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-06-05 18:15:07',0),
('69c7c90a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-06-05 18:15:07',0),
('69c7ca2c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-06-05 18:15:07',0),
('69c7cd04-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-06-05 18:15:07',0),
('69c7cedd-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-06-05 18:15:07',0),
('69c7d233-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-06-05 18:15:07',0),
('69c7d374-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-06-05 18:15:07',0),
('69c7d522-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-06-05 18:15:07',0),
('69c7d6b8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-06-05 18:15:07',0),
('69c83cc3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-06-05 18:15:07',0),
('69c84097-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-06-05 18:15:07',0),
('69c841fb-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-06-05 18:15:07',0),
('69c84321-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-06-05 18:15:07',0),
('69c8444c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-06-05 18:15:07',0),
('69c84565-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-06-05 18:15:07',0),
('69c8475e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-06-05 18:15:07',0),
('69c84975-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-06-05 18:15:07',0),
('69c84b77-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-06-05 18:15:07',0),
('69c84d77-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-06-05 18:15:07',0),
('69c84f58-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-06-05 18:15:07',0),
('69c897cd-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-06-05 18:15:07',0),
('69c89a7b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-06-05 18:15:07',0),
('69c89bd4-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 22:07:12',0),
('69c89dde-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',100,'2026-05-27 22:07:12',0),
('69c89fc9-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',100,'2026-05-27 22:07:12',0),
('6a473b09-c662-46ba-901c-013a11bae7af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','60dec127-702e-45f9-ad58-1187c6d4b972',0,'2026-06-05 18:15:07',0),
('6a931922-9bd2-4dfd-a877-ab442c4328b2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9338a94d-076b-4251-8521-fee6d0cf93aa',0,'2026-06-05 18:15:07',0),
('6ba9fbfb-8436-4ca4-b29f-ec3e6003d2d5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a91006c1-37c9-4c62-b6b0-2121dcab15da',0,'2026-06-05 18:15:07',0),
('6bfdd218-5a67-434a-a061-7d5743c786ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','552137c2-3535-4061-8025-ba99d97a9542',0,'2026-06-05 18:15:07',0),
('6c83ff6c-2e51-4bba-b094-0eae9f32fed6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b65a49b5-db1d-477f-abc1-48eaa08e43f7',0,'2026-06-05 18:15:07',0),
('6ca9c70e-26c5-4568-9565-f913609c9135','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca3fce63-a376-471c-a147-6205fdec43eb',0,'2026-06-05 18:15:07',0),
('6e2dcc6e-4cc0-4bb1-9d63-f0a0443abab3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70c9e918-49c6-414b-bd11-e1ab06f3d90c',0,'2026-06-05 18:15:07',0),
('6f675b00-cfe7-4666-b57b-3dc595036362','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d6ad5b95-e793-424f-b23c-f3a009af73b5',0,'2026-06-05 18:15:07',0),
('6fa06e2e-9ae6-493e-aed8-98f16ba16842','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','118a7e16-c69d-4663-a445-7393bce80329',0,'2026-06-05 18:15:07',0),
('6fae7c05-81d5-41be-9aee-afdf9660aaab','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','007703ba-25e0-4cae-b080-dba2902f4bac',0,'2026-06-05 18:15:07',0),
('700f427a-be97-4cfa-a281-631e732079d6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fcb32fc4-a638-4116-b224-350f029bd6e5',0,'2026-06-05 18:15:07',0),
('7023267a-eb0a-4eaf-b2e4-ef186111206f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc41584-5473-4554-8bcd-80200fe8e4ec',0,'2026-06-05 18:15:07',0),
('703f8aff-b549-4c5e-9e5f-5df3fb40482a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','931df4c3-cd28-4ea6-acd4-4975fdaa4f09',0,'2026-06-05 18:15:07',0),
('719d0965-c06a-4ca4-9688-22588e5f7950','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dc664be5-4cdb-416c-9feb-0ee4219e93b6',0,'2026-06-05 18:15:07',0),
('71daa214-4c4f-4250-8e01-65aa4ff4971c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4529aa63-fe75-4ba3-a93c-b8633444a611',0,'2026-06-05 18:15:07',0),
('720b64b8-164e-4f62-aa47-63ac8690f692','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec444537-a741-4a62-922d-1f67bc3dd2c3',0,'2026-06-05 18:15:07',0),
('736b0267-167f-4e7a-b6fd-38198cf32b9b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','da8c297c-8f47-472a-b15f-a0b836a1b52e',0,'2026-06-05 18:15:07',0),
('739cfa6f-ef80-4d4d-bf3c-e540be34db19','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53f01d04-7fa4-4185-9825-003d32a6ad9c',0,'2026-06-05 18:15:07',0),
('73eb536a-3724-4dc7-aae0-4ba49cd6b269','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea73f637-7bcd-4353-a06b-4a81beef5cb4',0,'2026-06-05 18:15:07',0),
('740fa7cc-dc68-43b1-a71d-b48ed1faaf63','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a6c05246-5a54-4833-baa1-267650f342aa',0,'2026-06-05 18:15:07',0),
('74347a3f-31da-4524-8868-6604cafb4c47','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cb1d0f60-ac90-4e02-b6cd-5be35ec6add1',0,'2026-06-05 18:15:07',0),
('74773765-0ca1-40de-9666-fc6d0a12311d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','086b1ebb-d6fb-4796-9961-38c409e76e91',0,'2026-06-05 18:15:07',0),
('7492bd31-53fa-44b8-a277-5cd83257a1ed','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c332df7-7d9a-49c2-9538-e57317db56b8',0,'2026-06-05 18:15:07',0),
('7559c891-1b47-4cb9-8765-de2bd738c83f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','12e1fc7e-b9f7-4221-a9bc-f9dd47d374a4',0,'2026-06-05 18:15:07',0),
('77d252bf-cdc3-40dd-bcd6-f5c4f114cf4c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c00857b-a9eb-44f6-abea-006a70daeace',0,'2026-06-05 18:15:07',0),
('7867f54a-e746-4ca6-87a4-046d883fc020','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aed1d182-36b7-42e4-94a8-4ca5d73621be',0,'2026-06-05 18:15:07',0),
('78a06b44-ce3e-4a43-b03e-b53e83d3a9bf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01fc7954-ab85-4870-a340-9bed42a262d7',0,'2026-06-05 18:15:07',0),
('78a8d866-7f76-4903-a577-72c7b1171c85','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7d312fab-0066-4d14-958f-3c9a7c75669d',0,'2026-06-05 18:15:07',0),
('7914e888-3967-406d-ab47-7494421fd7aa','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dbdf621c-659d-4e47-9b63-a6dd593b7c80',0,'2026-06-05 18:15:07',0),
('79dbfd67-ff57-4ae2-90bb-e4b029b6b85a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1681f67d-506d-4bcb-bce5-4318c729b7a5',0,'2026-06-05 18:15:07',0),
('7a887634-7b7b-43d7-96f3-78caf9da3293','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e75f177f-5d2b-4938-b29a-60b1d4435e22',0,'2026-06-05 18:15:07',0),
('7a93a4a2-b099-44e8-8798-f06dc14a08f7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d506cb6b-1945-4ea2-9eb4-d003fba772d1',0,'2026-06-05 18:15:07',0),
('7ac936f3-d3e1-45ac-b03c-ff478f1b1317','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','91e57684-14f3-4938-9fd3-40526ddf48fd',0,'2026-06-05 18:15:07',0),
('7af5fa73-1b31-49aa-9116-02a4563ab1d3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b533b0a7-4bc6-4772-80dc-1f4ff2db7399',0,'2026-06-05 18:15:07',0),
('7bcdbea4-0d59-4425-a2da-82e82430d4e3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','06ab9ab0-d8e3-4935-aeca-3cef2e682833',0,'2026-06-05 18:15:07',0),
('7bd736f7-3b6d-4f7d-ba14-f65b8114f4a0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fa22f1a1-99c8-4172-84ee-63f646764e78',0,'2026-06-05 18:15:07',0),
('7cba0d80-e4eb-4029-8fd6-73630e884513','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','14643016-39cc-49a2-a844-34144ae690d8',-98,'2026-06-05 18:15:07',0),
('7d2bc417-0098-49e3-9b3d-973d3fb5a36d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b0a22311-3bae-4c4f-b224-dfe09f9ea603',0,'2026-06-05 18:15:07',0),
('7fb0b76a-065b-4d04-9306-e23fb3840b27','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1c7f12ed-1091-4546-aed1-8fbca2c97a84',0,'2026-06-05 18:15:07',0),
('7fdd1eb6-0006-44be-9868-0c9c9e564bec','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1967d361-4ed1-4566-9c82-e0bae33f55d3',0,'2026-06-05 18:15:07',0),
('7fe899b1-0795-49d3-b43a-bac97b66eac9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c66effa2-bf5c-4660-9f32-4b232200bcbe',0,'2026-06-05 18:15:07',0),
('7ff242df-559a-4bb7-b355-04250bf69c3e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cb33d551-acbc-4b54-8bba-427628d123de',0,'2026-06-05 18:15:07',0),
('804dbbab-f4eb-41a3-bbe7-bc4c9a1280fd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','43da9dc0-769b-4514-ac98-8edd54b7a62d',0,'2026-06-05 18:15:07',0),
('820ce9c2-24a7-4d2c-8f73-b6f27ac3c446','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2cfa6b2c-fd7a-4955-b2ad-a666e8d35b40',0,'2026-06-05 18:15:07',0),
('8263edf5-1ca2-4deb-98a7-419fcf30a0e4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5219d6a7-39b8-4303-9ea6-71ab1f809c09',0,'2026-06-05 18:15:07',0),
('82e31a51-1019-49af-9874-15879ef1bc89','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','751e4035-8fa8-4d65-bda8-47e6c0dd5374',0,'2026-06-05 18:15:07',0),
('8307de8c-11aa-44c1-bb1d-5ca76a5e28ce','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3601cee3-db3a-4c0e-adfb-5e7f0c82f996',0,'2026-06-05 18:15:07',0),
('83478188-439f-4cab-98c5-8484c7ee77ce','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c8e7f56e-76e9-4d7e-9fc1-307445696a79',0,'2026-06-05 18:15:07',0),
('858c3132-63c1-4199-acbc-fecda5b62304','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','03d44663-58b6-4a3a-a951-725dfcd65a24',0,'2026-06-05 18:15:07',0),
('868dd16f-d81d-4d88-ac07-2425b6229a6e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b2fd4ad-bb4b-442e-b895-1fbd7c1eaf51',0,'2026-06-05 18:15:07',0),
('86a0719c-f573-44d5-97ed-13745f603b13','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f2bf64c6-8f06-4a52-b24a-4e188726c3f2',-98,'2026-06-05 18:15:07',0),
('87f6d8e6-e6e0-4cb2-a94d-27b5961262f6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5c75b700-9cfe-4917-87f4-64a73af5f393',0,'2026-06-05 18:15:07',0),
('880b355e-29da-4228-b31b-75d31a314098','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b443468-faa8-403f-a1f6-0f6a84e239b5',0,'2026-06-05 18:15:07',0),
('896f738a-0a5c-42e9-8c78-1d084a2bd626','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d004670f-38cf-4e81-a9b8-e112da5c5149',-98,'2026-06-05 18:15:07',0),
('8d1b7d38-451a-41a2-a065-66e425344aaa','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','53d55058-28eb-4282-92aa-90ae0ca6cb76',0,'2026-06-05 18:15:07',0),
('8d38b84a-47c9-4c69-b350-cad6ffe94bf1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9a63ac3-04c8-47ab-9b9f-497d02261fbd',0,'2026-06-05 18:15:07',0),
('8d72f293-385b-41ae-9168-71d60280ec75','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','list',80,'2026-06-05 18:15:07',0),
('8d889627-dde3-49b0-a4e5-538dcd8c8263','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1003ee50-a13b-4dd2-840f-d79706396c28',0,'2026-06-05 18:15:07',0),
('8deb2671-21a8-4f59-a404-9ad986a2c259','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7e29c0bf-65cb-4b29-92cd-b750db96e549',0,'2026-06-05 18:15:07',0),
('8e440000-2712-4436-8fc5-64f222de77d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','43986cd4-5e6a-41bb-b06e-f1b1d9f5687e',0,'2026-06-05 18:15:07',0),
('8e6e319c-33fa-41c0-ae4f-b14a4f49bf58','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34e5f8e2-1049-4b58-95c8-e736ddf37313',0,'2026-06-05 18:15:07',0),
('8ecd3bb1-7498-492a-b6c1-13757d05dc41','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','view',80,'2026-06-05 18:15:07',0),
('8f9cb040-ec82-4340-9085-c37cf8805e49','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','20803ef8-3427-4910-aab3-f1cf9e4e3e8f',0,'2026-06-05 18:15:07',0),
('8fef50cf-cc81-4f7f-8985-063e8c723a7b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','019257d1-8aeb-4cf2-a2dd-19dd6903d18a',-98,'2026-06-05 18:15:07',0),
('918e2087-d27c-4df5-8338-ee7badf96604','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','431416f4-5113-4604-b4de-a2cbd7b253a4',0,'2026-06-05 18:15:07',0),
('925b1466-99a7-4c25-bd21-51d3d603facb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e34216b-7d9d-47b6-b1d5-b5151d2b0965',0,'2026-06-05 18:15:07',0),
('92832dbf-37f2-4523-befd-c55af2532291','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1cd5cb0f-32f9-4951-aca3-ffe151e318e0',-98,'2026-06-05 18:15:07',0),
('92a9a0d4-d989-4d39-a900-193933244d54','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cb0492cf-9963-4cc4-aee5-6ecdc09970aa',0,'2026-06-05 18:15:07',0),
('941eb98d-57ca-475f-8ab0-ad365cd82248','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eb71dc46-dcc4-42e8-ae3b-6de6105da5ee',0,'2026-06-05 18:15:07',0),
('94781af1-100e-40af-8ed1-164f0bfd994c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2296f7a2-2a06-4c5c-bc82-1ba9b5a90ea6',0,'2026-06-05 18:15:07',0),
('9494c4f0-c9c6-4ad0-8ca2-0532a74cbd95','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8aafe177-b5f2-44ac-ba37-26b3daa66a94',0,'2026-06-05 18:15:07',0),
('94a645be-2883-411d-b97d-6ce2f3131c1f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ab753073-8aa9-41f3-8f6d-9c29eb25a057',-98,'2026-06-05 18:15:07',0),
('9557fbe2-320c-448c-a794-bb53ddf30767','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d5fd71b-bb52-420b-b46c-cbb46e3b4fa5',0,'2026-06-05 18:15:07',0),
('957348c3-3c42-4e0c-8076-c11dc06fb9df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b841ac9b-f49e-4930-a133-89c7eb995a89',0,'2026-06-05 18:15:07',0),
('95bf43f8-38ca-4e21-8a92-673f93fc49a2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9d705f-8376-4d6e-9062-c43b36d720e4',0,'2026-06-05 18:15:07',0),
('96f09e00-7330-4274-aa5e-7640cd063a85','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','344978cc-a553-4295-88fc-e9caeaa09b93',0,'2026-06-05 18:15:07',0),
('970ea538-2c92-4c69-9775-d1f041598760','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','739af0b9-e3eb-47e1-812e-ecc047a3c73f',0,'2026-06-05 18:15:07',0),
('9710926d-0ca9-435e-afa3-94f986b73f69','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','875f825c-d5eb-41c2-a7c9-d2c4c748d3e2',0,'2026-06-05 18:15:07',0),
('9773cce7-c698-42a4-bc48-99b553d3efc5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','54291b74-6875-4229-89b2-aef76c4dd5a8',0,'2026-06-05 18:15:07',0),
('97df95ea-bbfe-4528-a338-11b96a117f93','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','571330fd-255c-45ab-8980-658b5d294ea1',0,'2026-06-05 18:15:07',0),
('982b1fcb-59d4-41d9-9f59-554ed4bacd80','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe43274-6b48-47bc-98d6-b261663cfe52',0,'2026-06-05 18:15:07',0),
('98cfd92a-965b-4448-8ba4-ff01f27f31fc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18d91162-b1c6-4a7f-ae87-e3a837929d68',0,'2026-06-05 18:15:07',0),
('98d7a95b-e190-4c1d-b054-10bfe07eef09','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d45e5fed-78c1-43e8-854c-5a4283ba9078',-98,'2026-06-05 18:15:07',0),
('98f4e77c-f3e1-4911-a610-65a3c65cca88','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e242a97c-d4bf-4154-9643-6002036237bc',-98,'2026-06-05 18:15:07',0),
('994a7234-004d-4a17-88b5-79cb41db648c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d575ea98-6279-44f8-b017-e1613d9ba73c',0,'2026-06-05 18:15:07',0),
('9a2f38f6-e3f5-4cc7-8efe-ad3fa6b639b1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a286f30a-c3a1-42c8-8bd3-6ca7edd1e3f7',0,'2026-06-05 18:15:07',0),
('9b4704eb-7681-401e-9519-8f42b60b6e11','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8ce2955-7ea1-4ed9-ab22-ff43adbc4e24',0,'2026-06-05 18:15:07',0),
('9bc36875-a102-415a-8a38-f8774318ad76','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f29e1783-11cd-49a5-a77e-8c41725ca5b3',0,'2026-06-05 18:15:07',0),
('9cba5324-1bfa-45f0-8562-e525db1484b8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eb0fc3e6-4991-4e17-aaf3-15c80de56332',0,'2026-06-05 18:15:07',0),
('9d5f54f6-d257-4c70-b7c4-66a35fdcd75a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5484c3c5-f8b0-4488-8e9a-c9ffcce35de7',0,'2026-06-05 18:15:07',0),
('9d60aa59-d7ec-43f6-b5ad-7dc09d65e707','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ab8e7013-f8a5-4c38-ac61-ed25519ad4f4',-98,'2026-06-05 18:15:07',0),
('9d6dc23b-f59f-4b43-8453-4d5f5bda7630','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a0515e3d-56ea-4a5d-94a5-6fcf35eb9a19',0,'2026-06-05 18:15:07',0),
('9d7ae693-ccf6-4c7a-ace3-b556c4796d1f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','711cb551-b416-40fe-afad-9684c7160fb8',0,'2026-06-05 18:15:07',0),
('9d8610c5-4d7a-4860-b94e-98f2b25cc347','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ab67bcf8-e1b8-4f71-a1b3-7ff905e08017',0,'2026-06-05 18:15:07',0),
('9de8a504-f307-450b-9636-f68dc3814e0f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1d94204a-3105-4a62-9fa4-8155031cacf1',0,'2026-06-05 18:15:07',0),
('9e85ddb9-8edd-453d-a8bd-b104267af29f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8e68e44a-7549-4b5a-95fb-2724c418c14a',0,'2026-06-05 18:15:07',0),
('9e889458-e960-427d-a1c6-d618ae039ec2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5e00b64d-322f-4c17-9e16-a588a9ee7ed2',0,'2026-06-05 18:15:07',0),
('9f85cc01-b3b7-4fd0-aa1e-4b29e5ad44c8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6b814a8b-138a-4ee6-8460-bfaf1fa21f92',0,'2026-06-05 18:15:07',0),
('a094e756-12ce-40c9-9333-f7b123d4c187','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','258a9eee-9e3a-4c6f-bc24-fc2bb64d0a4f',-98,'2026-06-05 18:15:07',0),
('a0d32baa-3dcd-4ce2-b8df-516f89d22c22','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','01c477a3-cdcb-4799-9026-1b284dc66f7c',0,'2026-06-05 18:15:07',0),
('a2329d20-2442-4b3e-8fbd-f9841d2b94fe','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed012953-572b-4f6b-8244-be09c52314af',0,'2026-06-05 18:15:07',0),
('a34a4a26-32bd-4aa9-b4fd-0f9d73454594','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bf65aa0d-8b07-4305-9b7d-9a08c96798ff',0,'2026-06-05 18:15:07',0),
('a396334e-d7d8-404b-9e39-0fe9ccf261f3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8ad52ce9-6d69-4768-903a-d074519dc13c',0,'2026-06-05 18:15:07',0),
('a3a166ad-2f94-453a-8605-d26f8ce2bf6d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','39fb43bd-5005-4ffc-8b69-55fe3300e608',0,'2026-06-05 18:15:07',0),
('a5fb525d-364c-47d8-98e5-25b8b3fcf8fd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6db21e1c-3e69-4c35-b50b-ec7941491141',0,'2026-06-05 18:15:07',0),
('a6b073bc-5596-4dee-adb4-8bf26fdc8bae','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','23c8df56-a046-4eaa-aa30-776ff8278101',0,'2026-06-05 18:15:07',0),
('a730156a-b8a9-4fdd-b729-bd742cd65956','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9806eda1-37e0-42af-b5c2-75eb0235df0b',0,'2026-06-05 18:15:07',0),
('a7fb074d-4293-49ae-9c80-56b5be359762','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','358089f9-89ed-4803-aa0d-fa39cd1a3014',-98,'2026-06-05 18:15:07',0),
('a87aaa89-1501-414c-b0e5-65207ba55881','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9e9664be-f74c-4c69-9251-4aae1cd93c18',0,'2026-06-05 18:15:07',0),
('a9877da7-2adb-4377-86a6-319867d564af','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','227e741e-f63d-4266-b25e-b5b138076d25',0,'2026-06-05 18:15:07',0),
('aa2acba1-2ec0-4c6e-8506-52d1528acc9f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34b7e7b4-e7a5-49ca-8f1e-3d393affd5c6',0,'2026-06-05 18:15:07',0),
('aa9a2f53-dd43-4f27-84c4-908c1feaff2c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0837ad41-578a-4788-b98a-fc0325d93678',0,'2026-06-05 18:15:07',0),
('aa9d7287-2652-4367-a21d-98dd6189e67c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','33675dc1-a7fa-4e75-bf55-9f3b5a0047a9',0,'2026-06-05 18:15:07',0),
('abc8cdff-f33f-49f7-8320-b974bf31be7f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a53cb42a-772e-4bd2-9a1f-97ff17ef5bdc',0,'2026-06-05 18:15:07',0),
('acdd7781-c2a0-44cc-905a-9956eb7a0a3f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ede0dfb-087e-4c96-b7fe-6cef6050b67a',0,'2026-06-05 18:15:07',0),
('adadb004-673a-4e84-a48f-169b56e7f6fc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','20b90d35-5f3c-4689-9f27-63b92dd6b981',0,'2026-06-05 18:15:07',0),
('adcca581-007b-483e-84cc-b15f07f3a4b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1bdbc446-2c9d-40a0-af5b-3820cf34a75a',0,'2026-06-05 18:15:07',0),
('ae044a96-0d42-491c-b435-df8140e5b2f1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','623f510b-27c0-48ea-8b1f-10b4cd5a168e',0,'2026-06-05 18:15:07',0),
('aea96699-ce9a-4a6a-80ef-329b1d91f659','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','32856843-f410-43e5-a862-026831fe0d64',0,'2026-06-05 18:15:07',0),
('af32b801-b012-4de6-b017-80debc766094','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6fcbeb87-0692-48c2-8953-231636c86bbb',0,'2026-06-05 18:15:07',0),
('af3d93e3-7134-44e1-a1da-3f3f9d43af6e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cf8f3ce0-3684-433d-9f66-2ba4bea03de8',0,'2026-06-05 18:15:07',0),
('af3e25c3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-06-05 18:15:07',0),
('af3e2b7d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-06-05 18:15:07',0),
('af3e2e7a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-06-05 18:15:07',0),
('af3e30e8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',75,'2026-06-05 18:15:07',0),
('af3e326a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-06-05 18:15:07',0),
('af3e33b8-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-06-05 18:15:07',0),
('af3e365e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-06-05 18:15:07',0),
('af3e37ee-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','776b6324-317f-4112-84e7-995c9b136038',89,'2026-06-05 18:15:07',0),
('af3e39ad-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b14096ae-1624-48fc-b53f-1bdb0ff2c977',75,'2026-06-05 18:15:07',0),
('af3e3c42-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','18b7175b-d958-45d1-acc8-a8567a855f70',75,'2026-06-05 18:15:07',0),
('af3e3e9c-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-06-05 18:15:07',0),
('af3e400e-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-06-05 18:15:07',0),
('af3e4118-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-06-05 18:15:07',0),
('af3e4215-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-06-05 18:15:07',0),
('af3e43e3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-06-05 18:15:07',0),
('af3e4549-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-06-05 18:15:07',0),
('af3e4658-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','22437aa4-2546-45e6-a3ce-110e78e376d4',89,'2026-06-05 18:15:07',0),
('af3e475d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea0c3962-69ff-4f0e-999b-31ada7662272',80,'2026-06-05 18:15:07',0),
('af3e4872-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ed0bb61-d98c-4b0a-849c-ab48678312df',80,'2026-06-05 18:15:07',0),
('af3e4975-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a659489-59a9-4188-bd7a-3053cb662c48',89,'2026-06-05 18:15:07',0),
('af3e4b31-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ba51cac3-eec1-49b2-9467-0203cf07f970',80,'2026-06-05 18:15:07',0),
('af3e4d18-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2d452643-f8a2-477b-8775-c655a4813c99',80,'2026-06-05 18:15:07',0),
('af3e4f3a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','85294b70-954f-4d9d-8719-ec7c0d695fb6',89,'2026-06-05 18:15:07',0),
('af3e5202-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5308e6d-b67f-4333-8552-324eacd2042d',80,'2026-06-05 18:15:07',0),
('af3e53d6-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','709cdfc6-d75d-41bc-94c4-0849bfe9b8ff',80,'2026-06-05 18:15:07',0),
('af3e5577-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df0a892f-9a23-4a3a-96b2-0114ff81e4c1',89,'2026-06-05 18:15:07',0),
('af3e56f0-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','257b29a9-eabd-4ab7-967b-cffec028956b',80,'2026-06-05 18:15:07',0),
('af3e5801-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e3a30428-91c5-43ab-8d5e-0e201c9ac435',80,'2026-06-05 18:15:07',0),
('af3e5a1b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89f8d64d-bbc5-4a0b-a616-8c222d51cf58',89,'2026-06-05 18:15:07',0),
('af3e5bf2-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2ed65e9d-ad57-460a-b608-53ec276e5690',80,'2026-06-05 18:15:07',0),
('af3e5e44-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7383c486-ee0e-4d4e-81f7-0256224ea78a',80,'2026-06-05 18:15:07',0),
('af3e6022-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c9101c8-7504-461e-b197-224ec15d121a',89,'2026-06-05 18:15:07',0),
('af3e61a5-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f0737257-b264-4da1-b075-acd028fa204d',80,'2026-06-05 18:15:07',0),
('af3efe2a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6722ec70-7cef-49fa-9351-e68ab5bd7ca5',80,'2026-06-05 18:15:07',0),
('af3f02ef-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b70570f8-0c20-434d-b0df-5bc4a06821cc',89,'2026-06-05 18:15:07',0),
('af3f0587-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e1347474-2f1c-4bb1-9cbd-cc169d789880',80,'2026-06-05 18:15:07',0),
('af3f073d-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','34bfb5db-09f1-4db4-8015-d5ebd1d7b261',80,'2026-06-05 18:15:07',0),
('af3f0846-0adf-44fc-8832-e77f45251cf5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','28bb3403-e142-4b1b-9e43-292838cb987b',0,'2026-06-05 18:15:07',0),
('af3f6219-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0e8ca0-3f9d-4a1a-89cd-07da6803a337',89,'2026-06-05 18:15:07',0),
('af3f65e3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dfe8c16b-7795-4659-a3fc-644ebf5b4b93',80,'2026-06-05 18:15:07',0),
('af3f6971-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','405a3054-1a5f-4ed8-9f5d-2c852fd5e56e',80,'2026-06-05 18:15:07',0),
('af3f6b98-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4d83c3fd-d752-4e32-81aa-ef322acb020c',89,'2026-06-05 18:15:07',0),
('af3f6cf3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52e572da-4ca8-410e-9e79-2b93ed72bd7c',80,'2026-06-05 18:15:07',0),
('af3f6e06-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7ec20f5-fc7c-4bc3-bc5b-2229b0321ad2',80,'2026-06-05 18:15:07',0),
('af3f6f1a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76942153-db98-4866-b2e9-a06b1604866e',89,'2026-06-05 18:15:07',0),
('af3f7028-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d32d1c5-cf2a-4429-b28e-575143c9df94',80,'2026-06-05 18:15:07',0),
('af3f711f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','aa9f35d2-eaa8-4f26-9abe-975d74882d75',80,'2026-06-05 18:15:07',0),
('af3f722b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6513c08d-2734-469f-9e92-41802cc51bee',89,'2026-06-05 18:15:07',0),
('af3f732a-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1a72e6a8-4f8a-4205-b03d-b387537ff2c5',80,'2026-06-05 18:15:07',0),
('af3f742f-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a18ac25-64f7-4b50-8893-121d9a1e7634',80,'2026-06-05 18:15:07',0),
('af3f75e5-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1807ccb5-ca12-49ea-a0b6-166161c11521',89,'2026-06-05 18:15:07',0),
('af3f77d3-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ca606fe1-0058-4e20-b124-895421473482',80,'2026-06-05 18:15:07',0),
('af3f7955-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31317a-63a0-4e32-856c-f96306542fff',80,'2026-06-05 18:15:07',0),
('af3f7a60-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','941a2406-b330-4753-85f9-89cd82c1f740',89,'2026-06-05 18:15:07',0),
('af3f7c3b-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ea9ad72f-1e4c-4aaf-81fc-9b8adf8af193',80,'2026-06-05 18:15:07',0),
('af3f7d83-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a05875e-52e2-42ac-8362-18a40062435f',80,'2026-06-05 18:15:07',0),
('af3f7e96-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','45a5c6f6-82a0-4948-9aa8-b1d3875e4e62',89,'2026-05-27 22:09:09',0),
('af3f7f92-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ce7be5fb-5856-4992-8c9b-ee49afdebe8e',80,'2026-05-27 22:09:09',0),
('af3f8161-5a18-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','58e59c97-48a9-4c4b-8c08-c848f2643b03',80,'2026-05-27 22:09:09',0),
('af668bdb-5b98-4899-937e-a8c2444905bd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0436d651-d8b2-4373-b41d-f7765b9144f3',0,'2026-06-05 18:15:07',0),
('af8c14ba-05bf-47b8-a47b-2cf167758913','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed698bd2-d12b-48f7-9afc-1818155a8148',0,'2026-06-05 18:15:07',0),
('af8c7936-8831-41dc-b113-68928afbb440','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a3d94824-0924-4292-82af-fecb9bbbfdbb',0,'2026-06-05 18:15:07',0),
('afd09e41-c4a0-40af-868b-c9123f4fbe5b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6d9165be-9f00-4355-bb0e-26c73cdbd27f',0,'2026-06-05 18:15:07',0),
('afe6d7d8-f139-438f-8b67-2084f2d5bbe4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-06-05 18:15:07',0),
('b0689a9a-1fef-46df-926d-7ff4b84264f0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0e1573d2-5351-4ad9-b5eb-72ba71916c85',0,'2026-06-05 18:15:07',0),
('b1b7f685-b548-4f97-a581-5f6dc6e8c55c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f3e7fd4c-4ece-4de2-9df7-c18e5cea78b5',0,'2026-06-05 18:15:07',0),
('b2480a45-7357-45a1-b28c-c123dbb53b21','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b074b871-1e2e-475d-89a6-9b6bec77ff70',0,'2026-06-05 18:15:07',0),
('b311beb7-4492-4fe3-b183-c6c2122f58f3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','86a366f5-faf9-4556-8061-c6e79a308558',0,'2026-06-05 18:15:07',0),
('b4118bda-24b4-4bb4-8a30-a7efbb0bbc96','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1b6a5128-ef4d-4ef6-9de4-b8bcf9cf577f',0,'2026-06-05 18:15:07',0),
('b59c7cdd-0802-41fb-8a9a-7bc38c7e3ab1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed9ebf2c-d4d6-45df-afb1-eba0aa609b6b',0,'2026-06-05 18:15:07',0),
('b5a7467e-442c-4d88-9341-940422006862','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','43a98856-b26d-4add-bb5c-ccd5a7eabd5c',0,'2026-06-05 18:15:07',0),
('b69d3d6f-2d1c-40e4-8424-116d77c62a19','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d707d055-5cd7-467f-851e-5d814c71f1f4',0,'2026-06-05 18:15:07',0),
('b6b3aff8-fe3f-4770-892a-3bd027b5b8b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','481be9e6-a8d2-4e9a-818e-d68033bfdbc6',0,'2026-06-05 18:15:07',0),
('b6f69ad5-2c80-49f5-8e85-1412b9c6bf9d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc64ce9-0183-47f7-9c36-755e4f2d6367',0,'2026-06-05 18:15:07',0),
('b7558171-7968-4776-b75a-c0c877ccf384','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c0e8322-7665-40a7-9224-2889fcb88873',0,'2026-06-05 18:15:07',0),
('b79c4fc4-f9e8-4034-bca6-7be43cce07c1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','91bb421a-5f30-4e3e-96c4-b8ec25f728fa',-98,'2026-06-05 18:15:07',0),
('b7cee6ab-45e3-431e-8a84-2bff50a08246','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','57ec7b15-7c40-47a9-a854-c5833a1e8510',0,'2026-06-05 18:15:07',0),
('b80d481d-ce9d-474c-8f7c-52da7f56d82e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','de3367fe-b876-4bbe-872c-f9394e056a15',0,'2026-06-05 18:15:07',0),
('b8f44a78-656b-4cef-b892-ca848b18eb96','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6dbf87e7-e63e-4cf4-a900-62811350ad92',0,'2026-06-05 18:15:07',0),
('b9348801-2828-4bc2-adee-f663d78d7d69','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','93e70a6e-c3f1-4815-918c-8b45d6ddaba2',0,'2026-06-05 18:15:07',0),
('b9d86ffc-7895-4650-b2be-737404fafe56','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f83f41a-dd6b-42bf-be43-269658e80b32',0,'2026-06-05 18:15:07',0),
('b9f2c62f-ef53-4b43-a69c-6f71c29f893b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','180a639d-8bac-44e2-a194-474bb5edb8b4',0,'2026-06-05 18:15:07',0),
('bb12fb8c-951a-4d3b-ab36-48e6cbe619cb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c9ab568d-57d9-4b60-88a6-3329e9c23503',0,'2026-06-05 18:15:07',0),
('bbb945e4-c18d-4aa0-acec-d1c83d61714e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed6024c8-3a6f-4d15-a762-ef63473037cc',0,'2026-06-05 18:15:07',0),
('bc9aa2de-70b2-4add-bfad-ab0f6e7e7899','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','620e8b6b-8e3b-43bb-92b3-9dafa1c76efb',0,'2026-06-05 18:15:07',0),
('bca0d472-443a-4ba0-80f1-6f8e2a5378c6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4ad6b479-232b-448e-8e2d-b4408f6575b0',0,'2026-06-05 18:15:07',0),
('bd0f6103-9e29-43e6-a007-8fa6cd74aef7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','import',-99,'2026-06-05 18:15:07',0),
('bd5da54e-1027-487e-89da-0b84d6a7d82f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','95193df2-06eb-47d1-9e18-90c6013a444f',0,'2026-06-05 18:15:07',0),
('bd809074-a964-427b-b278-aa63aebfc820','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3518726d-ed57-4ebe-bd89-b93b4beeb1f1',0,'2026-06-05 18:15:07',0),
('be98f1d0-55a3-4295-b693-982c8444a526','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e03c57f8-1c16-43ca-bbbd-e9e865f999d3',0,'2026-06-05 18:15:07',0),
('bea42afe-2d08-46df-91f2-8cf890b0bd6f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ad164842-7f1f-43ee-9a57-8aca03838b7b',0,'2026-06-05 18:15:07',0),
('c05006b4-9eeb-471c-9046-3019441c426c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','51a52ce6-041c-4aad-96db-9fb7b4076743',0,'2026-06-05 18:15:07',0),
('c052c2fd-8143-4b70-8237-c51298cd2ae2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0d7675c5-1945-41de-8af3-0c6ce10a4148',0,'2026-06-05 18:15:07',0),
('c0689315-7d1b-4f83-acc5-39154261e6bc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','751eaac8-bbdb-4f17-81a2-da1de14d215b',0,'2026-06-05 18:15:07',0),
('c0c2df50-6875-4bf7-b13d-ebc7942cf998','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6fac6d61-62f5-488c-a724-530366b3337d',0,'2026-06-05 18:15:07',0),
('c0e1bc9c-4fc3-4870-8aa0-e6ae118b8c41','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bfdb58fa-372b-40f4-a2d4-1fdd17d562a6',0,'2026-06-05 18:15:07',0),
('c19640bc-bbe2-43b2-bea3-c129ebe05b04','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4aa86fb5-7fb9-40fa-85c1-84c93ad95c31',0,'2026-06-05 18:15:07',0),
('c1b5ffb7-802c-4ebb-8a7d-c51f49d9b7ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ddc733d8-e6d3-4046-9463-382346bf5f64',0,'2026-06-05 18:15:07',0),
('c2214a83-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9ad8db49-a936-4166-bebc-d99f88e17872',89,'2026-06-05 18:15:07',0),
('c221a279-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d829bf88-fbfc-48d1-bb0d-0b1df06ce16e',-99,'2026-06-05 18:15:07',0),
('c221a761-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3542abf5-83c3-4890-8988-5e1f7c88a8bf',-99,'2026-06-05 18:15:07',0),
('c221ba3f-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e753ea71-9ed2-46d4-882d-4cdbac698a38',-99,'2026-06-05 18:15:07',0),
('c221bc78-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','26b5b6f5-9296-41c3-990e-d55f8d4f16a4',-99,'2026-06-05 18:15:07',0),
('c221bdbe-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','05236f18-558c-4466-9cb8-c500a80e8f7f',75,'2026-06-05 18:15:07',0),
('c221bef6-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f32c079-e651-49e6-aa3b-8c8d190dae2a',75,'2026-06-05 18:15:07',0),
('c221c9d6-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','789f928b-63cb-4139-835e-dc56a3d1f37c',89,'2026-06-05 18:15:07',0),
('c221cdcc-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7ed3ff06-9966-4bc1-9cda-140c94ccb4c3',-99,'2026-06-05 18:15:07',0),
('c221d0a1-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1235e470-3d90-4621-a1bd-e92afd81ff78',-99,'2026-06-05 18:15:07',0),
('c221d21d-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5154c973-f20d-4496-b111-bc45d2e8ac52',-99,'2026-06-05 18:15:07',0),
('c221d33c-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e2c488a3-0956-48d0-873a-312a3f7e3b47',-99,'2026-06-05 18:15:07',0),
('c221d441-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','78bbb291-7bdf-458d-a3f6-e3b332888031',80,'2026-06-05 18:15:07',0),
('c221d56b-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','206273c1-860b-47d8-a526-8b46e6d2b64b',80,'2026-06-05 18:15:07',0),
('c221d679-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9778af6-1068-421e-8c56-1aa82c01b562',89,'2026-06-05 18:15:07',0),
('c221d999-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c832751c-d053-421c-b198-8c14c0df94bc',89,'2026-06-05 18:15:07',0),
('c221dbd0-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','764a43ba-0d1e-4059-8781-0137960f5416',89,'2026-06-05 18:15:07',0),
('c221dd8f-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','444da529-04ee-4cb8-b608-002d64e51bf1',-98,'2026-06-05 18:15:07',0),
('c221e130-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d9625ee5-6015-4d3d-b454-d67083cce4e2',89,'2026-06-05 18:15:07',0),
('c221e2c2-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e2a3540-a62a-4aaf-88b9-eb1f0fc4ac65',-99,'2026-06-05 18:15:07',0),
('c221e3de-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','226abcd2-9f1b-42da-9d1e-120028ed8b91',75,'2026-06-05 18:15:07',0),
('c221e4e1-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c1f00d4-49f7-4738-8c3e-5e6a3775d5e4',-99,'2026-06-05 18:15:07',0),
('c221e5d5-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','35b9be9c-81b5-4425-839f-12a194420b89',-99,'2026-06-05 18:15:07',0),
('c221e703-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','afe6d7d8-f139-438f-8b67-2084f2d5bbe4',75,'2026-06-05 18:15:07',0),
('c221e802-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8415ec2-5c47-4fd5-84fb-fde1126a53f7',75,'2026-06-05 18:15:07',0),
('c221e9e7-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','df23d201-da1b-4482-ab4e-a69ea1caffc6',89,'2026-06-05 18:15:07',0),
('c221eb75-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7802d928-b2b2-4091-bee6-abebc1f187d3',-99,'2026-06-05 18:15:07',0),
('c221ec97-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','99a4acda-dbfd-4a2d-bebf-a413a0e03b7c',-99,'2026-06-05 18:15:07',0),
('c221edbc-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ea28da8-4f43-47bd-b8e7-87d5bdd8c99c',-99,'2026-06-05 18:15:07',0),
('c221ef6c-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','15af59ca-c5b5-425e-a19d-93006ea37da5',-99,'2026-06-05 18:15:07',0),
('c221f0f7-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70fa9f7a-0507-4453-899c-a5a1a7e1dcbc',80,'2026-06-05 18:15:07',0),
('c221f24a-5a16-11f1-864d-da64c98a9ba7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0b52974d-6c76-4861-9d2e-47768f0c0a02',80,'2026-06-05 18:15:07',0),
('c2426b26-b870-4128-bde4-d02d9b722a3c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','52f012c3-46ad-4b46-a684-42f011e0f4d5',0,'2026-06-05 18:15:07',0),
('c398285e-74f7-4646-90f7-2d548002b33c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89a685d4-1c63-494e-a0f8-90f06264f031',0,'2026-06-05 18:15:07',0),
('c3b9e12e-e005-4679-bc1a-73d8a447512b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3f31aa4f-bd00-44e0-a05b-0098e049bb70',-98,'2026-06-05 18:15:07',0),
('c4188b16-92b7-4a21-8ce4-16431ca25c09','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','export',-99,'2026-06-05 18:15:07',0),
('c47de788-3d09-4b33-82ec-5c8c935e1a6d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d196f5be-c80e-4310-8471-9a255f5d9eed',0,'2026-06-05 18:15:07',0),
('c57279c1-66e4-467a-8636-6cbc83a7d4f6','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b05bc48a-3a05-4a88-b584-d82d6010bca1',0,'2026-06-05 18:15:07',0),
('c618a428-636e-4913-9124-ed74be13f51a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a1cb54e6-6df3-40ea-8612-1c34458b5753',0,'2026-06-05 18:15:07',0),
('c6644efe-b9c9-485d-ae51-aa9794ee7d95','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a11e4cd4-6de4-4d02-9f05-13056bac4001',0,'2026-06-05 18:15:07',0),
('c6e44b7e-bea3-4fea-957d-0a04f54676a2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0c96ccf4-d6dd-4751-9ab6-76b2b64516dd',0,'2026-06-05 18:15:07',0),
('c750ae03-b2a2-4859-88b9-718aa3d81a44','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d54304e4-d130-49e6-adde-004ee313fbdc',0,'2026-06-05 18:15:07',0),
('c7dbdafc-bf4a-4f26-9b70-92f4b79160ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','10c9e5d7-971d-46e9-93c6-abe8a86b4c0e',0,'2026-06-05 18:15:07',0),
('c7f6e33d-fa08-4acc-a3a3-523b2dcab44d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','89131fbf-c44f-47a8-a95e-e7a90164b0f0',0,'2026-06-05 18:15:07',0),
('c8ca858b-f22f-456c-86f1-1624be152c76','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7c44c252-4461-4bb1-b24c-dc4fe572c0ef',0,'2026-06-05 18:15:07',0),
('c8d9d1a1-1d85-4a06-8697-4270e05fe756','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0aa13749-2d93-43c3-933b-3928d5967bf0',0,'2026-06-05 18:15:07',0),
('ca561175-023d-428f-9b79-49c70a822db4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3392234c-6995-499e-a44e-00a37d517d76',0,'2026-06-05 18:15:07',0),
('cb445948-ffd3-4332-ae58-98395c22bf82','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f67028f4-fb9a-450d-b989-1aa10d686598',0,'2026-06-05 18:15:07',0),
('cb853dc8-1865-4745-b644-498c41e47e58','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2b6699a3-1a2d-45f7-8dbb-a1b9a1a6a3dc',0,'2026-06-05 18:15:07',0),
('cb98e524-f4e8-4655-93ec-de1cda9d6a24','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','54b995ba-89da-4c5e-abdd-c0f65c6eb3bd',0,'2026-06-05 18:15:07',0),
('cbfc6ee0-add6-41f1-94cd-5f22222d00b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9e76cb47-fb28-4c90-be69-0429bec042c7',0,'2026-06-05 18:15:07',0),
('ccbc575e-a465-4784-967d-510893875f37','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e63e5b9e-f777-48db-88b3-1bd6e4195bd5',0,'2026-06-05 18:15:07',0),
('cd34d160-673f-447f-8fca-4d02bc9270b8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f8074d67-2627-477f-a903-5a7d82f87cc3',0,'2026-06-05 18:15:07',0),
('cd359436-2136-434e-8baf-c1aba7bf013d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d8cdd4e2-09e3-48cf-8521-0b959894ce88',0,'2026-06-05 18:15:07',0),
('cd439e5d-ece4-4ae6-9eb3-d063852ac10c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a23fa4b1-3fb8-4778-ba55-2963168e7f90',0,'2026-06-05 18:15:07',0),
('ce07f8ca-c892-4c49-8ca9-06163bf41d35','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6e74593a-b670-41e0-b08a-2066ca1496a8',0,'2026-06-05 18:15:07',0),
('ce150de5-87c3-4059-8a15-2302688866fb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c7e2470-38a0-4b6a-be0b-0da97536716e',0,'2026-06-05 18:15:07',0),
('ce7c50cd-c221-4018-b779-3465cae09383','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f5331f2b-35dc-49d5-b6f9-09d89c46a3ee',0,'2026-06-05 18:15:07',0),
('cefc9f38-7d27-4062-b897-6fb51684905f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c2dbcd44-0103-41fc-841f-2a5f88b093f3',0,'2026-06-05 18:15:07',0),
('cf5f3c4a-259d-43bd-82c5-f5bf0c367749','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ae351d4b-0bc5-41d3-b09d-7d6b0e690cf0',0,'2026-06-05 18:15:07',0),
('cf7a82f8-55da-4c29-a90b-1a67fa016bcf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5ebc633f-1cd1-4236-a22b-54458ab66e75',0,'2026-06-05 18:15:07',0),
('cf9bae28-61ae-4e00-93e7-2068ff18699a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a9307b98-0a55-4b45-aede-4c236d1ac3ac',0,'2026-06-05 18:15:07',0),
('d090bb95-0d16-4c24-a1b3-a6b4b12dfe1c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ec135e94-31e9-4103-ac0e-623cf814562d',0,'2026-06-05 18:15:07',0),
('d0bd5a9a-9374-401e-bd97-4d9bc3a13f62','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eba9cc71-0ac2-4b93-9318-cb9669c9b650',0,'2026-06-05 18:15:07',0),
('d1a0b513-297d-46fa-b4e9-e55eb033d1b0','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','access',89,'2026-06-05 18:15:07',0),
('d2cc4d79-41b4-4294-80ff-10e0a9b3beb9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','07998e5d-14a4-44ce-9e42-4f8910f116a7',0,'2026-06-05 18:15:07',0),
('d3131274-fdb9-48c0-824e-f07f9916252d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4ce86533-ee5d-401e-99e9-11a35d8a8f7f',0,'2026-06-05 18:15:07',0),
('d3c99d96-6c4d-4d37-a5c1-cebe789ba724','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','03678749-2b5f-48f2-a17e-19202e345814',0,'2026-06-05 18:15:07',0),
('d4398959-6521-48c5-a287-d604c9d6d208','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','76d40b3e-7445-44e2-8991-c36e1b52625c',0,'2026-06-05 18:15:07',0),
('d456819d-62c7-4290-9c8b-597ce9413277','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2675aed6-fba5-4472-bfc1-694120fe42ec',0,'2026-06-05 18:15:07',0),
('d464f97a-42c3-45e5-a2d0-33829dd9d0bf','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','ed0f1ee5-a667-4c3b-a4e9-85a5d98cd7f8',0,'2026-06-05 18:15:07',0),
('d54e8d98-2980-4ac3-9f10-9935cb5ca60b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','625ad116-0023-400a-b317-940d52682990',0,'2026-06-05 18:15:07',0),
('d5703b6b-34de-4a23-8977-6186d72ac3b5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','80dbf0ba-7d6b-497e-820c-2a3f96225b39',0,'2026-06-05 18:15:07',0),
('d5a34790-88c4-4066-8da8-91be131ea390','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','92ff1621-0e5b-4e9c-a2f9-d618866463a2',0,'2026-06-05 18:15:07',0),
('d5b5719c-2983-4e40-96e6-74fd4d564c56','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','d28ed73e-8a3b-4a5e-af2d-1be4fb56cb39',0,'2026-06-05 18:15:07',0),
('d5f25190-4e1d-478b-9d7f-9457ae42caf3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','64cf44e2-6999-4c15-bcad-1d5d0353d328',0,'2026-06-05 18:15:07',0),
('d62b5c24-69fb-490d-b302-556f6e5083ba','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','65b9a1f8-e472-48ed-a9e2-17f4eda82eb9',0,'2026-06-05 18:15:07',0),
('d62e38bf-329c-451d-9679-33cfc3789d02','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0e2991bf-b105-47b4-8e73-0dd110dfe32c',0,'2026-06-05 18:15:07',0),
('d664354a-7ae1-44b3-a5cf-9ce36dca3e15','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','47e171bc-88ef-41eb-9e3d-48e95b495c97',0,'2026-06-05 18:15:07',0),
('d6869cd0-6bd0-43da-a56a-afa0ff8fc2ef','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','fed3fa8d-1e7b-4e41-8e80-54b0f2691acc',0,'2026-06-05 18:15:07',0),
('d6e5059c-b9c9-43f6-91be-67d0aedc4252','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0efa118c-6f99-4dda-bc38-5885db67c88c',0,'2026-06-05 18:15:07',0),
('d7a621de-b8f9-4fc1-bcad-d9a48326c46c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','delete',-99,'2026-06-05 18:15:07',0),
('d7bdb74b-3cbd-4029-82ee-32126a79a6ab','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2371a74b-5988-4d13-9c59-8622b23964f7',0,'2026-06-05 18:15:07',0),
('d81ca6ab-64dc-4a60-b818-e38e58aa73a3','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2f2dc681-3423-4b29-ab8d-a02f48b822e8',0,'2026-06-05 18:15:07',0),
('d8c8d035-75a3-4cec-a80e-11f48c65b0e7','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','c65003a2-3143-4e43-8996-c4ca028ca743',0,'2026-06-05 18:15:07',0),
('d94c4022-bcd8-45e5-9e3d-e78205eece66','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bf41e9b8-8e41-4c23-a617-642383973ecb',0,'2026-06-05 18:15:07',0),
('d9c165ff-1395-4512-94a8-0d1e3ee8dcdb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9c436a6f-4168-4c72-8a29-9c8cbd617b4a',0,'2026-06-05 18:15:07',0),
('dc35d629-48e2-4b7c-a4f6-30d2a44ce93a','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b13945ec-bf57-45d8-834b-170c276fdcf6',0,'2026-06-05 18:15:07',0),
('dc8143a6-96aa-46ea-aea4-a6d1a9ca2400','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','44bb8ba0-0045-465a-b18e-b822734409af',0,'2026-06-05 18:15:07',0),
('dcced417-f09e-443b-b140-0298e3c25e4d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a5ec4ecb-8526-4015-9fc6-aa45cbd98655',0,'2026-06-05 18:15:07',0),
('dcf8648f-6560-4953-96df-3453fbd1cf84','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c0ddb9d-38a8-4244-88be-bd249a57761f',0,'2026-06-05 18:15:07',0),
('dd424326-2c06-44f1-98d6-1508f9ac5353','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','59a22dcd-ba31-4071-a6c4-c322aa8bcb4a',0,'2026-06-05 18:15:07',0),
('de071c42-f66c-4cb4-8a52-c8a08cd0728f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bbae6027-8167-416c-a0f6-832b1db98907',0,'2026-06-05 18:15:07',0),
('debdd7ab-8330-45cc-bbf9-eac11f5f816c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6a40bb0d-1147-4368-90e9-2206c652892b',0,'2026-06-05 18:15:07',0),
('deff8c40-00f3-4ce0-9622-f8e1d456f897','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bacfb789-b991-4a74-948f-8fb15d66e5e0',0,'2026-06-05 18:15:07',0),
('dfb228d2-3195-43fd-8ff8-b6bc8708d8f5','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','dcc8e7de-446e-45b6-9f83-34f6e636999f',0,'2026-06-05 18:15:07',0),
('dfdce3a9-27ba-430e-a7e5-e1d8419303bb','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','25c86b46-ca74-462e-a197-2820e3733788',0,'2026-06-05 18:15:07',0),
('e197cb1e-d0b2-441e-b1ea-1021a77ac789','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','70243d91-48f1-47a6-b4e2-bb8f30b2a1b0',0,'2026-06-05 18:15:07',0),
('e3342bb1-15bd-4c8f-b415-bbf81cbd3e96','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6f054bce-07a0-4a37-8193-928ea2d917b5',0,'2026-06-05 18:15:07',0),
('e4a28dd1-f7a2-4a43-a45f-eaaa1ddc8263','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b7da0ced-0580-4d2c-bdc4-b550238a5c0c',0,'2026-06-05 18:15:07',0),
('e5846bf1-41c4-4fd9-9b2a-9b589a511a4d','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','875f3849-7559-46f9-901c-ebde05b57e54',0,'2026-06-05 18:15:07',0),
('e5bdae35-0191-4135-a799-8188d51bb2ec','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5b7697e3-8f8e-4efa-8b03-acca2d5beb39',0,'2026-06-05 18:15:07',0),
('e73dfa2b-d908-4861-9199-2c3fde869001','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','8138c36b-a539-43cf-9439-453017afd5b1',-98,'2026-06-05 18:15:07',0),
('e8addcf1-e299-44fc-b0e9-3904048d4c3e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','a18d401e-77e0-4d20-bef8-4e5f3229dff9',0,'2026-06-05 18:15:07',0),
('e8baf87f-1d32-4da3-9166-f693821e85d8','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e24427c5-e771-4a54-a71e-2cf3d317d52a',0,'2026-06-05 18:15:07',0),
('e9082932-bdd5-4387-bb59-2e061904512b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','massupdate',0,'2026-06-05 18:15:07',0),
('e9abe81f-14a2-49fb-b8bc-4766d6402979','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3a138378-a11f-46ff-a0af-cd5cad8e7233',-98,'2026-06-05 18:15:07',0),
('ea287c95-1831-4193-beee-6a8eb1db4df1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','418f9039-90c0-4b24-a464-7ce927cd55f7',0,'2026-06-05 18:15:07',0),
('eac458ce-9e62-4823-a3a8-30fad2c7189c','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e027e371-8d32-42bb-9eb1-e311a14168fa',0,'2026-06-05 18:15:07',0),
('eb70fb56-943c-4e4e-8baf-42aa3ebec83e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','eb927cf9-64d2-493c-bdca-f113d41adf2a',0,'2026-06-05 18:15:07',0),
('ebcbbee4-729a-41e3-8e1a-36e67b883567','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','360c2e8d-ee55-4433-b38d-b556d5393800',0,'2026-06-05 18:15:07',0),
('ec2af2e6-0a0b-4cb1-8284-6eff0a9f7a13','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','0faf133e-eee4-4a42-a76a-1e42a1965ea7',-98,'2026-06-05 18:15:07',0),
('ed8cf217-69aa-4a01-9040-a71d87303f28','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','993b277a-eaf1-4d8c-9928-f0b091ce50d0',0,'2026-06-05 18:15:07',0),
('edc846db-bf13-4336-a177-fd3c1ceefc49','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f61bb70a-e4cc-43e7-b2cf-4a0b16943644',0,'2026-06-05 18:15:07',0),
('edddfdc4-cdab-4bfe-859a-0deb41c851a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','729fa487-981f-4605-9a30-ea2c524d9bac',0,'2026-06-05 18:15:07',0),
('edeb7bac-97b9-471c-83e0-8fe7e38747df','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9a510b97-0f79-4951-a333-f157f75bb472',0,'2026-06-05 18:15:07',0),
('ee085117-71b7-4581-8232-e961928120d2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','984afbe1-3bec-4765-82f5-dc7f74f78bbc',0,'2026-06-05 18:15:07',0),
('ee385202-a9c8-4839-a223-8963ee5bbd76','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bedab9f4-637f-47a7-a62f-bff4e2deeb52',0,'2026-06-05 18:15:07',0),
('ee4d1f50-4732-4c1a-ab86-1245fe78c4d9','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6ccb7be7-b659-418b-980b-5f72b5cc4f1d',-98,'2026-06-05 18:15:07',0),
('ee86e71a-14e4-44d7-8beb-5e45e6fa4566','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','19a7ba30-0104-4dd8-a430-86e21ce5b7ee',0,'2026-06-05 18:15:07',0),
('eeb5a32e-a1de-4f15-bb9f-206363a9d730','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','034c88ef-af18-4986-ae0b-57c467294d4d',0,'2026-06-05 18:15:07',0),
('eefd3ac6-4812-4760-be63-cc657357915f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','bd228d09-2784-4f50-9177-cbd78dfc1182',0,'2026-06-05 18:15:07',0),
('eefe67f9-f56f-4309-a8e1-e0d536ef920f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6c935396-7d5b-49cf-8fd4-fd4201734b99',0,'2026-06-05 18:15:07',0),
('ef8a1b1a-a71f-45b4-8d39-fc88d282e53b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f27d6465-e3b8-4f27-9657-a1ca680e9bd9',0,'2026-06-05 18:15:07',0),
('ef96bb4b-c7ff-4a4f-8081-89b5bf796f15','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','4e02625d-cacb-4e85-a8b5-a3f64aeb8c64',0,'2026-06-05 18:15:07',0),
('efba982d-0b34-4548-bddc-7f8562f32442','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','e68efaff-a1fa-4bf8-8200-e33d64ec06a6',0,'2026-06-05 18:15:07',0),
('f1507dce-9374-441f-82b2-d78072f04c94','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','41452b6d-8777-4fd4-b575-0465a402fd9a',0,'2026-06-05 18:15:07',0),
('f15e9da9-997c-4f3e-bffb-33fd0c7b7c15','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','27534067-4c9d-4c7c-933c-4c62d3189ff4',0,'2026-06-05 18:15:07',0),
('f2167ab4-4359-4ed3-9a50-a3b13e7a4238','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3b4042e9-da34-42a0-abfb-2d710138a117',0,'2026-06-05 18:15:07',0),
('f289d810-e468-4e31-895b-e3d6d6de55ea','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','7b64e235-9a93-4b7b-aac7-c410b1e2c907',0,'2026-06-05 18:15:07',0),
('f4788216-cc23-49a3-93cf-38af3c0e35d2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b43e352e-f9c1-4e17-a357-2229835f918a',-98,'2026-06-05 18:15:07',0),
('f588622f-ee1d-4254-9b0d-72c95edcff01','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3ab43873-7b09-40c3-8007-d5e1f39645e2',0,'2026-06-05 18:15:07',0),
('f679a5d5-41a2-4f25-9559-7461f8621a18','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1481e240-0372-4257-a82a-f0c67953e088',0,'2026-06-05 18:15:07',0),
('f711d3f2-858b-4fe4-960e-9771811fa1a1','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','9bd85a1f-bc3b-47f7-b644-3a3bbee80b5c',0,'2026-06-05 18:15:07',0),
('f91375ec-2f3e-45b2-80b4-f4082eedb8a2','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','804d4438-6bd1-4555-a84a-fd922fe29070',0,'2026-06-05 18:15:07',0),
('f97b5387-e761-4217-afc3-cb7b5f19a6b4','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f85baad-2295-46a7-b737-ae1e199c6ad8',0,'2026-06-05 18:15:07',0),
('f99de9c3-352f-4981-afcc-fab17f12434b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3cc66529-e495-4a37-9d6e-7cbbefd4b055',0,'2026-06-05 18:15:07',0),
('fb04e28c-7fb7-45db-a407-b7cc50b5e3cc','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','cef3dcda-cafa-4b83-9eb9-b0135a582723',0,'2026-06-05 18:15:07',0),
('fc4b57d1-4c60-4e69-9fbf-5a840720770b','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1ae8d636-b52b-4f26-8658-d9c92d117d3e',0,'2026-06-05 18:15:07',0),
('fcc19305-0bda-4399-8b39-e78112244a24','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','04ff9854-f520-4f29-aff8-f5b06b5f9e50',0,'2026-06-05 18:15:07',0),
('fd3043f9-b13c-478a-aa41-5166ff94f590','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','6037d09f-02e3-4575-8b5f-520a1ac44c98',0,'2026-06-05 18:15:07',0),
('fd3102ab-434b-459e-b9ff-64d0c53f851f','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','49c63a73-6418-41be-b4a4-d20d8900b29c',-98,'2026-06-05 18:15:07',0),
('fd40842e-1eb4-496a-b101-932c9e50b8ab','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','5f5e281a-351b-4d42-b31f-7ff8095d1163',0,'2026-06-05 18:15:07',0),
('fd85eecb-9cff-4c11-8517-4b549edb5793','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','2592d8eb-e534-49e2-aaec-23296a44302a',0,'2026-06-05 18:15:07',0),
('fe0ba162-3699-4ece-bef8-5bdc6616ba79','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','b731bfb9-9b44-4795-8c01-0cf8399194b3',0,'2026-06-05 18:15:07',0),
('fea50296-06e2-42cf-b5a6-34262f215cdd','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','3e4cf94a-d741-4530-8b35-0055d05a8d01',0,'2026-06-05 18:15:07',0),
('ff098858-f49b-412e-8b36-90e6824d1c52','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','f6e6f57c-ea10-45fb-9c49-7ad979752bdd',-98,'2026-06-05 18:15:07',0),
('ff3ae870-8ef8-41b9-a1a4-6d05f914d73e','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','1c7a86f6-ce5a-44f9-af67-99d82d54e62f',0,'2026-06-05 18:15:07',0);
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
INSERT INTO `alerts` VALUES
('30b85e01-0618-47bc-85a0-c27a53e44206','Nueva Factura - Cuota Administración','2026-06-05 18:44:03','2026-06-05 18:59:31','57bef8d2-239b-4960-9c63-f8bc273b8094','1','Se generó cobro de Cuota Administración para Apartamento 201 - Bloque a por $60,000',0,'57bef8d2-239b-4960-9c63-f8bc273b8094',1,'AOS_Invoices','info','index.php?module=AOS_Invoices&action=DetailView&record=8643f618-898b-4a63-9e03-1355c056ff3a','',NULL,NULL,'active'),
('54055cf1-8279-4312-825c-501cf727804e','Nueva Factura - Cuota Administración','2026-06-05 18:38:55','2026-06-05 18:59:31','57bef8d2-239b-4960-9c63-f8bc273b8094','1','Se generó cobro de Cuota Administración para Apartamento 201 - Bloque a por $60,000',0,'57bef8d2-239b-4960-9c63-f8bc273b8094',1,'AOS_Invoices','info','index.php?module=AOS_Invoices&action=DetailView&record=da5d7a18-0797-45ac-8e46-5db466ba9f8f','',NULL,NULL,'active'),
('633cbf18-75ec-47b8-9c56-35d1f8858275','Nueva Factura - Parqueadero','2026-06-04 19:29:34','2026-06-04 19:31:26','57bef8d2-239b-4960-9c63-f8bc273b8094','1','Se generó cobro de Parqueadero para Apartamento 201 - Bloque a por $94,000',1,'57bef8d2-239b-4960-9c63-f8bc273b8094',1,'AOS_Invoices','info','index.php?module=AOS_Invoices&action=DetailView&record=2db31d11-bcd7-4cab-b4e7-a4b544c6b252','',NULL,NULL,'active'),
('c900d9e6-f843-44f1-9f87-b1f8e37b9c92','Nueva Factura - Cuota Administración','2026-06-05 18:59:20','2026-06-05 18:59:31','57bef8d2-239b-4960-9c63-f8bc273b8094','1','Se generó cobro de Cuota Administración para Apartamento 201 - Bloque a por $60,000',0,'57bef8d2-239b-4960-9c63-f8bc273b8094',1,'AOS_Invoices','info','index.php?module=AOS_Invoices&action=DetailView&record=dfee37d3-83d0-4491-932d-275cd3be26c0','',NULL,NULL,'active'),
('dd65dace-5915-4ba5-80aa-4838f9e13f70','Nueva Factura - Parqueadero','2026-06-04 19:29:03','2026-06-05 18:59:31','57bef8d2-239b-4960-9c63-f8bc273b8094','1','Se generó cobro de Parqueadero para Apartamento 201 - Bloque a por $94,000',0,'57bef8d2-239b-4960-9c63-f8bc273b8094',1,'AOS_Invoices','info','index.php?module=AOS_Invoices&action=DetailView&record=40a0b922-7e95-4a46-8d2d-f507ce25d815','',NULL,NULL,'active'),
('f5758f1c-0729-43cf-a284-25b6a7dc8feb','Nueva Factura - Parqueadero','2026-06-04 19:27:33','2026-06-05 18:59:31','57bef8d2-239b-4960-9c63-f8bc273b8094','1','Se generó cobro de Parqueadero para Apartamento 201 - Bloque a por $94,000',0,'57bef8d2-239b-4960-9c63-f8bc273b8094',1,'AOS_Invoices','info','index.php?module=AOS_Invoices&action=DetailView&record=95e9b3a2-e76b-4aa8-ac1e-5b05bffc3b35','',NULL,NULL,'active');
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
('0e1e7145-46e7-4cc2-a95a-cf2b701e9a2e','Status changed from  to Open_New.','2026-06-05 17:14:32','2026-06-05 17:14:32','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Status changed from  to Open_New.',0,NULL,'bb493a9f-dbef-4377-b3e9-d27e7a49c032'),
('24436540-2a0d-457c-a880-65e5d1b76461','Assigned User changed from  to .','2026-06-05 16:13:21','2026-06-05 16:13:21','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Assigned User changed from  to .',0,NULL,'72a6b878-49cb-439f-956d-d78e89071ee7'),
('25925a52-2a16-46af-a0ff-25370bc55740','Assigned User changed from  to .','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1','Assigned User changed from  to .',0,NULL,'4d6a90a9-c65d-43ef-829b-2717c1e684f0'),
('45e7d25a-6777-444b-b13c-fdc72ef5881d','Assigned User changed from  to .','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Assigned User changed from  to .',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('539a1591-da2c-4ae0-b02b-b3caae924160','Status changed from  to Open_New.','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Status changed from  to Open_New.',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('73e0ed2b-d2ce-41be-80c6-f41f5d627aee','Assigned User changed from  to .','2026-06-05 17:14:44','2026-06-05 17:14:44','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Assigned User changed from  to .',0,NULL,'5c3e0090-f44d-45b9-9347-acf43dd79b57'),
('7c3892ce-0f08-42ba-a7bd-0069c66cb7c6','Priority changed from  to High.','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Priority changed from  to High.',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('a000667b-c359-4134-a270-316854aa910b','Status changed from  to Open_New.','2026-06-05 17:14:44','2026-06-05 17:14:44','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Status changed from  to Open_New.',0,NULL,'5c3e0090-f44d-45b9-9347-acf43dd79b57'),
('a2df7f50-c86f-4a98-bc32-856d0c88b406','Type changed from  to Administration.','2026-05-27 20:24:40','2026-05-27 20:24:40','1','1','Type changed from  to Administration.',0,NULL,'353e6a1e-4018-4ee8-bce9-d436b9ab361c'),
('a5e50785-69ca-4573-b9a1-3c9e52cb74e6','Status changed from  to Open_New.','2026-06-05 16:13:21','2026-06-05 16:13:21','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Status changed from  to Open_New.',0,NULL,'72a6b878-49cb-439f-956d-d78e89071ee7'),
('a94bf2cd-d703-49c3-b1b6-e3c115ea4da7','Type changed from  to Administration.','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1','Type changed from  to Administration.',0,NULL,'4d6a90a9-c65d-43ef-829b-2717c1e684f0'),
('d9352c28-e9fe-46c0-b4d8-db22bc729fde','Priority changed from  to Medium.','2026-06-05 17:14:32','2026-06-05 17:14:32','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Priority changed from  to Medium.',0,NULL,'bb493a9f-dbef-4377-b3e9-d27e7a49c032'),
('dc24f9b8-d8b7-447e-9879-654e597a42ae','Priority changed from  to P2.','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','Priority changed from  to P2.',0,NULL,'794ccd41-3700-48a6-8eab-58d9e6b353b3'),
('de37768f-8847-45f2-aeef-e4d0d8387e59','Priority changed from  to Medium.','2026-06-05 17:14:44','2026-06-05 17:14:44','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Priority changed from  to Medium.',0,NULL,'5c3e0090-f44d-45b9-9347-acf43dd79b57'),
('e0e3b88e-1b63-4fe4-85cd-e608743fcbff','Assigned User changed from  to .','2026-06-05 17:14:32','2026-06-05 17:14:32','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Assigned User changed from  to .',0,NULL,'bb493a9f-dbef-4377-b3e9-d27e7a49c032'),
('e73d0a8a-072f-4e49-88f0-ac5cfbff541b','Assigned User changed from  to .','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','Assigned User changed from  to .',0,NULL,'794ccd41-3700-48a6-8eab-58d9e6b353b3'),
('e875a1a1-76d4-4b11-b49a-ae4e1e6d2197','Type changed from  to Product.','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','Type changed from  to Product.',0,NULL,'794ccd41-3700-48a6-8eab-58d9e6b353b3'),
('eb9924c1-1cc7-4c4b-b62b-23c1e5ef1ff1','Priority changed from  to Medium.','2026-06-05 16:13:21','2026-06-05 16:13:21','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Priority changed from  to Medium.',0,NULL,'72a6b878-49cb-439f-956d-d78e89071ee7');
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
('09b1cdd6-2100-4e67-8af7-1c3d976d36a1','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:08:40','2026-06-04 19:08:40','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,94000.000000,94000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('0f9f6350-9a10-4ca8-b471-b9cdda9623a3','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:42:36','2026-06-04 17:57:21','1','1',NULL,1,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,0.000000,0.000000,0.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,0.000000,0.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:29:34','2026-06-04 19:29:34','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,94000.000000,94000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('40a0b922-7e95-4a46-8d2d-f507ce25d815','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:29:03','2026-06-04 19:29:03','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,94000.000000,94000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('59283cba-4f1c-446f-985f-d6fa1fd7e64f','prueba','2026-06-05 18:43:49','2026-06-05 18:43:49','1','1','',0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,200000.000000,200000.000000,200000.000000,200000.000000,0.000000,0.000000,0.000000,0.000000,NULL,0.000000,'0.0',0.000000,0.000000,200000.000000,200000.000000,NULL,NULL,'2026-06-05','2026-06-05',NULL,'',NULL,NULL,0.000000),
('726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:40:41','2026-06-04 17:40:41','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,0.000000,50000.000000,50000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,50000.000000,50000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('8643f618-898b-4a63-9e03-1355c056ff3a','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:44:03','2026-06-05 18:44:03','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,60000.000000,60000.000000,NULL,NULL,'2026-06-05','2026-06-05','2026-06-20','Unpaid',NULL,NULL,0.000000),
('95e9b3a2-e76b-4aa8-ac1e-5b05bffc3b35','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:27:33','2026-06-04 19:27:33','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,94000.000000,94000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('9752791a-c0ea-437b-86a4-ee0950baeddf','Prueba','2026-06-03 23:00:22','2026-06-03 23:00:22','1','1','',0,'1','','','','','','','','','','','','',1,100000.000000,100000.000000,100000.000000,100000.000000,0.000000,0.000000,0.000000,0.000000,NULL,0.000000,'0.0',0.000000,0.000000,100000.000000,100000.000000,'-99',NULL,'2026-06-03','2026-06-03','2026-06-07','',NULL,NULL,0.000000),
('c2735663-9462-44ea-b81b-11f3b46aac51','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 17:41:31','2026-06-04 17:41:31','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,60000.000000,60000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('c6d901cf-2de6-407c-881a-f65f0be035b9','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:09:21','2026-06-04 19:09:21','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,60000.000000,60000.000000,NULL,NULL,'2026-06-04','2026-06-04','2026-06-19','Unpaid',NULL,NULL,0.000000),
('da5d7a18-0797-45ac-8e46-5db466ba9f8f','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:38:55','2026-06-05 18:38:55','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,60000.000000,60000.000000,NULL,NULL,'2026-06-05','2026-06-05','2026-06-20','Unpaid',NULL,NULL,0.000000),
('dfee37d3-83d0-4491-932d-275cd3be26c0','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:59:20','2026-06-05 18:59:20','1','1',NULL,0,'1','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,NULL,0.000000,NULL,NULL,0.000000,60000.000000,60000.000000,NULL,NULL,'2026-06-05','2026-06-05','2026-06-20','Unpaid',NULL,NULL,0.000000);
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
INSERT INTO `aos_pdf_templates` VALUES
('690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 19:52:13','2026-06-04 20:01:42','1','1','<div style=\"font-family:Arial, sans-serif;color:#333;line-height:1.5;padding-top:15px;\"><p> </p><table style=\"width:100%;margin-bottom:20px;font-size:13px;\"><tbody><tr><td style=\"width:60%;vertical-align:top;\"><h4 style=\"color:#17a2b8;margin:0 0 8px 0;border-bottom:1px solid #ddd;padding-bottom:3px;width:90%;\">DATOS DEL PROPIETARIO / RESIDENTE</h4><strong>Residente:</strong> $aos_invoices_billing_contact<br /><strong>Inmueble:</strong> $aos_invoices_caml_apartamentos_aos_invoices_1_name<br /><strong>Ciudad:</strong> $aos_invoices_billing_address_city</td><td style=\"width:40%;vertical-align:top;background-color:#f8f9fa;padding:10px;border:1px solid #eee;border-radius:4px;\"><h4 style=\"color:#333;margin:0 0 8px 0;text-align:center;border-bottom:1px solid #ccc;padding-bottom:3px;\">DETALLE FACTURA</h4><strong>Factura No:</strong> $aos_invoices_number<br /><strong>Fecha Emisión:</strong> $aos_invoices_invoice_date<br /><strong>Fecha Vence:</strong> $aos_invoices_due_date<br /><strong>Estado:</strong> $aos_invoices_status</td></tr></tbody></table><p style=\"font-size:13px;\">A continuación se detalla el cobro reglamentario de la cuota de administración correspondiente al periodo actual:</p><table style=\"width:100%;border-collapse:collapse;font-size:13px;margin-top:10px;\"><thead><tr style=\"background-color:#17a2b8;color:#ffffff;\"><th style=\"padding:8px;border:1px solid #148ea1;text-align:left;width:70%;\">Concepto / Descripción</th><th style=\"padding:8px;border:1px solid #148ea1;text-align:right;width:30%;\">Total</th></tr></thead><tbody><tr><td style=\"padding:10px;border:1px solid #ddd;vertical-align:top;\"><strong>Cobro Ordinario Administración</strong><br /><span style=\"font-size:11px;color:#666;\">Expedido en conformidad con el coeficiente de copropiedad asignado al inmueble.</span></td><td style=\"padding:10px;border:1px solid #ddd;text-align:right;font-weight:bold;vertical-align:top;\">$aos_invoices_subtotal_amount</td></tr></tbody></table><table style=\"width:100%;font-size:13px;margin-top:20px;border-spacing:0;\"><tbody><tr><td style=\"width:60%;vertical-align:top;padding-right:20px;\"><div style=\"border:1px dashed #ccc;padding:10px;font-size:11px;color:#555;background-color:#fffdf5;\"><strong>Nota importante:</strong> Sírvase cancelar antes de la fecha estipulada de vencimiento para evitar recargos por mora en el siguiente periodo. Si ya realizó su pago, por favor haga caso omiso.</div></td><td style=\"width:40%;vertical-align:top;\"><table style=\"width:100%;border-collapse:collapse;\"><tbody><tr style=\"background:#f8f9fa;\"><td style=\"padding:6px;border:1px solid #ddd;font-weight:bold;\">Subtotal:</td><td style=\"padding:6px;border:1px solid #ddd;text-align:right;\">$aos_invoices_subtotal_amount</td></tr><tr style=\"background:#f1f3f5;font-size:14px;font-weight:bold;color:#17a2b8;\"><td style=\"padding:8px;border:1px solid #17a2b8;\">Neto a Pagar:</td><td style=\"padding:8px;border:1px solid #17a2b8;text-align:right;\">$aos_invoices_total_amount</td></tr></tbody></table></td></tr></tbody></table></div>',0,'1',1,'AOS_Invoices','<table style=\"width:100%;font-family:Arial, sans-serif;border-bottom:2px solid #17a2b8;padding-bottom:10px;\"><tbody><tr><td style=\"width:50%;vertical-align:middle;\"><h2 style=\"color:#17a2b8;margin:0;font-size:22px;\">CONECTAHOGAR</h2><p style=\"font-size:11px;color:#555;margin:3px 0 0 0;\">Gestión Inteligente de Propiedad Horizontal</p></td><td style=\"width:50%;text-align:right;font-size:12px;color:#333;line-height:1.4;\"><strong>$aos_invoices_billing_account</strong><br />NIT: $billing_account_ownership<br />Dirección: $billing_account_billing_address_street<br />Tel: $billing_account_phone_office</td></tr></tbody></table>','<table style=\"width:100%;font-family:Arial, sans-serif;font-size:10px;color:#777;border-top:1px solid #eee;padding-top:5px;\"><tbody><tr><td>Documento emitido por ConectaHogar. Todos los derechos reservados.</td><td style=\"text-align:right;\">Página {PAGENO} de {nb}</td></tr></tbody></table>',15,15,16,16,9,9,'Letter','Portrait'),
('edda11e6-c71b-40c3-a298-7ba6db064835','ConectaHogar - Estado de Cuenta de Parqueadero','2026-06-04 20:00:58','2026-06-04 20:00:58','1','1','<div style=\"font-family:Arial, sans-serif;color:#333;line-height:1.5;padding-top:15px;\"><table style=\"width:100%;margin-bottom:20px;font-size:13px;\"><tbody><tr><td style=\"width:60%;vertical-align:top;\"><h4 style=\"color:#17a2b8;margin:0 0 8px 0;border-bottom:1px solid #ddd;padding-bottom:3px;width:90%;\">INFORMACIÓN DEL USUARIO</h4><strong>Residente:</strong> $aos_invoices_billing_contact<br /><strong>Inmueble / Apto:</strong> $aos_invoices_caml_apartamentos_aos_invoices_1_name<br /><strong>Concepto de Cobro:</strong> Mensualidad Tarifa Plena</td><td style=\"width:40%;vertical-align:top;background-color:#f8f9fa;padding:10px;border:1px solid #eee;border-radius:4px;\"><h4 style=\"color:#333;margin:0 0 8px 0;text-align:center;border-bottom:1px solid #ccc;padding-bottom:3px;\">DATOS DE CONTROL</h4><strong>Factura Ref:</strong> $aos_invoices_number<br /><strong>Fecha Corte:</strong> $aos_invoices_invoice_date<br /><strong>Límite Pago:</strong> $aos_invoices_due_date<br /><strong>Módulo Relacionado:</strong> Control de Acceso</td></tr></tbody></table><p style=\"font-size:13px;\">A continuación se relaciona el canon de arrendamiento y uso del espacio asignado para estacionamiento automotor:</p><table style=\"width:100%;border-collapse:collapse;font-size:13px;margin-top:10px;\"><thead><tr style=\"background-color:#17a2b8;color:#FFFFFF;\"><th style=\"padding:8px;border:1px solid #148ea1;text-align:left;width:70%;\">Descripción del Servicio Especial</th><th style=\"padding:8px;border:1px solid #148ea1;text-align:right;width:30%;\">Valor Mensual</th></tr></thead><tbody><tr><td style=\"padding:10px;border:1px solid #ddd;vertical-align:top;\"><strong>Mensualidad Parqueadero Asignado</strong><br /><span style=\"font-size:11px;color:#666;\">Cobro amarrado al registro activo del módulo de Control de Accesos por Tarifa Mensual.</span></td><td style=\"padding:10px;border:1px solid #ddd;text-align:right;font-weight:bold;vertical-align:top;\">$aos_invoices_subtotal_amount</td></tr></tbody></table><table style=\"width:100%;font-size:13px;margin-top:20px;border-spacing:0;\"><tbody><tr><td style=\"width:60%;vertical-align:top;padding-right:20px;\"><div style=\"border:1px dashed #ccc;padding:10px;font-size:11px;color:#555;background-color:#fffdf5;\"><strong>Reglamento Interno:</strong> El incumplimiento en el pago del canon del parqueadero suspenderá los permisos automáticos de las talanqueras en el módulo de Control de Acceso, forzando la apertura manual en portería.</div></td><td style=\"width:40%;vertical-align:top;\"><table style=\"width:100%;border-collapse:collapse;\"><tbody><tr style=\"background:#f8f9fa;\"><td style=\"padding:6px;border:1px solid #ddd;font-weight:bold;\">Subtotal Parqueadero:</td><td style=\"padding:6px;border:1px solid #ddd;text-align:right;\">$aos_invoices_subtotal_amount</td></tr><tr style=\"background:#f1f3f5;font-size:14px;font-weight:bold;color:#17a2b8;\"><td style=\"padding:8px;border:1px solid #17a2b8;\">Total Parqueadero:</td><td style=\"padding:8px;border:1px solid #17a2b8;text-align:right;\">$aos_invoices_total_amount</td></tr></tbody></table></td></tr></tbody></table></div>',0,'1',1,'AOS_Quotes','<table style=\"width:100%;font-family:Arial, sans-serif;border-bottom:2px solid #17a2b8;padding-bottom:10px;\"><tbody><tr><td style=\"width:50%;vertical-align:middle;\"><h2 style=\"color:#17a2b8;margin:0;font-size:22px;\">CONECTAHOGAR</h2><p style=\"font-size:11px;color:#555;margin:3px 0 0 0;\">Módulo de Control de Accesos y Vehículos</p></td><td style=\"width:50%;text-align:right;font-size:12px;color:#333;line-height:1.4;\"><strong>$aos_invoices_billing_account</strong><br />NIT: $billing_account_ownership<br />Dirección: $billing_account_billing_address_street<br />Módulo: Parqueaderos Integrados</td></tr></tbody></table>','<table style=\"width:100%;font-family:Arial, sans-serif;font-size:10px;color:#777;border-top:1px solid #eee;padding-top:5px;\"><tbody><tr><td>Módulo de Parqueaderos Automatizado por ConectaHogar. Todos los derechos reservados.</td><td style=\"text-align:right;\">Página {PAGENO} de {nb}</td></tr></tbody></table>',15,15,16,16,9,9,'Letter','Portrait');
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
('08e2abae-448c-434d-8001-62e02c4662d6','Cobro de Parqueadero - Periodo: Junio 2026','2026-06-04 19:29:34','2026-06-04 19:29:34','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,'Percentage',94000.000000,94000.000000,0.000000,0.000000,94000.000000,94000.000000,'5.0','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252',NULL,NULL),
('65da91ce-572f-48bf-8111-913e2fc82fc9','Cobro de Parqueadero - Periodo: Junio 2026','2026-06-04 17:42:36','2026-06-04 17:57:21','1','1',NULL,1,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,0.000000,0.000000,NULL,0.000000,NULL,0.000000,'Percentage',0.000000,0.000000,0.000000,0.000000,0.000000,0.000000,'5.0','AOS_Invoices','0f9f6350-9a10-4ca8-b471-b9cdda9623a3',NULL,NULL),
('8e8dc7de-41c6-4646-ab57-3a4b55a5f792','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-04 17:41:31','2026-06-04 17:41:31','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,'Percentage',60000.000000,60000.000000,0.000000,0.000000,60000.000000,60000.000000,'5.0','AOS_Invoices','c2735663-9462-44ea-b81b-11f3b46aac51',NULL,NULL),
('917e2061-1f96-4ac5-9044-d0e768fae3f5','Cobro de Parqueadero - Periodo: Junio 2026','2026-06-04 19:27:33','2026-06-04 19:27:33','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,'Percentage',94000.000000,94000.000000,0.000000,0.000000,94000.000000,94000.000000,'5.0','AOS_Invoices','95e9b3a2-e76b-4aa8-ac1e-5b05bffc3b35',NULL,NULL),
('9367f620-7281-41fb-91d4-463a96398458','Cuota administracion','2026-06-03 23:00:22','2026-06-03 23:00:22','1','1',NULL,0,'1','-99','',NULL,1,NULL,NULL,0.000000,100000.000000,100000.000000,NULL,0.000000,0.000000,0.000000,'Amount',100000.000000,100000.000000,0.000000,0.000000,100000.000000,100000.000000,'0.0','AOS_Invoices','9752791a-c0ea-437b-86a4-ee0950baeddf','0','8e358f3d-ef40-4f46-b076-ace3bf99104c'),
('aca8eb0d-43f7-4ff9-929d-ae2b44677e11','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-04 17:40:41','2026-06-04 17:40:41','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,50000.000000,50000.000000,NULL,0.000000,NULL,0.000000,'Percentage',50000.000000,50000.000000,0.000000,0.000000,50000.000000,50000.000000,'5.0','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7',NULL,NULL),
('ae218fc8-7f23-45b4-9bfd-41fd3e9c3a34','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-05 18:44:03','2026-06-05 18:44:03','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,'Percentage',60000.000000,60000.000000,0.000000,0.000000,60000.000000,60000.000000,'5.0','AOS_Invoices','8643f618-898b-4a63-9e03-1355c056ff3a',NULL,NULL),
('ccefbd60-3a7b-4c4a-ba33-f7556ec78860','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-04 19:09:21','2026-06-04 19:09:21','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,'Percentage',60000.000000,60000.000000,0.000000,0.000000,60000.000000,60000.000000,'5.0','AOS_Invoices','c6d901cf-2de6-407c-881a-f65f0be035b9',NULL,NULL),
('cec8dd8b-6fb9-470a-818f-ce7fccdd32fa','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-05 18:38:55','2026-06-05 18:38:55','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,'Percentage',60000.000000,60000.000000,0.000000,0.000000,60000.000000,60000.000000,'5.0','AOS_Invoices','da5d7a18-0797-45ac-8e46-5db466ba9f8f',NULL,NULL),
('d55622d4-dd48-4ad2-be3e-b7e19befccea','Cobro de Parqueadero - Periodo: Junio 2026','2026-06-04 19:08:40','2026-06-04 19:08:40','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,'Percentage',94000.000000,94000.000000,0.000000,0.000000,94000.000000,94000.000000,'5.0','AOS_Invoices','09b1cdd6-2100-4e67-8af7-1c3d976d36a1',NULL,NULL),
('e4c8cdfd-6ad0-4d9a-8a42-89e4a134396d','Cobro de Cuota Administración - Periodo: Junio 2026','2026-06-05 18:59:20','2026-06-05 18:59:20','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,60000.000000,60000.000000,NULL,0.000000,NULL,0.000000,'Percentage',60000.000000,60000.000000,0.000000,0.000000,60000.000000,60000.000000,'5.0','AOS_Invoices','dfee37d3-83d0-4491-932d-275cd3be26c0',NULL,NULL),
('ee2b06e2-fe71-419e-ac85-7842d87e7f51','Cobro de Parqueadero - Periodo: Junio 2026','2026-06-04 19:29:03','2026-06-04 19:29:03','1','1',NULL,0,NULL,NULL,'',NULL,NULL,1.0000,NULL,0.000000,94000.000000,94000.000000,NULL,0.000000,NULL,0.000000,'Percentage',94000.000000,94000.000000,0.000000,0.000000,94000.000000,94000.000000,'5.0','AOS_Invoices','40a0b922-7e95-4a46-8d2d-f507ce25d815',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
INSERT INTO `bugs` VALUES
('aa96a3d9-50ad-48de-9e05-c6fb575bc20f','prueba','2026-06-04 21:25:04','2026-06-04 21:25:04','1','1','',0,'1',1,'','','','','','','','','');
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
INSERT INTO `cache_rebuild` VALUES
('app-metadata-user-preferences-57bef8d2-239b-4960-9c63-f8bc273b8094',1);
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
('c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-03 15:39:47','2026-06-05 16:03:33','1','1',NULL,0,'1','apartamento','201','a',60000,'arrendado');
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
('064cd096-c1d0-487f-80c3-6698044fb5f8','2026-06-05 18:37:31',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','462c6ac5-a291-4c57-9834-203b3b949b74'),
('10ad9c1d-8dbd-4eca-b9ae-6cf3853559bb','2026-06-05 18:38:33',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','ee20f4e6-823b-48d4-9de2-9540fd0f8703'),
('16dc2c01-043d-41e5-ad35-090da9dd6c85','2026-06-05 18:59:20',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','dfee37d3-83d0-4491-932d-275cd3be26c0'),
('32d6d810-f208-4b28-b014-93a468f35b54','2026-06-05 18:57:23',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','e77d5c37-8caf-4237-8555-c504f02f2147'),
('4a73f6dc-15a5-4b35-8a5c-1fae1f68605d','2026-06-05 18:38:55',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','da5d7a18-0797-45ac-8e46-5db466ba9f8f'),
('788f7377-3684-48c2-a0a4-22776682da2c','2026-06-04 19:09:21',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','c6d901cf-2de6-407c-881a-f65f0be035b9'),
('79c9d86b-65e3-4f2c-a308-c3ef46ede2a9','2026-06-04 19:27:33',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','95e9b3a2-e76b-4aa8-ac1e-5b05bffc3b35'),
('82793cc8-e1ae-4747-a7e3-8ae2cc45e736','2026-06-04 17:41:31',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','c2735663-9462-44ea-b81b-11f3b46aac51'),
('ab8f0874-90ab-4fc5-b921-40b9dfa9f0e9','2026-06-04 17:57:21',1,'c5ae1ae4-bb15-4697-b584-3a5065025535','0f9f6350-9a10-4ca8-b471-b9cdda9623a3'),
('acfb03d1-1c5b-4493-9c2e-1057ef9ccb69','2026-06-04 19:29:03',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','40a0b922-7e95-4a46-8d2d-f507ce25d815'),
('b74e0c6e-ea58-4223-9b0c-c992247445b2','2026-06-05 18:57:49',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','da31d7fa-ddb3-4a62-bdaa-3a15ba9b634e'),
('cb012ecf-abc2-4aae-8a32-69de79cedc1d','2026-06-04 19:29:34',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','2db31d11-bcd7-4cab-b4e7-a4b544c6b252'),
('cbe46c88-9170-49ef-9b89-0c4a6b8c2978','2026-06-04 19:08:40',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','09b1cdd6-2100-4e67-8af7-1c3d976d36a1'),
('cc1ace3d-04e4-4589-8524-0e701516af8f','2026-06-05 18:38:25',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','bed39d3c-79a7-46f7-a72c-538d8a809647'),
('e0bda1de-480b-4bb1-835f-9799334d945a','2026-06-04 17:40:41',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','726feaa7-5b34-436d-b35c-c6c3f5e144b7'),
('f97c4e4e-93b6-4253-8b49-508276271e3c','2026-06-05 18:44:03',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','8643f618-898b-4a63-9e03-1355c056ff3a');
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
-- Table structure for table `caml_apartamentos_caml_chat_1_c`
--

DROP TABLE IF EXISTS `caml_apartamentos_caml_chat_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_apartamentos_caml_chat_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `caml_apartamentos_caml_chat_1caml_apartamentos_ida` varchar(36) DEFAULT NULL,
  `caml_apartamentos_caml_chat_1caml_chat_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caml_apartamentos_caml_chat_1_ida1` (`caml_apartamentos_caml_chat_1caml_apartamentos_ida`),
  KEY `caml_apartamentos_caml_chat_1_alt` (`caml_apartamentos_caml_chat_1caml_chat_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_apartamentos_caml_chat_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_apartamentos_caml_chat_1_c` DISABLE KEYS */;
INSERT INTO `caml_apartamentos_caml_chat_1_c` VALUES
('cce41356-20c4-4823-b240-046fabc60e70','2026-06-04 21:10:04',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','9b7eafd7-0b99-4da9-9f98-9b0dfa91d394');
/*!40000 ALTER TABLE `caml_apartamentos_caml_chat_1_c` ENABLE KEYS */;
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
('1f22b8dd-c41f-44ad-acce-07088a385c44','2026-06-05 16:15:58',0,'c5ae1ae4-bb15-4697-b584-3a5065025535','374bef86-c49d-433b-94fc-3270dc5bc095'),
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
-- Table structure for table `caml_chat`
--

DROP TABLE IF EXISTS `caml_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_chat` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `prioridad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_chat`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_chat` DISABLE KEYS */;
INSERT INTO `caml_chat` VALUES
('63955f6a-4424-443e-8ac7-d2edca423ad8','Vigilancia Portería - Apto manuel murillo','2026-06-05 16:04:32','2026-06-05 16:04:32','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0,'61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9',NULL,'General','Abierto',NULL),
('6f5a49e8-8ccd-4422-a650-35baf63ef1be','Vigilancia Portería - Apto manuel murillo','2026-06-05 16:05:30','2026-06-05 16:05:30','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0,'61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9',NULL,'General','Abierto',NULL),
('71b62c4e-0904-42af-b13c-ebf6b8fb7ff8','Vigilancia Portería - Apto manuel murillo','2026-06-05 17:21:23','2026-06-05 17:21:23','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0,'61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9',NULL,'General','Abierto',NULL),
('9b7eafd7-0b99-4da9-9f98-9b0dfa91d394','bdaskd','2026-06-04 21:10:04','2026-06-04 21:10:04','1','1','',0,'1',NULL,NULL,NULL,NULL),
('b173212c-ce51-4237-8a7b-26e0dc80cf77','fasf','2026-06-05 16:05:35','2026-06-05 16:05:35','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0,'61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9',NULL,'Seguridad','Abierto',NULL),
('fa08ebdd-8fe5-4562-b69d-690c9b9fe057','solicitud','2026-06-05 16:04:42','2026-06-05 16:04:42','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0,'61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9',NULL,'Correspondencia','Abierto',NULL);
/*!40000 ALTER TABLE `caml_chat` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_chat_audit`
--

DROP TABLE IF EXISTS `caml_chat_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_chat_audit` (
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
  KEY `idx_caml_chat_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_chat_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_chat_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_chat_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_chat_caml_mensajes_1_c`
--

DROP TABLE IF EXISTS `caml_chat_caml_mensajes_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_chat_caml_mensajes_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `caml_chat_caml_mensajes_1caml_chat_ida` varchar(36) DEFAULT NULL,
  `caml_chat_caml_mensajes_1caml_mensajes_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caml_chat_caml_mensajes_1_ida1` (`caml_chat_caml_mensajes_1caml_chat_ida`),
  KEY `caml_chat_caml_mensajes_1_alt` (`caml_chat_caml_mensajes_1caml_mensajes_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_chat_caml_mensajes_1_c`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_chat_caml_mensajes_1_c` DISABLE KEYS */;
INSERT INTO `caml_chat_caml_mensajes_1_c` VALUES
('03e3cf50-c8a5-4cd3-bf41-be2d32f6e709','2026-06-04 21:10:31',0,'9b7eafd7-0b99-4da9-9f98-9b0dfa91d394','ce784db3-2f21-47da-9c07-d3d17f92b3ee'),
('0f55242b-d885-43cb-bec8-1a9f623c2e93','2026-06-04 21:10:21',0,'9b7eafd7-0b99-4da9-9f98-9b0dfa91d394','24c8e2c5-e227-42a3-950a-42d3985345c4'),
('e22f79b8-e185-4ee0-9101-bee9394c2730','2026-06-04 21:11:29',0,'9b7eafd7-0b99-4da9-9f98-9b0dfa91d394','01be83e1-fea8-4662-b486-b6e4b47ce74b');
/*!40000 ALTER TABLE `caml_chat_caml_mensajes_1_c` ENABLE KEYS */;
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
('374bef86-c49d-433b-94fc-3270dc5bc095','dfasf','2026-06-05 16:15:58','2026-06-05 16:15:58','1','1','asffas',0,'1','2026-06-06 05:00:00','2026-06-06 05:00:00',NULL,'','pagado'),
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
('374bef86-c49d-433b-94fc-3270dc5bc095','933d55d0-8211-48e7-9096-6f8de4d3d1ec','0e1b8786-d0cd-4bca-884e-eaa961844fb5'),
('b9461b9a-7b3d-4a66-a6df-43688ccbc766','7b5eff14-e01e-4916-a7b6-d90cc8146098','0e1b8786-d0cd-4bca-884e-eaa961844fb5');
/*!40000 ALTER TABLE `caml_control_accesos_cstm` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_mensajes`
--

DROP TABLE IF EXISTS `caml_mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_mensajes` (
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
  `leido` tinyint(1) DEFAULT '0',
  `fecha_leido` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_mensajes`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_mensajes` DISABLE KEYS */;
INSERT INTO `caml_mensajes` VALUES
('01be83e1-fea8-4662-b486-b6e4b47ce74b','2026-06-04 21:11:29','2026-06-04 21:11:29','1','1','Si claro',0,'1','dadf','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','pdf','application/pdf','2026-06-04',NULL,NULL,NULL,NULL,0,NULL),
('24c8e2c5-e227-42a3-950a-42d3985345c4','2026-06-04 21:10:21','2026-06-04 21:10:21','1','1','Hola buen dia',0,'1','2','',NULL,NULL,'2026-06-04',NULL,'','',NULL,0,NULL),
('ce784db3-2f21-47da-9c07-d3d17f92b3ee','2026-06-04 21:10:31','2026-06-04 21:10:31','1','1','no nos encontramos',0,'1','hdfjka','',NULL,NULL,'2026-06-04',NULL,'','',NULL,0,NULL);
/*!40000 ALTER TABLE `caml_mensajes` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `caml_mensajes_audit`
--

DROP TABLE IF EXISTS `caml_mensajes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `caml_mensajes_audit` (
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
  KEY `idx_caml_mensajes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caml_mensajes_audit`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `caml_mensajes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `caml_mensajes_audit` ENABLE KEYS */;
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
('7b5eff14-e01e-4916-a7b6-d90cc8146098','ydy84f','2026-06-04 18:04:26','2026-06-04 18:04:26','1','1','',0,'1','moto','honda naranja','c5ae1ae4-bb15-4697-b584-3a5065025535'),
('933d55d0-8211-48e7-9096-6f8de4d3d1ec','YDY84F','2026-06-05 16:09:27','2026-06-05 16:09:27','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Registrado desde la App Móvil Conecta Hogar.',0,NULL,'Automóvil','honda - dasd - dasd','c5ae1ae4-bb15-4697-b584-3a5065025535');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES
('353e6a1e-4018-4ee8-bce9-d436b9ab361c','[Reclamo] solicitud datos de parqueadero','2026-05-27 20:15:39','2026-05-27 20:24:40','1','400fdbe3-e938-4b6a-8deb-a459c22ccba5','Nuevos elementos',0,'',3,'Administration','Open_New','High','',NULL,'','Open',''),
('4d6a90a9-c65d-43ef-829b-2717c1e684f0','nuevo','2026-05-26 15:44:13','2026-05-26 15:44:13','1','1','Solicitud poara',0,'1',1,'Administration',NULL,'P2','',NULL,NULL,'Open',NULL),
('5c3e0090-f44d-45b9-9347-acf43dd79b57','[Queja] prueba','2026-06-05 17:14:44','2026-06-05 17:14:44','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','nuevo',0,'',6,NULL,'Open_New','Medium',NULL,NULL,'36266f9a-1c2e-48d9-8722-788b8f9c3bc2','Open','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9'),
('72a6b878-49cb-439f-956d-d78e89071ee7','Solicitud Sorteo Parqueadero: Apto c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-05 16:13:21','2026-06-05 16:13:21','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Solicitud de asignación de parqueadero comunal.\nVehículo ID/Placa: 933d55d0-8211-48e7-9096-6f8de4d3d1ec\nNotas del Residente: fsaf',0,'',4,NULL,'Open_New','Medium',NULL,NULL,'36266f9a-1c2e-48d9-8722-788b8f9c3bc2','Open','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9'),
('794ccd41-3700-48a6-8eab-58d9e6b353b3','fasf','2026-05-26 15:52:01','2026-05-26 15:52:01','1','1','',0,'1',2,'Product',NULL,'P2','',NULL,NULL,'Open',NULL),
('bb493a9f-dbef-4377-b3e9-d27e7a49c032','[Petición] asff','2026-06-05 17:14:32','2026-06-05 17:14:32','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','fsaf',0,'',5,NULL,'Open_New','Medium',NULL,NULL,'36266f9a-1c2e-48d9-8722-788b8f9c3bc2','Open','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9');
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
INSERT INTO `cases_audit` VALUES
('0ab4870d-4359-47a9-9f4e-c511a87cf99c','72a6b878-49cb-439f-956d-d78e89071ee7','2026-06-05 16:13:21','57bef8d2-239b-4960-9c63-f8bc273b8094','account_id','relate','','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL),
('2bd74cdb-0a27-45ef-a188-dfd232a49208','bb493a9f-dbef-4377-b3e9-d27e7a49c032','2026-06-05 17:14:32','57bef8d2-239b-4960-9c63-f8bc273b8094','account_id','relate','','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL),
('ce7017ef-adb9-4823-aa18-769b21773467','5c3e0090-f44d-45b9-9347-acf43dd79b57','2026-06-05 17:14:44','57bef8d2-239b-4960-9c63-f8bc273b8094','account_id','relate','','36266f9a-1c2e-48d9-8722-788b8f9c3bc2',NULL,NULL);
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
('5c3e0090-f44d-45b9-9347-acf43dd79b57',0.00000000,0.00000000,'','','','c5ae1ae4-bb15-4697-b584-3a5065025535'),
('72a6b878-49cb-439f-956d-d78e89071ee7',0.00000000,0.00000000,'','','',''),
('794ccd41-3700-48a6-8eab-58d9e6b353b3',0.00000000,0.00000000,NULL,NULL,'denuncia','09955ec1-6c39-4db8-8778-700f811c6f47'),
('bb493a9f-dbef-4377-b3e9-d27e7a49c032',0.00000000,0.00000000,'','','','c5ae1ae4-bb15-4697-b584-3a5065025535');
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
('MySettings','tab','YTozMTp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjEyOiJqandnX01hcmtlcnMiO2k6MztzOjk6IkNhbXBhaWducyI7aTo0O3M6MTA6Impqd2dfQXJlYXMiO2k6NTtzOjQ6IkJ1Z3MiO2k6NjtzOjg6IkNvbnRhY3RzIjtpOjc7czoxMDoiQU9TX1F1b3RlcyI7aTo4O3M6ODoiQ2FsZW5kYXIiO2k6OTtzOjk6IkRvY3VtZW50cyI7aToxMDtzOjY6IkVtYWlscyI7aToxMTtzOjU6IkNhbGxzIjtpOjEyO3M6ODoiTWVldGluZ3MiO2k6MTM7czo1OiJOb3RlcyI7aToxNDtzOjEyOiJBT1NfSW52b2ljZXMiO2k6MTU7czo1OiJDYXNlcyI7aToxNjtzOjk6IkZQX2V2ZW50cyI7aToxNztzOjE4OiJGUF9FdmVudF9Mb2NhdGlvbnMiO2k6MTg7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO2k6MTk7czoxMToiQU9SX1JlcG9ydHMiO2k6MjA7czoxNDoiRW1haWxUZW1wbGF0ZXMiO2k6MjE7czo3OiJTdXJ2ZXlzIjtpOjIyO3M6MTc6ImNhbWxfYXBhcnRhbWVudG9zIjtpOjIzO3M6MjA6ImNhbWxfY29udHJvbF9hY2Nlc29zIjtpOjI0O3M6MTE6ImNhbWxfdGFyaWZhIjtpOjI1O3M6MTc6ImNhbWxfcGFycXVlYWRlcm9zIjtpOjI2O3M6MTQ6ImNhbWxfdmVoaWN1bG9zIjtpOjI3O3M6MTM6ImNhbWxfYW51bmNpb3MiO2k6Mjg7czoxMDoiY2FtbF9wYWdvcyI7aToyOTtzOjk6ImNhbWxfY2hhdCI7aTozMDtzOjEzOiJjYW1sX21lbnNhamVzIjt9'),
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
INSERT INTO `contacts_cases` VALUES
('004dd748-e92a-46b4-b0d0-8b9b837aa9d4','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','5c3e0090-f44d-45b9-9347-acf43dd79b57','Primary Contact','2026-06-05 17:14:44',0),
('b02f3bda-6ceb-44e4-8b1a-058d8322bfe6','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','72a6b878-49cb-439f-956d-d78e89071ee7','Primary Contact','2026-06-05 16:13:21',0),
('d5fab60b-0aca-4c0d-aeab-04ff9735d702','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','bb493a9f-dbef-4377-b3e9-d27e7a49c032','Primary Contact','2026-06-05 17:14:32',0);
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
INSERT INTO `document_revisions` VALUES
('a1fe134d-0630-4171-8ea9-e3c786007831',NULL,'74d483a9-ac9e-487c-a5b7-3029a126cd04',NULL,'Sugar',NULL,'2026-06-04 21:17:35','1','pdf','application/pdf','1',0,'2026-06-04 21:17:35');
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
INSERT INTO `documents` VALUES
('74d483a9-ac9e-487c-a5b7-3029a126cd04','2026-06-04 21:17:35','2026-06-04 21:17:35','1','1',NULL,0,'1','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','','Sugar','','2026-06-04',NULL,'','','Active','a1fe134d-0630-4171-8ea9-e3c786007831',NULL,NULL,0,'');
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
('2a73fa1f-f719-4bbc-a7e4-394474df383b','2026-06-04 20:04:41','2026-06-04 20:04:41','1','1','off','ConectaHogar - Notificación de Cobro de Parqueadero','','Aviso de Facturación: Mensualidad de Parqueadero - Período Actual','','<div style=\"font-family:Arial, sans-serif;color:#333;max-width:600px;margin:0 auto;border:1px solid #ddd;border-radius:6px;\">\n<div style=\"background-color:#17a2b8;color:#FFFFFF;padding:20px;text-align:center;\">\n<h2 style=\"margin:0;font-size:24px;letter-spacing:0.5px;\">CONECTAHOGAR</h2>\n<p style=\"margin:5px 0 0 0;font-size:12px;\">Módulo de Control de Accesos y Vehículos</p>\n</div>\n<div style=\"padding:24px;background-color:#ffffff;line-height:1.6;\">\n<p style=\"font-size:15px;margin-top:0;\">Estimado(a) Residente / Usuario de Parqueadero,</p>\n<p style=\"font-size:14px;color:#555;\">Le notificamos que se ha generado la facturación por concepto de uso y asignación mensual de **Espacio de Parqueadero / Estacionamiento**.</p>\n<div style=\"background-color:#f8f9fa;border-left:4px solid #17a2b8;padding:15px;margin:20px 0;border-radius:0 4px 4px 0;\">\n<table style=\"width:100%;font-size:13px;border-spacing:0 6px;\">\n<tbody>\n<tr>\n<td style=\"width:40%;color:#666;\"><strong>Conjunto:</strong></td>\n<td>$aos_invoices_billing_account</td>\n</tr>\n<tr>\n<td style=\"color:#666;\"><strong>Factura Ref:</strong></td>\n<td># $aos_invoices_number</td>\n</tr>\n<tr>\n<td style=\"color:#666;\"><strong>Canon Mensual:</strong></td>\n<td style=\"color:#17a2b8;font-weight:bold;font-size:15px;\">$aos_invoices_total_amount COP</td>\n</tr>\n<tr>\n<td style=\"color:#666;\"><strong>Fecha Límite:</strong></td>\n<td style=\"color:#dc3545;font-weight:bold;\">$aos_invoices_due_date</td>\n</tr>\n</tbody>\n</table>\n</div>\n<p style=\"font-size:13px;color:#666;background-color:#fffdf5;border:1px dashed #ccc;padding:10px;border-radius:4px;\"><strong>Reglamento de Seguridad:</strong> El no pago oportuno de este concepto inhabilitará de forma automática los dispositivos electrónicos de control de acceso (talanqueras/sensores) vinculados a sus vehículos registrados.</p>\n<p style=\"font-size:14px;margin-bottom:0;\">Atentamente,<br /><strong style=\"color:#17a2b8;\">Administración y Control de Accesos</strong></p>\n</div>\n<div style=\"background-color:#f1f3f5;text-align:center;padding:12px;font-size:11px;color:#777;border-top:1px solid #e9ecef;\">Este es un mensaje automatizado del sistema ConectaHogar. Por favor no responda directamente.</div>\n</div>',0,'1',0,'email'),
('3119e6da-81f6-41e4-842d-9e3bec68b977','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','User Case Update','Email template to send to a SuiteCRM user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),
('657c756c-0850-43b5-b3c5-4617b6d40d52','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>',0,NULL,NULL,'system'),
('739a4968-66bb-4dc9-8177-8722a9f5ef6a','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>',0,NULL,NULL,'system'),
('7862e1ad-5c68-4fde-bded-0a170aa926e6','2013-05-24 14:31:45','2026-05-20 16:29:32','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'system'),
('8fa6eea7-df98-4b7c-be4d-9249b51d9b3b','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),
('a780a056-8c04-4fa2-bc50-f859a7f28a13','2026-05-20 16:29:32','2026-05-20 16:29:32','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),
('b4fb7fa5-633d-4f8d-9490-826a29dae148','2026-06-04 20:03:33','2026-06-04 20:03:33','1','1','off','ConectaHogar - Notificación de Cuota de Administración','','Aviso de Facturación: Cuota de Administración Ordinaria - Período Actual','','<div style=\"font-family:Arial, sans-serif;color:#333;max-width:600px;margin:0 auto;border:1px solid #ddd;border-radius:6px;\">\n<div style=\"background-color:#17a2b8;color:#FFFFFF;padding:20px;text-align:center;\">\n<h2 style=\"margin:0;font-size:24px;letter-spacing:0.5px;\">CONECTAHOGAR</h2>\n<p style=\"margin:5px 0 0 0;font-size:12px;\">Notificación Oficial de Facturación</p>\n</div>\n<div style=\"padding:24px;background-color:#ffffff;line-height:1.6;\">\n<p style=\"font-size:15px;margin-top:0;\">Estimado(a) Copropietario / Residente,</p>\n<p style=\"font-size:14px;color:#555;\">Le informamos que se encuentra disponible para pago la factura correspondiente al concepto de <strong>Cuota de Administración</strong> del período actual.</p>\n<div style=\"background-color:#f8f9fa;border-left:4px solid #17a2b8;padding:15px;margin:20px 0;border-radius:0 4px 4px 0;\">\n<table style=\"width:100%;font-size:13px;border-spacing:0 6px;\">\n<tbody>\n<tr>\n<td style=\"width:40%;color:#666;\"><strong>Conjunto:</strong></td>\n<td>$aos_invoices_billing_account</td>\n</tr>\n<tr>\n<td style=\"color:#666;\"><strong>Factura Ref:</strong></td>\n<td># $aos_invoices_number</td>\n</tr>\n<tr>\n<td style=\"color:#666;\"><strong>Total a pagar:</strong></td>\n<td style=\"color:#17a2b8;font-weight:bold;font-size:15px;\">$aos_invoices_total_amount COP</td>\n</tr>\n<tr>\n<td style=\"color:#666;\"><strong>Fecha Límite:</strong></td>\n<td style=\"color:#dc3545;font-weight:bold;\">$aos_invoices_due_date</td>\n</tr>\n</tbody>\n</table>\n</div>\n<p style=\"font-size:13px;color:#666;background-color:#fffdf5;border:1px dashed #ccc;padding:10px;border-radius:4px;\"><strong>Nota:</strong> Recuerde que puede visualizar el desglose completo del documento, descargar su PDF o reportar comprobantes ingresando directamente al portal residencial de ConectaHogar. Evite recargos cancelando antes de la fecha límite.</p>\n<p style=\"font-size:14px;margin-bottom:0;\">Atentamente,<br /><strong style=\"color:#17a2b8;\">Administración de Copropiedad</strong></p>\n</div>\n<div style=\"background-color:#f1f3f5;text-align:center;padding:12px;font-size:11px;color:#777;border-top:1px solid #e9ecef;\">Este es un mensaje automatizado del sistema ConectaHogar. Por favor no responda directamente.</div>\n</div>',0,'1',0,'email'),
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
('FP_Event_Locationsaccount_id_c','account_id_c','LBL_CONJUNTO_ACCOUNT_ID','','','FP_Event_Locations','id',36,0,NULL,'2026-06-04 20:10:22',0,0,0,0,0,'true','','','','','[]'),
('FP_Event_Locationsconjunto_c','conjunto_c','LBL_CONJUNTO','','','FP_Event_Locations','relate',255,1,NULL,'2026-06-04 20:10:22',0,1,0,0,1,'true','','Accounts','account_id_c','','[]'),
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
('5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:35','2026-06-04 20:07:51','1','1','',1,NULL,'bogota','bnogota','','11520.','colombia',''),
('f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:09:35','2026-06-04 20:11:15','1','1',NULL,0,'','','',NULL,'',NULL,'100');
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
INSERT INTO `fp_event_locations_audit` VALUES
('5c3f41d7-e159-426d-8baa-35e7aa9832cb','f55950d7-7bcf-41b6-8405-0090714624a3','2026-06-04 20:11:15','1','conjunto_c','relate','','conjunto malpole2',NULL,NULL);
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `fp_event_locations_cstm`
--

DROP TABLE IF EXISTS `fp_event_locations_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_cstm` (
  `id_c` char(36) NOT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_cstm`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
/*!40000 ALTER TABLE `fp_event_locations_cstm` DISABLE KEYS */;
INSERT INTO `fp_event_locations_cstm` VALUES
('f55950d7-7bcf-41b6-8405-0090714624a3','36266f9a-1c2e-48d9-8722-788b8f9c3bc2');
/*!40000 ALTER TABLE `fp_event_locations_cstm` ENABLE KEYS */;
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
INSERT INTO `fp_event_locations_fp_events_1_c` VALUES
('461cdd8b-eede-47f8-996b-a2900198145c','2026-06-04 20:12:30',0,'f55950d7-7bcf-41b6-8405-0090714624a3','9dc6a25e-1261-47ae-8853-3e2cc015dc98');
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
INSERT INTO `fp_events` VALUES
('9dc6a25e-1261-47ae-8853-3e2cc015dc98','Prueba','2026-06-04 20:12:30','2026-06-04 20:12:30','1','1','',0,'1',1,0,'2026-06-04 17:45:00','2026-06-04 18:45:00',NULL,NULL,'','http://','http://','');
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
('9234a9ee-7c99-41bf-9f12-c12cde2db5fc','Reserva Coworking / Salas de juntas Apto c5ae1ae4-','2026-06-05 17:20:18','2026-06-05 17:20:18','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','Reserva realizada desde la App Móvil Conecta Hogar por manuel murillo. Apto ID: c5ae1ae4-bb15-4697-b584-3a5065025535',0,'61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Coworking / Salas de juntas',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2026-06-06 12:00:00','2026-06-06 12:00:00',NULL,'Planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
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
INSERT INTO `meetings_contacts` VALUES
('55448f5f-7cd6-4d7e-9c8a-2bfb22424fe8','9234a9ee-7c99-41bf-9f12-c12cde2db5fc','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','1','none','2026-06-05 17:20:18',0);
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
('9234a9ee-7c99-41bf-9f12-c12cde2db5fc',0.00000000,0.00000000,NULL,NULL),
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
INSERT INTO `notes` VALUES
('1','1f6006db-b944-44af-9c93-406a71aba0c4','2026-06-04 19:52:37','2026-06-04 19:52:37','1','1','Invoices_Factura_-_Cuota_Administración_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','application/pdf','Invoices_Factura_-_Cuota_Administración_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7',NULL,0,0,NULL,0),
('1','a3d300e6-c195-4d6e-9a5e-17adae5f610c','2026-06-04 20:01:07','2026-06-04 20:01:07','1','1','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','application/pdf','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252',NULL,0,0,NULL,0);
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
('05001bd5-cb2f-400b-951a-3b1de0c1a31b','','2026-06-04 21:51:55','2026-06-04 21:51:55',NULL,NULL,NULL,0,0,'','2026-06-04 17:51:55','904bc7596a1e5cc79ba592f4106127831dc647988981c7863212bcfa192cac99bf22f92ff062487e','35f3e976852fc0524f52fe09f9d7d82f64dbd9e76176e19e35bd8e36dda8a0e2edba14303fb892a5','2026-07-04 16:51:55','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('0dffab68-ed4a-40c5-8e33-7df5439c9bab','','2026-05-26 21:46:12','2026-05-26 21:46:12',NULL,NULL,NULL,0,0,'','2026-05-26 17:46:12','7c1e33c7f8fbaf291e104b7b5420266e32bf744e4a53c674bdd07325cb6f069f1d4d12e99c47e8ef','e1d1a56f80cea1d23e8622b2c99c729347a0de7732e4143abffb66c33cfafb36c5aa03080a1d37f7','2026-06-26 16:46:12','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('12bbb059-dd55-42b1-99d6-89ee5f6d9847','','2026-05-26 21:15:30','2026-05-26 21:15:30',NULL,NULL,NULL,0,0,'','2026-05-26 17:15:30','1ac8ea108abf54097725404bc9f6c01f3077c8236222b92350094382d4adcefca63cbbf4e65c3741','212498e3b7b5f901496a583f7cce9c615ac1574a7d24b04d428006b88a736ba774e25b972d24bf70','2026-06-26 16:15:30','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('190d36e0-284d-407e-b6bc-7e7dc605d80b','','2026-05-27 20:14:02','2026-05-27 20:14:02',NULL,NULL,NULL,0,0,'','2026-05-27 16:14:02','bcc42f5c3763481564ce2f2e65e9315b1eeb47039f87309a6af436de3af34a90ac6ff6f5c92887fd','17b4c932113fa113d38aa5692fe8e5c4826953d6230e0c44b1c2bfdabe01624864799b3f188090d0','2026-06-27 15:14:02','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('1da356d3-69cd-42d9-ba7c-a7571716d15d','','2026-06-05 18:03:29','2026-06-05 18:03:29',NULL,NULL,NULL,0,0,'','2026-06-05 14:03:29','90f2297a3e1bfdc1a63553a3d87c6e51d3b7dab8478de33f5c430d99f6d851fef803207a8bd10b40','4efdd67dbdd8a3d7848520594aafa6947dd410b879f35ef4a97316497ab1a7e8576cd8bbb55d2c66','2026-07-05 13:03:29','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('21de27e5-b69e-4e49-83db-a25891d6c4b9','','2026-06-05 16:04:01','2026-06-05 16:04:01',NULL,NULL,NULL,0,0,'','2026-06-05 12:04:01','426a9dfa5ec8570ddb7d8782f47b83af891027d3a2acda217f14cf07407c58557c5ea337ce9f50b7','bb512e7ae0040faab42311817e142dcf36554b7a92bb3ff55e598e3f886c3eef4a6e031439467890','2026-07-05 11:04:01','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('22391219-6fc2-499d-bb10-eae3a53b347b','','2026-06-05 16:07:01','2026-06-05 16:07:01',NULL,NULL,NULL,0,0,'','2026-06-05 12:07:01','9b390ca25a85314aec8769268af43c476d35bcabfd05c422347faafca83a3d7fdd01a36d84d5173d','91b3bb8ec28b6a7c346f15271388b769441c495a93f602ed7b74d600cbb7210bb1fde1715b52bbb1','2026-07-05 11:07:01','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('2a51c384-78f4-42ca-ac42-5118b7fca35c','','2026-06-05 15:56:46','2026-06-05 15:56:46',NULL,NULL,NULL,0,0,'','2026-06-05 11:56:46','c027c25d03f6d39eb74e509c930debf0b38849dc6e13e7ac99518d360b7f11579314d817cfe9204b','939500da317ef9e0396082ddf6a6a558d3f6cc5b114d66b36daba309e9f3d24c4f6b0854ce403dff','2026-07-05 10:56:46','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('33cf19ba-8a58-45fb-9baf-162608c2c740','','2026-06-05 18:03:18','2026-06-05 18:03:18',NULL,NULL,NULL,0,0,'','2026-06-05 14:03:18','8c2c7ca74bf5030bed2f97204b2058607c77bfa7c2bf4a3b1cbf8ad442c29252f06835ca8ff5a9f7','cf1ceb7610fe33f6251a368932bbfe3a1d36e0f48ddce321e399430eddbe261a35e8272f149ef388','2026-07-05 13:03:18','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('3f299d5e-0b99-4d8f-8e3c-3bbba1efd4be','','2026-05-27 21:01:59','2026-05-27 21:01:59',NULL,NULL,NULL,0,0,'','2026-05-27 17:01:59','e6317d87a1e3ec5156178d803aaf7a534e798c121742762e5f454e92cd9112cded0d8d3fbc40d910','105e42ba18c77c084458f8fe1bbd92d33a5975a7d0a65facd47e9ea645cb73f8757e15b72f3568d7','2026-06-27 16:01:59','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('45d13abf-536d-4c66-8c9f-3dfc6fe6fb3e','','2026-05-28 15:45:57','2026-05-28 15:45:57',NULL,NULL,NULL,0,0,'','2026-05-28 11:45:57','a9feeab234ed6f82d9e8ffeb851dbb952741e07b3650e61410baabcd3d62a3f5700f3d015450bf5e','000b12ce99aae0e30c724369cf4d1e429b5426d4dfb467f4292ac37c1d873bbf833c7cf6e1f8318b','2026-06-28 10:45:57','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('4a49feb0-3e6d-4d7f-8237-f0998e45439c','','2026-05-27 17:05:05','2026-05-27 17:05:05',NULL,NULL,NULL,0,0,'','2026-05-27 13:05:06','c117d4ec1d082fb17e28b8c069c8afc21c103bbf378e134bdb2c1c4ede5c5ad4dfc21297595d1b04','246eaeaf7f85848288fc05f938cd174af77059d1429c61edade8715225fb5e9bd753955eb39974fb','2026-06-27 12:05:06','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('4ead3e97-80d3-485a-ad49-05cbafecadbc','','2026-05-26 22:54:25','2026-05-26 22:54:25',NULL,NULL,NULL,0,0,'','2026-05-26 18:54:25','927a1883fad397be0cb4d0b50eec27ad7c0e20714348505ecf65cf98c76ef7f39edadc17fbb0dc90','7e85e47a8420fddc34fff45deb82f53e35784194469b616dd055f27c48452fb54175fe3e45710797','2026-06-26 17:54:25','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('5035eff3-75d4-43c0-91c5-b0b48610fba0','','2026-06-05 17:14:22','2026-06-05 17:14:22',NULL,NULL,NULL,0,0,'','2026-06-05 13:14:22','532fc672775c7012a8f8c9ad2f64fdb8e841bfb7af5ba7c12833583c0b4744714d755b613960e02c','4e28fa911cd7cf17951135b4756ed799f2ac1f52b0ad01019e3c8c7fa7ecb7d66e5227381c8b8b20','2026-07-05 12:14:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('50d757b4-a179-4cba-bff3-0544db9d6d98','','2026-05-26 21:36:52','2026-05-26 21:36:52',NULL,NULL,NULL,0,0,'','2026-05-26 17:36:52','f8e39ce2d7717505bc10097ae3a3c2765a62f10c2cce2abb0a7f11a0d91b61ae5838b0a2b26a1aff','1f4cc7736a46650da4fda5581378be6d100e021a090bbfe75eaee55032f544b1261c65394e32af13','2026-06-26 16:36:52','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('5261b5ef-2842-4ca5-9bdd-c6c5ca2c4681','','2026-06-05 17:55:53','2026-06-05 17:55:53',NULL,NULL,NULL,0,0,'','2026-06-05 13:55:53','123b6cce38de11ca4af18325ba4e5c79dabeca35abeac61e4bfeafc6a31606333f0295e2d4814824','5aefe2c9db7be8ec66de8a3595cd0eedd2b91be71494846a0f60dcf0b8a9db4e2b1d0c5e139505f5','2026-07-05 12:55:53','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('53361217-57c0-481d-ac4c-e975e957775e','','2026-05-26 21:41:18','2026-05-26 21:41:18',NULL,NULL,NULL,0,0,'','2026-05-26 17:41:18','4c8e1571f0d6bf64013cd5986f07ab82147e1b5b5a40ff3163c604e4a2331d8aed5c8f0b32a9f827','1cc236d791546a51b441209f512f533a9ba22133b1e1b5b1571a0943a3ad40a6d8aaec164cd8a899','2026-06-26 16:41:18','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('53bd0f2d-0918-4713-b0d6-e9648621e257','','2026-05-26 22:55:36','2026-05-26 22:55:36',NULL,NULL,NULL,0,0,'','2026-05-26 18:55:36','dc8c220cd93aa9d0c79646bf3c85883107889b389739d16ca03c2487953670dba9df93a4bbbcd972','e17ef502bb5fe91e1a117cfeb2edb4c8ea86868f2c25e809e32d58566108d35af7f9ce8592e16124','2026-06-26 17:55:36','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('55c6214b-4a7a-4726-9c18-f43193de7ec7','','2026-05-27 22:48:55','2026-05-27 22:48:55',NULL,NULL,NULL,0,0,'','2026-05-27 18:48:55','5e58e0a6ebf1081e65f6202cdfa31d8a426433eeb3b02ad182202ae1c7573c2607696dfe015a9bbb','6392cfa3df8a1b26f4c299971b512fd4b030a142c715ebb31f22d27a16e42677e599986bd7968647','2026-06-27 17:48:55','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('5667cbec-3475-450c-a361-9b80903dec37','','2026-05-27 22:17:13','2026-05-27 22:17:13',NULL,NULL,NULL,0,0,'','2026-05-27 18:17:13','fa39188c2521482428073be3036999b861a4c28abadd802be2b2462ef34e6a93df339acfe8e37a25','4b9a2a938d7eecd562f09b1917cd3b53366b0c45de713d0b35092767d069f7883fdf8e90ba1dbca0','2026-06-27 17:17:13','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('58515aad-cd8b-4ebd-a73c-79c26463c312','','2026-05-28 17:03:07','2026-05-28 17:03:07',NULL,NULL,NULL,0,0,'','2026-05-28 13:03:07','b4ad02b5eb5afab8a7ff4fdc8e20d7a84602cd62b818768d0247d0595911cd1138000bc6e24ae72e','bbf51e630d67f4a02b6dc521773d4571ee8ab338dc0fb81bc3c4c9df20cc6ab0404e69f1f4437f00','2026-06-28 12:03:07','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('6037a6ee-9d74-4267-9230-4f24cca49405','','2026-05-27 17:05:22','2026-05-27 17:05:22',NULL,NULL,NULL,0,0,'','2026-05-27 13:05:22','10ef7f5be1c27c1b1724443b4a19f5ae6f84bcdea588c86a3d4255edf1d13fc34eb256803f0d7ee2','e1b96283f64529a3d4e39c3d927fbb0ada2f7ed1483114acac62d6bb05ce76683f6d60ed471e2fb2','2026-06-27 12:05:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('6415ba21-1b6a-4d25-8c66-d51212183b33','','2026-06-04 21:52:17','2026-06-04 21:52:17',NULL,NULL,NULL,0,0,'','2026-06-04 17:52:17','ceb978914f10c09268714f9f8a48f65afba92cc280d4a645f25256f1004309853db750a55a569b00','622ddf3271618f5230b5d2dcec191b1b79f73557e7da6ba9f0228584749c819f00e6231a0c14ddba','2026-07-04 16:52:17','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('6b8ac173-c8be-4b80-9dc6-56cfaf18e085','','2026-05-27 21:37:04','2026-05-27 21:37:04',NULL,NULL,NULL,0,0,'','2026-05-27 17:37:05','c70fe7c8031ffb06eeb5a7418b7bad151491c453cdf411a8ed9525548dfec60fafc79798d4e43b78','52577888fa023ec62aa679b7ef557a3c57d0cee24cce1eb7b4cecb4842987c16277a3a5ba3469635','2026-06-27 16:37:05','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('6e68dce4-d692-4682-87f3-8bc5d42d6586','','2026-05-27 16:43:42','2026-05-27 16:43:42',NULL,NULL,NULL,0,0,'','2026-05-27 12:43:42','a0fce2a902dfa3da58526a0b07032325bba0bc7ec6886297d6602ce0eabe8e84f423f8e9d3f92b25','114913a43b01689c09aec53015c47ba7c8f236e6264ccd8a7d01b559011274f128535df20aa324bd','2026-06-27 11:43:43','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('7bdda579-c907-48eb-af82-6b7c85f97856','','2026-06-05 18:09:08','2026-06-05 18:09:08',NULL,NULL,NULL,0,0,'','2026-06-05 14:09:08','b2ff3fb3bc1336c7d113b8db70e44a87fbaa98851ea981c0bc3f357c82303372364af58616ad2527','30b660693a507f910fdf5d4db0d70c6e69cf3d40e5f9217016c509b91d8ba196c3b3cbbb39c6f25a','2026-07-05 13:09:08','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('7f2064e7-6da1-47b6-83f3-2bb235180175','','2026-05-26 21:36:21','2026-05-26 21:36:21',NULL,NULL,NULL,0,0,'','2026-05-26 17:36:21','c5aa8e37c5d157d51da34f3e03c64ffeec196107a6d89c928fdac7c0e3d372ae6aab483a99162306','72cec5039fceac61e3aff719851aa858a994528c0f674918cb154a430684832193f51948a0f4f39b','2026-06-26 16:36:21','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('837c5ea1-8449-49fd-b618-4748209657f7','','2026-06-05 17:58:15','2026-06-05 17:58:15',NULL,NULL,NULL,0,0,'','2026-06-05 13:58:15','88889317be4941824c88b9b450efbea5f7f8b0d84554e95fe4b8d8e4869d411ca76fcd5935dfeef3','ee4b6ff614bedd2c8ed3b007558f956299d629a6e9ed2a2fcc0cea3351d34221b8e30cdfceabd861','2026-07-05 12:58:15','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('83f4c488-fa55-4390-88d0-1c609a2991b7','','2026-05-27 22:19:37','2026-05-27 22:19:37',NULL,NULL,NULL,0,0,'','2026-05-27 18:19:37','b6a1717c4f5ed178c582b5c9853f61db1ab3cd96054de688ff246b315f5e7435e0a7d6056f6fb06f','d75da6e6b3db82c19cc35dbbf1a199e48de8137b15e609b76b0cdc3ff2166132e9e6b85f27c1adf6','2026-06-27 17:19:37','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('84ded438-cd5f-458a-a6e0-25e7ca5cab5c','','2026-05-28 17:04:06','2026-05-28 17:04:06',NULL,NULL,NULL,0,0,'','2026-05-28 13:04:06','29d04173f1cfd199bd91c1dfa6eda828d63175cb3b573f0a6ca07116db4dbdcb4d2499859a636bb5','f79c319c4fcca65b0093e434d4976e07f724925d254a97bb3f29986f38a41cd95fd2911d6ab54ddf','2026-06-28 12:04:06','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('85155dd9-946d-4da2-9028-4bb52513373d','','2026-05-26 20:38:18','2026-05-26 20:38:18',NULL,NULL,NULL,0,0,'','2026-05-26 16:38:18','9a59b2783629733d868470d0fefe8bd5390e36e8949fb48aa766044565ce7b343bb2f4bffe7cf53e','1253c5022c6d14c4479a13c31a6d37d7db917a66b3aa2545512154db7f937f3ceed08a6d921f23c8','2026-06-26 15:38:18','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('863cc9d3-1634-4d4a-990f-4bfa2e82f5f1','','2026-05-26 21:42:22','2026-05-26 21:42:22',NULL,NULL,NULL,0,0,'','2026-05-26 17:42:22','45e0f90c2883cd2c0cda1a93318eaa02a1380d506a8cdd59cc39cc0b3d2b847d6c750c067862d4bf','fa52ad97f7fa28502c8d4602f6c5e05668c5bd8c1370815604f67f052d8498ba4ba0721d32287066','2026-06-26 16:42:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('86c45555-81b4-4f0b-9f14-d3eb59587673','','2026-06-02 22:53:04','2026-06-02 22:53:04',NULL,NULL,NULL,0,0,'','2026-06-02 18:53:04','3da6a81a552de92c9afdf56ccc5dec75565f9cb7e1931f1a883c748fc3923288a97670da592c6c8d','a72eb975d726a85cb3424d89a5baffb08432e55be759fcd710f4ac02fd2e818ee28e71f2ac52da7c','2026-07-02 17:53:04','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('8f851284-5b9d-41e8-ba80-d41e93833e9c','','2026-06-05 17:56:28','2026-06-05 17:56:28',NULL,NULL,NULL,0,0,'','2026-06-05 13:56:28','5470afe91e6f38e14f0239cc4b3faaaf2558065968b0bcf06fef85b9c731e041fffa34ce88f3b08f','019a7b44b22552a4625439e25d614d288ad7202854dcddb5575c0e2104b6c24e9a3acd00ff29f2e5','2026-07-05 12:56:28','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('91923e5c-8458-4881-9235-edbe757748ba','','2026-05-27 21:46:36','2026-05-27 21:46:36',NULL,NULL,NULL,0,0,'','2026-05-27 17:46:36','e31307619b04c767df79ed6f969da8843ba5570a9c720e83ef1bc408aa586c70e47e796dbbd2841a','e56e99f5295d580b0a23c88b839ca69d70c43377fbcd0de15e6907ba89c5fffa99b4935f5a535eaf','2026-06-27 16:46:37','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('951208d7-2db5-48a9-8356-07692881cef3','','2026-05-27 21:01:03','2026-05-27 21:01:03',NULL,NULL,NULL,0,0,'','2026-05-27 17:01:03','1bb7c6058920d08dd7c5c364f356f5c4f6b142fe6f8b4d3ff4b27baaa9ebc9f0936850acf5b41028','4e61ac93ecfd6cc1f3bc99a5de0a2882b9d730847a675f7e9de6683fc84f72e745ef7c096c5b73b9','2026-06-27 16:01:03','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('9890c5a5-8b2f-4509-a984-a475bf6a906d','','2026-05-27 17:04:06','2026-05-27 17:04:06',NULL,NULL,NULL,0,0,'','2026-05-27 13:04:06','3de76da520aedf6000797781dc5b926afbdec7019c16492eb0fc7ff5c925528bdc76172ea5dbe537','936cbbca653cb0723529e46c8512bb4b805be12a7c19a10582f164cd5d4265332999562a57d22e45','2026-06-27 12:04:06','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('9bd6ead1-aeda-4f59-b443-c62af4aae215','','2026-05-26 21:37:10','2026-05-26 21:37:10',NULL,NULL,NULL,0,0,'','2026-05-26 17:37:10','a9c66dc5954b5489daebfce261feb11122b51174fa5da24cc052a4d1580b66f17883b80336f7d18c','004cefdecc221c17191a7d86accab206dd7cf28e76ac63384605cdbd5c603f7ca39c08ab138c13cb','2026-06-26 16:37:10','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('9c96f3dd-500d-413c-8211-89dc26489d8c','','2026-05-27 19:04:07','2026-05-27 19:04:07',NULL,NULL,NULL,0,0,'','2026-05-27 15:04:07','147c52737f5e1fe8cae7cb58d7950439e297ca1808bbc753ec8904decf07eeb9919c3e230728af2f','eb06f4e3f0437e8375e308ad776304775bdce3b347bf5c4573957168c04990ec0519b98f71a5c82d','2026-06-27 14:04:07','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('a52f4b5e-1ad8-4ec2-a6a6-703f909eb600','','2026-06-05 17:56:33','2026-06-05 17:56:33',NULL,NULL,NULL,0,0,'','2026-06-05 13:56:33','b5692028c1315b63b87497cd42368827af89abff75329b3df60492d7c56ebe9f8d18d1a1052e0701','3a6c3e3a9a0ef44e3b02d0b421415e88d1d045fa5fb9ef8877cf6807fb5a52498276f3d5fcc6a60f','2026-07-05 12:56:33','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('a7b84c6f-3e40-4460-be9d-ae56e3070485','','2026-06-05 17:56:44','2026-06-05 17:56:44',NULL,NULL,NULL,0,0,'','2026-06-05 13:56:44','659ecc3aea6a9ca6380bc0bc30932599a9c2fab01b17eb7e4e9bd4f3d9a40f26ba6ee50384f7773e','512231f593696efc4bae2eaea5515cd449b6b1171668832123dc0b68f9dff821fa6b446f40495415','2026-07-05 12:56:44','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('af0b2d9e-5d47-46fc-82e0-1a98924382c0','','2026-06-03 15:27:45','2026-06-03 15:27:45',NULL,NULL,NULL,0,0,'','2026-06-03 11:27:46','208278914ccd413ac39f48f476a9c17d73babe6cdddcc2ba604e9b66552bb88a6ab348972ab41df7','d953ba6e14ccf818286d94557e3df9547872973e96562795d8dc849cdda899f6cbb26c9c0f9d0ad6','2026-07-03 10:27:46','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('bb68469a-759f-424e-a1bc-609fecd8a935','','2026-05-28 20:57:05','2026-05-28 20:57:05',NULL,NULL,NULL,0,0,'','2026-05-28 16:57:05','2d2a2394a98971ea11822e216fac1cd71bae565b4f58176efc7b4e5d27e5399292a9b82e4b169b60','0ab00ca572d871f645447ca23cd2eaaf72f69cbd269c9f2eac0138df0aee2a066dcf23f7e32c0ad5','2026-06-28 15:57:05','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('c8f0bf6b-d868-43c3-b22f-97d46698e8fa','','2026-06-05 17:59:22','2026-06-05 17:59:22',NULL,NULL,NULL,0,0,'','2026-06-05 13:59:22','7922359780fdffaff10de7b27b79016862fa747770867800e90454fa20eb85914637f07acf0048ef','8f9995440c51680ca92196d5bdeaa83946b168aec98cdcc733f3d535c9222b043046a9d476c57dd6','2026-07-05 12:59:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('cdbae404-b0ba-4d25-bfe2-4b2b5edb2089','','2026-05-27 22:36:51','2026-05-27 22:36:51',NULL,NULL,NULL,0,0,'','2026-05-27 18:36:51','97f2c37220d78cbb4d62c3447ef4bbaddc7c135eb148ed5eda1d542e413533cc4169d94132d57cb5','2cb3d12e9c86f898eed8e0bcc40cccdee104614f67e816787883eee2751ebaa56670d0a5f9929624','2026-06-27 17:36:51','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('cfcd5e9d-86e4-4b22-8511-9fd153ec5a7e','','2026-05-26 21:16:02','2026-05-26 21:16:02',NULL,NULL,NULL,0,0,'','2026-05-26 17:16:02','f8c6dca495b0d93b9cf5f1bb197e3c852a732f9d100cdc4b8654acb408c6c0c44f63c5150a275066','fb97172a0eb23d0dc184edf2a37d946a2bd4ac58bdcc5de0a3c85770628e9e78e52cf11d6d35af5b','2026-06-26 16:16:02','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('d006b63f-fddf-40ef-8290-b5c6e1363c86','','2026-06-05 15:20:26','2026-06-05 15:20:26',NULL,NULL,NULL,0,0,'','2026-06-05 11:20:27','58cfca04f508fc18bd1e17cfe27b5000ff20311d1f73cb5ee99f03b32858c0c608775aeaa8ac6236','ed88e4ae07e97a5838a88eb045d80d21d80deff92e669a326ac10db0fb64a241032017642bfec0cb','2026-07-05 10:20:27','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('d614d4de-f964-44c2-8b78-1bc47776ca34','','2026-05-27 21:23:10','2026-05-27 21:23:10',NULL,NULL,NULL,0,0,'','2026-05-27 17:23:10','ad1df9c84538c8046feeffc48340943773546e76755394fe5da04a2f8fa7449838e884b61775537f','475410c3b24d3889f1fc85bcc083c90d35ab62414f339e31fbc2cfe5e96a78581f6c30f895e297bd','2026-06-27 16:23:10','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('da7aef25-c15b-49ad-8f46-fe2797e19d86','','2026-05-28 16:27:20','2026-05-28 16:27:20',NULL,NULL,NULL,0,0,'','2026-05-28 12:27:20','e652e37ad1922f50d83a667ff3649329b2f9e6c55fe6357f2d4d5d12a0430efa150a8db683f5cddc','75cd71abb37067ac913021e9ab9093711ee07636e638a26d7fce9ac24aef0b1629c6766796e48c87','2026-06-28 11:27:20','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('e31876f6-02c4-491b-bb8a-9f16fce9d53b','','2026-05-27 20:37:59','2026-05-27 20:37:59',NULL,NULL,NULL,0,0,'','2026-05-27 16:37:59','44738428f25c5a6c42460ed07d92cf87c61b0873e653ea7b88dcc6ccc587c509fa584a3463a6c5e0','f3a201847e4e0ff62fe9a488f0e8b78bd7b4ae017b6eb78137ce3450fd8777dbc1d74640ada37630','2026-06-27 15:37:59','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('e6b473a0-df8e-4cd7-ab19-2164b73300fc','','2026-05-28 16:46:39','2026-05-28 16:46:39',NULL,NULL,NULL,0,0,'','2026-05-28 12:46:39','d313ae94557887e0aa9a518bf37c88c3db932d5ec8055611d4a30df74f20c1bcf7ddcde9049c70a4','749216da533b12736e413be79f9645ea1e5667ac551de56076fe957f696f6008d4afb018f98079fc','2026-06-28 11:46:39','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('eb2fedeb-bf97-47db-a2e0-9865efacf395','','2026-05-28 17:03:22','2026-05-28 17:03:22',NULL,NULL,NULL,0,0,'','2026-05-28 13:03:22','64da68363d07b9eeb61c3369c8ae91dafa457c65e94aa815e3890c90a91bda4ffbdc2d402ae0e45c','e0446abb7deb178fa38290191629192e898daaa0aa743c532ea24887e8ab7cf4798c2cd950b0ab77','2026-06-28 12:03:22','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('f3c73275-0f7b-4f42-954d-e1fcb6dfc086','','2026-05-26 21:15:28','2026-05-26 21:15:28',NULL,NULL,NULL,0,0,'','2026-05-26 17:15:28','131ba901e29ce9f2f685e2be9bfb0d5377deddb4f6c511edcaf47604b3ad0309e44c671a68fc9b0d','96a5396dc22aee8cbd3ee4e3e0668e389c441e10e46d90a25ae819c66746390b1b2aeef72b791c8c','2026-06-26 16:15:28','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','1'),
('f6334f9e-0969-4282-b24f-f1526823fa03','','2026-06-05 17:59:58','2026-06-05 17:59:58',NULL,NULL,NULL,0,0,'','2026-06-05 13:59:58','e8de2344c7cb03d4123c02cd1d31a00c45d5a620345f6c86b958f485014292287a692a627e7a9f59','20c4820ce797e210228d4063f3a32a1389df94f38d4b9a1798b67cd67056c4c2044bdce0cdf1956e','2026-07-05 12:59:58','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094'),
('f8a15c25-d070-47cb-9f77-f6da8e8371ec','','2026-05-27 22:45:10','2026-05-27 22:45:10',NULL,NULL,NULL,0,0,'','2026-05-27 18:45:10','d646a20ae79f3b583c064a02def7a587433a0f4a3dd0c03b63505d69b477efb6ea10dadd50f95ed1','0f1528c3c707a3b61bb1ecbb052a19cd5ba809a63a149dd77d5570a88ba48df1c98f2d203c8eaa31','2026-06-27 17:45:10','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a'),
('fae70b7b-b899-4b74-8050-9b1b39f51a97','','2026-05-27 19:59:18','2026-05-27 19:59:18',NULL,NULL,NULL,0,0,'','2026-05-27 15:59:18','d8fd30de6b32d00166e67da79edcd608b8e9717b5e201b4025865197d546fca507c112681411890a','c610f908c1e3669b410f3af08935e3738e020fdb4ff88233020662585cd0bb2d0eb9fc523b723b99','2026-06-27 14:59:18','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','400fdbe3-e938-4b6a-8deb-a459c22ccba5'),
('fc157bb2-9057-4fd6-9d96-b774d0d24045','','2026-06-05 15:37:13','2026-06-05 15:37:13',NULL,NULL,NULL,0,0,'','2026-06-05 11:37:13','d0df33ff70d35d742e2f1dd2ed63cc58cad5b0a8f8e6d9b0698460300d105c1855acd47be8982ebb','182ae36e5da88ec709ec4c03ccb31c2ce62b8c9422eeddfb5bfed1c9e82e0ae0fc90cc964743a134','2026-07-05 10:37:13','',NULL,'6826a248-4f90-4ce5-8921-23b857b7bbb0','57bef8d2-239b-4960-9c63-f8bc273b8094');
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
('1f15f9c0-f11e-64f2-84c6-a7ea30052d83',NULL,'2026-06-03 17:32:09','2026-06-03 17:32:09','1','1',NULL,0,'1','019e8f9d-9508-753e-abfa-6d790ca382a5',3838570,'image/png','1c8aa030-8421-4059-9078-a23c2cf8f9a9.png','[1024,1536]','caml_anuncios','a14cd58f-4f3f-46c5-8be0-593addae1d60','uploadfile',0),
('1f1604ef-04af-6136-9698-cd539a3393a8','Invoices_Factura_-_Cuota_Administración_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','2026-06-04 14:52:38','2026-06-04 14:52:38','1','1',NULL,0,'1','019e9431-e387-731a-8f92-c5a68a276568',45097,'application/pdf','Invoices_Factura_-_Cuota_Administración_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf',NULL,'Notes','1f6006db-b944-44af-9c93-406a71aba0c4','file',0),
('1f160502-01fc-67f0-a3e8-4327dfcd2a22','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','2026-06-04 15:01:07','2026-06-04 15:01:07','1','1',NULL,0,'1','019e9439-aac2-7e4d-af21-78a12275a93d',45165,'application/pdf','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf',NULL,'Notes','a3d300e6-c195-4d6e-9a5e-17adae5f610c','file',0),
('1f1605ac-d69d-619e-ac28-df2af1fb1894',NULL,'2026-06-04 16:17:33','2026-06-04 16:17:33','1','1',NULL,0,'1','019e947f-a39d-75e7-8e4e-9a864f0f176b',45165,'application/pdf','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf',NULL,'DocumentRevisions','a1fe134d-0630-4171-8ea9-e3c786007831','filename',0);
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
('0039e4a7-7be7-4126-8a04-b70ec932a539','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0072cdec-76e3-4209-ba57-cb7ee38d6132','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('00893fc0-2fdf-48c0-964a-8ce0c5fd434d','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),
('00b8324b-5a87-4ba4-b78b-3aac91bbc9b6','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('01146a1a-725d-4784-89a6-48fd55f9a1db','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('014eda64-8fba-4525-afd1-9991c07176e2','securitygroups_caml_control_accesos','SecurityGroups','securitygroups','id','caml_control_accesos','caml_control_accesos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_control_accesos',0,0),
('01968bcb-6c7f-40b3-ac06-bf1965c8f47a','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('01ae7da6-d1f2-487b-ac83-4612ce509f22','securitygroups_processes','SecurityGroups','securitygroups','id','Processes','processes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Processes',0,0),
('01dec71a-bc7c-4bad-b5e9-01ccda76db29','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),
('029fe846-6e3b-4a04-a5f1-d4fd4c2d2d6e','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('038c85dc-89c9-420f-aad2-c64edd2f7973','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),
('03eb3941-42fd-4ae3-a1cb-ce826a73cab9','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('04f09ad5-d326-4355-afec-26b40e41e5c6','caml_pagos_modified_user','Users','users','id','caml_pagos','caml_pagos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0515e8e6-b26c-4ba9-9571-9f35603140ce','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),
('0697af3f-720d-42c5-8010-3ff1e472e607','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('06ad911b-e5bf-47ab-b2a7-70df1354301f','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),
('072a6f72-10b0-4088-acc7-417db07370a9','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),
('07301697-612b-43df-bf1d-185afc841369','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),
('073cfc4d-fdfe-404d-90b4-8647d41117c7','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0754c807-e4d9-4f51-bad1-a2db985e21c7','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('07c2661a-e6cd-43fc-a075-b3339ef9d28d','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('07c8d27f-5fb4-4713-9d14-445c59552eb3','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('080086de-f2ad-4d44-a482-d3d429770b5e','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),
('080b6387-cda0-45cf-8fe8-3df4b192c0c3','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('08815158-1cbf-4eb1-8f4a-17891eadca12','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('091dc3ab-dcf4-44b2-91d5-b361fbd679a2','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0aa79536-f649-41ba-be42-e845d1d1a08c','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),
('0ac9965b-5116-4c94-a445-4b88ad578e79','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('0b152964-05af-4f0b-95cd-a2f2f5f52bc7','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0b8843cb-73ce-4d53-819f-64f5219d4d6d','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
('0c0b1c9f-5a45-4b72-a8dd-3cd298631d70','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0c161122-f894-4612-89de-20a763ee4ab9','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0c2c80b3-7ba8-4cf3-b69e-2a38dfd85010','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('0c67942f-475a-47db-8ed4-8c1a492d965d','calendar_account_meetings','CalendarAccount','calendar_accounts','id','Meetings','meetings','id','calendar_account_meetings','calendar_account_id','meeting_id','one-to-many',NULL,NULL,0,0),
('0cb95700-ad3e-4fe8-8c6b-2f5be49d9f56','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0e0ab454-8405-4e80-99eb-68a05821fcf3','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0e8142da-410a-455e-82bb-bf15349c12d9','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('0ec1982b-058a-4f03-9864-18b7aa703d44','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),
('0ec415b0-6eca-4264-a253-4c20f377795e','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),
('0f6fe627-3c0b-48ab-8e17-7ad8c52510a4','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('101907e6-1158-4c67-8070-b55a2cabf61d','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('10436004-6b31-451a-a3d5-d8b9edfdc061','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('116f1dec-0371-483d-ad07-195d68a285c9','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1216657b-fa45-4bf3-a647-ce6f672212b2','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),
('1311a9fe-9dba-412f-b9b0-37e96adeba8c','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),
('137c4d19-53d3-4c72-a0be-93004a464a8a','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('13bde417-6dd1-4b0e-85ce-88ab3fee715b','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),
('16a11a9e-6a63-4bad-9883-ab7632e7102e','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('17144bb3-cf74-4da6-873e-e4a4e462b34e','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('172e0383-fa01-4bef-beb1-35f4392bf5fe','securitygroups_caml_anuncios','SecurityGroups','securitygroups','id','caml_anuncios','caml_anuncios','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_anuncios',0,0),
('17af3fcf-67b3-462b-ba29-2ddd546a9dd6','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('18c3bec7-f384-4336-bf9e-9390b52be429','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('18e4d9c3-4180-4dd2-ac4b-7b4e57407caf','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),
('193923e9-f0f7-4c18-b9fe-b2cb84615b71','caml_chat_modified_user','Users','users','id','caml_chat','caml_chat','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('198250aa-d431-4c01-9122-11070c0a45ac','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),
('19b03f54-2aad-48d5-aa3c-753f7ce2e9bc','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1a43895a-22af-4e5d-aadb-3a8fa9716fea','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1a50c717-57d2-4701-90a7-5b8dd4915df0','caml_apartamentos_modified_user','Users','users','id','caml_apartamentos','caml_apartamentos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1b004c63-b125-4783-a35e-cb6e32cf6ae9','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('1b0584b3-bab7-4690-9ca4-a3c4b003ad1a','caml_control_accesos_modified_user','Users','users','id','caml_control_accesos','caml_control_accesos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1c0843d3-a01c-41ca-a3e8-437b9bd32c04','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('1c2f7e28-64ca-4f62-8ac6-3a4006b1788a','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1d39b2ec-0d3b-4e2a-bd22-1d6a1cdef43a','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),
('1d881663-b55b-49a9-8308-a34f04343d0c','securitygroups_outboundemailaccounts','SecurityGroups','securitygroups','id','OutboundEmailAccounts','outbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','OutboundEmailAccounts',0,0),
('1e3bafb1-2fcc-41c1-9d1b-e7ee059d4056','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('1e7a9309-9b9c-46dc-849e-2e06bfaa3476','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),
('1e905552-9f5b-4e75-a9b6-b6ed51d8f9e9','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('1ed1ac9e-c5b1-4e20-815b-7c35a0275a21','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('1f5bcc60-48be-49b9-8e49-749bd679f831','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
('20225e92-a4d5-4025-8218-7e972863482c','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('20306afe-401d-45f0-b9b1-7a1585c470e2','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('204d4fd9-1647-4ba6-bb1f-729b9669621f','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('2131b226-7b14-4cf1-83c2-096d9e3c5b2c','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),
('22b30e27-21f0-448a-82af-ed4c6a2ff210','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('234fdfdd-0adc-41ba-931a-b13bb87fd2cc','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),
('238db111-a0d7-414a-9f7e-a28dcd62bd2f','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),
('242d4d55-43f9-42ba-a51d-b56bf76d4231','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2507b423-fd07-49f9-b4ca-f693bcf678ab','caml_vehiculos_assigned_user','Users','users','id','caml_vehiculos','caml_vehiculos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('26114ff9-8563-4432-ab99-988981ad9f3d','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('261f2f7e-f935-4c9d-9904-bd71492fc19f','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2737009b-6651-488c-9583-6390143b7e18','caml_apartamentos_caml_chat_1','caml_apartamentos','caml_apartamentos','id','caml_chat','caml_chat','id','caml_apartamentos_caml_chat_1_c','caml_apartamentos_caml_chat_1caml_apartamentos_ida','caml_apartamentos_caml_chat_1caml_chat_idb','many-to-many',NULL,NULL,0,0),
('277a51a4-da6e-42c5-9c1d-7f62c33eac3e','external_oauth_connections_external_oauth_providers','ExternalOAuthProvider','external_oauth_providers','id','ExternalOAuthConnection','external_oauth_connections','external_oauth_provider_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('27d89389-64ce-4b2f-b83c-58554ff772d0','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),
('285a034c-a129-4a0c-b2c0-d46d9cb64c27','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),
('28e504bf-27a9-4429-92ed-61e4efdb26ac','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),
('29289926-2b5e-4b54-b3e6-7a781648f454','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2a14cc6a-1170-4d14-9a9b-c4fef39e3158','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2b09f8ee-29ac-4b6e-8e57-8b7cd203046c','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('2b6e7a48-6ee2-47ff-abb4-f88632907046','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2b810887-8b9a-4e59-b3cb-f2903b41c4f2','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2ba739da-ad6d-44b2-a3c9-30267c52100e','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2ba74250-0a97-4285-bc19-ef3643ba9d88','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('2d141c96-6d4a-474d-b365-9c5b6716c720','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('2df00fc3-be9f-44a6-9da6-f1390b5cdd43','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2e4eb12c-cc40-47a4-90b3-b4aef372b5be','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2e90e286-84dd-4a26-bd32-e8fce082f396','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),
('2ec8476b-a5f2-4f62-a0d7-d46986e32640','accounts_caml_apartamentos_1','Accounts','accounts','id','caml_apartamentos','caml_apartamentos','id','accounts_caml_apartamentos_1_c','accounts_caml_apartamentos_1accounts_ida','accounts_caml_apartamentos_1caml_apartamentos_idb','many-to-many',NULL,NULL,0,0),
('2eccbf76-d85c-4f00-9045-c3ac516d11c0','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2edb583c-391f-4df2-8faa-125151f4edd1','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('2f7daea4-cc8e-45f4-a365-1847241f6d8b','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('300366c5-c487-4d93-ab0d-28202c7c64d2','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),
('30256300-4a81-4801-a245-9e653dfd26b8','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('304cd569-f3bb-46f3-acd9-d9b6ecc76dc1','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('321ed5dd-ccfa-4132-9af9-930e56569478','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('32287247-7197-4c07-b1de-e7a79c15b17d','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('322fd380-d2c4-4896-ae62-f50bafbe69f0','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('32355fbb-acec-49a0-ab22-ad1b264f2c53','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('326283e3-9597-4012-8701-d266731edd09','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('32bc5868-6a23-4e77-882d-10292e34ab33','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('33962f21-0fe0-4ae1-b30f-e3f154bf4652','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('33b05b01-c759-4e74-9ac2-3980ece64a13','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('3555d4d2-08d4-444a-a7e4-1e6bc05cea41','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('364cbfad-1782-421d-913a-0a4aac2855be','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('36e6600f-09b6-4c0a-9f71-1a868fda2bba','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('36eeee96-f03e-4a75-8466-ac985fd25029','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),
('377e12ba-116c-42c3-8c48-101ae6dd2548','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('385b87e4-0637-452c-bdca-bd5ac7400f59','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('386b0577-6948-4930-aa15-ced63ebe1a9b','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('387b0ba7-16d2-4007-8abc-60e47d9ed4cb','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),
('38921b4c-97e5-4689-9867-49744b3c885e','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('38a699ca-1f01-40f9-8615-37e101d65c37','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('39645ca7-eb91-4d25-8d97-23de2de4e131','emailman_assigned_user','Users','users','id','Emailman','emailman','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('39b4c6f4-e334-4293-9213-2601115fe2a2','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3b0e9821-52b5-4f4c-accf-2aeed3574967','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3b11a64f-4476-438d-8281-f024cb20008a','caml_chat_assigned_user','Users','users','id','caml_chat','caml_chat','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3b2ce1d7-1872-4e6d-a4a9-7162d5e62f50','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),
('3ca928f0-0dc1-4749-a215-c25a37e455b2','manualmigrationtasks_created_by','Users','users','id','ManualMigrationTasks','manual_migration_tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3cbfa53a-555f-478c-b2d2-e5dd74c365d1','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3d2fa878-ed91-4ab8-bc98-1b44e3e48a4a','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3d4d2f3e-b699-45cb-a0a6-8ad1b3276d3b','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),
('3ef9c94f-9d59-4299-b5b7-823590ed63da','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('3efb868d-25f8-45f7-bfbc-88b321a41fec','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('401232dc-4c96-40f9-85e2-af0fdafd5283','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4052ce38-164c-4971-819e-390a8c8f1842','caml_chat_created_by','Users','users','id','caml_chat','caml_chat','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('406a6334-167f-4247-9993-7b56e91f445a','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),
('40dc4862-1254-461d-a8a3-20f5634615f3','caml_anuncios_assigned_user','Users','users','id','caml_anuncios','caml_anuncios','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('40f82fdc-ec60-4cb7-8e8b-2f7dabc194b9','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),
('425ec90f-8d7c-451c-9350-12cc19761a20','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),
('438745fb-6314-49fa-886f-01ee1d7b993a','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('443db02b-f6b8-41e5-8f75-fc9d8ca0b951','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('45091c3a-daa7-4d75-b608-f3db6c1dbadd','manualmigrationtasks_assigned_user','Users','users','id','ManualMigrationTasks','manual_migration_tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('453b4e9a-788e-4c54-9e73-e650cd4dbc4c','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('455f0cdd-edee-44ce-bda4-613bbfc8551a','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('45992218-3580-4a96-8eed-9ad942918d67','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('487d72a8-c30d-4afc-bae5-92427db9b8ed','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),
('49b9af66-7365-41b6-b426-6d8b300d2d15','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),
('49cb8920-e57f-433c-9bee-b196d0320b25','securitygroups_caml_mensajes','SecurityGroups','securitygroups','id','caml_mensajes','caml_mensajes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_mensajes',0,0),
('49d9ab60-4140-4e2f-89dd-8e0164a10e7d','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4a6ef2e1-49db-4227-92f6-9f930084aa17','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4a9e88da-39c8-4e02-88ec-fb0bc1223aae','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),
('4ab51af8-b11b-48be-8712-838e2d0a50d8','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),
('4c331ac1-5e01-471b-8212-e7f0ce7e8b52','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4c88bc86-52b8-48f0-8bf5-a02f8a6ce6c5','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4d39b321-3142-44d4-8c9b-fb7bb9388f73','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4d9a1754-b884-478a-b278-0d36945f8ee2','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),
('4dfed7a3-f3d4-49ed-8494-675ffb57199c','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),
('4e00f69e-bf68-47d3-8370-b8dc3ddf8157','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4e146e82-4a6f-48c8-8ff2-04d9fd38a942','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4e4c8885-0052-4104-9e0a-d26cc7c6f070','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('4e5a0947-276d-4bd5-b2ae-65a03095fab8','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),
('4ec8628c-6d01-4644-a30b-22e1887bd9d6','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4f064f95-2a15-4c8e-beea-747dd36c64cc','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('4f53c363-56bd-473e-b67a-008b7f6a2584','outbound_emails_external_oauth_connections','ExternalOAuthConnection','external_oauth_connections','id','OutboundEmailAccounts','outbound_email','external_oauth_connection_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('51cd5ff0-460d-49dd-bdf9-e007f1e63e24','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('51f0536a-fb06-4734-802c-f00762fd14e8','calendar_accounts_calendar_user','Users','users','id','CalendarAccount','calendar_accounts','calendar_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('52432eb6-db2e-4c2c-9b67-138e497f1861','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('52e52143-6dfb-4640-ac21-ecb5b0293f89','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('5371de48-2a5d-4c6a-be74-1ba2096ce3b7','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),
('5392faf8-ddd9-45ea-9ec1-6be6d4e71bbe','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('542ef2d5-67ab-49ed-afc5-e0d5f45dfbc0','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),
('54479d6c-7ea9-4354-bae8-df2793929031','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),
('54bc66df-069c-492d-ba8e-5e5511df97d6','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('54c786c8-d181-4348-bf7f-d24d5725df06','externaloauthconnection_modified_user','Users','users','id','ExternalOAuthConnection','external_oauth_connections','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5509ca56-f4a7-448c-9add-8045b4d53d4f','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('55fb4035-ecbc-4d08-bf01-542f104b1686','caml_tarifa_created_by','Users','users','id','caml_tarifa','caml_tarifa','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5617ff9c-d78b-493b-9f66-fd5ad5839659','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5631e6b9-f3dd-48e6-9a44-d72f79122bf1','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5656393a-23e0-4ace-9257-45b8a6e5b9ed','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),
('56679519-0b7d-43d9-8eec-ecaee5dc9156','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('566f0608-06f8-48a9-94b8-d2794d3da9ec','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('56a203cd-3280-4b4b-b126-2f01fce6b25f','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),
('57108d06-cd86-433e-9af6-2d569d609d89','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),
('5737c47c-ea90-4aa1-b420-ac2d1e487ed4','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),
('5742a35a-93d7-4294-9194-dda19ac4d422','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('57fca0ca-bc8a-4f60-baf4-e9fbc3b3148c','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('58b1c73e-ad2d-465a-85b8-73ae8a984e7d','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('58e1ab0f-0735-4a68-be38-088458fe7faf','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('597be93c-adb5-4d32-8c43-bc57a8a9b3c6','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('59cf3fd6-3f0b-4638-81ce-a53232092065','campaign_notes','Campaigns','campaigns','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Campaigns',0,0),
('59d4b637-5256-48cf-8889-4b447232aadc','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),
('59e9c84c-b936-4752-a765-35c7607ce4f2','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
('5a85a720-91b8-4e8f-9bee-59418611d548','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5afcdfeb-2a17-4901-9057-a17414a1b5ee','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5b52513d-9990-4b02-8e87-d75b3ab959a5','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5b82ac87-b84c-4d4c-87d3-cf71d3f51f94','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5b88db4f-1c62-4129-bcb4-758290a70714','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('5c4ff09d-e6de-4e30-b450-c2b8b2a6f35f','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5c7123f3-86e3-44f3-b9da-996071345297','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5d65d790-2a03-456f-9e35-c07912f7f70f','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5db9bee6-c988-4559-b3b5-623281e16479','processes_modified_user','Users','users','id','Processes','processes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5ea64329-1b32-49fb-b950-7ebfb8916114','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5f3459f0-a1ab-4f53-baa7-1697674aea20','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5f38355a-fad7-49ea-b705-80dc28269f27','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('5f4e4e11-d9c8-4b56-8119-b83054b51c37','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),
('5ffbb8ce-44f4-4a29-9469-85cc022a526e','email_marketing_survey','Surveys','surveys','id','EmailMarketing','email_marketing','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('601d2f38-d18e-4f1f-bce0-c234670d37d3','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('605cbdb3-344e-4ceb-a949-370e974dcc70','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('607ed99a-5b94-4fa2-b320-b749929d364b','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('60a4571a-8b45-466a-9ba4-673ed52c0ace','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('60b3cb0a-5727-42bb-9cf6-69e871055e57','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('614b4bf1-3a0f-4242-ad03-61108cb4616f','inbound_emails_distribution_user','Users','users','id','InboundEmail','inbound_email','distribution_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('615b4f68-6365-42dc-8327-ea4b9202debc','securitygroups_caml_vehiculos','SecurityGroups','securitygroups','id','caml_vehiculos','caml_vehiculos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_vehiculos',0,0),
('6161357a-cca0-4701-832e-95e72025b15b','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('62430b4c-f54c-408c-8e2b-8cd99b431a27','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('63b2b7c3-120e-4a1e-9978-0c8b9bf87a12','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('643db4a6-86df-41f8-8ae4-bf058f637162','securitygroups_calendaraccount','SecurityGroups','securitygroups','id','CalendarAccount','calendar_accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','CalendarAccount',0,0),
('648668ed-844e-4044-99e4-b6afee655358','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6747faee-ad09-4397-8ce3-55995f690d74','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('677e3b34-6701-4ecf-a7f3-e8b4fa43c193','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),
('68323b98-cf01-4449-8138-c7258b3436a0','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),
('686a57ec-7801-4240-b632-43d877d290f6','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('693db47a-1ae8-469b-a228-038a4270c8e3','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),
('6952e606-2127-45fd-8dcb-1939b895f467','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('699a4a3c-824f-4433-8872-132d653d2e6e','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6a806673-79a5-422b-82a3-356481936919','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),
('6c65f71b-d697-4b22-8408-56059386eedd','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6cbee034-f61c-49a4-bf64-64b11d6e29ff','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6d06f622-564c-47b4-a64e-c5090a3b04d4','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6d1a8636-39b0-4617-b038-986f40e8f8e9','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),
('6d3e1f8e-aa0d-4954-9195-54a3bc3acef0','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),
('6e24fa9c-c43b-40b0-bb2b-c2b6e981a6c7','caml_apartamentos_contacts_1','caml_apartamentos','caml_apartamentos','id','Contacts','contacts','id','caml_apartamentos_contacts_1_c','caml_apartamentos_contacts_1caml_apartamentos_ida','caml_apartamentos_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),
('6e3ac43a-6884-44a3-91ed-4fd4e4c2365a','oauth2clients_oauth2authcodes','OAuth2Clients','oauth2clients','id','Oauth2AuthCodes','oauth2authcodes','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6eaedb11-ebe6-411d-bf09-66402ba0b783','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6fa31ce7-1924-474a-9d7e-2aba8dbadedb','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('6fc929b9-fba1-4b3b-95a0-b1c617e57428','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),
('6fd5ca1c-d130-4a2e-ac4e-89d9a60e5137','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),
('70954aa4-a379-4698-a2fb-301921c5ba4e','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('70dacbbc-0008-4602-9b77-d83440e7b846','inbound_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','InboundEmail','inbound_email','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('70efb45a-c489-44cd-9431-046572362953','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7134336c-12eb-4638-a11c-944e716fcca4','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),
('714278c4-6330-485d-9cf9-eefb5ab6174e','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7142c9c4-b1fc-4a0f-9f49-d7842ec7c203','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('719c06c7-e137-48d3-905e-fc7bfb06b0f4','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('72b61106-081d-4f88-b32e-f7152f002f80','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),
('735ea9ba-e355-47d5-bab9-b076fb6bf4e4','outbound_email_accounts_email_marketing','OutboundEmailAccounts','outbound_email','id','EmailMarketing','email_marketing','outbound_email_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),
('73711596-3b08-459a-a17f-ef663b422674','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('73b8fe04-9583-4ee8-bc1e-eefabc73798b','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('740bdf99-e430-487b-8393-d8a65653dd4d','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7495199b-86da-426d-a26f-f5fd40828700','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7499d74c-e2b3-4061-942b-d1c542e82219','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('76285cad-c4d0-4712-93ab-41af1ca7ccdb','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),
('76fda792-c950-4dd4-9ca3-0348e33c01a4','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('779c6e04-fb3f-453d-a44f-c460f3472b6a','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('77e168b6-c301-493a-bfb9-2ba5015ad86f','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('77e743ce-960b-4812-9427-54926b6dd48f','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('784a18b6-c849-4133-a169-384cc30a9e80','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('789ba686-4a9e-4c20-8fdc-9681ef5d6097','caml_control_accesos_created_by','Users','users','id','caml_control_accesos','caml_control_accesos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('791efb4d-6e61-45f8-bb84-cb1698905832','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),
('7942c38b-b45a-45d2-bb17-a1a71ab1be3a','oauth2authcodes_created_by','Users','users','id','OAuth2AuthCodes','oauth2authcodes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('79649db5-5e4b-4fc8-87a0-e44f0525c80a','securitygroups_caml_tarifa','SecurityGroups','securitygroups','id','caml_tarifa','caml_tarifa','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_tarifa',0,0),
('796ec891-f212-4a62-a501-e576cb5a292e','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),
('7b029508-7f2e-432b-9fad-f43f3e313553','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),
('7b225ffb-c17e-479e-be1a-43663392a3ac','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),
('7b23bbce-a564-4af9-9060-77ff75cd62e0','caml_control_accesos_assigned_user','Users','users','id','caml_control_accesos','caml_control_accesos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7b35c60b-1a73-46ac-9e8b-90c4f1331fe0','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),
('7b4d1733-36bb-4c48-9936-78db03f814b4','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7b904344-0ba4-42fd-a455-33d90895c8fb','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7bd00ae1-87f3-43d1-a186-4f802cc5b5d7','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),
('7bf31217-2ad7-4dd3-8519-a7eb1b784443','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),
('7ccee20e-4453-43c4-a594-7794c9acd142','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),
('7e3d2a76-734c-4b27-803a-982b58078c19','caml_vehiculos_modified_user','Users','users','id','caml_vehiculos','caml_vehiculos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7f7247dc-6e02-4736-a451-1cb6cba4921f','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7f964756-548a-4633-8eb9-e076ddc09d56','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('7fd03a2c-d86d-4b61-914a-4da33a49b036','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),
('7fe69572-a3ba-43fd-b66a-b63485d00055','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),
('80cec4b0-752b-4d1f-93f0-dd29994468bb','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8117c8a0-a4e3-4a3c-be6d-8a73bd0c95aa','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),
('8218da82-8d15-4983-99f1-533f0cc94bc6','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('82e0eeb5-f6d8-4234-b47c-7b9d3f127e76','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),
('8309a339-ace4-4744-801f-d3621eb72ad0','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('843e6c07-b014-45f3-b9f1-3ca90d6b8b14','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),
('846545b9-a4bb-4943-b4cb-b454c0f262ad','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('849d1b4f-f81c-4858-bce4-f943e70e387b','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('85162b31-748b-4762-8234-55ad283cf3e5','securitygroups_caml_pagos','SecurityGroups','securitygroups','id','caml_pagos','caml_pagos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_pagos',0,0),
('85428dd7-2ad9-4a98-987a-662b6616976c','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('856f50bf-a8bc-4da6-9d59-8dafe125b502','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),
('8659a54e-fe68-47e8-be61-09734048d116','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),
('87222254-1de8-42c4-bd0b-7eea2b9f543e','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('874a33f2-529b-4767-8a32-cf6d6740c04c','caml_mensajes_created_by','Users','users','id','caml_mensajes','caml_mensajes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('87a659d3-f73d-40a4-b5c6-ca727ec95bf8','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),
('88aa4295-e508-4d30-8730-41cef1984b2f','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('88ccfb15-6842-477e-aa85-72a74aa8eb75','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),
('88f2ed59-99f4-4108-80db-350d18e3d3b8','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8a61a0f7-f409-4355-b02d-fb8c630b0a10','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('8ab76d17-e6e8-4a7e-a298-f7647d2d2e8b','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8b1450b2-6db2-47d4-b141-40a95f5f04eb','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8ba93ad1-dcad-4ecc-aba3-af5cf3c38341','inbound_emails_autoreply_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8cf1021c-1f0c-4849-ba73-2fd5a8089e80','calendaraccount_modified_user','Users','users','id','CalendarAccount','calendar_accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8cf9ef61-8008-497f-b650-b2b555d25d62','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8e2441ff-7472-496d-b246-c9b87fdeb9a0','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('8e2c1bb6-c6f0-474a-b108-5440f2b40a65','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('8e6dbf1b-5b90-4a8f-94bf-630fe6e9f638','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),
('8ea728b4-f375-4b40-8486-23fff8696793','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),
('8ec6ad19-48e4-4f71-a3d2-4e4faa5f7aa0','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('906f6899-dfba-4cb7-8125-9bc5736f014b','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('91059d8c-1809-44a8-af6c-9d96580f4a53','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9219ee54-8251-446e-a924-3c3e312be341','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),
('92ba8367-b68c-420c-b44e-e7af4008d7d8','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('93023b35-b662-4872-af76-c99318568551','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('93102f13-6d20-4727-9a1b-67b3d3421626','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('956b8758-c9c5-4ed6-94b9-c111a84ecaed','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),
('95a183f3-bdba-45dc-a2ad-99ea5445de10','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),
('95a6f383-83db-4f5e-b9e0-239182ae70db','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('96e0a269-8800-4f5b-92b2-f9cc325771c9','externaloauthconnection_created_by','Users','users','id','ExternalOAuthConnection','external_oauth_connections','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('977bdf81-1b6a-4557-9d0b-19d83522e5ec','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('97d54c25-7f53-4c87-8eb3-fb8a3fffd1b2','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('98074525-efe1-4b3a-96e1-a792bf1dc3a4','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),
('9847e7e5-e05b-42d6-994b-ebb5f48cb153','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('986d575d-86e8-4cb8-ae88-abc56a10ef2b','oauth2authcodes_modified_user','Users','users','id','OAuth2AuthCodes','oauth2authcodes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('98c096a1-500e-4809-a810-e0f1f9aa97b3','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),
('98e2567e-9086-4157-b786-7496ee105359','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('99051add-52ee-4b7b-bcfc-60b97ea14e70','surveyresponses_contacts','Contacts','contacts','id','SurveyResponses','surveyresponses','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9914604b-d0b2-4631-a5cd-04674c6795ad','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),
('993f0296-e4f0-46de-a8ee-8c0f240606aa','mediaobjects_created_by','Users','users','id','MediaObjects','archived_documents_media_objects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('994a73dc-1ae0-4eab-bbb6-7b764bb980f3','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9a28f1e3-bc86-49b7-a5c0-cea1c56866c9','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),
('9ac5eb5c-184c-4661-8415-6a6896ddf935','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9af23fa2-df52-42f1-8576-5612343a91b0','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9bb61bea-b308-4c27-8e41-a87be6ed190d','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),
('9bdc7196-cd8b-4f7a-a9f4-6af2485dea6d','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9d76c778-5fe6-45bf-b965-63a8acafedb9','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('9e32e0e7-84ad-4811-a2f1-ee5af364c8ed','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9ed66fbe-44cc-4763-9b9e-35a9fa3fab31','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9f3b4de7-21c3-413f-8533-7cc93365feab','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9f5a4298-ae27-4079-8793-eac6977ecf6a','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9f5ac8e7-620c-41c1-8545-7e121831ccaf','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),
('9f7bb1bd-20b2-46e1-a487-666d47aa349c','email_marketing_emailman','EmailMarketing','email_marketing','id','EmailMan','emailman','marketing_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('9fb0a53a-39e9-438d-b806-ba0ed31deb1a','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),
('a1441ee3-9613-4603-af8f-ac8959455858','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a199f708-329e-490a-a3e6-06e3446fb4db','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('a19b57dd-01a2-43cc-b1a7-de8b2a85b789','manualmigrationtasks_modified_user','Users','users','id','ManualMigrationTasks','manual_migration_tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a24101c7-c2bd-4567-aaef-410ecfb4b331','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a3eeb696-0c46-49ce-85d2-a3dcd9d1646c','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),
('a44addd7-d414-4747-958f-2689903f26d5','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a463910b-e09c-4292-86fe-1a047128f406','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a4b9dee3-ba85-4f33-9195-e0d960c12c89','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a4c6fe52-9f71-4989-8167-51ad9f35df94','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),
('a4fa5ef1-a7d3-4bb3-bd4a-1449d765c0a8','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a5250a7c-0085-4d3d-9bf2-af715b03da00','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a5e4284d-81a2-4a66-babe-6f5ebde004a1','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),
('a65aea3d-5555-4df6-a50b-0bbe06be6c6a','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a67a659a-5b87-4247-b3f4-8adfc8dac951','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a6a5d334-8637-4cfb-a24c-06c3e8180201','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a6c584e4-1209-4acc-89fa-8308a31f02dc','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a7460822-b450-41c7-9471-97c686dbdd34','inbound_emails_external_oauth_connections','ExternalOAuthConnection','external_oauth_connections','id','InboundEmail','inbound_email','external_oauth_connection_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a90b2ffb-c783-4f3c-b1fd-995a4c327fe3','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('a96e6687-a66a-4eb7-aad7-b20859c3aa9d','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('aa25c084-7662-47d2-b30a-701df74082db','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('aa2ae70c-d296-4906-bfa7-c46585a4972e','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('aa4fb521-0926-42d9-a82a-aebd51930e8f','caml_pagos_created_by','Users','users','id','caml_pagos','caml_pagos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('aa56a837-fceb-4040-badc-a26303453170','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ac5c8a69-9330-4d44-8121-82cd1ec66de3','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('acb8515d-bc16-4b89-99b0-a76cabdd727b','caml_tarifa_assigned_user','Users','users','id','caml_tarifa','caml_tarifa','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('acea03fc-e4cd-4a3f-9e68-4404837ff1f9','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ad70f4c2-bbae-4d66-b2a7-760886e4b47b','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('adb85dbe-2afe-45b4-8bf5-ddb8e2ebac0e','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('add4ca24-6cca-4ceb-a858-d2e5efa8b4e7','caml_anuncios_modified_user','Users','users','id','caml_anuncios','caml_anuncios','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('adf08869-6edb-40dd-bd10-ba3f5db8a2b3','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),
('ae6c0601-62bb-4550-9779-bb60f86fa094','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),
('af701926-383e-4927-88d5-379b61f02b41','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),
('b0c52c73-efe4-4165-b7be-4cce3b97842e','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b0ed9255-5bf1-4f6e-b334-a1f729dfb246','caml_chat_caml_mensajes_1','caml_chat','caml_chat','id','caml_mensajes','caml_mensajes','id','caml_chat_caml_mensajes_1_c','caml_chat_caml_mensajes_1caml_chat_ida','caml_chat_caml_mensajes_1caml_mensajes_idb','many-to-many',NULL,NULL,0,0),
('b176c955-c26c-4888-8801-14dc6d9d3573','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),
('b33abd93-0af9-4e90-a4dc-cee7f8d21bdb','aos_invoices_caml_pagos_1','AOS_Invoices','aos_invoices','id','caml_pagos','caml_pagos','id','aos_invoices_caml_pagos_1_c','aos_invoices_caml_pagos_1aos_invoices_ida','aos_invoices_caml_pagos_1caml_pagos_idb','many-to-many',NULL,NULL,0,0),
('b3eb9f58-fbd3-46de-bd0e-d1358decc35b','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),
('b42b164b-195c-442c-a0ff-be850a2f583d','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b4c48be5-9e9b-4e1c-96f6-e8183c90f921','caml_mensajes_assigned_user','Users','users','id','caml_mensajes','caml_mensajes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b55ac4e0-c4f4-4711-95c0-0d28f3d54cdc','inbound_emails_case_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','create_case_template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b5c82a85-1b7b-4b3e-b3eb-6043a5aa97f4','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),
('b5f77992-968c-41b6-a338-e668dcce566f','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b68a0ea5-8fe5-475a-9fd6-2f08945a79b0','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('b6e2aa61-f9e2-4c93-94aa-391b377460ed','caml_apartamentos_aos_invoices_1','caml_apartamentos','caml_apartamentos','id','AOS_Invoices','aos_invoices','id','caml_apartamentos_aos_invoices_1_c','caml_apartamentos_aos_invoices_1caml_apartamentos_ida','caml_apartamentos_aos_invoices_1aos_invoices_idb','many-to-many',NULL,NULL,0,0),
('b7091453-b56c-4339-a218-dbea2d1e6151','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('b7c47321-4b84-49c1-9925-2c108215db8a','caml_apartamentos_created_by','Users','users','id','caml_apartamentos','caml_apartamentos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('b84bcb41-7a1b-4db2-9d3f-556770b15ebe','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),
('b956002f-6eb3-477f-ad52-3d1e148a6ab2','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),
('b95a5a11-6649-4c29-90c1-9dc54cf827ce','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),
('b96486ad-f7da-484e-8d46-d0600575b282','securitygroups_mediaobjects','SecurityGroups','securitygroups','id','MediaObjects','archived_documents_media_objects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','MediaObjects',0,0),
('b9c82ce5-0dc0-414b-842a-3abca5be4c0c','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bac7abd4-8ce6-4ebe-a747-ba6fc4866d85','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),
('bb14a9b5-4d14-4447-a5e4-965fa0724f4f','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('bb327ab1-2feb-45b1-8ae2-46821734e5e1','mediaobjects_modified_user','Users','users','id','MediaObjects','archived_documents_media_objects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bb3b1708-f668-4be4-b75e-0f29363fa02f','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bb68ea44-dff2-4491-a8b4-8d8c14b96262','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bbe85f96-f7f5-4b6f-adc7-dab325423eb0','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('bcc9f642-e073-4ad5-bfdf-e9a360c63920','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bd0d9dbd-fd9e-4e50-9e3f-33ab810fa84b','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('bddd9ea6-92df-467c-a169-53993a456765','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),
('be0a6176-824f-417b-a1c6-13fa5382df85','caml_anuncios_created_by','Users','users','id','caml_anuncios','caml_anuncios','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('be522adb-fb88-4672-8dd2-eb9a424ee29f','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),
('bf1999b1-9d51-4a04-8e6c-f9f4567c5d57','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),
('bf217835-8d55-4709-b46c-9623a057a064','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('bf4e0e9d-6ecb-4bb7-af73-15dd7ca684a5','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('bfabce7a-1546-4716-978c-11e330993a00','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c049edd8-3222-4098-87b1-0d8317269304','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c097af71-b60b-49fc-9219-4404b31ccc9b','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c11f9197-f74f-4595-a24b-4d597549ddd9','asynctaskitems_created_by','Users','users','id','AsyncTaskItems','async_task_items','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c267e623-3028-49f5-b697-d707c1f9d94f','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),
('c3687eb3-32e0-4d5d-bbde-8e2b39488c82','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),
('c3f4ffca-6e02-4fd9-adac-83b09ab77a2f','email_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','Emails','emails','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c45f3b67-7e08-419b-8adb-a5ec360b6112','caml_apartamentos_caml_control_accesos_1','caml_apartamentos','caml_apartamentos','id','caml_control_accesos','caml_control_accesos','id','caml_apartamentos_caml_control_accesos_1_c','caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida','caml_apartamentos_caml_control_accesos_1caml_control_accesos_idb','many-to-many',NULL,NULL,0,0),
('c55f24f7-b675-48ca-b453-bd73f4a8f5c4','caml_mensajes_modified_user','Users','users','id','caml_mensajes','caml_mensajes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c5f38abf-8c23-4d01-97f7-c4c4561c0b71','prospectlists_assigned_user','Users','users','id','ProspectLists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c65baa5b-2e96-4976-afbb-07c332d487cd','email_marketing_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','EmailMarketing','email_marketing','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c68ec56c-ccf1-43b6-aaa7-cad1f4d82d79','calendaraccount_assigned_user','Users','users','id','CalendarAccount','calendar_accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c6c19c40-69a2-4e9d-9977-8ccb49c357b5','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('c6df11f4-5fd7-4ec4-a008-cf0d1d98e286','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),
('c73644d0-3033-4adf-9293-373a95f74bbf','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),
('c8566bed-fc69-4f2c-85ad-4f22105eade6','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),
('c86ef7e8-a4f8-4c9d-bf85-0f4f7b22b1c4','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('c948ad1e-82f7-4736-bdcb-4774853d2bdc','securitygroups_caml_chat','SecurityGroups','securitygroups','id','caml_chat','caml_chat','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_chat',0,0),
('c9665f97-0600-4cb0-9131-8b133c5f5227','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('c96b210a-b0e4-4255-afea-5249343403d6','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),
('c9dfbece-4f5b-4ced-b3d7-bf7c46855381','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),
('ca1112f6-b55e-42ef-b1aa-1c16e7afd83b','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cb1f7186-ef90-42f5-83df-75b6aa358920','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cb24e68e-24b5-485d-988d-cd1c01e3951e','caml_apartamentos_assigned_user','Users','users','id','caml_apartamentos','caml_apartamentos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cb58b0ad-d284-44f1-bbf3-08e0c4517587','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cc147967-817c-46c8-97ac-7e8d9045f85a','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),
('cc6fef89-c0c9-471b-b606-c45350fde933','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ccea8308-071c-45a7-be90-58a1b88f7125','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cd99a30f-8a15-4eeb-9a1f-10d858431797','caml_parqueaderos_assigned_user','Users','users','id','caml_parqueaderos','caml_parqueaderos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cdb5ade2-34ed-46bb-ba2c-c03f66214870','calendaraccount_created_by','Users','users','id','CalendarAccount','calendar_accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cdbf99d6-3810-4621-9730-b39fda86bf17','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('cdf5eab1-2d24-40f9-bf59-384366ed61e7','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cea9cec2-d0ea-45d9-ba39-a7c6fefdd963','outbound_email_owner_user','Users','users','id','OutboundEmailAccounts','outbound_email','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ceb4859e-91c7-48ec-bd10-673c81719c6c','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('cedf87c5-561e-4c95-ac10-5c3412167945','securitygroups_caml_parqueaderos','SecurityGroups','securitygroups','id','caml_parqueaderos','caml_parqueaderos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_parqueaderos',0,0),
('cf3344d2-9abe-48a3-878c-094bccbf64e3','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),
('cf8cf4c7-2c43-4bdf-9fc9-d686a194d729','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d056c710-10b2-4ce8-82fc-fb28d98dc231','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d091476c-1e8d-4340-be64-42aee518641e','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d1368127-ab84-4a34-b94b-8404898dbe7a','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d1566ad9-3049-47ed-8366-b2e21f336cfd','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d159c7de-3c66-4d6e-8a4f-afd770207d83','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d2a43fd9-13b1-4d47-9b4e-ef3c932d6ab2','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('d2dfd19c-a894-4aff-a58d-48a145d930ce','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d38f121a-815d-473d-9e3b-b4ee5a182ebf','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),
('d3b0022b-eeb3-41e4-b4ee-0ce08108289f','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),
('d429027a-7107-463f-a5e8-32f6f68fb315','caml_tarifa_modified_user','Users','users','id','caml_tarifa','caml_tarifa','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d573fd76-add3-46fe-834b-b712a403b3f6','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),
('d5ee60a3-216f-4602-88bc-5a4c0491f8c3','securitygroups_inboundemail','SecurityGroups','securitygroups','id','InboundEmail','inbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','InboundEmail',0,0),
('d65497ea-34d8-4e4c-a58d-7833f1d3dff7','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d6a6a8ee-6816-4d81-b532-e67343aaadb1','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d7068f40-a3ab-4fee-b50e-a73e9245eeac','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),
('d7275bc8-2b2b-487b-ac6a-64146ff62ea2','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d73b171c-9c38-43ad-a081-c404b814aaf2','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d746042f-86f7-454e-bf30-094b43275da9','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d78ff33c-79ff-40a5-a4bb-c60dd56e90d7','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d79ddaed-dcdb-441a-8ed0-f4ffab4a47f5','asynctaskitems_modified_user','Users','users','id','AsyncTaskItems','async_task_items','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d7a0a75d-6887-4a37-bff1-e7397f2bd572','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d7c38828-e957-46d4-9fb9-2c83ce47ced8','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d8d8131e-1489-4487-bc7d-899072045789','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d8eb487c-f4d8-43e1-90a0-06329becf043','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('d91d584c-6598-4a0c-9f79-00d779ebf0de','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),
('da002f02-8382-4565-b0b8-eab7197df0c1','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('dabef6f0-d69d-4752-aef2-ac835fbc0d30','mediaobjects_assigned_user','Users','users','id','MediaObjects','archived_documents_media_objects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('daf2b347-ecf1-4e8c-a70b-df26e699aadd','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('dbaf2843-0d7e-4341-8b23-a08241bc0ef2','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('de50306b-c60a-4f65-b481-91a27d4466f3','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),
('def1f773-9171-4663-a222-8d5918491664','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('dfc1426f-c7c6-4bde-ac6b-a7c7c3bf18f4','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('dfea28c8-b8f8-468b-bfd1-d2a19d5b8ea7','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('e0d6bbd6-1486-4e6d-919a-57d8e75ff7ed','processes_assigned_user','Users','users','id','Processes','processes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e1734391-e2c1-430f-b7c7-493f882e32ec','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),
('e1de680f-43a1-405e-9615-5bdb98735d32','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),
('e2224ad0-b39b-4543-ac6f-1418576f1ef1','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),
('e35d8790-d655-4db5-95f6-488060d537d4','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),
('e39b4af9-7382-4d3f-aba6-c3bc23e0e1cf','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),
('e3aa96d0-974a-4ba2-9832-8d91d98c7848','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),
('e3b8bd8d-7df4-42d7-b9c5-150ddcd49789','externaloauthprovider_created_by','Users','users','id','ExternalOAuthProvider','external_oauth_providers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e43ccc51-c677-4cd2-8def-23f02ab4fc0b','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e48c177b-5f2e-4ea2-ac90-9ec40bd03201','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e4ce8922-d96b-4642-a86b-78d5d184b8ea','caml_vehiculos_created_by','Users','users','id','caml_vehiculos','caml_vehiculos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e51a80e9-a8a3-4401-8f6c-602c6b880397','email_marketing_campaignlog','EmailMarketing','email_marketing','id','CampaignLog','campaign_log','marketing_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e5e3d40e-63ad-49e8-8106-ba4872d33036','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),
('e5fd7e3f-549e-46c6-b41d-8b8308cfcb3e','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),
('e60bd8ba-5640-4116-88b0-2d463c15117a','securitygroups_caml_apartamentos','SecurityGroups','securitygroups','id','caml_apartamentos','caml_apartamentos','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','caml_apartamentos',0,0),
('e61b410c-b478-4b6b-91f7-0d115915d9b3','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e633076c-8f4e-4f9b-ae63-7b45d10e7fc2','caml_pagos_assigned_user','Users','users','id','caml_pagos','caml_pagos','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e64bf6a5-64c8-4faf-941b-6eea69b89b34','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e8f09cba-de77-4849-8f72-bc89635500bf','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e91b2f40-e8a4-44d7-8796-036cef4af401','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('e94f92d5-92a8-419e-8883-0bef70c57993','securitygroups_externaloauthprovider','SecurityGroups','securitygroups','id','ExternalOAuthProvider','external_oauth_providers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthProvider',0,0),
('e9d9e0d4-ee00-4d0e-84f4-d5ebda77e877','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ea199a3a-4d8b-4beb-ac5f-0ccf71fbfdf3','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ea302230-f003-4af7-a93f-cc0ecb4e46b0','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ea3f62a7-4593-4ff2-bb63-4defcd62bbb4','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),
('eaa397f6-3ef2-4a2d-b1e8-ab021be88a58','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('eaaefdf6-4d75-4814-bcb7-64e814fa29dd','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('eae4e3da-2343-47bd-9c41-85efbb634ca3','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('eae946d4-e1ae-4b1e-826c-775ee5d6674a','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('eb69868a-f2b1-47f3-a494-6e6426f2e653','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('ee3526ce-437a-4b90-b087-97b7c550ee37','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ee85530d-ce29-4422-9aee-1ffbb6c64ad2','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),
('eeae02cb-33c9-4b20-a78a-213de8ac1f7b','oauth2authcodes_assigned_user','Users','users','id','OAuth2AuthCodes','oauth2authcodes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('eeb35be1-b25c-40df-97a2-f6d5ead300fa','securitygroups_externaloauthconnection','SecurityGroups','securitygroups','id','ExternalOAuthConnection','external_oauth_connections','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthConnection',0,0),
('eec25263-a807-4fbe-8057-67b9b70a6242','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('eefb01f4-6044-4402-9e27-f543221e406b','processes_created_by','Users','users','id','Processes','processes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f00ea074-dc74-4232-be77-776a11fd458a','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f08c85ef-9b07-4824-901c-c0dc2cd545a6','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f14227d6-5aec-40e3-a54d-8ce24fbd1196','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f1c8fd14-e664-43f4-a8a3-2528508ceab0','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f275ec36-c44e-421f-b8a4-4dc319ffacea','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),
('f35b303d-eb5d-4333-a3c8-a1f42607191c','caml_parqueaderos_created_by','Users','users','id','caml_parqueaderos','caml_parqueaderos','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f362ee8c-04ca-48e4-bfe2-719a4e448aba','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f3e1736c-342d-423b-bf31-eb238e5dae12','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f4e2ea47-25e0-4a1a-ad55-80e14acbd7f2','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f51b1ca5-8e42-4de8-8482-d5415a8bfd58','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f5273031-88b5-405d-8219-a7e70097633b','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),
('f5699d6c-3986-445f-a3a6-494ecb54c4f7','caml_parqueaderos_modified_user','Users','users','id','caml_parqueaderos','caml_parqueaderos','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f5a6e1ba-e23a-477f-8917-c09af2f0dc4f','users_users_password_link','Users','users','id',NULL,'users_signatures','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f5a8c1f7-7194-4d71-b74d-e48aa3ac2377','securitygroups_manualmigrationtasks','SecurityGroups','securitygroups','id','ManualMigrationTasks','manual_migration_tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ManualMigrationTasks',0,0),
('f6de95fe-b9d2-4704-a626-2f8e8cffec19','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f6ec17de-a50b-4633-92f7-48059f56afd8','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f78e00d1-8098-48ee-ac0b-ca53ad4924a3','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f7d4f9b2-16da-489b-ab9c-720238a34727','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f80d0251-a045-4244-b688-f0be26dc876b','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f8439c86-68b4-4bcc-b398-ce641742f518','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),
('f8b92d81-aeb9-4c29-a582-48c08e23791c','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f8f18680-5620-4767-956b-296446d326a6','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('f9bd868d-9c9a-4c79-a0f0-a93785c22f78','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fa8c8839-ba8c-4761-a218-46df7dc8e1f5','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('facc87db-6e32-4b78-aa21-aa82bf25899b','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),
('fad86122-670d-42fa-a3c0-c3aaf5a8ea8e','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fae8ab03-4744-4554-9c4c-cc988261c18e','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fc37cf1e-b2ad-454e-b5c0-06d69d6e2e7a','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),
('fd113eef-734b-4b77-9879-ef5baf97099f','surveyquestions_surveyquestionresponses','SurveyQuestions','surveyquestions','id','SurveyQuestionResponses','surveyquestionresponses','surveyquestion_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fd4c0a50-8910-4290-957e-8e73b7737800','surveyresponses_accounts','Accounts','accounts','id','SurveyResponses','surveyresponses','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fd8926f6-e2da-4e71-b304-bf8d115a1540','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fd939f74-c3fe-4efd-a643-7d42a403bb95','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fdfb5e2a-a603-4d00-ae10-802225afa522','externaloauthprovider_modified_user','Users','users','id','ExternalOAuthProvider','external_oauth_providers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fdfe9cdd-228d-452f-9465-b75813d6789f','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('fe450bb1-45c4-4041-92e0-ae525c46a3c3','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),
('ff93348c-c28f-4cdc-8aa2-b84d45be000a','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),
('ffe11cf2-a06e-422e-be9d-b421f1c46cf6','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0);
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
('04f44d76-6102-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','bb493a9f-dbef-4377-b3e9-d27e7a49c032','Cases','2026-06-05 00:00:00',NULL,NULL,0),
('0c345147-6102-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','5c3e0090-f44d-45b9-9347-acf43dd79b57','Cases','2026-06-05 00:00:00',NULL,NULL,0),
('1296906e-0b01-4131-9e4e-3a1ce6aacc48','59c9506c-79a2-45a2-a81c-8923dc1770d9','c5ae1ae4-bb15-4697-b584-3a5065025535','caml_apartamentos','2026-06-05 16:03:33',NULL,NULL,0),
('1906c84f-5f9c-11f1-a230-7a1c31c0a057','c4251f42-bae0-43a5-8c80-1b16e689cffb','a14cd58f-4f3f-46c5-8be0-593addae1d60','caml_anuncios','2026-06-03 00:00:00',NULL,NULL,0),
('1a54ceb1-60f8-11f1-b995-fa8e0603d1a7','c4251f42-bae0-43a5-8c80-1b16e689cffb','c5ae1ae4-bb15-4697-b584-3a5065025535','caml_apartamentos','2026-06-05 18:39:48',NULL,NULL,1),
('1a7cbc4c-6050-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','edda11e6-c71b-40c3-a298-7ba6db064835','AOS_PDF_Templates','2026-06-04 00:00:00',NULL,NULL,0),
('2019907a-6050-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','a3d300e6-c195-4d6e-9a5e-17adae5f610c','Notes','2026-06-04 00:00:00',NULL,NULL,0),
('266b127c-3e56-43b9-bcde-cf0ec87bcf30','4443348b-7b93-4f68-949c-3ceb6d81bf5c','4b9fcd3f-7efa-420f-80ea-dce4e80cdcf1','Accounts','2026-05-20 21:19:41',NULL,NULL,0),
('34d89c3e-a821-4bcb-b644-d8ae3f22668d','4443348b-7b93-4f68-949c-3ceb6d81bf5c','6b965a1c-d5e2-4c8e-a0b1-029c86711879','caml_apartamentos','2026-05-27 22:11:59',NULL,NULL,0),
('3d966afd-60f8-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','63955f6a-4424-443e-8ac7-d2edca423ad8','caml_chat','2026-06-05 00:00:00',NULL,NULL,0),
('416838c0-a74a-4835-bc21-ea3faba98fa3','59c9506c-79a2-45a2-a81c-8923dc1770d9','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','Accounts','2026-06-03 15:51:05',NULL,NULL,0),
('436a80fe-60f8-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','fa08ebdd-8fe5-4562-b69d-690c9b9fe057','caml_chat','2026-06-05 00:00:00',NULL,NULL,0),
('4ef93573-6051-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','f55950d7-7bcf-41b6-8405-0090714624a3','FP_Event_Locations','2026-06-04 00:00:00',NULL,NULL,0),
('604a864d-60f8-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','6f5a49e8-8ccd-4422-a650-35baf63ef1be','caml_chat','2026-06-05 00:00:00',NULL,NULL,0),
('62ce17e4-60f8-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','b173212c-ce51-4237-8a7b-26e0dc80cf77','caml_chat','2026-06-05 00:00:00',NULL,NULL,0),
('6fa24efe-604b-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','95e9b3a2-e76b-4aa8-ac1e-5b05bffc3b35','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('772e4415-6050-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','b4fb7fa5-633d-4f8d-9490-826a29dae148','EmailTemplates','2026-06-04 00:00:00',NULL,NULL,0),
('78a4c5eb-60f9-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','72a6b878-49cb-439f-956d-d78e89071ee7','Cases','2026-06-05 00:00:00',NULL,NULL,0),
('7e334faf-610e-11f1-b995-fa8e0603d1a7','c4251f42-bae0-43a5-8c80-1b16e689cffb','59283cba-4f1c-446f-985f-d6fa1fd7e64f','AOS_Invoices','2026-06-05 00:00:00',NULL,NULL,0),
('7e34143a-610e-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','59283cba-4f1c-446f-985f-d6fa1fd7e64f','AOS_Invoices','2026-06-05 00:00:00',NULL,NULL,0),
('7f04473e-6031-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','d16f9531-9edc-4479-ac83-10111b637fc6','caml_pagos','2026-06-04 00:00:00',NULL,NULL,0),
('8197bc36-603c-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','726feaa7-5b34-436d-b35c-c6c3f5e144b7','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('85fb6f79-610e-11f1-b995-fa8e0603d1a7','c4251f42-bae0-43a5-8c80-1b16e689cffb','8643f618-898b-4a63-9e03-1355c056ff3a','AOS_Invoices','2026-06-05 00:00:00',NULL,NULL,0),
('9f612bb5-603c-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','c2735663-9462-44ea-b81b-11f3b46aac51','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('9f688a2d-6050-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','2a73fa1f-f719-4bbc-a7e4-394474df383b','EmailTemplates','2026-06-04 00:00:00',NULL,NULL,0),
('a5089739-604b-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','40a0b922-7e95-4a46-8d2d-f507ce25d815','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('a8cd9bc3-6110-11f1-b995-fa8e0603d1a7','c4251f42-bae0-43a5-8c80-1b16e689cffb','dfee37d3-83d0-4491-932d-275cd3be26c0','AOS_Invoices','2026-06-05 00:00:00',NULL,NULL,0),
('ae181878-6035-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','c5ae1ae4-bb15-4697-b584-3a5065025535','caml_apartamentos','2026-06-05 16:03:27',NULL,NULL,1),
('b75b10dd-6051-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','9dc6a25e-1261-47ae-8853-3e2cc015dc98','FP_events','2026-06-04 00:00:00',NULL,NULL,0),
('b7610eb3-604b-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('c18c11ae-6059-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','9b7eafd7-0b99-4da9-9f98-9b0dfa91d394','caml_chat','2026-06-04 00:00:00',NULL,NULL,0),
('c27fc835-6b25-4ac8-bcd8-438a02234a00','59c9506c-79a2-45a2-a81c-8923dc1770d9','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Contacts','2026-06-03 15:58:04',NULL,NULL,0),
('c30432c6-603f-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','0e1b8786-d0cd-4bca-884e-eaa961844fb5','caml_tarifa','2026-06-04 00:00:00',NULL,NULL,0),
('c4405d80-eedc-4e29-8171-eac64486c31f','4443348b-7b93-4f68-949c-3ceb6d81bf5c','19981018-5fc7-435a-9cb5-0d1d479b7cab','Contacts','2026-05-28 16:02:52','','',0),
('c60062d1-603c-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','0f9f6350-9a10-4ca8-b471-b9cdda9623a3','AOS_Invoices','2026-06-04 17:57:21',NULL,NULL,1),
('cc2c061b-6059-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','24c8e2c5-e227-42a3-950a-42d3985345c4','caml_mensajes','2026-06-04 00:00:00',NULL,NULL,0),
('cc82fb75-6048-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','09b1cdd6-2100-4e67-8af7-1c3d976d36a1','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('ce9f5fb3-605a-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','74d483a9-ac9e-487c-a5b7-3029a126cd04','Documents','2026-06-04 00:00:00',NULL,NULL,0),
('cecf51cd-610d-11f1-b995-fa8e0603d1a7','c4251f42-bae0-43a5-8c80-1b16e689cffb','da5d7a18-0797-45ac-8e46-5db466ba9f8f','AOS_Invoices','2026-06-05 00:00:00',NULL,NULL,0),
('d21fa5ec-6059-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','ce784db3-2f21-47da-9c07-d3d17f92b3ee','caml_mensajes','2026-06-04 00:00:00',NULL,NULL,0),
('d3173525-6102-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','9234a9ee-7c99-41bf-9f12-c12cde2db5fc','Meetings','2026-06-05 00:00:00',NULL,NULL,0),
('d320ce2a-603f-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','7b5eff14-e01e-4916-a7b6-d90cc8146098','caml_vehiculos','2026-06-04 00:00:00',NULL,NULL,0),
('d6511db1-60f9-11f1-b995-fa8e0603d1a7','c4251f42-bae0-43a5-8c80-1b16e689cffb','374bef86-c49d-433b-94fc-3270dc5bc095','caml_control_accesos','2026-06-05 00:00:00',NULL,NULL,0),
('d8709ab4-603f-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','b9461b9a-7b3d-4a66-a6df-43688ccbc766','caml_control_accesos','2026-06-04 00:00:00',NULL,NULL,0),
('da7d5d5d-605b-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','aa96a3d9-50ad-48de-9e05-c6fb575bc20f','Bugs','2026-06-04 00:00:00',NULL,NULL,0),
('e17fa9e0-604e-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','690081fb-157f-49ad-a1c1-6d55d30bdc41','AOS_PDF_Templates','2026-06-04 00:00:00',NULL,NULL,0),
('e4db441c-6048-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','c6d901cf-2de6-407c-881a-f65f0be035b9','AOS_Invoices','2026-06-04 00:00:00',NULL,NULL,0),
('ed8cfcfb-60f8-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','933d55d0-8211-48e7-9096-6f8de4d3d1ec','caml_vehiculos','2026-06-05 00:00:00',NULL,NULL,0),
('f034a22d-604e-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','1f6006db-b944-44af-9c93-406a71aba0c4','Notes','2026-06-04 00:00:00',NULL,NULL,0),
('f4ada2b3-6059-11f1-87cd-86c83c289561','c4251f42-bae0-43a5-8c80-1b16e689cffb','01be83e1-fea8-4662-b486-b6e4b47ce74b','caml_mensajes','2026-06-04 00:00:00',NULL,NULL,0),
('f9b2b34a-6102-11f1-b995-fa8e0603d1a7','59c9506c-79a2-45a2-a81c-8923dc1770d9','71b62c4e-0904-42af-b13c-ebf6b8fb7ff8','caml_chat','2026-06-05 00:00:00',NULL,NULL,0),
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
('5398138a-0d46-4e9c-87da-b72dd35f6ce7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:5c3e0090-f44d-45b9-9347-acf43dd79b57:[Queja] prueba] {SugarFeed.FOR} [Accounts:c5ae1ae4-bb15-4697-b584-3a5065025535:]: nuevo','2026-06-05 17:14:44','2026-06-05 17:14:44','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0,NULL,'Cases','5c3e0090-f44d-45b9-9347-acf43dd79b57',NULL,NULL),
('60fbfb6c-f166-4c53-9741-d57afb0f76e2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c6cf26f8-2c58-47f3-9789-05affa0c3b54:fsaf fsaf]','2026-05-21 21:34:51','2026-05-21 21:34:51','1','1',NULL,0,'1','Contacts','c6cf26f8-2c58-47f3-9789-05affa0c3b54',NULL,NULL),
('64d9adac-dad7-44b9-bb8a-b135ab468c9c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c0b0c51a-f2cc-4591-8263-2fb09088cf58:manuel murillo]','2026-06-03 15:45:47','2026-06-03 15:45:47','1','1',NULL,0,'1','Contacts','c0b0c51a-f2cc-4591-8263-2fb09088cf58',NULL,NULL),
('81ba5fec-1edd-428a-bddb-b56fc3209cce','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b571a0d1-3e78-4c3e-8532-bf995018d77a:prueba maldonado]','2026-05-21 21:05:49','2026-05-21 21:05:49','1','1',NULL,0,'1','Contacts','b571a0d1-3e78-4c3e-8532-bf995018d77a',NULL,NULL),
('864dc288-0215-416f-ab64-9419a5f76f18','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:915a3e51-20be-437b-a1b3-f4c30498f451:fsaf fsaf]','2026-05-21 20:37:24','2026-05-21 20:37:24','1','1',NULL,0,'1','Contacts','915a3e51-20be-437b-a1b3-f4c30498f451',NULL,NULL),
('88b87e29-e52b-422b-af99-2de5d18b1b02','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:bb1e356a-6e99-4350-ac48-3989d0b6a654:fasf fsaf]','2026-05-21 20:30:57','2026-05-21 20:30:57','1','1',NULL,0,'1','Contacts','bb1e356a-6e99-4350-ac48-3989d0b6a654',NULL,NULL),
('8ace8b14-77f5-40ca-a665-491b79a7ecc0','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:bb493a9f-dbef-4377-b3e9-d27e7a49c032:[Petición] asff] {SugarFeed.FOR} [Accounts:c5ae1ae4-bb15-4697-b584-3a5065025535:]: fsaf','2026-06-05 17:14:32','2026-06-05 17:14:32','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094',NULL,0,NULL,'Cases','bb493a9f-dbef-4377-b3e9-d27e7a49c032',NULL,NULL),
('8f25266a-f71a-4674-9e96-d44315314964','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:d53244c3-4ae4-4594-a8ef-d8edd533cc20:alejandro maldonado]','2026-05-21 20:22:16','2026-05-21 20:22:16','1','1',NULL,0,'1','Contacts','d53244c3-4ae4-4594-a8ef-d8edd533cc20',NULL,NULL),
('99bb7ec9-286b-4490-9265-60c0190c5eba','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:353e6a1e-4018-4ee8-bce9-d436b9ab361c:[Reclamo] solicitud datos de parqueadero] {SugarFeed.FOR} [Accounts:mock-apto-101:]: Nuevos elementos','2026-05-27 20:15:39','2026-05-27 20:15:39','400fdbe3-e938-4b6a-8deb-a459c22ccba5','400fdbe3-e938-4b6a-8deb-a459c22ccba5',NULL,0,NULL,'Cases','353e6a1e-4018-4ee8-bce9-d436b9ab361c',NULL,NULL),
('99d168d5-6c1e-4a92-a70f-771bfe863ae2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b0211b4a-7a38-4b27-b02b-6f32317df17d:alejandro maldonado]','2026-05-21 20:40:51','2026-05-21 20:40:51','1','1',NULL,0,'1','Contacts','b0211b4a-7a38-4b27-b02b-6f32317df17d',NULL,NULL),
('9ddde3fb-9c7e-4632-8fb2-b0093c6fe411','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:5697accd-0b22-486d-a0c9-b0b980bc7fa2:maria eugenia]','2026-05-21 20:53:10','2026-05-21 20:53:10','1','1',NULL,0,'1','Contacts','5697accd-0b22-486d-a0c9-b0b980bc7fa2',NULL,NULL),
('a02edab1-1f88-43bb-aac2-647c227bd7fd','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:cd36c614-09f0-4914-98da-374ffdb68d11:dad dasd]','2026-05-21 20:26:53','2026-05-21 20:26:53','1','1',NULL,0,'1','Contacts','cd36c614-09f0-4914-98da-374ffdb68d11',NULL,NULL),
('a1f44f89-f0da-41c1-97ab-7497e0d34cb2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:766ace6c-1013-4afd-9b11-d5897c456ade:fsaf fsaf]','2026-05-21 20:36:49','2026-05-21 20:36:49','1','1',NULL,0,'1','Contacts','766ace6c-1013-4afd-9b11-d5897c456ade',NULL,NULL),
('a379c0b0-3883-4a9f-8ac0-7a7cc6fae417','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CASE} [Cases:72a6b878-49cb-439f-956d-d78e89071ee7:Solicitud Sorteo Parqueadero: Apto c5ae1ae4-bb15-4697-b584-3a5065025535] {SugarFeed.FOR} [Accounts:c5ae1ae4-bb15-4697-b584-3a5065025535:]: Solicitud de asignació','2026-06-05 16:13:21','2026-06-05 16:13:21','57bef8d2-239b-4960-9c63-f8bc273b8094','57bef8d2-239b-4960-9c63-f8bc273b8094','n de parqueadero comunal.\nVehículo ID/Placa: 933d55d0-8211-48e7-9096-6f8de4d3d1ec\nNotas del Residente: fsaf',0,NULL,'Cases','72a6b878-49cb-439f-956d-d78e89071ee7',NULL,NULL),
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
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8mb3;
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
(72,'798aaf66-c48a-41a2-a8a1-99e669cd0554','1','FP_Event_Locations','5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:35','detailview','70b95717f294b867943b8a60b16518a3',0,0),
(73,'8a8a34bf-5c31-461c-be6d-7a2d52b3d4df','1','FP_Event_Locations','5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:35','detailview','70b95717f294b867943b8a60b16518a3',0,0),
(74,'5f5fcd8c-be01-4566-85af-9a076f93244c','1','FP_Event_Locations','5e442f56-f07b-4f3e-988c-98067e8d7ce0','prueba','2026-05-26 15:55:36','detailview','70b95717f294b867943b8a60b16518a3',0,0),
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
(357,'4532fd83-3283-4e82-8079-83fdcf8c351e','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 18:56:54','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(358,'72f92eef-04d6-4f7e-9052-8ee91e1f3ccb','1','AOS_Invoices','09b1cdd6-2100-4e67-8af7-1c3d976d36a1','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:08:45','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(359,'b3a28001-0fbe-481a-b349-8ca4b002ab7d','1','AOS_Invoices','09b1cdd6-2100-4e67-8af7-1c3d976d36a1','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:08:47','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(360,'ebb69598-9f09-433a-b951-9b8faf2bcbd0','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:30:14','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(361,'47d7d792-e616-45f7-a8d4-8d8821afebd8','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:30:16','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(362,'b7b50450-ebdf-43d6-9286-ffede1771390','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 19:30:19','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(363,'1a55a6ae-980e-4448-8847-ac85fd06417c','1','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-04 19:30:22','detailview','c20e13d1daecc287981afdf44f21a665',1,0),
(364,'ad41cac9-e7af-475c-815a-1f16b647e5f4','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:30:50','detailview','3ebfe77a41322c34ae8539043a539d30',1,0),
(365,'f9f8ef51-5d14-49c2-84a9-469c546cc795','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:30:51','detailview','3ebfe77a41322c34ae8539043a539d30',1,0),
(366,'77bb66ea-9348-487d-bbc5-71788f927dd7','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:30:52','editview','3ebfe77a41322c34ae8539043a539d30',1,0),
(367,'40217807-6a8f-42be-947b-b98805c352ed','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:30:52','editview','3ebfe77a41322c34ae8539043a539d30',1,0),
(368,'b5a18615-9804-45e7-895a-9164f6339307','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:30:54','detailview','3ebfe77a41322c34ae8539043a539d30',1,0),
(369,'95ad4974-e1c5-4439-b48d-9c899fcfa43c','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:31:05','detailview','3ebfe77a41322c34ae8539043a539d30',1,0),
(370,'50103d1e-d9d3-492f-9c0b-642c8cbaea46','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:31:06','detailview','3ebfe77a41322c34ae8539043a539d30',1,0),
(371,'b835db1f-9197-49bf-9af9-363287c1ecda','1','Users','57bef8d2-239b-4960-9c63-f8bc273b8094','manuel murillo','2026-06-04 19:31:07','detailview','3ebfe77a41322c34ae8539043a539d30',1,0),
(372,'91a6ad3b-62c7-4d40-b134-97f066b7417b','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 19:52:13','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(373,'af70d527-704b-4f50-be8a-58778a23ad2b','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 19:52:13','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(374,'81eede62-52b3-40c7-ab4b-8745ec536f35','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 19:52:14','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(375,'f7ecbacc-bbfe-42e9-828a-33625f4e4583','1','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:52:34','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(376,'88f01ff7-dc6e-4680-b109-63b27dc7811e','1','AOS_Invoices','726feaa7-5b34-436d-b35c-c6c3f5e144b7','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 19:52:35','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(377,'353ad929-5fd1-4b4c-8e0d-f397035b1e9f','1','AOS_PDF_Templates','edda11e6-c71b-40c3-a298-7ba6db064835','ConectaHogar - Estado de Cuenta de Parqueadero','2026-06-04 20:00:58','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(378,'7743331c-4e97-4fbb-bf59-6c1cfbe40fbb','1','AOS_PDF_Templates','edda11e6-c71b-40c3-a298-7ba6db064835','ConectaHogar - Estado de Cuenta de Parqueadero','2026-06-04 20:00:58','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(379,'cb0be8f6-cc27-47a9-b8c2-19ac43b277d9','1','AOS_PDF_Templates','edda11e6-c71b-40c3-a298-7ba6db064835','ConectaHogar - Estado de Cuenta de Parqueadero','2026-06-04 20:00:59','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(380,'8e72aca6-0842-4d65-93a9-c423bd514fab','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 20:01:03','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(381,'52e30698-bcbf-4b66-a8e8-05b29aa948d6','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-04 20:01:04','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(382,'da8f679f-adc0-45c9-8eba-eaec82abf85f','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:33','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(383,'85a63e7a-898e-46f4-a73c-109113ec8321','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:35','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(384,'e50b773a-dcab-4adc-9e24-3e4c64707e80','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:36','editview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(385,'2141c397-66c0-4ae6-9d5f-bdb3ac5ad039','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:36','editview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(386,'2f6b53b5-c5ed-4dbc-a287-8bb6d6b3dd4f','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:38','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(387,'6ea7cc2f-6786-41b8-ae1f-a39cc6c6d90c','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:42','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(388,'95cf3dbe-9330-481c-b42c-3b490cab031c','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:43','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(389,'98b8076f-551c-426d-9913-dba6dd509d28','1','AOS_PDF_Templates','690081fb-157f-49ad-a1c1-6d55d30bdc41','ConectaHogar - Cuota de Administración General','2026-06-04 20:01:44','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(390,'cfb9280a-396d-4f7b-84b4-5f286cc058b1','1','EmailTemplates','b4fb7fa5-633d-4f8d-9490-826a29dae148','ConectaHogar - Notificación de Cuota de Administración','2026-06-04 20:03:33','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(391,'7d0d4b18-e884-4fd0-a402-7362603b0833','1','EmailTemplates','b4fb7fa5-633d-4f8d-9490-826a29dae148','ConectaHogar - Notificación de Cuota de Administración','2026-06-04 20:03:34','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(392,'1edfb074-51bf-41a3-a26b-3457a64bb10d','1','EmailTemplates','b4fb7fa5-633d-4f8d-9490-826a29dae148','ConectaHogar - Notificación de Cuota de Administración','2026-06-04 20:03:35','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(393,'a24893a2-0828-4dd6-92bf-3284883540b8','1','EmailTemplates','2a73fa1f-f719-4bbc-a7e4-394474df383b','ConectaHogar - Notificación de Cobro de Parqueadero','2026-06-04 20:04:41','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(394,'8be8faca-bf28-4b5a-81ff-f37c93cc386b','1','EmailTemplates','2a73fa1f-f719-4bbc-a7e4-394474df383b','ConectaHogar - Notificación de Cobro de Parqueadero','2026-06-04 20:04:41','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(395,'b9baf052-b898-4f58-8b14-b83c98c2a64a','1','EmailTemplates','2a73fa1f-f719-4bbc-a7e4-394474df383b','ConectaHogar - Notificación de Cobro de Parqueadero','2026-06-04 20:04:42','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(396,'dd76f111-f29d-45d4-9475-3583c0f9e026','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:09:35','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(397,'c3f28f56-5126-48c4-a2c5-dd489ca14655','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:09:36','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(398,'315e97e4-53d2-4d26-8a11-ef7e9b4bebf8','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:09:37','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(399,'5d4c2ffc-b457-49b0-a1ce-bcba8dbdf7e8','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:09','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(400,'ee9092d9-de33-4876-85c9-e5d920cec245','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:10','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(401,'3210e968-77fc-4bf4-9dc8-af439efa7c83','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:11','editview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(402,'27450999-990c-4158-865e-e1bf36acf596','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:11','editview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(403,'aa4cc4c9-a372-4de7-8496-9ca83332c6ae','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:13','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(404,'6e348f07-5489-41e7-8465-adbcfb846b4d','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:15','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(405,'8090c879-073d-4e87-9d6f-587d913920e2','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:16','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(406,'ddbc7f81-0d24-4ff9-a198-2e5338bfb5f6','1','FP_Event_Locations','f55950d7-7bcf-41b6-8405-0090714624a3','Salon comunal','2026-06-04 20:11:17','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(407,'00981706-f36e-4094-90ec-f5ccb4727e84','1','FP_events','9dc6a25e-1261-47ae-8853-3e2cc015dc98','Prueba','2026-06-04 20:12:31','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(408,'e8768d6f-6281-4f8c-8201-019bb3140c8a','1','FP_events','9dc6a25e-1261-47ae-8853-3e2cc015dc98','Prueba','2026-06-04 20:12:31','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(409,'3cbc1b44-bdfc-415f-b6e8-0536442026ae','1','FP_events','9dc6a25e-1261-47ae-8853-3e2cc015dc98','Prueba','2026-06-04 20:12:32','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(410,'58e977ad-16b2-4a38-a8b8-c5fa7d84de95','1','FP_events','9dc6a25e-1261-47ae-8853-3e2cc015dc98','Prueba','2026-06-04 20:15:36','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(411,'2f3fc5a1-5495-40c2-a971-49233d09ccb9','1','FP_events','9dc6a25e-1261-47ae-8853-3e2cc015dc98','Prueba','2026-06-04 20:15:37','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(412,'8819e423-e334-499d-92b6-a0e50faedcb2','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 21:09:43','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(413,'26db4ab5-8593-467e-885b-ddb227a1249d','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 21:10:04','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(414,'db9136e0-3d4b-406b-b627-dd82343633ee','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-04 21:10:06','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(415,'513b85c9-1ab7-4f3f-afcd-273f8a5bd313','1','caml_chat','9b7eafd7-0b99-4da9-9f98-9b0dfa91d394','bdaskd','2026-06-04 21:10:06','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(416,'2a028769-5f76-43a0-a6e3-5f040fa158e9','1','caml_chat','9b7eafd7-0b99-4da9-9f98-9b0dfa91d394','bdaskd','2026-06-04 21:10:07','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(417,'55ce3b75-486b-4b4b-8c3c-9da3aeb01187','1','Documents','74d483a9-ac9e-487c-a5b7-3029a126cd04','Invoices_Factura_-_Parqueadero_-_Apartamento_201_-_Bloque_a_(Junio_2026).pdf','2026-06-04 21:17:36','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(418,'64743aa7-d979-4fcf-997b-b1013b119fea','1','Bugs','aa96a3d9-50ad-48de-9e05-c6fb575bc20f','prueba','2026-06-04 21:25:06','detailview','9970c3f38d2f911f9b6e9791cb754323',1,0),
(419,'75438868-bae0-4abc-82cc-628d9bcd5e3f','57bef8d2-239b-4960-9c63-f8bc273b8094','Accounts','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-05 15:58:54','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(420,'7a7f6d02-31f2-4b49-aa3a-c7228abdb0cd','57bef8d2-239b-4960-9c63-f8bc273b8094','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-05 15:59:00','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(421,'f6ecc953-89e6-4f79-8776-197b0b33caf0','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-05 16:03:08','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(422,'40ccb12c-971e-426c-91c7-f83aa73d8c2b','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-05 16:03:09','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(423,'bdb7cabb-0c82-4c5b-a34a-45373cb2a412','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 16:03:24','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(424,'a36374ac-f7fa-4d69-a182-f3a9900c45f4','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-05 16:08:37','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(425,'bd43cfaf-aa55-459e-bd73-3d2a94a1ded5','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-05 16:08:38','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(426,'8ac52647-ad9a-491d-8492-30fdf6a12585','1','caml_vehiculos','933d55d0-8211-48e7-9096-6f8de4d3d1ec','YDY84F','2026-06-05 16:10:05','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(427,'64bc1d0b-eec8-4c0c-989e-d24c8943a34a','57bef8d2-239b-4960-9c63-f8bc273b8094','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-05 16:10:39','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(428,'1321cb68-c36c-4433-82bc-929c304d047f','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-05 16:10:52','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(429,'64c47583-6c61-4ce8-bc79-9748cd1fc795','1','ACLRoles','bc8b7e5c-8d09-490e-b4c0-d2385f969fa1','Residente','2026-06-05 16:10:53','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(430,'f3e29357-80ca-4635-8a13-05d8ec656a60','1','Cases','72a6b878-49cb-439f-956d-d78e89071ee7','Solicitud Sorteo Parqueadero: Apto c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-05 16:13:43','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(431,'ed6cbfe1-e4d7-493d-ad8a-c6b50a6260ad','1','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-05 16:13:53','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(432,'ab876fe0-4502-47f5-8245-5cc1a6b1af24','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 16:13:57','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(433,'d0766933-8add-4981-9be2-ca6452bf79b3','1','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-05 16:14:02','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(434,'c59d46ae-0acd-4e82-8111-1f25e263dd08','1','Cases','72a6b878-49cb-439f-956d-d78e89071ee7','Solicitud Sorteo Parqueadero: Apto c5ae1ae4-bb15-4697-b584-3a5065025535','2026-06-05 16:14:10','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(435,'c81cd17d-cfd9-41ad-948d-96304005e61a','1','caml_control_accesos','374bef86-c49d-433b-94fc-3270dc5bc095','dfasf','2026-06-05 16:15:59','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(436,'fef45c94-e117-4c47-a1c4-634354d6fbdd','1','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 18:06:15','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(437,'cea4837f-bd41-414c-a8dd-5c6ad56c64d6','57bef8d2-239b-4960-9c63-f8bc273b8094','Accounts','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-05 18:13:56','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(438,'29690489-d187-4aaf-b4e0-3d22fc33fe99','57bef8d2-239b-4960-9c63-f8bc273b8094','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 18:14:12','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(439,'d9098772-816a-4dde-b142-693e79ee7d26','1','AOS_Invoices','09b1cdd6-2100-4e67-8af7-1c3d976d36a1','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:15:35','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(440,'1d78a183-d87b-466a-82a1-d5dddab1257b','1','AOS_Invoices','09b1cdd6-2100-4e67-8af7-1c3d976d36a1','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:15:36','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(441,'bdc02627-f1d3-4543-8b36-9c45917a40ed','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:15:36','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(442,'ef0626b2-91df-4d61-9435-c6e50ba38d69','1','AOS_Invoices','40a0b922-7e95-4a46-8d2d-f507ce25d815','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:15:36','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(443,'882e8494-9ce1-4785-a43d-ebcd867908ae','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:15:39','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(444,'2575d95e-3621-4d22-b431-624e8c457e1b','1','AOS_Invoices','40a0b922-7e95-4a46-8d2d-f507ce25d815','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:15:39','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(445,'44d8ec5a-6f60-45f2-bf0b-53c6e9c3b396','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:17:20','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(446,'a32cf682-a5e5-4e34-8783-3ddac4a25dd4','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:17:21','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(447,'ee6d4608-af94-479b-a3ef-b681f2e4bd39','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:24:56','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(448,'a6fe9c3d-cddb-49d6-bc79-a090b301a182','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:24:58','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(449,'7ae19b23-faf7-44bb-a877-c8b5c5972ecd','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:26:25','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(450,'3a301932-4693-4e6c-a8aa-7187a2a74afd','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:26:26','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(451,'407d6c7c-cfbb-4b5e-a365-0914841bae8d','1','Contacts','61cbfb2c-5e5a-4b5e-a710-0ab5ad1072a9','Sr. manuel murillo','2026-06-05 18:26:55','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(452,'54a4bd48-e550-48c3-93da-cf383610bd9c','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:27:02','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(453,'5712e478-f079-4b10-9a28-5dddb8c7fc22','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:27:04','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(454,'535445e8-babb-4070-a7f3-2ad0bb5a8d9c','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:30:08','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(455,'003b28c5-8fb5-4fc3-b48d-13b2154f08e7','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:30:10','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(456,'a56fda43-5fbe-42a5-a542-c75f40b3eed2','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:32:00','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(457,'aa2edf9e-6552-449f-9e1d-01db3b9a7e92','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:32:02','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(458,'8f765771-bfa2-48a4-80d6-2e320af12b44','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:33:26','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(459,'2f857110-39f0-407d-bbd8-26599eadcce8','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:33:27','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(460,'4b5fa11a-23af-4cba-b19e-5e37619ff8f1','57bef8d2-239b-4960-9c63-f8bc273b8094','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 18:39:05','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(461,'204eade3-976a-4165-8685-191601b38f99','57bef8d2-239b-4960-9c63-f8bc273b8094','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 18:39:32','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(462,'db898116-fac8-4a3c-b308-e51d77c25398','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:39:55','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(463,'715233b4-757a-4c3f-b9a4-080dec1a6d52','1','AOS_Invoices','2db31d11-bcd7-4cab-b4e7-a4b544c6b252','Factura - Parqueadero - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 18:39:57','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(464,'4b7a555c-4392-4d08-8759-381bb8800679','1','AOS_Invoices','59283cba-4f1c-446f-985f-d6fa1fd7e64f','prueba','2026-06-05 18:43:50','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(465,'04828f72-874a-49fc-b73b-5a5e058dba3b','1','AOS_Invoices','59283cba-4f1c-446f-985f-d6fa1fd7e64f','prueba','2026-06-05 18:43:50','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(466,'0051a00c-03ca-4f10-819c-982d18683a97','1','AOS_Invoices','59283cba-4f1c-446f-985f-d6fa1fd7e64f','prueba','2026-06-05 18:43:51','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(467,'1c254436-424c-4a16-8778-d131bbdb96af','1','AOS_Invoices','59283cba-4f1c-446f-985f-d6fa1fd7e64f','prueba','2026-06-05 18:43:53','editview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(468,'1a6eaf4f-a340-42c8-8516-59a05a524f78','1','AOS_Invoices','59283cba-4f1c-446f-985f-d6fa1fd7e64f','prueba','2026-06-05 18:43:53','editview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(469,'2c1edbdd-ab8d-4a0f-b35e-6aa469851047','1','AOS_Invoices','59283cba-4f1c-446f-985f-d6fa1fd7e64f','prueba','2026-06-05 18:43:55','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(470,'05145faf-bc50-48cf-a1a8-73877cb2e0f2','57bef8d2-239b-4960-9c63-f8bc273b8094','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 18:44:10','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(471,'67e9ca67-69d2-490c-95d9-5432414e7e49','57bef8d2-239b-4960-9c63-f8bc273b8094','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 18:59:27','detailview','35f80ceb1c56682124e155e350cb2ffa',1,0),
(472,'de876ed4-404d-4fdf-8fad-db774b73cb30','57bef8d2-239b-4960-9c63-f8bc273b8094','Accounts','36266f9a-1c2e-48d9-8722-788b8f9c3bc2','conjunto malpole2','2026-06-05 18:59:59','detailview','838e41cccc18acd651ac5a91d1974a27',1,0),
(473,'27bb8014-69bd-4b29-b261-a9f5241f1158','57bef8d2-239b-4960-9c63-f8bc273b8094','caml_apartamentos','c5ae1ae4-bb15-4697-b584-3a5065025535','Apartamento 201 - Bloque a','2026-06-05 19:00:11','detailview','838e41cccc18acd651ac5a91d1974a27',1,0),
(474,'80149b4a-080c-4934-a11f-4655c1e7856f','1','AOS_Invoices','dfee37d3-83d0-4491-932d-275cd3be26c0','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 19:02:22','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0),
(475,'c869200c-8393-4155-82a7-ca5133000715','1','AOS_Invoices','dfee37d3-83d0-4491-932d-275cd3be26c0','Factura - Cuota Administración - Apartamento 201 - Bloque a (Junio 2026)','2026-06-05 19:02:23','detailview','e5ca982963fbd3345dd9bc84e272a7cb',1,0);
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
('5a095d24-5c1b-4104-97ed-f4942ba0bf0b','upload/upgrades/module/chat2026_06_04_160405.zip','4d3da79f81fea493996c0db9c8f147ea','module','installed','1780607045','chat','Chat','chat','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO319czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo0OiJjYW1sIjtzOjY6ImF1dGhvciI7czo0OiJjYW1sIjtzOjExOiJkZXNjcmlwdGlvbiI7czo0OiJDaGF0IjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjQ6ImNoYXQiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDI2LTA2LTA0IDIxOjA0OjA1IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTc4MDYwNzA0NTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6NDoiY2hhdCI7czo1OiJiZWFucyI7YToyOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czo5OiJjYW1sX2NoYXQiO3M6NToiY2xhc3MiO3M6OToiY2FtbF9jaGF0IjtzOjQ6InBhdGgiO3M6MzE6Im1vZHVsZXMvY2FtbF9jaGF0L2NhbWxfY2hhdC5waHAiO3M6MzoidGFiIjtiOjE7fWk6MTthOjQ6e3M6NjoibW9kdWxlIjtzOjEzOiJjYW1sX21lbnNhamVzIjtzOjU6ImNsYXNzIjtzOjEzOiJjYW1sX21lbnNhamVzIjtzOjQ6InBhdGgiO3M6Mzk6Im1vZHVsZXMvY2FtbF9tZW5zYWplcy9jYW1sX21lbnNhamVzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2NhbWxfY2hhdCI7czoyOiJ0byI7czoxNzoibW9kdWxlcy9jYW1sX2NoYXQiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NDU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvY2FtbF9tZW5zYWplcyI7czoyOiJ0byI7czoyMToibW9kdWxlcy9jYW1sX21lbnNhamVzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lc19NWC5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVzX01YIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2026-06-04 21:04:05',1),
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
('062ab565-0596-4652-af1d-5092fee84ec1','ACLRoles',0,'2026-05-27 22:05:33','2026-06-05 16:13:39','1','YTowOnt9'),
('0723407d-ca78-4d3e-99b1-4b329d577e40','Home',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImZmNjQ4M2EzLTJkN2MtNGZmMy04YTNlLWUwNTBkZmRmYTRkMyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImIzM2EyZTBhLTk5MzMtNGUxYy1hM2VhLTRjNDRmOTUwMWY4OSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjRiM2E3MTAwLWE5NTQtNDcxOC1hOTE3LTFhNGYwZDNjZWY3NCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImQwZjYyMjI4LTQyZTktNGFiYi05NjJmLTMxNTNhZWUwZjQyOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOWViNDZjMjQtZDdhNC00NTFiLWE4MmEtZDg1NGRhODE0NjNiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmVjNDgxYjAtNjgyYy00N2YxLWI5YzMtN2U4ZTE5M2ZmZGEyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJiMzNhMmUwYS05OTMzLTRlMWMtYTNlYS00YzQ0Zjk1MDFmODkiO2k6MTtzOjM2OiI0YjNhNzEwMC1hOTU0LTQ3MTgtYTkxNy0xYTRmMGQzY2VmNzQiO2k6MjtzOjM2OiJkMGY2MjIyOC00MmU5LTRhYmItOTYyZi0zMTUzYWVlMGY0MjgiO2k6MztzOjM2OiI5ZWI0NmMyNC1kN2E0LTQ1MWItYTgyYS1kODU0ZGE4MTQ2M2IiO2k6NDtzOjM2OiI2ZWM0ODFiMC02ODJjLTQ3ZjEtYjljMy03ZThlMTkzZmZkYTIiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImZmNjQ4M2EzLTJkN2MtNGZmMy04YTNlLWUwNTBkZmRmYTRkMyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('09a4e197-6fa7-48ca-81f9-795a7f3595d7','Home2_LEAD',0,'2026-05-27 22:01:47','2026-05-27 22:01:47','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('0ef5728d-c92f-4200-adba-2576cbce0332','Emails',0,'2026-05-21 20:40:58','2026-06-05 16:13:39','1','YTowOnt9'),
('178ca1f1-e987-47d0-b8ff-eaa818e6e06b','global',0,'2026-05-21 21:27:57','2026-05-21 21:27:57','897b0de3-78c9-4ee3-8b67-9cc910d63f6c','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjRhN2VjOGM3LWVkNjMtNGU5OS05NmNhLTM3MTYwMjNlMWExYiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('1cc816c0-9578-41c9-a46f-644713668255','search',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEyOiJnbG9iYWxTZWFyY2giO2E6MTE6e3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo1OiJDYXNlcyI7czo1OiJDYXNlcyI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czo1OiJMZWFkcyI7czo1OiJMZWFkcyI7czo4OiJNZWV0aW5ncyI7czo4OiJNZWV0aW5ncyI7czo1OiJOb3RlcyI7czo1OiJOb3RlcyI7czo5OiJDYW1wYWlnbnMiO3M6OToiQ2FtcGFpZ25zIjt9fQ=='),
('23c02782-58fd-4d4a-ac36-5f0ba47431ce','ETag',0,'2026-05-25 22:54:38','2026-06-04 21:04:05','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NTt9'),
('24f0dc92-1755-49e7-a3f4-213be67f065f','AOS_Invoices',0,'2026-06-04 16:50:56','2026-06-04 16:50:56','1','YTowOnt9'),
('25a7bd25-cbe1-4c75-ac29-b5717d31bb51','Home2_ACCOUNT',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2801e810-be5c-44bb-8cf4-011b3f5bd171','Home',0,'2026-06-04 19:31:14','2026-06-05 19:00:00','57bef8d2-239b-4960-9c63-f8bc273b8094','YToyOntzOjg6ImRhc2hsZXRzIjthOjQ6e3M6MzY6ImQ5NDhhMjNhLTA1OTAtNDY5MS1hOTAxLWZhYjg1ZDQ2ZjRmNSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjY2OTVhYjg2LWFlYjctNDJmYS04MTQ5LWM2MWY2Y2RiZjY0YSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImVkYzA3OTk1LTI2MzEtNDExNS05ZDk4LTQ3N2NhM2M0MGMwNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImVjNjk5MjEwLTQ2NGItNGU5Zi1iZjAxLTAwZTI1NGIwYjFkZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTozOntpOjA7czozNjoiNjY5NWFiODYtYWViNy00MmZhLTgxNDktYzYxZjZjZGJmNjRhIjtpOjE7czozNjoiZWRjMDc5OTUtMjYzMS00MTE1LTlkOTgtNDc3Y2EzYzQwYzA1IjtpOjI7czozNjoiZWM2OTkyMTAtNDY0Yi00ZTlmLWJmMDEtMDBlMjU0YjBiMWRmIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiJkOTQ4YTIzYS0wNTkwLTQ2OTEtYTkwMS1mYWI4NWQ0NmY0ZjUiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('2ccaa4a6-4460-4966-8a08-032c6ba706a2','ProspectLists2_PROSPECTLIST',0,'2026-06-04 20:18:28','2026-06-04 20:18:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2d78c801-33af-475e-b116-3d082527551c','Home2_DOCUMENT',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3bb0b5ca-cf3f-4bb3-902b-b525d701c186','global',0,'2026-05-20 16:29:32','2026-06-05 18:27:05','1','YTo2Mjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjFkMmIwZDcxLTYwZDUtNDVhYS1hMGY0LTc3YTg4NDRlNmJiZCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjI0OiJzdWJwYW5lbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MjQ6Imxpc3R2aWV3X3BhZ2luYXRpb25fdHlwZSI7czoxMDoicGFnaW5hdGlvbiI7czoyODoicmVjb3JkX21vZGFsX3BhZ2luYXRpb25fdHlwZSI7czoxMDoicGFnaW5hdGlvbiI7czoxODoic25vb3plX2FsZXJ0X3RpbWVyIjtzOjM6IjYwMCI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MTQ6IkFtZXJpY2EvQm9nb3RhIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiWS1tLWQiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVzX01YIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJzaWduYXR1cmVfZGVmYXVsdCI7czowOiIiO3M6MTc6InNpZ25hdHVyZV9wcmVwZW5kIjtzOjA6IiI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo3OiJ0aW55bWNlIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTk6ImVtYWlsX2VkaXRvcl9vcHRpb24iO3M6NzoidGlueW1jZSI7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6ImRhdGVmb3JtYXQiO3M6NToiWS1tLWQiO3M6MTA6InRpbWVmb3JtYXQiO3M6MzoiSDppIjtzOjI6InVpIjtzOjE0MDYyOiJ7Im5vb3AiOiJub29wIiwiYWNjb3VudHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhZG1pbmlzdHJhdGlvbi1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjozLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjozfSwicmVjb3JkSWRzIjpbeyJpZCI6IjJlNGVhMjQ2LWJiYWMtNDE1MC1iM2RhLTBiODYyNjBhNDU1YiJ9LHsiaWQiOiIwOTk1NWVjMS02YzM5LTRkYjgtODc3OC03MDBmODExYzZmNDcifSx7ImlkIjoiMmQ3ODY2NTEtYmYyZi00MzEwLTkxMTctOGVkYzBkNjRiZDEzIn1dfSwidXNlcnMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJ1c2Vycy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwidXNlcnMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwidXNlcnMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwidXNlcnMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6NywicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6N30sInJlY29yZElkcyI6W3siaWQiOiI1N2JlZjhkMi0yMzliLTQ5NjAtOWM2My1mOGJjMjczYjgwOTQifSx7ImlkIjoiN2ExZjE1YzItYWNhOS00YmYyLWE5ZjgtMjZjMDczZDViNjNhIn0seyJpZCI6IjQwMGZkYmUzLWU5MzgtNGI2YS04ZGViLWE0NTljMjJjY2JhNSJ9LHsiaWQiOiI4OTdiMGRlMy03OGM5LTRlZTMtOGI2Ny05Y2M5MTBkNjNmNmMifSx7ImlkIjoiYThjYjg0MTgtYjkwZS00YTVhLWJiZGEtZjY0YzAwMWZjMjI0In0seyJpZCI6IjBiNTE2YzhmLTA5ODYtNDFjMS04OWE5LTc5M2UyMDJkNjc2MCJ9LHsiaWQiOiIxIn1dfSwiY29udGFjdHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjb250YWN0cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiY29udGFjdHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiY29udGFjdHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiY29udGFjdHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MjAsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjIwfSwicmVjb3JkSWRzIjpbeyJpZCI6IjYxY2JmYjJjLTVlNWEtNGI1ZS1hNzEwLTBhYjVhZDEwNzJhOSJ9LHsiaWQiOiJjMGIwYzUxYS1mMmNjLTQ1OTEtODI2My0yZmIwOTA4OGNmNTgifSx7ImlkIjoiYzBiMGM1MWEtZjJjYy00NTkxLTgyNjMtMmZiMDkwODhjZjU4In0seyJpZCI6IjE5OTgxMDE4LTVmYzctNDM1YS05Y2I1LTBkMWQ0NzliN2NhYiJ9LHsiaWQiOiI5OTZhMzNjNC00M2U2LTRiNWMtOGJkNy1hMWIxYjdkODMyOTMifSx7ImlkIjoiYzZjZjI2ZjgtMmM1OC00N2YzLTk3ODktMDVhZmZhMGMzYjU0In0seyJpZCI6IjYzZGVhYzliLTI4YTctNGI3ZC04YTg3LTM5MTAzODM0ZDk0NiJ9LHsiaWQiOiI2NWJkOTY1OC01YzVhLTQ1YzUtODQyYy00YTAzNzhkYmI4ZmYifSx7ImlkIjoiNzBhY2Q0NGEtMTc2OC00MTRlLWFjZTQtNmQ3YTY5YTJlZTBlIn0seyJpZCI6IjBhNDM2YmEwLTIwM2YtNDQxMS1iNDVmLTgyMTI4ZWYzMzBjZSJ9LHsiaWQiOiJhYzlkODlkMC03MmE3LTQyMzktOGM5ZS0wMDg3OWExZTQ0OWQifSx7ImlkIjoiYjU3MWEwZDEtM2U3OC00YzNlLTg1MzItYmY5OTUwMThkNzdhIn0seyJpZCI6IjI4ZWZjMjEzLTFhYmMtNGVjMy04YjEwLTJiMmUzZjU3ODRhNSJ9LHsiaWQiOiI1Njk3YWNjZC0wYjIyLTQ4NmQtYTBjOS1iMGI5ODBiYzdmYTIifSx7ImlkIjoiNTY5N2FjY2QtMGIyMi00ODZkLWEwYzktYjBiOTgwYmM3ZmEyIn0seyJpZCI6ImUwNjMzZmEzLTRkNGQtNDBlYi04ZGRmLTM4MTYyNzYxY2I2MyJ9LHsiaWQiOiJlMDYzM2ZhMy00ZDRkLTQwZWItOGRkZi0zODE2Mjc2MWNiNjMifSx7ImlkIjoiM2ZjNmE4ODEtMWMzNC00N2E0LTlhMDUtYTVhZDYwNzU3MzQxIn0seyJpZCI6ImIwMjExYjRhLTdhMzgtNGIyNy1iMDJiLTZmMzIzMTdkZjE3ZCJ9LHsiaWQiOiJkNTMyNDRjMy00YWU0LTQ1OTQtYThlZi1kOGVkZDUzM2NjMjAifV19LCJjb250YWN0cy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJjb250YWN0cy1zdWJwYW5lbC1jb250YWluZXItY29sbGFwc2UiOmZhbHNlLCJjb250YWN0cy1zdWJwYW5lbC1jb250YWluZXItb3Blbi1zdWJwYW5lbHMiOlsiY2FtbF9hcGFydGFtZW50b3NfY29udGFjdHNfMSIsInNlY3VyaXR5Z3JvdXBzIiwiY2FzZXMiXSwiYWNjb3VudHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MiwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6Mn0sInJlY29yZElkcyI6W3siaWQiOiI5YTczMjBiZi01MWMxLTQ1ZjYtOWM4NC1kZjhjMjNlMzY0YjUifSx7ImlkIjoiNGI5ZmNkM2YtN2VmYS00MjBmLTgwZWEtZGNlNGU4MGNkY2YxIn1dfSwiYWNjb3VudHMtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6dHJ1ZSwiYWNjb3VudHMtc3VicGFuZWwtY29udGFpbmVyLWNvbGxhcHNlIjpmYWxzZSwiYWNjb3VudHMtc3VicGFuZWwtY29udGFpbmVyLW9wZW4tc3VicGFuZWxzIjpbImNvbnRhY3RzIiwiYWNjb3VudHNfY2FtbF9hcGFydGFtZW50b3NfMSIsInNlY3VyaXR5Z3JvdXBzIl0sImhvbWUtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6NCwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6NH0sInJlY29yZElkcyI6W3siaWQiOiIzNjI2NmY5YS0xYzJlLTQ4ZDktODcyMi03ODhiOGY5YzNiYzIifSx7ImlkIjoiNGI5MzIzMmQtOGU4OS00M2Y3LTk5OGMtMGQ5MGQyZDYyMTVmIn0seyJpZCI6IjlhNzMyMGJmLTUxYzEtNDVmNi05Yzg0LWRmOGMyM2UzNjRiNSJ9LHsiaWQiOiI0YjlmY2QzZi03ZWZhLTQyMGYtODBlYS1kY2U0ZTgwY2RjZjEifV19LCJjYW1sX2FwYXJ0YW1lbnRvcy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FtbF9hcGFydGFtZW50b3Mtc3VicGFuZWwtY29udGFpbmVyLW9wZW4tc3VicGFuZWxzIjpbImNhbWxfYXBhcnRhbWVudG9zX2NvbnRhY3RzXzEiLCJzZWN1cml0eWdyb3VwcyIsImNhbWxfYXBhcnRhbWVudG9zX2Fvc19pbnZvaWNlc18xIiwiY2FtbF9hcGFydGFtZW50b3NfY2FtbF9jb250cm9sX2FjY2Vzb3NfMSJdLCJjYXNlcy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNhc2VzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNhc2VzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNhc2VzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJjYXNlcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjo0LCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0Ijo0fSwicmVjb3JkSWRzIjpbeyJpZCI6IjcyYTZiODc4LTQ5Y2ItNDM5Zi05NTZkLWQ3OGU4OTA3MWVlNyJ9LHsiaWQiOiIzNTNlNmExZS00MDE4LTRlZTgtYmNlOS1kNDM2YjlhYjM2MWMifSx7ImlkIjoiNzk0Y2NkNDEtMzcwMC00OGE2LThlYWItNThkOWU2YjM1M2IzIn0seyJpZCI6IjRkNmE5MGE5LWM2NWQtNDNlZi04MjliLTI3MTdjMWU2ODRmMCJ9XX0sImNhc2VzLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsImNhc2VzLXN1YnBhbmVsLWNvbnRhaW5lci1jb2xsYXBzZSI6ZmFsc2UsImNhbWxfYXBhcnRhbWVudG9zLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sImNhbWxfYXBhcnRhbWVudG9zLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNhbWxfYXBhcnRhbWVudG9zLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNhbWxfYXBhcnRhbWVudG9zLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjUsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjV9LCJyZWNvcmRJZHMiOlt7ImlkIjoiYzVhZTFhZTQtYmIxNS00Njk3LWI1ODQtM2E1MDY1MDI1NTM1In0seyJpZCI6IjZiOTY1YTFjLWQ1ZTItNGM4ZS1hMGIxLTAyOWM4NjcxMTg3OSJ9LHsiaWQiOiIyZTRlYTI0Ni1iYmFjLTQxNTAtYjNkYS0wYjg2MjYwYTQ1NWIifSx7ImlkIjoiMDk5NTVlYzEtNmMzOS00ZGI4LTg3NzgtNzAwZjgxMWM2ZjQ3In0seyJpZCI6IjJkNzg2NjUxLWJmMmYtNDMxMC05MTE3LThlZGMwZDY0YmQxMyJ9XX0sImNhc2VzLXN1YnBhbmVsLWNvbnRhaW5lci1vcGVuLXN1YnBhbmVscyI6W10sImJ1c2luZXNzLWhvdXJzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiYnVzaW5lc3MtaG91cnMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYnVzaW5lc3MtaG91cnMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiYnVzaW5lc3MtaG91cnMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sIm1hcmtlcnMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MiwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6Mn0sInJlY29yZElkcyI6W3siaWQiOiI5N2JkMjVlYy0yZDIxLTQyNGYtYTJhOS1jYmUyYjE5ZWY2YjAifSx7ImlkIjoiYTg4Yjc5ODQtN2IzOS00NzMxLWFmYzAtMzMzMDA4MzU0YWQyIn1dfSwibWFya2Vycy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsIm1hcmtlcnMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwibWFya2Vycy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJtYXJrZXJzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhY2wtcm9sZXMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJhY2wtcm9sZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNsLXJvbGVzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFjbC1yb2xlcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiYWNsLXJvbGVzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjEsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjF9LCJyZWNvcmRJZHMiOlt7ImlkIjoiYmM4YjdlNWMtOGQwOS00OTBlLWI0YzAtZDIzODVmOTY5ZmExIn1dfSwiYWRkcmVzcy1jYWNoZS1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImFkZHJlc3MtY2FjaGUtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWRkcmVzcy1jYWNoZS1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJhZGRyZXNzLWNhY2hlLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiTk9ORSJ9LCJhcmVhcy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImFyZWFzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImFyZWFzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFyZWFzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhcmVhcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6MjAsImxhc3QiOjIwLCJ0b3RhbCI6MjEsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjIwfSwicmVjb3JkSWRzIjpbeyJpZCI6IjVhMDU0MDRkLWI0YjktNGY5Yi1hZDZkLTM2ODZjM2U4MjllYiJ9LHsiaWQiOiJmYmFlNGQ3MS1mMDg3LTQ0YTctYmI2MS0zMTc0OGYwY2NmOGUifSx7ImlkIjoiZDg0ZmRlYjMtZTBkNy00YWQ1LWE4NzYtNGFhMzU0ZGI3MWI4In0seyJpZCI6ImJjNDNlYmU1LWU0NTktNDBlMC1iYTIzLTc5MGVmOWJkYTQwOCJ9LHsiaWQiOiJhOTAxNzdiNS1kYzA4LTQzMDktYjJlZi0zODM3NzM3M2I0OGQifSx7ImlkIjoiYTUwZTM4ZTYtYjQ0MS00MDAyLWJlYzctYTExOTU2M2ZkMjQwIn0seyJpZCI6ImEzNmNjNzhmLWRkMDAtNDI4Mi1iYThhLTcxZmIyYTg3MWM3NiJ9LHsiaWQiOiI5YzI0ZGYyYi0zOTg0LTRmYzItODA2MS1lYjQ5MDljNDVjYjYifSx7ImlkIjoiOGQ3MzllNjEtYzIxMy00OTFhLTgzNDktZWIxNTBkMjY1ZDA2In0seyJpZCI6Ijg5NmVjN2M2LWQ5MWQtNDhiMy1iOWRlLWM0ZDhhY2ExYTFmNyJ9LHsiaWQiOiI3MmM0YzAyMy02NzNiLTQ3MTMtOWRmNS04NzRiYmUyMzk1MDMifSx7ImlkIjoiMDEyM2QxZmQtZWY1OS00OWQ5LThjODctMTVmNjk1ZTdkYTk5In0seyJpZCI6IjQ4MGM0Y2NlLWNjNjAtNDM1My04ZDAxLWZjNzIyYTRkZjAzYSJ9LHsiaWQiOiIzNmJhNjYyOS05Nzg2LTRiMTUtODFhMS1jYjJhZjVjYzA0OTQifSx7ImlkIjoiMmMyZjQ2N2QtZGNlNi00NTkzLWE0YzctZGRjYjk4NGUwZDU1In0seyJpZCI6IjIwN2U5Y2Q2LTIzNDctNGUyYS1hZWY4LWVlY2U4MWM3YmIzMCJ9LHsiaWQiOiIxZTYxZGUzZi04ZjRhLTRlY2EtYjE5ZC0xZjdhNTkyY2Q2NzUifSx7ImlkIjoiMWMzMjZiOTYtNDM2Ni00ZGVlLTlhYjEtNmY2ZTBhMzFmZDkwIn0seyJpZCI6IjE4ZjA3YWUyLTUyOWItNDFiZS05OTVjLTk3OTNhMWRhNTU4YyJ9LHsiaWQiOiIwMmRmMTI2OC0yMDk1LTRiNzMtYTJmYi1mMmY3Y2ExOWZiNTIifV19LCJtYXBzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjoyMCwibGFzdCI6MjAsInRvdGFsIjoyMSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MjB9LCJyZWNvcmRJZHMiOlt7ImlkIjoiNWEwNTQwNGQtYjRiOS00ZjliLWFkNmQtMzY4NmMzZTgyOWViIn0seyJpZCI6ImZiYWU0ZDcxLWYwODctNDRhNy1iYjYxLTMxNzQ4ZjBjY2Y4ZSJ9LHsiaWQiOiJkODRmZGViMy1lMGQ3LTRhZDUtYTg3Ni00YWEzNTRkYjcxYjgifSx7ImlkIjoiYmM0M2ViZTUtZTQ1OS00MGUwLWJhMjMtNzkwZWY5YmRhNDA4In0seyJpZCI6ImE5MDE3N2I1LWRjMDgtNDMwOS1iMmVmLTM4Mzc3MzczYjQ4ZCJ9LHsiaWQiOiJhNTBlMzhlNi1iNDQxLTQwMDItYmVjNy1hMTE5NTYzZmQyNDAifSx7ImlkIjoiYTM2Y2M3OGYtZGQwMC00MjgyLWJhOGEtNzFmYjJhODcxYzc2In0seyJpZCI6IjljMjRkZjJiLTM5ODQtNGZjMi04MDYxLWViNDkwOWM0NWNiNiJ9LHsiaWQiOiI4ZDczOWU2MS1jMjEzLTQ5MWEtODM0OS1lYjE1MGQyNjVkMDYifSx7ImlkIjoiODk2ZWM3YzYtZDkxZC00OGIzLWI5ZGUtYzRkOGFjYTFhMWY3In0seyJpZCI6IjcyYzRjMDIzLTY3M2ItNDcxMy05ZGY1LTg3NGJiZTIzOTUwMyJ9LHsiaWQiOiIwMTIzZDFmZC1lZjU5LTQ5ZDktOGM4Ny0xNWY2OTVlN2RhOTkifSx7ImlkIjoiNDgwYzRjY2UtY2M2MC00MzUzLThkMDEtZmM3MjJhNGRmMDNhIn0seyJpZCI6IjM2YmE2NjI5LTk3ODYtNGIxNS04MWExLWNiMmFmNWNjMDQ5NCJ9LHsiaWQiOiIyYzJmNDY3ZC1kY2U2LTQ1OTMtYTRjNy1kZGNiOTg0ZTBkNTUifSx7ImlkIjoiMjA3ZTljZDYtMjM0Ny00ZTJhLWFlZjgtZWVjZTgxYzdiYjMwIn0seyJpZCI6IjFlNjFkZTNmLThmNGEtNGVjYS1iMTlkLTFmN2E1OTJjZDY3NSJ9LHsiaWQiOiIxYzMyNmI5Ni00MzY2LTRkZWUtOWFiMS02ZjZlMGEzMWZkOTAifSx7ImlkIjoiMThmMDdhZTItNTI5Yi00MWJlLTk5NWMtOTc5M2ExZGE1NThjIn0seyJpZCI6IjAyZGYxMjY4LTIwOTUtNGI3My1hMmZiLWYyZjdjYTE5ZmI1MiJ9XX0sImludm9pY2VzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiaW52b2ljZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sImludm9pY2VzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjIwLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoyMH0sInJlY29yZElkcyI6W3siaWQiOiI2MWNiZmIyYy01ZTVhLTRiNWUtYTcxMC0wYWI1YWQxMDcyYTkifSx7ImlkIjoiYzBiMGM1MWEtZjJjYy00NTkxLTgyNjMtMmZiMDkwODhjZjU4In0seyJpZCI6ImMwYjBjNTFhLWYyY2MtNDU5MS04MjYzLTJmYjA5MDg4Y2Y1OCJ9LHsiaWQiOiIxOTk4MTAxOC01ZmM3LTQzNWEtOWNiNS0wZDFkNDc5YjdjYWIifSx7ImlkIjoiOTk2YTMzYzQtNDNlNi00YjVjLThiZDctYTFiMWI3ZDgzMjkzIn0seyJpZCI6ImM2Y2YyNmY4LTJjNTgtNDdmMy05Nzg5LTA1YWZmYTBjM2I1NCJ9LHsiaWQiOiI2M2RlYWM5Yi0yOGE3LTRiN2QtOGE4Ny0zOTEwMzgzNGQ5NDYifSx7ImlkIjoiNjViZDk2NTgtNWM1YS00NWM1LTg0MmMtNGEwMzc4ZGJiOGZmIn0seyJpZCI6IjcwYWNkNDRhLTE3NjgtNDE0ZS1hY2U0LTZkN2E2OWEyZWUwZSJ9LHsiaWQiOiIwYTQzNmJhMC0yMDNmLTQ0MTEtYjQ1Zi04MjEyOGVmMzMwY2UifSx7ImlkIjoiYWM5ZDg5ZDAtNzJhNy00MjM5LThjOWUtMDA4NzlhMWU0NDlkIn0seyJpZCI6ImI1NzFhMGQxLTNlNzgtNGMzZS04NTMyLWJmOTk1MDE4ZDc3YSJ9LHsiaWQiOiIyOGVmYzIxMy0xYWJjLTRlYzMtOGIxMC0yYjJlM2Y1Nzg0YTUifSx7ImlkIjoiNTY5N2FjY2QtMGIyMi00ODZkLWEwYzktYjBiOTgwYmM3ZmEyIn0seyJpZCI6IjU2OTdhY2NkLTBiMjItNDg2ZC1hMGM5LWIwYjk4MGJjN2ZhMiJ9LHsiaWQiOiJlMDYzM2ZhMy00ZDRkLTQwZWItOGRkZi0zODE2Mjc2MWNiNjMifSx7ImlkIjoiZTA2MzNmYTMtNGQ0ZC00MGViLThkZGYtMzgxNjI3NjFjYjYzIn0seyJpZCI6IjNmYzZhODgxLTFjMzQtNDdhNC05YTA1LWE1YWQ2MDc1NzM0MSJ9LHsiaWQiOiJiMDIxMWI0YS03YTM4LTRiMjctYjAyYi02ZjMyMzE3ZGYxN2QifSx7ImlkIjoiZDUzMjQ0YzMtNGFlNC00NTk0LWE4ZWYtZDhlZGQ1MzNjYzIwIn1dfSwiY2FtbF9wYWdvcy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FtbF92ZWhpY3Vsb3MtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImV2ZW50LWxvY2F0aW9ucy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImV2ZW50LWxvY2F0aW9ucy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiZXZlbnQtbG9jYXRpb25zLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImV2ZW50LWxvY2F0aW9ucy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJldmVudC1sb2NhdGlvbnMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MX0sInJlY29yZElkcyI6W3siaWQiOiJmNTU5NTBkNy03YmNmLTQxYjYtODQwNS0wMDkwNzE0NjI0YTMifV19LCJldmVudHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJldmVudHMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sImV2ZW50cy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJldmVudHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiZXZlbnRzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6LTIwLCJ0b3RhbCI6MCwicGFnZUZpcnN0IjowLCJwYWdlTGFzdCI6MH0sInJlY29yZElkcyI6W119LCJjYW1sX3ZlaGljdWxvcy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNhbWxfdmVoaWN1bG9zLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNhbWxfdmVoaWN1bG9zLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNhbWxfdmVoaWN1bG9zLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiTk9ORSJ9LCJjYW1sX3ZlaGljdWxvcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoyLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoyfSwicmVjb3JkSWRzIjpbeyJpZCI6IjkzM2Q1NWQwLTgyMTEtNDhlNy05MDk2LTZmOGRlNGQzZDFlYyJ9LHsiaWQiOiI3YjVlZmYxNC1lMDFlLTQ5MTYtYTdiNi1kOTBjYzgxNDYwOTgifV19LCJjYW1sX3ZlaGljdWxvcy1zdWJwYW5lbC1jb250YWluZXItb3Blbi1zdWJwYW5lbHMiOltdLCJjYW1sX2NvbnRyb2xfYWNjZXNvcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjo0LCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0Ijo0fSwicmVjb3JkSWRzIjpbeyJpZCI6IjcyYTZiODc4LTQ5Y2ItNDM5Zi05NTZkLWQ3OGU4OTA3MWVlNyJ9LHsiaWQiOiIzNTNlNmExZS00MDE4LTRlZTgtYmNlOS1kNDM2YjlhYjM2MWMifSx7ImlkIjoiNzk0Y2NkNDEtMzcwMC00OGE2LThlYWItNThkOWU2YjM1M2IzIn0seyJpZCI6IjRkNmE5MGE5LWM2NWQtNDNlZi04MjliLTI3MTdjMWU2ODRmMCJ9XX0sImNhbWxfY29udHJvbF9hY2Nlc29zLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjYWxlbmRhci1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoxLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoxfSwicmVjb3JkSWRzIjpbeyJpZCI6IjlkYzZhMjVlLTEyNjEtNDdhZS04ODUzLTNlMmNjMDE1ZGM5OCJ9XX19IjtzOjExOiJqandnX0FyZWFzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJqandnX01hcHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTQ6Ik9BdXRoMkNsaWVudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQUNMUm9sZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTU6IlNlY3VyaXR5R3JvdXBzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjY6IlVzZXJzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czoxODoiY2FtbF9hcGFydGFtZW50b3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NzoiRW1haWxzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE5OiJGUF9FdmVudF9Mb2NhdGlvbnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTQ6IlByb3NwZWN0TGlzdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fX0='),
('42f56965-6d14-46d5-96e1-2fc14f7b3088','Users',0,'2026-05-27 22:02:13','2026-05-27 22:15:02','1','YTowOnt9'),
('44c4dd8e-7df9-4dbc-a845-1a297ba47f33','jjwg_Areas',0,'2026-05-26 16:38:38','2026-05-26 16:38:38','1','YTowOnt9'),
('4bb8fecd-444f-43b5-8a28-06cf3b651083','global',0,'2026-06-03 15:45:47','2026-06-03 15:57:41','853e0084-4fc8-4f26-bd43-798959a8342f','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjI5NjhkNzZhLTM2NjQtNDkyMS05YjFlLWU4YTY5MjExYmU0OSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('4d21ae75-eb3d-4707-b4db-6991f42e6ec6','jjwg_Markers',0,'2026-05-28 15:52:42','2026-06-03 15:37:59','1','YTowOnt9'),
('4e01a79e-57a2-44c5-9c77-1c7506b40907','FP_Event_Locations2_FP_EVENT_LOCATIONS',0,'2026-06-04 20:07:39','2026-06-04 20:07:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5071fcef-bbaf-4dcf-a8ed-bf979a4cfc8b','Home2_CALL',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5364e499-9fd9-4960-b129-68bed7bd84c6','Home2_ACCOUNT',0,'2026-06-04 19:31:14','2026-06-05 19:00:00','57bef8d2-239b-4960-9c63-f8bc273b8094','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
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
('813e1f0b-a667-4d23-9cd4-8c2c210ae0c0','Emails',0,'2026-06-05 16:11:17','2026-06-05 19:00:00','57bef8d2-239b-4960-9c63-f8bc273b8094','YTowOnt9'),
('87aebe5c-8480-4be9-90db-7d1c21f7b3dc','Home2_AOS_CONTRACTS',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8aae9a3d-f636-418c-880b-6c37e79b4111','Home2_CALL',0,'2026-06-04 19:31:14','2026-06-05 19:00:00','57bef8d2-239b-4960-9c63-f8bc273b8094','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8ed46e65-8296-434e-93ac-30cb0cabd5ae','Home2_LEAD',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9061165e-8903-4ca8-a467-34079ea86e87','global',0,'2026-05-21 20:55:01','2026-05-21 20:55:01','a8cb8418-b90e-4a5a-bbda-f64c001fc224','YTo0NDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImFlMTUzMDI1LTYyYjAtNDQ5MS05YzFjLWIwYjVhMWRlM2IzNiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7aTo2MDA7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO2I6MTtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7TjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO047czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO047czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7TjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNDoidXNlX3JlYWxfbmFtZXMiO2I6MTtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6MDoiIjt9'),
('930d3e40-f2e2-410e-a06c-12c9420131ce','global',0,'2026-05-27 22:00:25','2026-05-27 22:37:07','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YTo0NDp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7czozOiI2MDAiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO2I6MDtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7YjowO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czoxNDoiQW1lcmljYS9Cb2dvdGEiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6MTA6IklTTy04ODU5LTEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoyOiJ1aSI7czoxOTg3OiJ7Im5vb3AiOiJub29wIiwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjYW1sX2FwYXJ0YW1lbnRvcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiY2FtbF9hcGFydGFtZW50b3MtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNjb3VudHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjotMjAsInRvdGFsIjowLCJwYWdlRmlyc3QiOjAsInBhZ2VMYXN0IjowfSwicmVjb3JkSWRzIjpbXX0sImFjY291bnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiY29udGFjdHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MX0sInJlY29yZElkcyI6W3siaWQiOiIxOTk4MTAxOC01ZmM3LTQzNWEtOWNiNS0wZDFkNDc5YjdjYWIifV19LCJjb250YWN0cy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJjYXNlcy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoxLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoxfSwicmVjb3JkSWRzIjpbeyJpZCI6IjRiOWZjZDNmLTdlZmEtNDIwZi04MGVhLWRjZTRlODBjZGNmMSJ9XX0sImNhc2VzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FzZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiY2FzZXMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiY2FzZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn19Ijt9'),
('976849d4-2860-433a-941e-bcbe55ba884c','Home2_NOTE',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('97d0962f-1da0-48a8-ae09-94b2a74b402d','Home2_ACCOUNT',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9cfd0847-2a79-4b86-9902-8231a7e9cd5b','Home2_ACCOUNT',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a64c0764-cfa0-4ac4-8daa-5a56ba13b446','Home2_SUGARFEED',0,'2026-06-04 19:31:14','2026-06-05 19:00:00','57bef8d2-239b-4960-9c63-f8bc273b8094','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a8259d04-835d-4070-b613-f7aafaaa72c7','Users2_USER',0,'2026-06-03 15:57:41','2026-06-03 15:57:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a9b455a4-f1bb-44fc-9326-a9747b94098e','Home2_OPPORTUNITY',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('acecf0a8-2a69-4acc-80e4-26719bf00cd5','Assistant',0,'2026-05-21 21:09:33','2026-06-04 16:57:16','1','YTowOnt9'),
('b00de8cf-59e0-4cb6-94a4-1658041c696b','jjwg_Areas2_JJWG_AREAS',0,'2026-05-26 16:14:52','2026-05-26 16:14:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b0239944-fef1-4719-b81a-9ef943b241de','Home2_LEAD_f2fa01bd-14b1-46e7-9ccc-f2ef1bb681ad',0,'2026-05-26 22:59:01','2026-05-26 22:59:01','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b1b456a0-ffae-4ace-9339-bb5c6082298e','Home',0,'2026-05-20 16:30:57','2026-06-05 16:08:39','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImI2MDU0MzMxLWUyYzgtNDcxMy1iNTkzLTVkYzEwMmIzZTRkNSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImQxZTNiMzVhLWVkZWEtNGQ3YS1hZDUyLTMyZTBlOWM1NWQwYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjBjOWNiYzk5LWVlZTktNDZhOC05ZTk1LWE0NThkN2EwMTlmYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImE4NTY1NzEyLTJhY2QtNGFhMi05M2I2LTkyODBjODRmMmNlZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjkyMmUxZTEtZmI3ZS00Mjg0LWFjYjYtNGU1MmNiMWMyZWI4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmJlZDU1ZGQtNGUyOC00MmJmLWE5MDgtZDJmYTY3ZDdjYTU1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjA6e319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MDoiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('bbd1e521-f3e3-40aa-8f5e-7396e45eef0b','Home2_SUGARFEED',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bc5975dc-4436-49d2-a9fe-d54986bdd1ed','global',0,'2026-05-26 22:53:35','2026-05-27 20:14:58','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YTo0OTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjVhZjQ1ZTkwLTE4MjAtNDQ1Yy05YTUwLTFhYTFjMDI3YTQ0YyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7czozOiI2MDAiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO2I6MDtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7YjowO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MToibSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJzdWl0ZTgiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czoxNDoiQW1lcmljYS9Cb2dvdGEiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6MTA6IklTTy04ODU5LTEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19NWCI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MjoidWkiO3M6MzQ3OiJ7Im5vb3AiOiJub29wIiwiYWNjb3VudHMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24ifSI7fQ=='),
('bf61b2c4-4939-4325-a2f0-dc76a3a70eb8','Home2_OPPORTUNITY',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c4f5092d-8cbd-40c2-9e38-3ef9c666cb42','Dashboard',0,'2026-06-05 19:00:00','2026-06-05 19:00:00','57bef8d2-239b-4960-9c63-f8bc273b8094','YTowOnt9'),
('cb1cdecc-0ab8-4174-9425-20357e6d0cc6','Home2_SUGARFEED',0,'2026-05-20 16:30:57','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cc76247d-ed6b-46ac-beac-75ef488ac3e7','Home2_SUGARFEED',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d1e20bda-49ff-4940-b699-03c63e187af6','Home2_CALL',0,'2026-05-27 22:01:47','2026-05-27 22:14:24','7a1f15c2-aca9-4bf2-a9f8-26c073d5b63a','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d4647f94-104e-40bc-8432-fb3eff27d420','Home2_MEETING',0,'2026-06-04 19:31:14','2026-06-05 19:00:00','57bef8d2-239b-4960-9c63-f8bc273b8094','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dac689ea-1ffa-47ec-9f0e-68be81c6d627','Home2_MEETING',0,'2026-05-26 22:58:59','2026-05-26 22:58:59','400fdbe3-e938-4b6a-8deb-a459c22ccba5','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('db3a1255-e77f-4b3f-aef3-d628788a35a9','Home2_CASE',0,'2026-05-28 16:36:54','2026-05-28 16:36:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('db4cc39f-2670-4a85-9f0f-692e7865d5dc','Accounts2_ACCOUNT',0,'2026-06-03 22:55:23','2026-06-03 22:55:23','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ddcebe8e-e0f7-4321-b4f3-c9f38ddf6481','Home2_LEAD_4c66cefd-a889-48dd-8e41-57699079a786',0,'2026-05-20 16:30:58','2026-05-26 15:53:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e376bea3-28fc-4835-95e2-814c3aa9030d','jjwg_Maps2_JJWG_MAPS',0,'2026-05-26 19:59:56','2026-05-28 16:08:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e6d2b25f-1858-4328-b8ac-52b53f8b9bd5','global',0,'2026-06-03 15:58:04','2026-06-05 19:00:12','57bef8d2-239b-4960-9c63-f8bc273b8094','YTo0OTp7czo4OiJ0aW1lem9uZSI7czoxNDoiQW1lcmljYS9Cb2dvdGEiO3M6MTI6Im1haWxtZXJnZV9vbiI7czozOiJvZmYiO3M6MjQ6InN1YnBhbmVsX3BhZ2luYXRpb25fdHlwZSI7czoxMDoicGFnaW5hdGlvbiI7czoyNDoibGlzdHZpZXdfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI4OiJyZWNvcmRfbW9kYWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjE4OiJzbm9vemVfYWxlcnRfdGltZXIiO3M6MzoiNjAwIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtiOjA7czoxNDoic3dhcF9zaG9ydGN1dHMiO2I6MDtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjE6Im0iO3M6MjA6InNvcnRfbW9kdWxlc19ieV9uYW1lIjtzOjA6IiI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTA6InVzZXJfdGhlbWUiO3M6Njoic3VpdGU4IjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7YjowO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZXNfTVgiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6MTA6IklTTy04ODU5LTEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO3M6MDoiIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjc6InRpbnltY2UiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToiZW1haWxfZWRpdG9yX29wdGlvbiI7czo3OiJ0aW55bWNlIjtzOjIxOiJkZWZhdWx0X2VtYWlsX2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiJjOTUxNjhmOC1jYWFhLTQ0NzAtYjc5OS0zMmRmODc4ZmI2MDQiO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MjoidWkiO3M6MTUzODoieyJub29wIjoibm9vcCIsImFjY291bnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNjb3VudHMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MX0sInJlY29yZElkcyI6W3siaWQiOiIzNjI2NmY5YS0xYzJlLTQ4ZDktODcyMi03ODhiOGY5YzNiYzIifV19LCJhY2NvdW50cy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJjb250YWN0cy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJjYW1sX3ZlaGljdWxvcy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNhbWxfdmVoaWN1bG9zLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNhbWxfdmVoaWN1bG9zLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNhbWxfdmVoaWN1bG9zLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJob21lLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6LTIwLCJ0b3RhbCI6MCwicGFnZUZpcnN0IjowLCJwYWdlTGFzdCI6MH0sInJlY29yZElkcyI6W119LCJjYW1sX2FwYXJ0YW1lbnRvcy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FtbF9hcGFydGFtZW50b3Mtc3VicGFuZWwtY29udGFpbmVyLWNvbGxhcHNlIjpmYWxzZSwiY2FtbF9hcGFydGFtZW50b3Mtc3VicGFuZWwtY29udGFpbmVyLW9wZW4tc3VicGFuZWxzIjpbImNhbWxfYXBhcnRhbWVudG9zX2Fvc19pbnZvaWNlc18xIiwic2VjdXJpdHlncm91cHMiXSwiYWNjb3VudHMtc3VicGFuZWwtY29udGFpbmVyLWNvbGxhcHNlIjpmYWxzZSwiYWNjb3VudHMtc3VicGFuZWwtY29udGFpbmVyLW9wZW4tc3VicGFuZWxzIjpbImFjY291bnRzX2NhbWxfYXBhcnRhbWVudG9zXzEiXX0iO30='),
('e6f70cf8-8a35-4925-be47-aa74d8bdf712','Contacts2_CONTACT',0,'2026-06-04 20:15:45','2026-06-04 20:15:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e9a96f33-b59f-48d9-bdba-3dd8ed40d05e','Dashboard',0,'2026-05-21 20:40:58','2026-06-05 16:08:39','1','YTowOnt9'),
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
('57bef8d2-239b-4960-9c63-f8bc273b8094','manuel@gmail.com','$2y$10$fYOkjYNBEpWJPKNXeoAZLOpkkej2Up9n2uqtNV4SpydE9ZwjtibjG',0,'2026-06-04 19:31:05',NULL,1,'manuel','murillo',0,0,1,NULL,'2026-06-03 15:58:04','2026-06-04 19:31:05','1','1','1516156',NULL,NULL,NULL,'31515662','3153',NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL,NULL,0,NULL),
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
('57183b2a-234b-48f1-a4e0-d0964ac45f50',0,'2026-06-05 17:20:18','2026-06-05 17:20:18','57bef8d2-239b-4960-9c63-f8bc273b8094','vfb','sugar','BEGIN:VCALENDAR\nVERSION:2.0\nPRODID:-//SuiteCRM//SuiteCRM Calendar//EN\nBEGIN:VFREEBUSY\nORGANIZER;CN=manuel murillo:VFREEBUSY\nDTSTART:2026-06-04 05:00:00\nDTEND:2026-08-04 05:00:00\nDTSTAMP:2026-06-05 17:20:18\nEND:VFREEBUSY\nEND:VCALENDAR\n'),
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

-- Dump completed on 2026-06-05 14:02:40
