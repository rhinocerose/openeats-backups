-- MySQL dump 10.14  Distrib 5.5.64-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: openeats
-- ------------------------------------------------------
-- Server version	5.5.64-MariaDB-1~trusty

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
  `name` varchar(80) NOT NULL,
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
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add site',6,'add_site'),(22,'Can change site',6,'change_site'),(23,'Can delete site',6,'delete_site'),(24,'Can view site',6,'view_site'),(25,'Can add log entry',7,'add_logentry'),(26,'Can change log entry',7,'change_logentry'),(27,'Can delete log entry',7,'delete_logentry'),(28,'Can view log entry',7,'view_logentry'),(29,'Can add Token',8,'add_token'),(30,'Can change Token',8,'change_token'),(31,'Can delete Token',8,'delete_token'),(32,'Can view Token',8,'view_token'),(33,'Can add recipe',9,'add_recipe'),(34,'Can change recipe',9,'change_recipe'),(35,'Can delete recipe',9,'delete_recipe'),(36,'Can view recipe',9,'view_recipe'),(37,'Can add sub recipe',10,'add_subrecipe'),(38,'Can change sub recipe',10,'change_subrecipe'),(39,'Can delete sub recipe',10,'delete_subrecipe'),(40,'Can view sub recipe',10,'view_subrecipe'),(41,'Can add course',11,'add_course'),(42,'Can change course',11,'change_course'),(43,'Can delete course',11,'delete_course'),(44,'Can view course',11,'view_course'),(45,'Can add cuisine',12,'add_cuisine'),(46,'Can change cuisine',12,'change_cuisine'),(47,'Can delete cuisine',12,'delete_cuisine'),(48,'Can view cuisine',12,'view_cuisine'),(49,'Can add tag',13,'add_tag'),(50,'Can change tag',13,'change_tag'),(51,'Can delete tag',13,'delete_tag'),(52,'Can view tag',13,'view_tag'),(53,'Can add ingredient',14,'add_ingredient'),(54,'Can change ingredient',14,'change_ingredient'),(55,'Can delete ingredient',14,'delete_ingredient'),(56,'Can view ingredient',14,'view_ingredient'),(57,'Can add ingredient group',15,'add_ingredientgroup'),(58,'Can change ingredient group',15,'change_ingredientgroup'),(59,'Can delete ingredient group',15,'delete_ingredientgroup'),(60,'Can view ingredient group',15,'view_ingredientgroup'),(61,'Can add news',16,'add_news'),(62,'Can change news',16,'change_news'),(63,'Can delete news',16,'delete_news'),(64,'Can view news',16,'view_news'),(65,'Can add grocery item',17,'add_groceryitem'),(66,'Can change grocery item',17,'change_groceryitem'),(67,'Can delete grocery item',17,'delete_groceryitem'),(68,'Can view grocery item',17,'view_groceryitem'),(69,'Can add grocery list',18,'add_grocerylist'),(70,'Can change grocery list',18,'change_grocerylist'),(71,'Can delete grocery list',18,'delete_grocerylist'),(72,'Can view grocery list',18,'view_grocerylist'),(73,'Can add grocery shared',19,'add_groceryshared'),(74,'Can change grocery shared',19,'change_groceryshared'),(75,'Can delete grocery shared',19,'delete_groceryshared'),(76,'Can view grocery shared',19,'view_groceryshared'),(77,'Can add menu item',20,'add_menuitem'),(78,'Can change menu item',20,'change_menuitem'),(79,'Can delete menu item',20,'delete_menuitem'),(80,'Can view menu item',20,'view_menuitem'),(81,'Can add rating',21,'add_rating'),(82,'Can change rating',21,'change_rating'),(83,'Can delete rating',21,'delete_rating'),(84,'Can view rating',21,'view_rating'),(85,'Can add cors model',22,'add_corsmodel'),(86,'Can change cors model',22,'change_corsmodel'),(87,'Can delete cors model',22,'delete_corsmodel'),(88,'Can view cors model',22,'view_corsmodel');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$taKZ7WPOF42u$3xt8B2rxP0ykHmgB3phOjfR6HOaFo2zx/JAAWtCqyr0=','2020-06-07 09:11:35.967374',1,'ashar','','','',1,1,'2020-06-06 21:52:55.778277');
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
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-06-06 23:46:23.477707','2','ann',3,'',3,1),(2,'2020-06-06 23:50:07.600945','5','5-Ingredient Fried Chicken Sandwich',2,'[{\"changed\": {\"fields\": [\"directions\"]}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(3,'auth','user'),(8,'authtoken','token'),(4,'contenttypes','contenttype'),(22,'corsheaders','corsmodel'),(14,'ingredient','ingredient'),(15,'ingredient','ingredientgroup'),(17,'list','groceryitem'),(18,'list','grocerylist'),(19,'list','groceryshared'),(20,'menu','menuitem'),(16,'news','news'),(21,'rating','rating'),(9,'recipe','recipe'),(10,'recipe','subrecipe'),(11,'recipe_groups','course'),(12,'recipe_groups','cuisine'),(13,'recipe_groups','tag'),(5,'sessions','session'),(6,'sites','site');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-06-06 19:37:04.910991'),(2,'auth','0001_initial','2020-06-06 19:37:05.252495'),(3,'admin','0001_initial','2020-06-06 19:37:05.318774'),(4,'admin','0002_logentry_remove_auto_add','2020-06-06 19:37:05.332401'),(5,'admin','0003_logentry_add_action_flag_choices','2020-06-06 19:37:05.348281'),(6,'contenttypes','0002_remove_content_type_name','2020-06-06 19:37:05.408346'),(7,'auth','0002_alter_permission_name_max_length','2020-06-06 19:37:05.432431'),(8,'auth','0003_alter_user_email_max_length','2020-06-06 19:37:05.460384'),(9,'auth','0004_alter_user_username_opts','2020-06-06 19:37:05.473376'),(10,'auth','0005_alter_user_last_login_null','2020-06-06 19:37:05.512056'),(11,'auth','0006_require_contenttypes_0002','2020-06-06 19:37:05.514958'),(12,'auth','0007_alter_validators_add_error_messages','2020-06-06 19:37:05.536103'),(13,'auth','0008_alter_user_username_max_length','2020-06-06 19:37:05.572239'),(14,'auth','0009_alter_user_last_name_max_length','2020-06-06 19:37:05.607355'),(15,'authtoken','0001_initial','2020-06-06 19:37:05.655289'),(16,'authtoken','0002_auto_20160226_1747','2020-06-06 19:37:05.733680'),(17,'recipe_groups','0001_initial','2020-06-06 19:37:05.885097'),(18,'recipe','0001_initial','2020-06-06 19:37:06.555430'),(19,'recipe','0002_remove_recipe_directions','2020-06-06 19:37:06.609160'),(20,'recipe','0003_auto_20161111_1122','2020-06-06 19:37:07.034584'),(21,'recipe','0004_auto_20161126_1758','2020-06-06 19:37:07.105767'),(22,'recipe','0005_recipe_source','2020-06-06 19:37:07.159579'),(23,'recipe','0006_auto_20170127_0905','2020-06-06 19:37:07.175196'),(24,'recipe','0007_auto_20170723_2046','2020-06-06 19:37:07.193438'),(25,'ingredient','0001_initial','2020-06-06 19:37:07.242701'),(26,'ingredient','0002_auto_20170127_2104','2020-06-06 19:37:07.262564'),(27,'ingredient','0003_auto_20170723_2050','2020-06-06 19:37:07.369041'),(28,'ingredient','0004_auto_20170723_2101','2020-06-06 19:37:07.409704'),(29,'ingredient','0005_auto_20170725_1950','2020-06-06 19:37:07.639119'),(30,'ingredient','0006_auto_20170725_1951','2020-06-06 19:37:07.719318'),(31,'ingredient','0007_remove_ingredient_recipe','2020-06-06 19:37:07.775228'),(32,'ingredient','0008_auto_20180129_1456','2020-06-06 19:37:07.886155'),(33,'ingredient','0009_auto_20180330_1055','2020-06-06 19:37:07.950086'),(34,'ingredient','0010_auto_20180330_1058','2020-06-06 19:37:07.976634'),(35,'ingredient','0011_auto_20180415_2352','2020-06-06 19:37:07.987510'),(36,'ingredient','0012_remove_ingredient_quantity','2020-06-06 19:37:08.017783'),(37,'list','0001_initial','2020-06-06 19:37:08.393054'),(38,'list','0002_groceryitem_complete','2020-06-06 19:37:08.439344'),(39,'list','0003_auto_20170128_2118','2020-06-06 19:37:08.702966'),(40,'list','0004_auto_20170203_1045','2020-06-06 19:37:08.855361'),(41,'list','0005_auto_20170728_2230','2020-06-06 19:37:08.880694'),(42,'list','0006_auto_20170826_0059','2020-06-06 19:37:08.943604'),(43,'list','0007_auto_20180129_1456','2020-06-06 19:37:09.396008'),(44,'list','0008_auto_20181120_0041','2020-06-06 19:37:09.517676'),(45,'list','0009_ordered_grocery_item','2020-06-06 19:37:09.559677'),(46,'recipe','0008_auto_20170806_2059','2020-06-06 19:37:09.657489'),(47,'recipe','0009_auto_20171114_1443','2020-06-06 19:37:09.757616'),(48,'recipe','0010_auto_20171114_1443','2020-06-06 19:37:09.789956'),(49,'recipe','0011_auto_20171114_1543','2020-06-06 19:37:09.852787'),(50,'recipe','0012_auto_20180106_1113','2020-06-06 19:37:09.955997'),(51,'recipe','0013_auto_20180129_1456','2020-06-06 19:37:10.359105'),(52,'menu','0001_initial','2020-06-06 19:37:10.506976'),(53,'menu','0002_auto_20180210_1817','2020-06-06 19:37:10.582900'),(54,'menu','0003_auto_20180215_1524','2020-06-06 19:37:10.693158'),(55,'menu','0004_remove_menuitem_occurrence','2020-06-06 19:37:10.734591'),(56,'menu','0005_auto_20180219_2237','2020-06-06 19:37:10.872176'),(57,'menu','0006_menuitem_all_day','2020-06-06 19:37:11.008037'),(58,'menu','0007_auto_20180827_2124','2020-06-06 19:37:11.215685'),(59,'menu','0008_auto_20181120_0041','2020-06-06 19:37:11.237269'),(60,'menu','0009_auto_20190301_1353','2020-06-06 19:37:11.276638'),(61,'menu','0010_auto_20190308_1254','2020-06-06 19:37:11.354301'),(62,'news','0001_initial','2020-06-06 19:37:11.384349'),(63,'news','0002_auto_20161125_0846','2020-06-06 19:37:11.422523'),(64,'news','0003_auto_20190301_1353','2020-06-06 19:37:11.432191'),(65,'recipe','0014_auto_20180607_0713','2020-06-06 19:37:11.478725'),(66,'rating','0001_initial','2020-06-06 19:37:11.554966'),(67,'rating','0002_django_data_migration_recipe_to_rating','2020-06-06 19:37:11.607867'),(68,'recipe','0015_remove_recipe_old_rating','2020-06-06 19:37:11.665841'),(69,'recipe','0016_auto_20190301_1230','2020-06-06 19:37:11.761123'),(70,'recipe','0017_auto_20190301_1231','2020-06-06 19:37:11.798262'),(71,'recipe','0018_remove_subrecipe_quantity','2020-06-06 19:37:11.836504'),(72,'recipe_groups','0002_remove_tag_author','2020-06-06 19:37:11.907319'),(73,'recipe_groups','0003_auto_20180129_1456','2020-06-06 19:37:12.060425'),(74,'sessions','0001_initial','2020-06-06 19:37:12.092832'),(75,'sites','0001_initial','2020-06-06 19:37:12.113630'),(76,'sites','0002_alter_domain_unique','2020-06-06 19:37:12.136823');
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
INSERT INTO `django_session` VALUES ('3weeszllxtbxd26yx26130d3m16dxfsa','NGM3MGRiYmJiZTJkMDQyOWMwMGMyZDEzMmYzMTA5M2VkN2QzNWYxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NmFkODJmMjM3YzE1ZGJjZDg1NTA2OGUzYWIxNjE3ZGU5OTdlZTE2In0=','2020-06-20 23:18:57.970800'),('7mn8y86t4ynjtycrj5ta2ormp2hgjk65','NGM3MGRiYmJiZTJkMDQyOWMwMGMyZDEzMmYzMTA5M2VkN2QzNWYxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NmFkODJmMjM3YzE1ZGJjZDg1NTA2OGUzYWIxNjE3ZGU5OTdlZTE2In0=','2020-06-21 09:11:35.980478');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_ingredient`
--

DROP TABLE IF EXISTS `ingredient_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `measurement` varchar(200) DEFAULT NULL,
  `ingredient_group_id` int(11) DEFAULT NULL,
  `denominator` double NOT NULL,
  `numerator` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingredient_ingredien_ingredient_group_id_42a585aa_fk_ingredien` (`ingredient_group_id`),
  CONSTRAINT `ingredient_ingredien_ingredient_group_id_42a585aa_fk_ingredien` FOREIGN KEY (`ingredient_group_id`) REFERENCES `ingredient_ingredientgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_ingredient`
--

LOCK TABLES `ingredient_ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient_ingredient` DISABLE KEYS */;
INSERT INTO `ingredient_ingredient` VALUES (142,'boneless skinless chicken breasts, about 6 ounces (170g) each, cut into 1/2-inch cubes','small',31,1,2),(143,'(5ml) Shaoxing wine (see note)','teaspoon',31,1,1),(144,'light soy sauce (10ml)','teaspoons',31,1,2),(145,'cornstarch (about 5g)','teaspoons',31,1,2),(146,'Large pinch kosher salt',NULL,31,1,0),(147,'honey (15ml)','tablespoon',32,1,1),(148,'(30ml) Chinkiang vinegar (see note)','tablespoons',32,1,2),(149,'Shaoxing wine (15ml)','tablespoon',32,1,1),(150,'(10ml) light soy sauce (see note)','teaspoons',32,1,2),(151,'cornstarch (about 2g)','teaspoon',32,2,1),(152,'Water or homemade or store-bought low-sodium chicken stock, as needed',NULL,32,1,0),(153,'vegetable oil (45ml)','tablespoons',33,1,3),(154,'12 small dried red chiles (such as árbol), stems removed, cut into 1/2-inch pieces with scissors, seeds discarded','to',33,1,6),(155,'(about 2g) Sichuan peppercorns, reddish husks only (stems and black seeds discarded)','teaspoon',33,1,1),(156,'cloves garlic, thinly sliced','medium',33,1,4),(157,'knob ginger, peeled and cut into fine matchsticks or grated','-inch',33,1,1),(158,'white and pale green parts only, cut into 1/2-inch pieces','scallions,',33,1,6),(159,'roasted peanuts (about 5 ounces; 150g)','cup',33,4,3),(234,'oil','tsp',45,1,1),(235,'onion, diced','yellow',45,1,1),(236,'garlic, minced','cloves',45,1,4),(237,'bonnet or habanero peppers, seeded if desired and minced (use gloves to handle)','scotch',45,1,1),(238,'fresh thyme','sprigs',45,1,3),(239,'Jamaican curry powder (homemade* or store bought)','tbsp',45,2,5),(240,'1 1/2 tsp salt, to taste','-',45,1,1),(241,'black pepper','tsp',45,2,1),(242,'(~4 small) yukon gold potatoes, peeled and diced to 1/2\" cubes','lb',45,1,1),(243,'(30oz can) black-eyed peas, drained and rinsed','cups',45,1,3),(244,'pepper, chopped','poblano',45,1,1),(245,'water','cups',45,1,2),(246,'coconut milk','cup',45,1,1),(247,'lime juice (~2 limes)','cup',45,4,1),(248,'cumin seed','Tbsp',46,1,2),(249,'whole mustard seed','Tbsp',46,1,2),(250,'coriander seed','Tbsp',46,1,2),(251,'fenugreek seed','Tbsp',46,1,1),(252,'allspice berries (or substitute 1 1/2 tsp ground allspice)','Tbsp',46,1,1),(253,'ground ginger','tsp',46,1,1),(254,'white pepper (or black)','tsp',46,1,1),(255,'of ground turmeric','tablespoons',46,1,4),(368,'vegetable oil','teaspoons',64,1,4),(369,'(60 grams) tomato paste','cup',64,4,1),(370,'cider vinegar','tablespoons',64,1,2),(371,'honey','teaspoons',64,1,2),(372,'Worcestershire sauce','teaspoons',64,1,2),(373,'smooth dijon mustard','teaspoons',64,1,2),(374,'table salt','teaspoon',64,4,1),(375,'sandwich bread','slices',65,1,2),(376,'onion, roughly chopped','medium',65,2,1),(377,'clove, chopped','garlic',65,1,1),(378,'stalk celery, roughly chopped','medium',65,1,1),(379,'carrot, roughly chopped','medium',65,1,1),(380,'Olive oil, for cooking',NULL,65,1,0),(381,'fine sea or table table salt, plus more for vegetables','teaspoon',65,1,1),(382,'Freshly ground black pepper',NULL,65,1,0),(383,'ground beef','pounds',65,1,2),(384,'eggs','large',65,1,2),(385,'tomato paste','tablespoon',65,1,1),(386,'dijon mustard','teaspoon',65,1,1),(387,'smoked paprika','teaspoon',65,1,1),(388,'Worcestershire sauce','tablespoons',65,1,2),(389,'chopped fresh flat-leaf parsley','cup',65,4,1),(390,'(120 grams) milk','cup',65,2,1),(391,'(905 grams) yukon gold potatoes (about 6)','pounds',66,1,2),(392,'(4 ounces or 115 grams) unsalted butter','tablespoons',66,1,8),(393,'(235 ml) buttermilk','cup',66,1,1),(394,'fine sea or table salt','teaspoon',66,1,1),(395,'Finely ground black pepper',NULL,66,1,0),(396,'vegetable oil','teaspoon',67,2,1),(397,'20 ounces ground beef, divided into four 4-ounce portions (see note)','to',67,1,16),(398,'Kosher salt and freshly ground black pepper',NULL,67,1,0),(399,'Cheese slices if desired)',NULL,67,1,0),(400,'Toppings and condiments as desired',NULL,67,1,0),(401,'Four toasted burger buns',NULL,67,1,0),(411,'(100g) sugar','cup',72,2,1),(412,'sea salt such as fleur de sel (see headnote)','teaspoon',72,4,3),(413,'(500ml) whole milk (divided)','cups',73,1,2),(414,'(240ml) heavy cream, warmed','cup',73,1,1),(415,'(250g) sugar','cups',73,4,5),(416,'(60g) salted butter, cubed','tablespoons',73,1,4),(417,'scant 1/2 teaspoon sea salt',NULL,73,1,0),(418,'egg yolks','large',73,1,5),(419,'vanilla extract','teaspoon',73,4,3),(420,'bread flour or all-purpose flour','g',74,1,400),(421,'salt','g',74,1,6),(422,'yeast','g',74,1,4),(423,'water','g',74,1,280),(476,'¾ cup whole-milk yogurt',NULL,84,1,0),(477,'fresh lemon juice','Tbsp.',84,1,2),(478,'½ tsp. sugar',NULL,84,1,0),(479,'Kosher salt',NULL,84,1,0),(480,'red lentils (masoor dal)','cup',85,1,1),(481,'zucchini (about 5 oz.)','medium',85,1,1),(482,'½ medium onion, thinly sliced',NULL,85,1,0),(483,'tsp. kosher salt, divided, plus more','¾',85,1,1),(484,'½ tsp. Kashmiri chile powder or ¼ tsp. cayenne pepper',NULL,85,1,0),(485,'¼ tsp. ground turmeric',NULL,85,1,0),(486,'parsley leaves with tender stems','cup',85,1,1),(487,'finely grated lemon zest','Tbsp.',85,1,1),(488,'ghee or neutral vegetable oil','cup',85,1,1),(564,'russet potatoes, cut into 2\"-long sticks','medium',101,1,2),(565,'head of cauliflower, cut into small florets','medium',101,1,1),(566,'extra-virgin olive oil, divided','Tbsp.',101,1,5),(567,'cumin seeds','tsp.',101,1,1),(568,'½ tsp. ground turmeric',NULL,101,1,0),(569,'onion, finely chopped','small',101,1,1),(570,'thinly sliced ginger','Tbsp.',101,1,1),(571,'Pinch of asafetida (optional, but really great)',NULL,101,1,0),(572,'Pinch of red chili powder',NULL,101,1,0),(573,'(or more) kosher salt','tsp.',101,1,1),(574,'(or more) fresh lime juice','Tbsp.',101,1,1),(575,'½ cup chopped cilantro leaves with tender stems',NULL,101,1,0),(597,'(450g) dry pasta','pound',107,1,1),(598,'Kosher salt',NULL,107,1,0),(599,'cloves garlic, thinly sliced','medium',107,1,4),(600,'(90ml) extra-virgin olive oil, divided','tablespoons',107,1,6),(601,'cherry tomatoes (about 2 pints; 675g)','pounds',107,2,3),(602,'Red pepper flakes',NULL,108,1,0),(603,'Oregano',NULL,108,1,0),(604,'Granulated garlic',NULL,108,1,0),(605,'Shredded chicken',NULL,109,1,0),(606,'Kale or spinach',NULL,110,1,0),(607,'Roasted zucchini or eggplant',NULL,110,1,0),(608,'Shredded carrots',NULL,110,1,0),(609,'Celery',NULL,110,1,0),(610,'Onion, leeks, or shallots',NULL,110,1,0),(611,'Red or poblano pepper',NULL,110,1,0),(612,'Green beans',NULL,110,1,0),(613,'Frozen peas',NULL,110,1,0),(614,'Freshly ground black pepper',NULL,111,1,0),(615,'fresh basil leaves, roughly chopped (optional)','g',111,1,30),(616,'Parmesan or Mozzarella cheese (optional)',NULL,111,1,0),(617,'Lemon juice (optional)',NULL,111,1,0),(635,'Vegetable oil',NULL,116,1,0),(636,'flour tortillas','(8-inch)',116,1,2),(637,'(115g) shredded Monteray Jack or Mozzarella cheese','ounces',116,1,4),(638,'Black beans',NULL,117,1,0),(639,'Small red beans',NULL,117,1,0),(640,'Pinto beans',NULL,117,1,0),(641,'Shredded chicken',NULL,117,1,0),(642,'Canned or frozen corn',NULL,118,1,0),(643,'Poblano or red pepper',NULL,118,1,0),(644,'Roasted sweet potato, diced small',NULL,118,1,0),(645,'Onion or shallot',NULL,118,1,0),(646,'Spinach',NULL,118,1,0),(647,'Minced garlic',NULL,119,1,0),(648,'Chipotle in adobo',NULL,119,1,0),(649,'Granulated garlic',NULL,119,1,0),(650,'Red pepper flakes',NULL,119,1,0),(651,'Lime juice',NULL,119,1,0),(652,'can whole tomatoes packed in juice','(28-ounce)',120,1,1),(653,'extra-virgin olive oil, plus more for serving','tablespoons',120,1,2),(654,'butter','tablespoon',120,1,1),(655,'pancetta or bacon, finely chopped (optional)','ounces',120,1,3),(656,'onion, finely diced (about 1 cup)','medium',120,1,1),(657,'garlic, minced on a microplane grater','cloves',120,1,6),(658,'dried oregano','teaspoon',120,2,1),(659,'dried red pepper flakes','teaspoon',120,2,1),(660,'homemade or low-sodium canned chicken broth','quart',120,1,1),(661,'ounce) cans dark red kidney beans','(15',120,1,2),(662,'leaves','bay',120,1,2),(663,'small pasta such as shells, ditali, or elbows','cup',120,1,1),(664,'Kosher salt and freshly ground black pepper',NULL,120,1,0),(665,'chopped fresh parsley leaves','tablespoons',120,1,2),(688,'cooked white rice (12 ounces; 350g; see note)','cups',123,1,2),(689,'(30ml) vegetable or canola oil, divided','tablespoons',123,1,2),(690,'onion, finely chopped (4 ounces; 115g)','small',123,1,1),(691,'carrot, peeled and cut into small dice (3 ounces; 85g)','medium',123,1,1),(692,'thinly sliced (1 ounce; 30g)','scallions,',123,1,2),(693,'cloves garlic, minced (about 2 teaspoons; 5g)','medium',123,1,2),(694,'(5ml) soy sauce','teaspoon',123,1,1),(695,'(5ml) toasted sesame oil','teaspoon',123,1,1),(696,'Kosher salt and ground white pepper',NULL,123,1,0),(697,'egg','large',123,1,1),(698,'(115g) frozen peas','ounces',123,1,4),(699,'sized beets (try to shoot for the same size so they’ll cook for the same amount of time)','medium',124,1,6),(700,'Kosher salt',NULL,124,1,0),(701,'Freshly ground pepper',NULL,124,1,0),(702,'Balsamic vinegar',NULL,124,1,0),(703,'Extra virgin olive oil',NULL,124,1,0),(713,'green beans or haricot vert (skinny ones)','pound',126,1,1),(714,'fennel bulb (about 1/2 pound)','a',126,2,1),(715,'celery, trimmed','stalk',126,1,1),(716,'red onion','medium',126,2,1),(717,'lemon juice','tablespoon',126,1,1),(718,'red wine vinegar','cup',126,4,1),(719,'water','cup',126,4,1),(720,'kosher salt (I use Diamond brand; use less if you’re using Morton or table salt)','tablespoon',126,1,1),(721,'sugar','teaspoons',126,2,3),(722,'(about 2 ounces) whole almonds','cup',126,3,1),(723,'plus 2 teaspoons olive oil','tablespoons',126,1,2),(724,'bone-in, skin on chicken thighs (about 3 thighs)','pound',127,1,1),(725,'Kosher salt and freshly ground black pepper',NULL,127,1,0),(726,'homemade or store-bought low-sodium chicken stock','cups',127,1,3),(727,'extra-virgin olive oil','tablespoons',127,1,2),(728,'(4 tablespoons) unsalted butter at room temperature','stick',127,2,1),(729,'white miso paste','tablespoon',127,1,1),(730,'dried soba noodles (about 6 ounces)','bundles',127,1,3),(731,'thinly sliced, white and light green parts','scallions,',127,1,2),(732,'picked cilantro leaves','cup',127,2,1),(733,'picked bean sprouts','cup',127,1,1),(734,'cut into wedges','lemon,',127,1,1),(735,'butter (1 cup)','grams',128,1,227),(736,'brown sugar (1 cup)','grams',128,1,200),(737,'chocolate chips','oz',128,1,12),(738,'saltines',NULL,128,1,0),(739,'cornmeal (1 1/2 cup)','grams',129,1,234),(740,'all-purpose flour (1 cup)','grams',129,1,120),(741,'granumated sugar (1/3 cup)','grams',129,1,66),(742,'baking powder (1 Tbsp)','grams',129,1,12),(743,'salt (1 tsp)','grams',129,1,4),(744,'buttermilk (1 1/2 cup)','gram',129,1,341),(745,'(beaten)','eggs',129,1,2),(746,'butter (3/4 cup)','gram',129,1,170),(851,'sliced pickles, such as Vlasic, with brine','jar',150,1,1),(852,'skinless chicken thighs','boneless,',150,1,4),(853,'Kosher salt and freshly ground black pepper',NULL,150,1,0),(854,'buttermilk','cup',150,1,1),(855,'self-rising flour (or 1 1/2 cups AP flour, 1 Tbsp baking powder, and 1 tsp kosher salt)','cups',150,2,3),(856,'peanut, vegetable, or canola oil','quart',150,1,1),(857,'hamburger buns or potato rolls, toasted','soft',150,1,4),(858,'white','egg',152,1,1),(859,'dark soy sauce','tablespoons',152,1,2),(860,'Shaoxing wine (see note)','tablespoons',152,1,2),(861,'80-proof vodka','tablespoons',152,1,2),(862,'baking soda','teaspoon',152,4,1),(863,'corn starch','tablespoons',152,1,3),(864,'boneless, skinless chicken thighs, cut into 1/2- to 3/4-inch chunks','pound',152,1,1),(865,'flour','cup',153,2,1),(866,'cornstarch','cup',153,2,1),(867,'baking powder','teaspoon',153,2,1),(868,'kosher salt','teaspoon',153,2,1),(869,'dark soy sauce','tablespoons',154,1,3),(870,'Shaoxing wine (see note)','tablespoons',154,1,2),(871,'Chinese rice vinegar or distilled white vinegar','tablespoons',154,1,2),(872,'homemade or store-bought low-sodium chicken stock','tablespoons',154,1,3),(873,'sugar','tablespoons',154,1,4),(874,'roasted sesame seed oil','teaspoon',154,1,1),(875,'corn starch','tablespoon',154,1,1),(876,'peanut, vegetable, or canola oil','teaspoons',154,1,2),(877,'minced garlic (about 2 medium cloves)','teaspoons',154,1,2),(878,'minced fresh ginger (about one 1-inch piece)','teaspoons',154,1,2),(879,'minced scallion bottoms (about 1 scallion), plus 6 to 8 scallions, white parts only, cut into 1-inch lengths','teaspoons',154,1,2),(880,'pepper, chopped','red',154,1,1),(881,'dried red Chinese or Arbol chilies (see note)','small',154,1,8),(882,'peanut, vegetable, or canola oil for deep frying','quarts',155,2,3),(883,'Steamed white rice for serving',NULL,155,1,0),(884,'fresh lemon juice','tablespoons',157,1,2),(885,'chopped fresh oregano','tablespoon',157,1,1),(886,'ground coriander seed','teaspoon',157,2,1),(887,'cloves, roughly chopped (about 1 1/2 tablespoons)','garlic',157,1,3),(888,'light olive oil','cup',157,4,1),(889,'Kosher salt and freshly ground black pepper',NULL,157,1,0),(890,'boneless, skinless chicken thighs, trimmed of excess fat (6 to 8 thighs)','pounds',157,1,2),(891,'vegetable or canola oil','tablespoon',157,1,1),(892,'unsalted butter','tablespoons',158,1,2),(893,'turmeric','teaspoon',158,2,1),(894,'ground cumin','teaspoon',158,4,1),(895,'long-grain or Basmati rice','cups',158,2,3),(896,'chicken broth','cups',158,2,5),(897,'Kosher salt and freshly ground black pepper',NULL,158,1,0),(898,'mayonnaise','cup',159,2,1),(899,'Greek yogurt','cup',159,2,1),(900,'sugar','tablespoon',159,1,1),(901,'white vinegar','tablespoons',159,1,2),(902,'lemon juice','teaspoon',159,1,1),(903,'chopped fresh parsley','cup',159,4,1),(904,'Kosher salt and freshly ground black pepper',NULL,159,1,0),(905,'iceberg lettuce, shredded','head',160,1,1),(906,'tomato, cut into wedges','large',160,1,1),(907,'Fluffy pocketless pita bread, brushed in butter, lightly toasted, and cut into 1 × 3-inch strips',NULL,160,1,0),(908,'Harissa-style hot sauce, for serving',NULL,160,1,0),(966,'ground sumac, soaked in 4 teaspoons warm water for 15 minutes','teaspoons',171,1,4),(967,'(or more) fresh lemon juice','tablespoons',171,1,3),(968,'(or more) pomegranate molasses','tablespoons',171,1,2),(969,'garlic cloves, minced','small',171,1,2),(970,'(or more) white wine vinegar','teaspoons',171,1,2),(971,'dried mint','teaspoon',171,2,1),(972,'extra-virgin olive oil','cup',171,4,3),(973,'Kosher salt',NULL,171,1,0),(974,'breads, halved, toasted until golden brown, broken into bite-size pieces','pita',172,1,16),(975,'extra-virgin olive oil','cup',172,4,1),(976,'Kosher salt',NULL,172,1,0),(977,'ripe tomatoes, chopped, or 4 cups cherry tomatoes, halved','medium',172,1,3),(978,'Persian cucumbers, or one 1-pound English hothouse cucumber, quartered lengthwise, thinly sliced crosswise','pound',172,1,1),(979,'thinly sliced','scallions,',172,1,6),(980,'Gem or baby romaine lettuces, or 1 small head romaine lettuce, trimmed, cut crosswise into 3/4-inch strips','Little',172,1,2),(981,'(loosely packed) flat-leaf parsley leaves','cups',172,1,2),(982,'purslane leaves or additional 3/4-inch-strips romaine lettuce','cups',172,1,2),(983,'fresh mint leaves','cup',172,1,1),(984,'Ground sumac (optional)',NULL,172,1,0),(994,'About 1/2 cup extra-virgin olive oil, divided',NULL,174,1,0),(995,'zucchini (about 2 medium), ends trimmed, thinly sliced crosswise between 1/8 and 1/4 inch thick','pound',174,4,3),(996,'Kosher salt',NULL,174,1,0),(997,'summer squash (about 2 medium), ends trimmed, thinly sliced crosswise between 1/8 and 1/4 inch thick','pound',174,4,3),(998,'Japanese eggplant (about 2), ends trimmed, thinly sliced crosswise between 1/8 and 1/4 inch thick','pound',174,4,3),(999,'lasagna noodles (1 box)','no-boil',174,1,15),(1000,'butter','tablespoons',174,1,3),(1001,'all-purpose flour','tablespoons',174,1,3),(1002,'whole milk','quart',174,1,1),(1003,'freshly grated Parmigiano-Reggiano cheese','ounces',174,1,2),(1004,'homemade or store-bought crushed tomatoes','quart',174,1,1),(1005,'fresh mozzarella cheese, torn into rough chunks','pound',174,4,3),(1006,'Handful of basil leaves',NULL,174,1,0),(1007,'eggs','large',175,1,4),(1008,'(106g) Double-Dutch Dark Cocoa or Dutch-process cocoa','cups',175,4,5),(1009,'salt','teaspoon',175,1,1),(1010,'baking powder','teaspoon',175,1,1),(1011,'espresso powder, optional for enhanced flavor','teaspoon',175,1,1),(1012,'vanilla extract','tablespoon',175,1,1),(1013,'(16 tablespoons, 227g) unsalted butter','cup',175,1,1),(1014,'(447g) sugar','cups',175,4,9),(1015,'(177g) All-Purpose Flour','cups',175,2,3),(1016,'(340g) chocolate chips','cups',175,1,2),(1017,' cups flour','½',177,1,2),(1018,'½ teaspoon salt',NULL,177,1,0),(1019,'Pinch of sugar',NULL,177,1,0),(1020,'Pinch of five spice powder (optional)',NULL,177,1,0),(1021,'¾ cup water',NULL,177,1,0),(1022,'soy sauce','tablespoons',178,1,2),(1023,'water','tablespoons',178,1,2),(1024,'Pinch of sugar',NULL,178,1,0),(1025,'¼ teaspoon mashed garlic (optional)',NULL,178,1,0),(1026,'oil','tablespoon',178,1,1),(1027,'chopped','scallions,',178,1,4),(1028,'salt',NULL,178,1,0),(1029,'sesame seeds','tablespoon',178,1,1),(1039,'active dry yeast (not instant)','teaspoon',180,1,1),(1040,'warm water (105 to 115 degrees)','tablespoons',180,1,2),(1041,'Pinch of sugar',NULL,180,1,0),(1042,'bread flour (285 grams or 10 ounces)','cups',180,2,5),(1043,'sugar','tablespoons',180,2,3),(1044,'salt','teaspoon',180,2,1),(1045,'unsalted butter, refrigerated (170 grams or 6 ounces)','sticks',180,2,3),(1046,'room temperature','eggs,',180,1,3),(1047,'light cream or half and half, room temperature','cup',180,4,1),(1048,'skin-on chicken breast halves (about 1 1/4 pounds; 550g)','bone-in,',181,1,2),(1049,'Kosher salt and freshly ground black pepper',NULL,181,1,0),(1050,'(30ml) lard or vegetable oil','tablespoons',181,1,2),(1051,'tomatillos, peeled (170g; about 2 medium)','ounces',181,1,6),(1052,'ripe plum tomatoes (170g; about 2 medium)','ounces',181,1,6),(1053,'garlic cloves','medium',181,1,4),(1054,'white onion, finely chopped','small',181,1,1),(1055,'dried oregano (preferably Mexican)','teaspoons',181,1,2),(1056,'leaves','bay',181,1,2),(1057,'(30ml) cider vinegar','tablespoons',181,1,2),(1058,'(475ml) homemade or store-bought low-sodium chicken stock (or water)','cups',181,1,2),(1059,'3 canned chipotle chilies in adobo sauce, plus 1 tablespoon (15ml) sauce from can','to',181,1,2),(1060,'(10ml) Asian fish sauce','teaspoons',181,1,2),(1061,'(1L) homemade or store-bought low-sodium chicken stock','quart',182,1,1),(1062,'1 1/2 ounces powdered gelatin (4 to 6 packets; 30 to 45g), such as Knox (see note)','to',182,1,1),(1063,'800g) can peeled whole tomatoes, preferably San Marzano','(28-ounce;',182,1,1),(1064,'(225g) finely minced chicken livers','pound',182,2,1),(1065,'(60ml) extra-virgin olive oil','cup',182,4,1),(1066,'(450g) ground beef chuck (about 20% fat)','pound',182,1,1),(1067,'(450g) ground pork shoulder (about 20% fat)','pound',182,1,1),(1068,'(450g) ground lamb shoulder (about 20% fat)','pound',182,1,1),(1069,'Kosher salt and freshly ground black pepper',NULL,182,1,0),(1070,'(60g) unsalted butter','tablespoons',182,1,4),(1071,'(225g) finely diced pancetta','pound',182,2,1),(1072,'onion, finely minced (about 8 ounces; 225g)','large',182,1,1),(1073,'finely chopped (about 8 ounces; 225g)','carrots,',182,1,2),(1074,'celery, finely chopped (about 8 ounces; 225g)','ribs',182,1,4),(1075,'cloves garlic, minced','medium',182,1,4),(1076,'(about 25g) minced fresh sage leaves','cup',182,4,1),(1077,'(about 50g) minced fresh parsley leaves, divided','cup',182,2,1),(1078,'(475ml) dry white or red wine','cups',182,1,2),(1079,'(235ml) whole milk','cup',182,1,1),(1080,'leaves','bay',182,1,2),(1081,'(235ml) heavy cream','cup',182,1,1),(1082,'(85g) finely grated Parmesan cheese','ounces',182,1,3),(1083,'(30ml) Vietnamese or Thai fish sauce, such as Red Boat','tablespoons',182,1,2),(1084,'russet potatoes, cut into 1/2-inch dice (about 3 large potatoes)','pound',183,1,1),(1085,'Kosher salt',NULL,183,1,0),(1086,'white vinegar','tablespoon',183,1,1),(1087,'vegetable oil, divided','tablespoons',183,1,6),(1088,'fresh Mexican chorizo or vegan Mexican chorizo','pound',183,1,1),(1089,'16 warm soft corn tortillas, for serving','to',183,1,12),(1090,'onion, minced, for serving','white',183,1,1),(1091,'chopped fresh cilantro leaves, for serving','cup',183,2,1),(1092,'Homemade or store-bought salsa verde, for serving',NULL,183,1,0),(1093,'cut into 8 wedges each, for serving','limes',183,1,2),(1094,'(30ml) vegetable oil','tablespoons',184,1,2),(1095,'fresh corn, shucked, kernels removed (about 3 cups fresh corn kernels)','ears',184,1,4),(1096,'Kosher salt',NULL,184,1,0),(1097,'(30ml) mayonnaise','tablespoons',184,1,2),(1098,'(60g) feta or Cotija cheese, finely crumbled','ounces',184,1,2),(1099,'finely sliced scallions, green parts only','cup',184,2,1),(1100,'(1/2 ounce) fresh cilantro leaves, finely chopped','cup',184,2,1),(1101,'pepper, seeded and stemmed, finely chopped','jalapeño',184,1,1),(1102,'2 medium cloves garlic, pressed or minced on a Microplane grater (about 1 to 2 teaspoons)','to',184,1,1),(1103,'(15ml) fresh juice from 1 lime','tablespoon',184,1,1),(1104,'Chili powder or hot chili flakes, to taste',NULL,184,1,0),(1116,'all-purpose flour (about 2 1/2 ounces or 75 grams)','cup',186,2,1),(1117,'granulated sugar (about 1 1/4 ounces or 40 grams)','tablespoons',186,1,3),(1118,'kosher salt','teaspoon',186,4,1),(1119,'whole milk','cup',186,1,1),(1120,'eggs, lightly beaten','large',186,1,2),(1121,'unsalted butter, melted, plus more for greasing','tablespoons',186,1,2),(1122,'kirsch (optional)','tablespoon',186,1,1),(1123,'pure vanilla extract or 1 vanilla bean, split and seeds scraped (see note)','teaspoon',186,8,1),(1124,'sweet cherries, pitted (see note)','pound',186,4,3),(1125,'Powdered sugar, for serving',NULL,186,1,0),(1126,'Whipped cream, for serving (optional)',NULL,186,1,0),(1127,'eggs','large',187,1,8),(1128,'Kosher salt',NULL,187,1,0),(1129,'(475ml) extra-virgin olive oil (see note)','cups',187,1,2),(1130,'(700g) Yukon Gold potatoes, peeled, halved, and thinly sliced crosswise','pounds',187,2,3),(1131,'(350g) yellow onions, thinly sliced','pound',187,4,3),(1132,'Allioli, for serving',NULL,187,1,0),(1140,'at room temperature','eggs',189,1,4),(1141,'(3/4) cup sugar','grams',189,1,149),(1142,'(8 tbsp) butter unsalted and melted','grams',189,1,113),(1143,'vanilla extract','tsp',189,1,1),(1144,'(3/4) cup all-purpose flour','grams',189,1,90),(1145,'(2 cups) milk lukewarm *','grams',189,1,454),(1146,'powdered sugar for dusting',NULL,189,1,0),(1147,'apricots',NULL,191,1,12),(1148,'(1 cup) wildflower honey','grams',191,1,250),(1149,'(3/4 cup) orange juice','grams',191,1,200),(1150,'(1/4 cup) lemon juice','grams',191,1,50),(1151,'sticks, broken in half','cinnamon',191,1,2),(1152,'(7 tablespoons) unsalted butter, room temperature','grams',192,1,100),(1153,'(1/2 cup) sugar','grams',192,1,100),(1154,'eggs','large',192,1,2),(1155,'(1 teaspoon) almond extract','grams',192,1,4),(1156,'(1 cup) almond flour, skin on','grams',192,1,100),(1157,'(2 1/2 teaspoons) cinnamon','grams',192,1,7),(1158,'½ tsp salt',NULL,192,1,0),(1159,'(1/3 cup) powdered sugar','grams',193,1,30),(1160,'(1 teaspoon) cinnamon','grams',193,1,3),(1161,'of Pullman bread, milk bread, or brioche, 1-4 days old','slices',194,1,8),(1162,'(2/3 cup) almonds, roughly chopped','grams',194,1,65);
/*!40000 ALTER TABLE `ingredient_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_ingredientgroup`
--

DROP TABLE IF EXISTS `ingredient_ingredientgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient_ingredientgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ingredient_ingredientgroup_title_recipe_id_368426d7_uniq` (`title`,`recipe_id`),
  KEY `ingredient_ingredien_recipe_id_ad054d9e_fk_recipe_re` (`recipe_id`),
  CONSTRAINT `ingredient_ingredien_recipe_id_ad054d9e_fk_recipe_re` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_ingredientgroup`
--

LOCK TABLES `ingredient_ingredientgroup` WRITE;
/*!40000 ALTER TABLE `ingredient_ingredientgroup` DISABLE KEYS */;
INSERT INTO `ingredient_ingredientgroup` VALUES (74,'',1),(151,'',2),(30,'',3),(45,'',4),(150,'',5),(156,'',6),(63,'',9),(67,'',10),(71,'',11),(128,'',12),(83,'',14),(101,'',15),(129,'',16),(120,'',17),(107,'',18),(116,'',19),(126,'',20),(123,'',21),(124,'',22),(180,'',23),(127,'',24),(170,'',25),(174,'',26),(175,'',27),(176,'',28),(181,'',29),(182,'',30),(183,'',31),(184,'',32),(186,'',33),(187,'',34),(189,'',35),(190,'',36),(119,'Add to filling',19),(194,'Assembly',36),(192,'Cinnamon Almond Cream',36),(193,'Cinnamon Sugar',36),(171,'Dressing',25),(111,'For serving',18),(72,'For the caramel praline (mix-in)',11),(31,'For the Chicken',3),(157,'For the chicken',6),(153,'For the Dry Coating',2),(73,'For the ice cream custard',11),(152,'For the Marinade',2),(158,'For the rice',6),(154,'For the Sauce',2),(32,'For the Sauce',3),(159,'For the sauce',6),(33,'For the Stir-Fry',3),(85,'Fritters',14),(64,'GLAZE',9),(46,'Jamaican curry powder',4),(84,'Lemony Yogurt',14),(65,'MEATLOAVES',9),(108,'Optional Herbs/Spices',18),(109,'Optional Protein',18),(117,'Optional Protein',19),(110,'Optional Veggies',18),(118,'Optional Veggies',19),(177,'Pancakes',28),(66,'POTATOES',9),(191,'Roasted Apricots',36),(172,'Salad',25),(178,'Sauce',28),(155,'To Finish',2),(160,'To serve',6);
/*!40000 ALTER TABLE `ingredient_ingredientgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryitem`
--

DROP TABLE IF EXISTS `list_groceryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `title` varchar(550) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryitem_list_id_391cb674_fk_list_grocerylist_id` (`list_id`),
  CONSTRAINT `list_groceryitem_list_id_391cb674_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryitem`
--

LOCK TABLES `list_groceryitem` WRITE;
/*!40000 ALTER TABLE `list_groceryitem` DISABLE KEYS */;
INSERT INTO `list_groceryitem` VALUES (4,4,0,'1 pound boneless, skinless chicken thighs, cut into 1/2- to 3/4-inch chunks',0),(5,5,0,'2 tablespoons dark soy sauce',0),(6,5,0,'8 small dried red Chinese or Arbol chilies (see note)',0),(7,4,0,'16 to 20 ounces ground beef, divided into four 4-ounce portions (see note)',0),(8,5,0,'Szechuan pepper',0),(9,5,0,'5 spice powder',0),(10,5,0,'Mexican oregano',0),(11,5,0,'chipotle',0),(12,5,0,'achiote',0),(13,5,0,'Sweet paprika',0),(14,5,0,'aleppo pepper',0),(15,5,0,'gochujang',0),(16,5,0,'gochugaro',0),(17,5,0,'ponzu',0),(18,5,0,'soba noodles',0),(19,5,0,'1 Tbsp fenugreek seed',0),(20,5,0,'1 tsp white pepper (or black)',0);
/*!40000 ALTER TABLE `list_groceryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_grocerylist`
--

DROP TABLE IF EXISTS `list_grocerylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_grocerylist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_grocerylist_slug_620f0a87` (`slug`),
  KEY `list_grocerylist_author_id_edd4c434_fk_auth_user_id` (`author_id`),
  CONSTRAINT `list_grocerylist_author_id_edd4c434_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_grocerylist`
--

LOCK TABLES `list_grocerylist` WRITE;
/*!40000 ALTER TABLE `list_grocerylist` DISABLE KEYS */;
INSERT INTO `list_grocerylist` VALUES (4,'June 8-14: St James','june-8-14-st-james','2020-06-06 23:59:20.713499',1),(5,'Kensington/Chinatown','kensingtonchinatown','2020-06-06 23:59:40.170460',1);
/*!40000 ALTER TABLE `list_grocerylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryshared`
--

DROP TABLE IF EXISTS `list_groceryshared`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryshared` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `shared_by_id` int(11) NOT NULL,
  `shared_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryshared_list_id_47feb2f7_fk_list_grocerylist_id` (`list_id`),
  KEY `list_groceryshared_shared_by_id_b214e597_fk_auth_user_id` (`shared_by_id`),
  KEY `list_groceryshared_shared_to_id_1d668c2f_fk_auth_user_id` (`shared_to_id`),
  CONSTRAINT `list_groceryshared_list_id_47feb2f7_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`),
  CONSTRAINT `list_groceryshared_shared_by_id_b214e597_fk_auth_user_id` FOREIGN KEY (`shared_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `list_groceryshared_shared_to_id_1d668c2f_fk_auth_user_id` FOREIGN KEY (`shared_to_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryshared`
--

LOCK TABLES `list_groceryshared` WRITE;
/*!40000 ALTER TABLE `list_groceryshared` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_groceryshared` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menuitem`
--

DROP TABLE IF EXISTS `menu_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `complete_date` datetime(6) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `complete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_menuitem_recipe_id_7c12dfbd_fk_recipe_recipe_id` (`recipe_id`),
  KEY `menu_menuitem_author_id_2ed2f017_fk_auth_user_id` (`author_id`),
  CONSTRAINT `menu_menuitem_author_id_2ed2f017_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `menu_menuitem_recipe_id_7c12dfbd_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menuitem`
--

LOCK TABLES `menu_menuitem` WRITE;
/*!40000 ALTER TABLE `menu_menuitem` DISABLE KEYS */;
INSERT INTO `menu_menuitem` VALUES (1,9,'2020-06-06 23:51:09.663385','2020-06-10 04:00:00.000000',1,1),(2,2,NULL,'2020-06-09 04:00:00.000000',1,0),(3,4,NULL,'2020-06-11 04:00:00.000000',1,0),(4,10,NULL,'2020-06-10 04:00:00.000000',1,0);
/*!40000 ALTER TABLE `menu_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `frontpage` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_rating`
--

DROP TABLE IF EXISTS `rating_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(250) NOT NULL,
  `rating` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rating_rating_author_id_a1fde11d_fk_auth_user_id` (`author_id`),
  KEY `rating_rating_recipe_id_be7cfa06_fk_recipe_recipe_id` (`recipe_id`),
  CONSTRAINT `rating_rating_author_id_a1fde11d_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `rating_rating_recipe_id_be7cfa06_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_rating`
--

LOCK TABLES `rating_rating` WRITE;
/*!40000 ALTER TABLE `rating_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_course`
--

DROP TABLE IF EXISTS `recipe_groups_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_groups_course_author_id_e2d6c656_fk_auth_user_id` (`author_id`),
  CONSTRAINT `recipe_groups_course_author_id_e2d6c656_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_course`
--

LOCK TABLES `recipe_groups_course` WRITE;
/*!40000 ALTER TABLE `recipe_groups_course` DISABLE KEYS */;
INSERT INTO `recipe_groups_course` VALUES (1,'Bread','bread',1),(2,'Main','main',1),(3,'Dessert','dessert',1),(5,'Side','side',1),(6,'Soup','soup',1);
/*!40000 ALTER TABLE `recipe_groups_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_cuisine`
--

DROP TABLE IF EXISTS `recipe_groups_cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_cuisine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_groups_cuisine_author_id_704782fa_fk_auth_user_id` (`author_id`),
  CONSTRAINT `recipe_groups_cuisine_author_id_704782fa_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_cuisine`
--

LOCK TABLES `recipe_groups_cuisine` WRITE;
/*!40000 ALTER TABLE `recipe_groups_cuisine` DISABLE KEYS */;
INSERT INTO `recipe_groups_cuisine` VALUES (1,'Baking','baking',1),(2,'Chinese','chinese',1),(3,'Curry','curry',1),(4,'Sandwich','sandwich',1),(5,'Indian','indian',1),(7,'White','white',1),(8,'Frozen','frozen',1),(10,'Italian','italian',1),(11,'Mexican','mexican',1),(12,'Salad','salad',1),(13,'Japanese','japanese',1),(14,'Breakfast','breakfast',1),(15,'Spanish','spanish',1);
/*!40000 ALTER TABLE `recipe_groups_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_tag`
--

DROP TABLE IF EXISTS `recipe_groups_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_tag`
--

LOCK TABLES `recipe_groups_tag` WRITE;
/*!40000 ALTER TABLE `recipe_groups_tag` DISABLE KEYS */;
INSERT INTO `recipe_groups_tag` VALUES (1,'bread','bread'),(2,'chinese','chinese'),(3,'fried untried','fried-untried'),(4,'wok','wok'),(5,'curry','curry'),(6,'fried','fried'),(7,'winter meat wpd potoo','winter-meat-wpd-potoo'),(8,'meat potoo winter wpd','meat-potoo-winter-wpd'),(9,'wpd meat winter potoo','wpd-meat-winter-potoo'),(10,'meat grill','meat-grill'),(11,'frozen','frozen'),(12,'vegetarian','vegetarian'),(13,'easy fast winter','easy-fast-winter'),(14,'fast easy pasta vegetarian','fast-easy-pasta-vegetarian'),(15,'fast easy vegetarian pantry','fast-easy-vegetarian-pantry'),(16,'easy fast winter pantry','easy-fast-winter-pantry'),(17,'healthy summer vegetarian fast easy','healthy-summer-vegetarian-fast-easy'),(18,'easy fast pantry vegetarian','easy-fast-pantry-vegetarian'),(19,'vegetarian healthy easy','vegetarian-healthy-easy'),(20,'winter','winter'),(21,'healthy fresh fast summer untried','healthy-fresh-fast-summer-untried'),(22,'healthy fresh fast summer untried vegetarian','healthy-fresh-fast-summer-untried-vegetarian'),(23,'summer vegetarian','summer-vegetarian'),(24,'untried','untried'),(25,'easy summer','easy-summer'),(26,'summer vegetarian easy fast','summer-vegetarian-easy-fast');
/*!40000 ALTER TABLE `recipe_groups_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_recipe`
--

DROP TABLE IF EXISTS `recipe_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `info` longtext NOT NULL,
  `prep_time` int(11) NOT NULL,
  `cook_time` int(11) NOT NULL,
  `servings` int(11) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `cuisine_id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `directions` longtext NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_recipe_author_id_76879012_fk_auth_user_id` (`author_id`),
  KEY `recipe_recipe_course_id_36ea1d30_fk_recipe_groups_course_id` (`course_id`),
  KEY `recipe_recipe_cuisine_id_74ec31bb_fk_recipe_groups_cuisine_id` (`cuisine_id`),
  CONSTRAINT `recipe_recipe_author_id_76879012_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `recipe_recipe_course_id_36ea1d30_fk_recipe_groups_course_id` FOREIGN KEY (`course_id`) REFERENCES `recipe_groups_course` (`id`),
  CONSTRAINT `recipe_recipe_cuisine_id_74ec31bb_fk_recipe_groups_cuisine_id` FOREIGN KEY (`cuisine_id`) REFERENCES `recipe_groups_cuisine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_recipe`
--

LOCK TABLES `recipe_recipe` WRITE;
/*!40000 ALTER TABLE `recipe_recipe` DISABLE KEYS */;
INSERT INTO `recipe_recipe` VALUES (1,'No-Knead Bread','no-knead-bread','upload/recipe_photos/20200419-no-knead-bread-vicky-wasik2.jpg','Better results with 10g salt and 300g water',15,20,1,'2020-06-06 05:00:00.000000','2020-06-07 00:17:52.133304',1,1,1,'https://www.seriouseats.com/recipes/2011/06/better-no-knead-bread-recipe.html','Combine flour, salt, and yeast in a large bowl and whisk to combine. Add water and stir with a wooden spoon until no dry flour remains. Cover bowl tightly with plastic wrap and let sit at room temperature for at least 12 and up to 24 hours.\n\nTransfer container to refrigerator and let sit for at least 3 and up to 5 days.\n\nRemove dough from refrigerator and turn out onto well-floured surface. Turn once or twice and form into loaf shape. Cover with a well-floured kitchen towel and allow to rise at room temperature for at least two hours, and up to 4.\n\nMeanwhile, adjust oven rack to lower middle position and preheat oven to 450°F, with a heavy cast-iron or stainless steel Dutch oven placed inside it.\n\nWhen dough has risen, slash top with a floured knife into two or three slashes, 1/2 inch deep. Remove Dutch oven from oven and working quickly, drop dough inside. Place lid back on Dutch oven and return to oven. Bake for 15 minutes, then remove lid and continue to bake until center of bread registers 209°F on an instant read thermometer, about 30 to 45 minutes longer (time will vary depending on shape of loaf).\n\nRemove Dutch oven from oven and remove loaf of bread with a spatula or tongs. Allow to rest on a wire rack for at least 15 minutes before slicing and serving. Unused bread can be stored at room temperature wrapped in foil for up to three days, though it may need to be refreshed in a hot oven or toaster before serving.',1),(2,'General Tso\'s Chicken','general-tsos-chicken','upload/recipe_photos/20140328-general-tsos-chicken-recipe-food-lab-1.jpg','',45,20,4,'2020-06-06 05:00:00.000000','2020-06-07 03:13:22.870469',1,2,2,'https://www.seriouseats.com/recipes/2014/04/the-best-general-tsos-chicken-food-lab-chinese-recipe.html','For the Marinade: \nBeat egg whites in a large bowl until broken down and lightly foamy. Add soy sauce, wine, and vodka and whisk to combine. Set aside half of marinade in a small bowl. Add baking soda and corn starch to the large bowl and whisk to combine. Add chicken to large bowl and turn with fingers to coat thoroughly. Cover with plastic wrap and set aside.\n\n\nFor the Dry Coating: \nCombine flour, corn starch, baking powder, and 1/2 teaspoon salt in a large bowl. Whisk until homogenous. Add reserved marinade and whisk until mixture has coarse, mealy clumps. Set aside.\n\n\nFor the Sauce: \nCombine soy sauce, wine, vinegar, chicken stock, sugar, sesame seed oil, and cornstarch in a small bowl and stir with a fork until cornstarch is dissolved and no lumps remain. Set aside.\n\nCombine oil, garlic, ginger, minced scallions, and red chilies in a large skillet and place over medium heat. Cook, stirring, until vegetables are aromatic and soft, but not browned, about 3 minutes. Stir sauce mixture and add to skillet, making sure to scrape out and sugar or starch that has sunk to the bottom. Cook, stirring, until sauce boils and thickens, about 1 minute. Add scallion segments. Transfer sauce to a bowl to stop cooking, but don\'t wipe out skillet.\n\n\nTo Finish: \nHeat 1 1/2 quarts peanut, vegetable, or canola oil in a large wok or Dutch oven to 350°F and adjust flame to maintain temperature.\n\nWorking one piece at a time, transfer chicken from marinade to dry coat mixture, tossing in between each addition to coat chicken. When all chicken is added to dry coat, toss with hands, pressing dry mixture onto chicken so it adheres, and making sure that every piece is coated thoroughly.\n\nLift chicken one piece at a time, shake off excess coating, and carefully lower into hot oil (do not drop it). Once all chicken is added, cook, agitating with long chopsticks or a metal spider, and adjusting flame to maintain a temperature of 325 to 375°F, until chicken is cooked through and very crispy, about 4 minutes. Transfer chicken to a paper towel-lined bowl to drain.\n\nAdd chicken to empty skillet and return sauce to skillet. Toss chicken, folding it with a rubber spatula until all pieces are thoroughly coated. Serve immediately with white rice.',1),(3,'Kung Pao Chicken','kung-pao-chicken','upload/recipe_photos/20170821-kung-pao-chicken-gong-bao-ji-ding-food-lab-2-02.jpg','',30,10,4,'2020-06-06 22:34:13.020880','2020-06-06 22:34:13.345410',1,2,2,'https://www.seriouseats.com/recipes/2017/08/gong-bao-ji-ding-sichuan-kung-pow-chicken-recipe.html','For the Chicken: \nCombine chicken, wine, soy sauce, cornstarch, and salt in a small bowl and turn until well mixed and chicken is evenly coated in a thin film of the cornstarch paste. Set aside.\n\nFor the Sauce: \nCombine honey, vinegar, wine, soy sauce, and cornstarch in a small bowl. Stir together with a fork until no clumps of cornstarch remain.\n\nTo Stir-Fry: \nPour a small amount of oil into the bottom of a large wok or skillet and rub around with a paper towel. Place over high heat and preheat until smoking. Add remaining oil and immediately add chiles and Sichuan peppercorns. Stir-fry until fragrant but not burnt, about 5 seconds. Immediately add chicken and stir-fry until there are no longer pink spots on the exterior (chicken will still be raw in center at this stage), 45 seconds to 1 1/2 minutes.\n\nAdd garlic and ginger and stir-fry until fragrant, about 10 seconds. Add scallions and peanuts and stir-fry for 30 seconds.\n\nAdd sauce ingredients and stir-fry until all the ingredients are coated evenly and the chicken is cooked through, about 1 minute, adding water 1 tablespoon at a time if necessary to keep the sauce from clumping. Serve immediately with steamed white rice.',1),(4,'Jamaican Black-Eyed Peas Curry','jamaican-black-eyed-peas-curry','upload/recipe_photos/Jamaican-black-eyed-pea-curry-2.jpg','',15,45,8,'2020-06-06 05:00:00.000000','2020-06-06 22:59:44.858088',1,2,3,'https://www.thecuriouschickpea.com/jamaican-black-eyed-pea-curry/','Heat a pot over medium heat, and add the oil, onion, and garlic. Sauté until the onion is soft, about 5-7 minutes.\n\nAdd the scotch bonnet or habanero peppers, thyme, curry powder, black pepper, and 1 teaspoon of salt. Stir to coat everything in curry powder and let cook about 30 seconds. Add the potatoes and sauté for 1 minute. Then add the black-eyed peas and water. Partially cover, bring to a simmer and let cook until the potatoes are just fork tender, about 12-15 minutes.\n\nAdd the coconut milk and continue to simmer with the lid off for 15 minutes to reduce and meld the flavors. Turn off the heat and add the lime juice. Taste and add salt to taste.\n\nJamaican curry powder: In a dry skillet toast over low heat  cumin seed, whole mustard seed, and coriander seed along with  fenugreek seed and allspice berries (or substitute ground allspice in next step) until fragrant, 3-5 minutes. Grind the toasted spices in a spice grinder or mortar and pestle. Then mix in ground ginger and white pepper (or black) along with ground turmeric. Store in an airtight container until ready to use.',1),(5,'5-Ingredient Fried Chicken Sandwich','5-ingredient-fried-chicken-sandwich','upload/recipe_photos/20150815-five-ingredient-chicken-sandwich-16.jpg','',30,20,6,'2020-06-06 05:00:00.000000','2020-06-07 03:12:04.845970',1,2,4,'https://www.seriouseats.com/recipes/2015/08/five-ingredient-fried-chicken-sandwich-recipe.html','Pour 3/4 cup pickle juice out of pickle jar into a cup. Reserve pickles.\nSeason chicken generously with salt and pepper. Place in a plastic zipper-lock bag. Pour in pickle juice. Seal bag, pressing out as much air as possible. Refrigerate and let chicken soak in pickle juice for at least 1 hour and up to 12 hours.\nWhen ready to fry, remove chicken from bag and discard pickle juice. Pat chicken dry with paper towels. Pour buttermilk into a medium bowl. Add flour and 1 tablespoon pepper to a second bowl. Transfer 3 tablespoons of buttermilk to bowl with flour and work it into the flour with your fingertips.\nTransfer chicken to bowl with buttermilk and turn to coat. Working with one piece at a time, remove chicken from buttermilk, allowing excess to drip off. Add chicken to bowl with flour and turn, lifting the flour on top of it and pressing it down firmly until a thick, shaggy layer of flour has stuck to the chicken. Transfer to a plate and repeat with remaining chicken pieces.\nHeat oil in a wok, deep cast iron skillet, or Dutch oven to 425°F using a frying thermometer or an instant-read thermometer. Carefully lower chicken pieces into the hot oil; temperature will drop. Adjust flame to maintain a temperature of between 300 and 350°F. Cook without moving until well browned on first side, about 2 minutes. Flip chicken carefully using tongs and a slotted spatula and cook until second side is browned and chicken is fully cooked, 2 to 3 minutes longer. Transfer to a paper towel–lined plate.\nPlace bottom buns on a work surface and top with a few pickles each. Top with fried chicken, followed by top buns. Serve immediately.',1),(6,'Halal Cart Chicken','halal-cart-chicken','upload/recipe_photos/320200406-halal-chicken-rice-vicky-wasik.jpg','',15,45,4,'2020-06-06 05:00:00.000000','2020-06-07 03:14:26.704220',1,2,5,'https://www.seriouseats.com/recipes/2011/12/serious-eats-halal-cart-style-chicken-and-rice-white-sauce-recipe.html','For the chicken:\nCombine the lemon juice, oregano, coriander, garlic, and olive oil in a blender. Blend until smooth. Season the marinade to taste with kosher salt and black pepper. Place the chicken in a 1-gallon zipper-lock bag and add half of the marinade (reserve the remaining marinade in the refrigerator). Turn the chicken to coat, seal the bag, and marinate the chicken in the refrigerator for at least 1 hour and up to 4 hours, turning occasionally to redistribute the marinade.\n\nRemove the chicken from the bag and pat it dry with paper towels. Season with kosher salt and pepper, going heavy on the pepper. Heat the oil in a 12-inch heavy-bottomed cast iron or stainless-steel skillet over medium-high heat until it is lightly smoking. Add the chicken pieces and cook without disturbing until they are lightly browned on the first side, about 4 minutes. Using tongs, flip the chicken. Reduce the heat to medium and cook until the chicken is cooked through and the center of each thigh registers 165°F. on an instant-read thermometer, about 6 minutes longer. Transfer the chicken to a cutting board and allow to cool for 5 minutes.\n\nUsing a chef’s knife, roughly chop the chicken into 1/2- to 1/4-inch chunks. Transfer to a medium bowl, add the remaining marinade, cover loosely with plastic, and refrigerate while you cook the rice and prepare the sauce.\n\n\nFor the rice:\nMelt the butter over medium heat in a large Dutch oven. Add the turmeric and cumin and cook until fragrant but not browned, about 1 minute. Add the rice and stir to coat. Cook, stirring frequently, until the rice is lightly toasted, about 4 minutes. Add the chicken broth. Season to taste with salt and pepper. Raise the heat to high and bring to a boil. Cover, reduce to a simmer, and cook for 15 minutes without disturbing. Remove from the heat and allow to rest until the water is completely absorbed and the rice is tender, about 15 minutes.\n\n\nFor the sauce:\nIn a small bowl, combine the mayonnaise, yogurt, sugar, vinegar, lemon juice, parsley, and 2 teaspoons black pepper. Whisk to combine. Season to taste with salt.\n\n\nTo serve:\nReturn the entire contents of the chicken bowl (chicken, marinade, and all juices) to the skillet. Cook over medium-high heat, stirring occasionally, until heated through. To serve, divide the rice, lettuce, tomato, and toasted pita bread evenly among four to six plates. Pile the chicken on top of the rice. Top with the white sauce and hot sauce. Serve immediately, passing extra sauce at the table.',1),(9,'Tomato-Glazed Meatlof With Brown Butter Mashed Potatoes','tomato-glazed-meatlof-with-brown-butter-mashed-pot','upload/recipe_photos/tomato-glazed-meatloaves-with-brown-butter-mashed-potatoes_c37UpqG.jpg','',45,25,6,'2020-06-06 23:49:06.356491','2020-06-06 23:49:06.576949',1,2,7,'https://smittenkitchen.com/2017/02/tomato-glazed-meatloaves-with-brown-butter-mashed-potatoes/','Make the glaze: Combine glaze ingredients in a small saucepan, and simmer, whisking constantly, for 2 minutes until and glaze is satiny smooth. Set aside.\nPrepare the meatloaves: Heat your oven to 350 degrees F. Lightly coat 2 9×13-inch baking dishes with nonstick spray or oil. Tear the bread into chunks and then blend it, in a food processor, into breadcrumbs. Place the breadcrumbs in a large bowl. You should have about 1 cup.\n\nAdd the onion, garlic, celery, and carrot to the food processor, and pulse it until they are finely chopped. Heat a large skillet over medium heat. Once the skillet is hot, coat the bottom with olive oil, and heat the oil for a minute; add the finely chopped vegetables. Season with salt and pepper, and cook, stirring frequently, until they begin to brown, about 10 minutes.\n\nAdd the vegetables to the large bowl with breadcrumbs, then add the remaining ingredients. Stir the ingredients together with a fork or your hands until evenly blended.\n\nPause for a moment to start mashed potatoes: Place the potatoes in a medium pot, and cover with a couple inches of cold water. Bring to a boil over high heat, and once it’s boiling, reduce the heat to a simmer. Cook for about 20 minutes once the simmering begins; the potatoes are ready when a paring knife or fork can be inserted into the center with little resistance. Drain potatoes, then wipe the pot dry.\n\nResume your meatloaves while the potatoes boil: Form the meatloaf mixture into twelve 3-inch meatballs; each will weigh about 4 ounces. Arrange 6 in each prepared baking pan, evenly. Drizzle or brush each meatball with a teaspoon or so of the tomato glaze you made earlier, and bake until cooked through, about 20 to 25 minutes (an instant-read thermometer inserted into the center of a cooked meatball will register 160 to 165F).\n\nFinish mashed potatoes: As soon as you can hold them (I use potholders), peel your potatoes. The skins should come right off with a paring knife. Run the potatoes through a potato ricer or mash them with a masher until smooth. In your empty potato pot, melt butter over medium heat and continue cooking once it has melted, stirring almost constantly, until brown bits form around edge and bottom and it smells nutty. Pour the hot butter and any browned bits over the potatoes. Add buttermilk to pot and warm it gently (so it doesn’t cool down your potatoes when you add it). Pour this over the potatoes too. Add salt and pepper and stir to combine.\n\nTo serve: Place a dollop of potatoes in the bottom of a plate or shallow bowl. Top with a meatloaf. Garnish with extra chopped parsley, if desired.',1),(10,'Classic Smashed Burgers','classic-smashed-burgers','upload/recipe_photos/20120914-smashed-burgers-10.jpg','',10,10,4,'2020-06-06 23:56:28.267640','2020-06-06 23:56:28.408551',1,2,7,'https://www.seriouseats.com/recipes/2012/09/classic-smashed-burgers-recipe.html','Add oil to a 12-inch stainless steel or cast iron skillet and wipe around with a paper towel. Set skillet over medium heat and allow to preheat for about 5 minutes. Meanwhile, gently form each portion of ground beef into a cylindrical puck about 2 inches tall, pressing together just until meat holds its shape without falling apart. Season generously on all sides with salt and pepper.\n\nIncrease heat to high until skillet is smoking. Add pucks to skillet and using a firm, stiff metal spatula, press down on each one until they\'re roughly 4 to 4 1/2-inches in diameter and 1/2-inch thick. It helps to use a second spatula to apply downward pressure to the first if you are having trouble smashing them hard enough.\n\nCook without moving until a golden brown crust develops, about 1 1/2 minutes. Use the edge of the spatula to carefully scrape up and flip the patties one at a time, making sure to get all browned bits removed from the skillet. If using cheese, add now.\n\nContinue to cook until patties are cooked to desired doneness—about 30 seconds longer for medium rare. Top buns or patties as desired, transfer patties to buns, close burgers, and serve.',1),(11,'Salted Butter Caramel Ice Cream','salted-butter-caramel-ice-cream','upload/recipe_photos/Salted-butter-caramel-ice-cream-recipe-5-640x884.jpg','Be sure to use good salt. I use fleur de sel, but if you don’t have it, a mild-tasting sea salt will do in a pinch, such as Maldon, fine gray salt, or kosher salt. Don’t use ordinary fine table salt; it’s far too harsh. In step 6, all of the caramel may not dissolve. Stirring it over very low heat should melt any stubborn bits. If not, don’t worry; they’ll be strained out later. Because of the caramel in this ice cream, once churned and frozen, it’ll remain nice & creamy. As noted, this is an update from a previous recipe which had 1 1/2 cups (300g) for sugar in the caramel custard, which some readers reported made the finished ice cream quite soft. I reduced it by 1/4 cup (50g). But if you like the caramel flavor stronger, you’re welcome to use 1 1/2 cups of sugar in step #5.',30,30,8,'2020-06-06 05:00:00.000000','2020-06-07 00:16:35.030129',1,3,8,'https://www.davidlebovitz.com/salted-butter-c/','To make the caramel praline, spread the ½ cup (100g) of sugar in an even layer in a medium-sized, unlined heavy duty saucepan: I use a 6 quart/liter pan. Line a baking sheet with a silicone baking mat or brush it sparingly with unflavored oil.\n\nHeat the sugar over moderate heat until the edges begin to melt. Use a heatproof utensil to gently stir the liquefied sugar from the bottom and edges towards the center, stirring, until all the sugar is dissolved. (Or most of it—there may be some lumps, which will melt later.) Continue to cook stirring infrequently until the caramel starts smoking and begins to smell like it’s just about to burn. It won’t take long.\n\nWithout hesitation, sprinkle in the ¾ teaspoon salt without stirring, then pour the caramel onto the prepared baking sheet and lift up the baking sheet immediately, tilting and swirling it almost vertically to encourage the caramel to form as thin a layer as possible. Set aside to harden and cool.\n\nTo make the ice cream, make an ice bath by filling a large bowl about a third full with ice cubes and adding a cup or so of water so they’re floating. Nest a smaller metal bowl (at least 2 quarts/liters) over the ice, pour 1 cup (250ml) of the milk into the inner bowl, and rest a mesh strainer on top of it. Warm the cream in a small saucepan or microwave oven and set aside.\n\nSpread the 1 1/4 cup (250g) sugar in a large saucepan, with a capacity of at least 4qts/4l, in an even layer. Cook over moderate heat, until caramelized, using the same method described in Step #2.\n\nOnce caramelized, remove from heat and stir in the butter and salt, until butter is melted, then gradually whisk in the warm cream, about 1/4 cup at a time, stirring as you go. The caramel may harden and seize, but stirring it over low heat should encourage those bits to melt. (A few bits may be stubborn, which will dissolve or can be strained out later.) Stir in the remaining 1 cup (250ml) of the milk.\n\nWhisk the yolks in a small bowl and gradually pour some of the warm caramel mixture over the yolks, stirring constantly. Scrape the warmed yolks back into the saucepan and cook the custard using a heatproof utensil, stirring constantly and scraping the bottom as you stir, until the mixture thickens. If using an instant-read thermometer, it should read 160-170ºF (71-77ºC).\n\nPour the custard through the strainer into the milk set over the ice bath, add the vanilla, then stir frequently until the mixture is cooled down. Refrigerate at least 8 hours or until thoroughly chilled.',1),(12,'Saltine Candy','saltine-candy','upload/recipe_photos/qwe_download.jpg','',10,10,6,'2020-06-06 05:00:00.000000','2020-06-07 03:06:49.302177',1,3,7,'','Simmer butter & sugar for 3 minutes\n\nBake at 400F for 5 minutes\n\nSprinkle chocolate chips and spread\n\nRefrigerate until firm',1),(14,'Zucchini-Lentil Fritters with Lemony Yogurt','zucchini-lentil-fritters-with-lemony-yogurt','upload/recipe_photos/0919_HLY_Zucchini_Bhaji-16x9_0TBS3W9.jpg','',45,30,4,'2020-06-06 05:00:00.000000','2020-06-07 02:05:16.219044',1,5,5,'https://www.bonappetit.com/recipe/zucchini-lentil-fritters-with-lemony-yogurt','Lemony Yogurt:\n\nWhisk yogurt, lemon juice, and sugar in a small bowl to combine. Season with salt and whisk again to combine.\n\nFritters:\n\n    Rinse lentils, then soak in 2 cups water at room temperature at least 1 hour and up to 12. Soaking the lentils for this long will make them super-plump and tender, which in turn makes them a lot easier to blend.\n\n    Meanwhile, trim ends of zucchini and cut crosswise into 3 pieces about 2\" long. Cut each piece lengthwise into ¼\"-thick planks. Stack a few planks and slice lengthwise into ¼\"-thick matchsticks (about the size of a skinny french fry). Transfer zucchini to a colander set in a medium bowl. Add onion and 1 tsp. salt to colander and toss to combine. Let zucchini and onion sit until about 1 Tbsp. liquid has released and the vegetables look wilted and soft, 30 minutes–2 hours (to maximize your downtime, do this while the lentils are soaking). Gently pat dry with paper towels to remove any excess moisture. The less moisture in the veggies, the less soggy your fritters will be, so be sure not to skip this step.\n\n    Drain lentils and transfer to a food processor. Add chile powder, turmeric, and ¾ tsp. salt. Pulse, scraping down sides, until a purée forms. Transfer to a medium bowl and add zucchini and onion mixture, parsley, and lemon zest. Toss well with a rubber spatula to combine (it will look like too much vegetables for the lentils, but that’s just what you want).\n\n    Heat ghee in a 10\" cast-iron skillet over medium-high until a small amount of batter added to the fat excitedly sizzles and sputters. Carefully drop ¼ cup batter into ghee, then flatten to a pancake with the back of a large metal spoon dipped into the hot ghee to prevent sticking. Repeat 3 times for a total of 4 fritters. Fry until deep golden brown on one side (look for the color of a well-fried falafel), about 3 minutes. Turn with a slotted spatula or large spoon and continue to fry until deep golden brown on the second side, about 3 minutes more. Transfer fritters to a wire rack set in a paper towel-lined baking sheet to drain. Season immediately with salt. Repeat with remaining batter (you should have 8–10 fritters).\n\n    Transfer fritters to a platter. Serve hot with lemony yogurt alongside.',1),(15,'Roasted Aloo Gobi','roasted-aloo-gobi','upload/recipe_photos/aloo-gobhi_O82BI4E.jpg','',30,30,4,'2020-06-06 05:00:00.000000','2020-06-07 02:10:35.944049',1,5,5,'https://www.bonappetit.com/recipe/roasted-aloo-gobi-potatoes-and-cauliflower','    Preheat oven to 400°. Line a rimmed baking sheet with foil. Toss potatoes and cauliflower with 3 Tbsp. oil on prepared sheet. Spread in an even layer and roast, tossing once halfway through, until cauliflower and potatoes are browned and slightly crisped, about 30 minutes. Let cool.\n\n    Meanwhile, heat remaining 2 Tbsp. oil in a large skillet over medium-high until it begins to shimmer. Add cumin and cook, stirring frequently, until they turn a medium shade of brown, about 1 minute. Reduce heat to medium and swirl in turmeric. Add onion and cook, stirring frequently, until translucent, 4–6 minutes. Add ginger, asafetida (if using), and chili powder and cook, stirring, until heated through and well combined, about 1 minute longer.\n\n    Stir in roasted potatoes and cauliflower, including any charred bits from the foil, and gently mix (don’t overmix, or the cauliflower will fall apart). Add salt and cook, tossing occasionally, until potatoes and cauliflower are tender (but not soggy!), 5–6 minutes. Remove from heat and add lime juice. Taste and add more lime juice or salt, if needed.\n\n    Transfer potatoes and cauliflower to a platter. Top with cilantro.',1),(16,'Cornbread','cornbread','upload/recipe_photos/qwe_download_XPdw0NZ.jpg','',15,25,6,'2020-06-06 05:00:00.000000','2020-06-07 03:07:50.293258',1,5,1,'','Combine conrmeal, flour, sugar, baking powder, and salt.\n\nLightly beat together buttermilk, eggs, and butter.\n\nMix wet ingredients lightly into dry.\n\nPlace in 400F oven. If using 9\" square pan, 20-25 minutes. If making muffins, 15-20.',1),(17,'Pasta e Fagioli','pasta-e-fagioli','upload/recipe_photos/20111218-easy-bean-soup-pasta-fagioli-primary-2.jpg','',20,10,4,'2020-06-06 05:00:00.000000','2020-06-07 02:39:08.672097',1,6,10,'https://www.seriouseats.com/recipes/2012/01/30-minute-pasta-and-kidney-bean-soup-pasta-e-fagioli-recipe.html','Pour the tomatoes into a medium bowl and using hands, squeeze each tomato through your fingers to break it up into small pieces (be careful, they can squirt). Set aside.\n\nHeat olive oil and butter in a large saucepan over medium-high heat until butter is melted. If using pancetta, add to pan and cook, stirring constantly until fragrant, about 2 minutes. Reduce heat to medium and add onion, garlic, oregano, and red pepper flakes. Cook, stirring constantly until fragrant and softened but not browned, about 3 minutes. Add tomatoes and their juice, chicken broth, kidney beans, and bay leaves. Bring to a boil over high heat then reduce to a bare simmer. Cook for 20 minutes, adding pasta to soup for the last 5 to 10 minutes (depending on the package directions). Season to taste with salt and pepper. Discard bay leaves, stir in parsley and serve, drizzling each serving with extra-virgin olive oil at the table.',1),(18,'Blistered Cherry Tomato Pasta ','blistered-cherry-tomato-pasta-sauce','upload/recipe_photos/20160827-cherry-tomato-pasta-12-750x563.jpg','',20,5,4,'2020-06-06 05:00:00.000000','2020-06-07 02:21:38.605574',1,2,10,'https://www.seriouseats.com/recipes/2016/08/fast-easy-pasta-blistered-cherry-tomato-sauce-recipe.html','Chop and prep all veggies. Roast or sauté as needed (e.g. onions, peppers, zucchini, etc.)\n\nPlace pasta in a large skillet or sauté pan and cover with water and a big pinch of salt. Bring to a boil over high heat, stirring occasionally. Boil until just shy of al dente, about 1 minute less than the package instructions recommend. Drain, reserving 1/2 cup of pasta water. \n\nMeanwhile, heat garlic and 4 tablespoons (60ml) olive oil in a 12-inch skillet over medium heat, stirring frequently, until garlic is softened but not browned, about 3 minutes. Add red pepper flakes if using. Add tomatoes and cook, stirring, until tomatoes begin to burst. You can help them along by pressing on them with the back of a wooden spoon as they soften.\n\nAdd cooked or raw veggies. Add pasta water and pasta. Toss to coat. \n\nTop with black pepper and optional basil, cheese, and/or lemon juice.',1),(19,'Quesadillas','quesadillas','upload/recipe_photos/20170131-quesadillas-three-variations-a-4-spinach.jpg','',20,10,2,'2020-06-06 05:00:00.000000','2020-06-07 02:38:25.708131',1,2,11,'https://www.seriouseats.com/2017/02/food-lab-great-quesadillas.html','Cook veggies for filling as needed. Combine filling in a bowl. Add shredded cheese.\nSpread half of mixture evenly over half of one tortilla, leaving a 1/2-inch border. Fold tortilla over and seal edges by pressing down firmly. Repeat with remaining filling and second tortilla.\nHeat oil in frying pan over medium heat until shimmering. Carefully add both folded tortillas and cook, swirling and moving tortillas around, until golden brown and puffy on first side, about 2 minutes. Using a flexible metal spatula, flip quesadillas, season with salt, and continue cooking until golden brown and puffy on second side, about 2 minutes longer.\nTransfer quesadillas to a paper towel to drain. Cut into triangles and serve immediately.\n\nTransfer quesadillas to a paper towel to drain. Cut into triangles and serve immediately.',1),(20,'Green Bean Salad with Pickled Red Onions and Fried Almonds','green-bean-salad-with-pickled-red-onions-and-fried','upload/recipe_photos/green-bean-salad-with-fried-almonds_DKoT1ol.jpg','',30,10,4,'2020-06-06 05:00:00.000000','2020-06-07 03:05:25.000057',1,5,12,'https://smittenkitchen.com/2011/02/green-bean-salad-with-pickled-red-onions-and-fried-almonds/','Thinly slice half your fennel bulb, your celery and your half onion. Toss the fennel with lemon juice.\nIn a small bowl, whisk together the vinegar, water, salt and sugar together. Add the onions and set them aside for about an hour. \nMeanwhile, bring a large pot of salted water to boil. Trim and tail green beans. Boil beans until crisp-tender, about 4 to 5 minutes. Plunge in an ice water bath. Drain and pat dry. \nHeat a small heavy skillet to medium heat and add one teaspoon olive oil. Add almonds and toss until lightly browned, 2 to 3 minutes. Season lightly with salt and pepper to taste. Transfer almonds to a plate, let cool, and cut each almond into half or thirds.\nToss green beans with most of fennel, all of celery and half of the pickled red onions. Sprinkle two tablespoons of the red onion pickling liquid and two tablespoons of olive oil over the mixture. Season generously with salt and pepper. Taste, adjust seasonings and ingredient levels to your preferences \n',1),(21,'Fried Rice','fried-rice','upload/recipe_photos/20160206-fried-rice-food-lab-68.jpg','',20,10,3,'2020-06-07 02:57:10.304410','2020-06-07 02:57:10.594886',1,2,2,'https://www.seriouseats.com/recipes/2016/02/easy-vegetable-fried-rice-recipe.html','If using day-old rice (see note), transfer to a medium bowl and break the rice up with your hands into individual grains before proceeding. Heat 1/2 tablespoon (7ml) vegetable oil in a wok over high heat until smoking. Add half of rice and cook, stirring and tossing, until the rice is pale brown and toasted and has a lightly chewy texture, about 3 minutes. Transfer to a medium bowl. Repeat with another 1/2 tablespoon oil and remaining rice.\n\nReturn all the rice to the wok and press it up the sides, leaving a space in the middle. Add 1/2 tablespoon (7ml) oil to the space. Add onion, carrot, scallions, and garlic and cook, stirring gently, until lightly softened and fragrant, about 1 minute. Toss with rice to combine. Add soy sauce and sesame oil and toss to coat. Season to taste with salt and white pepper.\n\nPush rice to the side of the wok and add remaining 1/2 tablespoon (7ml) oil. Break the egg into the oil and season with a little salt. Use a spatula to scramble the egg, breaking it up into small bits. Toss the egg and the rice together.\n\nAdd frozen peas and continue to toss and stir until peas are thawed and every grain of rice is separate. Serve immediately.\n',1),(22,'Marinated Roasted Beets','marinated-roasted-beets','upload/recipe_photos/800OptaaDSC_4924.jpg','',15,90,4,'2020-06-07 03:02:05.515563','2020-06-07 03:02:05.662566',1,5,7,'https://nomnompaleo.com/post/4459404121/marinated-roasted-beets','    Heat the oven to 400°F with the rack in the middle.\n    Wash and trim the beets so the stems are about ½- inch and the roots about 2 inches or less.\n    Place the beets into a single layer in a baking dish and add an inch of water. Cover the container with a heat-safe lid (or aluminum foil) and pop it in the oven for about an hour or until the beets are easily pierced with a knife (~45 minutes for the little ones, ~75 minutes for the big ones).\n    Cool the beets before slicing off the tops and long tails and peeling the skins and long tails.\n    Chop the beets into bite-size pieces and season to taste with salt, pepper, and a liberal splash of balsamic vinegar.\n    Marinate the beets for at least 30 mintues, stirring once or twice, before adding a generous glug of extra virgin olive oil.  \n    You can store the beets in a sealed container in the fridge for up to a week.',1),(23,'60 second brioche','60-second-brioche','upload/recipe_photos/BriocheBuns.jpg','',60,20,6,'2020-06-06 05:00:00.000000','2020-06-07 03:27:33.893961',1,1,1,'https://pastrieslikeapro.com/2014/07/60-second-brioche/#.XtxYyO4pC-E','In a small bowl, add the yeast to the water.  Stir it in and let it dissolve for a few minutes. Make a sponge by adding 3 tablespoons flour from the total amount of measured flour and the pinch of sugar. Stir well and cover with film. Let double in bulk, about 15 to 20 minutes.\n\nIn the processor bowl fitted with the steel blade, place the remaining flour and the salt and sugar.dry ingred. Process 5 seconds to mix. Cut the cold butter into 3/4 inch slices and place in a circle over the dry ingredients. Process until the butter is indistinguishable in the mixture, about 20 seconds. Scrape down and process 5 seconds more. Place the eggs in a circle over the dry ingredients, pour the cream over the eggs, and add the sponge, also in a circle. Process approximately 20 to 25 seconds until the ball which initially forms breaks down into a creamy, evenly dispersed batter in the processor bowl. Do not stop processing until the is batter is formed, as the motor may stall when you try to restart it.\n\nThe batter will be very sticky and that is as it should be. Remove from the processor bowl and place in an ungreased bowl. The batter has very little elasticity and is easily managed with a large plastic pastry scraper.\n\nGetting all the dough out of the processor bowl is easy.  Remove as much as you can get out easily from the bowl.  Don’t try to get it off the blade.  Place the bowl back on the processor with the blade in place if you have removed it.  Pulse it several times.  The centrifugal force will throw the dough to the sides of the bowl.  Remove the blade and scrape out the additional dough. \n\nCover securely with plastic wrap and allow to rise until double in bulk about 2 to 2 1/2 hours. Stir down and refrigerate overnight. It may or may not rise again and that is fine. Punch down and use as directed.\n\nTake 2/3 of the now-spongy dough and, working quickly, form into balls. Put balls in tins. Let rise, uncovered, in a warm place until the dough doubles. \n\nPREHEAT OVEN to 375F. Brush dough with egg glaze. Bake 20 minutes, or until browned.',1),(24,'Shredded Chicken With Soba and Miso-Butter Sauce Recipe','shredded-chicken-with-soba-and-miso-butter-sauce-r','upload/recipe_photos/20141023_misobutternoodles_yasminfahr3.jpg','',30,30,4,'2020-06-07 03:06:05.313719','2020-06-07 03:06:05.875520',1,2,13,'https://www.seriouseats.com/recipes/2014/11/crispy-shredded-chicken-with-soba-and-miso-bu.html','Season the chicken with salt and pepper. Heat the oil in a large pot over medium-high heat until shimmering. Cook the chicken, skin-side down, until crisp, about 7 minutes. Flip and cook until the second side has browned, about 4 minutes more. Add the broth, adjust the heat to maintain a simmer, cover, and cook until the chicken has cooked through, about 12 minutes more. Meanwhile, mix the butter and miso together in a small bowl.\n\nTransfer the chicken to a plate and shred with a fork and knife. Discard skin and bones. Bring the broth to a hard boil over high heat. Add the noodles and cook according to the package instructions. Drain, reserving broth for another use if desired, and immediately toss in a serving bowl with the miso-butter. Toss to coat, then add in the chicken. Top with scallions, cilantro and sprouts. Serve immediately with lemon wedges',1),(25,'Fattoush','fattoush','upload/recipe_photos/fattoush_hyVsPtG.jpg','',40,1,6,'2020-06-06 05:00:00.000000','2020-06-07 03:19:05.823931',1,5,12,'https://www.bonappetit.com/recipe/fattoush','Dressing:\n\n    Combine sumac with soaking liquid, 3 Tbsp. lemon juice, 2 Tbsp. pomegranate molasses, garlic, 2 tsp. vinegar, and dried mint in a small bowl. Gradually add oil, whisking constantly, until well blended. Season with salt; add more lemon juice, pomegranate molasses, and vinegar to taste, if desired.\n\nSalad:\n\n    Place pita pieces in a medium bowl; pour oil over and toss to coat. Season pita to taste with salt.\n\n    Mix tomatoes and next 6 ingredients in a large bowl. Add 3/4 of dressing; toss to coat, adding more dressing by tablespoonfuls as needed. Season with salt. Add pita; toss once. Sprinkle sumac over, if desired.',1),(26,'Summer Vegetable Lasagna','summer-vegetable-lasagna','upload/recipe_photos/20150822-zucchini-eggplant-lasagna-2.jpg','',60,45,6,'2020-06-07 03:21:35.238421','2020-06-07 03:21:35.588953',1,2,10,'https://www.seriouseats.com/recipes/2015/09/summer-vegetable-lasagna-recipe.html','In a large skillet, heat 2 tablespoons olive oil over high heat until shimmering. Working in batches and being sure not to crowd the pan, add zucchini, season with salt, and cook, turning, until just tender and browned in spots, about 4 minutes per batch. Add more oil as needed to prevent pan from drying out, and adjust heat as needed throughout to maintain a very hot, but not heavily smoking, pan. Transfer each batch to a baking sheet and spread in an even layer to cool, then transfer cooled slices to a second baking sheet or plate. Repeat with remaining zucchini, squash, and eggplant until all vegetables are lightly browned.\n\nPlace lasagna noodles in a 9- by 13-inch casserole dish and cover with hot water. Let noodles soak while you prepare the white sauce, agitating them every few minutes to prevent sticking, about 20 minutes total.\n\nHeat butter in a medium saucepan over medium heat until melted. Add flour and increase heat to medium-high. Cook, stirring butter and flour with a whisk until pale golden blond, about 1 minute. Whisking constantly, slowly drizzle in milk. Continue to cook, whisking frequently, until mixture comes to a boil and thickens. Remove from heat and add Parmigiano-Reggiano. Whisk until smooth. Season to taste with salt. Set aside.\n\nSeason crushed tomatoes to taste with salt.\n\nPreheat oven to 375°F and adjust rack to center position. Transfer noodles to a clean kitchen towel or layer with paper towels to dry them. Dry the casserole dish carefully and brush with olive oil. Spread a thin layer of crushed tomatoes on the bottom of the baking dish. Layer with 3 lasagna noodles. Top with 1/4 of eggplant, zucchini, and squash, 1/5 of crushed tomatoes, and 1/5 of white sauce. Repeat layers three more times. Place the final lasagna noodles on top and spread with remaining crushed tomatoes and white sauce. Scatter mozzarella evenly over surface and add basil leaves. Drizzle lightly with olive oil.\n\nCover dish tightly with aluminum foil and place in oven. Bake for 30 minutes, uncover, and continue baking until lightly browned on top. Remove from oven, let rest 10 minutes, slice, and serve.',1),(27,'Fudge Brownies','fudge-brownies','upload/recipe_photos/4-3-large_0.jpg','',12,28,6,'2020-06-07 03:22:46.553559','2020-06-07 03:22:46.680925',1,3,1,'https://www.kingarthurflour.com/recipes/fudge-brownies-recipe','Preheat the oven to 350°F. Lightly grease a 9\" x 13\" pan\n\nCrack the 4 eggs into a bowl, and beat them at medium speed with the cocoa, salt, baking powder, espresso powder (if using), and vanilla for about 1 minute, or until smooth. You can do this while you\'re melting your butter (next step).\n\nIn a medium-sized microwave-safe bowl, or in a saucepan set over low heat, melt the butter, then add the sugar and stir to combine. Or simply combine the butter and sugar, and heat, stirring, until the butter is melted. Continue to heat (or microwave) briefly, just until the mixture is hot (about 110°F to 120°F), but not bubbling; it\'ll become shiny looking as you stir it. Heating the mixture to this point will dissolve more of the sugar, which will help produce a shiny top crust on your brownies.\n\nAdd the hot butter/sugar mixture to the egg/cocoa mixture, stirring until smooth.\n\nAdd the flour and chips, stirring until smooth. Again, adding the chips helps produce a shiny top crust.\n\nSpoon the batter into a lightly greased 9\" x 13\" pan.\n\nBake the brownies for 28 to 32 minutes, until a toothpick inserted into the center comes out clean, or with just a few moist crumbs clinging to it. The brownies should feel set on the edges, and the center should look very moist, but not uncooked. Remove them from the oven and cool on a rack before cutting and serving.',1),(28,'9-Layer Chinese Scallion Pancakes','9-layer-chinese-scallion-pancakes','upload/recipe_photos/scallion-pancakes.jpg','',75,20,6,'2020-06-07 03:27:16.346838','2020-06-07 03:27:16.548764',1,5,2,'https://thewoksoflife.com/9-layer-scallion-pancakes/','Pancakes:\nIn a large bowl, combine the flour, salt, sugar, and five spice powder (if using). Add ¾ cup water and mix to form a dough. Knead the mixture for about 5 minutes, until it forms a smooth ball. Set the dough aside and cover with a damp cloth. Let it rest for about an hour. \n\nAfter the dough has rested, cut the dough in half and leave the other half under the damp cloth. Roll out the dough into a big rectangle, as thin as you can get it. Rub about half a tablespoon of oil all over the surface of the dough and sprinkle with half of the scallions, salt, and sesame seeds (if using). Cut 2 slits on each long side of the dough.\n\nWith the rolled out dough oriented vertically, start at the bottom and fold the two side flaps of dough over the middle piece. Then fold that entire rectangle forward onto the middle level. Fold those to flaps over, and repeat.\n\nWhen you have your nice, neat rectangle, take your rolling pin and roll it until almost doubled in area. Take care not to roll too firmly, as you don’t want the dough layers to bind and you want to keep some small pockets of air between them.\n\nHeat a couple tablespoons of oil in a pan over medium heat and add the pancake. Cover the pan and cook for about five minutes on each side, or until golden brown. Transfer to a cutting board, slice, and serve with your dipping sauce. Repeat the process with the other half of the dough and scallion mixture.\n\nNote: To freeze, place a layer of waxed paper, parchment paper, or plastic wrap between each pancake and store in an airtight ziploc bag.\n\n\nSauce:\nIn a small bowl, add the soy sauce, water, sugar, and a few chopped scallions and sesame seeds to make the dipping sauce. You can also add the garlic if using.',1),(29,'Chicken Tinga','chicken-tinga','upload/recipe_photos/20160128-chicken-tinga-recipe-18.jpg','',35,35,4,'2020-06-07 03:32:13.036764','2020-06-07 03:32:13.674590',1,2,11,'https://www.seriouseats.com/recipes/2016/01/chicken-tinga-spicy-mexican-shredded-chicken-recipe.html','Season chicken generously with salt and pepper. Heat oil in a medium saucepan over high heat until shimmering. Add chicken skin side down and cook, without moving, until well browned, 6 to 8 minutes. (Lower heat if pot is smoking excessively or chicken starts to burn.) Flip chicken and cook on second side for 2 minutes. Transfer to a large plate and immediately add tomatillos, tomatoes, and garlic to pot. Cook, flipping occasionally, until blistered and browned in spots, about 5 minutes.\n\nAdd onion and cook, stirring, until softened, about 2 minutes. Add oregano and bay leaves and cook, stirring, until aromatic, about 30 seconds. Add vinegar and stock. Return chicken to pot, bring to a boil over high heat, then reduce to a bare simmer. Cover the pot and cook, turning chicken occasionally, until chicken registers 145°F when an instant-read thermometer is inserted into the center of the thickest part, 20 to 30 minutes. Transfer chicken to a bowl and set aside. Continue cooking the sauce at a hard simmer, stirring, until reduced to about half its original volume, about 5 minutes longer.\n\nAdd chipotle chilies and adobo, remove and discard bay leaves, and blend the sauce using an immersion blender or by transferring to a countertop blender. Sauce should be relatively smooth, with a few small chunks. When chicken is cool enough to handle, discard the skin and bones and finely shred the meat. Return it to the sauce. Add fish sauce and stir to combine.\n\nBring to a simmer and cook, stirring, until sauce thickens and coats chicken. It should be very moist but not soupy. Season to taste with salt and pepper (if necessary). Chicken tinga can be served in tacos; stuffed into enchiladas or burritos; on top of nachos, tostadas, and sopes; or on its own.',1),(30,'Slow-Cooked Ragu Bolognese','slow-cooked-ragu-bolognese','upload/recipe_photos/20141204-slow-roasted-bolognese-01.jpg','',60,300,8,'2020-06-07 03:32:19.242124','2020-06-07 03:32:19.607286',1,2,10,'https://www.seriouseats.com/recipes/2014/12/the-best-slow-cooked-bolognese-sauce-recipe.html','Adjust oven rack to lower-middle position and preheat oven to 300°F (150°C). Place stock in a medium bowl or 1-quart liquid measure and sprinkle with gelatin. Set aside. Purée tomatoes in the can using an immersion blender or transfer to the bowl of a countertop blender and purée until smooth. Transfer chicken livers to a cup that just fits head of immersion blender and purée until smooth.\n\nHeat olive oil in a large Dutch oven over high heat until shimmering. Add ground beef, pork, and lamb; season with salt and pepper; and cook, stirring and breaking up with a wooden spoon or potato masher, until no longer pink, about 10 minutes. Remove from heat and stir in puréed chicken livers.\n\nMeanwhile, heat butter and pancetta in a large skillet over medium-high heat and cook, stirring frequently, until fat has mostly rendered but butter and pancetta have not yet started to brown, about 8 minutes. Add onion, carrots, celery, garlic, sage, and half of parsley and cook, stirring and tossing, until vegetables are completely softened but not browned, about 8 minutes. Transfer mixture to Dutch oven with meat mixture.\n\nReturn Dutch oven to high heat and cook, stirring, until most of the liquid has evaporated from the pan, about 10 minutes longer.\n\nAdd wine and cook, stirring, until mostly evaporated. Add reserved stock, tomatoes, milk, and bay leaves. Season gently with salt and pepper.\n\nBring sauce to a simmer, then transfer to oven, uncovered. Cook, stirring and scraping down sides of pot occasionally, until liquid has almost completely reduced and sauce is rich and thick underneath a heavy layer of fat, 3 to 4 hours. If sauce still looks liquid or fat has not separated and formed a thick layer after 4 hours, transfer to stovetop and finish cooking at a brisk simmer, stirring frequently.\n\nCarefully skim off most of the fat, leaving behind about 1 cup total. (For more precise measurement, skim completely, then add back 1 cup of fat.)\n\nStir in heavy cream, Parmesan, fish sauce, and remaining parsley. Bring to a boil on stovetop, stirring constantly to emulsify. Season to taste with salt and pepper. Bolognese can be cooled and stored in sealed containers in the refrigerator for up to 1 week.\n\nTO SERVE: Heat sauce in a large pot until just simmering. Set aside. Cook pasta in a large pot of well-salted water until just barely al dente. Drain, reserving 1/2 cup cooking liquid. Return pasta to pot and add just enough sauce to coat, along with some of the cooking liquid. Cook over high heat, tossing and stirring gently, until sauce is thick and pasta is coated, about 30 seconds. Transfer to a serving bowl and serve immediately, passing Parmesan at the table.',1),(31,'Crispy Potato and Chorizo Tacos','crispy-potato-and-chorizo-tacos','upload/recipe_photos/20150227-chorizo-potato-tacos-recipe-10.jpg','',20,20,6,'2020-06-07 03:34:43.030820','2020-06-07 03:34:43.316429',1,2,11,'https://www.seriouseats.com/recipes/2015/03/20150302-chorizo-potato-tacos-how-to-food-lab-recipe.html','Place potatoes in a large pot and cover with cold water by 1 inch. Add vinegar and 2 tablespoons salt. Bring to a boil over high heat and cook until potatoes are just cooked through, about 5 minutes after coming to a boil. Drain potatoes and let rest over sink until mostly dry.\n\nHeat 4 tablespoons vegetable oil in a large non-stick or cast iron skillet over medium-high heat until lightly smoking. Add potatoes, shake to distribute around the pan, and cook, tossing and stirring occasionally until very crisp and golden brown on all sides, about 15 minutes.\n\nMeanwhile, heat remaining oil in a medium non-stick or cast iron skillet over high heat until shimmering. Add chorizo and cook, stirring, until heated through. Continue cooking, stirring and tossing frequently, until all the liquid has evaporated, some fat breaks out, the chorizo starts sizzling, and eventually is quite dry and well-browned, about 15 minutes.\n\nTransfer cooked chorizo to pan with potatoes. Toss to combine and season to taste with salt. Serve chorizo and potato mixture immediately with tortillas, onions, cilantro, salsa, and limes on the side.',1),(32,'Mexican Street Corn Salad','mexican-street-corn-salad','upload/recipe_photos/20190901-esquites-reshoot-vicky-wasik-1.jpg','',15,15,4,'2020-06-07 03:36:33.181883','2020-06-07 03:36:33.805619',1,5,11,'https://www.seriouseats.com/recipes/2012/07/esquites-mexican-street-corn-salad-recipe.html','Heat oil in a large nonstick skillet or wok over high heat until shimmering. Add corn kernels, season to taste with salt, toss once or twice, and cook without moving until charred on one side, about 2 minutes. Toss corn, stir, and repeat until charred on second side, about 2 minutes longer. Continue tossing and charring until corn is well charred all over, about 10 minutes total. Transfer to a large bowl.\n\nAdd mayonnaise, cheese, scallions, cilantro, jalapeño, garlic, lime juice, and chili powder and toss to combine. Taste and adjust seasoning with salt and more chili powder to taste. Serve immediately.',1),(33,'Classic Cherry Clafoutis','classic-cherry-clafoutis','upload/recipe_photos/20150530-cherry-clafoutis-daniel-gritzer-7.jpg','If using a vanilla bean, reserve the scraped bean for another use (you can stick it in a container of sugar to create vanilla sugar, for instance). We like pitted cherries because the clafoutis is easier to eat that way, but feel free to leave the cherries whole if you prefer; that\'s that more traditional way to do it, and some people like the subtle bitter almond flavor the pits add to the dessert.',15,60,6,'2020-06-06 05:00:00.000000','2020-06-07 03:38:18.017734',1,2,14,'https://www.seriouseats.com/recipes/2015/06/cherry-clafoutis-french-dessert-recipe.html','Preheat oven to 350°F. In a medium mixing bowl, stir together flour, sugar, and salt. Whisk in milk, eggs, butter, kirsch (if using), and vanilla extract or seeds until a smooth batter forms.\n\nGrease a baking dish, tart pan, or cast iron skillet (about 9 inches in diameter) with butter. Scatter cherries all over bottom. Pour batter on top and bake until clafoutis is puffed and browned and a knife inserted in center comes out clean, about 50 minutes. Let cool slightly, the slice and serve, sprinkling powdered sugar on top. Serve with whipped cream, if desired.',1),(34,'Tortilla Espanola','tortilla-espanola','upload/recipe_photos/20160603-tortilla-espanola-vicky-wasik-16.jpg','',15,45,6,'2020-06-07 03:41:32.535301','2020-06-07 03:41:32.884923',1,2,15,'https://www.seriouseats.com/recipes/2016/07/tortilla-espanola-spanish-potato-omelette-recipe.html','In a large bowl, beat eggs vigorously with a large pinch of salt until frothy. Set aside.\n\nMeanwhile, in a 10-inch nonstick or well-seasoned carbon steel skillet, heat oil over medium-high heat until shimmering. Add potatoes and onions; they should gently (but not vigorously) bubble in the oil. Regulating heat to maintain a gentle bubbling, cook, stirring occasionally, until potatoes and onions are meltingly tender, about 25 minutes. Set a fine-mesh strainer over a heatproof bowl and drain potatoes and onions of excess oil. Reserve oil.\n\nTransfer potatoes and onions to a medium heatproof bowl and season generously with salt, stirring well to combine. Beat eggs vigorously to re-froth, then scrape potato and onion in and stir until thoroughly combined. Set aside for 5 minutes.\n\n4.\nMeanwhile, wipe out skillet. Add 3 tablespoons (45ml) reserved frying oil to skillet and set over medium-high heat until shimmering. Scrape egg mixture into skillet and cook, swirling and shaking pan rapidly, until bottom and sides begin to set, about 3 minutes. Using a heatproof spatula, press the edges in to begin to form the tortilla\'s puck shape. Continue to cook, adjusting heat to prevent bottom of tortilla from burning, until beginning to set around edges, about 3 minutes longer.\n\nWorking over a sink or garbage can, place a large overturned flat plate or lid on top of skillet, set hand on top (using a dish towel if you are sensitive to heat), and, in one very quick motion, invert tortilla onto it. Add 1 more tablespoon (15ml) reserved oil to skillet and return to heat. Carefully slide tortilla back into skillet and continue to cook until second side is beginning to firm up, about 2 minutes. Use rubber spatula to again press the sides in all around to form a rounded puck shape. Continue to cook tortilla until lightly browned on second side but still tender in the center when pressed with a finger, about 2 minutes longer. If desired, you can flip tortilla 2 to 3 more times during these last minutes of cooking, which helps to cook the center more evenly and reinforce the shape.\n\nCarefully slide tortilla out of skillet onto a clean plate (or invert it onto a clean plate using same method as before) and let stand at least 5 minutes before serving with allioli. Tortilla can be cut into wedges for a larger meal or into cubes for an hors d\'oeuvre–sized snack. It is just as good, if not better, at room temperature. Leftover tortilla can be refrigerated up to 3 days; allow to return to room temperature before serving. Remaining frying oil can be used in other dishes; it has an excellent flavor thanks to the long cooking with potato and onion.',1),(35,'Magic Cake','magic-cake','upload/recipe_photos/magic-cake-1-1.jpg','The baking time can vary greatly for this cake. I\'ve baked this cake in 3 different ovens and I\'ve always needed different times which were from 40 to 70 minutes. The oven I have right now only requires about 45 minutes to get a nice golden color on the cake, whereas other ovens I\'ve used required the full 70 minutes. Test if after 40 minutes to see what it looks like. The cake is done when it only jiggles slightly but feels firm to touch.',15,60,8,'2020-06-07 05:00:00.000000','2020-06-07 05:14:59.396253',1,3,1,'https://www.jocooks.com/recipes/magic-cake/','    Preheat oven to 325 F degrees. Grease a 8 inch x 8 inch baking dish or line it with parchment paper so that it\'s easier to get the cake out.\n    Separate the eggs and beat the egg yolks with the sugar until light and fluffy. Add butter and vanilla extract and continue beating for another minute or two after which you can add the flour and mix it in until fully incorporated.\n    Slowly start adding the milk and beat until everything is well mixed together.\n    Add the egg whites to a mixer and mix until stiff peaks form.\n    Add the egg whites to the cake batter and gently fold them in. Another variation to folding in the egg whites would be to whisk them in to the cake batter, this is a lot faster and easier. Make sure you don\'t fold the egg whites in completely, you still want to see some of the white bits floating at the top.\n    Pour batter into baking dish and bake for 40 to 70 minutes or until the top is lightly golden. The baking time could vary greatly depending on the oven, so take a peek at around 40 minutes and see how it looks.\n    Sprinkle some powdered sugar after cake has cooled.\n',1),(36,'Cinnamon-Apricot Bostock','cinnamon-apricot-bostock','upload/recipe_photos/Article-Bostock-French-Toast-Almond-Breakfast-Pastry-Simon-and-the-_77ptwlD.jpg','',25,15,6,'2020-06-07 05:26:00.037347','2020-06-07 05:26:00.679798',1,3,1,'https://www.tastecooking.com/recipes/cinnamon-apricot-bostocks/','Arrange the bread slices on a parchment-lined half-sheet tray and use a fork to pierce each slice 6 times. Set aside to dry out while preparing the remaining components. \nPreheat an oven to 325 F. Whisk the honey and juices to combine and set aside. Slice apricots in half and set cut side down in a ceramic baking dish. Pour the honey liquid over the fruit, scatter the pits and cinnamon sticks, and roast for 15 minutes. Remove from the oven, flip each apricot over, and spoon some of the roasting liquid over the face of the fruit. Return to the oven for another 10 minutes, until the fruit is softened but still retains its shape. Cool in the baking dish to room temperature, then slice each half apricot in half again, from top to bottom. Collect the roasting liquid in a bowl. \nCombine the almond flour and cinnamon on a parchment-lined sheet tray and toast at 325 F for 10-12 minutes, until golden. Halfway through, use a spoon to redistribute the flour on the sheet tray to encourage even coloration. Set aside to cool. Increase the oven temperature to 350 F. Whisk the butter and sugar together in a wide-mouthed bowl until smooth. Add the eggs one at a time, whisking to incorporate completely before the next addition. The butter may separate into curds during this process, but continual whisking will homogenize the mixture. Whisk in almond extract, then use a rubber spatula to fold in the cooled almond flour and cinnamon. \nIf necessary, thin the roasting liquid with water to a simple-syrup viscosity. Use a pastry brush to thoroughly soak each slice of bread with the liquid, flipping over to soak both sides. Divide the almond cream evenly among the 8 slices (about 50g) and spread from edge to edge, completely covering. Arrange 3 slices of apricot on top of the almond cream and sprinkle with chopped almonds. \nPlace the tray of assembled bostock on the middle oven rack and bake at 350 F for 10-15 minutes, or until the almond cream is golden and set on the edges and just slightly moist in the center. Cool for 15 minutes, then dust with cinnamon sugar.  \n',1);
/*!40000 ALTER TABLE `recipe_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_recipe_tags`
--

DROP TABLE IF EXISTS `recipe_recipe_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_recipe_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_recipe_tags_recipe_id_tag_id_d5aaba5b_uniq` (`recipe_id`,`tag_id`),
  KEY `recipe_recipe_tags_tag_id_ee78e406_fk_recipe_groups_tag_id` (`tag_id`),
  CONSTRAINT `recipe_recipe_tags_recipe_id_01e493ee_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`),
  CONSTRAINT `recipe_recipe_tags_tag_id_ee78e406_fk_recipe_groups_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `recipe_groups_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_recipe_tags`
--

LOCK TABLES `recipe_recipe_tags` WRITE;
/*!40000 ALTER TABLE `recipe_recipe_tags` DISABLE KEYS */;
INSERT INTO `recipe_recipe_tags` VALUES (30,1,1),(52,2,3),(15,3,4),(21,4,5),(51,5,6),(26,9,9),(27,10,10),(29,11,11),(34,14,12),(35,15,12),(40,17,16),(37,18,14),(39,19,15),(45,20,17),(43,21,18),(44,22,19),(60,23,24),(46,24,20),(56,25,22),(57,26,23),(58,28,24),(61,29,25),(62,32,26),(64,33,24),(65,35,24),(66,36,24);
/*!40000 ALTER TABLE `recipe_recipe_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_subrecipe`
--

DROP TABLE IF EXISTS `recipe_subrecipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_subrecipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `measurement` longtext,
  `child_recipe_id` int(11) DEFAULT NULL,
  `parent_recipe_id` int(11) DEFAULT NULL,
  `denominator` double NOT NULL,
  `numerator` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_subrecipe_child_recipe_id_8fd69499_fk_recipe_recipe_id` (`child_recipe_id`),
  KEY `recipe_subrecipe_parent_recipe_id_13084b48_fk_recipe_recipe_id` (`parent_recipe_id`),
  CONSTRAINT `recipe_subrecipe_child_recipe_id_8fd69499_fk_recipe_recipe_id` FOREIGN KEY (`child_recipe_id`) REFERENCES `recipe_recipe` (`id`),
  CONSTRAINT `recipe_subrecipe_parent_recipe_id_13084b48_fk_recipe_recipe_id` FOREIGN KEY (`parent_recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_subrecipe`
--

LOCK TABLES `recipe_subrecipe` WRITE;
/*!40000 ALTER TABLE `recipe_subrecipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_subrecipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10  5:31:50
