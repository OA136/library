-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sq
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--


/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;


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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--


/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;


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
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--


/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add category',7,'add_category'),(20,'Can change category',7,'change_category'),(21,'Can delete category',7,'delete_category'),(22,'Can add users',8,'add_users'),(23,'Can change users',8,'change_users'),(24,'Can delete users',8,'delete_users'),(25,'Can add book',9,'add_book'),(26,'Can change book',9,'change_book'),(27,'Can delete book',9,'delete_book'),(28,'Can add comment',10,'add_comment'),(29,'Can change comment',10,'change_comment'),(30,'Can delete comment',10,'delete_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;


--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--


/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$xFDXBvWV540D$8izX2LmiukRUXROwPjUfUQfpLdBlOD7XO96edgv5ovc=','2015-12-13 16:14:26.582000',1,'nihao','','','123@qq.com',1,1,'2015-11-27 03:19:52.873000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;


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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--


/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;


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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--


/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;


--
-- Table structure for table `books_book`
--

DROP TABLE IF EXISTS `books_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `WriteDate` date NOT NULL,
  `Contant` longtext NOT NULL,
  `Power` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_book`
--


/*!40000 ALTER TABLE `books_book` DISABLE KEYS */;
INSERT INTO `books_book` VALUES (32,'软件工程','2015-12-23','软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。软件工程让我们学会了很多的思想。v','Self'),(33,'计算机组成原理','2015-12-24','计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。计算机组成原理在大二下学期进行了学习。','Public'),(34,'纪念卡','2015-12-25','今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。今天是圣诞节，我们都很快乐。','Self'),(35,'123','2015-12-25','<p><u>qwerqwrq</u></p>\r\n','Public'),(36,'234','2015-12-25','<p><u>sdgd</u></p>\r\n','Public');
/*!40000 ALTER TABLE `books_book` ENABLE KEYS */;


--
-- Table structure for table `books_book_type`
--

DROP TABLE IF EXISTS `books_book_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_book_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_id` (`book_id`,`category_id`),
  KEY `books_book_Type_category_id_29197814_fk_books_category_id` (`category_id`),
  CONSTRAINT `books_book_Type_book_id_5f0bd49b_fk_books_book_id` FOREIGN KEY (`book_id`) REFERENCES `books_book` (`id`),
  CONSTRAINT `books_book_Type_category_id_29197814_fk_books_category_id` FOREIGN KEY (`category_id`) REFERENCES `books_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_book_type`
--


/*!40000 ALTER TABLE `books_book_type` DISABLE KEYS */;
INSERT INTO `books_book_type` VALUES (100,32,94),(102,33,95),(103,33,96),(104,34,98),(105,35,97),(106,36,97);
/*!40000 ALTER TABLE `books_book_type` ENABLE KEYS */;


--
-- Table structure for table `books_book_userid`
--

DROP TABLE IF EXISTS `books_book_userid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_book_userid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_id` (`book_id`,`users_id`),
  KEY `books_book_UserID_users_id_45e791a1_fk_books_users_id` (`users_id`),
  CONSTRAINT `books_book_UserID_book_id_efe6bb3_fk_books_book_id` FOREIGN KEY (`book_id`) REFERENCES `books_book` (`id`),
  CONSTRAINT `books_book_UserID_users_id_45e791a1_fk_books_users_id` FOREIGN KEY (`users_id`) REFERENCES `books_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_book_userid`
--


/*!40000 ALTER TABLE `books_book_userid` DISABLE KEYS */;
INSERT INTO `books_book_userid` VALUES (70,32,12),(72,33,12),(73,34,13),(74,35,13),(75,36,13);
/*!40000 ALTER TABLE `books_book_userid` ENABLE KEYS */;


--
-- Table structure for table `books_category`
--

DROP TABLE IF EXISTS `books_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `true` varchar(60) NOT NULL,
  `power` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_category_parent_id_33e49d07_fk_books_category_id` (`parent_id`),
  KEY `books_category_2dbcba41` (`slug`),
  CONSTRAINT `books_category_parent_id_33e49d07_fk_books_category_id` FOREIGN KEY (`parent_id`) REFERENCES `books_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_category`
--


