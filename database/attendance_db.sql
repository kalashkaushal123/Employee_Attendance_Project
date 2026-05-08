-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: attendance_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `check_in` time DEFAULT NULL,
  `check_out` time DEFAULT NULL,
  `status` enum('present','absent','late','half-day') DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'2025-05-01','09:00:00','06:00:00','present'),(2,2,'2025-05-01','09:20:00','06:00:00','late'),(3,3,'2025-05-01',NULL,NULL,'absent'),(4,4,'2025-05-01','09:10:00','01:00:00','half-day'),(5,5,'2025-05-01','08:55:00','06:10:00','present'),(6,6,'2025-05-01','09:45:00','06:00:00','late'),(7,7,'2025-05-01','09:00:00','06:00:00','present'),(8,8,'2025-05-01',NULL,NULL,'absent'),(9,9,'2025-05-01','09:05:00','06:05:00','present'),(10,10,'2025-05-01','09:30:00','02:00:00','half-day'),(11,11,'2025-05-02','09:00:00','06:00:00','present'),(12,12,'2025-05-02','09:25:00','06:00:00','late'),(13,13,'2025-05-02',NULL,NULL,'absent'),(14,14,'2025-05-02','09:15:00','01:30:00','half-day'),(15,15,'2025-05-02','08:50:00','06:05:00','present'),(16,16,'2025-05-02','09:40:00','06:00:00','late'),(17,17,'2025-05-02','09:05:00','06:10:00','present'),(18,18,'2025-05-02',NULL,NULL,'absent'),(19,19,'2025-05-02','09:00:00','06:00:00','present'),(20,20,'2025-05-02','09:35:00','02:15:00','half-day'),(21,21,'2025-05-03','08:55:00','06:00:00','present'),(22,22,'2025-05-03','09:18:00','06:00:00','late'),(23,23,'2025-05-03',NULL,NULL,'absent'),(24,24,'2025-05-03','09:12:00','01:45:00','half-day'),(25,25,'2025-05-03','09:00:00','06:10:00','present'),(26,26,'2025-05-03','09:50:00','06:00:00','late'),(27,27,'2025-05-03','09:02:00','06:00:00','present'),(28,28,'2025-05-03',NULL,NULL,'absent'),(29,29,'2025-05-03','08:58:00','06:00:00','present'),(30,30,'2025-05-03','09:28:00','02:00:00','half-day'),(31,31,'2025-05-04','09:00:00','06:00:00','present'),(32,32,'2025-05-04','09:22:00','06:00:00','late'),(33,33,'2025-05-04',NULL,NULL,'absent'),(34,34,'2025-05-04','09:08:00','01:20:00','half-day'),(35,35,'2025-05-04','08:52:00','06:12:00','present'),(36,36,'2025-05-04','09:38:00','06:00:00','late'),(37,37,'2025-05-04','09:01:00','06:00:00','present'),(38,38,'2025-05-04',NULL,NULL,'absent'),(39,39,'2025-05-04','08:59:00','06:00:00','present'),(40,40,'2025-05-04','09:32:00','02:10:00','half-day'),(41,38,'2026-05-08',NULL,NULL,'absent'),(42,16,'2026-05-08',NULL,NULL,'absent'),(43,34,'2026-05-08',NULL,NULL,'absent'),(44,4,'2026-05-08',NULL,NULL,'absent'),(45,1,'2026-05-08',NULL,NULL,'absent'),(46,7,'2026-05-08',NULL,NULL,'absent'),(47,12,'2026-05-08',NULL,NULL,'absent'),(48,29,'2026-05-08',NULL,NULL,'absent'),(49,26,'2026-05-08',NULL,NULL,'absent'),(50,40,'2026-05-08',NULL,NULL,'absent'),(51,21,'2026-05-08',NULL,NULL,'absent'),(52,20,'2026-05-08',NULL,NULL,'absent'),(53,19,'2026-05-08',NULL,NULL,'absent'),(54,10,'2026-05-08',NULL,NULL,'absent'),(55,31,'2026-05-08',NULL,NULL,'absent'),(56,25,'2026-05-08',NULL,NULL,'absent'),(57,28,'2026-05-08',NULL,NULL,'absent'),(58,13,'2026-05-08',NULL,NULL,'absent'),(59,24,'2026-05-08',NULL,NULL,'absent'),(60,35,'2026-05-08',NULL,NULL,'absent'),(61,33,'2026-05-08',NULL,NULL,'absent'),(62,18,'2026-05-08',NULL,NULL,'absent'),(63,37,'2026-05-08',NULL,NULL,'absent'),(64,23,'2026-05-08',NULL,NULL,'absent'),(65,9,'2026-05-08',NULL,NULL,'absent'),(66,3,'2026-05-08',NULL,NULL,'absent'),(67,2,'2026-05-08',NULL,NULL,'absent'),(68,30,'2026-05-08',NULL,NULL,'absent'),(69,15,'2026-05-08',NULL,NULL,'absent'),(70,36,'2026-05-08',NULL,NULL,'absent'),(71,6,'2026-05-08',NULL,NULL,'absent'),(72,22,'2026-05-08',NULL,NULL,'absent'),(73,39,'2026-05-08',NULL,NULL,'absent'),(74,27,'2026-05-08',NULL,NULL,'absent'),(75,11,'2026-05-08',NULL,NULL,'absent'),(76,5,'2026-05-08',NULL,NULL,'absent'),(77,17,'2026-05-08',NULL,NULL,'absent'),(78,32,'2026-05-08',NULL,NULL,'absent'),(79,8,'2026-05-08',NULL,NULL,'absent'),(80,14,'2026-05-08',NULL,NULL,'absent');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Anjali Sansanwal','anjali.sansanwal@gmail.com','9876543201','2024-01-10','active','IT'),(2,'Rahul Sharma','rahul.sharma@gmail.com','9876543202','2024-01-15','active','HR'),(3,'Priya Verma','priya.verma@gmail.com','9876543203','2024-02-05','inactive','Finance'),(4,'Aman Gupta','aman.gupta@gmail.com','9876543204','2024-02-12','active','Marketing'),(5,'Sneha Kapoor','sneha.kapoor@gmail.com','9876543205','2024-02-18','active','Sales'),(6,'Rohit Mehta','rohit.mehta@gmail.com','9876543206','2024-03-02','inactive','Support'),(7,'Anjali Singh','anjali.singh@gmail.com','9876543207','2024-03-08','active','Operations'),(8,'Vikas Yadav','vikas.yadav@gmail.com','9876543208','2024-03-15','active','IT'),(9,'Pooja Arora','pooja.arora@gmail.com','9876543209','2024-03-22','active','HR'),(10,'Karan Malhotra','karan.malhotra@gmail.com','9876543210','2024-04-01','inactive','Finance'),(11,'Simran Kaur','simran.kaur@gmail.com','9876543211','2024-04-05','active','Marketing'),(12,'Arjun Patel','arjun.patel@gmail.com','9876543212','2024-04-12','active','Sales'),(13,'Meera Joshi','meera.joshi@gmail.com','9876543213','2024-04-18','active','Support'),(14,'Yash Thakur','yash.thakur@gmail.com','9876543214','2024-04-25','inactive','Operations'),(15,'Riya Bansal','riya.bansal@gmail.com','9876543215','2024-05-03','active','IT'),(16,'Aditya Rao','aditya.rao@gmail.com','9876543216','2024-05-10','active','HR'),(17,'Tanvi Saxena','tanvi.saxena@gmail.com','9876543217','2024-05-18','active','Finance'),(18,'Nikhil Jain','nikhil.jain@gmail.com','9876543218','2024-05-24','inactive','Marketing'),(19,'Ishita Roy','ishita.roy@gmail.com','9876543219','2024-06-01','active','Sales'),(20,'Harsh Vardhan','harsh.vardhan@gmail.com','9876543220','2024-06-08','active','Support'),(21,'Divya Nair','divya.nair@gmail.com','9876543221','2024-06-15','active','Operations'),(22,'Sahil Khanna','sahil.khanna@gmail.com','9876543222','2024-06-22','inactive','IT'),(23,'Payal Mishra','payal.mishra@gmail.com','9876543223','2024-07-01','active','HR'),(24,'Mohit Saini','mohit.saini@gmail.com','9876543224','2024-07-09','active','Finance'),(25,'Kriti Chawla','kriti.chawla@gmail.com','9876543225','2024-07-14','active','Marketing'),(26,'Deepak Rana','deepak.rana@gmail.com','9876543226','2024-07-20','inactive','Sales'),(27,'Shreya Dubey','shreya.dubey@gmail.com','9876543227','2024-08-02','active','Support'),(28,'Manav Sehgal','manav.sehgal@gmail.com','9876543228','2024-08-11','active','Operations'),(29,'Ayesha Khan','ayesha.khan@gmail.com','9876543229','2024-08-19','active','IT'),(30,'Rajat Arora','rajat.arora@gmail.com','9876543230','2024-08-25','inactive','HR'),(31,'Komal Sharma','komal.sharma@gmail.com','9876543231','2024-09-03','active','Finance'),(32,'Varun Choudhary','varun.choudhary@gmail.com','9876543232','2024-09-10','active','Marketing'),(33,'Naina Bedi','naina.bedi@gmail.com','9876543233','2024-09-17','active','Sales'),(34,'Akash Tiwari','akash.tiwari@gmail.com','9876543234','2024-09-24','inactive','Support'),(35,'Muskan Agarwal','muskan.agarwal@gmail.com','9876543235','2024-10-01','active','Operations'),(36,'Rohan Desai','rohan.desai@gmail.com','9876543236','2024-10-08','active','IT'),(37,'Palak Jain','palak.jain@gmail.com','9876543237','2024-10-15','active','HR'),(38,'Abhishek Das','abhishek.das@gmail.com','9876543238','2024-10-22','inactive','Finance'),(39,'Sanya Malviya','sanya.malviya@gmail.com','9876543239','2024-11-01','active','Marketing'),(40,'Dev Malhotra','dev.malhotra@gmail.com','9876543240','2024-11-08','active','Sales');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_requests`
