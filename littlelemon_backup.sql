-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: LittleLemon
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add booking',7,'add_booking'),(26,'Can change booking',7,'change_booking'),(27,'Can delete booking',7,'delete_booking'),(28,'Can view booking',7,'view_booking'),(29,'Can add menu',8,'add_menu'),(30,'Can change menu',8,'change_menu'),(31,'Can delete menu',8,'delete_menu'),(32,'Can view menu',8,'view_menu'),(33,'Can add Token',9,'add_token'),(34,'Can change Token',9,'change_token'),(35,'Can delete Token',9,'delete_token'),(36,'Can view Token',9,'view_token'),(37,'Can add Token',10,'add_tokenproxy'),(38,'Can change Token',10,'change_tokenproxy'),(39,'Can delete Token',10,'delete_tokenproxy'),(40,'Can view Token',10,'view_tokenproxy');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$V2lU0k76DZ5ztQZ87CxS6w$pKfWujiJLwg1VBZ5r2M/MPBT+dhru+MczNvaI5iaJ1s=','2024-11-05 01:01:25.711766',1,'admin','','','',1,1,'2024-09-16 02:14:27.481351'),(2,'pbkdf2_sha256$870000$VUR0tHbhI38lfrHEVZyJRR$B0MNeBHL9RQfmxmRkmlPzcOva+hbE4AMUNOZJvtoyWQ=',NULL,0,'customer1','','','',0,1,'2024-09-16 18:58:05.000000'),(3,'pbkdf2_sha256$870000$lofEgdEdxLVlbVNmsvm9Y1$NCCf6SMPjjYFoAjcNkOiYFvP8hgCSvT3mGoCanIR1R8=','2024-09-16 19:11:23.004852',0,'customer2','','','',0,1,'2024-09-16 19:10:59.148607'),(4,'123qweC4',NULL,0,'customer4','','','',0,1,'2024-09-16 20:55:50.222943'),(6,'pbkdf2_sha256$870000$Y4ERnw6dvfjxrSbKoMGi90$6NoSw8AcKb2b/wbSkufjR86mHgFeGzNNWSwCW9Y1NhE=',NULL,1,'Tester','','','',1,1,'2024-11-29 08:31:32.722698'),(7,'pbkdf2_sha256$870000$k6gWBTU4lZdNK974KeAK61$1zrk46d0uTO0M69Lo0jVz2pSDOX9V8G78w2DZKwjNiA=',NULL,1,'New','','','',1,1,'2024-11-29 08:36:50.312539');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('184c78e7e69546d21922ee11351a8a32f65c9d1b','2024-09-16 19:11:23.000006',3),('1c0930dc46fb5b503404cd5063065e10c660368e','2024-09-16 19:03:05.156559',2),('ada5529e39375f4542a24adfbc8c38778a77cfb7','2024-09-16 18:56:56.380914',1);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-09-16 04:20:45.131738','1','Menu object (1)',1,'[{\"added\": {}}]',8,1),(2,'2024-09-16 04:21:16.947943','2','Menu object (2)',1,'[{\"added\": {}}]',8,1),(3,'2024-09-16 18:56:56.380914','1','ada5529e39375f4542a24adfbc8c38778a77cfb7',1,'[{\"added\": {}}]',10,1),(4,'2024-09-16 18:58:05.641506','2','customer1',1,'[{\"added\": {}}]',4,1),(5,'2024-09-16 18:58:14.886411','2','customer1',2,'[]',4,1),(6,'2024-09-16 21:06:21.808731','5','rav',3,'',4,1),(7,'2024-09-16 21:07:36.603850','1','Booking object (1)',1,'[{\"added\": {}}]',7,1),(8,'2024-11-06 03:38:36.030873','3','Menu object (3)',3,'',8,1),(9,'2024-11-06 03:38:36.030939','2','Menu object (2)',3,'',8,1),(10,'2024-11-06 03:38:36.030961','1','Menu object (1)',3,'',8,1),(11,'2024-11-06 04:30:43.939393','4','Menu object (4)',1,'[{\"added\": {}}]',8,1),(12,'2024-11-06 19:49:17.791708','4','Menu object (4)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(13,'2024-11-06 19:59:05.640053','4','Menu object (4)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(14,'2024-11-06 20:05:14.668848','5','Menu object (5)',1,'[{\"added\": {}}]',8,1),(15,'2024-11-06 20:07:49.400833','6','Menu object (6)',1,'[{\"added\": {}}]',8,1),(16,'2024-11-06 20:11:40.864910','7','Menu object (7)',1,'[{\"added\": {}}]',8,1),(17,'2024-11-06 20:12:48.974914','8','Menu object (8)',1,'[{\"added\": {}}]',8,1),(18,'2024-11-06 20:13:46.605334','9','Menu object (9)',1,'[{\"added\": {}}]',8,1),(19,'2024-11-06 20:15:04.998054','10','Menu object (10)',1,'[{\"added\": {}}]',8,1),(20,'2024-11-06 20:16:02.034528','11','Menu object (11)',1,'[{\"added\": {}}]',8,1),(21,'2024-11-06 20:26:46.335700','5','Menu object (5)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(22,'2024-11-06 20:27:32.180690','5','Menu object (5)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(23,'2024-11-06 20:28:50.477195','5','Menu object (5)',2,'[{\"changed\": {\"fields\": [\"Title\", \"Image\"]}}]',8,1),(24,'2024-11-06 20:29:24.999529','4','Menu object (4)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(25,'2024-11-06 20:29:51.394136','4','Menu object (4)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(26,'2024-11-06 20:33:50.311529','5','Menu object (5)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(27,'2024-11-06 20:33:56.713308','6','Menu object (6)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(28,'2024-11-06 20:34:05.027242','7','Menu object (7)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(29,'2024-11-06 20:34:12.641775','8','Menu object (8)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(30,'2024-11-06 20:34:18.711107','11','Menu object (11)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(31,'2024-11-06 20:34:23.713756','10','Menu object (10)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(32,'2024-11-06 20:34:28.286286','9','Menu object (9)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(33,'2024-11-06 20:34:31.959803','8','Menu object (8)',2,'[]',8,1),(34,'2024-11-06 20:37:35.063352','11','Menu object (11)',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'authtoken','token'),(10,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(7,'restaurant','booking'),(8,'restaurant','menu'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-16 01:25:25.283355'),(2,'auth','0001_initial','2024-09-16 01:25:25.914784'),(3,'admin','0001_initial','2024-09-16 01:25:26.049234'),(4,'admin','0002_logentry_remove_auto_add','2024-09-16 01:25:26.055334'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-16 01:25:26.061144'),(6,'contenttypes','0002_remove_content_type_name','2024-09-16 01:25:26.130773'),(7,'auth','0002_alter_permission_name_max_length','2024-09-16 01:25:26.193270'),(8,'auth','0003_alter_user_email_max_length','2024-09-16 01:25:26.211405'),(9,'auth','0004_alter_user_username_opts','2024-09-16 01:25:26.219329'),(10,'auth','0005_alter_user_last_login_null','2024-09-16 01:25:26.289260'),(11,'auth','0006_require_contenttypes_0002','2024-09-16 01:25:26.292417'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-16 01:25:26.298469'),(13,'auth','0008_alter_user_username_max_length','2024-09-16 01:25:26.360756'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-16 01:25:26.418002'),(15,'auth','0010_alter_group_name_max_length','2024-09-16 01:25:26.432764'),(16,'auth','0011_update_proxy_permissions','2024-09-16 01:25:26.439231'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-16 01:25:26.501030'),(18,'sessions','0001_initial','2024-09-16 01:25:26.534936'),(19,'restaurant','0001_initial','2024-09-16 02:14:51.384536'),(20,'authtoken','0001_initial','2024-09-16 18:53:54.148422'),(21,'authtoken','0002_auto_20160226_1747','2024-09-16 18:53:54.163513'),(22,'authtoken','0003_tokenproxy','2024-09-16 18:53:54.166715'),(23,'authtoken','0004_alter_tokenproxy_options','2024-09-16 18:53:54.172821'),(24,'restaurant','0002_menu_menu_item_description','2024-10-29 23:59:36.027490'),(25,'restaurant','0002_menu_description_menu_image','2024-11-06 03:47:54.951371'),(26,'restaurant','0003_alter_menu_description','2024-11-06 03:57:01.483412'),(27,'restaurant','0004_alter_menu_description_alter_menu_image','2024-11-06 04:00:48.731886'),(28,'restaurant','0005_booking_reservation_slot','2024-11-07 03:27:13.323525');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('63pl5oyraz381abfs6z7iue7gbidzo1j','.eJxVjDsOwjAQBe_iGln-LjYlfc5g7cYbHEC2FCcV4u4QKQW0b2beSyTc1pK2zkuas7gILU6_G-H44LqDfMd6a3JsdV1mkrsiD9rl0DI_r4f7d1Cwl28dtfUqT0j6PGk2ihQQADJqyg4YiBWgc2CdsZYxOo8heJsZbeQARrw_5ec3wg:1t87wj:jnnyStn36eLeQ88WwA-ev1hNjahDwPMjRdOQzWREd9g','2024-11-19 01:01:25.718178'),('smtytjrby1geqrx9jdtkd89gmjux851f','.eJxVjDsOwjAQBe_iGln-LjYlfc5g7cYbHEC2FCcV4u4QKQW0b2beSyTc1pK2zkuas7gILU6_G-H44LqDfMd6a3JsdV1mkrsiD9rl0DI_r4f7d1Cwl28dtfUqT0j6PGk2ihQQADJqyg4YiBWgc2CdsZYxOo8heJsZbeQARrw_5ec3wg:1sq1Gm:wasluc0zjdmtzMxsle6JhAW2UOkzYWw6QMfAH-LxvHg','2024-09-30 02:15:16.708158');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_booking`
--

DROP TABLE IF EXISTS `restaurant_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `No_of_guest` int NOT NULL,
  `BookingDate` datetime(6) NOT NULL,
  `reservation_slot` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_booking`
--

LOCK TABLES `restaurant_booking` WRITE;
/*!40000 ALTER TABLE `restaurant_booking` DISABLE KEYS */;
INSERT INTO `restaurant_booking` VALUES (1,'Customer1',1,'2024-09-17 18:00:00.000000',NULL),(2,'Test',4,'2024-11-07 00:00:00.000000',11),(3,'Test2',2,'2024-11-06 00:00:00.000000',11),(4,'Test3',4,'2024-11-14 00:00:00.000000',11);
/*!40000 ALTER TABLE `restaurant_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_menu`
--

DROP TABLE IF EXISTS `restaurant_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Price` decimal(6,2) NOT NULL,
  `Inventory` int NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_menu`
--

LOCK TABLES `restaurant_menu` WRITE;
/*!40000 ALTER TABLE `restaurant_menu` DISABLE KEYS */;
INSERT INTO `restaurant_menu` VALUES (4,'Bruschetta',11.50,25,'Bruschetta is a classic Italian appetizer made of grilled bread topped with a fresh mix of tomatoes, garlic, basil, olive oil, and sometimes balsamic vinegar. It\'s a simple yet flavorful dish that highlights the vibrant tastes of fresh ingredients',NULL),(5,'Chicken Skewers',14.50,20,'Our Mediterranean-style chicken skewers are marinated with fragrant herbs and spices from Italy, Greece, and Turkey, then grilled to perfection for a mouthwatering experience. Fresh off the grill, these succulent skewers capture the essence of LittleLemon',NULL),(6,'Grilled Salmon',18.50,30,'Savor our Mediterranean-inspired grilled salmon, expertly seasoned and charred to perfection, served as four succulent pieces. Each bite embodies the rich flavors of LittleLemonΓÇÖs culinary traditions from Italy, Greece, and Turkey.',NULL),(7,'Pasta',13.50,30,'Indulge in our authentic Mediterranean pasta, infused with flavors from Italy, Greece, and Turkey. Each dish is freshly prepared to bring out the rich, traditional tastes of LittleLemonΓÇÖs heritage.',NULL),(8,'Fish',15.50,25,'Experience the taste of the Mediterranean with our freshly grilled fish, delicately seasoned and cooked to perfection. Every bite reflects the coastal culinary traditions of Italy, Greece, and Turkey.',NULL),(9,'Greek Salad',14.00,20,'Enjoy a refreshing Greek salad, made with crisp lettuce, ripe tomatoes, cucumbers, olives, and feta cheese. This classic Mediterranean dish embodies the vibrant flavors of LittleLemon',NULL),(10,'Vegetable Skewers',10.50,30,'Savor our Mediterranean vegetable skewers, grilled to perfection and bursting with the fresh, vibrant flavors of Italy, Greece, and Turkey. These skewers are a healthy and delicious addition to LittleLemonΓÇÖs menu.',NULL),(11,'Lemon Dessert',13.00,30,'Delight in our zesty lemon cake, a perfect blend of sweet and tangy flavors. This dessert is inspired by the citrus-rich regions of Italy, Greece, and Turkey, capturing the essence of LittleLemon',NULL);
/*!40000 ALTER TABLE `restaurant_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29  0:42:12