/*!40000 ALTER TABLE `books_category` DISABLE KEYS */;
INSERT INTO `books_category` VALUES (88,'Common','common',NULL,'False','Public'),(91,'SQ','self',NULL,'False','Self'),(92,'DJSQ','self',NULL,'True','Self'),(93,'SD','self',NULL,'True','Self'),(94,'计算机科学与技术','self',93,'True','Self'),(95,'计算机系统','self',94,'True','Self'),(96,'计算机系统','common',88,'True','Public'),(97,'DJ','self',NULL,'True','Self'),(98,'圣诞狂欢','self',97,'True','Self');
/*!40000 ALTER TABLE `books_category` ENABLE KEYS */;


--
-- Table structure for table `books_comment`
--

DROP TABLE IF EXISTS `books_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `book_id` int(11) NOT NULL,
  `commenter` varchar(60) NOT NULL,
  `datetime` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_comment_book_id_3b5540f0_fk_books_book_id` (`book_id`),
  CONSTRAINT `books_comment_book_id_3b5540f0_fk_books_book_id` FOREIGN KEY (`book_id`) REFERENCES `books_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_comment`
--


/*!40000 ALTER TABLE `books_comment` DISABLE KEYS */;
INSERT INTO `books_comment` VALUES (2,'这篇文章很好',33,'匿名用户','2015-12-24'),(3,'这篇文章很好',33,'匿名用户','2015-12-24'),(4,'这篇文章不错。',33,'匿名用户','2015-12-24');
/*!40000 ALTER TABLE `books_comment` ENABLE KEYS */;


--
-- Table structure for table `books_users`
--

DROP TABLE IF EXISTS `books_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Age` int(11) NOT NULL,
  `Country` varchar(60) NOT NULL,
  `Email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_users`
--


/*!40000 ALTER TABLE `books_users` DISABLE KEYS */;
INSERT INTO `books_users` VALUES (10,'SQ','123','孙强',22,'中国','123@qq.com'),(11,'DJSQ','123123','孙强',23,'中国','123@qq.com'),(12,'SD','123','sas',12,'as','1803067851@qq.com'),(13,'DJ','12','孙',32,'中','1741768868@qq.com');
/*!40000 ALTER TABLE `books_users` ENABLE KEYS */;


--
-- Table structure for table `books_users_concent`
--

DROP TABLE IF EXISTS `books_users_concent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books_users_concent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id` (`users_id`,`category_id`),
  KEY `books_users_Concent_category_id_133608dd_fk_books_category_id` (`category_id`),
  CONSTRAINT `books_users_Concent_category_id_133608dd_fk_books_category_id` FOREIGN KEY (`category_id`) REFERENCES `books_category` (`id`),
  CONSTRAINT `books_users_Concent_users_id_70062468_fk_books_users_id` FOREIGN KEY (`users_id`) REFERENCES `books_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_users_concent`
--


/*!40000 ALTER TABLE `books_users_concent` DISABLE KEYS */;
INSERT INTO `books_users_concent` VALUES (28,10,91),(29,11,92),(30,12,93),(31,12,94),(32,12,95),(33,13,97),(34,13,98);
/*!40000 ALTER TABLE `books_users_concent` ENABLE KEYS */;


--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--


