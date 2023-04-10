-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: inasea
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` text NOT NULL,
  `vision` text NOT NULL,
  `mission` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date DEFAULT NULL,
  `delete_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,'<p>Test About</p>\r\n','<p>Test Vision2&nbsp;</p>\r\n','<p>Test Mission</p>\r\n',0,1,'2022-04-08',1,'2022-04-08','2022-04-08'),(2,'<p>Pertumbuhan industri bisnis jasa <strong>export </strong>mengalami peningkatan yang cukup pesat. Pertumbuhan ini merupakan peluang untuk meningkatkan kinerja dalam menjawab tantangan dan dinamika jasa export maritim. <strong>INASEA SUPPLY CO</strong>&nbsp;hadir menjawab tantangan dan dinamika industry jasa export kemaritiman.</p>\r\n','<p>Menjadi Korporasi Penyedia Jasa Export Spesialis Maritim Yang Inovatif dan Berbudaya Unggul Untuk Pertumbuhan Berkelanjutan.&rdquo;</p>\r\n','<ul>\r\n	<li>Membangun insan yang unggul, professional, amanah dan berjiwa wirausaha</li>\r\n	<li>Mengembangkan bisnis export spesialis maritim yang bereputasi</li>\r\n	<li>Mengembangkan inovasi produk dan proses untuk memberi solusi serta&nbsp;<em>impact</em>&nbsp;bagi&nbsp;<em>stakeholders</em></li>\r\n	<li>Menjalankan organisasi dengan tata Kelola perusahaan yang baik</li>\r\n	<li>Menjalankan sistem manajemen yang menjamin pencapaian sasaran kualitas, keselamatan, Kesehatan dan lingkungan kerja</li>\r\n	<li>Mengembangkan teknologi informasi dan komunikasi sebagai sarana untuk pembuatan keputusan dan pengelolaan risiko korporasi.</li>\r\n</ul>\r\n',1,1,'2022-04-08',1,'2022-04-13',NULL);
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `branch_location` varchar(100) DEFAULT NULL,
  `branch_pic` varchar(100) DEFAULT NULL,
  `branch_phone` varchar(100) DEFAULT NULL,
  `branch_email` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'B001','Jakarta',NULL,'panjiforlak@gmail.com',NULL,'2023-03-16 15:07:05','2023-03-25 02:35:49',NULL,'Pondok Bambu','andi','','','active'),(3,'B003','Surabaya',NULL,NULL,NULL,'2023-03-16 15:07:05',NULL,NULL,NULL,NULL,NULL,NULL,'active'),(8,'B004','Bekasi',NULL,NULL,NULL,'2023-03-16 15:07:05',NULL,NULL,NULL,NULL,NULL,NULL,'active'),(9,'B005','Tangerang','panjiforlak@gmail.com',NULL,NULL,'2023-03-24 23:28:00',NULL,NULL,'Karawaci Tangerang','Adi','08434759543','spt@gmail.com','active');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_head`
--

DROP TABLE IF EXISTS `client_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_client` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_head`
--

