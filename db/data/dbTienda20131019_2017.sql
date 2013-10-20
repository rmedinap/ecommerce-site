-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: spreecommerce13_production
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130817035417'),('20130817035418'),('20130817035419'),('20130817035420'),('20130817035421'),('20130817035422'),('20130817035423'),('20130817035424'),('20130817035425'),('20130817035426'),('20130817035427'),('20130817035428'),('20130817035429'),('20130817035430'),('20130817035431'),('20130817035432'),('20130817035433'),('20130817035434'),('20130817035435'),('20130817035436'),('20130817035437'),('20130817035438'),('20130817035439'),('20130817035440'),('20130817035441'),('20130817035442'),('20130817035443'),('20130817035444'),('20130817035445'),('20130817035446'),('20130817035447'),('20130817035448'),('20130817035449'),('20130817035450'),('20130817035451'),('20130817035452'),('20130817035453'),('20130817035454'),('20130817035455'),('20130817035456'),('20130817035457'),('20130817035458'),('20130817035459'),('20130817035460'),('20130817035461'),('20130817035462'),('20130817035463'),('20130817035464'),('20130817035465'),('20130817035466'),('20130817035467'),('20130817035468'),('20130817035469'),('20130817035470'),('20130817035471'),('20130817043811'),('20130817043812'),('20130819145225'),('20130819145226'),('20130904013405'),('20130904013803'),('20130917222602'),('20130917222603'),('20130930231846'),('20130930231847'),('20130930231848'),('20130930231849'),('20130930231850'),('20130930231851'),('20131016020139');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_activators`
--

DROP TABLE IF EXISTS `spree_activators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_activators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) DEFAULT 'all',
  `code` varchar(255) DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_activators`
--