/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-11-27 03:20:35.269000','1','SQ',1,'',7,1),(2,'2015-11-27 03:20:58.605000','1','SQ sq 123 21 China 180@qq.com',1,'',8,1),(3,'2015-11-27 03:21:28.422000','1','Computer books.Users.None 2015-11-27 cascuabcuaibui Self',1,'',9,1),(4,'2015-11-27 03:22:05.146000','2','Common',1,'',7,1),(5,'2015-11-27 03:22:48.961000','3','A',1,'',7,1),(6,'2015-11-27 03:23:03.429000','4','AA',1,'',7,1),(7,'2015-11-27 03:23:41.094000','2','Math books.Users.None 2015-11-27 sdsdsdsd Public',1,'',9,1),(8,'2015-11-27 03:24:34.792000','11','books.Category.None',3,'',7,1),(9,'2015-11-27 03:24:34.903000','10','books.Category.None',3,'',7,1),(10,'2015-11-27 03:24:34.969000','9','books.Category.None',3,'',7,1),(11,'2015-11-27 03:24:35.036000','8','books.Category.None',3,'',7,1),(12,'2015-11-27 03:24:35.126000','7','books.Category.None',3,'',7,1),(13,'2015-11-27 03:24:35.202000','6','books.Category.None',3,'',7,1),(14,'2015-11-27 03:24:35.291000','5','books.Category.None',3,'',7,1),(15,'2015-11-27 03:47:45.097000','13','A',3,'',7,1),(16,'2015-11-27 03:48:30.680000','12','Common',3,'',7,1),(17,'2015-11-27 04:56:12.048000','34','A',3,'',7,1),(18,'2015-11-27 04:56:12.176000','33','A',3,'',7,1),(19,'2015-11-27 04:56:12.287000','32','A',3,'',7,1),(20,'2015-11-27 04:56:12.321000','31','A',3,'',7,1),(21,'2015-11-27 04:56:12.354000','30','A',3,'',7,1),(22,'2015-11-27 04:56:12.399000','29','A',3,'',7,1),(23,'2015-11-27 04:56:12.454000','28','A',3,'',7,1),(24,'2015-11-27 04:56:12.486000','27','A',3,'',7,1),(25,'2015-11-27 04:56:12.521000','26','A',3,'',7,1),(26,'2015-11-27 04:56:12.552000','25','A',3,'',7,1),(27,'2015-11-27 04:56:12.587000','24','A',3,'',7,1),(28,'2015-11-27 04:56:12.619000','23','A',3,'',7,1),(29,'2015-11-27 04:56:12.654000','22','A',3,'',7,1),(30,'2015-11-27 04:56:12.685000','21','A',3,'',7,1),(31,'2015-11-27 04:56:12.720000','20','A',3,'',7,1),(32,'2015-11-27 04:56:12.752000','19','A',3,'',7,1),(33,'2015-11-27 04:56:12.787000','18','A',3,'',7,1),(34,'2015-11-27 04:56:12.819000','17','A',3,'',7,1),(35,'2015-11-27 04:56:12.852000','16','A',3,'',7,1),(36,'2015-11-27 04:56:12.885000','15','A',3,'',7,1),(37,'2015-11-27 04:56:12.920000','14','A',3,'',7,1),(38,'2015-11-27 05:43:49.127000','1','SQ sq 123 21 China 180@qq.com SQ\nA\nAA',2,'Changed Concent.',8,1),(39,'2015-11-27 11:21:20.645000','1','Computer SQ 2015-11-27 cascuabcuaibui Self SQ',3,'',9,1),(40,'2015-11-27 11:21:56.153000','3','YU WEN SQ 2015-11-27 dsdfdgfhgjhkjhgf Self AA',1,'',9,1),(41,'2015-11-27 11:24:05.732000','3','YU WEN SQ 2015-11-27 dsdfdgfhgjhkjhgf Self SQ',2,'Changed Type.',9,1),(42,'2015-11-27 11:55:32.100000','4','CC SQ 2015-11-27 xsaxsxsa Public A',1,'',9,1),(43,'2015-11-27 15:53:04.506000','36','DJ Self',1,'',7,1),(44,'2015-11-27 15:53:11.354000','2','DJ dj 123 22 C 123@qq.com DJ',1,'',8,1),(45,'2015-11-28 02:40:19.041000','4',' SQ 2015-11-27 xsaxsxs Self SQ\nA',3,'',9,1),(46,'2015-11-28 02:41:03.191000','5','En SQ 2015-11-28 zxzsfdgchgjuvhyik......bcaWLYacEWIvbwiyvewh Self A',1,'',9,1),(47,'2015-11-28 03:15:03.412000','38','SQ Self',3,'',7,1),(48,'2015-11-28 03:38:59.319000','3','YU WEN SQ 2015-11-27 dsdfdgfhgjhkjhgf Self SQ',3,'',9,1),(49,'2015-11-28 03:38:59.415000','2',' SQ 2015-11-27 <script>alert(ello);</script> Public SQ\nCommon\nA',3,'',9,1),(50,'2015-11-28 03:38:59.481000','5',' SQ\nDK 2015-11-28 zxzsfdgchgjuvhyik......bcaWLYacEWIvbwiyvewh Public SQ',3,'',9,1),(51,'2015-11-28 03:39:26.065000','6','Com SQ 2015-11-28 sdfghjgfdsad Self SQ',1,'',9,1),(52,'2015-11-28 03:54:46.714000','40','B Self',3,'',7,1),(53,'2015-11-28 03:54:46.775000','39','B Self',3,'',7,1),(54,'2015-11-28 05:00:08.174000','6','math SQ\nDK 2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public A',2,'Changed Type.',9,1),(55,'2015-11-28 05:09:21.581000','7','En SQ 2015-11-28 sdfgh  svnfsjnvsjvn jfjdf Self SQ',1,'',9,1),(56,'2015-11-28 05:10:23.834000','44','BB Public',1,'',7,1),(57,'2015-11-28 05:15:59.936000','44','BB Public',3,'',7,1),(58,'2015-11-28 05:17:16.200000','45','BB Public',1,'',7,1),(59,'2015-11-28 05:54:08.829000','8','YU DK 2015-11-28 sdfghjnbvfdsrgh Self DK',1,'',9,1),(60,'2015-11-28 05:55:49.144000','9','computer SQ 2015-11-28 sdfghjhnsbrrge Self SQ',1,'',9,1),(61,'2015-11-28 05:56:46.925000','10','biology SQ 2015-11-28 sdfghnmyfdtjnhgfx sfb edab eab Self A',1,'',9,1),(62,'2015-12-13 16:14:39.478000','9','软件工程 SQ 2015-11-28 sdfghjhnsbrrge Public SQ\nSQ',3,'',9,1),(63,'2015-12-17 13:45:35.507000','1','SQ FG Self',3,'',7,1),(64,'2015-12-17 13:47:14.980000','1','SQ sq 123 21 China 180@qq.com ',3,'',8,1),(65,'2015-12-17 13:47:21.731000','5','亢龙有悔 小强 123 21 中国 123@qq.com 亢龙有悔',3,'',8,1),(66,'2015-12-17 13:47:21.833000','4','月下沙滩 孙强 123 22 中国 1803067851@qq.com 月下沙滩',3,'',8,1),(67,'2015-12-17 13:47:32.610000','49','亢龙有悔 self Self',3,'',7,1),(68,'2015-12-17 13:47:32.711000','48','月下沙滩 self Self',3,'',7,1),(69,'2015-12-17 13:47:32.742000','47','SQ common Public',3,'',7,1),(70,'2015-12-17 13:47:32.800000','46','SQ self Self',3,'',7,1),(71,'2015-12-17 13:47:32.843000','45','BB ds Public',3,'',7,1),(72,'2015-12-17 13:47:32.964000','43','B common Public',3,'',7,1),(73,'2015-12-17 13:47:32.999000','42','B self Self',3,'',7,1),(74,'2015-12-17 13:47:33.030000','37','DK self Self',3,'',7,1),(75,'2015-12-17 13:47:33.065000','36','DJ CV Self',3,'',7,1),(76,'2015-12-17 13:47:33.096000','35','A common Public',3,'',7,1),(77,'2015-12-17 13:47:33.132000','2','Common sd Public',3,'',7,1),(78,'2015-12-17 13:47:41.794000','11','asas math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public  匿名 2015-12-15',3,'',10,1),(79,'2015-12-17 13:47:41.943000','10','asas math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public  匿名 2015-12-15',3,'',10,1),(80,'2015-12-17 13:47:42.033000','9','asas math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public  匿名 2015-12-15',3,'',10,1),(81,'2015-12-17 13:47:42.098000','8','好 math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public  anybody 2015-12-13',3,'',10,1),(82,'2015-12-17 13:47:42.145000','7','dvgdsgsg math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public  anybody 2015-11-28',3,'',10,1),(83,'2015-12-17 13:47:42.202000','6','sadsasd math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public  anybody 2015-11-28',3,'',10,1),(84,'2015-12-17 13:47:42.255000','5','fgfg math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public  anybody 2015-11-28',3,'',10,1),(85,'2015-12-17 13:48:03.712000','10','biology  2015-11-28 sdfghnmyfdtjnhgfx sfb edab eab Self ',3,'',9,1),(86,'2015-12-17 13:48:03.803000','8','YU  2015-11-28 sdfghjnbvfdsrgh Self ',3,'',9,1),(87,'2015-12-17 13:48:03.844000','7','英语  2015-11-28 sdfgh  svnfsjnvsjvn jfjdf Self ',3,'',9,1),(88,'2015-12-17 13:48:03.890000','6','math  2015-11-28 mkdksfkj sdjfksfj  skdfkjs Public ',3,'',9,1),(89,'2015-12-17 13:50:20.627000','50','SQ ds Self',1,'Added.',7,1),(90,'2015-12-17 13:50:26.188000','6','SQ 孙强 123 22 中国 1803067851@qq.com SQ',1,'Added.',8,1),(91,'2015-12-17 13:50:29.292000','6','SQ 孙强 123 22 中国 1803067851@qq.com SQ',2,'No fields changed.',8,1),(92,'2015-12-17 13:51:41.195000','51','Common as Public',1,'Added.',7,1),(93,'2015-12-17 13:52:47.719000','11','软件工程 SQ 2015-12-17 面向对象的分析与设计！ Self SQ',1,'Added.',9,1),(94,'2015-12-17 13:53:42.739000','52','计算机科学与技术 ssds Self',1,'Added.',7,1),(95,'2015-12-17 14:03:07.749000','53','SQ self Self',3,'',7,1),(96,'2015-12-17 16:11:49.201000','6','SQ 孙强 123 22 中国 1803067851@qq.com SQ\n计算机科学与技术',2,'Changed Concent.',8,1),(97,'2015-12-17 16:12:00.436000','54','计算机科学与技术 self Self',3,'',7,1),(98,'2015-12-17 16:12:00.505000','52','计算机科学与技术 ssds Self',3,'',7,1),(99,'2015-12-17 16:12:56.556000','55','计算机科学与技术 sdg Self',1,'Added.',7,1),(100,'2015-12-17 16:13:12.233000','6','SQ 孙强 123 22 中国 1803067851@qq.com SQ\n计算机科学与技术',2,'Changed Concent.',8,1),(101,'2015-12-22 09:22:48.422000','19','计算机组成原理 SQ 2015-12-18 计算机组成原理主要讲解。 Self Common',2,'Changed Type.',9,1),(102,'2015-12-22 09:24:53.997000','18','计算机网络 SQ 2015-12-17 tcp、ip协议 Self ',3,'',9,1),(103,'2015-12-22 09:24:54.107000','17','计算机网络 SQ 2015-12-17 ip、tcp协议。 Self ',3,'',9,1),(104,'2015-12-22 09:24:54.185000','16','数学 SQ 2015-12-17 高的数学。 Self SQ',3,'',9,1),(105,'2015-12-22 09:24:54.264000','15','计算机组成原理  2015-12-17 你好 Self ',3,'',9,1),(106,'2015-12-22 09:24:54.314000','14','学习笔记 SQ 2015-12-17 2015年12月17日，在正心 Self ',3,'',9,1),(107,'2015-12-22 09:24:54.364000','11','软件工程 SQ\nDJ 2015-12-17 面向对象的分析与设计！ Public SQ\nSQ\nSQ',3,'',9,1),(108,'2015-12-22 09:24:54.413000','19','计算机组成原理 SQ 2015-12-18 计算机组成原理主要讲解。 Self Common',3,'',9,1),(109,'2015-12-22 12:02:06.855000','24','人生 DJ 2015-12-22 是顶顶顶顶顶顶顶顶顶顶 Public Common',1,'Added.',9,1),(110,'2015-12-22 13:07:23.956000','20','英语 DJ 2015-12-18 今天的月儿。 Public DJ\nDJ',3,'',9,1),(111,'2015-12-22 13:07:24.022000','24','人生 DJ 2015-12-22 是顶顶顶顶顶顶顶顶顶顶 Public Common',3,'',9,1),(112,'2015-12-22 13:07:24.061000','23','麦田里的守望者 DJ 2015-12-22 麦田里的守望者麦田里的守望者麦田里的守望者麦田里的守望者麦田里的守望者 Self 文学',3,'',9,1),(113,'2015-12-22 13:07:24.093000','22','鹅鹅鹅 DJ 2015-12-22 你好啊 Self SQ',3,'',9,1),(114,'2015-12-22 13:07:24.127000','21','莎士比亚 DJ 2015-12-22 莎士比亚而是。 Self 文学',3,'',9,1),(115,'2015-12-22 13:07:33.078000','61','诗篇 self Self',3,'',7,1),(116,'2015-12-22 13:07:33.134000','60','DJ common Public',3,'',7,1),(117,'2015-12-22 13:07:33.166000','59','文学 self Self',3,'',7,1),(118,'2015-12-22 13:07:33.212000','58','SQ common Public',3,'',7,1),(119,'2015-12-22 13:07:33.243000','57','SQ self Self',3,'',7,1),(120,'2015-12-22 13:07:33.278000','56','DJ self Self',3,'',7,1),(121,'2015-12-22 13:07:33.323000','55','计算机科学与技术 sdg Self',3,'',7,1),(122,'2015-12-22 13:07:33.389000','51','Common as Public',3,'',7,1),(123,'2015-12-22 13:07:33.455000','50','SQ ds Self',3,'',7,1),(124,'2015-12-22 13:09:34.982000','62','English dfasdfasd Self',1,'Added.',7,1),(125,'2015-12-22 13:10:05.173000','25','book111 SQ 2015-12-22 111 Self English',1,'Added.',9,1),(126,'2015-12-22 13:11:04.724000','63','DJ root Self',1,'Added.',7,1),(127,'2015-12-22 13:11:06.865000','62','English dfasdfasd Self',2,'Changed parent.',7,1),(128,'2015-12-22 13:11:58.365000','63','SQ root Self',2,'Changed name.',7,1),(129,'2015-12-22 13:13:32.515000','64','DJ sd Self',1,'Added.',7,1),(130,'2015-12-22 13:15:40.647000','65','Common x Public',1,'Added.',7,1),(131,'2015-12-22 13:16:46.682000','7','DJ 小强 123 22 中国 123@qq.com ',3,'',8,1),(132,'2015-12-22 13:16:46.738000','6','SQ 孙强 123 22 中国 1803067851@qq.com ',3,'',8,1),(133,'2015-12-22 13:16:56.337000','64','DJ sd Self',3,'',7,1),(134,'2015-12-22 13:16:56.434000','63','SQ root Self',3,'',7,1),(135,'2015-12-22 13:16:56.479000','62','English dfasdfasd Self',3,'',7,1),(136,'2015-12-22 13:25:24.599000','26','数学 根目录 2015-12-22 数学是一门伟大的学科。 Self 理科',2,'No fields changed.',9,1),(137,'2015-12-22 13:28:44.647000','26','math 根目录 2015-12-22 数学是一门伟大的学科。 Self 理科',2,'Changed Title.',9,1),(138,'2015-12-22 13:28:59.194000','68','MMMM self Self',2,'Changed name.',7,1),(139,'2015-12-22 14:09:12.834000','26','math 根目录 2015-12-22 数学是一门伟大的学科。 Self MMMM',3,'',9,1),(140,'2015-12-22 14:09:12.927000','25','book111  2015-12-22 111 Self ',3,'',9,1),(141,'2015-12-23 03:24:14.221000','65','Common x Public',3,'',7,1),(142,'2015-12-23 03:27:05.465000','74','DIR common Public',3,'',7,1),(143,'2015-12-23 03:28:09.131000','75','DIR common Public',3,'',7,1),(144,'2015-12-23 03:28:09.183000','73','Common common Public',3,'',7,1),(145,'2015-12-23 03:28:09.219000','71','DIR self Self',3,'',7,1),(146,'2015-12-23 03:28:09.250000','69','DIR self Self',3,'',7,1),(147,'2015-12-23 03:28:16.412000','68','MMMM self Self',3,'',7,1),(148,'2015-12-23 03:56:34.856000','76','Common common Public',3,'',7,1),(149,'2015-12-23 09:00:26.807000','82','Common common Public',3,'',7,1),(150,'2015-12-23 09:16:47.338000','84','Common common Public',3,'',7,1),(151,'2015-12-23 09:20:49.119000','87','SQ common Public',2,'No fields changed.',7,1),(152,'2015-12-23 09:21:37.474000','87','SQ common Public',3,'',7,1),(153,'2015-12-23 09:21:37.569000','86','Common common Public',3,'',7,1),(154,'2015-12-23 09:21:37.615000','80','SQ self Self',3,'',7,1),(155,'2015-12-23 09:21:37.651000','79','云计算 self Self',3,'',7,1),(156,'2015-12-23 09:21:37.681000','78','大数据 self Self',3,'',7,1),(157,'2015-12-23 09:21:37.802000','77','计算机科学与技术 self Self',3,'',7,1),(158,'2015-12-23 09:21:37.884000','67','根目录 self Self',3,'',7,1),(159,'2015-12-23 09:21:38.095000','66','SQ self Self',3,'',7,1),(160,'2015-12-23 09:21:55.897000','28','回头 SQ\n根目录 2015-12-22 shengjsdkjdfkkjadk4 Public ',3,'',9,1),(161,'2015-12-23 09:21:55.986000','27','book111 SQ 2015-12-22  Self ',3,'',9,1),(162,'2015-12-23 09:21:56.034000','31','云存储 SQ 2015-12-23 云计算非常的抽象。 Self ',3,'',9,1),(163,'2015-12-23 09:21:56.119000','30','大数据挖掘 SQ\n根目录 2015-12-23 大数据时代的到来给我们的生活带来了非常便捷的服务。 Public ',3,'',9,1),(164,'2015-12-23 09:21:56.161000','29','软件工程 SQ 2015-12-23 软件工程对我们的学习非常有帮助。 Self ',3,'',9,1),(165,'2015-12-23 09:22:28.959000','89','SQ fgh Self',1,'Added.',7,1),(166,'2015-12-23 09:24:23.475000','90','计算机科学与技术 sdfgh Public',1,'Added.',7,1),(167,'2015-12-23 09:39:27.605000','90','计算机科学与技术 sdfgh Public',3,'',7,1),(168,'2015-12-23 09:39:27.661000','89','SQ fgh Self',3,'',7,1),(169,'2015-12-23 09:39:34.491000','9','根目录 孙强 123 21 中国 123@qq.com ',3,'',8,1),(170,'2015-12-23 09:39:34.593000','8','SQ 孙强 123 22 china 123@qq.com ',3,'',8,1),(171,'2015-12-25 11:56:58.271000','12','SD sas 123 12 as 1803067851@qq.com SD\n计算机科学与技术\n计算机系统',2,'Changed Password and Email.',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;


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
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--