--

DROP TABLE IF EXISTS `leave_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_requests` (
  `leave_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reason` text,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  PRIMARY KEY (`leave_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `leave_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_requests`
--

LOCK TABLES `leave_requests` WRITE;
/*!40000 ALTER TABLE `leave_requests` DISABLE KEYS */;
INSERT INTO `leave_requests` VALUES (1,1,'2026-05-10','2026-05-12','Medical Leave','approved'),(2,2,'2026-05-15','2026-05-16','Family Function','pending'),(3,3,'2026-05-18','2026-05-20','Vacation','approved'),(4,4,'2026-05-22','2026-05-22','Personal Work','rejected'),(5,5,'2026-05-25','2026-05-27','Medical Leave','approved'),(6,6,'2026-06-01','2026-06-03','Family Emergency','pending'),(7,7,'2026-06-05','2026-06-06','Wedding Function','approved'),(8,8,'2026-06-08','2026-06-09','Sick Leave','approved'),(9,9,'2026-06-10','2026-06-12','Vacation','pending'),(10,10,'2026-06-15','2026-06-15','Personal Work','rejected'),(11,11,'2026-06-18','2026-06-20','Medical Leave','approved'),(12,12,'2026-06-22','2026-06-24','Travel','pending'),(13,13,'2026-06-25','2026-06-26','Family Function','approved'),(14,14,'2026-06-28','2026-06-30','Vacation','rejected'),(15,15,'2026-07-02','2026-07-04','Medical Leave','approved'),(16,16,'2026-07-06','2026-07-07','Sick Leave','pending'),(17,17,'2026-07-10','2026-07-12','Religious Function','approved'),(18,18,'2026-07-14','2026-07-15','Personal Work','rejected'),(19,19,'2026-07-18','2026-07-20','Vacation','approved'),(20,20,'2026-07-22','2026-07-24','Family Emergency','pending'),(21,21,'2026-07-26','2026-07-27','Medical Leave','approved'),(22,22,'2026-07-29','2026-07-31','Travel','rejected'),(23,23,'2026-08-02','2026-08-04','Vacation','approved'),(24,24,'2026-08-06','2026-08-07','Sick Leave','pending'),(25,25,'2026-08-10','2026-08-12','Family Function','approved'),(26,26,'2026-08-14','2026-08-15','Medical Leave','rejected'),(27,27,'2026-08-18','2026-08-20','Travel','approved'),(28,28,'2026-08-22','2026-08-24','Vacation','pending'),(29,29,'2026-08-26','2026-08-27','Personal Work','approved'),(30,30,'2026-08-29','2026-08-31','Medical Leave','rejected'),(31,31,'2026-09-02','2026-09-04','Family Emergency','approved'),(32,32,'2026-09-06','2026-09-07','Travel','pending'),(33,33,'2026-09-10','2026-09-12','Vacation','approved'),(34,34,'2026-09-14','2026-09-15','Sick Leave','rejected'),(35,35,'2026-09-18','2026-09-20','Medical Leave','approved'),(36,36,'2026-09-22','2026-09-24','Wedding Function','pending'),(37,37,'2026-09-26','2026-09-27','Personal Work','approved'),(38,38,'2026-09-29','2026-10-01','Vacation','rejected'),(39,39,'2026-10-03','2026-10-05','Medical Leave','approved'),(40,40,'2026-10-07','2026-10-08','Family Function','pending');
/*!40000 ALTER TABLE `leave_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-08 17:35:23
