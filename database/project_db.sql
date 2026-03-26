-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: abss
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `bus_id` int NOT NULL AUTO_INCREMENT,
  `registration_number` varchar(50) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `depot_id` int DEFAULT NULL,
  PRIMARY KEY (`bus_id`),
  UNIQUE KEY `registration_number` (`registration_number`),
  KEY `depot_id` (`depot_id`),
  CONSTRAINT `bus_ibfk_1` FOREIGN KEY (`depot_id`) REFERENCES `depot` (`depot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,'DL01AB1001',50,'Available',1),(2,'DL01AB1002',45,'Available',1),(3,'DL01AB1003',60,'Available',1),(4,'DL01AB1004',55,'Available',1),(5,'DL01AB1005',40,'Available',1),(6,'DL02CD2001',50,'Available',2),(7,'DL02CD2002',45,'Available',2),(8,'DL02CD2003',60,'Available',2),(9,'DL02CD2004',55,'Available',2),(10,'DL02CD2005',40,'Available',2),(11,'DL03EF3001',50,'Available',3),(12,'DL03EF3002',45,'Available',3),(13,'DL03EF3003',60,'Available',3),(14,'DL03EF3004',55,'Available',3),(15,'DL03EF3005',40,'Available',3),(16,'DL04GH4001',50,'Available',4),(17,'DL04GH4002',45,'Available',4),(18,'DL04GH4003',60,'Available',4),(19,'DL04GH4004',55,'Available',4),(20,'DL04GH4005',40,'Available',4);
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crew` (
  `crew_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`crew_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` VALUES (1,'Rahul Sharma','Driver'),(2,'Amit Verma','Driver'),(3,'Ravi Kumar','Driver'),(4,'Suresh Yadav','Driver'),(5,'Manoj Singh','Driver'),(6,'Deepak Gupta','Driver'),(7,'Vikas Mishra','Driver'),(8,'Anil Kumar','Driver'),(9,'Pankaj Sharma','Driver'),(10,'Sunil Chauhan','Driver'),(11,'Rajesh Patel','Driver'),(12,'Nitin Arora','Driver'),(13,'Karan Mehta','Driver'),(14,'Ashok Tiwari','Driver'),(15,'Dinesh Kumar','Driver'),(16,'Mukesh Yadav','Driver'),(17,'Rohit Sharma','Driver'),(18,'Vivek Singh','Driver'),(19,'Harish Kumar','Driver'),(20,'Sachin Verma','Driver'),(21,'Pradeep Kumar','Driver'),(22,'Ajay Kumar','Conductor'),(23,'Neeraj Singh','Conductor'),(24,'Sanjay Sharma','Conductor'),(25,'Arjun Verma','Conductor'),(26,'Kamal Yadav','Conductor'),(27,'Rakesh Kumar','Conductor'),(28,'Mahesh Singh','Conductor'),(29,'Tarun Gupta','Conductor'),(30,'Vijay Chauhan','Conductor'),(31,'Alok Mishra','Conductor'),(32,'Gaurav Sharma','Conductor'),(33,'Ramesh Patel','Conductor'),(34,'Kapil Dev','Conductor'),(35,'Suraj Kumar','Conductor'),(36,'Naresh Yadav','Conductor'),(37,'Kishan Lal','Conductor'),(38,'Imran Khan','Conductor'),(39,'Salman Sheikh','Conductor'),(40,'Faizan Ali','Conductor'),(41,'Aslam Khan','Conductor'),(42,'Irfan Ansari','Conductor');
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depot`
--

DROP TABLE IF EXISTS `depot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depot` (
  `depot_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`depot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot`
--

LOCK TABLES `depot` WRITE;
/*!40000 ALTER TABLE `depot` DISABLE KEYS */;
INSERT INTO `depot` VALUES (1,'Ambedkar Nagar Depot','Mehrauli - Badarpur Rd'),(2,'Nand Nagri Depot','Nand Nagri Mandoli'),(3,'Sarojini Nagar Depot','Netaji Nagar'),(4,'Wazirpur Depot','Dr Lohia Industrial Area');
/*!40000 ALTER TABLE `depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duty`
--

DROP TABLE IF EXISTS `duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duty` (
  `duty_id` int NOT NULL AUTO_INCREMENT,
  `duty_type` varchar(50) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `schedule_id` int DEFAULT NULL,
  `bus_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `conductor_id` int DEFAULT NULL,
  `shift` varchar(20) DEFAULT NULL,
  `route_id` int DEFAULT NULL,
  PRIMARY KEY (`duty_id`),
  UNIQUE KEY `unique_bus_schedule` (`bus_id`,`schedule_id`,`start_time`),
  UNIQUE KEY `unique_driver_schedule` (`driver_id`,`schedule_id`,`start_time`),
  UNIQUE KEY `unique_conductor_schedule` (`conductor_id`,`schedule_id`,`start_time`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `duty_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`),
  CONSTRAINT `duty_ibfk_2` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`),
  CONSTRAINT `fk_conductor` FOREIGN KEY (`conductor_id`) REFERENCES `crew` (`crew_id`),
  CONSTRAINT `fk_driver` FOREIGN KEY (`driver_id`) REFERENCES `crew` (`crew_id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duty`
--

LOCK TABLES `duty` WRITE;
/*!40000 ALTER TABLE `duty` DISABLE KEYS */;
INSERT INTO `duty` VALUES (1,'Linked','06:00:00','11:30:00',1,1,1,22,'B1_Morning',1),(2,'Unlinked','06:00:00','11:30:00',1,2,2,23,'B1_Morning',2),(3,'Linked','06:00:00','11:30:00',1,3,3,24,'B1_Morning',3),(4,'Unlinked','06:00:00','11:30:00',1,4,4,25,'B1_Morning',4),(5,'Linked','06:00:00','11:30:00',1,5,5,26,'B1_Morning',5),(6,'Unlinked','06:00:00','11:30:00',1,6,6,27,'B1_Morning',6),(7,'Linked','06:00:00','11:30:00',1,7,7,28,'B1_Morning',7),(8,'Unlinked','06:00:00','11:30:00',1,8,8,29,'B1_Morning',8),(9,'Linked','07:00:00','12:30:00',1,9,9,30,'B2_Morning',9),(10,'Unlinked','07:00:00','12:30:00',1,10,10,31,'B2_Morning',10),(11,'Linked','07:00:00','12:30:00',1,11,11,32,'B2_Morning',11),(12,'Unlinked','07:00:00','12:30:00',1,12,12,33,'B2_Morning',12),(13,'Linked','07:00:00','12:30:00',1,13,13,34,'B2_Morning',1),(14,'Unlinked','07:00:00','12:30:00',1,14,14,35,'B2_Morning',2),(15,'Linked','07:00:00','12:30:00',1,15,15,36,'B2_Morning',3),(16,'Unlinked','07:00:00','12:30:00',1,16,16,37,'B2_Morning',4),(17,'Linked','12:00:00','17:30:00',1,1,17,38,'B1_Afternoon',5),(18,'Unlinked','12:00:00','17:30:00',1,2,18,39,'B1_Afternoon',6),(19,'Linked','12:00:00','17:30:00',1,3,19,40,'B1_Afternoon',7),(20,'Unlinked','12:00:00','17:30:00',1,4,20,41,'B1_Afternoon',8),(21,'Linked','12:00:00','17:30:00',1,5,21,42,'B1_Afternoon',9),(22,'Unlinked','12:00:00','17:30:00',1,6,1,22,'B1_Afternoon',10),(23,'Linked','12:00:00','17:30:00',1,7,2,23,'B1_Afternoon',11),(24,'Unlinked','12:00:00','17:30:00',1,8,3,24,'B1_Afternoon',12),(25,'Linked','13:00:00','18:30:00',1,9,4,25,'B2_Afternoon',1),(26,'Unlinked','13:00:00','18:30:00',1,10,5,26,'B2_Afternoon',2),(27,'Linked','13:00:00','18:30:00',1,11,6,27,'B2_Afternoon',3),(28,'Unlinked','13:00:00','18:30:00',1,12,7,28,'B2_Afternoon',4),(29,'Linked','13:00:00','18:30:00',1,13,8,29,'B2_Afternoon',5),(30,'Unlinked','13:00:00','18:30:00',1,14,9,30,'B2_Afternoon',6),(31,'Linked','13:00:00','18:30:00',1,15,10,31,'B2_Afternoon',7),(32,'Unlinked','13:00:00','18:30:00',1,16,11,32,'B2_Afternoon',8),(33,'Linked','18:00:00','22:00:00',1,1,12,33,'B1_Evening',9),(34,'Unlinked','18:00:00','22:00:00',1,2,13,34,'B1_Evening',10),(35,'Linked','18:00:00','22:00:00',1,3,14,35,'B1_Evening',11),(36,'Unlinked','18:00:00','22:00:00',1,4,15,36,'B1_Evening',12),(37,'Linked','19:00:00','22:00:00',1,5,16,37,'B2_Evening',1),(38,'Unlinked','19:00:00','22:00:00',1,6,17,38,'B2_Evening',2),(39,'Linked','19:00:00','22:00:00',1,7,18,39,'B2_Evening',3),(40,'Unlinked','19:00:00','22:00:00',1,8,19,40,'B2_Evening',4),(41,'Linked','06:00:00','11:30:00',7,1,7,28,'B1_Morning',7),(42,'Linked','06:00:00','11:30:00',6,1,6,27,'B1_Morning',6),(43,'Linked','06:00:00','11:30:00',5,1,5,26,'B1_Morning',5),(44,'Linked','06:00:00','11:30:00',4,1,4,25,'B1_Morning',4),(45,'Linked','06:00:00','11:30:00',3,1,3,24,'B1_Morning',3),(46,'Linked','06:00:00','11:30:00',2,1,2,23,'B1_Morning',2),(47,'Unlinked','06:00:00','11:30:00',7,2,8,29,'B1_Morning',8),(48,'Unlinked','06:00:00','11:30:00',6,2,7,28,'B1_Morning',7),(49,'Unlinked','06:00:00','11:30:00',5,2,6,27,'B1_Morning',6),(50,'Unlinked','06:00:00','11:30:00',4,2,5,26,'B1_Morning',5),(51,'Unlinked','06:00:00','11:30:00',3,2,4,25,'B1_Morning',4),(52,'Unlinked','06:00:00','11:30:00',2,2,3,24,'B1_Morning',3),(53,'Linked','06:00:00','11:30:00',7,3,9,30,'B1_Morning',9),(54,'Linked','06:00:00','11:30:00',6,3,8,29,'B1_Morning',8),(55,'Linked','06:00:00','11:30:00',5,3,7,28,'B1_Morning',7),(56,'Linked','06:00:00','11:30:00',4,3,6,27,'B1_Morning',6),(57,'Linked','06:00:00','11:30:00',3,3,5,26,'B1_Morning',5),(58,'Linked','06:00:00','11:30:00',2,3,4,25,'B1_Morning',4),(59,'Unlinked','06:00:00','11:30:00',7,4,10,31,'B1_Morning',10),(60,'Unlinked','06:00:00','11:30:00',6,4,9,30,'B1_Morning',9),(61,'Unlinked','06:00:00','11:30:00',5,4,8,29,'B1_Morning',8),(62,'Unlinked','06:00:00','11:30:00',4,4,7,28,'B1_Morning',7),(63,'Unlinked','06:00:00','11:30:00',3,4,6,27,'B1_Morning',6),(64,'Unlinked','06:00:00','11:30:00',2,4,5,26,'B1_Morning',5),(65,'Linked','06:00:00','11:30:00',7,5,11,32,'B1_Morning',11),(66,'Linked','06:00:00','11:30:00',6,5,10,31,'B1_Morning',10),(67,'Linked','06:00:00','11:30:00',5,5,9,30,'B1_Morning',9),(68,'Linked','06:00:00','11:30:00',4,5,8,29,'B1_Morning',8),(69,'Linked','06:00:00','11:30:00',3,5,7,28,'B1_Morning',7),(70,'Linked','06:00:00','11:30:00',2,5,6,27,'B1_Morning',6),(71,'Unlinked','06:00:00','11:30:00',7,6,12,33,'B1_Morning',12),(72,'Unlinked','06:00:00','11:30:00',6,6,11,32,'B1_Morning',11),(73,'Unlinked','06:00:00','11:30:00',5,6,10,31,'B1_Morning',10),(74,'Unlinked','06:00:00','11:30:00',4,6,9,30,'B1_Morning',9),(75,'Unlinked','06:00:00','11:30:00',3,6,8,29,'B1_Morning',8),(76,'Unlinked','06:00:00','11:30:00',2,6,7,28,'B1_Morning',7),(77,'Linked','06:00:00','11:30:00',7,7,13,34,'B1_Morning',1),(78,'Linked','06:00:00','11:30:00',6,7,12,33,'B1_Morning',12),(79,'Linked','06:00:00','11:30:00',5,7,11,32,'B1_Morning',11),(80,'Linked','06:00:00','11:30:00',4,7,10,31,'B1_Morning',10),(81,'Linked','06:00:00','11:30:00',3,7,9,30,'B1_Morning',9),(82,'Linked','06:00:00','11:30:00',2,7,8,29,'B1_Morning',8),(83,'Unlinked','06:00:00','11:30:00',7,8,14,35,'B1_Morning',2),(84,'Unlinked','06:00:00','11:30:00',6,8,13,34,'B1_Morning',1),(85,'Unlinked','06:00:00','11:30:00',5,8,12,33,'B1_Morning',12),(86,'Unlinked','06:00:00','11:30:00',4,8,11,32,'B1_Morning',11),(87,'Unlinked','06:00:00','11:30:00',3,8,10,31,'B1_Morning',10),(88,'Unlinked','06:00:00','11:30:00',2,8,9,30,'B1_Morning',9),(89,'Linked','07:00:00','12:30:00',7,9,15,36,'B2_Morning',3),(90,'Linked','07:00:00','12:30:00',6,9,14,35,'B2_Morning',2),(91,'Linked','07:00:00','12:30:00',5,9,13,34,'B2_Morning',1),(92,'Linked','07:00:00','12:30:00',4,9,12,33,'B2_Morning',12),(93,'Linked','07:00:00','12:30:00',3,9,11,32,'B2_Morning',11),(94,'Linked','07:00:00','12:30:00',2,9,10,31,'B2_Morning',10),(95,'Unlinked','07:00:00','12:30:00',7,10,16,37,'B2_Morning',4),(96,'Unlinked','07:00:00','12:30:00',6,10,15,36,'B2_Morning',3),(97,'Unlinked','07:00:00','12:30:00',5,10,14,35,'B2_Morning',2),(98,'Unlinked','07:00:00','12:30:00',4,10,13,34,'B2_Morning',1),(99,'Unlinked','07:00:00','12:30:00',3,10,12,33,'B2_Morning',12),(100,'Unlinked','07:00:00','12:30:00',2,10,11,32,'B2_Morning',11),(101,'Linked','07:00:00','12:30:00',7,11,17,38,'B2_Morning',5),(102,'Linked','07:00:00','12:30:00',6,11,16,37,'B2_Morning',4),(103,'Linked','07:00:00','12:30:00',5,11,15,36,'B2_Morning',3),(104,'Linked','07:00:00','12:30:00',4,11,14,35,'B2_Morning',2),(105,'Linked','07:00:00','12:30:00',3,11,13,34,'B2_Morning',1),(106,'Linked','07:00:00','12:30:00',2,11,12,33,'B2_Morning',12),(107,'Unlinked','07:00:00','12:30:00',7,12,18,39,'B2_Morning',6),(108,'Unlinked','07:00:00','12:30:00',6,12,17,38,'B2_Morning',5),(109,'Unlinked','07:00:00','12:30:00',5,12,16,37,'B2_Morning',4),(110,'Unlinked','07:00:00','12:30:00',4,12,15,36,'B2_Morning',3),(111,'Unlinked','07:00:00','12:30:00',3,12,14,35,'B2_Morning',2),(112,'Unlinked','07:00:00','12:30:00',2,12,13,34,'B2_Morning',1),(113,'Linked','07:00:00','12:30:00',7,13,19,40,'B2_Morning',7),(114,'Linked','07:00:00','12:30:00',6,13,18,39,'B2_Morning',6),(115,'Linked','07:00:00','12:30:00',5,13,17,38,'B2_Morning',5),(116,'Linked','07:00:00','12:30:00',4,13,16,37,'B2_Morning',4),(117,'Linked','07:00:00','12:30:00',3,13,15,36,'B2_Morning',3),(118,'Linked','07:00:00','12:30:00',2,13,14,35,'B2_Morning',2),(119,'Unlinked','07:00:00','12:30:00',7,14,20,41,'B2_Morning',8),(120,'Unlinked','07:00:00','12:30:00',6,14,19,40,'B2_Morning',7),(121,'Unlinked','07:00:00','12:30:00',5,14,18,39,'B2_Morning',6),(122,'Unlinked','07:00:00','12:30:00',4,14,17,38,'B2_Morning',5),(123,'Unlinked','07:00:00','12:30:00',3,14,16,37,'B2_Morning',4),(124,'Unlinked','07:00:00','12:30:00',2,14,15,36,'B2_Morning',3),(125,'Linked','07:00:00','12:30:00',7,15,21,42,'B2_Morning',9),(126,'Linked','07:00:00','12:30:00',6,15,20,41,'B2_Morning',8),(127,'Linked','07:00:00','12:30:00',5,15,19,40,'B2_Morning',7),(128,'Linked','07:00:00','12:30:00',4,15,18,39,'B2_Morning',6),(129,'Linked','07:00:00','12:30:00',3,15,17,38,'B2_Morning',5),(130,'Linked','07:00:00','12:30:00',2,15,16,37,'B2_Morning',4),(131,'Unlinked','07:00:00','12:30:00',7,16,1,22,'B2_Morning',10),(132,'Unlinked','07:00:00','12:30:00',6,16,21,42,'B2_Morning',9),(133,'Unlinked','07:00:00','12:30:00',5,16,20,41,'B2_Morning',8),(134,'Unlinked','07:00:00','12:30:00',4,16,19,40,'B2_Morning',7),(135,'Unlinked','07:00:00','12:30:00',3,16,18,39,'B2_Morning',6),(136,'Unlinked','07:00:00','12:30:00',2,16,17,38,'B2_Morning',5),(137,'Linked','12:00:00','17:30:00',7,1,2,23,'B1_Afternoon',11),(138,'Linked','12:00:00','17:30:00',6,1,1,22,'B1_Afternoon',10),(139,'Linked','12:00:00','17:30:00',5,1,21,42,'B1_Afternoon',9),(140,'Linked','12:00:00','17:30:00',4,1,20,41,'B1_Afternoon',8),(141,'Linked','12:00:00','17:30:00',3,1,19,40,'B1_Afternoon',7),(142,'Linked','12:00:00','17:30:00',2,1,18,39,'B1_Afternoon',6),(143,'Unlinked','12:00:00','17:30:00',7,2,3,24,'B1_Afternoon',12),(144,'Unlinked','12:00:00','17:30:00',6,2,2,23,'B1_Afternoon',11),(145,'Unlinked','12:00:00','17:30:00',5,2,1,22,'B1_Afternoon',10),(146,'Unlinked','12:00:00','17:30:00',4,2,21,42,'B1_Afternoon',9),(147,'Unlinked','12:00:00','17:30:00',3,2,20,41,'B1_Afternoon',8),(148,'Unlinked','12:00:00','17:30:00',2,2,19,40,'B1_Afternoon',7),(149,'Linked','12:00:00','17:30:00',7,3,4,25,'B1_Afternoon',1),(150,'Linked','12:00:00','17:30:00',6,3,3,24,'B1_Afternoon',12),(151,'Linked','12:00:00','17:30:00',5,3,2,23,'B1_Afternoon',11),(152,'Linked','12:00:00','17:30:00',4,3,1,22,'B1_Afternoon',10),(153,'Linked','12:00:00','17:30:00',3,3,21,42,'B1_Afternoon',9),(154,'Linked','12:00:00','17:30:00',2,3,20,41,'B1_Afternoon',8),(155,'Unlinked','12:00:00','17:30:00',7,4,5,26,'B1_Afternoon',2),(156,'Unlinked','12:00:00','17:30:00',6,4,4,25,'B1_Afternoon',1),(157,'Unlinked','12:00:00','17:30:00',5,4,3,24,'B1_Afternoon',12),(158,'Unlinked','12:00:00','17:30:00',4,4,2,23,'B1_Afternoon',11),(159,'Unlinked','12:00:00','17:30:00',3,4,1,22,'B1_Afternoon',10),(160,'Unlinked','12:00:00','17:30:00',2,4,21,42,'B1_Afternoon',9),(161,'Linked','12:00:00','17:30:00',7,5,6,27,'B1_Afternoon',3),(162,'Linked','12:00:00','17:30:00',6,5,5,26,'B1_Afternoon',2),(163,'Linked','12:00:00','17:30:00',5,5,4,25,'B1_Afternoon',1),(164,'Linked','12:00:00','17:30:00',4,5,3,24,'B1_Afternoon',12),(165,'Linked','12:00:00','17:30:00',3,5,2,23,'B1_Afternoon',11),(166,'Linked','12:00:00','17:30:00',2,5,1,22,'B1_Afternoon',10),(167,'Unlinked','12:00:00','17:30:00',7,6,7,28,'B1_Afternoon',4),(168,'Unlinked','12:00:00','17:30:00',6,6,6,27,'B1_Afternoon',3),(169,'Unlinked','12:00:00','17:30:00',5,6,5,26,'B1_Afternoon',2),(170,'Unlinked','12:00:00','17:30:00',4,6,4,25,'B1_Afternoon',1),(171,'Unlinked','12:00:00','17:30:00',3,6,3,24,'B1_Afternoon',12),(172,'Unlinked','12:00:00','17:30:00',2,6,2,23,'B1_Afternoon',11),(173,'Linked','12:00:00','17:30:00',7,7,8,29,'B1_Afternoon',5),(174,'Linked','12:00:00','17:30:00',6,7,7,28,'B1_Afternoon',4),(175,'Linked','12:00:00','17:30:00',5,7,6,27,'B1_Afternoon',3),(176,'Linked','12:00:00','17:30:00',4,7,5,26,'B1_Afternoon',2),(177,'Linked','12:00:00','17:30:00',3,7,4,25,'B1_Afternoon',1),(178,'Linked','12:00:00','17:30:00',2,7,3,24,'B1_Afternoon',12),(179,'Unlinked','12:00:00','17:30:00',7,8,9,30,'B1_Afternoon',6),(180,'Unlinked','12:00:00','17:30:00',6,8,8,29,'B1_Afternoon',5),(181,'Unlinked','12:00:00','17:30:00',5,8,7,28,'B1_Afternoon',4),(182,'Unlinked','12:00:00','17:30:00',4,8,6,27,'B1_Afternoon',3),(183,'Unlinked','12:00:00','17:30:00',3,8,5,26,'B1_Afternoon',2),(184,'Unlinked','12:00:00','17:30:00',2,8,4,25,'B1_Afternoon',1),(185,'Linked','13:00:00','18:30:00',7,9,10,31,'B2_Afternoon',7),(186,'Linked','13:00:00','18:30:00',6,9,9,30,'B2_Afternoon',6),(187,'Linked','13:00:00','18:30:00',5,9,8,29,'B2_Afternoon',5),(188,'Linked','13:00:00','18:30:00',4,9,7,28,'B2_Afternoon',4),(189,'Linked','13:00:00','18:30:00',3,9,6,27,'B2_Afternoon',3),(190,'Linked','13:00:00','18:30:00',2,9,5,26,'B2_Afternoon',2),(191,'Unlinked','13:00:00','18:30:00',7,10,11,32,'B2_Afternoon',8),(192,'Unlinked','13:00:00','18:30:00',6,10,10,31,'B2_Afternoon',7),(193,'Unlinked','13:00:00','18:30:00',5,10,9,30,'B2_Afternoon',6),(194,'Unlinked','13:00:00','18:30:00',4,10,8,29,'B2_Afternoon',5),(195,'Unlinked','13:00:00','18:30:00',3,10,7,28,'B2_Afternoon',4),(196,'Unlinked','13:00:00','18:30:00',2,10,6,27,'B2_Afternoon',3),(197,'Linked','13:00:00','18:30:00',7,11,12,33,'B2_Afternoon',9),(198,'Linked','13:00:00','18:30:00',6,11,11,32,'B2_Afternoon',8),(199,'Linked','13:00:00','18:30:00',5,11,10,31,'B2_Afternoon',7),(200,'Linked','13:00:00','18:30:00',4,11,9,30,'B2_Afternoon',6),(201,'Linked','13:00:00','18:30:00',3,11,8,29,'B2_Afternoon',5),(202,'Linked','13:00:00','18:30:00',2,11,7,28,'B2_Afternoon',4),(203,'Unlinked','13:00:00','18:30:00',7,12,13,34,'B2_Afternoon',10),(204,'Unlinked','13:00:00','18:30:00',6,12,12,33,'B2_Afternoon',9),(205,'Unlinked','13:00:00','18:30:00',5,12,11,32,'B2_Afternoon',8),(206,'Unlinked','13:00:00','18:30:00',4,12,10,31,'B2_Afternoon',7),(207,'Unlinked','13:00:00','18:30:00',3,12,9,30,'B2_Afternoon',6),(208,'Unlinked','13:00:00','18:30:00',2,12,8,29,'B2_Afternoon',5),(209,'Linked','13:00:00','18:30:00',7,13,14,35,'B2_Afternoon',11),(210,'Linked','13:00:00','18:30:00',6,13,13,34,'B2_Afternoon',10),(211,'Linked','13:00:00','18:30:00',5,13,12,33,'B2_Afternoon',9),(212,'Linked','13:00:00','18:30:00',4,13,11,32,'B2_Afternoon',8),(213,'Linked','13:00:00','18:30:00',3,13,10,31,'B2_Afternoon',7),(214,'Linked','13:00:00','18:30:00',2,13,9,30,'B2_Afternoon',6),(215,'Unlinked','13:00:00','18:30:00',7,14,15,36,'B2_Afternoon',12),(216,'Unlinked','13:00:00','18:30:00',6,14,14,35,'B2_Afternoon',11),(217,'Unlinked','13:00:00','18:30:00',5,14,13,34,'B2_Afternoon',10),(218,'Unlinked','13:00:00','18:30:00',4,14,12,33,'B2_Afternoon',9),(219,'Unlinked','13:00:00','18:30:00',3,14,11,32,'B2_Afternoon',8),(220,'Unlinked','13:00:00','18:30:00',2,14,10,31,'B2_Afternoon',7),(221,'Linked','13:00:00','18:30:00',7,15,16,37,'B2_Afternoon',1),(222,'Linked','13:00:00','18:30:00',6,15,15,36,'B2_Afternoon',12),(223,'Linked','13:00:00','18:30:00',5,15,14,35,'B2_Afternoon',11),(224,'Linked','13:00:00','18:30:00',4,15,13,34,'B2_Afternoon',10),(225,'Linked','13:00:00','18:30:00',3,15,12,33,'B2_Afternoon',9),(226,'Linked','13:00:00','18:30:00',2,15,11,32,'B2_Afternoon',8),(227,'Unlinked','13:00:00','18:30:00',7,16,17,38,'B2_Afternoon',2),(228,'Unlinked','13:00:00','18:30:00',6,16,16,37,'B2_Afternoon',1),(229,'Unlinked','13:00:00','18:30:00',5,16,15,36,'B2_Afternoon',12),(230,'Unlinked','13:00:00','18:30:00',4,16,14,35,'B2_Afternoon',11),(231,'Unlinked','13:00:00','18:30:00',3,16,13,34,'B2_Afternoon',10),(232,'Unlinked','13:00:00','18:30:00',2,16,12,33,'B2_Afternoon',9),(233,'Linked','18:00:00','22:00:00',7,1,18,39,'B1_Evening',3),(234,'Linked','18:00:00','22:00:00',6,1,17,38,'B1_Evening',2),(235,'Linked','18:00:00','22:00:00',5,1,16,37,'B1_Evening',1),(236,'Linked','18:00:00','22:00:00',4,1,15,36,'B1_Evening',12),(237,'Linked','18:00:00','22:00:00',3,1,14,35,'B1_Evening',11),(238,'Linked','18:00:00','22:00:00',2,1,13,34,'B1_Evening',10),(239,'Unlinked','18:00:00','22:00:00',7,2,19,40,'B1_Evening',4),(240,'Unlinked','18:00:00','22:00:00',6,2,18,39,'B1_Evening',3),(241,'Unlinked','18:00:00','22:00:00',5,2,17,38,'B1_Evening',2),(242,'Unlinked','18:00:00','22:00:00',4,2,16,37,'B1_Evening',1),(243,'Unlinked','18:00:00','22:00:00',3,2,15,36,'B1_Evening',12),(244,'Unlinked','18:00:00','22:00:00',2,2,14,35,'B1_Evening',11),(245,'Linked','18:00:00','22:00:00',7,3,20,41,'B1_Evening',5),(246,'Linked','18:00:00','22:00:00',6,3,19,40,'B1_Evening',4),(247,'Linked','18:00:00','22:00:00',5,3,18,39,'B1_Evening',3),(248,'Linked','18:00:00','22:00:00',4,3,17,38,'B1_Evening',2),(249,'Linked','18:00:00','22:00:00',3,3,16,37,'B1_Evening',1),(250,'Linked','18:00:00','22:00:00',2,3,15,36,'B1_Evening',12),(251,'Unlinked','18:00:00','22:00:00',7,4,21,42,'B1_Evening',6),(252,'Unlinked','18:00:00','22:00:00',6,4,20,41,'B1_Evening',5),(253,'Unlinked','18:00:00','22:00:00',5,4,19,40,'B1_Evening',4),(254,'Unlinked','18:00:00','22:00:00',4,4,18,39,'B1_Evening',3),(255,'Unlinked','18:00:00','22:00:00',3,4,17,38,'B1_Evening',2),(256,'Unlinked','18:00:00','22:00:00',2,4,16,37,'B1_Evening',1),(257,'Linked','19:00:00','22:00:00',7,5,1,22,'B2_Evening',7),(258,'Linked','19:00:00','22:00:00',6,5,21,42,'B2_Evening',6),(259,'Linked','19:00:00','22:00:00',5,5,20,41,'B2_Evening',5),(260,'Linked','19:00:00','22:00:00',4,5,19,40,'B2_Evening',4),(261,'Linked','19:00:00','22:00:00',3,5,18,39,'B2_Evening',3),(262,'Linked','19:00:00','22:00:00',2,5,17,38,'B2_Evening',2),(263,'Unlinked','19:00:00','22:00:00',7,6,2,23,'B2_Evening',8),(264,'Unlinked','19:00:00','22:00:00',6,6,1,22,'B2_Evening',7),(265,'Unlinked','19:00:00','22:00:00',5,6,21,42,'B2_Evening',6),(266,'Unlinked','19:00:00','22:00:00',4,6,20,41,'B2_Evening',5),(267,'Unlinked','19:00:00','22:00:00',3,6,19,40,'B2_Evening',4),(268,'Unlinked','19:00:00','22:00:00',2,6,18,39,'B2_Evening',3),(269,'Linked','19:00:00','22:00:00',7,7,3,24,'B2_Evening',9),(270,'Linked','19:00:00','22:00:00',6,7,2,23,'B2_Evening',8),(271,'Linked','19:00:00','22:00:00',5,7,1,22,'B2_Evening',7),(272,'Linked','19:00:00','22:00:00',4,7,21,42,'B2_Evening',6),(273,'Linked','19:00:00','22:00:00',3,7,20,41,'B2_Evening',5),(274,'Linked','19:00:00','22:00:00',2,7,19,40,'B2_Evening',4),(275,'Unlinked','19:00:00','22:00:00',7,8,4,25,'B2_Evening',10),(276,'Unlinked','19:00:00','22:00:00',6,8,3,24,'B2_Evening',9),(277,'Unlinked','19:00:00','22:00:00',5,8,2,23,'B2_Evening',8),(278,'Unlinked','19:00:00','22:00:00',4,8,1,22,'B2_Evening',7),(279,'Unlinked','19:00:00','22:00:00',3,8,21,42,'B2_Evening',6),(280,'Unlinked','19:00:00','22:00:00',2,8,20,41,'B2_Evening',5);
/*!40000 ALTER TABLE `duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` int NOT NULL AUTO_INCREMENT,
  `route_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'Mori Gate - Ambedkar Nagar'),(2,'Lajpat Nagar - Ambedkar Nagar'),(3,'Red Fort - Mehrauli'),(4,'R.K. Puram 1 - Nand Nagri Community Centre'),(5,'Mayur Vihar Phase III - Mehrauli'),(6,'Malviya Nagar - New Seemapuri'),(7,'Trinagar Jai Mata Market - Sarojini Nagar Depot'),(8,'Kalyanpuri - Jahangir Puri'),(9,'Inder Puri - Jahangir Puri'),(10,'Bhalswa - Wazirpur'),(11,'Uttam Nagar - Adarsh Nagar'),(12,'Kashmere Gate - Gandhi Vihar');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_stop`
--

DROP TABLE IF EXISTS `route_stop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route_stop` (
  `route_id` int NOT NULL,
  `stop_id` int NOT NULL,
  `stop_order` int DEFAULT NULL,
  PRIMARY KEY (`route_id`,`stop_id`),
  KEY `stop_id` (`stop_id`),
  CONSTRAINT `route_stop_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `route_stop_ibfk_2` FOREIGN KEY (`stop_id`) REFERENCES `stop` (`stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_stop`
--

LOCK TABLES `route_stop` WRITE;
/*!40000 ALTER TABLE `route_stop` DISABLE KEYS */;
INSERT INTO `route_stop` VALUES (1,4,12),(1,8,7),(1,18,10),(1,20,3),(1,23,11),(1,59,1),(1,71,6),(1,80,9),(1,82,2),(1,98,8),(1,100,5),(1,101,4),(2,4,8),(2,18,6),(2,23,7),(2,36,1),(2,38,5),(2,48,2),(2,58,3),(2,89,4),(3,8,6),(3,20,2),(3,44,11),(3,56,13),(3,64,8),(3,67,9),(3,71,5),(3,74,12),(3,82,1),(3,97,10),(3,98,7),(3,100,4),(3,101,3),(4,11,16),(4,16,17),(4,20,9),(4,28,4),(4,31,12),(4,50,14),(4,57,2),(4,62,15),(4,63,18),(4,73,6),(4,76,1),(4,79,13),(4,85,5),(4,86,3),(4,92,7),(4,94,10),(4,101,8),(4,106,11),(5,1,3),(5,4,13),(5,26,6),(5,33,14),(5,39,2),(5,47,16),(5,54,1),(5,55,10),(5,56,17),(5,60,4),(5,70,9),(5,72,7),(5,78,5),(5,87,15),(5,97,12),(5,99,11),(5,100,8),(6,13,5),(6,19,4),(6,24,11),(6,32,8),(6,43,3),(6,51,1),(6,65,14),(6,69,2),(6,78,9),(6,92,6),(6,93,10),(6,101,7),(6,102,13),(6,107,12),(7,5,5),(7,14,2),(7,28,11),(7,35,1),(7,46,8),(7,52,6),(7,83,7),(7,85,10),(7,86,12),(7,90,4),(7,95,3),(7,103,9),(8,1,14),(8,2,2),(8,9,3),(8,17,5),(8,20,10),(8,27,6),(8,31,7),(8,32,11),(8,34,1),(8,39,15),(8,60,13),(8,78,12),(8,81,4),(8,94,9),(8,106,8),(9,2,8),(9,6,7),(9,29,1),(9,34,9),(9,41,4),(9,49,2),(9,75,5),(9,91,3),(9,105,6),(10,12,1),(10,22,3),(10,37,5),(10,84,4),(10,88,2),(10,105,6),(11,2,11),(11,7,10),(11,10,4),(11,15,2),(11,25,3),(11,40,9),(11,45,6),(11,53,5),(11,61,7),(11,104,1),(11,108,8),(12,21,6),(12,30,3),(12,42,1),(12,66,5),(12,68,2),(12,77,4);
/*!40000 ALTER TABLE `route_stop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `schedule_date` date DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'2026-03-20'),(2,'2026-03-21'),(3,'2026-03-22'),(4,'2026-03-23'),(5,'2026-03-24'),(6,'2026-03-25'),(7,'2026-03-26');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stop`
--

DROP TABLE IF EXISTS `stop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stop` (
  `stop_id` int NOT NULL AUTO_INCREMENT,
  `stop_name` varchar(100) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stop`
--

LOCK TABLES `stop` WRITE;
/*!40000 ALTER TABLE `stop` DISABLE KEYS */;
INSERT INTO `stop` VALUES (1,'13 Block Trilok Pur',28.61264537,77.30618591),(2,'Adarsh Nagar',28.71753232,77.17003563),(3,'Ambedkar Nagar',28.51536061,77.22848288),(4,'Ambedkar Nagar Terminal',28.51608758,77.22361323),(5,'Arya Samaj Road',28.65003389,77.18965745),(6,'Ashok Vihar',28.70201794,77.16430425),(7,'Ashok Vihar Water Tank',28.69034952,77.1762344),(8,'Ashram',28.57421528,77.25688139),(9,'Bara Bagh',28.7016739,77.18318507),(10,'Beriwala Bagh',28.63146926,77.11205425),(11,'Bhajan Pura',28.70375218,77.26315164),(12,'Bhalswa JJ Cly',28.75028809,77.15073881),(13,'Bharti Nagar',28.59668597,77.22870684),(14,'Block 3 Keshav Puram',28.68568187,77.16338349),(15,'C2B Janakpuri',28.6218895,77.08827805),(16,'C-4 Yamuna Vihar',28.70245924,77.27856892),(17,'Clock Tower',28.67770417,77.20164543),(18,'DDA Flats Kalkaji',28.52825202,77.25778519),(19,'Defence Colony',28.57435828,77.22904792),(20,'Delhi Gate',28.64138779,77.24045922),(21,'Gandhi Vihar',28.72211023,77.21746302),(22,'Haiderpur Water Works',28.72127873,77.140743),(23,'Hamdard Nagar',28.51215458,77.2486293),(24,'Hargovind Enclave',28.64559596,77.30037272),(25,'Hari Nagar Depot',28.62513164,77.10206748),(26,'I.T.O.Ring Road',28.62407551,77.24767552),(27,'Ice Factory',28.66779352,77.21009193),(28,'INA Colony',28.5758927,77.21021416),(29,'Inder Puri',28.63360003,77.14790154),(30,'INS Hostel',28.696151,77.21169346),(31,'ISBT Ring Road',28.67130053,77.23106906),(32,'ITO AGCR',28.62792742,77.24454444),(33,'J Block Saket',28.51749887,77.21644247),(34,'Jahangir Puri',28.72553212,77.16319949),(35,'Jai Mata Market',28.68126852,77.15542328),(36,'Jal Vihar',28.57834187,77.24624969),(37,'JD Block Pitampura',28.70180259,77.13459749),(38,'Kalkaji Mandir',28.54812916,77.26304259),(39,'Kalyan Puri',28.61487777,77.31912617),(40,'Kanhiya Nagar',28.68112523,77.16519127),(41,'Karam Pura',28.66352733,77.15519693),(42,'Kashmere Gate',28.66884021,77.22648423),(43,'Khel Gaon',28.55067069,77.21086809),(44,'Khirki Village',28.52994457,77.21801895),(45,'Kirti Nagar',28.64101915,77.13536918),(46,'Krishna Bhawan',28.60517667,77.21102977),(47,'Lado Sarai',28.52280137,77.19185219),(48,'Lajpat Nagar',28.5710551,77.2464672),(49,'Loha Mandi',28.64141576,77.1451282),(50,'Majnu Ka Tila',28.69771853,77.22714318),(51,'Malviya Nagar',28.5354484,77.20854244),(52,'Mandir Marg',28.64006479,77.20664847),(53,'Mayapuri Depot',28.6368498,77.12834756),(54,'Mayur Vihar Phase III',28.61402674,77.33735077),(55,'MCKR Hospital',28.56921718,77.23564742),(56,'Mehrauli',28.52149904,77.18316089),(57,'Mohammadpur',28.56492069,77.18914975),(58,'Mool Chand Hospital',28.56556563,77.2357189),(59,'Mori Gate',28.66659118,77.22576069),(60,'Mother Dairy',28.6197686,77.28581605),(61,'Moti Nagar',28.65863473,77.14426325),(62,'Nanak Sar',28.70892005,77.24211761),(63,'Nand Nagri Community Centre',28.69908784,77.30670515),(64,'Nehru Place',28.54728473,77.25394014),(65,'New Seemapuri',28.68551864,77.33113457),(66,'Nirankari Colony',28.7147862,77.20404216),(67,'O.S. Communication',28.54249624,77.24158946),(68,'Old Secretariat',28.68378019,77.22210068),(69,'Panchshila Club',28.54591101,77.20922762),(70,'Pant Nagar',28.58360027,77.24056371),(71,'Police Station Nizamuddin',28.5914662,77.24506582),(72,'Pragati Maidan',28.61138479,77.24436152),(73,'Prithvi Raj Road',28.59324606,77.21426314),(74,'PTS',28.53116901,77.19681104),(75,'Punjabi Bagh Terminal',28.67312264,77.14368561),(76,'R.K. Puram',28.56296847,77.17851847),(77,'Radio Colony',28.71005475,77.20441036),(78,'Rainy Well',28.62801497,77.260958),(79,'Raksha Vigyan Kendra',28.68195809,77.22899556),(80,'Rampuri',28.53859405,77.2615439),(81,'Rana Pratap Bagh',28.68828136,77.1937266),(82,'Red Fort',28.65803407,77.23657079),(83,'Regal',28.63079502,77.2171947),(84,'Rohini Sect - 7/8 Crossing',28.70829835,77.12532907),(85,'S.J. Airport',28.58442289,77.21224106),(86,'S.N. Depot',28.57475965,77.18984467),(87,'SaidulAJab',28.52115285,77.19996667),(88,'Sanjay Gandhi Transport Nagar',28.74005551,77.15405192),(89,'Sant Nagar',28.5525922,77.24626056),(90,'Sarai Rohilla',28.66274217,77.18212664),(91,'Shahidpur',28.65304528,77.15570545),(92,'Shahjahan Road',28.60851427,77.22816518),(93,'Shakarpur',28.63525254,77.2849206),(94,'Shanti Van',28.64980075,77.24534835),(95,'Shastri Nagar E Block',28.67122143,77.17629073),(96,'Sheikh Sarai',28.53358488,77.23216955),(97,'Sheikh Sarai Phase II',28.533047,77.23215093),(98,'Shri Niwaspuri Depot',28.56072239,77.26056532),(99,'Siri Fort Road',28.55339983,77.22836307),(100,'Sunder Nagar',28.60216153,77.24033462),(101,'Supreme Court',28.62299402,77.24039788),(102,'Surya Nagar',28.66693074,77.3214139),(103,'Tughlak Road',28.59986102,77.21134308),(104,'Uttam Nagar Terminal',28.62609198,77.06831847),(105,'Wazirpur Depot',28.69193829,77.15339304),(106,'Yamuna Bazar',28.66296608,77.23669551),(107,'Yojna Vihar',28.65981599,77.31508799),(108,'Zakhira',28.66774854,77.16409867);
/*!40000 ALTER TABLE `stop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin123'),(2,'scheduler1','sched123'),(3,'planner1','plan123'),(4,'manager1','manage123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-26 20:30:59