LOCK TABLES `client_head` WRITE;
/*!40000 ALTER TABLE `client_head` DISABLE KEYS */;
INSERT INTO `client_head` VALUES (1,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n',1,1,'2022-04-09 04:27:04',0,NULL,NULL);
/*!40000 ALTER TABLE `client_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(120) NOT NULL,
  `client_image` varchar(255) NOT NULL,
  `client_description` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'','111a740223f75f0172e9542f779160fd.jpg','',0,1,'2022-04-09 04:29:58',1,'2022-04-12 21:12:25',NULL),(2,'Client 02','71e55f9c205f3e187b8bd34d4d084978.jpg','',1,1,'2022-04-09 04:30:13',0,NULL,NULL),(3,'Client 03','b8e3d62432d6372aee5a2fa4685d53ec.jpg','',1,1,'2022-04-09 04:30:28',0,NULL,NULL),(4,'Client 04','b7d4aaf420f9f1b3474f7bdb850d71f6.jpg','',1,1,'2022-04-09 04:30:41',0,NULL,NULL),(5,'Client 05','6d85db988acbe3a1dc0efc60ce28d853.jpg','',1,1,'2022-04-09 04:30:54',0,NULL,NULL),(6,'Client 06','c10811ebec3eb618681d62364506cdc0.jpg','',1,1,'2022-04-09 04:31:10',0,NULL,NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(120) NOT NULL,
  `company_alias` varchar(120) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `street` text NOT NULL,
  `sub_district` varchar(255) NOT NULL,
  `district` varchar(129) NOT NULL,
  `city` varchar(129) NOT NULL,
  `province` varchar(129) NOT NULL,
  `post_code` int(11) NOT NULL,
  `phone_number_1` varchar(20) NOT NULL,
  `phone_number_2` varchar(20) NOT NULL,
  `email_1` varchar(120) NOT NULL,
  `email_2` varchar(120) NOT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `delete_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `introduce`
--

DROP TABLE IF EXISTS `introduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `introduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_by` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` date DEFAULT NULL,
  `delete_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `introduce`
--

LOCK TABLES `introduce` WRITE;
/*!40000 ALTER TABLE `introduce` DISABLE KEYS */;
INSERT INTO `introduce` VALUES (1,'Selamat Datang Di Inasea Supply Co','a6a86e68616ef02e37b3dd5068ead7a4.jpg','<p>Semoga semua sehat selalu</p>\r\n\r\n<p>terimakasih.</p>\r\n',1,1,'2022-04-09',1,'2022-04-13',NULL);
/*!40000 ALTER TABLE `introduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `company` varchar(128) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'dsasadsa','dsadsadsa','panjiforlak@gmail.com','6213902432423','dsjcbsdbjc','hjibjhcndscds',0,'2022-04-13 21:56:30',NULL),(2,'Panji nugroho','cbllasdcasdsa','panjiforlak@gmail.com','+6281380077386','test pertanyaan','isi pertanyaan',0,'2022-04-13 21:58:06',NULL),(3,'rewrewrewrew','rewrewrew','panjiforlak@gmail.com','+813242432432','dsadasd','sadsadsa',0,'2022-04-13 21:59:50',NULL),(4,'rewrewrewrew','rewrewrew','panjiforlak@gmail.com','+813242432432','dsadasd','sadsadsa',0,'2022-04-13 21:59:56',NULL),(5,'rewrewrewrew','rewrewrew','panjiforlak@gmail.com','+813242432432','dsadasd','sadsadsa',0,'2022-04-13 22:00:08',NULL),(6,'Panji nugroho','Bla bla bla','panjiforlak@gmail.com','+6281380077386','Pertanyaan','isi',0,'2022-04-13 22:01:59',NULL),(7,'Panji nugroho','Bla bla bla','panjiforlak@gmail.com','+6281380077386','Pertanyaan','isi',0,'2022-04-13 22:02:30',NULL),(8,'Panji nugroho','Bla bla bla','panjiforlak@gmail.com','+6281380077386','Pertanyaan','isi',0,'2022-04-13 22:02:31',NULL),(9,'Panji nugroho','Bla bla bla','panjiforlak@gmail.com','+6281380077386','Pertanyaan','isi',0,'2022-04-13 22:02:32',NULL),(10,'Panji nugroho','Bla bla bla','panjiforlak@gmail.com','+6281380077386','Pertanyaan','isi',0,'2022-04-13 22:02:32',NULL),(11,'Panji nugroho','Bla bla bla','panjiforlak@gmail.com','+6281380077386','Pertanyaan','isi',0,'2022-04-13 22:02:32',NULL),(12,'Panji nugroho','Bla bla bla','panjiforlak@gmail.com','+6281380077386','Pertanyaan','isi',0,'2022-04-13 22:03:35',NULL),(13,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsa',0,'2022-04-13 22:03:51',NULL),(14,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:26',NULL),(15,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:54',NULL),(16,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:55',NULL),(17,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:55',NULL),(18,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:56',NULL),(19,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:56',NULL),(20,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:56',NULL),(21,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:56',NULL),(22,'ewrewrew','rewrew','panjiforlak@gmail.com','+86432432432','dsadasdsa','dsadsadsav sdfsfwe',0,'2022-04-13 22:04:56',NULL),(23,'fsdfdsf','ewrewr','panjiforlak@gmail.com','+934353543','fdsgdfg','fdsgreg',0,'2022-04-13 22:06:43',NULL),(24,'fsdfdsf','ewrewr','panjiforlak@gmail.com','+934353543','fdsgdfg','fdsgreg',0,'2022-04-13 22:10:13',NULL),(25,'s2432432','432432','panjiforlak@gmail.com','+81543543543','srefse','fdsfdsfds',0,'2022-04-13 22:10:34',NULL),(26,'eqwewq','ewqewqewq','panjiforlak@gmail.com','+8132432432','dsadsad','sadsadsasadsadsasadsadsasadsadsasadsadsasad sadsasadsadsasadsadsasadsadsasadsadsasadsadsasadsadsasadsadsasadsadsasadsadsasadsadsasadsad sasadsadsasadsadsasadsadsasadsadsasadsadsasadsadsa\r\n',0,'2022-04-13 22:13:02',NULL),(27,'eqwewq','ewqewqewq','panjiforlak@gmail.com','+8132432432','dsadsad','sadsadsa',0,'2022-04-13 22:13:27',NULL),(28,'eqwewq','ewqewqewq','panjiforlak@gmail.com','+8132432432','dsadsad','sadsadsa',0,'2022-04-13 22:13:37',NULL),(29,'qwewqe','ewqewqwq','panjiforlak@gmail.com','+8132423432','dsadsa','dsadsad',0,'2022-04-13 22:13:47',NULL),(30,'ewdew','edcwewed','panjiforlak@gmail.com','4345453','dss','ds',0,'2022-04-13 23:39:50',NULL),(31,'ewdewd','dwdew','panjiforlak@gmail.com','425353','dscsd','cdscs',0,'2022-04-13 23:42:21',NULL),(32,'dsadsa','dsdsa','panjiforlak@gmail.com','434','ew','ew',0,'2022-04-13 23:42:48',NULL),(33,'dsadsa','dsdsa','panjiforlak@gmail.com','434','ew','ew',0,'2022-04-13 23:43:09',NULL),(34,'dewde','dewde','dewd@AD.da','34535','dw','csd',0,'2022-04-13 23:43:29',NULL),(35,'ewdew','ewdew','panjiforlak@gmail.com','4341','4','43',0,'2022-04-13 23:44:54',NULL),(36,'wq','ew','panjiforlak@gmail.com','434343','m','m',0,'2022-04-13 23:46:26',NULL),(37,'e','e','panjiforlak@gmail.com','32','e','e',0,'2022-04-13 23:48:30',NULL),(38,'edw','edw','panjiforlak@gmail.com','23553','s','s',0,'2022-04-13 23:50:09',NULL),(39,'e','e','panjiforlak@gmail.com','3232','e','e',0,'2022-04-13 23:51:23',NULL),(40,'ewew','ew','panjiforlak@gmail.com','3443','s','s',0,'2022-04-14 00:00:13',NULL),(41,'sa','sa','panjiforlak@gmail.com','e43434','sdsa','xs',0,'2022-04-14 00:03:08',NULL),(42,'sa','sa','panjiforlak@gmail.com','43434343','sdsa','xs',0,'2022-04-14 00:03:21',NULL),(43,'ew','ds','panjiforlak@gmail.com','43','r3','dw',0,'2022-04-14 00:04:06',NULL),(44,'test','test','abc@fmgmgd.cp','+814354654','dscds','dcscds',1,'2022-04-23 15:40:33',NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_team`
--

DROP TABLE IF EXISTS `our_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `position` varchar(128) NOT NULL,
  `linkedin` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_team`
--

LOCK TABLES `our_team` WRITE;
/*!40000 ALTER TABLE `our_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `our_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(128) NOT NULL,
  `image_partner` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Test','image-partner.png',1,1,'2022-04-08 21:50:34',1,NULL,'2022-04-09 00:53:12'),(2,'Sadasdsasssssss','5f64aed2657188b640cf91ac6c47e616.jpg',1,1,'2022-04-08 21:51:53',1,'2022-04-08 21:54:08',NULL);
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `image_thumbnail` varchar(255) DEFAULT NULL,
  `image_large` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Tuna','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n','Simply Dummy Text Of The Printing And Typesetting Industry.','38997c4cc6f17e8e5de2f7d88553067c.jpg','1aab5045026ef9e6087b3c94b830d08c.jpg',1,1,'2022-04-08 02:00:16',1,'2022-04-10 03:27:28',NULL),(2,'Cakalang','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n','Simply Dummy Text Of The Printing And Typesetting Industry.','19494365bddfef3161c70cd95f094ebb.jpg','47a6892fa2ab66684eadaeb1328b3cd9.jpg',1,1,'2022-04-08 02:04:47',1,'2022-04-10 03:27:46',NULL),(3,'Vaname Shrimp','<p>Simply Dummy Text Of The Printing And Typesetting Industry.</p>\r\n','Simply Dummy Text Of The Printing And Typesetting Industry.','96ace3fd3e2a5de5185fb3292b41837b.jpg','a0d988771f5289658a45cad5c79093fc.jpg',1,1,'2022-04-08 02:05:13',1,'2022-04-10 03:29:00',NULL),(4,'Product 4','<p>test</p>\r\n','Simply Dummy Text Of The Printing And Typesetting Industry.','503f889e6cf4af0aaf5ee293ef6aceac.jpg','3da467038e9b0b2f16b2609091a86f2b.jpg',1,1,'2022-04-08 02:07:09',1,'2022-04-09 04:22:59','2022-04-10 03:29:45'),(5,'Product 5','<p>sds</p>\r\n','Simply Dummy Text Of The Printing And Typesetting Industry.','7b8b170ebde2e65a7b4a0094e94be0f9.jpg','c5d610f45b734dffd6883039b0d5230d.jpg',1,1,'2022-04-09 04:12:51',1,'2022-04-09 04:23:07','2022-04-10 03:29:49');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_information`
--

DROP TABLE IF EXISTS `social_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `social_name` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_information`
--

LOCK TABLES `social_information` WRITE;
/*!40000 ALTER TABLE `social_information` DISABLE KEYS */;
INSERT INTO `social_information` VALUES (1,'Facebook','http://facebook.com',1,1,'2022-04-09 20:44:40',0,NULL,NULL),(2,'Twitter','http:sdasdsadsa',1,1,'2022-04-09 20:47:18',0,NULL,NULL),(3,'Instagram','sdfasdas',1,1,'2022-04-09 20:47:29',0,NULL,NULL),(4,'Linkedin','dsfsdfs',1,1,'2022-04-09 20:47:36',0,NULL,NULL);
/*!40000 ALTER TABLE `social_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(120) NOT NULL,
  `company_logo` tinytext NOT NULL,
  `copyright` varchar(128) NOT NULL,
  `desc_talk_to_us` text NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system`
--

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` VALUES (1,'Inasea Supply Co','5b292559adeaa42739c16531de29c31d.jpg','copyright2022@inaseasupplyco','<p>how to order?</p>\r\n\r\n<p>please contact me</p>\r\n','6281210826784','tius@ymail.com','<p>Perumnas 1</p>\r\n\r\n<p>Bekasi Barat</p>\r\n\r\n<p>17145</p>\r\n',1,'2022-04-10 04:38:12',1,'2022-04-13 23:16:11',NULL);
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `position` varchar(50) NOT NULL,
  `linkedin` varchar(128) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'7c42a0a296cae7e2ccf69dddc789c889.jpg','Martius wijaya','','http','','',1,'2022-04-12 21:06:36',1,'2022-04-12 21:13:22',NULL),(2,'f4436679c5b38131b556766c97a17135.jpg','Revo','','http','','',1,'2022-04-12 21:13:52',0,NULL,NULL),(3,'35b2ac6e7e1eb83164b483b349cba4d9.jpg','xxx','','http','','',1,'2022-04-12 21:37:03',0,NULL,NULL);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access_menu`
--

DROP TABLE IF EXISTS `user_access_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_access_menu` (
  `id_user_access` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `akses` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `create` int(11) NOT NULL DEFAULT 0,
  `edit` int(11) NOT NULL DEFAULT 0,
  `delete` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_user_access`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access_menu`
--

LOCK TABLES `user_access_menu` WRITE;
/*!40000 ALTER TABLE `user_access_menu` DISABLE KEYS */;
INSERT INTO `user_access_menu` VALUES (1,1,1,1,1,1,1,1),(2,1,2,1,1,0,0,0),(3,1,3,1,1,1,1,1),(4,1,4,1,1,1,1,1),(5,2,2,1,1,0,0,0),(6,1,5,1,1,1,1,1),(7,1,6,1,1,0,0,0),(8,1,7,1,1,1,1,1),(9,1,8,0,0,0,0,0),(10,1,9,1,1,1,1,1),(11,2,3,0,0,0,0,0),(12,2,4,1,1,1,1,1),(13,2,5,1,1,1,1,1),(14,2,7,1,1,1,1,1),(15,2,1,1,1,0,0,0),(16,2,6,1,1,0,0,0),(17,1,10,1,1,0,0,0),(18,1,11,1,1,0,0,0),(19,1,12,1,1,0,0,0),(23,1,15,1,1,1,1,1),(25,1,16,1,1,1,1,1),(26,1,17,1,1,1,1,1),(27,1,18,1,1,1,1,1),(29,1,19,1,1,1,1,1),(31,1,20,1,1,1,1,1),(32,1,21,1,1,1,1,1),(33,1,23,1,1,1,1,1),(34,1,24,1,1,1,1,1),(37,1,25,1,1,1,1,1),(38,1,26,1,1,1,1,1),(39,2,8,0,0,0,0,0),(40,2,10,0,0,0,0,0),(41,2,11,0,0,0,0,0),(42,2,12,0,0,0,0,0),(43,2,15,0,0,0,0,0),(44,2,16,1,1,1,1,1),(45,2,17,1,1,1,1,1),(46,2,18,1,1,1,1,1),(47,2,19,1,1,1,1,1),(48,2,20,1,1,1,1,1),(49,2,21,1,1,1,1,1),(50,2,23,1,1,1,1,1),(51,2,24,0,0,0,0,0),(52,2,25,0,0,0,0,0),(53,2,26,1,1,1,1,1),(54,1,27,1,1,1,1,1),(55,1,28,1,1,0,0,0),(56,1,29,1,1,1,1,1),(57,1,30,1,1,1,1,1),(58,1,31,1,1,0,0,0),(59,1,32,1,1,1,1,1),(60,1,33,1,1,1,1,1),(61,1,34,1,1,1,1,1),(62,1,35,1,1,1,1,1),(63,2,27,1,1,1,1,1),(64,2,28,1,1,0,0,0),(65,2,29,1,1,1,1,1),(66,2,30,1,1,1,1,1),(67,2,31,1,1,0,0,0),(68,2,32,1,1,1,1,1),(69,2,33,1,1,1,1,1),(70,2,34,1,1,1,1,1),(71,2,35,1,1,1,1,1),(72,1,36,1,1,0,0,0),(73,1,37,1,1,1,1,1),(74,1,38,1,1,1,1,1),(75,1,39,0,0,0,0,0),(76,1,40,1,1,1,1,1),(77,1,41,1,1,1,1,1),(78,1,42,1,1,1,1,1),(79,1,43,1,1,1,1,1),(80,1,44,1,1,1,1,1),(81,1,45,1,1,1,1,1),(82,1,46,1,1,1,1,1),(83,2,36,1,1,0,0,0),(84,2,37,1,1,1,1,1),(85,2,38,1,1,1,1,1),(86,2,39,0,0,0,0,0),(87,2,40,1,1,1,1,1),(88,2,41,1,1,1,1,1),(89,2,42,1,1,1,1,1),(90,2,43,1,1,1,1,1),(91,2,44,1,1,1,1,1),(92,2,45,1,1,1,1,1),(93,2,46,1,1,1,1,1),(94,1,47,1,1,0,0,0),(95,1,48,1,1,0,0,0),(96,1,49,1,1,0,0,0),(97,1,50,1,1,0,0,0),(98,2,47,0,0,0,0,0),(99,2,48,0,1,0,0,0),(100,2,49,0,0,0,0,0),(101,2,50,0,1,0,0,0),(102,2,51,0,0,0,0,0),(103,2,52,0,0,0,0,0),(104,2,53,0,0,1,0,0),(105,1,51,1,1,1,1,1),(106,1,52,1,1,1,1,1),(107,1,53,1,1,1,1,1),(108,1,54,1,1,1,1,1),(109,1,55,1,1,1,1,1),(110,1,56,1,1,1,1,1),(111,2,54,0,0,0,0,0),(112,2,55,0,0,0,0,0),(113,2,56,0,0,0,0,0);
/*!40000 ALTER TABLE `user_access_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_menu`
--

DROP TABLE IF EXISTS `user_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  `menu_parent` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `is_parent` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `is_delete` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_menu`
--

LOCK TABLES `user_menu` WRITE;
/*!40000 ALTER TABLE `user_menu` DISABLE KEYS */;
INSERT INTO `user_menu` VALUES (1,'dashboard',0,'dashboard','bi bi-graph-up-arrow',0,1,0),(2,'master',0,NULL,'bi bi-gear-wide-connected',1,1,0),(3,'menu management',2,'master/menu','bi bi-card-checklist',0,1,0),(4,'role management',2,'master/role','bi bi-person-check-fill',0,1,0),(5,'user management',2,'master/user','',0,1,0),(8,'change password',0,'user/change_password','',0,1,0),(36,'inventory',0,'','bi bi-box-seam-fill',1,1,0),(37,'inbound',36,'inventory/inbound','',0,1,0),(38,'outbound',36,'inventory/outbound','',0,1,0),(40,'product',36,'content/product','',0,1,1),(41,'clients',36,'content/clients','',0,1,1),(42,'partners',36,'content/partners','',0,1,1),(43,'system',2,'master/system','',0,1,0),(44,'social information',36,'content/social','',0,1,1),(45,'our team',36,'content/team','',0,1,1),(46,'messages',2,'master/messages','',0,1,1),(47,'procurement',0,NULL,'bi bi-cart-plus-fill',1,1,0),(48,'finance & accounting',0,NULL,'bi bi-cash-coin',1,1,0),(49,'sales',0,'','bi bi-cart-dash-fill',1,1,0),(50,'report',0,'','bi bi-file-earmark-text-fill',1,1,0),(51,'request for quotation',47,NULL,'bi bi-gear-wide-connected',0,1,0),(52,'purchase request',47,NULL,'bi bi-gear-wide-connected',0,1,0),(53,'purchase order',47,NULL,'bi bi-gear-wide-connected',0,1,0),(54,'branch',2,'master/branch','bi bi-gear-wide-connected',0,1,0),(55,'department',2,'master/work_unit','bi bi-gear-wide-connected',0,1,0),(56,'position',2,'master/position','bi bi-gear-wide-connected',0,1,0);
/*!40000 ALTER TABLE `user_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `role_parent` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_role`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Super Admin',NULL,NULL,'2023-02-18 15:57:51',NULL,NULL,0,0),(9,'Manager IT','panjiforlak@gmail.com',NULL,'2023-03-25 04:52:57',NULL,NULL,6,0),(10,'Staff IT','panjiforlak@gmail.com',NULL,'2023-03-25 04:54:46',NULL,NULL,6,9),(11,'Manager Finance & Accounting','panjiforlak@gmail.com','panjiforlak@gmail.com','2023-03-25 04:55:48','2023-03-25 05:50:00',NULL,7,0),(12,'Staff Keuangan','panjiforlak@gmail.com','panjiforlak@gmail.com','2023-03-25 04:56:05',NULL,NULL,7,11);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `position_id` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `employee_status_id` int(11) NOT NULL DEFAULT 0,
  `create_by` int(11) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_by` int(11) NOT NULL DEFAULT 0,
  `update_date` datetime DEFAULT NULL,
  `write_date` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `work_unit_id` int(3) NOT NULL DEFAULT 0,
  `branch_id` int(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'panjiforlak@gmail.com','$2y$10$GApYJErrS0AeagIGdDLTwOQkaf.X3Zif.J4Z4nl.UBvBF3gtSYyNm','Panji Nugroho',1,'3636638817772e42b59d74cff571fbb3.jpg',1,1,NULL,NULL,0,1,'2021-06-30 20:19:26',0,NULL,NULL,NULL,0,0),(2,'admin@sejahtera.com','$2y$10$365lSiVgaQSPPREvoKY5quh0zNbJRwup2ZysCkXHEZS7.sHFohzC6','Admin Sejahtera 1',1,'4f3274e13d61ec5ef4d382b6fa8d8fad.jpg',2,1,NULL,NULL,0,1,'2021-06-30 14:31:33',0,NULL,NULL,NULL,0,0),(7,'martius@inaseasupplyco.com','$2y$10$xixPhseFQL/P4L0nR5mmneKjWrobmijYHcSmwQ6K89wRhmiCbAXUu','Martius Wijaya',0,'7e7757b1e12abcb736ab9a754ffb617a.jpg',2,1,NULL,NULL,0,7,'2022-04-23 16:01:58',0,NULL,NULL,NULL,0,0),(8,'reza@gmail.com','$2y$10$CfXjtS3PJxHrfHM9YFeIjO0.IiyaRb9XgPMkjZXbaDr2MIYMbXCDu','Reza Rahardian',6,'product-thumbnail.png',2,1,NULL,NULL,0,1,'2023-03-16 15:59:37',0,NULL,NULL,NULL,1,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_position`
--

DROP TABLE IF EXISTS `work_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) NOT NULL DEFAULT 0,
  `position_code` varchar(15) DEFAULT NULL,
  `position_name` varchar(50) DEFAULT NULL,
  `status` enum('active','deactive') DEFAULT 'active',
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `work_position_FK` (`unit_id`),
  CONSTRAINT `work_position_FK` FOREIGN KEY (`unit_id`) REFERENCES `work_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_position`
--

LOCK TABLES `work_position` WRITE;
/*!40000 ALTER TABLE `work_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_unit`
--

DROP TABLE IF EXISTS `work_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `unit_code` varchar(15) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `status` enum('active','deactive') DEFAULT 'active',
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `unit_parent` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `work_unit_FK` (`branch_id`),
  CONSTRAINT `work_unit_FK` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_unit`
--

LOCK TABLES `work_unit` WRITE;
/*!40000 ALTER TABLE `work_unit` DISABLE KEYS */;
INSERT INTO `work_unit` VALUES (6,1,'D001','Technology','active','panjiforlak@gmail.com',NULL,'2023-03-24 23:55:25',NULL,NULL,0),(7,1,'D002','Finance','active','panjiforlak@gmail.com',NULL,'2023-03-24 23:58:31',NULL,NULL,0),(8,8,'D003','Sales','active','panjiforlak@gmail.com','panjiforlak@gmail.com','2023-03-25 01:11:10','2023-03-25 02:30:30','2023-03-25 02:33:06',0),(9,1,'D004','Warehouse','active','panjiforlak@gmail.com',NULL,'2023-03-25 04:33:47',NULL,NULL,0),(10,1,'D005','Procurement','active','panjiforlak@gmail.com',NULL,'2023-03-25 04:33:59',NULL,NULL,0);
/*!40000 ALTER TABLE `work_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'inasea'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10 23:33:46