/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'books','book'),(7,'books','category'),(10,'books','comment'),(8,'books','users'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;


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
  `applied` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--


/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-11-27 03:19:22.960000'),(2,'auth','0001_initial','2015-11-27 03:19:32.041000'),(3,'admin','0001_initial','2015-11-27 03:19:34.005000'),(4,'contenttypes','0002_remove_content_type_name','2015-11-27 03:19:35.171000'),(5,'auth','0002_alter_permission_name_max_length','2015-11-27 03:19:36.065000'),(6,'auth','0003_alter_user_email_max_length','2015-11-27 03:19:37.387000'),(7,'auth','0004_alter_user_username_opts','2015-11-27 03:19:37.431000'),(8,'auth','0005_alter_user_last_login_null','2015-11-27 03:19:38.067000'),(9,'auth','0006_require_contenttypes_0002','2015-11-27 03:19:38.128000'),(10,'sessions','0001_initial','2015-11-27 03:19:38.825000'),(11,'admin','0002_logentry_remove_auto_add','2015-12-22 13:01:41.263000'),(12,'auth','0007_alter_validators_add_error_messages','2015-12-22 13:01:41.434000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;


--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--


/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hu4hs9muws5u8qfwcgjmytmdvt1akjvi','NjEwNjhmMjA4NjRjYzQzMTMzNDNiNGU5NDkzYjk0NzAzOGFmZTU3Yzp7InVzZXJuYW1lIjoiREoiLCJfYXV0aF91c2VyX2hhc2giOiI2OTgxZWMyNmU4NjMwZGM5ZjQzYzFjZDI5ZmRiNmExM2RmYzI2OTIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2016-01-08 12:08:48.266000'),('m7aie00e09ss4eu8e551dokzqdq0f6r7','MDI0N2M3OGM1Y2ZiZjcwNDUyNmM3NGNmOGU3OGI2ZmM3Mjc1ODUyYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY5ODFlYzI2ZTg2MzBkYzlmNDNjMWNkMjlmZGI2YTEzZGZjMjY5MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-12-12 06:31:14.717000'),('zz2ltxjky472ny4l956m2w7edhej7zgl','YTI1NWE3ODFmZmI4NTk5NTE5OGJmYTM3YzY5NmIzYTc1M2E1NWEyODp7InVzZXJuYW1lIjoiU1EifQ==','2016-01-04 13:08:37.017000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-25 22:08:17
