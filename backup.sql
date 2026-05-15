-- MySQL dump 10.13  Distrib 9.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: hos
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','42dae262b8531b3df48cde9cc018c512','2025-07-26 16:04:21','2025-07-26 16:04:21');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `appointment_time` varchar(64) NOT NULL COMMENT '预约时间',
  `doctor_id` int NOT NULL COMMENT '预约医生id',
  `symptoms` varchar(64) NOT NULL COMMENT '症状',
  `patient_id` int NOT NULL COMMENT '病号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更改时间',
  `status` int NOT NULL DEFAULT '0' COMMENT '是否面诊完成',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Appointment_pk_2` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='预约详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'2025-08-02 上午 (8:00-12:00)',1,'111111111',1,'2025-07-26 13:59:32','2025-08-01 22:34:16',1),(2,'周一八点',1,'阿松大',2,'2025-07-29 14:05:53','2025-07-29 14:27:58',1),(14,'2025-07-30 上午',1,'1111',4,'2025-07-30 19:00:57','2025-07-30 19:00:57',1),(15,'2025-07-08 上午',1,'213',5,'2025-07-30 20:57:49','2025-07-30 20:57:49',1),(16,'2025-07-31 上午',1,'123',6,'2025-07-30 23:24:28','2025-07-30 23:24:28',1),(17,'2025-07-23 下午',1,'123',7,'2025-07-30 23:26:39','2025-07-30 23:26:39',1),(18,'2025-07-01 上午',1,'阿松大',8,'2025-07-30 23:35:32','2025-07-30 23:35:32',1),(19,'2025-07-30 上午',1,'我去恶趣味',9,'2025-07-30 23:37:50','2025-07-30 23:37:50',1),(29,'2025-08-06 下午',1,'sddas ',19,'2025-08-01 23:12:44','2025-08-01 23:17:43',1),(38,'2025-08-06 下午',19,'asd',28,'2025-08-02 13:58:01','2025-08-02 14:02:05',1),(39,'2025-08-13 上午',19,'阿松大',29,'2025-08-02 14:48:43','2025-08-02 15:25:39',1),(40,'2025-08-06 下午',1,'asdasd ',30,'2025-08-03 18:15:39','2025-08-03 18:15:44',1),(41,'2025-08-05 下午',1,'asd',31,'2025-08-03 20:22:05','2025-08-03 20:23:27',1),(42,'2025-08-06 下午',1,'烦烦烦方法',32,'2025-08-03 20:23:43','2025-08-03 20:29:53',1),(43,'2025-08-07 下午',1,'阿松大',33,'2025-08-03 20:30:00','2025-08-03 20:33:57',1),(44,'2025-08-08 下午',1,'123',34,'2025-08-03 20:42:31','2025-08-03 20:44:25',1),(45,'2025-08-05 下午',1,'asd',35,'2025-08-03 20:44:37','2025-08-03 20:44:59',1),(46,'2025-08-07 下午',1,'sdfsdf',36,'2025-08-03 20:45:06','2025-08-03 20:46:33',1),(47,'2025-08-06 下午',1,'阿三大苏打',37,'2025-08-03 20:46:41','2025-08-03 20:49:12',1),(48,'2025-08-08 上午',1,'阿三大苏打实打实',38,'2025-08-03 20:49:19','2025-08-03 20:49:21',1),(50,'2025-08-13 下午',19,'asdasd',40,'2025-08-19 20:21:55','2025-08-19 20:21:55',0);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '职位名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1472208899 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='职位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (-1983897599,'医生','2025-07-29 13:13:32','2025-07-29 13:13:32'),(1,'主任','2025-07-15 13:29:31','2025-07-15 13:29:32');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `department_id` varchar(32) NOT NULL COMMENT '职位',
  `specialty_id` int NOT NULL COMMENT '科门',
  `work_time` varchar(64) NOT NULL COMMENT '工作时间',
  `username` varchar(32) NOT NULL COMMENT '医生账号',
  `password` varchar(32) NOT NULL COMMENT '账号密码',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int NOT NULL DEFAULT '1' COMMENT '账号启用停用',
  `image` varchar(128) NOT NULL COMMENT '医生头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'赛迪','1',1,'周一至周五 8:00-9:00','saidi','42dae262b8531b3df48cde9cc018c512','2025-07-14 19:23:12','2025-07-14 19:23:12',1,''),(19,'波妞','-1983897599',-2025848830,'周一至周五 8:00-9:00','boniu','e10adc3949ba59abbe56e057f20f883e','2025-08-01 23:25:40','2025-08-01 23:25:40',1,'https://hospitail-ljs-project.oss-cn-hangzhou.aliyuncs.com/hos-images/2025-08-01/688cdc71bfd6240d77f9af91.jpg'),(20,'原因','-1983897599',-2025848830,'周一至周五 8:00-9:00','yy','e10adc3949ba59abbe56e057f20f883e','2025-08-19 19:12:01','2025-08-19 19:12:01',1,'');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) NOT NULL COMMENT '病人名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `create_user_id` int NOT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='病人表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'懒','2025-07-15 17:37:13','2025-07-15 17:37:13',1),(2,'闪电','2025-07-29 14:06:09','2025-07-29 14:06:10',1),(4,'张三','2025-07-30 19:00:57','2025-07-30 19:00:57',1),(5,'张思','2025-07-30 20:57:49','2025-07-30 20:57:49',1),(6,'王柳','2025-07-30 23:24:28','2025-07-30 23:24:28',1),(7,'士大夫','2025-07-30 23:26:39','2025-07-30 23:26:39',1),(8,'给他','2025-07-30 23:35:32','2025-07-30 23:35:32',1),(9,'那一年','2025-07-30 23:37:50','2025-07-30 23:37:50',1),(19,'梵蒂冈','2025-08-01 23:12:44','2025-08-01 23:12:44',1),(28,'wangwu','2025-08-02 13:58:01','2025-08-02 13:58:01',3),(29,'阿松大','2025-08-02 14:48:43','2025-08-02 14:48:43',3),(30,'阿松大','2025-08-03 18:15:39','2025-08-03 18:15:39',3),(31,'阿松大','2025-08-03 20:22:05','2025-08-03 20:22:05',3),(32,'阿松大','2025-08-03 20:23:43','2025-08-03 20:23:43',3),(33,'阿松大','2025-08-03 20:30:00','2025-08-03 20:30:00',3),(34,'阿松大','2025-08-03 20:42:31','2025-08-03 20:42:31',3),(35,'阿松大','2025-08-03 20:44:37','2025-08-03 20:44:37',3),(36,'阿松大','2025-08-03 20:45:06','2025-08-03 20:45:06',3),(37,'阿松大','2025-08-03 20:46:41','2025-08-03 20:46:41',3),(38,'阿松大','2025-08-03 20:49:19','2025-08-03 20:49:19',3),(40,'阿松大','2025-08-19 20:21:55','2025-08-19 20:21:55',3);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialty`
