-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: crawling
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add relation list',7,'add_relationlist'),(26,'Can change relation list',7,'change_relationlist'),(27,'Can delete relation list',7,'delete_relationlist'),(28,'Can view relation list',7,'view_relationlist'),(29,'Can add scholar list',8,'add_scholarlist'),(30,'Can change scholar list',8,'change_scholarlist'),(31,'Can delete scholar list',8,'delete_scholarlist'),(32,'Can view scholar list',8,'view_scholarlist'),(33,'Can add snslab list',9,'add_snslablist'),(34,'Can change snslab list',9,'change_snslablist'),(35,'Can delete snslab list',9,'delete_snslablist'),(36,'Can view snslab list',9,'view_snslablist');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'main','relationlist'),(8,'main','scholarlist'),(9,'main','snslablist'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-02-14 06:45:44.099896'),(2,'auth','0001_initial','2023-02-14 06:45:44.733463'),(3,'admin','0001_initial','2023-02-14 06:45:44.887151'),(4,'admin','0002_logentry_remove_auto_add','2023-02-14 06:45:44.912085'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-14 06:45:44.923027'),(6,'contenttypes','0002_remove_content_type_name','2023-02-14 06:45:45.051768'),(7,'auth','0002_alter_permission_name_max_length','2023-02-14 06:45:45.142790'),(8,'auth','0003_alter_user_email_max_length','2023-02-14 06:45:45.250506'),(9,'auth','0004_alter_user_username_opts','2023-02-14 06:45:45.268457'),(10,'auth','0005_alter_user_last_login_null','2023-02-14 06:45:45.371763'),(11,'auth','0006_require_contenttypes_0002','2023-02-14 06:45:45.376750'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-14 06:45:45.396699'),(13,'auth','0008_alter_user_username_max_length','2023-02-14 06:45:45.510425'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-14 06:45:45.584219'),(15,'auth','0010_alter_group_name_max_length','2023-02-14 06:45:45.648050'),(16,'auth','0011_update_proxy_permissions','2023-02-14 06:45:45.659022'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-14 06:45:45.723914'),(18,'main','0001_initial','2023-02-14 06:45:45.729896'),(19,'sessions','0001_initial','2023-02-14 06:45:45.764889');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_list`
--

DROP TABLE IF EXISTS `relation_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relation_list` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PersonID` int NOT NULL,
  `PaperID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PersonID` (`PersonID`,`PaperID`),
  KEY `PaperID` (`PaperID`),
  CONSTRAINT `relation_list_ibfk_1` FOREIGN KEY (`PaperID`) REFERENCES `scholar_list` (`ID`),
  CONSTRAINT `relation_list_ibfk_2` FOREIGN KEY (`PersonID`) REFERENCES `snslab_list` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3346 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_list`
--

LOCK TABLES `relation_list` WRITE;
/*!40000 ALTER TABLE `relation_list` DISABLE KEYS */;
INSERT INTO `relation_list` VALUES (136,1,1),(137,1,2),(138,1,3),(139,1,4),(140,1,5),(141,1,6),(142,1,7),(143,1,8),(144,1,9),(145,1,10),(146,1,11),(147,1,12),(148,1,13),(149,1,14),(150,1,15),(151,1,16),(152,1,17),(153,1,18),(154,1,19),(155,1,20),(156,1,21),(157,1,22),(158,1,23),(159,1,24),(160,1,25),(161,1,26),(162,1,27),(163,1,28),(164,1,29),(165,1,30),(166,1,31),(167,1,32),(168,1,33),(169,1,34),(170,1,35),(171,1,36),(172,1,37),(173,1,38),(174,1,39),(175,1,40),(176,1,41),(177,1,42),(178,1,43),(179,1,44),(180,1,45),(181,1,46),(182,1,47),(183,1,48),(184,1,49),(185,1,50),(186,1,51),(187,1,52),(188,1,53),(189,1,54),(190,1,55),(191,1,56),(192,1,57),(193,1,58),(194,1,59),(195,1,60),(196,1,61),(197,1,62),(198,1,63),(199,1,64),(200,1,65),(201,1,66),(202,1,67),(203,1,68),(204,1,69),(205,1,70),(206,1,71),(207,1,72),(208,1,73),(209,1,74),(210,1,75),(211,1,76),(212,1,77),(213,1,78),(214,1,79),(215,1,80),(216,1,81),(217,1,82),(218,1,83),(219,1,84),(220,1,85),(221,1,86),(222,1,87),(223,1,88),(224,1,89),(225,1,90),(226,1,91),(227,1,92),(228,1,93),(229,1,94),(230,1,95),(231,1,96),(232,1,97),(233,1,98),(234,1,99),(235,1,100),(236,1,101),(237,1,102),(238,1,103),(239,1,104),(240,1,105),(241,1,106),(242,1,107),(243,1,108),(244,1,109),(245,1,110),(246,1,111),(247,1,112),(248,1,113),(249,1,114),(250,1,115),(251,1,116),(252,1,117),(253,1,118),(254,1,119),(255,1,120),(256,1,121),(257,1,122),(258,1,123),(259,1,124),(260,1,125),(261,1,126),(262,1,127),(263,1,128),(264,1,129),(265,1,130),(266,1,131),(267,1,132),(268,1,133),(269,1,134),(270,1,135),(271,1,136),(272,1,137),(273,1,138),(274,1,139),(275,1,140),(276,1,141),(277,1,142),(278,1,143),(279,1,144),(280,1,145),(281,1,146),(282,1,147),(283,1,148),(284,1,149),(285,1,150),(286,1,151),(287,1,152),(288,1,153),(289,1,154),(290,1,155),(291,1,156),(292,1,157),(293,1,158),(294,1,159),(295,1,160),(296,1,161),(297,1,162),(298,1,163),(299,1,164),(300,1,165),(301,1,166),(302,1,168),(303,1,169),(304,1,170),(305,1,171),(306,1,172),(307,1,173),(308,1,174),(309,1,175),(310,1,176),(311,1,177),(312,1,178),(313,1,179),(314,1,180),(315,1,181),(316,1,182),(317,1,183),(318,1,184),(319,1,186),(320,1,187),(321,1,188),(322,1,189),(323,1,190),(324,1,191),(325,1,192),(326,1,194),(327,1,195),(328,1,196),(329,1,197),(330,1,199),(331,1,200),(332,1,201),(333,1,203),(334,1,204),(335,1,205),(336,1,206),(337,1,207),(338,1,208),(339,1,209),(340,1,210),(341,1,211),(342,1,212),(343,1,213),(344,1,214),(345,1,215),(346,1,226),(347,1,312),(348,1,432),(3321,1,1233),(1,2,1),(2,2,5),(3,2,15),(4,2,16),(5,2,19),(6,2,21),(7,2,24),(8,2,25),(9,2,26),(10,2,27),(11,2,28),(12,2,34),(13,2,40),(14,2,53),(15,2,54),(16,2,55),(17,2,56),(18,2,60),(19,2,65),(20,2,66),(21,2,81),(22,2,82),(23,2,83),(24,2,84),(25,2,85),(26,2,86),(27,2,87),(28,2,88),(29,2,89),(30,2,92),(31,2,93),(32,2,94),(33,2,95),(34,2,96),(35,2,97),(36,2,99),(37,2,100),(38,2,101),(39,2,102),(40,2,103),(41,2,104),(42,2,105),(43,2,110),(44,2,111),(45,2,112),(46,2,113),(47,2,114),(48,2,115),(49,2,116),(50,2,117),(51,2,118),(52,2,119),(53,2,120),(54,2,121),(55,2,122),(56,2,124),(57,2,125),(58,2,131),(59,2,133),(60,2,153),(61,2,161),(62,2,217),(63,2,218),(64,2,219),(65,2,221),(66,2,226),(67,2,232),(68,2,234),(69,2,235),(70,2,236),(71,2,237),(72,2,238),(73,2,240),(74,2,242),(75,2,247),(76,2,248),(77,2,249),(78,2,253),(79,2,254),(80,2,255),(81,2,256),(82,2,257),(83,2,258),(84,2,268),(85,2,279),(86,2,300),(87,2,301),(88,2,302),(89,2,303),(90,2,304),(91,2,307),(92,2,308),(93,2,309),(94,2,310),(95,2,311),(96,2,312),(97,2,313),(98,2,314),(99,2,315),(100,2,316),(101,2,317),(102,2,318),(103,2,319),(104,2,320),(105,2,321),(106,2,322),(107,2,323),(3322,2,1233),(392,3,54),(393,3,55),(394,3,88),(395,3,89),(396,3,93),(397,3,96),(398,3,99),(399,3,101),(400,3,102),(401,3,111),(402,3,120),(403,3,126),(404,3,136),(405,3,142),(406,3,242),(407,3,247),(3323,3,1233),(423,4,81),(424,4,85),(425,4,92),(426,4,94),(427,4,95),(428,4,97),(429,4,105),(430,4,114),(431,4,115),(432,4,116),(433,4,119),(434,4,132),(438,5,55),(439,5,56),(440,5,81),(441,5,85),(442,5,94),(443,5,95),(444,5,100),(445,5,104),(446,5,113),(447,5,117),(448,5,121),(449,5,132),(450,5,140),(451,5,279),(453,6,54),(454,6,91),(455,6,101),(456,6,111),(457,6,125),(460,7,92),(461,7,249),(462,7,300),(463,7,301),(464,7,304),(467,8,82),(468,8,92),(469,8,102),(470,9,89),(471,9,93),(472,9,98),(473,10,83),(474,10,84),(476,11,81),(477,11,85),(479,12,86),(480,13,53),(481,13,83),(482,13,84),(483,15,87),(484,15,89),(486,18,53),(487,18,83),(488,18,84),(489,18,99),(490,18,105),(491,18,109),(492,18,110),(493,18,112),(494,18,113),(495,18,121),(496,18,125),(497,18,133),(498,18,136),(499,18,247),(501,19,126),(502,20,82),(503,20,86),(504,20,88),(505,20,95),(506,20,96),(507,20,101),(508,20,102),(509,20,110),(510,20,111),(511,20,114),(512,20,122),(517,21,39),(518,21,42),(519,21,46),(520,21,47),(521,21,59),(522,21,62),(523,21,64),(524,21,123),(525,21,135),(526,21,136),(527,21,137),(528,21,139),(529,21,141),(530,21,144),(531,21,145),(532,21,152),(533,21,155),(534,21,160),(548,22,22),(549,22,43),(550,22,44),(551,22,46),(552,22,61),(553,22,62),(554,22,64),(555,22,127),(556,22,132),(557,22,133),(558,22,134),(559,22,138),(560,22,139),(561,22,140),(562,22,141),(563,22,142),(564,22,143),(565,22,144),(566,22,145),(567,22,152),(568,22,160),(579,23,22),(580,23,43),(581,23,44),(582,23,55),(583,23,56),(584,23,62),(585,23,93),(586,23,97),(587,23,98),(588,23,99),(589,23,100),(590,23,104),(591,23,105),(592,23,108),(593,23,110),(594,23,114),(595,23,115),(596,23,117),(597,23,120),(598,23,121),(599,23,122),(600,23,125),(601,23,126),(602,23,127),(603,23,132),(604,23,135),(605,23,136),(606,23,139),(607,23,142),(608,23,143),(609,23,144),(610,23,145),(642,24,126),(643,24,136),(644,24,138),(645,25,56),(646,25,92),(647,25,100),(648,25,103),(649,25,105),(650,25,107),(651,25,111),(652,25,113),(653,25,115),(654,25,116),(655,25,117),(656,25,118),(657,25,119),(658,25,121),(659,25,124),(660,25,135),(676,26,22),(677,26,39),(678,26,42),(679,26,43),(680,26,44),(681,26,46),(682,26,47),(683,26,57),(684,26,58),(685,26,61),(686,26,64),(687,26,139),(688,26,141),(689,26,143),(690,26,145),(691,26,152),(692,26,158),(693,26,160),(707,27,57),(708,27,58),(709,27,62),(710,27,146),(714,28,57),(715,28,58),(716,28,62),(717,28,142),(718,28,147);
/*!40000 ALTER TABLE `relation_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholar_list`
--

DROP TABLE IF EXISTS `scholar_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholar_list` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Year` varchar(255) DEFAULT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `title_name` (`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=1693 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholar_list`
--

LOCK TABLES `scholar_list` WRITE;
/*!40000 ALTER TABLE `scholar_list` DISABLE KEYS */;
INSERT INTO `scholar_list` VALUES (1,'2016','Smart parking system for Internet of Things','Chungsan Lee and Youngtak Han and Soobin Jeon and Dongmahn Seo and Inbum Jung'),(2,'2018','Detecting a pothole using deep convolutional neural network models for an adaptive shock observing in a vehicle driving','Kwang Eun An and Sung Won Lee and Seung-Ki Ryu and Dongmahn Seo'),(3,'2018','Detecting faulty solar panels based on thermal image processing','SungWon Lee and Kwang Eun An and Byung Don Jeon and Kyoung Yeon Cho and Seung Jae Lee and Dongmahn Seo'),(4,'2006','Load distribution strategies in cluster-based transcoding servers for mobile clients','Dongmahn Seo and Joahyoung Lee and Yoon Kim and Changyeol Choi and Hwangkyu Choi and Inbum Jung'),(5,'2016','Smart parking system using ultrasonic sensor and bluetooth communication in internet of things','Chungsan Lee and Youngtak Han and Soobin Jeon and Dongmahn Seo and Inbum Jung'),(6,'2018','Image processing-based pothole detecting system for driving environment','SungWon Lee and SeokJin Kim and Kwang Eun An and Seung-Ki Ryu and Dongmahn Seo'),(7,'2018','Improved durability of soil humidity sensor for agricultural IoT environments','Young Ju Jeong and Kwang Eun An and Sung Won Lee and Dongmahn Seo'),(8,'2007','Resource consumption-aware QoS in cluster-based VOD servers','Dongmahn Seo and Joahyoung Lee and Yoon Kim and Chang Yeol Choi and Manbae Kim and Inbum Jung'),(9,'2014','Real-time panoramic video streaming system with overlaid interface concept for social media','Dongmahn Seo and Suhyun Kim and Hogun Park and Heedong Ko'),(10,'2010','Load distribution algorithm based on transcoding time estimation for distributed transcoding servers','Dongmahn Seo and Jongwoo Kim and Inbum Jung'),(11,'2015','SaveMe: Client-Side Aggregation of cloud Storage','Dongmahn Seo Gyuwon Song and Suhyun Kim'),(12,'2011','Social media-based three-screen TV service','Sun-Bum Youn and Hogun Park and Geun Young Lee and Dongmahn Seo and Suhyun Kim and Heedong Ko'),(13,'2005','센서 네트워크를 이용한 교량 안전진단 시스템 구현','박총명， 허난숙， 김동국， 서동만， 이좌형， 김윤， 정인범'),(14,'2019','Experiment of image processing algorithm for efficient pothole detection','Sung Won Lee and SeokJin Kim and Jeong Han and Kwang Eun An and Seung-Ki Ryu and Dongmahn Seo'),(15,'2017','IoT Middleware for Effective Operation in Heterogeneous Things','Soobin Jeon and Youngtak Han and Chungshan Lee and Dongmahn Seo and Inbum Jung'),(16,'2011','Implementation of English E-Learning System Based on. Net Framework','Soobin Jeon and Yongtae Jo and Daeho Kim and Kangsik Kim and Dongmahn Seo and Inbum Jung'),(17,'2014','Speech-to-text-based life log system for smartphones','Dongmahn Seo and Suhyun Kim and Gyuwon Song and Seung-gil Hong'),(18,'2011','N-Screen live baseball game watching system: novel interaction concepts within a public setting','Hogun Park and Geun Young Lee and Dongmahn Seo and Sun-Bum Youn and Suhyun Kim and Heedong Ko'),(19,'2017','The smart shoes providing the gait information on IoT','Soobin Jeon and Chungsan Lee and Youngtak Han and Dongmahn Seo and Inbum Jung'),(20,'2012','Immersive panorama TV service system','Dongmahn Seo and Suhyun Kim and JaeWook Yoo and Hogun Park and Heedong Ko'),(21,'2020','Automatic reading analog gauge with handheld device','DongWook Lee and SeokJin Kim and YunSung Han and SungWon Lee and SooBin Jeon and Dongmahn Seo'),(22,'2017','스마트폰 기반 모바일넷 심층 합성곱 신경망을 사용한 포트홀 탐지 시스템','안광은， 이성원， 김석진， 류승기， 서동만'),(23,'2017','Mutual exclusion method in client-side aggregation of cloud storage','Dongmahn Seo and Suhyun Kim and Gyuwon Song'),(24,'2020','The multi-station based variable speed limit model for realization on urban highway','Soobin Jeon and Chongmyung Park and Dongmahn Seo'),(25,'2019','Smart parking system based on an ultrasonic sensor and bluetooth low energy in the internet of things','Soobin Jeon and Dongmahn Seo'),(26,'2017','Smart umbrella for safety directions on Internet of Things','Youngtak Han and Chungsan Lee and Youjin Kim and Soobin Jeon and Dongmahn Seo and Inbum Jung'),(27,'2016','Calibration for Simulating a ITS Algorithm in Korea Highway','Se-Jeong Shin and Chung-San Lee and Young-Tak Han and Soo-Bin Jeon and Dong-Mahn Seo and In-Bum Jung'),(28,'2016','Improved Real-Time Variable Speed Limits for a Stable Controlling of the Freeway','Soobin Jeon and Young Tak Han and Dong Mahn Seo and Inbum Jung'),(29,'2016','Design and implementation of mapreduce-based book recommendation system by analysis of large-scale book-rental data','Joon-Min Gil and JongBum Lim and Dong-Mahn Seo'),(30,'2011','Network-adaptive autonomic transcoding algorithm for seamless streaming media service of mobile clients','Dongmahn Seo and Inbum Jung'),(31,'2010','Agent-based on-line traffic condition and information analysis system for wireless V2I communication','Eil Kwon and Sejun Song and Dongmahn Seo and Inbum Jung'),(32,'2003','QoS 를 지원하기 위한 리눅스 클러스터 VOD 서버의 성능 분석','서동만， 방철석， 이좌형， 김병길， 정인범'),(33,'2017','Smart Crossing System using IoT','KwangEun An and Young Ju Jeong and SungWon Lee and Dongmahn Seo'),(34,'2016','Traffic Analysis and Simulation System for Korea Highway','Young-Tak Han and Chung-san Lee and Se-Jeong Shin and Soo-bin Jeon and Dong-Man Seo and In-bum Jung'),(35,'2014','User generated highlight system for baseball games with social media activities','Dongmahn Seo and Suhyun Kim and Hogun Park and Heedong Ko'),(36,'2012','Personal multi-angle media broadcasting service system','Dongmahn Seo and Suhyun Kim and Youngtae Jo and Hogun Park and Heedong Ko'),(37,'2008','Transcoding Load Estimation Method for Load Balance on Distributed Transcoding Environments','Dong-Mahn Seo and Nan-Sok Heo and Jong-Woo Kim and In-Bum Jung'),(38,'2007','Load distribution method and admission control for streaming media QoS in distributed transcoding servers','Nansook Heo and Dongsun Lim and Dongmahn Seo and Inbum Jung and Yoon Kim'),(39,'2017','토양습도 센서의 내구도 향상을 위한 연구','정영주， 안광은， 서동만'),(40,'2019','Leader-Follower based Smart Mobile Objects in Internet of Things','Donghyun Lim and Yujin Kim and Chantae Jeon and Soobin Jeon and Dongmahn Seo and Inbum Jung'),(41,'2018','Pedestrian-safe smart crossing system based on IoT with object tracking','KwangEun An and Sung Won Lee and Young Ju Jeong and Dongmahn Seo'),(42,'2017','반영구 토양습도센서 개발','정영주， 안광은， 서동만'),(43,'2017','랩탑용 실시간 포트홀 탐지 시스템','이성원， 안광은， 김석진， 류승기， 서동만'),(44,'2017','모바일 기반 실시간 포트홀 탐지 어플리케이션','김석진， 이성원， 안광은， 류승기， 서동만'),(45,'2017','Mutual exclusion strategy in a cloud-of-clouds','Dongmahn Seo and Suhyun Kim and Gyuwon Song'),(46,'2016','IoT 와 패턴 학습 기반의 스마트 농장 자동 급수 시스템 제안','정영주， 안광은， 이성원， 이민우， 서동만'),(47,'2016','IoT 를 사용한 스마트 횡단보도 시스템','안광은， 정영주， 박재성， 정세연， 최홍준， 이종섭， 서동만'),(48,'2012','Overlay SNS: Next generation social network service','Dongmahn Seo and Suhyun Kim and Hogun Park and Geun Young Lee and Heedong Ko'),(49,'2012','Real-time text scoreboard system using social media and live media','Dong-Mahn Seo and Su-Hyun Kim and Ho-Gun Park and Hee-Dong Ko'),(50,'2011','Zapping delay reduction method for sports live with multi-angle on smart TV','Jaewook Yoo and Suhyun Kim and Dongmahn Seo'),(51,'2005','효과적인 트랜스코딩 부하 분산을 위한 자원 가중치 부하분산 정책','서동만， 이좌형， 최면욱， 김윤， 정인범'),(52,'2003','클러스터 VOD 시스템에서의 내장형 클라이언트 플렛폼 설계 및 구현','서동만， 방철석， 김병길， 이좌형， 박총명， 정인범'),(53,'2021','콘텐츠 제공을 위한 디지털 사이니지 시스템 연구','김보경， 이동욱， 전수빈， 서동만'),(54,'2021','자율주행 차량 데이터 분석 및 시각화 도구 설계 및 구현','김유리， 박준홍， 서동만， 전수빈'),(55,'2020','온라인 강의 상황에서의 프로그래밍 실습을 위한 온라인 저지 시스템 개발','박준홍， 전민건， 이재혁， 김석진， 전수빈， 서동만'),(56,'2020','딥러닝 탐지용 임베디드 장치 간 처리속도 비교','이재혁， 전민건， 한윤성， 김석진， 서동만， 전수빈'),(57,'2018','다중 사용자 태깅 행동 모방 기반의 강화학습을 사용한 이미지 라벨링 시스템','안광은， 한정， 이민영， 류승기， 서동만'),(58,'2018','심층 합성곱 신경망 지도학습용 이미지 수집 및 사용자 협업 태깅 시스템','한정， 이민영， 안광은， 서동만'),(59,'2018','모듈형 토양 습도 센서의 교체용 탐침 연구','정영주， 서동만'),(60,'2017','이기종 사물들의 효과적 동작을 위한 사물인터넷 미들웨어','전수빈， 한영탁， 이충산， 서동만， 정인범'),(61,'2017','웨이블릿과 슈퍼픽셀을 이용한 포트홀 탐지','이성원， 안광은， 조영태， 서동만'),(62,'2017','반려 식물을 위한 스마트 화분','이민영， 정영주， 이성원， 한정， 김석진， 한현관， 서동만'),(63,'2017','Smart Pot for Companion Plants','Minyoung Lee and Young-ju Jeong and SungWon Lee and Jeong Han and SeokJin Kim and HyounKwan Han and Dongmahn Seo'),(64,'2016','스마트 농장에서의 데이터 수집 방법','정영주， 안광은， 이성원， 이민우， 서동만'),(65,'2016','대한민국 고속도로를 위한 교통 분석 및 시뮬레이션 시스템','한영탁， 전수빈， 신세정， 서동만， 정인범'),(66,'2016','사물인터넷에서 초음파 센서와 블루투스 통신을 이용한 스마트 주차 시스템','이충산， 한영탁， 전수빈， 서동만， 정인범'),(67,'2016','Smart Crosswalk System using IoT','KwangEun An and Young Ju Jeong and Jae Sung Park and Se Yeon Jeong and Hong Jun Choi and Jong Sup Lee and Dongmahn Seo'),(68,'2016','A Proposal of Smart Farm Watering Automation System based on IoT and Pattern Learning','Young-Ju Jeong and KwangEun An and SungWon Lee and Minwoo Lee and Dongmahn Seo'),(69,'2015','SaveMe: user-centric cloud system','Gyuwon Song and Suhyun Kim and Dongmahn Seo'),(70,'2015','IoT-Based Home Temperature and Humidity Control System','Jung-Han Choi and Seung-Min Kim and Jin-Woo Kim and Sung-Hyun Kim and Seong-Min Park and Mi-Hye Kim and Dongmahn Seo'),(71,'2014','StreamMe: Me-centric multimedia streaming system with clouds, P2P and smartphones','Dongmahn Seo and Suhyun Kim and Gyuwon Song and Seung-gil Hong'),(72,'2012','[우수논문] 소셜 미디어와 중계영상을 활용한 실시간 문자 중계 시스템','서동만， 김수현， 박호건， 고희동'),(73,'2012','Panoramic interface for baseball live with SNS.','Dongmahn Seo and Suhyun Kim and Hogun Park and Geun-Young Lee and Heedong Ko'),(74,'2010','Load Distribution Method based on Transcoding Time Estimation on Distributed Transcoding Environments','Jong-Woo Kim and Dong-Mahn Seo and In-Bum Jung'),(75,'2008','분산 트랜스코딩 환경에서 부하 균형을 위한 트랜스코딩 부하 예측 기법','서동만， 허난숙， 김종우， 정인범'),(76,'2007','Experimental evaluation for scalability and QoS in a VOD System','Dongmahn Seo and Hanmin Bang and Nansook Heo and Inbum Jung and Yoon Kim'),(77,'2007','이동 단말에서 끊임없는 스트리밍 미디어를 위한오토노믹 멀티미디어 트랜스코딩 알고리즘','한우람， 허난숙， 박총명， 서동만， 정인범'),(78,'2006','이동 사용자를 위한 적응적 트랜스코딩 서비스의 구현','허난숙， 한우람， 이좌형， 서동만， 김윤， 정인범'),(79,'2006','Thin-Client Computing for Supporting the QoS of streaming media in Mobile devices','Joahyoung Lee and Dongmahn Seo and Yoon Kim and Changyeol Choi and Hwangkyu Choi and Inbum Jung'),(80,'2003','클러스터형 VOD 서버에서 장애 복구의 설계 및 구현','이좌형， 서동만， 방철석， 김병길， 박총명， 정인범'),(81,'2022','영상 내 화장품명 인식 연구','김수종， 권혁규， 전민건， 서동만， 전수빈'),(82,'2022','저해상도 3D LiDAR 에서 객체 탐지를 위한 포인트 클라우드 데이터 군집화 방법 연구','조혜원， 김재훈， 서동만， 전수빈'),(83,'2022','콘텐츠 제공을 위한 디지털 사이니지 갤러리 시스템 설계 및 구현','이예지， 김보경， 이동욱， 전수빈， 서동만'),(84,'2022','지역 소통을 위한 디지털 사이니지 기반 커뮤니티 시스템 설계 및 구현','김보경， 이예지， 이동욱， 전수빈， 서동만'),(85,'2022','Jetson TX2 에서의 포트홀 탐지 연구','권혁규， 김수종， 전민건， 전수빈， 서동만'),(86,'2022','자율주행 이동체 분석을 위한 시각화 기능 구현','박성주， 김재훈， 서동만， 전수빈'),(87,'2022','웹 크롤링을 활용한 텔레그램 공지사항 챗봇 구현','송희재， 김미혜， 전수빈， 서동만'),(88,'2022','A* 알고리즘 기반 주행 중 장애물 회피를 위한 경로 계획 전환 알고리즘 제안','김재훈， 박준홍， 서동만， 전수빈'),(89,'2022','부정행위 차단을 위한 온라인 저지 시스템 기능 설계 및 구현','김수정， 송희재， 박준홍， 김미혜， 전수빈， 서동만'),(90,'2022','응시자 행동로그와 영상데이터 분석을 통한 온라인 시험 부정행위 방지 시스템 구현','최성환， 김용범， 안세진， 서동만'),(91,'2022','청소 관리자를 위한 IoT 기반 스마트 쓰레기통','김유리， 강지예， 김지원， 박소현， 서동만'),(92,'2021','스크립트 기반의 드론 군집 비행 제어','조혜원， 김유진， 김수종， 한윤성， 전수빈， 서동만'),(93,'2021','크롤링 기반 논문 이력 자동 관리 시스템','김수정， 김석진， 박준홍， 전수빈， 서동만'),(94,'2021','웹 사이트 결과 기반 OCR 융합 방법 연구','김수종， 전민건， 서동만， 전수빈'),(95,'2021','시각 장애인을 위한 인공지능 기반 전방 물체 탐지','김재훈， 김수종， 이다예， 전민건， 김재현， 전수빈， 서동만'),(96,'2021','영상처리 기반 차선 검출 알고리즘 구현 및 RC 카 주행 연구','김재훈， 박준홍， 서동만， 전수빈'),(97,'2021','인공지능을 활용한 항공 영상 내 경작지 작물 분류','김수종， 김석진， 전수빈， 서동만'),(98,'2021','교육용 로봇 팔 기기의 춤 동작 구현','김수정， 정윤지， 김석진， 김미혜， 서동만'),(99,'2021','잘못된 어노테이션 제거기법을 활용한 딥러닝 학습용 이미지 데이터 셋 구축 시스템 연구','이동욱， 김석진， 박준홍， 전수빈， 서동만'),(100,'2021','항공 영상 내 포트홀 탐지를 위한 합성곱 신경망 성능 비교 분석','한윤성， 전민건， 김석진， 전수빈， 서동만'),(101,'2021','2 차원 LiDAR 데이터를 이용한 객체 추적 및 리시뮬레이션 방법 연구','박준홍， 김재훈， 김유리， 서동만， 전수빈'),(102,'2021','라이다 및 이미지 센서를 이용한 실내 자율주행 이동체 구현','조혜원， 김재훈， 박준홍， 서동만， 전수빈'),(103,'2021','항공 영상 내 도로 영역 분할 방법 연구','장연수， 한윤성， 전수빈， 서동만'),(104,'2021','터널 내부 영상 정합 알고리즘 개선 연구','김석진， 전민건， 전수빈， 서동만'),(105,'2021','항공 영상 내 오브젝트의 정확한 면적 측정을 위한 외곽선 검출 방법','한윤성， 김수종， 김석진， 이동욱， 전수빈， 서동만'),(106,'2021','Implementation of Smart-Safe System based on IoT','Do-Kyung Lee and Jae-Won Lee and Su-ho Jang and Yunsung Han and Dongmahn Seo'),(107,'2021','IoT 기반의 스마트 금고 시스템 구현','이도경， 이재원， 장수호， 한윤성， 서동만'),(108,'2021','보행자 안전사고 예방을 위한 사물인터넷 기반 스마트 신호등','이서영， 이종권， 정혜란， 김석진， 서동만'),(109,'2021','영상처리 기반 얼굴인식을 이용한 스마트미러시스템 연구','김민정， 전지현， 정지아， 이동욱， 서동만'),(110,'2020','탐침 기반 토양 습도센서 데이터 수집 안정화를 위한 연구','김재훈， 김석진， 이동욱， 전수빈， 서동만'),(111,'2020','자율주행을 위한 RC 카 기반 장애물 회피 알고리즘 구현','박준홍， 김재훈， 김유리， 한윤성， 서동만， 전수빈'),(112,'2020','Tesseract-OCR 을 이용한 아날로그 계기판 내 수치 및 문자','이동욱， 장연수， 이다예， 전수빈， 서동만'),(113,'2020','항공 영상에서의 도로 내 포트홀 탐지를 위한 병렬 추론 모델기반 정확도 향상 방법 연구','한윤성， 전민건， 이동욱， 전수빈， 서동만'),(114,'2020','비대면 발열 검사를 위한 열화상 카메라 방식의 저비용 출입관리 시스템 구현','이재혁， 김수종， 김재훈， 김석진， 전수빈， 서동만'),(115,'2020','항공 영상 내 오브젝트의 정확한 GPS 좌표 예측 방법 및 정북 표현','김수종， 한윤성， 김석진， 전수빈， 서동만'),(116,'2020','항공 영상 내 오브젝트 면적 계산 기법','김수종， 한윤성， 전수빈， 서동만'),(117,'2020','항공 이미지에서의 Mask R-CNN 기반 포트홀 검출 연구','전민건， 한윤성， 김석진， 전수빈， 서동만'),(118,'2020','딥러닝 서비스 시스템에서의 적정 프로세스 수 예측 방법','한윤성， 전수빈， 서동만'),(119,'2020','항공 영상 내 물체의 정확한 면적 측정을 위한 외곽선 검출 방법','한윤성， 김수종， 전수빈， 서동만'),(120,'2020','다중 서버 기반 웹 서비스에서 하트비트를 이용한 서비스 안정화 방안 연구','김석진， 박준홍， 전수빈， 서동만'),(121,'2020','R-CNN 기반 포트홀 탐지 웹 서비스 시스템 구현','전민건， 한윤성， 김석진， 이동욱， 전수빈， 서동만'),(122,'2020','항공영상 기반 포트홀 위치 가시화 웹 서비스 구현 웹 어플리케이션','김재훈， 김석진， 전수빈， 서동만'),(123,'2020','자율 이동형 스마트 애완용 화분 시스템 개발','정영주， 서동만'),(124,'2020','인공신경망 기반 손영상 인식기술을 이용한가위바위보 게임','장연수， 김다예， 박동진， 한윤성， 전수빈， 서동만'),(125,'2020','사용자 경험정보를 고려한 결정트리 기반 음악 추천 시스템','김유리， 김성지， 김정호， 조재림， 이동욱， 김석진， 전수빈， 서동만'),(126,'2019','집단지성 기반 딥러닝용 데이터 셋 구축을 위한 이미지 라벨링 게임 어플리케이션','정연욱， 김석진， 유진희， 박준홍， 서동만'),(127,'2019','터널 내부의 파노라마 이미지 생성을 위한 이미지 특징 추출 알고리즘 비교 분석','김석진， 이성원， 서동만'),(128,'2019','Image Mosaicing Generation System for Automated Inspection of Bridge Structures','SeokJin Kim and SungWon Lee and Mingeon Jeon and Sujong Kim and Dongmahn Seo'),(129,'2019','Smart Homeplate: Strike Zone Judgement','Su-Jin Son and Na-Yeon Oh and SungWon Lee and Dongmahn Seo'),(130,'2019','Two-way Communications-Based household CCTV System for Intruder Detection','Jae-Hyeok Lee and SeokJin Kim and Young Ju Jeong and Yunsung Han and Dongmahn Seo'),(131,'2019','Google ARcore based Augmented Reality Pet Application','Dong-Wook Lee and Sung-Won Lee and Soobin Jeon and Dongmahn Seo'),(132,'2019','교량 구조물 안전점검 자동화를 위한 정합 이미지 생성 시스템','김석진， 이성원， 전민건， 김수종， 서동만'),(133,'2019','Google ARcore 기반 증강현실 반려동물 어플리케이션','이동욱， 이성원， 전수빈， 서동만'),(134,'2019','스마트 홈플레이트: 스트라이크 존 판단','손수진， 오나연， 이성원， 서동만'),(135,'2019','양방향 통신 기반 침입자탐지 가정용 CCTV 시스템','이재혁， 김석진， 정영주， 한윤성， 서동만'),(136,'2019','데이터셋 생성을 위한 이미지 URI 및 메타데이터 수집 크롤러','박준홍， 김석진， 정연욱， 이동욱， 정영주， 서동만'),(137,'2018','토양 습도 센서에서 센서 감도를 조절하기 위한 임피던스 값 선택회로 구현','정영주， 서동만'),(138,'2018','노인 행동 관리 서비스 시스템에서 OGC O&M 온톨로지 기반 데이터 관리 기법','정연욱， 이성원， 고희동， 서동만'),(139,'2018','딥러닝 기반 포트홀 탐지 시스템에서의 학습 모델 비교 분석','안광은， 이성원， 정영주， 김석진， 류승기， 서동만'),(140,'2018','도로 항공 이미지에서 도로 영역 및 차선 검출을 위한 영상처리 기법 연구','전민건， 이성원， 장진환， 서동만'),(141,'2018','Squeezenet 기반 포트홀 탐지에서 데이터셋 구성 기법','이성원， 안광은， 정영주， 류승기， 서동만'),(142,'2018','노인 복지 시설 CCTV 를 이용한 웹 기반 노인 행동 관리 서비스','한정， 김석진， 박준홍， 이성원， 고희동， 서동만'),(143,'2018','모바일 기반 포트홀 탐지 시스템 효율화를 위한 영상 처리 및 딥러닝 기반 알고리즘 연구','김석진， 안광은， 이성원， 류승기， 서동만'),(144,'2018','IoT 기반 드론 확장 모듈 연구','김석진， 정영주， 이성원， 서동만'),(145,'2018','기계학습과 이미지 처리 기반 실시간 포트홀 탐지 시스템 제안','이성원， 안광은， 정영주， 김석진， 류승기， 서동만'),(146,'2017','전동 휠을 이용한 스마트 유모차 시스템 제안','이민영， 서동만'),(147,'2017','숙면을 위한 수면자세 탐지 어플리케이션','한정， 서동만'),(148,'2017','IoT 기반 스타일링 과정 시간 단축을 위한 스마트 거울 개발','김호성， 윤미혜， 송현두， 허재， 박상수， 서동만'),(149,'2017','A Development of Smart Mirror for Styling Time Reducing based on IoT','Hosung Kim and MiHae Yoon and Hyundoo Song and Jae Heo and Sangsu Park and Dongmahn Seo'),(150,'2017','Detecting Pothole using by Wavelet and Superpixel','SungWon Lee and KwangEun An and Young-Tae Jo and Dongmahn Seo'),(151,'2017','Study on improvement of durability of soil humidity sensor','Young-ju Jeong and KwangEun An and Dongmahn Seo'),(152,'2016','스마트 횡단보도 시스템을 이용한 횡단보도 내 구역 물체 탐지 연구','안광은， 이성원， 정영주， 이민우， 이득희， 서동만'),(153,'2016','안정적인 고속도로 통제를 위한 향상된 실시간 가변 속도 제한','전수빈， 한영탁， 서동만， 정인범'),(154,'2016','A Vehicle Driving Video Platform for Vehicle Black Box Using Smartphones','Dongmahn Seo and Joon-Min Gil'),(155,'2016','상용 엔터테인먼트 디바이스 개발을 위한 아두이노 기반 입력장치 구현','정영주， 고소은， 서동만'),(156,'2016','동영상 변환기를 이용한 VR 공포 게임','김민철， 장은식， 이도엽， 전수곤， 김행곤， 변태영， 김병창， 서동만'),(157,'2016','3 축 가속도 센서를 이용한 정확한 걸음 수 측정 방법 연구','이석원， 김동화， 박소영， 신지은， 신효원， 서동만'),(158,'2016','USB OS 사용의 문제점 연구','안광은， 서동만'),(159,'2016','스마트폰과 IoT 를 이용한 쉐프 도전 앱의 설계 및 구현','이동근， 임재영， 박성희， 서동만， 길준민'),(160,'2016','클라우드 저장공간 통합 플랫폼의 보안 방법 연구','이성원， 이민우， 안광은， 정영주， 길준민， 서동만'),(161,'2016','한국형 ITS 환경을 위한 시뮬레이션 교정 기법','신세정， 이충산， 한영탁， 전수빈， 서동만， 정인범'),(162,'2016','An Implementation of a VR Horror Game using Video Converter','Mincheol Kim and Eunsik Jang and Doyeop Lee and Sugon Jeon and Hangkon Kim and Taeyoung Byun and Byeongchang Kim and Dongmahn Seo'),(163,'2016','A Study on a Measurement Method for pedometer using a Triaxial Sensor','Seokwon Lee and Donghwa Kim and Soyoung Park and Jieun Shin and Hyowon Shin and Dongmahn Seo'),(164,'2016','A Research of Security Method for Integrated Cloud Storage Platform','SungWon Lee and MinWoo Lee and KwangEun An and Young-Ju Jeong and Joon-Min Gil and Dongmahn Seo'),(165,'2016','Design and Implementation of Chef Challenge App. using Smartphone and IoT','Dong-Geun Lee and Jae-Young Lim and Sung-Hee Park and Dong-Mahn Seo and Joon-Min Gil'),(166,'2016','A Case Study of USB OS Usage Problems','KwangEun An and Dongmahn Seo'),(168,'2015','Arduino-based Mini Game Platform','Young-Ju Jung and Gyo-Jun An and Chan-Song Lee and Dongmahn Seo'),(169,'2015','Construction of the system for accurate measurement room temperature','Seung-Min Kim and Jung-Han Choi and Seong-Min Park and Jin-Woo Kim and Sung-Hyun Kim and Byeong-Chang Kim and Dongmahn Seo'),(170,'2015','An implementation for a mobile game of Yut based-on Unity 5','Han-Na Park and Dongmahn Seo'),(171,'2015','An Implementation of IoT Classroom system using Beacon','Sanghun Yun and MinJae Lee and Sunghyun Lee and Minhee Kim and Jihyun Park and Dongmahn Seo'),(172,'2015','An implementation of a smart lecture opening Support System','Ji-Hoon Kang and Tae-Ju Son and Yu-Na Lee and Joon-Min Gil and Dongmahn Seo'),(173,'2015','A Study on use case in USB OS','Kwangeun An and Jae-Young Park and Han-Na Park and Dongmahn Seo'),(174,'2012','시간과 공간, 소셜 모델 기반의 소셜 네트워크 서비스','서동만， 김수현， 박호건， 고희동'),(175,'2012','소셜 미디어와 중계 영상을 활용한 실시간 스포츠 문자 중계 기반의 사용자 저작 하이라이트 시스템','서동만， 임철수'),(176,'2012','Social Network Service based on Temporal, Spatial, and Social Models','Dong-Mahn Seo and Su-Hyun Kim and Ho-Gun Park and Hee-Dong Ko'),(177,'2011','TV channel sharing system using wireless network','Dongmahn Seo and Suhyun Kim and Heedong Ko and Subin Jeon and Daeho Kim and Inbum Jung'),(178,'2011','Virtual Shared Space 에 기반한 N-스크린 공동야구관람 플랫폼','이근영， 박호건， 윤선범， 서동만， 김수현， 고희동'),(179,'2010','분산 트랜스코딩 환경에서 트랜스코딩 시간 예측 기반 부하 분산 기법','김종우， 서동만， 정인범'),(180,'2010','모바일 싱크를 위한 균등 큐잉 (FQMS): 모바일 싱크 기반 무선 센서 네트워크에서균등한 데이터 수집을 위한 스케줄링 기법','조영태， 박총명， 이좌형， 서동만， 임동선， 정인범'),(181,'2010','A Study on Streaming Media Service for Mobile Clients','Dongmahn Seo'),(182,'2010','통합 교통 정보 분석 시스템의 설계 및 구현','서동만， 조영태， 권일， 정인범'),(183,'2010','A Design and Implementation of Integrated Transportation Information Analysis System','Dongmahn Seo and Youngtae Jo and Eil Kwon and Inbum Jung'),(184,'2010','Fair Queuing for Mobile Sink (FQMS): Scheduling Scheme for Fair Data Collection in Wireless Sensor Networks with Mobile Sink','Young-Tae Jo and Chong-Myung Park and Joa-Hyoung Lee and Dong-Mahn Seo and Dong-Sun Lim and In-Bum Jung'),(185,'2008','Design of Pipeline-based Failure Recovery Method for VOD Server','Joa-Hyoung Lee and Chong-Myoung Park and In-Bum Jung'),(186,'2008','트랜스코딩 서버 간 부하 분산을 위한트랜스코딩 부하 예측','김종우， 허난숙， 서동만， 정인범'),(187,'2008','효율적인 부하 분산 정책을 위한 WMI 기반 VOD 서비스의 설계 및 구현','방한민， 박총명， 서동만， 김학수， 정인범'),(188,'2008','Transcoding Load Estimation for Load Distribution between Transcoding Servers','Jong-Woo Kim and Nan-Sook Heo and Dong-Mahn Seo and In-Bum Jung'),(189,'2008','Transcoding Load Distribution Policy for Wireless Mobile Clients.','Dongmahn Seo and Heonguil Lee and Inbum Jung'),(190,'2007','디지털 전자액자를 위한 네트워크 적응적 스트리밍 미디어 서비스 설계 및 구현','한우람， 허난숙， 박총명， 서동만， 정인범'),(191,'2007','무선 네트워크상에서 전송장애 감지를 이용한 끊김 없는 스트리밍 미디어 서비스','한우람， 허난숙， 서동만， 정인범'),(192,'2007','이동 사용자를 위한 네트워크 적응적 실시간트랜스코더를 이용한 VOD 서비스의 구현','방한민， 한우람， 허난숙， 서동만， 정인범'),(193,'2007','Design and Implementation of Autonomic Multimedia Transcoding System for Network Adaptive QoS','Donh-Mahn Seo and In-Bum Jung'),(194,'2007','The Implementation of VOD Service Using Network Adaptive Realtime Transcoder for Mobile Users','Han-Min Bang and Woo-Ram Han and Nan-Sook Heo and Dong-Mahn Seo and In-Bum Jung'),(195,'2007','Design and Implementation of Network Adaptive Streaming Media Service for Digital Photo Frame','Woo-Ram Han and Nan-Sook Heo and Chong-Myung Park and Dong-Mahn Seo and In-Bum Jung'),(196,'2007','A Seamless Streaming Media Service using Transmission Failure Detection in Wireless Network','Woo-Ram Han and Nan-Sook Heo and Dong-Mahn Seo and In-Bum Jung'),(197,'2007','Autonomic Multimedia Transcoding Algorithm for Seamless Streaming Media of Mobile Clients','Woo-Ram Han and Nan-Sook Heo and Chong-Myung Park and Dong-Mahn Seo and In-Bum Jung'),(198,'2006','제 33 권 제 11․ 12 호 수록 논문','임동선， 정인범， 김윤'),(199,'2006','클러스터 VOD 서버에서 선호도 기반세그먼트 버퍼 대체 기법','서동만， 이좌형， 방철석， 임동선， 정인범， 김윤'),(200,'2006','Implementation of Adaptive Transcoding Service for Mobile User','Nan-Sook Heo and WR Han and JH Lee and DM Seo and Y Kim and IB Jung'),(201,'2006','Preference-Based Segment Buffer Replacement in Cluster VOD Servers','Dong-Mahn Seo and Joa-Hyoung Lee and Cheol-Seok Bang and Dong-Sun Lim and In-Bum Jung and Yoon Kim'),(202,'2006','Advanced Real-Time Rate Control for Low Bit Rate Video Communication','Yoon Kim'),(203,'2005','VOD 서비스에서특산품 온라인 쇼핑 시스템의 구현','허난숙， 박총명， 서동만， 김윤， 정인범'),(204,'2005','이질적인 클라이언트 플랫폼을 위한클러스터 VOD 시스템','서동만， 박총명， 김동국， 김윤， 정인범'),(205,'2005','무선 센서네트워크를 이용한구조물 하중 감지 시스템','김동국， 박총명， 허난숙， 서동만， 이좌형， 김윤， 정인범'),(206,'2005','The Implementation of a Structural Health Monitoring System of Bridge based on Sensor Network','Chong-Myung Park and Nan-Sook Heo and Dong-Gook Kim and Dong-Mahn Seo and Joa-Hyoung Lee and Yoon Kim and In-Bum Jung'),(207,'2005','Structural Strain Gauge Monitoring System Based on Wireless Sensor Network','Dong-Gook Kim and Chong-Myung Park and Nan-Sook Heo and Dong-Mahn Seo and Joa-Hyung Lee and Yoon Kim and In-Bum Jung'),(208,'2005','Cluster-based VOD System for Heterogeneous Client Platform','Dong-Mahn Seo and Chong-Myung Park and Dong-Gook Kim and Yoon Kim and In-Bum Jung'),(209,'2005','Implementation of Online Shopping System for Local Products in a VOD Service.','Nan-Sook Heo and Chong-Myung Park and Dong-Mahn Seo and Yoon Kim and In-Bum Jung'),(210,'2005','Resource Weighted Load Distribution Policy for Effective Transcoding Load Distribution','Dong-Mahn Seo and Joa-Hyoung Lee and Myun-Uk Choi and Yoon Kim and In-Bum Jung'),(211,'2005','An effective failure recovery mechanism with pipeline computing in clustered-based VOD servers','Dongmahn Seo and Joahyoung Lee and Dongkook Kim and Yoon Kim and Inbum Jung'),(212,'2004','Implementation of a Cluster VOD Server and an Embedded Client based on Linux','Dongmahn Seo and Cheolseok Bang and Joahyoung Lee and Byounggil Kim and Inbum Jung'),(213,'2003','Self Recovery System With High Availability in Clustered VOD Server','Joa-Hyoung Lee and Dong-Mahn Seo and Cheol-Seok Bang and Byoung-Gil Kim and Chong-Myung Park and In-Bum Jung'),(214,'2003','Design and Implementation of an Embedded Client platform in clustered VOD system.','Dong-Mahn Seo and Cehol-Seok Bang and Joa-Hyoung Lee and Byoung-Gil Kim and Chong-Myung Park and In-Bum Jung'),(215,'2003','Development of eddy current testing system using magnetic saturation in ferromagnetic materials','Je-Joong Sung and Young-Hoon Shin and Tae-Gun Um and Seok-Chul Kang and Young-Ho Kweon and Dong-Man Suh'),(217,'2012','Variable speed limit to improve safety near traffic congestion on urban freeways','Youngtae Jo and Hyungdo Choi and Soobin Jeon and Inbum Jung'),(218,'2017','MinT: Middleware for cooperative interaction of things','Soobin Jeon and Inbum Jung'),(219,'2014','Traffic measurement on multiple drive lanes with wireless ultrasonic sensors','Soobin Jeon and Eil Kwon and Inbum Jung'),(221,'2018','Experimental evaluation of improved IoT middleware for flexible performance and efficient connectivity','Soobin Jeon and Inbum Jung'),(226,'2012','Estimation of Winter Snow Operation Performance Measures with Traffic Data','Eil Kwon and Seongah Hong and Soobok Kim and Soobin Jeon'),(232,'2015','IoT 환경에서 화분을 관리하기 위한 인터넷 가든 시스템','한영탁， 전수빈， 이충산， 정인범'),(234,'2015','Density-Based Ramp Metering Method Considering Traffic of Freeway and Ramp on ITS','Soobin Jeon and Inbum Jung'),(235,'2017','Cluster Property based Data Transfer for Efficient Energy Consumption in IoT','Chungsan Lee and Soobin Jeon and Inbum Jung'),(236,'2016','Coordinated ramp metering for minimum waiting time and limited ramp storage','Soobin Jeon and Inbum Jung'),(237,'2015','사물 인터넷에서의 디바이스 개발을 위한 통합 플랫폼','이충산， 전수빈， 한영탁， 정인범'),(238,'2015','지능형 교통시스템에서 도시 고속도로와 램프의 교통량을 고려한 밀도 기반 램프 미터링 방법','전수빈， 정인범'),(240,'2017','사물인터넷의 에너지 효율을 위한 클러스터 속성 기반 데이터 교환','이충산， 전수빈， 정인범'),(241,'2017','Experimental Evaluation and Flexible Performance Improvement of IoT Middleware for Efficient Connectivity','Soo Bin Jeon and Chung San Lee and Young Tak Han and In Bum Jung'),(242,'2022','Web-Based Online Judge System for Online Programming Education','Seokjin Kim and Junhong Park and Soobin Jeon and Dongmhan Seo'),(247,'2020','게시판 크롤링을 통한 선호도 기반 게시물 푸시 서비스 구현','이다예， 박준홍， 이동욱， 전수빈'),(248,'2020','Data exchange in cluster structure for longevity of iot','Soobin Jeon'),(249,'2019','사물 인터넷 미들웨어에서 날씨 온톨로지 시스템','김유진， 전수빈， 정인범'),(253,'2015','사물 인터넷을 위한 이기종 네트워크 통합 프레임워크','이충산， 한영탁， 전수빈， 정인범'),(254,'2015','Analysis of Energy Consumption and Processing Delay of Wireless Sensor Networks according to the Characteristic of Applications','Chong Myung Park and Young Tak Han and Soobin Jeon and Inbum Jung'),(255,'2015','Vehicle Detection System on Multiple Drive Lanes with Ultrasonic Sensors in Wireless Sensor Networks','Soobin Jeon and Inbum Jung and Eil Kwon'),(256,'2013','대형차량을 고려한 교차로 신호제어','최형도， 조영태， 전수빈， 정인범'),(257,'2012','소형 초음파 센서를 이용한 복수차로의 차량 검출','전수빈， 조영태， 정인범'),(258,'2010','. NET Framework 를 이용한 영어 교육용 컨텐츠 설계 및 구현','전수빈， 김종우， 양효종， 정인범'),(268,'2022','Improvement of Object Segmentation Accuracy in Aerial Images','Sujong Kim and Yunsung Han and Soobin Jeon and Dongmhan Seo'),(279,'2021','레고 마인드스톰을 통한 로봇 춤 동작 구현','임찬아， 김영은， 전민건， 김미혜， 전수빈'),(300,'2017','사물인터넷 환경에서의 효율적인 에너지 소비 및 디바이스 응답시간 단축을 위한 리소스 관리 기법','김유진， 임동현， 허서훈， 신세정， 이충산， 전수빈， 정인범'),(301,'2017','사물인터넷 디바이스들의 모니터링 및 OTA 프로그래밍을 위한 디바이스 관리 모듈','허서훈， 김유진， 임동현， 신세정， 이충산， 전수빈， 정인범'),(302,'2017','사물간의 효율적인 연결을 위한 사물인터넷 미들웨어 실험 평가 및 성능 향상 방법','전수빈， 이충산， 한영탁， 정인범'),(303,'2016','실시간 현황갱신 및 사물 간 상호작용을 위한 인아웃보드 시스템','신세정， 이충산， 한영탁， 전수빈， 정인범'),(304,'2016','실내 사물인터넷 환경을 위한 객체 크기 기반의 사람 검출 방법','김유진， 이충산， 전수빈， 정인범'),(307,'2015','사물인터넷 기반 스마트 신발','심순용， 전수빈， 이충산， 한영탁， 이기웅， 이은수， 정인범'),(308,'2015','사물인터넷을 이용한 스마트 우산','이기웅， 전수빈， 이충산， 한영탁， 심순용， 이은수， 정인범'),(309,'2015','IoT 개발 환경을 위한 통합 디바이스 제어 도구','한영탁， 이충산， 전수빈， 정인범'),(310,'2015','사물인터넷 기반의 스마트 조명시스템','이은수， 전수빈， 이충산， 한영탁， 심순용， 이기웅， 신세정， 정인범'),(311,'2015','응용프로그램의 특성에 따른 무선센서 네트워크의 에너지 소모와 처리 지연 분석','박총명， 한영탁， 전수빈， 정인범'),(312,'2015','Estimation of Winter Snow Operation Performance Measures with Traffic-Flow Data, Phase 2','Eil Kwon and Chongmyung Park and Seongah Hong and Soobin Jeon'),(313,'2014','사물 인터넷을 위한 지능형 주차 시스템','이충산， 한영탁， 조영태， 전수빈， 최진섭， 정인범'),(314,'2012','. Net Framework 를 이용한 영어 이러닝 시스템','전수빈， 정인범'),(315,'2012','English E-Learning System Based on. NET Framework','Soo-Bin Jeon and In-Bum Jung'),(316,'2011','소형 초음파 센서 기반의 차량 검출 시스템','전수빈， 최형도， 조영태， 정인범'),(317,'2011','대형차량과 보행자를 고려한 교차로 신호제어','최형도， 전수빈， 조영태， 정인범'),(318,'2010','Implementation of English Instructional Content using. NET Framework','Soo-Bin Jeon and Jong-Woo Kim and Hyo-Jong Yang and In-Bum Jung'),(319,'2009','모바일 이동 단말기에서 스트리밍미디어서비스를 위한 버퍼 선인출','김종우， 김대호， 전수빈， 채명훈， 정인범'),(320,'2009','무선 동영상 공유 시스템의 구현','전수빈， 권순민， 박총명， 정인범'),(321,'2009','Implementation of Wireless Streaming Media Sharing System','Soo-Bin Jeon and Soon-Min Kwon and Chong-Myung Park and In-Bum Jung'),(322,'2009','Buffer Prefatching for The Streaming Multimedia Service in Mobile Devices','Jongwoo Kim and Daeho Kim and Soobin Jeon and Myunghoon Chae and Inbum Jung'),(323,'2008','유비쿼터스 환경에서 사용자 동작을 인식하기 위한입력장치','김종우， 김정래， 전수빈， 박총명， 정인범'),(431,'','Track 1. Ubiquitous Computing','Eunsung Park and Dongsu Seong and Keonbae Lee and Chongmyung Park and Inbum Jung and Xi Luo and Xu Ji and Myong-Soon Park and Jiang-Whai Dai and Ling-Feng Chiang and Shih-Chia Chen and Seungkeun Lee and Intae Kim and Daesung Lee and Junghyun Lee and Keewo'),(432,'','STREAM PREFETCHING METHOD ON STREAMING MEDIA SERVICE FOR HIGH SPEED MOBILE USERS','Dongmahn Seo and Suhyun Kim'),(1233,'2023','Design and Implementation of Object Detection and Re-simulation System based on LiDAR','Hyewon Jo and Seongju Park and Junhong Park and Dongmahn Seo and Soobin Jeon');
/*!40000 ALTER TABLE `scholar_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snslab_list`
--

DROP TABLE IF EXISTS `snslab_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snslab_list` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snslab_list`
--

LOCK TABLES `snslab_list` WRITE;
/*!40000 ALTER TABLE `snslab_list` DISABLE KEYS */;
INSERT INTO `snslab_list` VALUES (1,'서동만'),(2,'전수빈'),(3,'박준홍'),(4,'김수종'),(5,'전민건'),(6,'김유리'),(7,'김유진'),(8,'조혜원'),(9,'김수정'),(10,'이예지'),(11,'권혁규'),(12,'박성주'),(13,'김보경'),(14,'신지수'),(15,'송희재'),(16,'김동현'),(17,'노동원'),(18,'이동욱'),(19,'유진희'),(20,'김재훈'),(21,'정영주'),(22,'이성원'),(23,'김석진'),(24,'정연욱'),(25,'한윤성'),(26,'안광은'),(27,'이민영'),(28,'한정');
/*!40000 ALTER TABLE `snslab_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-23  2:21:13