LOCK TABLES `spree_activators` WRITE;
/*!40000 ALTER TABLE `spree_activators` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_activators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `alternative_phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) DEFAULT NULL,
  `attachment_file_name` varchar(255) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (8,2,'Spree::Variant',329,500,96012,1,'image/jpeg','exp_com_mandil_conejo.jpg','Spree::Image','2013-08-29 21:28:59',''),(9,2,'Spree::Variant',340,500,118843,2,'image/jpeg','exp_com_mandil_rana.jpg','Spree::Image','2013-08-29 21:29:13',''),(10,2,'Spree::Variant',352,500,118426,3,'image/jpeg','exp_com_mandil_oso.jpg','Spree::Image','2013-08-29 21:29:28',''),(11,33,'Spree::Variant',800,593,317481,1,'image/jpeg','_MG_2535.jpg','Spree::Image','2013-09-15 19:39:28',''),(15,41,'Spree::Variant',800,480,207386,1,'image/jpeg','Alimentos_curiosos.jpg','Spree::Image','2013-09-15 17:47:34',''),(16,41,'Spree::Variant',563,800,276972,2,'image/jpeg','_MG_2845.jpg','Spree::Image','2013-09-15 17:48:00',''),(17,41,'Spree::Variant',800,567,243874,3,'image/jpeg','_MG_2603.jpg','Spree::Image','2013-09-15 17:48:23',''),(18,132,'Spree::Variant',800,591,250375,1,'image/jpeg','Sol_radiante_1.jpg','Spree::Image','2013-09-15 20:12:40',''),(19,132,'Spree::Variant',800,744,271365,2,'image/jpeg','Sol_radiante_2.jpg','Spree::Image','2013-09-15 20:13:05',''),(20,132,'Spree::Variant',800,576,244119,3,'image/jpeg','_MG_2620.jpg','Spree::Image','2013-09-15 20:13:37',''),(21,41,'Spree::Variant',800,533,171768,4,'image/jpeg','_MG_2597.jpg','Spree::Image','2013-09-15 17:48:46',''),(22,41,'Spree::Variant',800,786,557760,5,'image/jpeg','_MG_2587.jpg','Spree::Image','2013-09-15 17:51:30',''),(23,193,'Spree::Variant',586,800,280602,1,'image/jpeg','Perrro_dientitos.jpg','Spree::Image','2013-09-15 20:03:33',''),(24,41,'Spree::Variant',800,655,396593,6,'image/jpeg','_MG_2567.jpg','Spree::Image','2013-09-15 17:52:00',''),(25,193,'Spree::Variant',726,800,296568,2,'image/jpeg','_MG_2639.jpg','Spree::Image','2013-09-15 20:05:24',''),(26,196,'Spree::Variant',800,703,319286,1,'image/jpeg','Quién_sigue_en_la_fila.jpg','Spree::Image','2013-09-15 20:52:05',''),(27,196,'Spree::Variant',800,629,258304,2,'image/jpeg','Quién_sigue_en_la_fila_2.jpg','Spree::Image','2013-09-15 20:52:30',''),(28,196,'Spree::Variant',384,800,176742,3,'image/jpeg','_MG_2652.jpg','Spree::Image','2013-09-15 20:52:51',''),(29,196,'Spree::Variant',800,774,367557,4,'image/jpeg','_MG_2650.jpg','Spree::Image','2013-09-15 20:53:17',''),(30,199,'Spree::Variant',603,800,481041,1,'image/jpeg','Teatro_show_Yupi_yap.jpg','Spree::Image','2013-09-15 20:18:25',''),(31,196,'Spree::Variant',800,735,334155,5,'image/jpeg','_MG_2649.jpg','Spree::Image','2013-09-15 20:53:37',''),(32,199,'Spree::Variant',689,800,401173,2,'image/jpeg','Teatro_show_yupi_yap_2.jpg','Spree::Image','2013-09-15 20:38:20',''),(33,199,'Spree::Variant',800,533,210503,3,'image/jpeg','_MG_2865.jpg','Spree::Image','2013-09-15 20:38:36',''),(34,200,'Spree::Variant',504,800,265827,1,'image/jpeg','Caballito_loco_1.jpg','Spree::Image','2013-09-15 18:07:15',''),(35,199,'Spree::Variant',559,800,499777,4,'image/jpeg','_MG_2706.jpg','Spree::Image','2013-09-15 20:39:05',''),(36,200,'Spree::Variant',526,800,245897,2,'image/jpeg','Caballito_loco_2.jpg','Spree::Image','2013-09-15 18:07:40',''),(37,204,'Spree::Variant',472,800,240954,1,'image/jpeg','Dino_rex_1.jpg','Spree::Image','2013-09-15 18:18:30',''),(38,204,'Spree::Variant',568,800,193182,2,'image/jpeg','Dino_rex_2.jpg','Spree::Image','2013-09-15 18:18:48',''),(39,205,'Spree::Variant',800,718,273284,1,'image/jpeg','Oruguita_come_fruta_1.jpg','Spree::Image','2013-09-15 19:55:19',''),(40,205,'Spree::Variant',800,727,270506,2,'image/jpeg','Oruguita_come_fruta_2.jpg','Spree::Image','2013-09-15 19:55:43',''),(41,205,'Spree::Variant',761,800,368936,3,'image/jpeg','_MG_2681.jpg','Spree::Image','2013-09-15 19:56:20',''),(42,209,'Spree::Variant',759,800,314362,1,'image/jpeg','Animacubo.jpg','Spree::Image','2013-09-15 17:54:08',''),(43,209,'Spree::Variant',607,800,253442,2,'image/jpeg','_MG_3114.jpg','Spree::Image','2013-09-15 17:54:28',''),(44,212,'Spree::Variant',736,800,405737,1,'image/jpeg','Emoticubo.jpg','Spree::Image','2013-09-15 19:08:56',''),(45,209,'Spree::Variant',800,792,619485,3,'image/jpeg','_MG_2702.jpg','Spree::Image','2013-09-15 17:55:07',''),(46,30,'Spree::Variant',800,754,283064,1,'image/jpeg','Cuentos_para_conversar_1.jpg','Spree::Image','2013-09-15 18:17:14',''),(47,209,'Spree::Variant',800,779,687987,4,'image/jpeg','_MG_2701.jpg','Spree::Image','2013-09-15 17:56:35',''),(48,212,'Spree::Variant',800,755,810705,2,'image/jpeg','_MG_2698.jpg','Spree::Image','2013-09-15 19:09:38',''),(49,209,'Spree::Variant',800,784,810152,5,'image/jpeg','_MG_2700.jpg','Spree::Image','2013-09-15 17:57:14',''),(50,30,'Spree::Variant',800,619,355219,2,'image/jpeg','Cuentos_para_conversar_2.jpg','Spree::Image','2013-09-15 18:17:38',''),(51,209,'Spree::Variant',800,769,718921,6,'image/jpeg','_MG_2699.jpg','Spree::Image','2013-09-15 17:58:03',''),(52,30,'Spree::Variant',800,614,334837,3,'image/jpeg','Cuentos_para_conversar_3.jpg','Spree::Image','2013-09-15 18:17:59',''),(53,212,'Spree::Variant',800,777,766244,3,'image/jpeg','_MG_2697.jpg','Spree::Image','2013-09-15 19:10:16',''),(54,215,'Spree::Variant',800,533,437789,1,'image/jpeg','_MG_3257.jpg','Spree::Image','2013-09-15 19:47:50',''),(55,212,'Spree::Variant',800,766,725018,4,'image/jpeg','_MG_2696.jpg','Spree::Image','2013-09-15 19:12:48',''),(56,212,'Spree::Variant',800,800,753336,5,'image/jpeg','_MG_2695.jpg','Spree::Image','2013-09-15 19:13:35',''),(57,215,'Spree::Variant',663,800,327388,2,'image/jpeg','_MG_3243.jpg','Spree::Image','2013-09-15 19:48:13',''),(58,223,'Spree::Variant',800,533,144777,1,'image/jpeg','_MG_3325.jpg','Spree::Image','2013-09-15 18:08:29',''),(60,223,'Spree::Variant',800,533,212179,2,'image/jpeg','_MG_3324.jpg','Spree::Image','2013-09-15 18:08:56',''),(61,220,'Spree::Variant',533,800,340626,1,'image/jpeg','_MG_3300.jpg','Spree::Image','2013-09-15 20:50:35',''),(62,223,'Spree::Variant',533,800,315831,3,'image/jpeg','_MG_2999.jpg','Spree::Image','2013-09-15 18:09:20',''),(63,220,'Spree::Variant',678,800,211561,2,'image/jpeg','_MG_2915.jpg','Spree::Image','2013-09-15 20:50:53',''),(64,220,'Spree::Variant',800,533,253615,3,'image/jpeg','_MG_3292.jpg','Spree::Image','2013-09-15 20:51:13',''),(65,227,'Spree::Variant',800,707,406296,1,'image/jpeg','Ratones_traviesos_1.jpg','Spree::Image','2013-09-15 20:06:15',''),(66,227,'Spree::Variant',800,607,244849,2,'image/jpeg','Ratones_traviesos_2.jpg','Spree::Image','2013-09-15 20:06:38',''),(67,227,'Spree::Variant',800,711,360053,3,'image/jpeg','Ratones_traviesos_3.jpg','Spree::Image','2013-09-15 20:07:11',''),(68,227,'Spree::Variant',800,745,413498,4,'image/jpeg','Cuyes_traviesos_1.jpg','Spree::Image','2013-09-15 20:07:36',''),(69,227,'Spree::Variant',800,574,230578,5,'image/jpeg','Cuyes_traviesos_2.jpg','Spree::Image','2013-09-15 20:08:02',''),(70,227,'Spree::Variant',800,727,385771,6,'image/jpeg','Cuyes_traviesos_3.jpg','Spree::Image','2013-09-15 20:08:31',''),(71,227,'Spree::Variant',800,567,406187,7,'image/jpeg','_MG_3145.jpg','Spree::Image','2013-09-15 20:09:41',''),(72,230,'Spree::Variant',800,644,323929,1,'image/jpeg','Sonajas_maxi.jpg','Spree::Image','2013-09-15 20:14:26',''),(73,230,'Spree::Variant',800,533,171438,2,'image/jpeg','_MG_3096.jpg','Spree::Image','2013-09-15 20:15:36',''),(74,241,'Spree::Variant',800,653,394277,1,'image/jpeg','Pelotas_engañosas.jpg','Spree::Image','2013-09-15 19:57:44',''),(75,241,'Spree::Variant',800,653,258511,2,'image/jpeg','pelotas_engañosas_2.jpg','Spree::Image','2013-09-15 19:58:08',''),(76,254,'Spree::Variant',800,574,249032,1,'image/jpeg','Kit_de_alimentos.jpg','Spree::Image','2013-09-15 19:49:28',''),(77,254,'Spree::Variant',800,533,291642,2,'image/jpeg','_MG_2194.jpg','Spree::Image','2013-09-15 19:49:50',''),(78,254,'Spree::Variant',770,800,623564,3,'image/jpeg','_MG_2146.jpg','Spree::Image','2013-09-15 19:50:27',''),(79,254,'Spree::Variant',762,800,507155,4,'image/jpeg','_MG_2162.jpg','Spree::Image','2013-09-15 19:50:55',''),(80,267,'Spree::Variant',800,517,313242,1,'image/jpeg','1000_posibilidades_1.jpg','Spree::Image','2013-09-15 18:04:32',''),(81,267,'Spree::Variant',800,391,166554,2,'image/jpeg','1000_posibilidades_2.jpg','Spree::Image','2013-09-15 18:04:49',''),(82,254,'Spree::Variant',800,533,189082,5,'image/jpeg','_MG_2150.jpg','Spree::Image','2013-09-15 19:51:18',''),(83,267,'Spree::Variant',800,758,240617,3,'image/jpeg','1000_posibilidades_3.jpg','Spree::Image','2013-09-15 18:05:11',''),(84,254,'Spree::Variant',770,800,623564,6,'image/jpeg','_MG_2146.jpg','Spree::Image','2013-09-15 19:52:06',''),(85,254,'Spree::Variant',800,606,213701,7,'image/jpeg','_MG_2137.jpg','Spree::Image','2013-09-15 19:52:29',''),(86,267,'Spree::Variant',800,533,193029,4,'image/jpeg','_MG_2811.jpg','Spree::Image','2013-09-15 18:05:50',''),(87,267,'Spree::Variant',800,771,282585,5,'image/jpeg','_MG_2792.jpg','Spree::Image','2013-09-15 18:06:17',''),(88,241,'Spree::Variant',800,379,179533,3,'image/jpeg','_MG_2073.jpg','Spree::Image','2013-09-15 19:58:25',''),(89,254,'Spree::Variant',708,800,400148,8,'image/jpeg','_MG_2129.jpg','Spree::Image','2013-09-15 19:53:06',''),(90,308,'Spree::Variant',800,569,241097,1,'image/jpeg','Tubiflex_1.jpg','Spree::Image','2013-09-15 20:44:59',''),(91,308,'Spree::Variant',800,533,154418,2,'image/jpeg','Tubiflex_2.jpg','Spree::Image','2013-09-15 20:45:48',''),(92,308,'Spree::Variant',441,800,112302,3,'image/jpeg','Tubiflex3.jpg','Spree::Image','2013-09-15 20:46:05',''),(93,308,'Spree::Variant',800,462,206248,4,'image/jpeg','_MG_2833.jpg','Spree::Image','2013-09-15 20:46:36',''),(94,316,'Spree::Variant',595,800,343978,1,'image/jpeg','Títere_hocicón_perro.jpg','Spree::Image','2013-09-15 20:39:45',''),(95,316,'Spree::Variant',571,800,243410,2,'image/jpeg','Títere_hocicón_pato.jpg','Spree::Image','2013-09-15 20:40:58',''),(96,316,'Spree::Variant',678,800,273435,3,'image/jpeg','Títere_hocicón_cerdo.jpg','Spree::Image','2013-09-15 20:41:19',''),(97,341,'Spree::Variant',588,800,253077,1,'image/jpeg','Cuentos_de_la_abuela.jpg','Spree::Image','2013-09-15 18:10:31',''),(98,341,'Spree::Variant',800,339,800068,2,'image/jpeg','CUENTOS_DE_LA_ABUELA-abuela.jpg','Spree::Image','2013-09-15 18:11:37',''),(99,344,'Spree::Variant',544,800,237784,1,'image/jpeg','Diverdisfraces_rana.jpg','Spree::Image','2013-09-15 18:19:28',''),(100,344,'Spree::Variant',564,800,246788,2,'image/jpeg','Diverdisfraces_oso.jpg','Spree::Image','2013-09-15 18:32:51',''),(101,344,'Spree::Variant',526,800,205551,3,'image/jpeg','Diverdisfraces_conejo.jpg','Spree::Image','2013-09-15 18:33:08',''),(102,369,'Spree::Variant',800,649,306241,1,'image/jpeg','_MG_2489.jpg','Spree::Image','2013-09-15 19:42:29',''),(103,369,'Spree::Variant',611,800,396886,2,'image/jpeg','_MG_2531.jpg','Spree::Image','2013-09-15 19:43:17',''),(104,369,'Spree::Variant',800,593,317481,3,'image/jpeg','_MG_2535.jpg','Spree::Image','2013-09-15 19:43:41',''),(105,376,'Spree::Variant',800,510,257146,1,'image/jpeg','_MG_2380.jpg','Spree::Image','2013-09-15 19:46:15',''),(106,376,'Spree::Variant',800,533,408605,2,'image/jpeg','_MG_3165.jpg','Spree::Image','2013-09-15 19:46:42',''),(107,380,'Spree::Variant',800,661,325460,1,'image/jpeg','Gira-gira_1.jpg','Spree::Image','2013-09-15 19:44:26',''),(108,380,'Spree::Variant',800,423,264851,2,'image/jpeg','Gira_Gira_2.jpg','Spree::Image','2013-09-15 19:44:48',''),(109,380,'Spree::Variant',800,545,123508,3,'image/jpeg','Gira_gira_3.jpg','Spree::Image','2013-09-15 19:45:05',''),(110,380,'Spree::Variant',800,533,230969,4,'image/jpeg','_MG_3062.jpg','Spree::Image','2013-09-15 19:45:25',''),(111,344,'Spree::Variant',431,800,144093,4,'image/jpeg','_MG_2882.jpg','Spree::Image','2013-09-15 18:34:34',''),(112,344,'Spree::Variant',362,800,174790,5,'image/jpeg','_MG_2877.jpg','Spree::Image','2013-09-15 18:34:52',''),(113,344,'Spree::Variant',385,800,160913,6,'image/jpeg','_MG_2876.jpg','Spree::Image','2013-09-15 19:06:56',''),(114,33,'Spree::Variant',611,800,396886,2,'image/jpeg','_MG_2531.jpg','Spree::Image','2013-09-15 19:40:34',''),(115,33,'Spree::Variant',800,649,306241,3,'image/jpeg','_MG_2489.jpg','Spree::Image','2013-09-15 19:41:01',''),(116,316,'Spree::Variant',800,533,366572,4,'image/jpeg','_MG_3237.jpg','Spree::Image','2013-09-15 20:41:46',''),(117,316,'Spree::Variant',800,488,293883,5,'image/jpeg','_MG_3223.jpg','Spree::Image','2013-09-15 20:42:10',''),(118,316,'Spree::Variant',800,533,397859,6,'image/jpeg','_MG_3230.jpg','Spree::Image','2013-09-15 20:43:57','');
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_authentication_methods`
--

DROP TABLE IF EXISTS `spree_authentication_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_authentication_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_secret` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_authentication_methods`
--

LOCK TABLES `spree_authentication_methods` WRITE;
/*!40000 ALTER TABLE `spree_authentication_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_authentication_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_blog_entries`
--

DROP TABLE IF EXISTS `spree_blog_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_blog_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `permalink` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `summary` text,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_blog_entries_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_blog_entries`
--

LOCK TABLES `spree_blog_entries` WRITE;
/*!40000 ALTER TABLE `spree_blog_entries` DISABLE KEYS */;
INSERT INTO `spree_blog_entries` VALUES (1,'Primer blog','Este es el contenido del primer blog de Yupiyap. Este es el contenido del primer blog de Yupiyap. Este es el contenido del primer blog de Yupiyap. Este es el contenido del primer blog de Yupiyap. Este es el contenido del primer blog de Yupiyap. Este es el contenido del primer blog de Yupiyap.','primer-blog','2013-10-01 14:15:27','2013-10-01 14:15:27',1,'2013-10-01 00:00:00','Este es el contenido del primer blog de Yupiyap. ',2);
/*!40000 ALTER TABLE `spree_blog_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::FlatPercentItemTotal',1,'Spree::ShippingMethod','2013-09-04 04:34:24','2013-09-04 04:34:24');
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_configurations`
--

DROP TABLE IF EXISTS `spree_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_configurations`
--

LOCK TABLES `spree_configurations` WRITE;
/*!40000 ALTER TABLE `spree_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_contact_topics`
--

DROP TABLE IF EXISTS `spree_contact_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_contact_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `emails` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_contact_topics`
--

LOCK TABLES `spree_contact_topics` WRITE;
/*!40000 ALTER TABLE `spree_contact_topics` DISABLE KEYS */;
INSERT INTO `spree_contact_topics` VALUES (1,'Consulta','jesussayes@gmail.com','2013-09-04 04:23:17','2013-09-04 04:23:17');
/*!40000 ALTER TABLE `spree_contact_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_contacts`
--

DROP TABLE IF EXISTS `spree_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `message` text,
  `spree_topic_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_contacts_on_spree_topic_id` (`spree_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_contacts`
--

LOCK TABLES `spree_contacts` WRITE;
/*!40000 ALTER TABLE `spree_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) DEFAULT NULL,
  `iso` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'CHAD','TD','TCD','Chad',148,1),(2,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,1),(3,'INDIA','IN','IND','India',356,1),(4,'NICARAGUA','NI','NIC','Nicaragua',558,1),(5,'SAINT LUCIA','LC','LCA','Saint Lucia',662,1),(6,'FIJI','FJ','FJI','Fiji',242,1),(7,'INDONESIA','ID','IDN','Indonesia',360,1),(8,'NIGER','NE','NER','Niger',562,1),(9,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,1),(10,'FINLAND','FI','FIN','Finland',246,1),(11,'NIGERIA','NG','NGA','Nigeria',566,1),(12,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,1),(13,'FRANCE','FR','FRA','France',250,1),(14,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,1),(15,'NIUE','NU','NIU','Niue',570,1),(16,'SAMOA','WS','WSM','Samoa',882,1),(17,'FRENCH GUIANA','GF','GUF','French Guiana',254,1),(18,'IRAQ','IQ','IRQ','Iraq',368,1),(19,'SAN MARINO','SM','SMR','San Marino',674,1),(20,'IRELAND','IE','IRL','Ireland',372,1),(21,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,1),(22,'ISRAEL','IL','ISR','Israel',376,1),(23,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,1),(24,'ITALY','IT','ITA','Italy',380,1),(25,'SENEGAL','SN','SEN','Senegal',686,1),(26,'JAMAICA','JM','JAM','Jamaica',388,1),(27,'JAPAN','JP','JPN','Japan',392,1),(28,'JORDAN','JO','JOR','Jordan',400,1),(29,'BELGIUM','BE','BEL','Belgium',56,1),(30,'BELIZE','BZ','BLZ','Belize',84,1),(31,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,1),(32,'UGANDA','UG','UGA','Uganda',800,1),(33,'BENIN','BJ','BEN','Benin',204,1),(34,'KENYA','KE','KEN','Kenya',404,1),(35,'UKRAINE','UA','UKR','Ukraine',804,1),(36,'BERMUDA','BM','BMU','Bermuda',60,1),(37,'KIRIBATI','KI','KIR','Kiribati',296,1),(38,'MEXICO','MX','MEX','Mexico',484,1),(39,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1),(40,'BHUTAN','BT','BTN','Bhutan',64,1),(41,'CUBA','CU','CUB','Cuba',192,1),(42,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','North Korea',408,1),(43,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1),(44,'UNITED KINGDOM','GB','GBR','United Kingdom',826,1),(45,'BOLIVIA','BO','BOL','Bolivia',68,1),(46,'CYPRUS','CY','CYP','Cyprus',196,1),(47,'KOREA, REPUBLIC OF','KR','KOR','South Korea',410,1),(48,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,1),(49,'UNITED STATES','US','USA','United States',840,1),(50,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1),(51,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,1),(52,'KUWAIT','KW','KWT','Kuwait',414,1),(53,'MONACO','MC','MCO','Monaco',492,1),(54,'URUGUAY','UY','URY','Uruguay',858,1),(55,'BOTSWANA','BW','BWA','Botswana',72,1),(56,'DENMARK','DK','DNK','Denmark',208,1),(57,'GUADELOUPE','GP','GLP','Guadeloupe',312,1),(58,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,1),(59,'MONGOLIA','MN','MNG','Mongolia',496,1),(60,'PHILIPPINES','PH','PHL','Philippines',608,1),(61,'BRAZIL','BR','BRA','Brazil',76,1),(62,'DJIBOUTI','DJ','DJI','Djibouti',262,1),(63,'GUAM','GU','GUM','Guam',316,1),(64,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,1),(65,'MONTSERRAT','MS','MSR','Montserrat',500,1),(66,'PITCAIRN','PN','PCN','Pitcairn',612,1),(67,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,1),(68,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,1),(69,'DOMINICA','DM','DMA','Dominica',212,1),(70,'GUATEMALA','GT','GTM','Guatemala',320,1),(71,'MOROCCO','MA','MAR','Morocco',504,1),(72,'POLAND','PL','POL','Poland',616,1),(73,'VANUATU','VU','VUT','Vanuatu',548,1),(74,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,1),(75,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,1),(76,'PORTUGAL','PT','PRT','Portugal',620,1),(77,'SUDAN','SD','SDN','Sudan',736,1),(78,'VENEZUELA','VE','VEN','Venezuela',862,1),(79,'ECUADOR','EC','ECU','Ecuador',218,1),(80,'GUINEA','GN','GIN','Guinea',324,1),(81,'MYANMAR','MM','MMR','Myanmar',104,1),(82,'PUERTO RICO','PR','PRI','Puerto Rico',630,1),(83,'SURINAME','SR','SUR','Suriname',740,1),(84,'VIET NAM','VN','VNM','Viet Nam',704,1),(85,'EGYPT','EG','EGY','Egypt',818,1),(86,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,1),(87,'NAMIBIA','NA','NAM','Namibia',516,1),(88,'QATAR','QA','QAT','Qatar',634,1),(89,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,1),(90,'EL SALVADOR','SV','SLV','El Salvador',222,1),(91,'GUYANA','GY','GUY','Guyana',328,1),(92,'REUNION','RE','REU','Reunion',638,1),(93,'HAITI','HT','HTI','Haiti',332,1),(94,'ROMANIA','RO','ROM','Romania',642,1),(95,'SWAZILAND','SZ','SWZ','Swaziland',748,1),(96,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,1),(97,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1),(98,'SWEDEN','SE','SWE','Sweden',752,1),(99,'HONDURAS','HN','HND','Honduras',340,1),(100,'RWANDA','RW','RWA','Rwanda',646,1),(101,'SWITZERLAND','CH','CHE','Switzerland',756,1),(102,'HONG KONG','HK','HKG','Hong Kong',344,1),(103,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,1),(104,'TAIWAN, PROVINCE OF CHINA','TW','TWN','Taiwan',158,1),(105,'TAJIKISTAN','TJ','TJK','Tajikistan',762,1),(106,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,1),(107,'ARMENIA','AM','ARM','Armenia',51,1),(108,'ARUBA','AW','ABW','Aruba',533,1),(109,'AUSTRALIA','AU','AUS','Australia',36,1),(110,'THAILAND','TH','THA','Thailand',764,1),(111,'AUSTRIA','AT','AUT','Austria',40,1),(112,'MADAGASCAR','MG','MDG','Madagascar',450,1),(113,'TOGO','TG','TGO','Togo',768,1),(114,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,1),(115,'CHILE','CL','CHL','Chile',152,1),(116,'MALAWI','MW','MWI','Malawi',454,1),(117,'TOKELAU','TK','TKL','Tokelau',772,1),(118,'BAHAMAS','BS','BHS','Bahamas',44,1),(119,'CHINA','CN','CHN','China',156,1),(120,'MALAYSIA','MY','MYS','Malaysia',458,1),(121,'TONGA','TO','TON','Tonga',776,1),(122,'BAHRAIN','BH','BHR','Bahrain',48,1),(123,'COLOMBIA','CO','COL','Colombia',170,1),(124,'MALDIVES','MV','MDV','Maldives',462,1),(125,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,1),(126,'BANGLADESH','BD','BGD','Bangladesh',50,1),(127,'COMOROS','KM','COM','Comoros',174,1),(128,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,1),(129,'MALI','ML','MLI','Mali',466,1),(130,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,1),(131,'TUNISIA','TN','TUN','Tunisia',788,1),(132,'BARBADOS','BB','BRB','Barbados',52,1),(133,'CONGO','CG','COG','Congo',178,1),(134,'GABON','GA','GAB','Gabon',266,1),(135,'MALTA','MT','MLT','Malta',470,1),(136,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,1),(137,'TURKEY','TR','TUR','Turkey',792,1),(138,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, the Democratic Republic of the',180,1),(139,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,1),(140,'NORWAY','NO','NOR','Norway',578,1),(141,'TURKMENISTAN','TM','TKM','Turkmenistan',795,1),(142,'BELARUS','BY','BLR','Belarus',112,1),(143,'COOK ISLANDS','CK','COK','Cook Islands',184,1),(144,'GAMBIA','GM','GMB','Gambia',270,1),(145,'MARTINIQUE','MQ','MTQ','Martinique',474,1),(146,'OMAN','OM','OMN','Oman',512,1),(147,'SEYCHELLES','SC','SYC','Seychelles',690,1),(148,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,1),(149,'GEORGIA','GE','GEO','Georgia',268,1),(150,'MAURITANIA','MR','MRT','Mauritania',478,1),(151,'PAKISTAN','PK','PAK','Pakistan',586,1),(152,'SIERRA LEONE','SL','SLE','Sierra Leone',694,1),(153,'TUVALU','TV','TUV','Tuvalu',798,1),(154,'COSTA RICA','CR','CRI','Costa Rica',188,1),(155,'GERMANY','DE','DEU','Germany',276,1),(156,'MAURITIUS','MU','MUS','Mauritius',480,1),(157,'PALAU','PW','PLW','Palau',585,1),(158,'COTE D\'IVOIRE','CI','CIV','Cote D\'Ivoire',384,1),(159,'PANAMA','PA','PAN','Panama',591,1),(160,'SINGAPORE','SG','SGP','Singapore',702,1),(161,'CROATIA','HR','HRV','Croatia',191,1),(162,'GHANA','GH','GHA','Ghana',288,1),(163,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,1),(164,'SLOVAKIA','SK','SVK','Slovakia',703,1),(165,'GIBRALTAR','GI','GIB','Gibraltar',292,1),(166,'PARAGUAY','PY','PRY','Paraguay',600,1),(167,'SLOVENIA','SI','SVN','Slovenia',705,1),(168,'GREECE','GR','GRC','Greece',300,1),(169,'PERU','PE','PER','Peru',604,1),(170,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,1),(171,'GREENLAND','GL','GRL','Greenland',304,1),(172,'SOMALIA','SO','SOM','Somalia',706,1),(173,'GRENADA','GD','GRD','Grenada',308,1),(174,'SOUTH AFRICA','ZA','ZAF','South Africa',710,1),(175,'SPAIN','ES','ESP','Spain',724,1),(176,'SRI LANKA','LK','LKA','Sri Lanka',144,1),(177,'AFGHANISTAN','AF','AFG','Afghanistan',4,1),(178,'ALBANIA','AL','ALB','Albania',8,1),(179,'ALGERIA','DZ','DZA','Algeria',12,1),(180,'LATVIA','LV','LVA','Latvia',428,1),(181,'AMERICAN SAMOA','AS','ASM','American Samoa',16,1),(182,'BULGARIA','BG','BGR','Bulgaria',100,1),(183,'LEBANON','LB','LBN','Lebanon',422,1),(184,'ANDORRA','AD','AND','Andorra',20,1),(185,'BURKINA FASO','BF','BFA','Burkina Faso',854,1),(186,'LESOTHO','LS','LSO','Lesotho',426,1),(187,'ANGOLA','AO','AGO','Angola',24,1),(188,'BURUNDI','BI','BDI','Burundi',108,1),(189,'LIBERIA','LR','LBR','Liberia',430,1),(190,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,1),(191,'ANGUILLA','AI','AIA','Anguilla',660,1),(192,'CAMBODIA','KH','KHM','Cambodia',116,1),(193,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,1),(194,'LIBYAN ARAB JAMAHIRIYA','LY','LBY','Libyan Arab Jamahiriya',434,1),(195,'NAURU','NR','NRU','Nauru',520,1),(196,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,1),(197,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,1),(198,'CAMEROON','CM','CMR','Cameroon',120,1),(199,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,1),(200,'NEPAL','NP','NPL','Nepal',524,1),(201,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,1),(202,'WESTERN SAHARA','EH','ESH','Western Sahara',732,1),(203,'ARGENTINA','AR','ARG','Argentina',32,1),(204,'CANADA','CA','CAN','Canada',124,1),(205,'ERITREA','ER','ERI','Eritrea',232,1),(206,'LITHUANIA','LT','LTU','Lithuania',440,1),(207,'NETHERLANDS','NL','NLD','Netherlands',528,1),(208,'YEMEN','YE','YEM','Yemen',887,1),(209,'CAPE VERDE','CV','CPV','Cape Verde',132,1),(210,'ESTONIA','EE','EST','Estonia',233,1),(211,'LUXEMBOURG','LU','LUX','Luxembourg',442,1),(212,'NETHERLANDS ANTILLES','AN','ANT','Netherlands Antilles',530,1),(213,'SAINT HELENA','SH','SHN','Saint Helena',654,1),(214,'ZAMBIA','ZM','ZMB','Zambia',894,1),(215,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,1),(216,'ETHIOPIA','ET','ETH','Ethiopia',231,1),(217,'HUNGARY','HU','HUN','Hungary',348,1),(218,'MACAO','MO','MAC','Macao',446,1),(219,'NEW CALEDONIA','NC','NCL','New Caledonia',540,1),(220,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,1),(221,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,1),(222,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,1),(223,'ICELAND','IS','ISL','Iceland',352,1),(224,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','MKD','Macedonia',807,1),(225,'NEW ZEALAND','NZ','NZL','New Zealand',554,1),(226,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1),(227,'SERBIA','RS','SRB','Serbia',999,1);
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `last_digits` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `start_month` varchar(255) DEFAULT NULL,
  `start_year` varchar(255) DEFAULT NULL,
  `issue_number` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `server` varchar(255) DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lock_version` int(11) DEFAULT '0',
  `state` varchar(255) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (4,210,10,1,40.00,'2013-09-15 15:52:24','2013-09-18 05:41:11','PEN'),(5,212,12,1,45.00,'2013-09-20 05:00:29','2013-09-20 05:00:29','PEN'),(6,30,14,1,30.00,'2013-09-25 17:07:39','2013-09-25 17:07:39','PEN'),(7,200,20,1,42.00,'2013-10-10 01:13:44','2013-10-10 01:13:44','PEN'),(8,30,19,1,30.00,'2013-10-15 18:40:39','2013-10-15 18:40:39','PEN'),(9,212,22,1,45.00,'2013-10-17 21:11:47','2013-10-17 21:11:47','PEN');
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_mail_methods`
--

DROP TABLE IF EXISTS `spree_mail_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_mail_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_mail_methods`
--

LOCK TABLES `spree_mail_methods` WRITE;
/*!40000 ALTER TABLE `spree_mail_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_mail_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_messages`
--

DROP TABLE IF EXISTS `spree_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_messages`
--

LOCK TABLES `spree_messages` WRITE;
/*!40000 ALTER TABLE `spree_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (2,'Material','Material',0,'2013-08-22 16:51:10','2013-08-22 16:51:10'),(3,'Color','Color',0,'2013-08-22 16:53:11','2013-08-22 16:53:11'),(4,'Edades','Edades',0,'2013-08-22 16:55:52','2013-08-22 16:55:52'),(5,'Animales','Animales',0,'2013-08-22 16:57:46','2013-08-22 16:57:46'),(6,'Frutas','Frutas',0,'2013-09-13 13:51:54','2013-09-13 13:51:54');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
INSERT INTO `spree_option_types_prototypes` VALUES (1,2),(1,4),(1,5),(2,4),(3,2),(3,3),(4,2),(4,3),(4,4),(5,2),(5,3),(5,4),(5,5),(5,6),(4,5),(6,2),(6,4),(6,5),(7,4),(7,5);
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Mixto','Mixto',2,'2013-08-22 16:52:51','2013-08-22 16:52:51'),(2,2,'Tela','Tela',2,'2013-08-22 16:52:51','2013-08-22 16:52:51'),(3,3,'Goma Espuma','Goma Espuma',2,'2013-08-22 16:52:51','2013-08-22 16:52:51'),(4,4,'Madera','Madera',2,'2013-08-22 16:52:51','2013-08-22 16:52:51'),(5,5,'Plastico','Plástico',2,'2013-08-22 16:52:51','2013-08-22 16:52:51'),(6,1,'Multiple','Multiple',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(7,2,'Celeste','Celeste',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(8,3,'Naranja','Naranja',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(9,4,'Rosado','Rosado',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(10,5,'Blanco','Blanco',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(11,6,'Negro','Negro',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(12,7,'Amarillo','Amarillo',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(13,8,'Verde','Verde',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(14,9,'Marrón','Marrón',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(15,10,'Rojo','Rojo',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(16,11,'Azul','Azul',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(17,12,'Morado','Morado',3,'2013-08-22 16:54:54','2013-08-22 16:54:54'),(18,1,'0 a 1 año','0 a 1 año',4,'2013-08-22 16:57:33','2013-08-22 16:57:33'),(19,2,'1 a 2 años','1 a 2 años',4,'2013-08-22 16:57:33','2013-08-22 16:57:33'),(20,3,'2 a 3 años','2 a 3 años',4,'2013-08-22 16:57:33','2013-08-22 16:57:33'),(21,4,'3 a 4 años','3 a 4 años',4,'2013-08-22 16:57:33','2013-08-22 16:57:33'),(22,5,'4 a 5 años','4 a 5 años',4,'2013-08-22 16:57:33','2013-08-22 16:57:33'),(23,6,'0 a 5 años','0 a 5 años',4,'2013-08-22 16:57:33','2013-08-22 16:57:33'),(24,1,'Conejo','Conejo',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(25,2,'Cerdo','Cerdo',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(26,3,'Vaca','Vaca',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(27,4,'Perro','Perro',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(28,5,'Gato','Gato',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(29,6,'Caballo','Caballo',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(30,7,'Ratón','Ratón',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(31,8,'Rana','Rana',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(32,9,'Oso','Oso',5,'2013-08-22 16:59:09','2013-08-22 16:59:09'),(33,1,'Naranja','Naranja',6,'2013-09-13 13:52:54','2013-09-13 13:52:54'),(34,2,'Fresa','Fresa',6,'2013-09-13 13:52:54','2013-09-13 13:52:54'),(35,3,'Uva','Uva',6,'2013-09-13 13:52:54','2013-09-13 13:52:54'),(36,4,'Manzana','Manzana',6,'2013-09-13 13:52:54','2013-09-13 13:52:54'),(37,5,'Platano','Platano',6,'2013-09-13 13:52:54','2013-09-13 13:52:54'),(38,6,'Variadas','Variadas',6,'2013-09-13 13:52:54','2013-09-13 13:52:54'),(39,10,'Dinosaurio','Dinosaurio',5,'2013-09-13 18:01:16','2013-09-13 18:01:16'),(40,11,'Peces','Peces',5,'2013-09-13 20:55:31','2013-09-13 20:55:31'),(41,12,'Cuy','Cuy',5,'2013-09-13 22:04:45','2013-09-13 22:04:45');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (3,2),(3,18),(3,24),(4,2),(4,19),(4,24),(5,2),(5,20),(5,24),(6,2),(6,18),(6,25),(7,2),(7,19),(7,25),(8,2),(8,20),(8,25),(9,2),(9,18),(9,26),(10,2),(10,19),(10,26),(11,2),(11,20),(11,26),(12,2),(12,18),(12,27),(13,2),(13,19),(13,27),(14,2),(14,20),(14,27),(15,2),(15,18),(15,28),(16,2),(16,19),(16,28),(17,2),(17,20),(17,28),(18,2),(18,18),(18,29),(19,2),(19,19),(19,29),(20,2),(20,20),(20,29),(21,2),(21,18),(21,30),(22,2),(22,19),(22,30),(23,2),(23,20),(23,30),(24,2),(24,18),(24,31),(25,2),(25,19),(25,31),(26,2),(26,20),(26,31),(27,2),(27,18),(27,32),(28,2),(28,19),(28,32),(29,2),(29,20),(29,32),(31,21),(32,22),(34,3),(34,6),(35,3),(35,8),(36,3),(36,9),(37,3),(37,12),(38,3),(38,13),(39,3),(39,15),(40,3),(40,16),(42,1),(42,19),(42,33),(43,2),(43,19),(43,33),(44,3),(44,19),(44,33),(45,4),(45,19),(45,33),(46,5),(46,19),(46,33),(47,1),(47,20),(47,33),(48,2),(48,20),(48,33),(49,3),(49,20),(49,33),(50,4),(50,20),(50,33),(51,5),(51,20),(51,33),(52,1),(52,21),(52,33),(53,2),(53,21),(53,33),(54,3),(54,21),(54,33),(55,4),(55,21),(55,33),(56,5),(56,21),(56,33),(57,1),(57,19),(57,34),(58,2),(58,19),(58,34),(59,3),(59,19),(59,34),(60,4),(60,19),(60,34),(61,5),(61,19),(61,34),(62,1),(62,20),(62,34),(63,2),(63,20),(63,34),(64,3),(64,20),(64,34),(65,4),(65,20),(65,34),(66,5),(66,20),(66,34),(67,1),(67,21),(67,34),(68,2),(68,21),(68,34),(69,3),(69,21),(69,34),(70,4),(70,21),(70,34),(71,5),(71,21),(71,34),(72,1),(72,19),(72,35),(73,2),(73,19),(73,35),(74,3),(74,19),(74,35),(75,4),(75,19),(75,35),(76,5),(76,19),(76,35),(77,1),(77,20),(77,35),(78,2),(78,20),(78,35),(79,3),(79,20),(79,35),(80,4),(80,20),(80,35),(81,5),(81,20),(81,35),(82,1),(82,21),(82,35),(83,2),(83,21),(83,35),(84,3),(84,21),(84,35),(85,4),(85,21),(85,35),(86,5),(86,21),(86,35),(87,1),(87,19),(87,36),(88,2),(88,19),(88,36),(89,3),(89,19),(89,36),(90,4),(90,19),(90,36),(91,5),(91,19),(91,36),(92,1),(92,20),(92,36),(93,2),(93,20),(93,36),(94,3),(94,20),(94,36),(95,4),(95,20),(95,36),(96,5),(96,20),(96,36),(97,1),(97,21),(97,36),(98,2),(98,21),(98,36),(99,3),(99,21),(99,36),(100,4),(100,21),(100,36),(101,5),(101,21),(101,36),(102,1),(102,19),(102,37),(103,2),(103,19),(103,37),(104,3),(104,19),(104,37),(105,4),(105,19),(105,37),(106,5),(106,19),(106,37),(107,1),(107,20),(107,37),(108,2),(108,20),(108,37),(109,3),(109,20),(109,37),(110,4),(110,20),(110,37),(111,5),(111,20),(111,37),(112,1),(112,21),(112,37),(113,2),(113,21),(113,37),(114,3),(114,21),(114,37),(115,4),(115,21),(115,37),(116,5),(116,21),(116,37),(117,1),(117,19),(117,38),(118,2),(118,19),(118,38),(119,3),(119,19),(119,38),(120,4),(120,19),(120,38),(121,5),(121,19),(121,38),(122,1),(122,20),(122,38),(123,2),(123,20),(123,38),(124,3),(124,20),(124,38),(125,4),(125,20),(125,38),(126,5),(126,20),(126,38),(127,1),(127,21),(127,38),(128,2),(128,21),(128,38),(129,3),(129,21),(129,38),(130,4),(130,21),(130,38),(131,5),(131,21),(131,38),(133,1),(133,6),(134,2),(134,6),(135,3),(135,6),(136,4),(136,6),(137,5),(137,6),(138,1),(138,7),(139,2),(139,7),(140,3),(140,7),(141,4),(141,7),(142,5),(142,7),(143,1),(143,8),(144,2),(144,8),(145,3),(145,8),(146,4),(146,8),(147,5),(147,8),(148,1),(148,9),(149,2),(149,9),(150,3),(150,9),(151,4),(151,9),(152,5),(152,9),(153,1),(153,10),(154,2),(154,10),(155,3),(155,10),(156,4),(156,10),(157,5),(157,10),(158,1),(158,11),(159,2),(159,11),(160,3),(160,11),(161,4),(161,11),(162,5),(162,11),(163,1),(163,12),(164,2),(164,12),(165,3),(165,12),(166,4),(166,12),(167,5),(167,12),(168,1),(168,13),(169,2),(169,13),(170,3),(170,13),(171,4),(171,13),(172,5),(172,13),(173,1),(173,14),(174,2),(174,14),(175,3),(175,14),(176,4),(176,14),(177,5),(177,14),(178,1),(178,15),(179,2),(179,15),(180,3),(180,15),(181,4),(181,15),(182,5),(182,15),(183,1),(183,16),(184,2),(184,16),(185,3),(185,16),(186,4),(186,16),(187,5),(187,16),(188,1),(188,17),(189,2),(189,17),(190,3),(190,17),(191,4),(191,17),(192,5),(192,17),(194,2),(194,21),(195,2),(195,22),(197,2),(197,21),(198,2),(198,22),(201,1),(201,20),(201,29),(202,1),(202,21),(202,29),(203,1),(203,22),(203,29),(206,2),(206,6),(206,20),(207,2),(207,6),(207,21),(208,2),(208,6),(208,22),(210,2),(211,3),(213,2),(213,6),(214,3),(214,6),(216,2),(216,21),(217,5),(217,21),(218,2),(218,22),(219,5),(219,22),(221,2),(221,6),(221,40),(222,5),(222,6),(222,40),(224,2),(224,21),(225,2),(225,22),(226,2),(226,23),(228,30),(229,41),(231,2),(231,7),(231,18),(232,2),(232,8),(232,18),(233,2),(233,9),(233,18),(234,2),(234,13),(234,18),(235,2),(235,15),(235,18),(236,2),(236,7),(236,19),(237,2),(237,8),(237,19),(238,2),(238,9),(238,19),(239,2),(239,13),(239,19),(240,2),(240,15),(240,19),(242,1),(242,6),(243,1),(243,7),(244,1),(244,8),(245,1),(245,9),(246,1),(246,10),(247,1),(247,11),(248,1),(248,12),(249,1),(249,13),(250,1),(250,14),(251,1),(251,15),(252,1),(252,16),(253,1),(253,17),(255,2),(255,21),(255,33),(256,2),(256,22),(256,33),(257,2),(257,21),(257,34),(258,2),(258,22),(258,34),(259,2),(259,21),(259,35),(260,2),(260,22),(260,35),(261,2),(261,21),(261,36),(262,2),(262,22),(262,36),(263,2),(263,21),(263,37),(264,2),(264,22),(264,37),(265,2),(265,21),(265,38),(266,2),(266,22),(266,38),(268,3),(268,6),(268,19),(269,3),(269,7),(269,19),(270,3),(270,8),(270,19),(271,3),(271,9),(271,19),(272,3),(272,12),(272,19),(273,3),(273,13),(273,19),(274,3),(274,14),(274,19),(275,3),(275,15),(275,19),(276,3),(276,16),(276,19),(277,3),(277,17),(277,19),(278,3),(278,6),(278,20),(279,3),(279,7),(279,20),(280,3),(280,8),(280,20),(281,3),(281,9),(281,20),(282,3),(282,12),(282,20),(283,3),(283,13),(283,20),(284,3),(284,14),(284,20),(285,3),(285,15),(285,20),(286,3),(286,16),(286,20),(287,3),(287,17),(287,20),(288,3),(288,6),(288,21),(289,3),(289,7),(289,21),(290,3),(290,8),(290,21),(291,3),(291,9),(291,21),(292,3),(292,12),(292,21),(293,3),(293,13),(293,21),(294,3),(294,14),(294,21),(295,3),(295,15),(295,21),(296,3),(296,16),(296,21),(297,3),(297,17),(297,21),(298,3),(298,6),(298,22),(299,3),(299,7),(299,22),(300,3),(300,8),(300,22),(301,3),(301,9),(301,22),(302,3),(302,12),(302,22),(303,3),(303,13),(303,22),(304,3),(304,14),(304,22),(305,3),(305,15),(305,22),(306,3),(306,16),(306,22),(307,3),(307,17),(307,22),(309,3),(309,6),(310,3),(310,7),(311,3),(311,9),(312,3),(312,12),(313,3),(313,13),(314,3),(314,15),(315,3),(315,16),(317,2),(317,21),(317,24),(318,2),(318,21),(318,25),(319,2),(319,21),(319,26),(320,2),(320,21),(320,27),(321,2),(321,21),(321,28),(322,2),(322,21),(322,29),(323,2),(323,21),(323,30),(324,2),(324,21),(324,31),(325,2),(325,21),(325,32),(326,2),(326,21),(326,39),(327,2),(327,21),(327,40),(328,2),(328,21),(328,41),(329,2),(329,22),(329,24),(330,2),(330,22),(330,25),(331,2),(331,22),(331,26),(332,2),(332,22),(332,27),(333,2),(333,22),(333,28),(334,2),(334,22),(334,29),(335,2),(335,22),(335,30),(336,2),(336,22),(336,31),(337,2),(337,22),(337,32),(338,2),(338,22),(338,39),(339,2),(339,22),(339,40),(340,2),(340,22),(340,41),(342,21),(343,22),(345,20),(345,24),(346,21),(346,24),(347,22),(347,24),(348,23),(348,24),(349,20),(349,25),(350,21),(350,25),(351,22),(351,25),(352,23),(352,25),(353,20),(353,26),(354,21),(354,26),(355,22),(355,26),(356,23),(356,26),(357,20),(357,27),(358,21),(358,27),(359,22),(359,27),(360,23),(360,27),(361,20),(361,28),(362,21),(362,28),(363,22),(363,28),(364,23),(364,28),(365,20),(365,32),(366,21),(366,32),(367,22),(367,32),(368,23),(368,32),(370,2),(370,6),(371,3),(371,6),(372,2),(372,12),(373,3),(373,12),(374,2),(374,13),(375,3),(375,13),(377,2),(377,6),(377,20),(378,2),(378,6),(378,21),(379,2),(379,6),(379,22),(381,2),(381,6),(381,20),(382,2),(382,6),(382,21);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(15) DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) DEFAULT NULL,
  `payment_state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `special_instructions` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `last_ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (3,'R216138267',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-05 00:40:22','2013-09-05 00:40:22','PEN',NULL),(7,'R212358846',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-09 19:26:12','2013-09-09 19:26:12','PEN',NULL),(8,'R628433462',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-13 19:10:50','2013-09-13 19:10:50','PEN',NULL),(9,'R461572344',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-17 22:57:37','2013-09-17 22:57:37','PEN',NULL),(10,'R453748428',40.00,40.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-09-18 05:40:34','2013-09-18 05:40:34','PEN',NULL),(12,'R232085783',45.00,45.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-09-20 05:00:28','2013-09-20 05:00:28','PEN',NULL),(13,'R415244145',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-21 16:06:25','2013-09-21 16:06:25','PEN',NULL),(14,'R282541636',30.00,30.00,'address',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due','ccastillop@gmail.com',NULL,'2013-09-25 17:07:31','2013-09-25 17:08:26','PEN','127.0.0.1'),(15,'R012768725',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-09-27 21:52:53','2013-09-27 21:52:53','PEN',NULL),(17,'R462837416',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-07 19:45:32','2013-10-07 19:45:32','PEN',NULL),(18,'R173652446',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-08 09:06:49','2013-10-08 09:06:49','PEN',NULL),(19,'R853805837',30.00,30.00,'address',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due','ccastillop@gmail.com',NULL,'2013-10-09 15:48:41','2013-10-16 14:25:37','PEN','127.0.0.1'),(20,'R578568880',42.00,42.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-10-10 01:13:44','2013-10-10 01:13:50','PEN','127.0.0.1'),(21,'R282856320',0.00,0.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,'2013-10-15 02:21:16','2013-10-15 02:21:16','PEN',NULL),(22,'R328755611',45.00,45.00,'cart',0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,'balance_due',NULL,NULL,'2013-10-17 21:11:47','2013-10-17 21:11:47','PEN',NULL),(23,'R211041882',0.00,0.00,'cart',0.00,1,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'admin@yupiyap.com',NULL,'2013-10-19 16:11:21','2013-10-19 16:11:21','PEN',NULL),(24,'R735371482',0.00,0.00,'cart',0.00,3,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'rmedinap@gmail.com',NULL,'2013-10-20 00:01:43','2013-10-20 00:01:43','PEN',NULL);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_pages`
--

DROP TABLE IF EXISTS `spree_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `show_in_header` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_footer` tinyint(1) NOT NULL DEFAULT '0',
  `foreign_link` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `visible` tinyint(1) DEFAULT '1',
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `show_in_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `render_layout_as_partial` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_pages_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_pages`
--

LOCK TABLES `spree_pages` WRITE;
/*!40000 ALTER TABLE `spree_pages` DISABLE KEYS */;
INSERT INTO `spree_pages` VALUES (2,'Acerca de','<p>Innova Creatividad para el Desarrollo SAC, es una empresa dedicada al desarrollo de propuestas educativas, y en esta oportunidad, te presentamos la línea Yupi yap!!, una línea de  materiales didácticos para niños menores de 6 años. Con nuestros productos podrás ayudar a tus niños a desarrollar su pensamiento, reforzar lazos afectivos y promover su creatividad.</p>\r\n<h2>Nuestros materiales</h2>\r\n<p>Todos los productos Yupi Yap!! son diseñados y elaborados cuidadosamente con material de calidad, fácil de limpiar y acabado de primera.</p>\r\n<p>La línea de materiales didácticos Yupi Yap!!, está organizada en tres áreas:</p>\r\n<ul>\r\n<li>Te cuento mil cuentos</li>\r\n<li>Imagino, descubro y creo</li>\r\n<li>Investigo, experimento y resuelvo</li>\r\n</ul>','acerca-de','2013-08-29 22:58:28','2013-09-13 13:35:21',1,1,'',1,1,'','','',0,'',0),(3,'Preguntas frecuentes','<b>¿Hace cuánto existe Yupi Yap en el mercado?</b><br>\r\nYupi Yap!! (consultar si se puede poner logo) es la marca de Innova Creatividad para el Desarrollo SAC, empresa que nace en el año 2005 en respuesta a la ausencia de materiales con fines educativos, pero a la vez divertidos, innovadores y con materiales seguros para los niños.\r\n<br>\r\n<b>¿Para qué edad están dirigidos los juegos y juguetes Yupi Yap?</b><br>\r\nYupi Yap se enfoca en material para bebes y niños desde los 0 hasta los 6 años. Estamos comprometidos en darles lo mejor a los niños de este rango de edad ya que es una etapa de máx, desarrollo, “Bloom (1964)  señalaba que a los 4 años se desarrolla el 50% de la inteligencia y a los 8 el 80%”*\r\n* http://sonrieperu.com/todoninas.htm\r\n<br>\r\n<b>\r\n¿Qué áreas de desarrollo abarcan los productos Yupi Yap?</b><br>\r\nTenemos 3 áreas de desarrollo:\r\n-	Te cuento mil cuentos. Área de lenguaje, expresión y comunicación.\r\n-	Imagino, descubro y creo. Área relacionada a la creatividad, imaginación y representación.\r\n-	Investigo, experimento y resuelvo. Área de resolución de problemas según la edad de cada niño.\r\n<br>\r\n<b>\r\nTengo niños pequeños a mi cuidado, quisiera estar mejor informada/o acerca sobre su crecimiento y desarrollo, ¿tienen información al respecto?</b><br>\r\nEn Yupi Yap sabemos el reto que implica cuidar y educar a tus niños, por esta razón tenemos para usted nuestro blog donde publicaremos entrevistas y consejos para ayudarla/lo a desarrollar mejor su tarea como padre, maestro o cuidador.\r\n\r\n<br>\r\n<b>\r\n¿De qué materiales están hechos los productos Yupi-Yap? ¿Son seguros?</b><br>\r\nEl material que más usamos en nuestros productos es la tela en sus diversas presentaciones, colores y texturas, ya que creemos que es un material afectivo para esta edad e invita al niño a tocar los productos y abrazarlos. Además es fácil de limpiar y es seguro, ya que evita golpes u otros daños. También usamos otros materiales que también son idóneos para su uso con niños.\r\n\r\n<br>\r\n<b>\r\n¿Cómo puedo tener un producto de la empresa?</b><br>\r\nPara tener un producto Yupi Yap tiene dos formas:\r\n-Si sólo desea uno o más productos que no pasen de 25 unidades accede a nuestra tienda virtual, seleccione su pedido y siga las instrucciones.\r\n-En caso se trate de una venta corporativa acceda al área de contacto y escríbanos a nuestro correo electrónico pedidos@innovacd.com\r\n<br>\r\n<b>\r\n¿Cómo es el proceso de envío? ¿Tiene algún costo extra?</b><br>\r\nEl costo del producto en la sección de la tienda virtual no incluye el costo de envío, ya que depende de la ubicación de su domicilio. Por esta razón, ese precio aparecerá en la parte final del proceso de orden.\r\n\r\n<br>\r\n<b>\r\nEn caso quiera una cantidad grande de productos, ¿cómo puedo hacer?</b><br>\r\nEn ese caso acceda al área de contacto y envíenos un email indicando su pedido y coordinaremos con usted.\r\n<br>\r\n<b>\r\nQuisiera hacer un pedido especial que no se encuentra en el catálogo, ¿cómo me contacto con la empresa?</b><br>\r\nEn este caso, también acceda al área de contacto y explíquenos brevemente lo que necesita. Además coordinaremos con usted una reunión para asesorarlo en el producto que necesite.\r\n<br>\r\n<b>\r\nVivo en el extranjero, ¿cómo puedo adquirir los productos o enviarlos al país donde me encuentro?</b><br>\r\nPor el momento no contamos con el sistema de pago con tarjeta, pero si es posible hacer su pedido si se encuentre en otro país y en ese caso una persona de su confianza tendría que hacer el pago en el Perú. Si desea que este producto se le envíe al extranjero, la coordinación será vía correo electrónico y el cliente asumirá los gastos de envío y otros, en caso fuera necesario.\r\n<br>\r\n<b>\r\nQuisiera ver los productos Yupi Yap en físico, ¿hay un lugar donde pueda verlos o me pueden hacer una visita?</b><br>\r\nCon mucho gusto escríbanos a pedidos@innovacd.com y coordinaremos  una visita a la empresa o a su oficina.\r\n<br>\r\n<b>\r\nAdemás de la venta de productos para niños, ¿tienen algún otro servicio?</b><br>\r\nInnova Creatividad para el Desarrollo también desarrolla propuestas educativas vinculadas al trabajo relacionada a niños menores de 6 años, ofrecemos charlas o talleres a padres y/o educadores y otras actividades. Consúltenos a pedidos@innovacd.com y lo asesoraremos en lo que necesite.\r\n<br>\r\n<b>\r\nSi me encuentro insatisfecho con el producto que adquirí, ¿qué puedo hacer?</b><br>\r\nEn Yupi Yap cuidamos mucho nuestra calidad, pero en caso no se encuentre satisfecho, le pedimos que lea la sección Devoluciones y Cancelaciones de las Condiciones y términos y ponerse en contacto a pedidos@innovacd.com','faq','2013-09-13 13:07:11','2013-09-13 13:10:18',0,1,'',2,1,'','','',0,'',0),(4,'Términos de uso','<h1>Condiciones de Uso Web</h1>\r\n\r\n<p>La información que leerá a continuación se refiere a los Términos y condiciones con los que usted e Innova Creatividad para el Desarrollo SAC y la marca Yupi Yap!! regulan el uso de www.yupiyap.com.</p>\r\n<p>El uso de nuestro sitio web implica que usted acepta todas las disposiciones incluidas en este Aviso Legal, en caso tenga alguna queja o duda con respecto a la información de este documento deberá dirigirse a los datos de contacto indicados en nuestra página.</p>\r\n\r\n<h3>OBJETIVO DE LA PÁGINA WEB</h3>\r\nLa página web de Innova Creatividad para el desarrollo SAC. y la línea Yupi Yap!! tiene como fin ofrecer a sus usuarios la posibilidad de comprar productos o servicios relacionados al desarrollo infantil para menores de 6 años. A través de nuestra tienda virtual usted podrá informarse acerca de los detalles de los productos, además de informarse sobre el uso de los mismos y las áreas de desarrollo que promueven. En caso desee más información acerca de los productos no dude en acceder a nuestro blog o contactarse con nosotros a pedidos@innovacd.com</p>\r\n\r\n<h3>DERECHOS DE AUTOR</h3>\r\n<p>Todo el material que se ofrece en la tienda virtual de Yupi Yap!! ha sido diseñado pensando en el desarrollo de los niños menores de 6 años teniendo mucho cuidado en la elección de materiales, confección y área a desarrollar en los niños, lo cual implica mucha dedicación. Además son validados por un equipo de especialistas desde un enfoque psicopedagógico. Por esta razón la marca, logos, contenido escrito/ audiovisual y productos le pertenecen a la marca Yupi Yap!! propiedad de Innova Creatividad para el Desarrollo SAC. y su reproducción ya sea parcial o total está totalmente prohibida y penada por la ley.</p>\r\n\r\n<h3>COMPRA DE PRODUCTOS YUPI YAP!!</h3>\r\n<p>Usted podrá adquirir nuestros productos de dos formas:</p>\r\n-Pedido a través del catálogo de la tienda virtual.  En este caso, usted elige el producto, sigue los pasos del proceso de compra, verifica el precio y puede hacer el pago a través de:\r\n•	Depósito a cuenta de la empresa Innova Creatividad para el desarrollo SAC, propietaria de la marca Yupi Yap!! (nro de cuenta)\r\n•	Sistema Pago efectivo de El Comercio.\r\n<p>En el caso de depósito a cuenta usted deberá remitir su voucher después de realizado el pago a pedidos@innovacd.com para confirmar la transacción, el período de entrega contará a partir de la recepción y confirmación del voucher. En caso desee comunicarse con nosotros para resolver cualquier duda, puede llamarnos (+511) 433 2435.  Consultar sobre simulador de compra\r\nEn el caso del Sistema Pago efectivo, deberá seleccionar la opción de Pago efectivo que tenemos al final del proceso de compra y este sistema le enviará un recibo a su correo electrónico, luego lo imprime y puede hacer la cancelación del pago en un establecimiento afiliado al sistema pago efectivo (BBVA, BCP, Interbank, Scotiabank, Western Union o Full carga) o hacer una transferencia desde su cuenta del banco. No necesitas abrir una cuenta en Pago efectivo, ya que registrando tu correo electrónico en el proceso de compra se crea un Código de pago (CIP), además se le indicará la fecha de expiración de su orden indicándole hasta cuándo puede pagar.</p>\r\n\r\n<h2>-Venta corporativa.</h2>\r\n<p>En este caso usted deberá contactarse con nosotros al correo pedidos@innovacd.com indicándonos los materiales que necesita, la cantidad y otros datos referentes a su pedido, nosotros le indicaremos la forma de pago y el tiempo de entrega. En caso necesite hacer un pedido especial que no se encuentre en el catálogo, solicite información en el correo, así podemos asesorarlo adecuadamente.</p>\r\n\r\n\r\n<h1>CARACTERÍSTICAS Y ENTREGA DEL PRODUCTO</h1>\r\n<h2>Condiciones de Entrega</h2>\r\n<p>El producto/productos se entregarán por delivery a la dirección señalada en el proceso de compra. El plazo de entrega de los productos es de 3 días a Lima y 5 días a provincia desde el momento en que el cliente recibe la confirmación de pago. En caso se quiera cambiar esta dirección, se deberá avisar en un tiempo máximo de 24 horas de anticipación y si el producto ya fue enviado a la dirección registrada, el cliente asumirá los gastos extras que ocasione el envío. En el caso de envíos a provincias se deberá avisar con 2 días de anticipación.</p>\r\n<h2>Costo por delivery</h2>\r\n<p>El costo para la entrega del producto por delivery no está incluido en el costo del producto, ya que cada zona tiene un costo según la ubicación. El costo del envío se podrá ver cuando se genere la orden, antes de hacer la confirmación del pedido.  En el caso de envíos a provincias, se procederá de la misma forma.</p>\r\n\r\n<h1>DEVOLUCIONES Y CANCELACIÓN DEL PEDIDO</h1>\r\n<p>En Yupi yap!! nos preocupamos porque los productos tengan un control de calidad minucioso, pero en caso encuentre que el/los producto(s) estén dañados parcial o totalmente o no sea el producto que se solicitó,  podrán ser cambiados o devueltos en un lapso no mayor a 72 horas, pasado este tiempo no hay lugar a reclamo. Los productos dañados se pueden cambiar por uno en buen estado, cambiar por otro del mismo monto o de lo contrario recibir un reembolso.</p>\r\n<h2>Cambio</h2>\r\n<p>En caso el producto tenga alguna falla, se encuentre dañado parcial o totalmente o se trate de un producto incorrecto, le enviaremos el artículo de sustitución, siempre y cuando nos envíe el producto a nuestra oficina, cuya dirección les daremos al contactarse con nosotros. El costo del envío, en este caso correría a cuenta de la empresa Innova Creatividad para el Desarrollo SAC.</p>\r\n<h2>Reembolso</h2>\r\n<p>Al momento de devolvernos el producto dañado, la empresa se compromete a hacer la devolución del dinero por transferencia a cuenta o en efectivo, además de los gastos de envío, siempre y cuando se presente el comprobante de la empresa courier.</p>\r\n<h2>Cancelación</h2>\r\n<p>En el caso de la cancelación del pedido se deberá informar esta decisión a través del correo pedidos@innovacd.com en un plazo no mayor a 24 horas de haber recibido la confirmación del pago. En el caso de ventas corporativas, se deberá poner contacto con la empresa para definir condiciones y formas de pago.</p>','terminosycondiciones','2013-09-13 13:24:11','2013-09-13 13:27:24',0,1,'',3,1,'','','',0,'',0),(5,'Políticas de privacidad','<p>En Innova Creatividad para el desarrollo y la línea Yupi Yap!! protegemos su privacidad, por esta razón nos comprometemos a seguir estas normas:</p>\r\n\r\n<ul>\r\n<li>Dado que la página web Innova…Yupi Yap!! tiene fines comerciales, recogemos información personal para el proceso de registro de la orden y la compra.</li>\r\n<li>La información que nos proporcione será mantenida de manera privada y segura. No recogeremos información sin su permiso.</li>\r\n<li>Los datos que usted nos brinde serán usados únicamente para el proceso del pedido, así como para enviarle novedades, información y promociones, en caso nos autorice hacerlo.</li>\r\n<li>Al momento de realizar el pedido, sus datos personales, como dirección, teléfono o email así como los relacionados a la forma de pago será guardados en nuestra base de datos con el fin de utilizarlos para la entrega de sus pedidos y elaboración de facturas o boletas.</li>\r\n</ul>\r\n','politicadeprivacidad','2013-09-13 13:29:32','2013-09-13 13:29:32',0,1,'',4,1,'','','',0,'',0),(6,'Servicios','<ul>\r\n<li>Venta por catálogo</li>\r\n<li>Ventas corporativas</li>\r\n</ul>','servicios','2013-09-13 13:33:01','2013-09-13 13:35:02',1,0,'',5,1,'','','',0,'',0),(7,'Políticas de Devolución','<h2>DEVOLUCIONES Y CANCELACIÓN DEL PEDIDO</h2>\r\n<p>En Yupi yap!! nos preocupamos porque los productos tengan un control de calidad minucioso, pero en caso encuentre que el/los producto(s) estén dañados parcial o totalmente o no sea el producto que se solicitó,  podrán ser cambiados o devueltos en un lapso no mayor a 72 horas, pasado este tiempo no hay lugar a reclamo. Los productos dañados se pueden cambiar por uno en buen estado, cambiar por otro del mismo monto o de lo contrario recibir un reembolso.</p>\r\n<h2>Cambio</h2>\r\n<p>En caso el producto tenga alguna falla, se encuentre dañado parcial o totalmente o se trate de un producto incorrecto, le enviaremos el artículo de sustitución, siempre y cuando nos envíe el producto a nuestra oficina, cuya dirección les daremos al contactarse con nosotros. El costo del envío, en este caso correría a cuenta de la empresa Innova Creatividad para el Desarrollo SAC.</p>\r\n<h2>Reembolso</h2>\r\n<p>Al momento de devolvernos el producto dañado, la empresa se compromete a hacer la devolución del dinero por transferencia a cuenta o en efectivo, además de los gastos de envío, siempre y cuando se presente el comprobante de la empresa courier.</p>\r\n<h2>Cancelación</h2>\r\n<p>En el caso de la cancelación del pedido se deberá informar esta decisión a través del correo pedidos@innovacd.com en un plazo no mayor a 24 horas de haber recibido la confirmación del pago. En el caso de ventas corporativas, se deberá poner contacto con la empresa para definir condiciones y formas de pago.</p>','politicas-de-devolucion','2013-10-11 19:48:13','2013-10-11 19:48:13',0,1,'',6,1,'','','',0,'',0);
/*!40000 ALTER TABLE `spree_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::BillingIntegration::TwoCheckout','2checkout','Pagos con 2checkout',1,'development',NULL,'2013-09-15 15:51:37','2013-09-15 15:51:37','');
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `avs_response` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `key` varchar(255) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'49','spree/app_configuration/default_country_id','integer','2013-08-20 22:14:53','2013-08-20 22:14:53'),(2,'2013-10-19T14:11:22+00:00','spree/app_configuration/last_check_for_spree_alerts','string','2013-08-21 23:53:45','2013-10-19 14:11:22'),(3,'Yupiyap - Jugar, crecer, vivir','spree/app_configuration/site_name','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(4,'Yupiyap: Jugar, crecer, vivir','spree/app_configuration/default_seo_title','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(5,'juguetes,educan,desarrollo de la expresion y comunicacion,desarrollo del pensamiento logico,capacidad motora,','spree/app_configuration/default_meta_keywords','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(6,'YUPI YAP! Te ofrece una línea de materiales didácticos, originales y divertidos, que han sido diseñados y validados por nuestro equipo de especialistas, desde un enfoque psicopedagógico con la intención de apoyar el desarrollo de tus niños y niñas. Encuéntranos en librerías Crisol, Mundo Bebe, y Kiddys House.','spree/app_configuration/default_meta_description','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(7,'yupiyap.com','spree/app_configuration/site_url','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(8,'1','spree/app_configuration/allow_ssl_in_production','boolean','2013-09-04 21:35:10','2013-10-01 22:16:13'),(9,'1','spree/app_configuration/allow_ssl_in_staging','boolean','2013-09-04 21:35:10','2013-10-01 22:16:13'),(10,'0','spree/app_configuration/allow_ssl_in_development_and_test','boolean','2013-09-04 21:35:10','2013-10-01 22:16:13'),(11,'1','spree/app_configuration/check_for_spree_alerts','boolean','2013-09-04 21:35:10','2013-10-01 22:16:13'),(12,'0','spree/app_configuration/display_currency','boolean','2013-09-04 21:35:10','2013-10-01 22:16:13'),(13,'0','spree/app_configuration/hide_cents','boolean','2013-09-04 21:35:10','2013-10-01 22:16:13'),(14,'PEN','spree/app_configuration/currency','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(15,'before','spree/app_configuration/currency_symbol_position','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(16,'.','spree/app_configuration/currency_decimal_mark','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(17,',','spree/app_configuration/currency_thousands_separator','string','2013-09-04 21:35:10','2013-10-01 22:16:13'),(18,'admin/bg/logo.png','spree/app_configuration/admin_interface_logo','string','2013-09-13 00:27:05','2013-10-20 00:16:53'),(19,'admin/bg/logo.png','spree/app_configuration/logo','string','2013-09-13 00:27:05','2013-10-20 00:16:53'),(20,'124343252','spree/billing_integration/two_checkout/sid/1','string','2013-09-15 15:51:58','2013-09-15 15:51:58'),(21,'abcd','spree/billing_integration/two_checkout/secret_word/1','string','2013-09-15 15:51:58','2013-09-15 15:51:58'),(22,'1','spree/billing_integration/two_checkout/direct_checkout/1','boolean','2013-09-15 15:51:58','2013-09-15 15:51:58'),(23,'test','spree/billing_integration/two_checkout/server/1','string','2013-09-15 15:51:58','2013-09-15 15:51:58'),(24,'1','spree/billing_integration/two_checkout/test_mode/1','boolean','2013-09-15 15:51:58','2013-09-15 15:51:58');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_prices_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (1,1,0.00,'USD'),(2,2,30.00,'USD'),(3,3,30.00,'USD'),(4,4,30.00,'USD'),(5,5,30.00,'USD'),(6,6,30.00,'USD'),(7,7,30.00,'USD'),(8,8,30.00,'USD'),(9,9,30.00,'USD'),(10,10,30.00,'USD'),(11,11,30.00,'USD'),(12,12,30.00,'USD'),(13,13,30.00,'USD'),(14,14,30.00,'USD'),(15,15,30.00,'USD'),(16,16,30.00,'USD'),(17,17,30.00,'USD'),(18,18,30.00,'USD'),(19,19,30.00,'USD'),(20,20,30.00,'USD'),(21,21,30.00,'USD'),(22,22,30.00,'USD'),(23,23,30.00,'USD'),(24,24,30.00,'USD'),(25,25,30.00,'USD'),(26,26,30.00,'USD'),(27,27,30.00,'USD'),(28,28,30.00,'USD'),(29,29,30.00,'USD'),(30,30,35.00,'USD'),(31,31,35.00,'USD'),(32,32,35.00,'USD'),(33,33,50.00,'USD'),(34,34,50.00,'USD'),(35,35,50.00,'USD'),(36,36,50.00,'USD'),(37,37,50.00,'USD'),(38,38,50.00,'USD'),(39,39,50.00,'USD'),(40,40,50.00,'USD'),(41,30,35.00,'PEN'),(42,33,0.00,'PEN'),(43,2,0.00,'PEN'),(44,41,70.00,'PEN'),(45,42,0.00,'PEN'),(46,43,0.00,'PEN'),(47,44,0.00,'PEN'),(48,45,0.00,'PEN'),(49,46,0.00,'PEN'),(50,47,0.00,'PEN'),(51,48,0.00,'PEN'),(52,49,0.00,'PEN'),(53,50,0.00,'PEN'),(54,51,0.00,'PEN'),(55,52,0.00,'PEN'),(56,53,0.00,'PEN'),(57,54,0.00,'PEN'),(58,55,0.00,'PEN'),(59,56,0.00,'PEN'),(60,57,0.00,'PEN'),(61,58,0.00,'PEN'),(62,59,0.00,'PEN'),(63,60,0.00,'PEN'),(64,61,0.00,'PEN'),(65,62,0.00,'PEN'),(66,63,0.00,'PEN'),(67,64,0.00,'PEN'),(68,65,0.00,'PEN'),(69,66,0.00,'PEN'),(70,67,0.00,'PEN'),(71,68,0.00,'PEN'),(72,69,0.00,'PEN'),(73,70,0.00,'PEN'),(74,71,0.00,'PEN'),(75,72,0.00,'PEN'),(76,73,0.00,'PEN'),(77,74,0.00,'PEN'),(78,75,0.00,'PEN'),(79,76,0.00,'PEN'),(80,77,0.00,'PEN'),(81,78,0.00,'PEN'),(82,79,0.00,'PEN'),(83,80,0.00,'PEN'),(84,81,0.00,'PEN'),(85,82,0.00,'PEN'),(86,83,0.00,'PEN'),(87,84,0.00,'PEN'),(88,85,0.00,'PEN'),(89,86,0.00,'PEN'),(90,87,0.00,'PEN'),(91,88,0.00,'PEN'),(92,89,0.00,'PEN'),(93,90,0.00,'PEN'),(94,91,0.00,'PEN'),(95,92,0.00,'PEN'),(96,93,0.00,'PEN'),(97,94,0.00,'PEN'),(98,95,0.00,'PEN'),(99,96,0.00,'PEN'),(100,97,0.00,'PEN'),(101,98,0.00,'PEN'),(102,99,0.00,'PEN'),(103,100,0.00,'PEN'),(104,101,0.00,'PEN'),(105,102,0.00,'PEN'),(106,103,0.00,'PEN'),(107,104,0.00,'PEN'),(108,105,0.00,'PEN'),(109,106,0.00,'PEN'),(110,107,0.00,'PEN'),(111,108,0.00,'PEN'),(112,109,0.00,'PEN'),(113,110,0.00,'PEN'),(114,111,0.00,'PEN'),(115,112,0.00,'PEN'),(116,113,0.00,'PEN'),(117,114,0.00,'PEN'),(118,115,0.00,'PEN'),(119,116,0.00,'PEN'),(120,117,0.00,'PEN'),(121,118,0.00,'PEN'),(122,119,0.00,'PEN'),(123,120,0.00,'PEN'),(124,121,0.00,'PEN'),(125,122,0.00,'PEN'),(126,123,0.00,'PEN'),(127,124,0.00,'PEN'),(128,125,0.00,'PEN'),(129,126,0.00,'PEN'),(130,127,0.00,'PEN'),(131,128,0.00,'PEN'),(132,129,0.00,'PEN'),(133,130,0.00,'PEN'),(134,131,0.00,'PEN'),(135,132,30.00,'PEN'),(136,133,30.00,'PEN'),(137,134,30.00,'PEN'),(138,135,30.00,'PEN'),(139,136,30.00,'PEN'),(140,137,30.00,'PEN'),(141,138,30.00,'PEN'),(142,139,30.00,'PEN'),(143,140,30.00,'PEN'),(144,141,30.00,'PEN'),(145,142,30.00,'PEN'),(146,143,30.00,'PEN'),(147,144,30.00,'PEN'),(148,145,30.00,'PEN'),(149,146,30.00,'PEN'),(150,147,30.00,'PEN'),(151,148,30.00,'PEN'),(152,149,30.00,'PEN'),(153,150,30.00,'PEN'),(154,151,30.00,'PEN'),(155,152,30.00,'PEN'),(156,153,30.00,'PEN'),(157,154,30.00,'PEN'),(158,155,30.00,'PEN'),(159,156,30.00,'PEN'),(160,157,30.00,'PEN'),(161,158,30.00,'PEN'),(162,159,30.00,'PEN'),(163,160,30.00,'PEN'),(164,161,30.00,'PEN'),(165,162,30.00,'PEN'),(166,163,30.00,'PEN'),(167,164,30.00,'PEN'),(168,165,30.00,'PEN'),(169,166,30.00,'PEN'),(170,167,30.00,'PEN'),(171,168,30.00,'PEN'),(172,169,30.00,'PEN'),(173,170,30.00,'PEN'),(174,171,30.00,'PEN'),(175,172,30.00,'PEN'),(176,173,30.00,'PEN'),(177,174,30.00,'PEN'),(178,175,30.00,'PEN'),(179,176,30.00,'PEN'),(180,177,30.00,'PEN'),(181,178,30.00,'PEN'),(182,179,30.00,'PEN'),(183,180,30.00,'PEN'),(184,181,30.00,'PEN'),(185,182,30.00,'PEN'),(186,183,30.00,'PEN'),(187,184,30.00,'PEN'),(188,185,30.00,'PEN'),(189,186,30.00,'PEN'),(190,187,30.00,'PEN'),(191,188,30.00,'PEN'),(192,189,30.00,'PEN'),(193,190,30.00,'PEN'),(194,191,30.00,'PEN'),(195,192,30.00,'PEN'),(196,193,45.00,'PEN'),(197,194,45.00,'PEN'),(198,195,45.00,'PEN'),(199,196,40.00,'PEN'),(200,197,40.00,'PEN'),(201,198,40.00,'PEN'),(202,199,80.00,'PEN'),(203,200,45.00,'PEN'),(204,201,42.00,'PEN'),(205,202,42.00,'PEN'),(206,203,42.00,'PEN'),(207,204,47.00,'PEN'),(208,205,40.00,'PEN'),(209,206,40.00,'PEN'),(210,207,40.00,'PEN'),(211,208,40.00,'PEN'),(212,209,33.00,'PEN'),(213,210,40.00,'PEN'),(214,211,40.00,'PEN'),(215,212,33.00,'PEN'),(216,213,45.00,'PEN'),(217,214,45.00,'PEN'),(218,215,30.00,'PEN'),(219,216,0.00,'PEN'),(220,217,0.00,'PEN'),(221,218,0.00,'PEN'),(222,219,0.00,'PEN'),(223,220,25.00,'PEN'),(224,221,25.00,'PEN'),(225,222,25.00,'PEN'),(226,223,40.00,'PEN'),(227,224,25.00,'PEN'),(228,225,25.00,'PEN'),(229,226,25.00,'PEN'),(230,227,45.00,'PEN'),(231,228,45.00,'PEN'),(232,229,45.00,'PEN'),(233,230,0.00,'PEN'),(234,231,0.00,'PEN'),(235,232,0.00,'PEN'),(236,233,0.00,'PEN'),(237,234,0.00,'PEN'),(238,235,0.00,'PEN'),(239,236,0.00,'PEN'),(240,237,0.00,'PEN'),(241,238,0.00,'PEN'),(242,239,0.00,'PEN'),(243,240,0.00,'PEN'),(244,241,30.00,'PEN'),(245,242,30.00,'PEN'),(246,243,30.00,'PEN'),(247,244,30.00,'PEN'),(248,245,30.00,'PEN'),(249,246,30.00,'PEN'),(250,247,30.00,'PEN'),(251,248,30.00,'PEN'),(252,249,30.00,'PEN'),(253,250,30.00,'PEN'),(254,251,30.00,'PEN'),(255,252,30.00,'PEN'),(256,253,30.00,'PEN'),(257,254,34.00,'PEN'),(258,255,34.00,'PEN'),(259,256,34.00,'PEN'),(260,257,34.00,'PEN'),(261,258,34.00,'PEN'),(262,259,34.00,'PEN'),(263,260,34.00,'PEN'),(264,261,34.00,'PEN'),(265,262,34.00,'PEN'),(266,263,34.00,'PEN'),(267,264,34.00,'PEN'),(268,265,34.00,'PEN'),(269,266,34.00,'PEN'),(270,267,80.00,'PEN'),(271,268,32.00,'PEN'),(272,269,32.00,'PEN'),(273,270,32.00,'PEN'),(274,271,32.00,'PEN'),(275,272,32.00,'PEN'),(276,273,32.00,'PEN'),(277,274,32.00,'PEN'),(278,275,32.00,'PEN'),(279,276,32.00,'PEN'),(280,277,32.00,'PEN'),(281,278,32.00,'PEN'),(282,279,32.00,'PEN'),(283,280,32.00,'PEN'),(284,281,32.00,'PEN'),(285,282,32.00,'PEN'),(286,283,32.00,'PEN'),(287,284,32.00,'PEN'),(288,285,32.00,'PEN'),(289,286,32.00,'PEN'),(290,287,32.00,'PEN'),(291,288,32.00,'PEN'),(292,289,32.00,'PEN'),(293,290,32.00,'PEN'),(294,291,32.00,'PEN'),(295,292,32.00,'PEN'),(296,293,32.00,'PEN'),(297,294,32.00,'PEN'),(298,295,32.00,'PEN'),(299,296,32.00,'PEN'),(300,297,32.00,'PEN'),(301,298,32.00,'PEN'),(302,299,32.00,'PEN'),(303,300,32.00,'PEN'),(304,301,32.00,'PEN'),(305,302,32.00,'PEN'),(306,303,32.00,'PEN'),(307,304,32.00,'PEN'),(308,305,32.00,'PEN'),(309,306,32.00,'PEN'),(310,307,32.00,'PEN'),(311,308,36.00,'PEN'),(312,309,36.00,'PEN'),(313,310,36.00,'PEN'),(314,311,36.00,'PEN'),(315,312,36.00,'PEN'),(316,313,36.00,'PEN'),(317,314,36.00,'PEN'),(318,315,36.00,'PEN'),(319,316,34.00,'PEN'),(320,317,34.00,'PEN'),(321,318,34.00,'PEN'),(322,319,34.00,'PEN'),(323,320,34.00,'PEN'),(324,321,34.00,'PEN'),(325,322,34.00,'PEN'),(326,323,34.00,'PEN'),(327,324,34.00,'PEN'),(328,325,34.00,'PEN'),(329,326,34.00,'PEN'),(330,327,34.00,'PEN'),(331,328,34.00,'PEN'),(332,329,34.00,'PEN'),(333,330,34.00,'PEN'),(334,331,34.00,'PEN'),(335,332,34.00,'PEN'),(336,333,34.00,'PEN'),(337,334,34.00,'PEN'),(338,335,34.00,'PEN'),(339,336,34.00,'PEN'),(340,337,34.00,'PEN'),(341,338,34.00,'PEN'),(342,339,34.00,'PEN'),(343,340,34.00,'PEN'),(344,341,45.00,'PEN'),(345,342,45.00,'PEN'),(346,343,45.00,'PEN'),(347,344,36.00,'PEN'),(348,345,48.00,'PEN'),(349,346,48.00,'PEN'),(350,347,48.00,'PEN'),(351,348,48.00,'PEN'),(352,349,48.00,'PEN'),(353,350,48.00,'PEN'),(354,351,48.00,'PEN'),(355,352,48.00,'PEN'),(356,353,48.00,'PEN'),(357,354,48.00,'PEN'),(358,355,48.00,'PEN'),(359,356,48.00,'PEN'),(360,357,48.00,'PEN'),(361,358,48.00,'PEN'),(362,359,48.00,'PEN'),(363,360,48.00,'PEN'),(364,361,48.00,'PEN'),(365,362,48.00,'PEN'),(366,363,48.00,'PEN'),(367,364,48.00,'PEN'),(368,365,48.00,'PEN'),(369,366,48.00,'PEN'),(370,367,48.00,'PEN'),(371,368,48.00,'PEN'),(372,369,36.00,'PEN'),(373,370,36.00,'PEN'),(374,371,36.00,'PEN'),(375,372,36.00,'PEN'),(376,373,36.00,'PEN'),(377,374,36.00,'PEN'),(378,375,36.00,'PEN'),(379,376,50.00,'PEN'),(380,377,50.00,'PEN'),(381,378,50.00,'PEN'),(382,379,50.00,'PEN'),(383,380,45.00,'PEN'),(384,381,45.00,'PEN'),(385,382,45.00,'PEN'),(386,31,30.00,'PEN'),(387,32,30.00,'PEN');
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (1,1,2,4,'2013-08-22 17:01:34','2013-08-22 17:01:34'),(2,2,2,2,'2013-08-22 17:01:34','2013-08-22 17:01:34'),(3,3,2,5,'2013-08-22 17:01:34','2013-08-22 17:01:34'),(4,1,3,4,'2013-08-22 17:09:15','2013-08-22 17:09:15'),(5,1,4,3,'2013-08-22 17:14:47','2013-08-22 17:14:47'),(6,2,4,2,'2013-08-22 17:14:47','2013-08-22 17:14:47'),(7,1,5,6,'2013-09-13 13:54:26','2013-09-13 13:54:26'),(8,2,5,5,'2013-09-13 13:54:26','2013-09-13 13:54:26'),(9,3,5,4,'2013-09-13 13:54:26','2013-09-13 13:54:26'),(10,4,5,3,'2013-09-13 13:54:26','2013-09-13 13:54:26'),(11,5,5,2,'2013-09-13 13:54:26','2013-09-13 13:54:26'),(12,1,6,6,'2013-09-13 15:35:14','2013-09-13 15:35:14'),(13,2,6,5,'2013-09-13 15:35:14','2013-09-13 15:35:14'),(14,3,6,4,'2013-09-13 15:35:14','2013-09-13 15:35:14'),(15,4,6,3,'2013-09-13 15:35:14','2013-09-13 15:35:14'),(16,5,6,2,'2013-09-13 15:35:14','2013-09-13 15:35:14'),(17,1,7,4,'2013-09-13 16:10:50','2013-09-13 16:10:50'),(18,2,7,3,'2013-09-13 16:10:50','2013-09-13 16:10:50'),(19,3,7,2,'2013-09-13 16:10:50','2013-09-13 16:10:50'),(20,1,8,6,'2013-09-13 16:37:39','2013-09-13 16:37:39'),(21,2,8,5,'2013-09-13 16:37:39','2013-09-13 16:37:39'),(22,3,8,4,'2013-09-13 16:37:39','2013-09-13 16:37:39'),(23,4,8,3,'2013-09-13 16:37:39','2013-09-13 16:37:39'),(24,5,8,2,'2013-09-13 16:37:39','2013-09-13 16:37:39'),(25,1,9,4,'2013-09-13 16:40:08','2013-09-13 16:40:08'),(26,2,9,3,'2013-09-13 16:40:08','2013-09-13 16:40:08'),(27,3,9,2,'2013-09-13 16:40:08','2013-09-13 16:40:08'),(28,1,10,6,'2013-09-13 17:42:44','2013-09-13 17:42:44'),(29,2,10,5,'2013-09-13 17:42:44','2013-09-13 17:42:44'),(30,3,10,4,'2013-09-13 17:42:44','2013-09-13 17:42:44'),(31,4,10,3,'2013-09-13 17:42:44','2013-09-13 17:42:44'),(32,5,10,2,'2013-09-13 17:42:44','2013-09-13 17:42:44'),(33,1,11,6,'2013-09-13 18:02:50','2013-09-13 18:02:50'),(34,2,11,5,'2013-09-13 18:02:50','2013-09-13 18:02:50'),(35,3,11,4,'2013-09-13 18:02:50','2013-09-13 18:02:50'),(36,4,11,3,'2013-09-13 18:02:50','2013-09-13 18:02:50'),(37,5,11,2,'2013-09-13 18:02:50','2013-09-13 18:02:50'),(38,1,12,4,'2013-09-13 18:10:58','2013-09-13 18:10:58'),(39,2,12,3,'2013-09-13 18:10:58','2013-09-13 18:10:58'),(40,3,12,2,'2013-09-13 18:10:58','2013-09-13 18:10:58'),(41,1,13,3,'2013-09-13 18:20:16','2013-09-13 18:20:16'),(42,2,13,2,'2013-09-13 18:20:16','2013-09-13 18:20:16'),(43,1,14,3,'2013-09-13 18:45:29','2013-09-13 18:45:29'),(44,2,14,2,'2013-09-13 18:45:29','2013-09-13 18:45:29'),(45,1,15,5,'2013-09-13 19:54:21','2013-09-13 19:54:21'),(46,2,15,4,'2013-09-13 19:54:21','2013-09-13 19:54:21'),(47,3,15,2,'2013-09-13 19:54:21','2013-09-13 19:54:21'),(48,1,16,6,'2013-09-13 20:56:48','2013-09-13 20:56:48'),(49,2,16,5,'2013-09-13 20:56:48','2013-09-13 20:56:48'),(50,3,16,4,'2013-09-13 20:56:48','2013-09-13 20:56:48'),(51,4,16,3,'2013-09-13 20:56:48','2013-09-13 20:56:48'),(52,5,16,2,'2013-09-13 20:56:48','2013-09-13 20:56:48'),(53,1,17,6,'2013-09-13 21:00:36','2013-09-13 21:00:36'),(54,2,17,5,'2013-09-13 21:00:36','2013-09-13 21:00:36'),(55,3,17,4,'2013-09-13 21:00:36','2013-09-13 21:00:36'),(56,4,17,3,'2013-09-13 21:00:36','2013-09-13 21:00:36'),(57,5,17,2,'2013-09-13 21:00:36','2013-09-13 21:00:36'),(58,1,18,5,'2013-09-13 22:05:12','2013-09-13 22:05:12'),(59,2,18,4,'2013-09-13 22:05:12','2013-09-13 22:05:12'),(60,3,18,3,'2013-09-13 22:05:12','2013-09-13 22:05:12'),(61,4,18,2,'2013-09-13 22:05:12','2013-09-13 22:05:12'),(62,1,19,6,'2013-09-13 23:09:31','2013-09-13 23:09:31'),(63,2,19,5,'2013-09-13 23:09:31','2013-09-13 23:09:31'),(64,3,19,4,'2013-09-13 23:09:31','2013-09-13 23:09:31'),(65,4,19,3,'2013-09-13 23:09:31','2013-09-13 23:09:31'),(66,5,19,2,'2013-09-13 23:09:31','2013-09-13 23:09:31'),(67,1,20,6,'2013-09-13 23:27:24','2013-09-13 23:27:24'),(68,2,20,5,'2013-09-13 23:27:24','2013-09-13 23:27:24'),(69,3,20,4,'2013-09-13 23:27:24','2013-09-13 23:27:24'),(70,4,20,3,'2013-09-13 23:27:24','2013-09-13 23:27:24'),(71,5,20,2,'2013-09-13 23:27:24','2013-09-13 23:27:24'),(72,1,21,6,'2013-09-14 00:04:01','2013-09-14 00:04:01'),(73,2,21,5,'2013-09-14 00:04:01','2013-09-14 00:04:01'),(74,3,21,4,'2013-09-14 00:04:01','2013-09-14 00:04:01'),(75,4,21,3,'2013-09-14 00:04:01','2013-09-14 00:04:01'),(76,5,21,2,'2013-09-14 00:04:01','2013-09-14 00:04:01'),(77,1,22,6,'2013-09-14 00:16:02','2013-09-14 00:16:02'),(78,2,22,5,'2013-09-14 00:16:02','2013-09-14 00:16:02'),(79,3,22,4,'2013-09-14 00:16:02','2013-09-14 00:16:02'),(80,4,22,3,'2013-09-14 00:16:02','2013-09-14 00:16:02'),(81,5,22,2,'2013-09-14 00:16:02','2013-09-14 00:16:02'),(82,1,23,6,'2013-09-14 01:09:10','2013-09-14 01:09:10'),(83,2,23,5,'2013-09-14 01:09:10','2013-09-14 01:09:10'),(84,3,23,4,'2013-09-14 01:09:10','2013-09-14 01:09:10'),(85,4,23,3,'2013-09-14 01:09:11','2013-09-14 01:09:11'),(86,5,23,2,'2013-09-14 01:09:11','2013-09-14 01:09:11'),(87,1,24,4,'2013-09-14 01:45:28','2013-09-14 01:45:28'),(88,2,24,2,'2013-09-14 01:45:28','2013-09-14 01:45:28'),(89,3,24,5,'2013-09-14 01:45:28','2013-09-14 01:45:28'),(90,1,25,4,'2013-09-14 03:28:37','2013-09-14 03:28:37'),(91,1,26,5,'2013-09-14 03:41:46','2013-09-14 03:41:46'),(92,2,26,4,'2013-09-14 03:41:46','2013-09-14 03:41:46'),(93,1,27,3,'2013-09-14 04:13:08','2013-09-14 04:13:08'),(94,2,27,2,'2013-09-14 04:13:08','2013-09-14 04:13:08'),(95,1,28,3,'2013-09-14 04:22:35','2013-09-14 04:22:35'),(96,2,28,2,'2013-09-14 04:22:35','2013-09-14 04:22:35'),(97,3,28,6,'2013-09-14 04:22:35','2013-09-14 04:22:35'),(98,4,28,5,'2013-09-14 04:22:35','2013-09-14 04:22:35'),(99,5,28,4,'2013-09-14 04:22:35','2013-09-14 04:22:35'),(100,1,29,3,'2013-09-14 04:32:06','2013-09-14 04:32:06'),(101,2,29,2,'2013-09-14 04:32:06','2013-09-14 04:32:06'),(102,3,29,6,'2013-09-14 04:32:06','2013-09-14 04:32:06'),(103,4,29,5,'2013-09-14 04:32:06','2013-09-14 04:32:06'),(104,5,29,4,'2013-09-14 04:32:06','2013-09-14 04:32:06');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
INSERT INTO `spree_product_properties` VALUES (1,NULL,2,1,'2013-08-22 17:01:34','2013-08-22 17:01:34',0),(2,NULL,2,2,'2013-08-22 17:01:34','2013-08-22 17:01:34',0),(3,NULL,3,1,'2013-08-22 17:09:15','2013-08-22 17:09:15',0),(4,NULL,3,2,'2013-08-22 17:09:15','2013-08-22 17:09:15',0),(5,NULL,4,2,'2013-08-22 17:14:47','2013-08-22 17:14:47',0),(6,NULL,5,1,'2013-09-13 13:54:26','2013-09-13 13:54:26',0),(7,NULL,5,2,'2013-09-13 13:54:26','2013-09-13 13:54:26',0),(8,NULL,6,1,'2013-09-13 15:35:14','2013-09-13 15:35:14',0),(9,NULL,6,2,'2013-09-13 15:35:14','2013-09-13 15:35:14',0),(10,NULL,7,1,'2013-09-13 16:10:50','2013-09-13 16:10:50',0),(11,NULL,7,2,'2013-09-13 16:10:50','2013-09-13 16:10:50',0),(12,NULL,8,1,'2013-09-13 16:37:39','2013-09-13 16:37:39',0),(13,NULL,8,2,'2013-09-13 16:37:39','2013-09-13 16:37:39',0),(14,NULL,9,1,'2013-09-13 16:40:08','2013-09-13 16:40:08',0),(15,NULL,9,2,'2013-09-13 16:40:08','2013-09-13 16:40:08',0),(16,NULL,10,1,'2013-09-13 17:42:44','2013-09-13 17:42:44',0),(17,NULL,10,2,'2013-09-13 17:42:44','2013-09-13 17:42:44',0),(18,NULL,11,1,'2013-09-13 18:02:50','2013-09-13 18:02:50',0),(19,NULL,11,2,'2013-09-13 18:02:50','2013-09-13 18:02:50',0),(20,NULL,12,1,'2013-09-13 18:10:58','2013-09-13 18:10:58',0),(21,NULL,12,2,'2013-09-13 18:10:58','2013-09-13 18:10:58',0),(22,NULL,13,2,'2013-09-13 18:20:16','2013-09-13 18:20:16',0),(23,NULL,14,2,'2013-09-13 18:45:29','2013-09-13 18:45:29',0),(24,NULL,15,1,'2013-09-13 19:54:21','2013-09-13 19:54:21',0),(25,NULL,15,2,'2013-09-13 19:54:21','2013-09-13 19:54:21',0),(26,NULL,16,1,'2013-09-13 20:56:48','2013-09-13 20:56:48',0),(27,NULL,16,2,'2013-09-13 20:56:48','2013-09-13 20:56:48',0),(28,NULL,17,1,'2013-09-13 21:00:36','2013-09-13 21:00:36',0),(29,NULL,17,2,'2013-09-13 21:00:36','2013-09-13 21:00:36',0),(30,NULL,18,1,'2013-09-13 22:05:12','2013-09-13 22:05:12',0),(31,NULL,18,2,'2013-09-13 22:05:12','2013-09-13 22:05:12',0),(32,NULL,19,1,'2013-09-13 23:09:31','2013-09-13 23:09:31',0),(33,NULL,19,2,'2013-09-13 23:09:31','2013-09-13 23:09:31',0),(34,NULL,20,1,'2013-09-13 23:27:24','2013-09-13 23:27:24',0),(35,NULL,20,2,'2013-09-13 23:27:24','2013-09-13 23:27:24',0),(36,NULL,21,1,'2013-09-14 00:04:01','2013-09-14 00:04:01',0),(37,NULL,21,2,'2013-09-14 00:04:01','2013-09-14 00:04:01',0),(38,NULL,22,1,'2013-09-14 00:16:02','2013-09-14 00:16:02',0),(39,NULL,22,2,'2013-09-14 00:16:02','2013-09-14 00:16:02',0),(40,NULL,23,1,'2013-09-14 01:09:10','2013-09-14 01:09:10',0),(41,NULL,23,2,'2013-09-14 01:09:10','2013-09-14 01:09:10',0),(42,NULL,24,1,'2013-09-14 01:45:28','2013-09-14 01:45:28',0),(43,NULL,25,1,'2013-09-14 03:28:37','2013-09-14 03:28:37',0),(44,NULL,25,2,'2013-09-14 03:28:37','2013-09-14 03:28:37',0),(45,NULL,26,1,'2013-09-14 03:41:46','2013-09-14 03:41:46',0),(46,NULL,27,2,'2013-09-14 04:13:08','2013-09-14 04:13:08',0),(47,NULL,28,1,'2013-09-14 04:22:35','2013-09-14 04:22:35',0),(48,NULL,28,2,'2013-09-14 04:22:35','2013-09-14 04:22:35',0),(49,NULL,29,1,'2013-09-14 04:32:06','2013-09-14 04:32:06',0),(50,NULL,29,2,'2013-09-14 04:32:06','2013-09-14 04:32:06',0);
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `on_demand` tinyint(1) DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Mi primer juguete','Hola, no está habilitado ?? grrrrrrrrr\r\n',NULL,'2013-08-26 15:02:17','mi-primer-juguete','','',NULL,NULL,0,'2013-08-21 23:55:15','2013-08-21 23:55:35',0,0),(2,'Mandiles de Animalitos','Prácticos y educativos mandiles de tus animalitos preferidos.','2013-12-09 00:00:00','2013-09-15 19:54:37','mandiles-de-animalitos','Prácticos y educativos mandiles de animales. Perro, Gato, Rana, Conejo','mandiles',NULL,NULL,0,'2013-08-22 17:01:34','2013-10-15 21:57:28',0,0),(3,'Cuentos para conversar','Esta vez la historia la cuentas tú o tus niños, con las imágenes harán volar su imaginación y pasaran momentos agradables y divertidos.\r\n\r\nIncluye un cuento impreso en material plástico lavable para conversar con los niños sobre las imágenes que vemos en el cuento. Disponible en 3 títulos: “Mami, me caí”, “Lo que puedo hacer” y “¿Quién es?”','2013-08-01 00:00:00',NULL,'cuentos-variados','Cuentos educativos para niños de 3 a 5 años','Cuentos',NULL,NULL,0,'2013-08-22 17:09:15','2013-10-19 16:37:11',0,0),(4,'Flexi Bloques','Cubos flexibles para el aprendizaje de los alumnos.','2013-08-01 00:00:00','2013-09-15 19:41:50','flexi-bloques','Cubos flexibles para educación inicial','Cubos flexibles',NULL,NULL,0,'2013-08-22 17:14:47','2013-09-13 20:47:33',0,0),(5,'Alimentos curiosos','Descubre junto a tus niños lo divertido que es pelar las frutas y verduras, podrán quitarle la cáscara a una manzana, pelar una mandarina, arverjitas o hasta pelar un plátano.\r\n\r\nEl set incluye: 4 alimentos de tela suave rellenos de napa antialérgica con distintos grados de dificultad de apertura. ','2013-09-01 00:00:00',NULL,'alimentos-curiosos','Descubre junto a tus niños lo divertido que es pelar las frutas y verduras, podrán quitarle la cáscara a una manzana, pelar una mandarina, arverjitas o hasta pelar un plátano.','Alimentos curiosos',NULL,NULL,0,'2013-09-13 13:54:26','2013-10-19 16:30:25',0,0),(6,'Sol radiante','¿Qué le falta al sol?...Juguemos a ponerle rayos de colores para que nuestro sol esté completo y así ejercitar los deditos.','2013-09-01 00:00:00',NULL,'sol-radiante','','',NULL,NULL,0,'2013-09-13 15:35:14','2013-09-18 14:42:27',0,0),(7,'Perro dientitos','Tu niño(a) aprenderá junto al amigo Boby a cepillarse correctamente de manera divertida, solo tiene que cuidarse de sus dientes porque le gusta jugar bromas. ','2013-09-01 00:00:00',NULL,'perro-dientitos','','',NULL,NULL,0,'2013-09-13 16:10:50','2013-09-18 14:38:35',0,0),(8,'¿Quién sigue en la fila?','Este es un desafío para la mente de tus niños, podrán jugar divertidas adivinanzas, juegos de memoria y más… ','2013-09-01 00:00:00',NULL,'quien-sigue-en-la-fila','','',NULL,NULL,0,'2013-09-13 16:37:39','2013-09-18 14:43:18',0,0),(9,'Teatro show Yupi yap','¿Alguna vez pensaste que los deditos de tus niños podrían convertirse en títeres divertidos? Con el teatro show Yupi Yap podrán jugar a la familia, a conocer a los animales de la granja y aprender sobre limpieza. ','2013-09-01 00:00:00',NULL,'teatro-show-yupi-yap','','',NULL,NULL,0,'2013-09-13 16:40:08','2013-10-03 15:23:48',0,0),(10,'Caballito loco','¡Arre arre caballito! Las persecuciones y las carreras serán cosa del día a día con este personaje,  tus niños se divertirán jugando con él.\r\n\r\nIncluye un caballito de tela suave relleno con napa antialérgica con una correa en el hocico y cuello. El largo del palo es de 68 cms. ','2013-09-01 00:00:00',NULL,'caballito-loco','','',NULL,NULL,0,'2013-09-13 17:42:44','2013-10-19 17:21:21',0,0),(11,'Dino Rex','Viaja a la época de la prehistoria y deja que tus niños se diviertan montando a  Rex, un dinosaurio muy dócil y amigable. \r\n\r\nIncluye un dinosaurio de tela suave relleno con napa antialérgica. El largo del palo es de 68 cms. ','2013-09-01 00:00:00',NULL,'dino-rex','','',NULL,NULL,0,'2013-09-13 18:02:50','2013-10-19 16:37:45',0,0),(12,'Oruguita come fruta','Nunca antes la transformación de oruga a mariposa fue tan divertida. Esta oruguita se come todas las frutas que encuentre hasta que se convierte en una linda mariposa.','2013-09-01 00:00:00',NULL,'oruguita-come-fruta','','',NULL,NULL,0,'2013-09-13 18:10:58','2013-09-18 14:38:45',0,0),(13,'Animacubo','Oink oink, miau… con este suave cubito tus niños y tú jugarán a imitar sonidos de animales, o podrán apilarlos hasta formar torres coloridas.\r\n\r\nIncluye un cubo de espuma de tela lavable con aplicaciones bordadas. Mide 10 x 10 x 10 cms.  ','2013-09-01 00:00:00',NULL,'animacubo','','',NULL,NULL,0,'2013-09-13 18:20:16','2013-10-19 17:12:07',0,1),(14,'Emoticubo','Ríe, grita, moléstate… este cubito permite explorar varias emociones que podrás dramatizar junto a tus niños.\r\n\r\nIncluye un cubo de espuma de tela lavable con aplicaciones bordadas. Mide 10 x 10 x 10 cms.  ','2013-09-01 00:00:00',NULL,'emoticubo','','',NULL,NULL,0,'2013-09-13 18:45:29','2013-10-19 16:41:07',0,0),(15,'Juancho \"el parásito malvado\"','¡Juancho ha invadido el cuerpo de una persona!, descubre cómo se puede eliminar a este parásito malvado junto a un escuadrón de limpieza.','2013-09-01 00:00:00',NULL,'juancho-el-parasito-malvado','','',NULL,NULL,0,'2013-09-13 19:54:20','2013-09-18 14:38:55',0,0),(16,'¡A pescar!','¡Sumerjámonos juntos en una aventura divertida! , juguemos con nuestros palos de pescar a atrapar varios animales marinos de lindos colores.','2013-09-01 00:00:00',NULL,'a-pescar','','',NULL,NULL,0,'2013-09-13 20:56:48','2013-09-18 14:43:23',0,0),(17,'Carita mágica','¿Niño o niña? Descubre junto a tus niños que tan iguales o diferentes somos y juega a colocar las partes del rostro.\r\n\r\n\r\nIncluye una cara de tela ovalada y 7 accesorios con velcro (Ojos, orejas, cejas, nariz, boca, cabello de niño, cabello de niña)','2013-09-01 00:00:00',NULL,'carita-magica','','',NULL,NULL,0,'2013-09-13 21:00:36','2013-10-19 17:21:46',0,0),(18,'Ratones traviesos/cuyes traviesos','Dentro de unas cajas de regalo se han escondido unos animalitos muy traviesos, juega con tus niños a atrapar a los ratones o cuyes, a crear historias y muchas otras cosas más.','2013-09-01 00:00:00',NULL,'ratones-traviesos-slash-cuyes-traviesos','','',NULL,NULL,0,'2013-09-13 22:05:12','2013-09-18 14:38:28',0,0),(19,'Sonajas Maxi','Con sus colores brillantes y sonido agradable, estás sonajas grandes capturarán la atención de tus bebés.','2013-09-01 00:00:00',NULL,'sonajas-maxi','','',NULL,NULL,0,'2013-09-13 23:09:31','2013-09-18 14:44:53',0,0),(20,'Pelotas engañosas','A simple vista son iguales…pero no te dejes engañar, ¿te atreves a descubrir en que se diferencian?','2013-09-01 00:00:00',NULL,'pelotas-enganosas','','',NULL,NULL,0,'2013-09-13 23:27:24','2013-09-18 14:39:56',0,0),(21,'Kit de alimentos','¡Qué divertido jugar con estos alimentos! Tócalos y siente su suave textura, con ellos podrás jugar con tus niños a comerlos, a prepararlos y a hacer las compras.','2013-09-01 00:00:00',NULL,'kit-de-alimentos','','',NULL,NULL,0,'2013-09-14 00:04:01','2013-09-18 14:39:32',0,0),(22,'Aros 1000 posibilidades','Con estos locos aros podrán jugar a saltar entre ellos, a pasárselos por el cuerpo, brazos, piernas, a embocar pelotas, ¿te animas a probarlos con tus niños?\r\n\r\n','2013-09-01 00:00:00',NULL,'aros-1000-posibilidades','','',NULL,NULL,0,'2013-09-14 00:16:02','2013-10-19 17:20:55',0,0),(23,'Tubiflex',' La diversión comienza con estos tubos flexibles…puedes armar con tus niños cadenas, series, puentes, todo lo que se le ocurra a tu imaginación.','2013-09-01 00:00:00',NULL,'tubiflex','','',NULL,NULL,0,'2013-09-14 01:09:10','2013-09-18 14:43:40',0,0),(24,'Títeres hocicones','Juega a contar historias,  poner voces graciosas, interpretar animales y diviértanse al máximo con estos títeres amigables.','2013-09-01 00:00:00',NULL,'titeres-hocicones','','',NULL,NULL,0,'2013-09-14 01:45:28','2013-09-18 14:44:27',0,0),(25,'Cuentos de la abuela','¿Por qué tienes los ojos tan grandes?, pregunta la caperucita…  Con este mandil juega con los personajes de los cuentos clásicos, además juega a pegar y despegar a los personajes.\r\n\r\n','2013-09-01 00:00:00',NULL,'cuentos-de-la-abuela','','',NULL,NULL,0,'2013-09-14 03:28:37','2013-10-19 16:34:45',0,0),(26,'Diverdisfraces','¿Oso, rana o conejo?, solo con un gorro y un mandil tus niños se convertirán en el animal que más les guste, además podrán divertirse junto a sus amigos jugando a la selva o lo que deseen.\r\n\r\nEl kit está compuesto por un gorro  y un mandil de material lavable. Disponible en 3 versiones: conejo, oso y rana. ','2013-09-01 00:00:00',NULL,'diverdisfraces','','',NULL,NULL,0,'2013-09-14 03:41:46','2013-10-19 16:39:41',0,0),(27,'Flexibloques','Construir torres, puentes, túneles y muchas cosas más nunca fue tan fácil. Puedes tener muchas horas de diversión con tus niños armando infinitas posibilidades con los cubos, rampas, cilindros, entre otros.',NULL,NULL,'flexibloques','','',NULL,NULL,0,'2013-09-14 04:13:08','2013-09-18 14:36:46',0,0),(28,'Gusanín texturas','Scracht scracht… presiona el gusanito y escucharás un sonido gracioso, tócalo y prueba sus texturas divertidas.','2013-09-01 00:00:00',NULL,'gusanin-texturas','','',NULL,NULL,0,'2013-09-14 04:22:35','2013-09-18 14:39:01',0,0),(29,'Gira-gira','Tus niños pasarán mucho tiempo divirtiéndose haciendo girar las esferas y aros como platillos voladores o ensartando aros en el bastón. Las posibilidades están abiertas para divertirse mezclando los elementos.','2013-09-01 00:00:00',NULL,'gira-gira','','',NULL,NULL,0,'2013-09-14 04:32:06','2013-09-18 14:37:40',0,0);
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (3,2,2),(5,4,4),(6,4,5),(8,4,7),(10,3,9),(13,3,11),(11,3,12),(7,2,15),(9,2,16),(12,2,17),(15,2,18),(14,3,19),(4,3,20),(16,4,21),(17,4,22),(18,2,23),(19,3,24),(20,4,25),(21,3,26),(22,4,27),(23,3,28),(24,2,29),(25,2,30),(26,3,31),(27,3,32),(28,4,33),(29,4,34);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activator_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'Titulo','Título','2013-08-22 16:50:33','2013-08-22 16:50:33'),(2,'Observaciones','Observaciones','2013-08-22 16:59:32','2013-08-22 16:59:32');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
INSERT INTO `spree_properties_prototypes` VALUES (1,1),(1,2),(2,1),(2,2),(3,2),(4,1),(4,2),(5,1),(5,2),(6,1),(7,1);
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
INSERT INTO `spree_prototypes` VALUES (1,'Mandiles','2013-08-22 17:00:24','2013-08-22 17:00:24'),(2,'Cuentos','2013-08-22 17:08:35','2013-08-22 17:08:35'),(3,'Bloques','2013-08-22 17:13:53','2013-08-22 17:13:53'),(4,'Marionetas','2013-09-13 13:51:03','2013-09-13 13:51:03'),(5,'Juguete','2013-09-13 13:51:39','2013-09-13 13:51:39'),(6,'Titeres','2013-09-14 01:43:36','2013-09-14 01:43:36'),(7,'Disfraces','2013-09-14 03:40:28','2013-09-14 03:40:28');
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user'),(3,'blogger');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,1),(1,1),(3,2);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `match_none` tinyint(1) DEFAULT NULL,
  `match_all` tinyint(1) DEFAULT NULL,
  `match_one` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'Method 1',1,'',1,0,1,0,'2013-09-04 04:38:18','2013-09-04 04:34:24','2013-09-04 04:38:18');
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_skrill_transactions`
--

DROP TABLE IF EXISTS `spree_skrill_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_skrill_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_skrill_transactions`
--

LOCK TABLES `spree_skrill_transactions` WRITE;
/*!40000 ALTER TABLE `spree_skrill_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_skrill_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_slides`
--

DROP TABLE IF EXISTS `spree_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `body` text,
  `link_url` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_slides`
--

LOCK TABLES `spree_slides` WRITE;
/*!40000 ALTER TABLE `spree_slides` DISABLE KEYS */;
INSERT INTO `spree_slides` VALUES (1,'Jugar','','',0,'jugar.jpg','image/jpeg',53524,'2013-09-17 00:37:07','2013-08-26 15:00:25','2013-10-03 13:56:30',1),(2,'Crecer','','',0,'crecer.jpg','image/jpeg',97311,'2013-09-17 00:37:21','2013-08-26 15:00:50','2013-10-03 13:56:36',2),(3,'Vivir','','',0,'vivir.jpg','image/jpeg',67555,'2013-09-17 00:37:33','2013-08-26 15:01:09','2013-10-03 13:56:45',3),(4,'Piaget','','',0,'piaget.jpg','image/jpeg',92256,'2013-09-17 00:37:45','2013-08-26 15:01:26','2013-10-03 13:56:52',4),(5,'Te cuento mil  cuentos','','t/categories/te-cuento-mil-cuentos',1,'slide_tecuentomilcuentos.jpg','image/jpeg',80603,'2013-10-03 14:16:08','2013-10-03 13:57:41','2013-10-15 21:45:39',1),(6,'Imagino, descubro  y creo','','t/categories/imagino-descubro-y-creo',1,'slide_imagino.jpg','image/jpeg',106839,'2013-10-03 14:16:18','2013-10-03 13:58:27','2013-10-15 21:45:55',2),(7,'Investigo, experimento y resuelvo','','t/categories/investigo-experimento-y-resuelvo',1,'slide_investigo.jpg','image/jpeg',86828,'2013-10-03 14:16:31','2013-10-03 13:59:43','2013-10-15 21:46:17',3),(8,'intro','','',1,'slide_intro.jpg','image/jpeg',121487,'2013-10-03 17:57:46','2013-10-03 17:57:46','2013-10-03 17:57:46',0);
/*!40000 ALTER TABLE `spree_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `previous_state` varchar(255) DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) DEFAULT NULL,
  `next_state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'payment',NULL,1,1,'Spree::Order','balance_due','2013-08-29 21:34:55','2013-08-29 21:34:55'),(2,'shipment',NULL,1,1,'Spree::Order',NULL,'2013-08-29 21:34:55','2013-08-29 21:34:55'),(3,'payment','balance_due',1,1,'Spree::Order','paid','2013-08-29 21:35:05','2013-08-29 21:35:05'),(4,'shipment',NULL,1,1,'Spree::Order',NULL,'2013-08-29 21:35:05','2013-08-29 21:35:05'),(5,'payment','balance_due',1,1,'Spree::Order','paid','2013-08-29 21:35:05','2013-08-29 21:35:05'),(6,'shipment',NULL,1,1,'Spree::Order',NULL,'2013-08-29 21:35:05','2013-08-29 21:35:05'),(7,'payment','paid',1,1,'Spree::Order','balance_due','2013-09-04 04:23:46','2013-09-04 04:23:46'),(8,'shipment',NULL,1,1,'Spree::Order',NULL,'2013-09-04 04:23:46','2013-09-04 04:23:46'),(9,'payment','balance_due',1,1,'Spree::Order','balance_due','2013-09-04 21:34:30','2013-09-04 21:34:30'),(10,'shipment',NULL,1,1,'Spree::Order',NULL,'2013-09-04 21:34:30','2013-09-04 21:34:30'),(11,'payment','balance_due',1,1,'Spree::Order','balance_due','2013-09-04 21:34:36','2013-09-04 21:34:36'),(12,'shipment',NULL,1,1,'Spree::Order',NULL,'2013-09-04 21:34:36','2013-09-04 21:34:36'),(13,'payment','balance_due',1,1,'Spree::Order','balance_due','2013-09-04 21:35:12','2013-09-04 21:35:12'),(14,'shipment',NULL,1,1,'Spree::Order',NULL,'2013-09-04 21:35:12','2013-09-04 21:35:12'),(15,'payment',NULL,6,1,'Spree::Order','balance_due','2013-09-15 15:52:24','2013-09-15 15:52:24'),(16,'shipment',NULL,6,1,'Spree::Order',NULL,'2013-09-15 15:52:24','2013-09-15 15:52:24'),(17,'payment',NULL,10,NULL,'Spree::Order','balance_due','2013-09-18 05:41:11','2013-09-18 05:41:11'),(18,'shipment',NULL,10,NULL,'Spree::Order',NULL,'2013-09-18 05:41:11','2013-09-18 05:41:11'),(19,'payment',NULL,12,NULL,'Spree::Order','balance_due','2013-09-20 05:00:29','2013-09-20 05:00:29'),(20,'shipment',NULL,12,NULL,'Spree::Order',NULL,'2013-09-20 05:00:29','2013-09-20 05:00:29'),(21,'payment',NULL,14,NULL,'Spree::Order','balance_due','2013-09-25 17:07:39','2013-09-25 17:07:39'),(22,'shipment',NULL,14,NULL,'Spree::Order',NULL,'2013-09-25 17:07:39','2013-09-25 17:07:39'),(23,'payment',NULL,20,NULL,'Spree::Order','balance_due','2013-10-10 01:13:44','2013-10-10 01:13:44'),(24,'shipment',NULL,20,NULL,'Spree::Order',NULL,'2013-10-10 01:13:44','2013-10-10 01:13:44'),(25,'payment',NULL,19,NULL,'Spree::Order','balance_due','2013-10-15 18:40:39','2013-10-15 18:40:39'),(26,'shipment',NULL,19,NULL,'Spree::Order',NULL,'2013-10-15 18:40:39','2013-10-15 18:40:39'),(27,'payment',NULL,22,NULL,'Spree::Order','balance_due','2013-10-17 21:11:47','2013-10-17 21:11:47'),(28,'shipment',NULL,22,NULL,'Spree::Order',NULL,'2013-10-17 21:11:47','2013-10-17 21:11:47');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Michigan','MI',49),(2,'South Dakota','SD',49),(3,'Washington','WA',49),(4,'Wisconsin','WI',49),(5,'Arizona','AZ',49),(6,'Illinois','IL',49),(7,'New Hampshire','NH',49),(8,'North Carolina','NC',49),(9,'Kansas','KS',49),(10,'Missouri','MO',49),(11,'Arkansas','AR',49),(12,'Nevada','NV',49),(13,'District of Columbia','DC',49),(14,'Idaho','ID',49),(15,'Nebraska','NE',49),(16,'Pennsylvania','PA',49),(17,'Hawaii','HI',49),(18,'Utah','UT',49),(19,'Vermont','VT',49),(20,'Delaware','DE',49),(21,'Rhode Island','RI',49),(22,'Oklahoma','OK',49),(23,'Louisiana','LA',49),(24,'Montana','MT',49),(25,'Tennessee','TN',49),(26,'Maryland','MD',49),(27,'Florida','FL',49),(28,'Virginia','VA',49),(29,'Minnesota','MN',49),(30,'New Jersey','NJ',49),(31,'Ohio','OH',49),(32,'California','CA',49),(33,'North Dakota','ND',49),(34,'Maine','ME',49),(35,'Indiana','IN',49),(36,'Texas','TX',49),(37,'Oregon','OR',49),(38,'Wyoming','WY',49),(39,'Alabama','AL',49),(40,'Iowa','IA',49),(41,'Mississippi','MS',49),(42,'Kentucky','KY',49),(43,'New Mexico','NM',49),(44,'Georgia','GA',49),(45,'Colorado','CO',49),(46,'Massachusetts','MA',49),(47,'Connecticut','CT',49),(48,'New York','NY',49),(49,'South Carolina','SC',49),(50,'Alaska','AK',49),(51,'West Virginia','WV',49),(52,'U.S. Armed Forces – Americas','AA',49),(53,'U.S. Armed Forces – Europe','AE',49),(54,'U.S. Armed Forces – Pacific','AP',49);
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'categories','2013-08-22 17:03:16','2013-08-22 17:03:16',0);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'categories','categories',1,1,8,NULL,NULL,NULL,NULL,NULL,'2013-08-22 17:03:16','2013-08-22 17:03:16',NULL,NULL,NULL),(2,1,0,'Te cuento mil  cuentos','categories/te-cuento-mil-cuentos',1,2,3,'icon1.jpg','image/jpeg',9092,'2013-08-29 23:31:11','¿sabías que conversando con tus niños cuando son pequeños los estás ayudando a ser mucho más hábiles en el lenguaje, expandir su vocabulario y reforzar los vínculos afectivos? Con estos productos tus niños podrán contar infinitas historias de manera divertida y juntos pasarán buenos momentos.','2013-08-22 17:03:23','2013-09-13 20:10:57','','',''),(3,1,1,'Imagino, descubro  y creo','categories/imagino-descubro-y-creo',1,4,5,'icon2.jpg','image/jpeg',23841,'2013-08-29 23:31:27','¿Cómo se hace una torre con cubos y cilindros? ¿A qué lugar divertido te puede trasladar un caballito?\r\nExplora junto a tus niños todas las posibilidades de jugar con materiales que motivarán su creatividad, representar actividades del día a día y todo lo que se les ocurra.','2013-08-22 17:03:30','2013-10-02 00:48:20','','',''),(4,1,2,'Investigo, experimento y resuelvo','categories/investigo-experimento-y-resuelvo',1,6,7,'icon3.jpg','image/jpeg',12162,'2013-08-29 23:31:41','¡Los sentidos y habilidades de tus niños se pondrán a prueba! Imagina y experimenta cómo se puede pasar el cuerpo por un aro de tela, cómo usar los deditos para abrir y cerrar frutas, entre otros retos divertidos.','2013-08-22 17:03:53','2013-09-13 20:11:28','','','');
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tokenized_permissions`
--

DROP TABLE IF EXISTS `spree_tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tokenized_permissions`
--

LOCK TABLES `spree_tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `spree_tokenized_permissions` DISABLE KEYS */;
INSERT INTO `spree_tokenized_permissions` VALUES (1,1,'Spree::Order','37633bd7477ece32','2013-08-21 23:19:43','2013-08-21 23:19:43'),(2,2,'Spree::Order','3b67393f142b2076','2013-09-04 21:35:12','2013-09-04 21:35:12'),(3,3,'Spree::Order','1b4b011023e56c37','2013-09-05 00:40:22','2013-09-05 00:40:22'),(4,4,'Spree::Order','2891085db22070d3','2013-09-06 20:11:23','2013-09-06 20:11:23'),(5,5,'Spree::Order','cd83edf885b15149','2013-09-06 20:11:24','2013-09-06 20:11:24'),(6,6,'Spree::Order','69f188eedc43fdc3','2013-09-09 15:59:20','2013-09-09 15:59:20'),(7,7,'Spree::Order','564c08e2fc1f0038','2013-09-09 19:26:12','2013-09-09 19:26:12'),(8,8,'Spree::Order','b49fb8280975e02f','2013-09-13 19:10:50','2013-09-13 19:10:50'),(9,9,'Spree::Order','996c4fbcb67b25cf','2013-09-17 22:57:37','2013-09-17 22:57:37'),(10,10,'Spree::Order','80e6f0f32e5faec3','2013-09-18 05:40:34','2013-09-18 05:40:34'),(11,11,'Spree::Order','c016673d25da056d','2013-09-18 23:45:46','2013-09-18 23:45:46'),(12,12,'Spree::Order','accffb3c4b7a2f19','2013-09-20 05:00:28','2013-09-20 05:00:28'),(13,13,'Spree::Order','07b24d21201cf553','2013-09-21 16:06:25','2013-09-21 16:06:25'),(14,14,'Spree::Order','ba9f1242cd8a02ca','2013-09-25 17:07:31','2013-09-25 17:07:31'),(15,15,'Spree::Order','557298573a3640d0','2013-09-27 21:52:53','2013-09-27 21:52:53'),(16,16,'Spree::Order','5a45f477ec1c08da','2013-09-30 21:44:00','2013-09-30 21:44:00'),(17,17,'Spree::Order','55a21d2d9967c515','2013-10-07 19:45:32','2013-10-07 19:45:32'),(18,18,'Spree::Order','fe6ba30584b98c52','2013-10-08 09:06:49','2013-10-08 09:06:49'),(19,19,'Spree::Order','035ffc2265500508','2013-10-09 15:48:41','2013-10-09 15:48:41'),(20,20,'Spree::Order','9890418e6d951890','2013-10-10 01:13:44','2013-10-10 01:13:44'),(21,21,'Spree::Order','255d2f51ff3a37e9','2013-10-15 02:21:16','2013-10-15 02:21:16'),(22,22,'Spree::Order','a27b919e068d9b2b','2013-10-17 21:11:47','2013-10-17 21:11:47'),(23,23,'Spree::Order','95d7ddcbd068c374','2013-10-19 16:11:21','2013-10-19 16:11:21'),(24,24,'Spree::Order','509060d9ef4570b7','2013-10-20 00:01:43','2013-10-20 00:01:43');
/*!40000 ALTER TABLE `spree_tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_topics`
--

DROP TABLE IF EXISTS `spree_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_topics`
--

LOCK TABLES `spree_topics` WRITE;
/*!40000 ALTER TABLE `spree_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_user_authentications`
--

DROP TABLE IF EXISTS `spree_user_authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_user_authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_user_authentications`
--

LOCK TABLES `spree_user_authentications` WRITE;
/*!40000 ALTER TABLE `spree_user_authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_user_authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `spree_api_key` varchar(48) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `google_plus_url` varchar(255) DEFAULT NULL,
  `bio_info` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'46f96ba0a43eb8b1634970afaec5e122caab7169fb3460bd5e2958a4b79a610d2507b69037ec6d4db987359cb1a4381ac9fff482263c113bf55b0617f8dd28f5','Efn7Uu6idxxtqPYRy9QU','admin@yupiyap.com',NULL,NULL,NULL,NULL,41,0,NULL,'2013-10-19 16:11:21','2013-10-19 16:06:27','190.234.154.212','190.114.248.108','admin@admin.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-08-20 22:15:07','2013-10-19 16:11:21','87c10d0fa1a0db78b978ef9d05b4900429db3e468a5b3f5e',NULL,'','','',''),(2,'8102db71104e0771429f2004175f8152a65699aa069a15242416d35082de542f38ab3b608af33303cbd022b30b167e697b5ebafe422b40263ed55ffa39bbe865','X52jSxKpxi3omzEsCKy9','blogger@yupiyap.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'blogger@yupiyap.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-10-01 14:12:45','2013-10-01 14:12:45',NULL,NULL,'YupiBlog','','',''),(3,'f5a54967b3c2920a45c65c5a161ed1754c49571187cb1da23f431f6b6a2fa37a1599aa6ad11c58e41459c51258912d13307caba42af9ee21371b49fedbb9015f','ytixecysDqiP6pCCE26L','rmedinap@gmail.com',NULL,NULL,NULL,NULL,1,0,NULL,'2013-10-20 00:01:43','2013-10-20 00:01:43','190.114.248.108','190.114.248.108','rmedinap@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2013-10-20 00:01:43','2013-10-20 00:01:44','1293ad3f62c46a8d643d12d5aead38aec1829ba337e8fb78',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) DEFAULT '0',
  `cost_price` decimal(8,2) DEFAULT NULL,
  `cost_currency` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  `on_demand` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'',NULL,NULL,NULL,NULL,'2013-08-26 15:02:17',1,1,0,NULL,'USD',1,1,0),(2,'MAND-001',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',1,2,0,NULL,'USD',1,1,0),(3,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',2,0,0),(4,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',3,0,0),(5,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',4,0,0),(6,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',5,0,0),(7,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',6,0,0),(8,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',7,0,0),(9,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',8,0,0),(10,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',9,0,0),(11,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',10,0,0),(12,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',11,0,0),(13,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',12,0,0),(14,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',13,0,0),(15,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',14,0,0),(16,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',15,0,0),(17,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',16,0,0),(18,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',17,0,0),(19,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',18,0,0),(20,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',19,0,0),(21,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',20,0,0),(22,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',21,0,0),(23,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',22,0,0),(24,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',23,0,0),(25,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',24,0,0),(26,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',25,0,0),(27,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',26,0,0),(28,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',27,0,0),(29,'',NULL,NULL,NULL,NULL,'2013-09-15 19:54:37',0,2,0,NULL,'USD',28,0,0),(30,'CUENT-001',NULL,NULL,NULL,NULL,NULL,1,3,0,NULL,'USD',1,1,0),(31,'',NULL,NULL,NULL,NULL,'2013-09-18 14:34:46',0,3,0,NULL,'USD',2,1,0),(32,'',NULL,NULL,NULL,NULL,'2013-09-18 14:34:48',0,3,0,NULL,'USD',3,1,0),(33,'BLOQ-001',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',1,4,0,NULL,'USD',1,1,0),(34,'',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',0,4,0,NULL,'USD',2,0,0),(35,'',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',0,4,0,NULL,'USD',3,0,0),(36,'',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',0,4,0,NULL,'USD',4,0,0),(37,'',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',0,4,0,NULL,'USD',5,0,0),(38,'',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',0,4,0,NULL,'USD',6,0,0),(39,'',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',0,4,0,NULL,'USD',7,0,0),(40,'',NULL,NULL,NULL,NULL,'2013-09-15 19:41:50',0,4,0,NULL,'USD',8,0,0),(41,'IER006',NULL,NULL,NULL,NULL,NULL,1,5,0,NULL,'PEN',1,2,0),(42,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:39',0,5,0,NULL,'PEN',2,2,1),(43,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:42',0,5,0,NULL,'PEN',3,1,0),(44,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:45',0,5,0,NULL,'PEN',4,1,0),(45,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:47',0,5,0,NULL,'PEN',5,1,0),(46,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:49',0,5,0,NULL,'PEN',6,1,0),(47,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:51',0,5,0,NULL,'PEN',7,1,0),(48,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:53',0,5,0,NULL,'PEN',8,1,0),(49,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:55',0,5,0,NULL,'PEN',9,1,0),(50,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:57',0,5,0,NULL,'PEN',10,1,0),(51,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:59',0,5,0,NULL,'PEN',11,1,0),(52,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:01',0,5,0,NULL,'PEN',12,1,0),(53,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:04',0,5,0,NULL,'PEN',13,1,0),(54,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:06',0,5,0,NULL,'PEN',14,1,0),(55,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:08',0,5,0,NULL,'PEN',15,1,0),(56,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:14',0,5,0,NULL,'PEN',16,1,0),(57,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:17',0,5,0,NULL,'PEN',17,1,0),(58,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:19',0,5,0,NULL,'PEN',18,1,0),(59,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:21',0,5,0,NULL,'PEN',19,1,0),(60,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:23',0,5,0,NULL,'PEN',20,1,0),(61,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:26',0,5,0,NULL,'PEN',21,1,0),(62,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:28',0,5,0,NULL,'PEN',22,1,0),(63,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:30',0,5,0,NULL,'PEN',23,1,0),(64,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:33',0,5,0,NULL,'PEN',24,1,0),(65,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:35',0,5,0,NULL,'PEN',25,1,0),(66,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:39',0,5,0,NULL,'PEN',26,1,0),(67,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:48',0,5,0,NULL,'PEN',27,1,0),(68,'',NULL,NULL,NULL,NULL,'2013-09-18 14:07:56',0,5,0,NULL,'PEN',28,1,0),(69,'',NULL,NULL,NULL,NULL,'2013-09-18 14:08:00',0,5,0,NULL,'PEN',29,1,0),(70,'',NULL,NULL,NULL,NULL,'2013-09-18 14:08:02',0,5,0,NULL,'PEN',30,1,0),(71,'',NULL,NULL,NULL,NULL,'2013-09-18 14:08:05',0,5,0,NULL,'PEN',31,1,0),(72,'',NULL,NULL,NULL,NULL,'2013-09-18 14:08:09',0,5,0,NULL,'PEN',32,1,0),(73,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:10',0,5,0,NULL,'PEN',33,1,0),(74,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:13',0,5,0,NULL,'PEN',34,1,0),(75,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:33',0,5,0,NULL,'PEN',35,1,0),(76,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:39',0,5,0,NULL,'PEN',36,1,0),(77,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:35',0,5,0,NULL,'PEN',37,1,0),(78,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:43',0,5,0,NULL,'PEN',38,1,0),(79,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:49',0,5,0,NULL,'PEN',39,1,0),(80,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:52',0,5,0,NULL,'PEN',40,1,0),(81,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:54',0,5,0,NULL,'PEN',41,1,0),(82,'',NULL,NULL,NULL,NULL,'2013-09-18 14:21:57',0,5,0,NULL,'PEN',42,1,0),(83,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:00',0,5,0,NULL,'PEN',43,1,0),(84,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:03',0,5,0,NULL,'PEN',44,1,0),(85,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:06',0,5,0,NULL,'PEN',45,1,0),(86,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:09',0,5,0,NULL,'PEN',46,1,0),(87,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:11',0,5,0,NULL,'PEN',47,1,0),(88,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:15',0,5,0,NULL,'PEN',48,1,0),(89,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:18',0,5,0,NULL,'PEN',49,1,0),(90,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:21',0,5,0,NULL,'PEN',50,1,0),(91,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:26',0,5,0,NULL,'PEN',51,1,0),(92,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:29',0,5,0,NULL,'PEN',52,1,0),(93,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:34',0,5,0,NULL,'PEN',53,1,0),(94,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:40',0,5,0,NULL,'PEN',54,1,0),(95,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:43',0,5,0,NULL,'PEN',55,1,0),(96,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:46',0,5,0,NULL,'PEN',56,1,0),(97,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:50',0,5,0,NULL,'PEN',57,1,0),(98,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:54',0,5,0,NULL,'PEN',58,1,0),(99,'',NULL,NULL,NULL,NULL,'2013-09-18 14:22:57',0,5,0,NULL,'PEN',59,1,0),(100,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:00',0,5,0,NULL,'PEN',60,1,0),(101,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:04',0,5,0,NULL,'PEN',61,1,0),(102,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:12',0,5,0,NULL,'PEN',62,1,0),(103,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:15',0,5,0,NULL,'PEN',63,1,0),(104,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:18',0,5,0,NULL,'PEN',64,1,0),(105,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:21',0,5,0,NULL,'PEN',65,1,0),(106,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:24',0,5,0,NULL,'PEN',66,1,0),(107,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:26',0,5,0,NULL,'PEN',67,1,0),(108,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:29',0,5,0,NULL,'PEN',68,1,0),(109,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:31',0,5,0,NULL,'PEN',69,1,0),(110,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:34',0,5,0,NULL,'PEN',70,1,0),(111,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:37',0,5,0,NULL,'PEN',71,1,0),(112,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:39',0,5,0,NULL,'PEN',72,1,0),(113,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:42',0,5,0,NULL,'PEN',73,1,0),(114,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:45',0,5,0,NULL,'PEN',74,1,0),(115,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:48',0,5,0,NULL,'PEN',75,1,0),(116,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:50',0,5,0,NULL,'PEN',76,1,0),(117,'',NULL,NULL,NULL,NULL,'2013-09-18 14:23:53',0,5,0,NULL,'PEN',77,1,0),(118,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:05',0,5,0,NULL,'PEN',78,1,0),(119,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:09',0,5,0,NULL,'PEN',79,1,0),(120,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:15',0,5,0,NULL,'PEN',80,1,0),(121,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:18',0,5,0,NULL,'PEN',81,1,0),(122,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:21',0,5,0,NULL,'PEN',82,1,0),(123,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:24',0,5,0,NULL,'PEN',83,1,0),(124,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:27',0,5,0,NULL,'PEN',84,1,0),(125,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:29',0,5,0,NULL,'PEN',85,1,0),(126,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:32',0,5,0,NULL,'PEN',86,1,0),(127,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:35',0,5,0,NULL,'PEN',87,1,0),(128,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:38',0,5,0,NULL,'PEN',88,1,0),(129,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:52',0,5,0,NULL,'PEN',89,1,0),(130,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:55',0,5,0,NULL,'PEN',90,1,0),(131,'',NULL,NULL,NULL,NULL,'2013-09-18 14:24:56',0,5,0,NULL,'PEN',91,1,0),(132,'SOL001',NULL,NULL,NULL,NULL,NULL,1,6,0,NULL,'PEN',1,1,0),(133,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:20',0,6,0,NULL,'PEN',2,1,0),(134,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:23',0,6,0,NULL,'PEN',3,1,0),(135,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:25',0,6,0,NULL,'PEN',4,1,0),(136,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:27',0,6,0,NULL,'PEN',5,1,0),(137,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:16',0,6,0,NULL,'PEN',6,1,0),(138,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:14',0,6,0,NULL,'PEN',7,1,0),(139,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:12',0,6,0,NULL,'PEN',8,1,0),(140,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:10',0,6,0,NULL,'PEN',9,1,0),(141,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:08',0,6,0,NULL,'PEN',10,1,0),(142,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:06',0,6,0,NULL,'PEN',11,1,0),(143,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:03',0,6,0,NULL,'PEN',12,1,0),(144,'',NULL,NULL,NULL,NULL,'2013-09-18 14:42:01',0,6,0,NULL,'PEN',13,1,0),(145,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:59',0,6,0,NULL,'PEN',14,1,0),(146,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:57',0,6,0,NULL,'PEN',15,1,0),(147,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:55',0,6,0,NULL,'PEN',16,1,0),(148,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:52',0,6,0,NULL,'PEN',17,1,0),(149,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:50',0,6,0,NULL,'PEN',18,1,0),(150,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:48',0,6,0,NULL,'PEN',19,1,0),(151,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:45',0,6,0,NULL,'PEN',20,1,0),(152,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:43',0,6,0,NULL,'PEN',21,1,0),(153,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:40',0,6,0,NULL,'PEN',22,1,0),(154,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:37',0,6,0,NULL,'PEN',23,1,0),(155,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:35',0,6,0,NULL,'PEN',24,1,0),(156,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:31',0,6,0,NULL,'PEN',25,1,0),(157,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:29',0,6,0,NULL,'PEN',26,1,0),(158,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:26',0,6,0,NULL,'PEN',27,1,0),(159,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:22',0,6,0,NULL,'PEN',28,1,0),(160,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:20',0,6,0,NULL,'PEN',29,1,0),(161,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:18',0,6,0,NULL,'PEN',30,1,0),(162,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:16',0,6,0,NULL,'PEN',31,1,0),(163,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:14',0,6,0,NULL,'PEN',32,1,0),(164,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:12',0,6,0,NULL,'PEN',33,1,0),(165,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:08',0,6,0,NULL,'PEN',34,1,0),(166,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:06',0,6,0,NULL,'PEN',35,1,0),(167,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:03',0,6,0,NULL,'PEN',36,1,0),(168,'',NULL,NULL,NULL,NULL,'2013-09-18 14:41:01',0,6,0,NULL,'PEN',37,1,0),(169,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:59',0,6,0,NULL,'PEN',38,1,0),(170,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:56',0,6,0,NULL,'PEN',39,1,0),(171,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:54',0,6,0,NULL,'PEN',40,1,0),(172,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:52',0,6,0,NULL,'PEN',41,1,0),(173,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:50',0,6,0,NULL,'PEN',42,1,0),(174,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:48',0,6,0,NULL,'PEN',43,1,0),(175,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:46',0,6,0,NULL,'PEN',44,1,0),(176,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:43',0,6,0,NULL,'PEN',45,1,0),(177,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:41',0,6,0,NULL,'PEN',46,1,0),(178,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:39',0,6,0,NULL,'PEN',47,1,0),(179,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:37',0,6,0,NULL,'PEN',48,1,0),(180,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:34',0,6,0,NULL,'PEN',49,1,0),(181,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:32',0,6,0,NULL,'PEN',50,1,0),(182,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:30',0,6,0,NULL,'PEN',51,1,0),(183,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:28',0,6,0,NULL,'PEN',52,1,0),(184,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:26',0,6,0,NULL,'PEN',53,1,0),(185,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:20',0,6,0,NULL,'PEN',54,1,0),(186,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:17',0,6,0,NULL,'PEN',55,1,0),(187,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:15',0,6,0,NULL,'PEN',56,1,0),(188,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:13',0,6,0,NULL,'PEN',57,1,0),(189,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:11',0,6,0,NULL,'PEN',58,1,0),(190,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:08',0,6,0,NULL,'PEN',59,1,0),(191,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:06',0,6,0,NULL,'PEN',60,1,0),(192,'',NULL,NULL,NULL,NULL,'2013-09-18 14:40:04',0,6,0,NULL,'PEN',61,1,0),(193,'DIENT001',NULL,NULL,NULL,NULL,NULL,1,7,0,NULL,'PEN',1,1,0),(194,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:33',0,7,0,NULL,'PEN',2,1,0),(195,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:35',0,7,0,NULL,'PEN',3,1,0),(196,'FILA001',NULL,NULL,NULL,NULL,NULL,1,8,0,NULL,'PEN',1,1,0),(197,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:16',0,8,0,NULL,'PEN',2,1,0),(198,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:18',0,8,0,NULL,'PEN',3,1,0),(199,'TEAT001',NULL,NULL,NULL,NULL,NULL,1,9,0,NULL,'PEN',1,1,0),(200,'IDC003',NULL,NULL,NULL,NULL,NULL,1,10,0,NULL,'PEN',1,2,0),(201,'',NULL,NULL,NULL,NULL,'2013-09-18 14:05:49',0,10,0,NULL,'PEN',2,1,0),(202,'',NULL,NULL,NULL,NULL,'2013-09-18 14:05:53',0,10,0,NULL,'PEN',3,1,0),(203,'',NULL,NULL,NULL,NULL,'2013-09-18 14:06:00',0,10,0,NULL,'PEN',4,1,0),(204,'DINO001',NULL,NULL,NULL,NULL,NULL,1,11,0,NULL,'PEN',1,1,0),(205,'ORUG001',NULL,NULL,NULL,NULL,NULL,1,12,0,NULL,'PEN',1,1,0),(206,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:40',0,12,0,NULL,'PEN',2,1,0),(207,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:41',0,12,0,NULL,'PEN',3,1,0),(208,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:45',0,12,0,NULL,'PEN',4,1,0),(209,'IDC005',NULL,NULL,NULL,NULL,NULL,1,13,0,NULL,'PEN',1,2,0),(210,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:01',0,13,0,NULL,'PEN',2,1,0),(211,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:03',0,13,0,NULL,'PEN',3,1,0),(212,'EMOTI001',NULL,NULL,NULL,NULL,NULL,1,14,0,NULL,'PEN',1,1,0),(213,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:12',0,14,0,NULL,'PEN',2,1,0),(214,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:13',0,14,0,NULL,'PEN',3,1,0),(215,'PARA001',NULL,NULL,NULL,NULL,NULL,1,15,0,NULL,'PEN',1,1,0),(216,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:50',0,15,0,NULL,'PEN',2,1,0),(217,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:52',0,15,0,NULL,'PEN',3,1,0),(218,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:53',0,15,0,NULL,'PEN',4,1,0),(219,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:55',0,15,0,NULL,'PEN',5,1,0),(220,'PESC001',NULL,NULL,NULL,NULL,NULL,1,16,0,NULL,'PEN',1,1,0),(221,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:20',0,16,0,NULL,'PEN',2,1,0),(222,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:23',0,16,0,NULL,'PEN',3,1,0),(223,'IER010',NULL,NULL,NULL,NULL,NULL,1,17,0,NULL,'PEN',1,2,0),(224,'',NULL,NULL,NULL,NULL,'2013-09-18 14:34:04',0,17,0,NULL,'PEN',2,1,0),(225,'',NULL,NULL,NULL,NULL,'2013-09-18 14:34:05',0,17,0,NULL,'PEN',3,1,0),(226,'',NULL,NULL,NULL,NULL,'2013-09-18 14:34:06',0,17,0,NULL,'PEN',4,1,0),(227,'TRAV001',NULL,NULL,NULL,NULL,NULL,1,18,0,NULL,'PEN',1,1,0),(228,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:28',0,18,0,NULL,'PEN',2,1,0),(229,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:27',0,18,0,NULL,'PEN',3,1,0),(230,'SONA001',NULL,NULL,NULL,NULL,NULL,1,19,0,NULL,'PEN',1,1,0),(231,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:32',0,19,0,NULL,'PEN',2,1,0),(232,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:34',0,19,0,NULL,'PEN',3,1,0),(233,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:36',0,19,0,NULL,'PEN',4,1,0),(234,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:40',0,19,0,NULL,'PEN',5,1,0),(235,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:43',0,19,0,NULL,'PEN',6,1,0),(236,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:45',0,19,0,NULL,'PEN',7,1,0),(237,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:46',0,19,0,NULL,'PEN',8,1,0),(238,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:48',0,19,0,NULL,'PEN',9,1,0),(239,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:50',0,19,0,NULL,'PEN',10,1,0),(240,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:53',0,19,0,NULL,'PEN',11,1,0),(241,'PELO001',NULL,NULL,NULL,NULL,NULL,1,20,0,NULL,'PEN',1,1,0),(242,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:56',0,20,0,NULL,'PEN',2,1,0),(243,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:54',0,20,0,NULL,'PEN',3,1,0),(244,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:53',0,20,0,NULL,'PEN',4,1,0),(245,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:51',0,20,0,NULL,'PEN',5,1,0),(246,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:49',0,20,0,NULL,'PEN',6,1,0),(247,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:47',0,20,0,NULL,'PEN',7,1,0),(248,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:46',0,20,0,NULL,'PEN',8,1,0),(249,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:44',0,20,0,NULL,'PEN',9,1,0),(250,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:42',0,20,0,NULL,'PEN',10,1,0),(251,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:41',0,20,0,NULL,'PEN',11,1,0),(252,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:39',0,20,0,NULL,'PEN',12,1,0),(253,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:37',0,20,0,NULL,'PEN',13,1,0),(254,'ALIM001',NULL,NULL,NULL,NULL,NULL,1,21,0,NULL,'PEN',1,1,0),(255,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:31',0,21,0,NULL,'PEN',2,1,0),(256,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:32',0,21,0,NULL,'PEN',3,1,0),(257,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:29',0,21,0,NULL,'PEN',4,1,0),(258,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:26',0,21,0,NULL,'PEN',5,1,0),(259,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:24',0,21,0,NULL,'PEN',6,1,0),(260,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:22',0,21,0,NULL,'PEN',7,1,0),(261,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:21',0,21,0,NULL,'PEN',8,1,0),(262,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:19',0,21,0,NULL,'PEN',9,1,0),(263,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:17',0,21,0,NULL,'PEN',10,1,0),(264,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:14',0,21,0,NULL,'PEN',11,1,0),(265,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:12',0,21,0,NULL,'PEN',12,1,0),(266,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:08',0,21,0,NULL,'PEN',13,1,0),(267,'IER002',NULL,NULL,NULL,NULL,NULL,1,22,0,NULL,'PEN',1,2,0),(268,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:39',0,22,0,NULL,'PEN',2,1,0),(269,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:37',0,22,0,NULL,'PEN',3,1,0),(270,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:35',0,22,0,NULL,'PEN',4,1,0),(271,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:32',0,22,0,NULL,'PEN',5,1,0),(272,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:30',0,22,0,NULL,'PEN',6,1,0),(273,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:28',0,22,0,NULL,'PEN',7,1,0),(274,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:26',0,22,0,NULL,'PEN',8,1,0),(275,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:22',0,22,0,NULL,'PEN',9,1,0),(276,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:20',0,22,0,NULL,'PEN',10,1,0),(277,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:18',0,22,0,NULL,'PEN',11,1,0),(278,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:16',0,22,0,NULL,'PEN',12,1,0),(279,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:10',0,22,0,NULL,'PEN',13,1,0),(280,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:07',0,22,0,NULL,'PEN',14,1,0),(281,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:05',0,22,0,NULL,'PEN',15,1,0),(282,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:03',0,22,0,NULL,'PEN',16,1,0),(283,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:01',0,22,0,NULL,'PEN',17,1,0),(284,'',NULL,NULL,NULL,NULL,'2013-09-18 14:33:00',0,22,0,NULL,'PEN',18,1,0),(285,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:58',0,22,0,NULL,'PEN',19,1,0),(286,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:56',0,22,0,NULL,'PEN',20,1,0),(287,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:54',0,22,0,NULL,'PEN',21,1,0),(288,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:52',0,22,0,NULL,'PEN',22,1,0),(289,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:51',0,22,0,NULL,'PEN',23,1,0),(290,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:49',0,22,0,NULL,'PEN',24,1,0),(291,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:47',0,22,0,NULL,'PEN',25,1,0),(292,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:45',0,22,0,NULL,'PEN',26,1,0),(293,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:43',0,22,0,NULL,'PEN',27,1,0),(294,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:41',0,22,0,NULL,'PEN',28,1,0),(295,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:40',0,22,0,NULL,'PEN',29,1,0),(296,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:38',0,22,0,NULL,'PEN',30,1,0),(297,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:36',0,22,0,NULL,'PEN',31,1,0),(298,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:35',0,22,0,NULL,'PEN',32,1,0),(299,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:33',0,22,0,NULL,'PEN',33,1,0),(300,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:31',0,22,0,NULL,'PEN',34,1,0),(301,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:29',0,22,0,NULL,'PEN',35,1,0),(302,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:28',0,22,0,NULL,'PEN',36,1,0),(303,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:26',0,22,0,NULL,'PEN',37,1,0),(304,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:24',0,22,0,NULL,'PEN',38,1,0),(305,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:21',0,22,0,NULL,'PEN',39,1,0),(306,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:22',0,22,0,NULL,'PEN',40,1,0),(307,'',NULL,NULL,NULL,NULL,'2013-09-18 14:32:16',0,22,0,NULL,'PEN',41,1,0),(308,'TUBI001',NULL,NULL,NULL,NULL,NULL,1,23,0,NULL,'PEN',1,1,0),(309,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:32',0,23,0,NULL,'PEN',2,1,0),(310,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:33',0,23,0,NULL,'PEN',3,1,0),(311,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:35',0,23,0,NULL,'PEN',4,1,0),(312,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:37',0,23,0,NULL,'PEN',5,1,0),(313,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:38',0,23,0,NULL,'PEN',6,1,0),(314,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:40',0,23,0,NULL,'PEN',7,1,0),(315,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:30',0,23,0,NULL,'PEN',8,1,0),(316,'TITE',NULL,NULL,NULL,NULL,NULL,1,24,0,NULL,'PEN',1,1,0),(317,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:42',0,24,0,NULL,'PEN',2,1,0),(318,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:46',0,24,0,NULL,'PEN',3,1,0),(319,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:47',0,24,0,NULL,'PEN',4,1,0),(320,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:49',0,24,0,NULL,'PEN',5,1,0),(321,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:50',0,24,0,NULL,'PEN',6,1,0),(322,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:52',0,24,0,NULL,'PEN',7,1,0),(323,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:54',0,24,0,NULL,'PEN',8,1,0),(324,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:55',0,24,0,NULL,'PEN',9,1,0),(325,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:57',0,24,0,NULL,'PEN',10,1,0),(326,'',NULL,NULL,NULL,NULL,'2013-09-18 14:43:58',0,24,0,NULL,'PEN',11,1,0),(327,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:00',0,24,0,NULL,'PEN',12,1,0),(328,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:01',0,24,0,NULL,'PEN',13,1,0),(329,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:03',0,24,0,NULL,'PEN',14,1,0),(330,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:04',0,24,0,NULL,'PEN',15,1,0),(331,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:06',0,24,0,NULL,'PEN',16,1,0),(332,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:09',0,24,0,NULL,'PEN',17,1,0),(333,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:11',0,24,0,NULL,'PEN',18,1,0),(334,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:12',0,24,0,NULL,'PEN',19,1,0),(335,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:15',0,24,0,NULL,'PEN',20,1,0),(336,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:17',0,24,0,NULL,'PEN',21,1,0),(337,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:22',0,24,0,NULL,'PEN',22,1,0),(338,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:23',0,24,0,NULL,'PEN',23,1,0),(339,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:25',0,24,0,NULL,'PEN',24,1,0),(340,'',NULL,NULL,NULL,NULL,'2013-09-18 14:44:27',0,24,0,NULL,'PEN',25,1,0),(341,'CUENT001',NULL,NULL,NULL,NULL,NULL,1,25,0,NULL,'PEN',1,1,0),(342,'',NULL,NULL,NULL,NULL,'2013-09-18 14:34:19',0,25,0,NULL,'PEN',2,1,0),(343,'',NULL,NULL,NULL,NULL,'2013-09-18 14:34:20',0,25,0,NULL,'PEN',3,1,0),(344,'DISF001',NULL,NULL,NULL,NULL,NULL,1,26,0,NULL,'PEN',1,1,0),(345,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:56',0,26,0,NULL,'PEN',2,1,0),(346,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:58',0,26,0,NULL,'PEN',3,1,0),(347,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:00',0,26,0,NULL,'PEN',4,1,0),(348,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:02',0,26,0,NULL,'PEN',5,1,0),(349,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:53',0,26,0,NULL,'PEN',6,1,0),(350,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:51',0,26,0,NULL,'PEN',7,1,0),(351,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:49',0,26,0,NULL,'PEN',8,1,0),(352,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:47',0,26,0,NULL,'PEN',9,1,0),(353,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:45',0,26,0,NULL,'PEN',10,1,0),(354,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:42',0,26,0,NULL,'PEN',11,1,0),(355,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:40',0,26,0,NULL,'PEN',12,1,0),(356,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:38',0,26,0,NULL,'PEN',13,1,0),(357,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:36',0,26,0,NULL,'PEN',14,1,0),(358,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:34',0,26,0,NULL,'PEN',15,1,0),(359,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:31',0,26,0,NULL,'PEN',16,1,0),(360,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:30',0,26,0,NULL,'PEN',17,1,0),(361,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:28',0,26,0,NULL,'PEN',18,1,0),(362,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:25',0,26,0,NULL,'PEN',19,1,0),(363,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:23',0,26,0,NULL,'PEN',20,1,0),(364,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:21',0,26,0,NULL,'PEN',21,1,0),(365,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:19',0,26,0,NULL,'PEN',22,1,0),(366,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:17',0,26,0,NULL,'PEN',23,1,0),(367,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:15',0,26,0,NULL,'PEN',24,1,0),(368,'',NULL,NULL,NULL,NULL,'2013-09-18 14:35:13',0,26,0,NULL,'PEN',25,1,0),(369,'FLEX001',NULL,NULL,NULL,NULL,NULL,1,27,0,NULL,'PEN',1,1,0),(370,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:40',0,27,0,NULL,'PEN',2,1,0),(371,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:42',0,27,0,NULL,'PEN',3,1,0),(372,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:44',0,27,0,NULL,'PEN',4,1,0),(373,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:46',0,27,0,NULL,'PEN',5,1,0),(374,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:36',0,27,0,NULL,'PEN',6,1,0),(375,'',NULL,NULL,NULL,NULL,'2013-09-18 14:36:33',0,27,0,NULL,'PEN',7,1,0),(376,'GUS001',NULL,NULL,NULL,NULL,NULL,1,28,0,NULL,'PEN',1,1,0),(377,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:58',0,28,0,NULL,'PEN',2,1,0),(378,'',NULL,NULL,NULL,NULL,'2013-09-18 14:38:59',0,28,0,NULL,'PEN',3,1,0),(379,'',NULL,NULL,NULL,NULL,'2013-09-18 14:39:01',0,28,0,NULL,'PEN',4,1,0),(380,'GIRA001',NULL,NULL,NULL,NULL,NULL,1,29,0,NULL,'PEN',1,1,0),(381,'',NULL,NULL,NULL,NULL,'2013-09-18 14:37:38',0,29,0,NULL,'PEN',2,1,0),(382,'',NULL,NULL,NULL,NULL,'2013-09-18 14:37:40',0,29,0,NULL,'PEN',3,1,0);
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_videos`
--

DROP TABLE IF EXISTS `spree_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `youtube_ref` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `watchable_id` int(11) DEFAULT NULL,
  `watchable_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_videos`
--

LOCK TABLES `spree_videos` WRITE;
/*!40000 ALTER TABLE `spree_videos` DISABLE KEYS */;
INSERT INTO `spree_videos` VALUES (2,'I4YVxxq4tpQ',NULL,'2013-10-03 15:23:48','2013-10-03 15:23:48',9,'Spree::Product');
/*!40000 ALTER TABLE `spree_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,72,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(2,10,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(3,76,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(4,94,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(5,155,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(6,13,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(7,164,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(8,217,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(9,167,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(10,20,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(11,111,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(12,175,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(13,24,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(14,29,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(15,98,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(16,180,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(17,182,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(18,44,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(19,206,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(20,46,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(21,211,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(22,135,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(23,56,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(24,207,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(25,210,'Spree::Country',1,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(26,49,'Spree::Country',2,'2013-08-20 22:14:54','2013-08-20 22:14:54'),(27,204,'Spree::Country',2,'2013-08-20 22:14:54','2013-08-20 22:14:54');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,25,'2013-08-20 22:14:53','2013-08-20 22:14:53'),(2,'North America','USA + Canada',0,2,'2013-08-20 22:14:53','2013-08-20 22:14:53');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,1,'Spree::BlogEntry',NULL,NULL,'tags','2013-10-01 14:15:27'),(2,2,1,'Spree::BlogEntry',NULL,NULL,'tags','2013-10-01 14:15:27'),(3,3,1,'Spree::BlogEntry',NULL,NULL,'tags','2013-10-01 14:15:27'),(4,4,1,'Spree::BlogEntry',NULL,NULL,'tags','2013-10-01 14:15:27');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'yupiyap'),(2,'juguetes'),(3,'educacion'),(4,'educación');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-20  1:17:49