--

DROP TABLE IF EXISTS `specialty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialty` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) NOT NULL COMMENT '科门名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1820454914 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='科门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialty`
--

LOCK TABLES `specialty` WRITE;
/*!40000 ALTER TABLE `specialty` DISABLE KEYS */;
INSERT INTO `specialty` VALUES (-2025848830,'脑科','2025-08-01 23:24:35','2025-08-01 23:24:51'),(-1044303870,'内科','2025-07-29 02:04:01','2025-07-29 02:04:09'),(1,'外科','2025-07-15 13:29:51','2025-07-25 21:01:56'),(79699969,'神经科','2025-07-29 13:29:08','2025-07-29 13:29:08');
/*!40000 ALTER TABLE `specialty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `password` varchar(128) NOT NULL DEFAULT '123456' COMMENT '密码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='登录用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'liangjiashuo','96e79218965eb72c92a549dd5a330112','2025-07-23 14:31:27','2025-07-23 14:31:27'),(2,'张三','96e79218965eb72c92a549dd5a330112','2025-07-23 14:36:54','2025-07-23 14:36:54'),(3,'wangwu','96e79218965eb72c92a549dd5a330112','2025-07-30 17:04:40','2025-07-30 17:04:40'),(4,'lll','96e79218965eb72c92a549dd5a330112','2025-08-19 19:10:19','2025-08-19 19:10:19');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id` int NOT NULL COMMENT '主键id',
  `phone` varchar(32) NOT NULL COMMENT '手机号',
  `sex` int NOT NULL COMMENT '性别',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `id_card` varchar(32) NOT NULL COMMENT '身份证号',
  `user_id` int NOT NULL,
  `age` int NOT NULL COMMENT '年龄',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'15555555555',0,'梵蒂冈','411423222222222221',1,32),(3,'15503878128',1,'阿松大','411403200307319310',3,18),(4,'15523232323',1,'jkjk','411400200202020202',4,18);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-20 12:40:54
