-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: irm_db
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add irm app users',7,'add_irmappusers'),(26,'Can change irm app users',7,'change_irmappusers'),(27,'Can delete irm app users',7,'delete_irmappusers'),(28,'Can view irm app users',7,'view_irmappusers'),(29,'Can add irm cust gbl mst',8,'add_irmcustgblmst'),(30,'Can change irm cust gbl mst',8,'change_irmcustgblmst'),(31,'Can delete irm cust gbl mst',8,'delete_irmcustgblmst'),(32,'Can view irm cust gbl mst',8,'view_irmcustgblmst'),(33,'Can add irm common master dtl',9,'add_irmcommonmasterdtl'),(34,'Can change irm common master dtl',9,'change_irmcommonmasterdtl'),(35,'Can delete irm common master dtl',9,'delete_irmcommonmasterdtl'),(36,'Can view irm common master dtl',9,'view_irmcommonmasterdtl'),(37,'Can add irm common master hdr',10,'add_irmcommonmasterhdr'),(38,'Can change irm common master hdr',10,'change_irmcommonmasterhdr'),(39,'Can delete irm common master hdr',10,'delete_irmcommonmasterhdr'),(40,'Can view irm common master hdr',10,'view_irmcommonmasterhdr'),(41,'Can add irm module mst',11,'add_irmmodulemst'),(42,'Can change irm module mst',11,'change_irmmodulemst'),(43,'Can delete irm module mst',11,'delete_irmmodulemst'),(44,'Can view irm module mst',11,'view_irmmodulemst'),(45,'Can add irm cust source dtl',12,'add_irmcustsourcedtl'),(46,'Can change irm cust source dtl',12,'change_irmcustsourcedtl'),(47,'Can delete irm cust source dtl',12,'delete_irmcustsourcedtl'),(48,'Can view irm cust source dtl',12,'view_irmcustsourcedtl'),(49,'Can add irm cust module license dtl',13,'add_irmcustmodulelicensedtl'),(50,'Can change irm cust module license dtl',13,'change_irmcustmodulelicensedtl'),(51,'Can delete irm cust module license dtl',13,'delete_irmcustmodulelicensedtl'),(52,'Can view irm cust module license dtl',13,'view_irmcustmodulelicensedtl'),(53,'Can add data file tbl demo',14,'add_datafiletbldemo'),(54,'Can change data file tbl demo',14,'change_datafiletbldemo'),(55,'Can delete data file tbl demo',14,'delete_datafiletbldemo'),(56,'Can view data file tbl demo',14,'view_datafiletbldemo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datafile_tbl_demo`
--

DROP TABLE IF EXISTS `datafile_tbl_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datafile_tbl_demo` (
  `datafile_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) NOT NULL,
  PRIMARY KEY (`datafile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datafile_tbl_demo`
--

LOCK TABLES `datafile_tbl_demo` WRITE;
/*!40000 ALTER TABLE `datafile_tbl_demo` DISABLE KEYS */;
/*!40000 ALTER TABLE `datafile_tbl_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'common_master_details','irmcommonmasterdtl'),(10,'common_master_hdr','irmcommonmasterhdr'),(5,'contenttypes','contenttype'),(8,'customer_selection','irmcustgblmst'),(14,'datafile_upload','datafiletbldemo'),(13,'irm_customer_license_db','irmcustmodulelicensedtl'),(12,'irm_customer_source_detail_db','irmcustsourcedtl'),(7,'irm_login','irmappusers'),(11,'irm_module_mst_db','irmmodulemst'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-08-08 22:46:30.611102'),(2,'auth','0001_initial','2020-08-08 22:46:32.749947'),(3,'admin','0001_initial','2020-08-08 22:46:39.578703'),(4,'admin','0002_logentry_remove_auto_add','2020-08-08 22:46:41.089576'),(5,'admin','0003_logentry_add_action_flag_choices','2020-08-08 22:46:41.137694'),(6,'contenttypes','0002_remove_content_type_name','2020-08-08 22:46:42.206704'),(7,'auth','0002_alter_permission_name_max_length','2020-08-08 22:46:42.323255'),(8,'auth','0003_alter_user_email_max_length','2020-08-08 22:46:42.457844'),(9,'auth','0004_alter_user_username_opts','2020-08-08 22:46:42.518206'),(10,'auth','0005_alter_user_last_login_null','2020-08-08 22:46:43.093698'),(11,'auth','0006_require_contenttypes_0002','2020-08-08 22:46:43.126657'),(12,'auth','0007_alter_validators_add_error_messages','2020-08-08 22:46:43.162754'),(13,'auth','0008_alter_user_username_max_length','2020-08-08 22:46:43.284868'),(14,'auth','0009_alter_user_last_name_max_length','2020-08-08 22:46:43.411805'),(15,'auth','0010_alter_group_name_max_length','2020-08-08 22:46:43.554519'),(16,'auth','0011_update_proxy_permissions','2020-08-08 22:46:43.615544'),(17,'irm_login','0001_initial','2020-08-08 22:46:43.652780'),(18,'sessions','0001_initial','2020-08-08 22:46:43.961378'),(19,'common_master_details','0001_initial','2020-08-12 23:00:49.769973'),(20,'common_master_hdr','0001_initial','2020-08-12 23:00:49.834694'),(21,'customer_selection','0001_initial','2020-08-12 23:00:49.885267'),(22,'irm_module_mst_db','0001_initial','2020-08-16 21:16:13.209526'),(23,'irm_customer_source_detail_db','0001_initial','2020-08-16 21:45:31.707210'),(24,'irm_customer_license_db','0001_initial','2020-08-17 00:44:16.870488'),(25,'datafile_upload','0001_initial','2020-08-17 12:37:51.722171');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02tma7ablowvi6nirficfym01feria4u','ZWQ4YjFiNjViZmIxYjYyZTVhODNjNTRmZDQwY2Y3ZTRjYjU3ODQ4MDp7ImxhbmciOiJBcmFiaWMifQ==','2020-08-29 02:18:25.581752'),('09gp787mitvd05y0fwo06dwhxoky9agy','ZWQ4YjFiNjViZmIxYjYyZTVhODNjNTRmZDQwY2Y3ZTRjYjU3ODQ4MDp7ImxhbmciOiJBcmFiaWMifQ==','2020-08-29 02:15:02.842398'),('09tbhj0p8le5r83vqkyp4ubdbbmz8cw4','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-31 03:51:06.439620'),('1bcvsv4a7a2124me34i80eng0cvhmumz','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 03:05:15.288205'),('36r9midkz3ir9i3ibvvu1x7o67wzlyv5','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 02:52:19.203078'),('3o9oqrakqobym1xgym07ueg330hnxow4','YzhjODJiOWEzOTBjOGUyMjRlMzBiY2ZhMjc2NWY2MDM4M2JkZDY3ZTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwidXNlcl9uYW1lIjoiRGVmYXVsdCBVc2VyIC0gd2VsY29tZSIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-31 03:07:27.218121'),('3s0uyaik9kgn5625dqbkx0ffutshtg9m','MDNjMDA3Y2IyODExZTI1MDM5ZDc5NDg2OWU4NTY2NTk0MTA0N2E4MTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MiwidXNlcl9lbWFpbCI6ImFydW4ubWFqdW1kYXJAaXJtY2xvdWQuYXBwIiwibG9naW5fc3RhdHVzIjp0cnVlLCJ1c2VyX25hbWUiOiJBcnVuIE1henVtZGFyIn0=','2020-08-31 02:02:44.100900'),('46oini2ifu5n2oild3o1y89imzbn6hxd','Njg1YTYyOWRlMTBkN2NjYzE0MjExMWU4NzM4MzhiOTcyZTEwMTQ4NTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwibG9naW5fc3RhdHVzIjp0cnVlfQ==','2020-08-31 01:17:00.620985'),('68acy6bgchd5djymvzfzjswqmzdkl3u2','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 02:43:07.503322'),('6koha6ybtr4bpix7qg8tdfubhsrix7wz','NTBhMDliY2EzZTA4NTU1ODQ3Mzc2ZjBjNzAxYTI5OTYxODk3Njk3NDp7InVzZXJfaWQiOjEsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-27 00:09:52.085855'),('6o6aclweqjkqzhogv0zchtqvn9bt31a6','NTUxM2MwNDAzMzUyYjdiNTJkNGE5YjIwZGM4ZTlmNGRkODEzNzYwNDp7ImxhbmciOiItMSIsInVzZXJfaWQiOjIsInVzZXJfZW1haWwiOiJhcnVuLm1hanVtZGFyQGlybWNsb3VkLmFwcCIsInVzZXJfbmFtZSI6IkFydW4gTWF6dW1kYXIiLCJsb2dpbl9zdGF0dXMiOnRydWUsImN1c3RvbWVyX3NlbGVjdF9pZCI6IjIifQ==','2020-08-31 13:56:17.537066'),('9zbskxqimqb6apeimuu926en95v5op2y','YzhjODJiOWEzOTBjOGUyMjRlMzBiY2ZhMjc2NWY2MDM4M2JkZDY3ZTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwidXNlcl9uYW1lIjoiRGVmYXVsdCBVc2VyIC0gd2VsY29tZSIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-31 03:07:42.476345'),('al60g72v3ita88xo8jkarz21ftzrcdeb','NzA3ODMzMDAxNzUyZWU1ZTExYjM3NjljOGYwZGU4MGE2MWVmYjU2Zjp7ImxhbmciOiItMSIsInVzZXJfaWQiOjMsInVzZXJfZW1haWwiOiJzLnBvbGxleUBnbWFpbC5jb20iLCJ1c2VyX25hbWUiOiJTIHBvbGxleSIsImxvZ2luX3N0YXR1cyI6dHJ1ZSwiY3VzdG9tZXJfc2VsZWN0X2lkIjoiMCJ9','2020-08-31 15:27:01.338111'),('anwhqpjwm3vam0wien05oro86a3z4ssx','YzhjODJiOWEzOTBjOGUyMjRlMzBiY2ZhMjc2NWY2MDM4M2JkZDY3ZTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwidXNlcl9uYW1lIjoiRGVmYXVsdCBVc2VyIC0gd2VsY29tZSIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-31 02:58:27.005428'),('bdtds3hd2ycq4mnkgfsrwcdyoqd6r27l','ZGM4M2UzZDE0YzhhMjIwZjE4NjkzNTEzNDg3N2JiM2Y5YzJlZTUzMjp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwidXNlcl9uYW1lIjoiRGVmYXVsdCBVc2VyIC0gd2VsY29tZSIsImxvZ2luX3N0YXR1cyI6ZmFsc2V9','2020-08-31 02:50:45.627916'),('be1svu7a0sow2in13327gh6gf2hy7ssw','NTBhMDliY2EzZTA4NTU1ODQ3Mzc2ZjBjNzAxYTI5OTYxODk3Njk3NDp7InVzZXJfaWQiOjEsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-27 00:51:33.652477'),('bgyg1l6t5eeq08w5erov29ttowjikh39','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-30 23:48:08.057604'),('btiq6hs61r4i5pfi2kilwkt4qp38ofrz','Njg1YTYyOWRlMTBkN2NjYzE0MjExMWU4NzM4MzhiOTcyZTEwMTQ4NTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwibG9naW5fc3RhdHVzIjp0cnVlfQ==','2020-08-31 01:07:23.594354'),('buntj8knqu3jsufg90lauh2hz5ez6hl3','NTBhMDliY2EzZTA4NTU1ODQ3Mzc2ZjBjNzAxYTI5OTYxODk3Njk3NDp7InVzZXJfaWQiOjEsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-27 00:00:50.446493'),('bvgs05ec7l71vwosr6y2z8tvc9lv5fw5','YmEzZDBlNjIxMGVlNDA0MWY0ZGIzY2NkM2NhYTdlOTg1ZTgyZDM5Zjp7InVzZXJfaWQiOjEsInVzZXJfZW1haWwiOiJkZWZhdWx0QGlybWNsb3VkLmFwcCIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-29 01:33:44.998536'),('ccsto2pymwcj65es91znzapdf261ys8p','NGZkMjRiNjdiMWFiYjZjZmI0ZDE3MDA5YTI0NDNhMGQ4MzE1MzgzNDp7ImxhbmciOiItMSIsInVzZXJfaWQiOjIsInVzZXJfZW1haWwiOiJhcnVuLm1hanVtZGFyQGlybWNsb3VkLmFwcCIsInVzZXJfbmFtZSI6IkFydW4gTWF6dW1kYXIiLCJsb2dpbl9zdGF0dXMiOnRydWUsImN1c3RvbWVyX3NlbGVjdF9pZCI6IjAifQ==','2020-08-31 15:49:57.638669'),('dffqsval6vue6znwyjqchhz90nbwlfyb','ZWQ4YjFiNjViZmIxYjYyZTVhODNjNTRmZDQwY2Y3ZTRjYjU3ODQ4MDp7ImxhbmciOiJBcmFiaWMifQ==','2020-08-29 02:11:24.193406'),('djbnvbtswx1wrcakdrez6u23aeevbwn2','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 02:57:37.261323'),('dx9i8bv18y5uj968668ho8l41deidrmx','YmY1ZmU1ODhjOGU3NmNmMjc5YjRhZWQ2MGM2OGZmNzYxYzNlMjRlOTp7InVzZXJfaWQiOjEsInVzZXJfZW1haWwiOiJkZWZhdWx0QGlybWNsb3VkLmFwcCIsImxvZ2luX3N0YXR1cyI6dHJ1ZSwibGFuZyI6IkFyYWJpYyJ9','2020-08-29 02:26:14.149029'),('dy7m8ctqr9w8id469hmtu94hqeueub3x','OTYwNWFhODZmYmFlZGM2NmI4NmY2ZGNmNzlhOTVkNTcxYzMxYzY3MTp7ImxhbmciOiItMSIsInVzZXJfaWQiOjIsInVzZXJfZW1haWwiOiJhcnVuLm1hanVtZGFyQGlybWNsb3VkLmFwcCIsInVzZXJfbmFtZSI6IkFydW4gTWF6dW1kYXIiLCJsb2dpbl9zdGF0dXMiOnRydWV9','2020-08-31 13:30:45.414087'),('e60kdyc28dlnf214qliio8xk3i1y8p8j','OTYwNWFhODZmYmFlZGM2NmI4NmY2ZGNmNzlhOTVkNTcxYzMxYzY3MTp7ImxhbmciOiItMSIsInVzZXJfaWQiOjIsInVzZXJfZW1haWwiOiJhcnVuLm1hanVtZGFyQGlybWNsb3VkLmFwcCIsInVzZXJfbmFtZSI6IkFydW4gTWF6dW1kYXIiLCJsb2dpbl9zdGF0dXMiOnRydWV9','2020-08-31 13:47:37.561204'),('eeb4f5599wje16d6p918z1husmt0r4yq','OTEwOTIwYTBhZTc5ZTM2OWVlOGYyNDQ3NGZmMTdhNWUwMmE4NTU0Yzp7ImxhbmciOiItMSJ9','2020-08-31 15:57:07.223524'),('eu0eox0t36qodacyyrzsksr9j1d9vmgx','YmEzZDBlNjIxMGVlNDA0MWY0ZGIzY2NkM2NhYTdlOTg1ZTgyZDM5Zjp7InVzZXJfaWQiOjEsInVzZXJfZW1haWwiOiJkZWZhdWx0QGlybWNsb3VkLmFwcCIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-29 01:34:46.989431'),('gvw684k4r1vrtkotmkmi5bzqt8eeq5qw','Njg1YTYyOWRlMTBkN2NjYzE0MjExMWU4NzM4MzhiOTcyZTEwMTQ4NTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwibG9naW5fc3RhdHVzIjp0cnVlfQ==','2020-08-31 01:43:12.429019'),('h70g3b0mtm4y09anqe4lj9v4avzfnbvz','YTcxNjczNjY2MzVmNmY3NGFmNTMyZmNlMzM1YWM4OWFmOTVhODE5Mjp7InVzZXJfaWQiOjIsImxvZ2luX3N0YXR1cyI6dHJ1ZSwidXNlcl9lbWFpbCI6ImFydW4ubWFqdW1kYXJAaXJtY2xvdWQuYXBwIiwibGFuZyI6Ii0xIiwidXNlcl9uYW1lIjoiQXJ1biBNYXp1bWRhciIsImN1c3RvbWVyX3NlbGVjdF9pZCI6IjAifQ==','2020-08-31 15:34:37.178024'),('id7xi02tzcpy60au8xj5qenrj5cweriv','NTBhMDliY2EzZTA4NTU1ODQ3Mzc2ZjBjNzAxYTI5OTYxODk3Njk3NDp7InVzZXJfaWQiOjEsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-27 00:04:57.052913'),('lsyf0nqvkun5f6iyddnx7i2pt37c3ch7','ZWQ4YjFiNjViZmIxYjYyZTVhODNjNTRmZDQwY2Y3ZTRjYjU3ODQ4MDp7ImxhbmciOiJBcmFiaWMifQ==','2020-08-29 02:07:24.541400'),('m5omoj46wwqrgy4aijld8e0t85uapve0','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 02:55:10.588886'),('mqyj0d4xj7ubo2pk5sd2h3o2bo72379u','NTBhMDliY2EzZTA4NTU1ODQ3Mzc2ZjBjNzAxYTI5OTYxODk3Njk3NDp7InVzZXJfaWQiOjEsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-27 00:17:40.764398'),('n7hjz5an78xpy2n5rq7au2cz7f3aclmm','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 02:44:21.510452'),('qh0u0vdmfhlnnb3hhx15mxzepjb4yxvq','Y2RiYjljNmVlZWRlMTkzYzI5ZTA5Y2FjODBlNDg0OGVmMjBmZjBjOTp7ImxhbmciOiItMSIsInVzZXJfaWQiOjMsInVzZXJfZW1haWwiOiJzLnBvbGxleUBnbWFpbC5jb20iLCJ1c2VyX25hbWUiOiJTIHBvbGxleSIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-31 15:28:05.270819'),('qiuuqdt5tv9u56yieoflll5w9rce6ksk','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 02:48:12.266911'),('ql57eww4g8q4fkfrurczun5yzl4dotn1','MTBhN2I3NTUyNTExZjAxN2Q3MTAzNWNhNjUyMmI4NWFmMGQ3MGZhOTp7ImxhbmciOiItMSIsInVzZXJfaWQiOjIsInVzZXJfZW1haWwiOiJhcnVuLm1hanVtZGFyQGlybWNsb3VkLmFwcCIsInVzZXJfbmFtZSI6IkFydW4gTWF6dW1kYXIiLCJsb2dpbl9zdGF0dXMiOnRydWUsImN1c3RvbWVyX3NlbGVjdF9pZCI6IjEifQ==','2020-08-31 10:51:10.661865'),('r3fs24wkq8htpxls95mot56cqqpj9u7v','Njg1YTYyOWRlMTBkN2NjYzE0MjExMWU4NzM4MzhiOTcyZTEwMTQ4NTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwibG9naW5fc3RhdHVzIjp0cnVlfQ==','2020-08-31 01:15:15.550855'),('say3hfeap3pc977695llfpn7kg9sxgw5','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-30 22:31:28.202857'),('sdexu731s9z7s98pubroozrt4791elw5','YzhjODJiOWEzOTBjOGUyMjRlMzBiY2ZhMjc2NWY2MDM4M2JkZDY3ZTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwidXNlcl9uYW1lIjoiRGVmYXVsdCBVc2VyIC0gd2VsY29tZSIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-31 02:52:03.055154'),('sq52l3h4i0zkn1p29usy8beklm3jsr2y','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 02:45:58.462366'),('titqj5wn6ngravwtyohwwo5s6nj4igu1','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 12:12:27.974779'),('v1k1qlbhx2jbptaigg56j0w8lxuobeuw','Njg1YTYyOWRlMTBkN2NjYzE0MjExMWU4NzM4MzhiOTcyZTEwMTQ4NTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwibG9naW5fc3RhdHVzIjp0cnVlfQ==','2020-08-29 12:16:14.606413'),('v7zykaibbiu3umhl7u61t9zcggrve5ej','YmEzZDBlNjIxMGVlNDA0MWY0ZGIzY2NkM2NhYTdlOTg1ZTgyZDM5Zjp7InVzZXJfaWQiOjEsInVzZXJfZW1haWwiOiJkZWZhdWx0QGlybWNsb3VkLmFwcCIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-27 01:40:16.863937'),('vwcn79jaydi6a8k9plrdy0dz0yz74g3z','OTYwNWFhODZmYmFlZGM2NmI4NmY2ZGNmNzlhOTVkNTcxYzMxYzY3MTp7ImxhbmciOiItMSIsInVzZXJfaWQiOjIsInVzZXJfZW1haWwiOiJhcnVuLm1hanVtZGFyQGlybWNsb3VkLmFwcCIsInVzZXJfbmFtZSI6IkFydW4gTWF6dW1kYXIiLCJsb2dpbl9zdGF0dXMiOnRydWV9','2020-08-31 15:13:45.934340'),('vzm93qybu0ysuasso6bss06zx7u1no1v','NTBhMDliY2EzZTA4NTU1ODQ3Mzc2ZjBjNzAxYTI5OTYxODk3Njk3NDp7InVzZXJfaWQiOjEsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-27 00:23:59.559144'),('wdkcqr03kfaaal0pjadgixhvqcqfx5gj','NjY0NDNkZTcxZTVjODM5MzQyMjU3ZGY4ZDBiNzc4Njk4OGExYmM0Nzp7InVzZXJfaWQiOjEsImxvZ2luX3N0YXR1cyI6dHJ1ZSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIn0=','2020-08-27 01:33:33.542494'),('xar8ywkmtikbnkkhmohelzpni9x7ep92','Njg1YTYyOWRlMTBkN2NjYzE0MjExMWU4NzM4MzhiOTcyZTEwMTQ4NTp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwibG9naW5fc3RhdHVzIjp0cnVlfQ==','2020-08-31 01:13:21.105819'),('xc838cz1tgozkzccrv13e8k7mryv59a2','OWI5NGFlOTU2N2FiNzgyZjg0ZWMyZTNiOWYyODUxNTA5N2IyYjNmMTp7ImxhbmciOiJFbmdsaXNoIn0=','2020-08-29 03:09:56.944843'),('xfs9hie6m02l6mvp4kz04w2yt50cbgbs','YThkNTU0ZTY1MDlkM2U0YzUyMjMwNGRhMTkyZjBlNjVhYzQ0NmNjMzp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwidXNlcl9uYW1lIjoiRGVmYXVsdCBVc2VyIC0gd2VsY29tZSIsImxvZ2luX3N0YXR1cyI6dHJ1ZSwiY3VzdG9tZXJfc2VsZWN0X2lkIjoiMyJ9','2020-08-31 03:30:23.320030'),('xz197zfoagfcwi4bkuzh5guu7w5cnt5u','NWM0ZTRjYTE5Y2I2YWE0NjljMmI1MTk5YTc0OTQ3NWFlOGQ2Zjk0MTp7ImxhbmciOiJlbiIsInVzZXJfaWQiOjEsInVzZXJfZW1haWwiOiJkZWZhdWx0QGlybWNsb3VkLmFwcCIsImxvZ2luX3N0YXR1cyI6dHJ1ZX0=','2020-08-29 02:01:22.233894'),('y8zooe9i5ajyuuukile8p0me76uwhzc8','YzI1NTQyZDAwNzhhMzU2NDkyYjRjODE0YjcyYWNiNjUzMWE1YmQxNzp7ImxhbmciOiJ4eHgifQ==','2020-08-29 02:50:48.778127'),('yqit5z9xkoop0f27wjiz5jdaak2mn1lm','NThhZjBlZGZhYWJlYzBiMTY3OWMwNDUzY2QzZGNhNDA3ZTUzZTE3ZDp7ImxhbmciOiJFbmdsaXNoIiwidXNlcl9pZCI6MSwidXNlcl9lbWFpbCI6ImRlZmF1bHRAaXJtY2xvdWQuYXBwIiwidXNlcl9uYW1lIjoiRGVmYXVsdCBVc2VyIC0gd2VsY29tZSIsImxvZ2luX3N0YXR1cyI6dHJ1ZSwiY3VzdG9tZXJfc2VsZWN0X2lkIjoiMSJ9','2020-08-31 03:21:10.080404'),('yyxcjqy4co6eqbf64ix4bpscaqnpogah','ZWQ4YjFiNjViZmIxYjYyZTVhODNjNTRmZDQwY2Y3ZTRjYjU3ODQ4MDp7ImxhbmciOiJBcmFiaWMifQ==','2020-08-31 10:49:22.799005');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_app_users`
--

DROP TABLE IF EXISTS `irm_app_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_app_users` (
  `IRM_USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_USERNAME` varchar(45) NOT NULL,
  `APP_PASS_ENCRYPT` blob NOT NULL,
  `IS_ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `USER_FNAME` varchar(100) NOT NULL,
  `USER_LNAME` varchar(100) NOT NULL,
  `USER_EMAIL` varchar(100) NOT NULL,
  `USER_CONTACT_NUM` varchar(45) DEFAULT NULL,
  `CRD_DATE` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRD_USR_ID` int(11) DEFAULT NULL,
  `UPD_USR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`IRM_USER_ID`),
  UNIQUE KEY `IRM_USER_ID_UNIQUE` (`IRM_USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_app_users`
--

LOCK TABLES `irm_app_users` WRITE;
/*!40000 ALTER TABLE `irm_app_users` DISABLE KEYS */;
INSERT INTO `irm_app_users` VALUES (1,'default@irmcloud.app',_binary 'welcome','Y','Default','User - welcome','default@irmcloud.app',NULL,NULL,'2020-07-23 15:08:42',NULL,NULL),(2,'arun.majumdar@irmcloud.app',_binary 'welcome','Y','Arun','Mazumdar','arun.majumdar@irmcloud.app',NULL,NULL,'2020-07-23 15:10:15',NULL,NULL),(3,'s.polley@irmcloud.app',_binary 'welcome','Y','S','polley','s.polley@gmail.com',NULL,NULL,'2020-08-17 15:24:14',NULL,NULL);
/*!40000 ALTER TABLE `irm_app_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_business_process_mst`
--

DROP TABLE IF EXISTS `irm_business_process_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_business_process_mst` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_process_name` varchar(100) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `crd_usr_id` int(11) DEFAULT NULL,
  `crd_date` datetime DEFAULT NULL,
  `upd_usr_id` int(11) DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` char(1) DEFAULT NULL,
  PRIMARY KEY (`row_id`),
  KEY `xx_cust_id_bp_idx` (`cust_id`),
  CONSTRAINT `xx_cust_id_bp` FOREIGN KEY (`cust_id`) REFERENCES `irm_cust_gbl_mst` (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_business_process_mst`
--

LOCK TABLES `irm_business_process_mst` WRITE;
/*!40000 ALTER TABLE `irm_business_process_mst` DISABLE KEYS */;
INSERT INTO `irm_business_process_mst` VALUES (1,'Procure to Pay',1,1,NULL,NULL,'2020-07-26 18:11:38','Y'),(2,'Order to Cash',1,1,NULL,NULL,'2020-07-26 18:11:38','Y'),(3,'Hire to Retire',1,1,NULL,NULL,'2020-07-26 18:11:38','Y'),(4,'Expense Management',1,1,NULL,NULL,'2020-07-26 18:11:38','Y'),(5,'Project Management',1,2,NULL,NULL,'2020-07-26 18:11:38','Y'),(6,'Supply Chain',1,2,NULL,NULL,'2020-07-26 18:11:38','Y');
/*!40000 ALTER TABLE `irm_business_process_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_common_master_dtl`
--

DROP TABLE IF EXISTS `irm_common_master_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_common_master_dtl` (
  `mst_dtl_id` int(11) NOT NULL AUTO_INCREMENT,
  `mst_hdr_id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` char(1) DEFAULT 'Y',
  PRIMARY KEY (`mst_dtl_id`),
  KEY `xx_master_for_key_idx` (`mst_hdr_id`),
  CONSTRAINT `xx_master_for_key` FOREIGN KEY (`mst_hdr_id`) REFERENCES `irm_common_master_hdr` (`mst_hdr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_common_master_dtl`
--

LOCK TABLES `irm_common_master_dtl` WRITE;
/*!40000 ALTER TABLE `irm_common_master_dtl` DISABLE KEYS */;
INSERT INTO `irm_common_master_dtl` VALUES (1,1,'APAC','2020-07-26 15:37:36','Y'),(2,1,'EMEA','2020-07-26 15:37:36','Y'),(3,1,'LAD','2020-07-26 15:37:36','Y'),(4,1,'NA','2020-07-26 15:37:36','Y'),(5,2,'CFO','2020-07-26 09:10:57','Y'),(6,2,'CISO','2020-07-26 09:10:57','Y'),(7,2,'GM (Finance)','2020-07-26 09:10:57','Y'),(8,2,'Any Other Designation','2020-07-26 15:38:23','Y'),(9,3,'Shared Public Cloud - Azure','2020-07-26 15:32:54','Y'),(10,3,'Shared Public Cloud - Manai','2020-07-26 15:32:54','Y'),(11,3,'Shared Public Cloud - Oracle','2020-07-26 15:32:54','Y'),(12,3,'Private Schema - AWS','2020-07-26 15:32:54','Y'),(13,3,'Local Installation','2020-07-26 15:32:54','Y'),(14,3,'Shared Public Cloud - AWS','2020-07-26 15:38:23','Y'),(15,4,'Internal Audit','2020-07-26 15:46:02','Y'),(16,4,'External Audit','2020-07-26 15:46:02','Y'),(17,4,'Managed Services','2020-07-26 15:46:02','Y'),(28,7,'Oracle EBS R12.1.3','2020-07-26 16:04:54','Y'),(29,7,'Oracle Fusion Cloud','2020-07-26 16:04:54','Y'),(30,7,'SAP ECC','2020-07-26 16:04:54','Y'),(31,7,'SAP HANA','2020-07-26 16:04:54','Y'),(32,7,'JD Edwards','2020-07-26 16:04:54','Y'),(33,7,'Netsuite','2020-07-26 16:11:18','Y'),(34,7,'Other Systems','2020-07-26 16:11:18','Y'),(35,4,'Program Assurance','2020-07-26 16:39:14','Y'),(36,4,'Adhoc Assessment','2020-07-26 16:39:14','Y'),(37,4,'Pre-implementation Review','2020-07-26 16:39:14','Y'),(38,4,'Post-implementation Review','2020-07-26 16:39:14','Y'),(39,4,'Regulatory Compliance','2020-07-26 16:39:38','Y'),(40,4,'SOX Audit','2020-07-26 16:39:48','Y'),(41,4,'HIPAA Compliance','2020-07-26 16:40:03','Y'),(46,7,'Workday','2020-07-26 16:41:06','Y'),(47,7,'Kyriba','2020-07-26 16:41:06','Y'),(48,7,'PeopleSoft','2020-07-26 16:41:06','Y'),(49,7,'MSDynamics','2020-07-26 16:41:06','Y');
/*!40000 ALTER TABLE `irm_common_master_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_common_master_hdr`
--

DROP TABLE IF EXISTS `irm_common_master_hdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_common_master_hdr` (
  `mst_hdr_id` int(11) NOT NULL AUTO_INCREMENT,
  `master_type` varchar(100) DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cust_id` int(11) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL,
  `upd_usr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mst_hdr_id`),
  KEY `xx_cust_id_idx` (`cust_id`),
  CONSTRAINT `xx_cust_id` FOREIGN KEY (`cust_id`) REFERENCES `irm_cust_gbl_mst` (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_common_master_hdr`
--

LOCK TABLES `irm_common_master_hdr` WRITE;
/*!40000 ALTER TABLE `irm_common_master_hdr` DISABLE KEYS */;
INSERT INTO `irm_common_master_hdr` VALUES (1,'Region','2020-07-26 17:37:28',1,'Y',NULL),(2,'Designation','2020-07-26 17:37:28',1,'Y',NULL),(3,'Deployment Type','2020-07-26 17:37:28',1,'Y',NULL),(4,'Engagement Type','2020-07-26 17:48:14',1,'Y',NULL),(7,'Source ERPs','2020-07-26 17:37:28',1,'Y',NULL);
/*!40000 ALTER TABLE `irm_common_master_hdr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_cust_gbl_mst`
--

DROP TABLE IF EXISTS `irm_cust_gbl_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_cust_gbl_mst` (
  `CUST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUST_LEGAL_NAME` varchar(100) NOT NULL DEFAULT 'irm_cust_gbl_mstCOUNTRYCOUNTRYIRM Customer Name',
  `region_mst_id` int(11) DEFAULT NULL,
  `deploy_type_mst_id` int(11) DEFAULT NULL,
  `audit_type_mst_id` int(11) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `IS_ACTIVE` char(2) DEFAULT 'Y',
  `PRIM_CONTACT` varchar(100) DEFAULT NULL,
   `COUNTRY` varchar(100) DEFAULT NULL,
  `REVENUE_RANGE` varchar(100) DEFAULT NULL,
  `NUM_EMPLOYEES` varchar(100) DEFAULT NULL,
  `CRD_DATE` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRD_USR_ID` int(11) DEFAULT NULL,
  `UPD_USR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `xx_crd_user_fkey_idx` (`CRD_USR_ID`,`UPD_USR_ID`),
  KEY `xx_upd_user_fkey_idx` (`UPD_USR_ID`),
  KEY `xx_region_f_key_idx` (`region_mst_id`),
  KEY `xx_audit_type_f_key_idx` (`audit_type_mst_id`),
  CONSTRAINT `xx_audit_type_f_key` FOREIGN KEY (`audit_type_mst_id`) REFERENCES `irm_common_master_dtl` (`mst_dtl_id`),
  CONSTRAINT `xx_dep_type_f_key` FOREIGN KEY (`audit_type_mst_id`) REFERENCES `irm_common_master_dtl` (`mst_dtl_id`),
  CONSTRAINT `xx_region_f_key` FOREIGN KEY (`region_mst_id`) REFERENCES `irm_common_master_dtl` (`mst_dtl_id`),
  CONSTRAINT `xx_user_for_key` FOREIGN KEY (`CRD_USR_ID`) REFERENCES `irm_app_users` (`IRM_USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_cust_gbl_mst`
--

LOCK TABLES `irm_cust_gbl_mst` WRITE;
/*!40000 ALTER TABLE `irm_cust_gbl_mst` DISABLE KEYS */;
INSERT INTO `irm_cust_gbl_mst` VALUES (1,'TRP UK (Default Customer)',2,9,35,'2020-07-23 00:00:00',NULL,'Y','Mr. Arun K M','INDIA','1 mi GBP','10','2020-07-23 00:00:00','2020-07-26 18:21:27',2,NULL),(2,'Tata Chemicals India Pvt Ltd',1,9,36,'2020-07-23 00:00:00',NULL,'Y','Mr. RN Poddar','JAPAN','15 million USD','1000','2020-07-23 00:00:00','2020-07-26 18:21:27',1,NULL),(3,'AWCA Power KSA',1,9,36,NULL,NULL,'Y','Mr. Mir Ali','INDIA','1 mi GBP','3500',NULL,'2020-07-26 18:21:27',1,NULL),(18,'Reliance Industries',2,9,15,'2020-08-17 00:00:00',NULL,'Y','Anustup Das','CHINA',NULL,'100','2020-08-17 00:00:00','2020-08-17 15:48:43',2,NULL);
/*!40000 ALTER TABLE `irm_cust_gbl_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_cust_irmuser_map_dtl`
--

DROP TABLE IF EXISTS `irm_cust_irmuser_map_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_cust_irmuser_map_dtl` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `irm_user_id` int(11) NOT NULL,
  `mapping_is_active` char(1) DEFAULT 'Y',
  `crd_date` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `crd_usr_id` int(11) DEFAULT NULL,
  `upd_usr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`),
  KEY `xx_irm_app_usr_fkey_idx` (`irm_user_id`),
  KEY `xx_irm_cust_id_fkey_idx` (`cust_id`),
  CONSTRAINT `xx_irm_app_usr_fkey` FOREIGN KEY (`irm_user_id`) REFERENCES `irm_app_users` (`IRM_USER_ID`),
  CONSTRAINT `xx_irm_cust_id_fkey` FOREIGN KEY (`cust_id`) REFERENCES `irm_cust_gbl_mst` (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_cust_irmuser_map_dtl`
--

LOCK TABLES `irm_cust_irmuser_map_dtl` WRITE;
/*!40000 ALTER TABLE `irm_cust_irmuser_map_dtl` DISABLE KEYS */;
INSERT INTO `irm_cust_irmuser_map_dtl` VALUES (1,1,1,'Y',NULL,'2020-07-23 15:15:37',1,NULL),(2,1,2,'Y',NULL,'2020-07-23 15:15:37',2,NULL);
/*!40000 ALTER TABLE `irm_cust_irmuser_map_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_cust_module_license_dtl`
--

DROP TABLE IF EXISTS `irm_cust_module_license_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_cust_module_license_dtl` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUST_ID` int(11) NOT NULL,
  `MODULE_ID` int(11) DEFAULT NULL,
  `CRD_DATE` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRD_USR_ID` int(11) DEFAULT NULL,
  `UPD_USR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`),
  KEY `xx_cust_id_fkey2_idx` (`CUST_ID`),
  KEY `xx_module_id2_fkey_idx` (`MODULE_ID`),
  CONSTRAINT `xx_cust_id_fkey2` FOREIGN KEY (`CUST_ID`) REFERENCES `irm_cust_gbl_mst` (`CUST_ID`),
  CONSTRAINT `xx_module_id2_fkey` FOREIGN KEY (`MODULE_ID`) REFERENCES `irm_module_mst` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_cust_module_license_dtl`
--

LOCK TABLES `irm_cust_module_license_dtl` WRITE;
/*!40000 ALTER TABLE `irm_cust_module_license_dtl` DISABLE KEYS */;
INSERT INTO `irm_cust_module_license_dtl` VALUES (4,1,1,NULL,'2020-07-26 21:39:08',1,NULL),(5,1,2,NULL,'2020-07-26 21:39:08',1,NULL),(6,2,1,NULL,'2020-07-26 21:39:08',1,NULL),(7,2,2,NULL,'2020-07-26 21:39:08',1,NULL),(12,18,3,'2020-08-17 00:00:00','2020-08-17 15:48:43',2,NULL);
/*!40000 ALTER TABLE `irm_cust_module_license_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_cust_source_dtl`
--

DROP TABLE IF EXISTS `irm_cust_source_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_cust_source_dtl` (
  `ROW_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUST_ID` int(11) NOT NULL,
  `SOURCE_MST_ID` int(11) DEFAULT NULL,
  `CRD_DATE` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRD_USR_ID` int(11) DEFAULT NULL,
  `UPD_USR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`),
  KEY `xx_cust_id_fkey1_idx` (`CUST_ID`),
  KEY `xx_source_type_fkey_idx` (`SOURCE_MST_ID`),
  CONSTRAINT `xx_cust_id_fkey1` FOREIGN KEY (`CUST_ID`) REFERENCES `irm_cust_gbl_mst` (`CUST_ID`),
  CONSTRAINT `xx_source_type_fkey` FOREIGN KEY (`SOURCE_MST_ID`) REFERENCES `irm_common_master_dtl` (`mst_dtl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_cust_source_dtl`
--

LOCK TABLES `irm_cust_source_dtl` WRITE;
/*!40000 ALTER TABLE `irm_cust_source_dtl` DISABLE KEYS */;
INSERT INTO `irm_cust_source_dtl` VALUES (1,1,28,NULL,'2020-07-26 16:36:04',1,NULL),(2,1,29,NULL,'2020-07-26 16:36:04',1,NULL),(3,1,30,NULL,'2020-07-26 16:36:04',2,NULL),(10,18,28,'2020-08-17 00:00:00','2020-08-17 15:48:43',2,NULL);
/*!40000 ALTER TABLE `irm_cust_source_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_module_mst`
--

DROP TABLE IF EXISTS `irm_module_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_module_mst` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `module_code` varchar(45) DEFAULT NULL,
  `module_type` varchar(45) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL,
  `crd_date` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `crd_usr_id` int(11) DEFAULT NULL,
  `upd_usr_id` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL COMMENT 'Used to segregate access of a specific module by customer',
  PRIMARY KEY (`module_id`),
  KEY `xx_user_id_fkey_idx` (`crd_usr_id`,`upd_usr_id`),
  KEY `xx_irm_cust_id_idx` (`CUST_ID`),
  CONSTRAINT `xx_irm_cust_id` FOREIGN KEY (`CUST_ID`) REFERENCES `irm_cust_gbl_mst` (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_module_mst`
--

LOCK TABLES `irm_module_mst` WRITE;
/*!40000 ALTER TABLE `irm_module_mst` DISABLE KEYS */;
INSERT INTO `irm_module_mst` VALUES (1,'IT General Controls (ITGC)','ITGC','Licenseable','Y','2020-07-23 16:53:56','2020-07-26 18:30:40',1,NULL,1),(2,'Automated Business Controls (ABC)','ABC','Licenseable','Y','2020-07-23 16:53:56','2020-07-26 18:31:25',1,NULL,1),(3,'Segregation of Duties (SoD)','SoD','Licenseable','Y','2020-07-23 16:53:56','2020-07-26 18:30:40',1,NULL,1),(4,'Setup','Setup','Setup','Y','2020-07-23 16:53:56','2020-07-26 18:30:40',1,NULL,1),(5,'Landing Page','Landing','Landing','Y','2020-07-23 16:53:56','2020-07-26 18:31:46',1,NULL,1),(6,'Advanced Reporting','AdvRep','Licenseable','Y','2020-07-23 16:53:56','2020-07-26 18:30:40',1,NULL,1),(7,'iMatrix','iMatrix','Licenseable','Y','2020-07-23 16:53:56','2020-07-26 18:30:40',1,NULL,1),(8,'iRemediation','iRemediation','Licenseable','Y','2020-07-23 16:53:56','2020-07-26 18:30:40',1,NULL,1);
/*!40000 ALTER TABLE `irm_module_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_page_mst`
--

DROP TABLE IF EXISTS `irm_page_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_page_mst` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `irm_page_name` varchar(100) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL,
  `CRD_DATE` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRD_USR_ID` int(11) DEFAULT NULL,
  `UPD_USR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `xx_irm_module_fkey_idx` (`module_id`),
  CONSTRAINT `xx_irm_module_fkey` FOREIGN KEY (`module_id`) REFERENCES `irm_module_mst` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_page_mst`
--

LOCK TABLES `irm_page_mst` WRITE;
/*!40000 ALTER TABLE `irm_page_mst` DISABLE KEYS */;
INSERT INTO `irm_page_mst` VALUES (1,'Create Customer',4,'Y',NULL,'2020-07-23 15:31:44',1,NULL),(2,'Import Data',4,'Y',NULL,'2020-07-23 15:31:44',1,NULL),(3,'SOD - Benchmark',3,'Y',NULL,'2020-07-24 04:42:56',1,NULL),(4,'SOD - Adhoc Control',3,'Y',NULL,'2020-07-24 04:42:56',1,NULL),(5,'BzC - Benchmark',3,'Y',NULL,'2020-07-24 04:42:56',1,NULL),(6,'BzC - Mitigating Control',3,'Y',NULL,'2020-07-24 04:42:56',1,NULL),(7,'Mitigating Controls',3,'Y',NULL,'2020-07-23 15:31:44',1,NULL),(8,'Dummy Page',NULL,NULL,NULL,'2020-07-23 17:12:25',NULL,NULL);
/*!40000 ALTER TABLE `irm_page_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_role_crud_mst`
--

DROP TABLE IF EXISTS `irm_role_crud_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_role_crud_mst` (
  `irm_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(100) NOT NULL,
  `IS_ACTIVE` char(1) NOT NULL DEFAULT 'Y',
  `CRD_DATE` datetime DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CRD_USR_ID` int(11) DEFAULT NULL,
  `UPD_USR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`irm_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_role_crud_mst`
--

LOCK TABLES `irm_role_crud_mst` WRITE;
/*!40000 ALTER TABLE `irm_role_crud_mst` DISABLE KEYS */;
INSERT INTO `irm_role_crud_mst` VALUES (1,'Create','Y',NULL,'2020-07-23 15:24:08',1,NULL),(2,'Read','Y',NULL,'2020-07-23 15:22:48',1,NULL),(3,'Update','Y',NULL,'2020-07-23 15:22:48',1,NULL),(4,'Delete','Y',NULL,'2020-07-23 15:22:48',1,NULL);
/*!40000 ALTER TABLE `irm_role_crud_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_role_page_crud_dtl`
--

DROP TABLE IF EXISTS `irm_role_page_crud_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_role_page_crud_dtl` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `crud_role_id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL,
  `crd_usr_id` int(11) DEFAULT NULL,
  `crd_date` datetime DEFAULT NULL,
  `upd_usr_id` int(11) DEFAULT NULL,
  `upd_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cust_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`),
  KEY `xx_page_fkey_idx` (`page_id`),
  KEY `xx_role_fkey_idx` (`crud_role_id`),
  KEY `xx_module_id_for_key_idx` (`module_id`),
  KEY `xx_cust_id_for_key_idx` (`cust_id`),
  CONSTRAINT `xx_cust_id_for_key` FOREIGN KEY (`cust_id`) REFERENCES `irm_cust_gbl_mst` (`CUST_ID`),
  CONSTRAINT `xx_module_id_for_key` FOREIGN KEY (`module_id`) REFERENCES `irm_module_mst` (`module_id`),
  CONSTRAINT `xx_page_fkey` FOREIGN KEY (`page_id`) REFERENCES `irm_page_mst` (`page_id`),
  CONSTRAINT `xx_role_fkey` FOREIGN KEY (`crud_role_id`) REFERENCES `irm_role_crud_mst` (`irm_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_role_page_crud_dtl`
--

LOCK TABLES `irm_role_page_crud_dtl` WRITE;
/*!40000 ALTER TABLE `irm_role_page_crud_dtl` DISABLE KEYS */;
INSERT INTO `irm_role_page_crud_dtl` VALUES (1,'SOD Create Role',3,1,1,'Y',NULL,NULL,NULL,'2020-07-26 17:57:38',NULL),(2,'SOD Read Role',3,2,1,'Y',NULL,NULL,NULL,'2020-07-26 17:57:38',NULL),(3,'ITGC Create Role',1,3,1,'Y',NULL,NULL,NULL,'2020-07-26 17:57:38',NULL),(4,'xx_tata',1,1,1,'Y',NULL,NULL,NULL,'2020-07-26 17:57:38',NULL);
/*!40000 ALTER TABLE `irm_role_page_crud_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irm_user_role_map_dtl`
--

DROP TABLE IF EXISTS `irm_user_role_map_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irm_user_role_map_dtl` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` char(1) DEFAULT NULL,
  `irm_user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `crd_date` datetime DEFAULT NULL,
  `upd_date` datetime DEFAULT NULL,
  `crd_usr_id` int(11) DEFAULT NULL,
  `upd_usr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`row_id`),
  KEY `xx_fk_idx` (`irm_user_id`),
  CONSTRAINT `xx_fk` FOREIGN KEY (`irm_user_id`) REFERENCES `irm_app_users` (`IRM_USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_user_role_map_dtl`
--

LOCK TABLES `irm_user_role_map_dtl` WRITE;
/*!40000 ALTER TABLE `irm_user_role_map_dtl` DISABLE KEYS */;
INSERT INTO `irm_user_role_map_dtl` VALUES (1,'Y',1,3,NULL,NULL,NULL,NULL),(2,'Y',2,3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `irm_user_role_map_dtl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-17 18:12:58
