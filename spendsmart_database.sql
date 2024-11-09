-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: spendsmart
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `budget_categories`
--

DROP TABLE IF EXISTS `budget_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_categories` (
  `budget_category_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `budget_limit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`budget_category_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `budget_categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_categories`
--

LOCK TABLES `budget_categories` WRITE;
/*!40000 ALTER TABLE `budget_categories` DISABLE KEYS */;
INSERT INTO `budget_categories` VALUES (11,1,'Dining Out',150.00),(12,1,'Utilities',100.00),(13,2,'Travel',200.00),(14,2,'Hobbies',50.00),(15,2,'Gifts',75.00),(16,3,'Health',80.00),(17,3,'Beauty',30.00),(18,4,'Office Supplies',50.00),(19,4,'Music',120.00),(20,4,'Outdoor Gear',90.00),(21,5,'Movies',40.00),(22,5,'Fitness',60.00),(23,6,'Gardening',30.00),(24,6,'Stationery',40.00),(25,7,'Travel',150.00),(26,7,'Home Decor',100.00),(27,8,'Pets',70.00),(28,8,'Movies',80.00),(29,8,'Tools',50.00),(30,9,'Travel',180.00),(31,9,'Crafts',70.00),(32,10,'Collectibles',100.00),(33,10,'Photography',80.00),(34,10,'Concerts',150.00);
/*!40000 ALTER TABLE `budget_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card_statements`
--

DROP TABLE IF EXISTS `credit_card_statements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card_statements` (
  `credit_card_statement_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `credit_card_number` varchar(16) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `merchant` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`credit_card_statement_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `credit_card_statements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_statements`
--

LOCK TABLES `credit_card_statements` WRITE;
/*!40000 ALTER TABLE `credit_card_statements` DISABLE KEYS */;
INSERT INTO `credit_card_statements` VALUES (31,1,'************1234','JPMorgan Chase & Co.','2023-03-15','Hotel Booking',200.75),(32,1,'************1234','JPMorgan Chase & Co.','2023-03-20','Electronics Store',95.30),(33,1,'************1234','JPMorgan Chase & Co.','2023-03-25','Car Rental',150.50),(34,2,'************5678','Bank of America','2023-03-15','Home Decor Store',75.40),(35,2,'************5678','Bank of America','2023-03-20','Gas Station',45.90),(36,2,'************5678','Bank of America','2023-03-25','Convenience Store',20.25),(37,3,'************4321','Wells Fargo & Co.','2023-04-01','Coffee Shop',10.50),(38,3,'************4321','Wells Fargo & Co.','2023-04-05','Fitness Center',30.75),(39,3,'************4321','Wells Fargo & Co.','2023-04-10','Gift Shop',50.20),(40,4,'************8765','Citigroup Inc.','2023-04-15','Grocery Store',70.90),(41,4,'************8765','Citigroup Inc.','2023-04-20','Movie Theater',25.75),(42,4,'************8765','Citigroup Inc.','2023-04-25','Pharmacy',15.40),(43,5,'************9876','Citigroup Inc.','2023-05-01','Home Improvement',85.60),(44,5,'************9876','Citigroup Inc.','2023-05-05','Diner',30.25),(45,6,'************3456','Bank of America','2023-05-10','Bakery',6.75),(46,6,'************3456','Bank of America','2023-05-15','Clothing Store',60.75),(47,6,'************3456','Bank of America','2023-05-20','Bookstore',40.90),(48,7,'************6543','JPMorgan Chase & Co.','2023-05-25','Pet Grooming',35.30),(49,7,'************6543','JPMorgan Chase & Co.','2023-05-30','Ice Cream Shop',3.25),(50,8,'************7890','Bank of America','2023-06-01','Furniture Store',120.40),(51,8,'************7890','Bank of America','2023-06-05','Toy Store',55.25),(52,8,'************7890','Bank of America','2023-06-10','Automotive Store',90.80),(53,9,'************2109','Bank of America','2023-06-15','Music Store',80.90),(54,9,'************2109','Bank of America','2023-06-20','Art Supplies Store',25.50),(55,10,'************5432','JPMorgan Chase & Co.','2023-06-25','Jewelry Shop',150.75),(56,10,'************5432','JPMorgan Chase & Co.','2023-06-30','Sporting Goods',70.40);
/*!40000 ALTER TABLE `credit_card_statements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'iman_kouri','e3f022dcfd97a20310068b8508ee0bc14430e4032c569c479f07de0b215fbea0','kouri.iman@test-email.com'),(2,'angela_marino','b6e06de398fe29d6f1b77558fd1ae408cab385602c5c2bff715cfc227c83c14e','ang.marino@test-email.com'),(3,'rhian_thompson-russel','2c9c2659872caedc216c518e416c4c3034b4b427af53d72d0cd1219c5fe2eae9','r.thompson-russel@test-email.com'),(4,'samar_shammas','e3d46414b27f4679c55a6799e0fe3271ae2a0fc2a2f0055c909e8d76f79971d8','samar_shammas@test-email.com'),(5,'sara_dujmovic','7a98d2ff346a648e0f548274c701c20aa2aee57cbe6da45d28b7e09e06fccbf5','sara_dujmovic@test-email.com'),(6,'nguyen_le','6815fac74d7906a4d7367c7df23cd61d3e081f63bf53d2fc4a3218cf57fd507a','n.le@test-email.com'),(7,'alex_santos','26b3f34925a5052893c29dc56f1b7d5de222ff44f65d7f553ba47d9c2a79c640','a.santos@test-email.com'),(8,'yi_sun','be33082dc5cc6b47092fc96d58c400167e405173da0148f2bdbe1a0bf80e7dd7','yisun@test-email.com'),(9,'hazel_rodriguez','1e7dd5d6fb805b23971b1629fe717c6f04300d3f6106b74c413a71784821f1df','hrodriguez@test-email.com'),(10,'melissa_anderson','0a244f6c3081478dead94f4d1e13eec5fd083cedb6cf6afde7d524844884e6c1','melissa.anderson@test-email.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_expenses`
--

DROP TABLE IF EXISTS `user_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_expenses` (
  `user_expense_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`user_expense_id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `user_expenses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_expenses_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `budget_categories` (`budget_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_expenses`
--

LOCK TABLES `user_expenses` WRITE;
/*!40000 ALTER TABLE `user_expenses` DISABLE KEYS */;
INSERT INTO `user_expenses` VALUES (1,1,11,'2023-01-15',30.00,'Dinner with friends'),(2,1,12,'2023-01-20',80.00,'Electricity bill'),(3,2,13,'2023-02-01',150.00,'Flight tickets'),(4,2,14,'2023-02-05',20.00,'Art supplies'),(5,2,15,'2023-02-10',50.00,'Gift for a friend'),(6,3,16,'2023-03-01',40.00,'Vitamins'),(7,3,16,'2023-03-05',15.00,'Face mask'),(8,4,18,'2023-04-01',30.00,'Office pens'),(9,4,19,'2023-04-05',80.00,'Music streaming subscription'),(10,4,20,'2023-04-10',60.00,'Outdoor gear maintenance'),(11,5,21,'2023-05-01',25.00,'Movie tickets'),(12,5,22,'2023-05-05',40.00,'Gym membership'),(13,6,23,'2023-06-01',20.00,'Plant seeds'),(14,6,24,'2023-06-05',30.00,'Notebooks'),(15,7,25,'2023-07-01',120.00,'Weekend getaway'),(16,7,26,'2023-07-05',60.00,'Home decor items'),(17,8,27,'2023-08-01',35.00,'Pet food'),(18,8,28,'2023-08-05',40.00,'Movie night tickets'),(19,8,29,'2023-08-10',25.00,'New tools'),(20,9,30,'2023-09-01',80.00,'Travel expenses'),(21,9,31,'2023-09-05',25.00,'Craft supplies'),(22,10,32,'2023-10-01',50.00,'Collectible item'),(23,10,33,'2023-10-05',40.00,'Photography accessories'),(24,10,34,'2023-10-10',75.00,'Concert tickets');
/*!40000 ALTER TABLE `user_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_bills`
--

DROP TABLE IF EXISTS `utility_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utility_bills` (
  `utility_bill_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `utility_company` varchar(255) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`utility_bill_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `utility_bills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bills`
--

LOCK TABLES `utility_bills` WRITE;
/*!40000 ALTER TABLE `utility_bills` DISABLE KEYS */;
INSERT INTO `utility_bills` VALUES (11,1,'Gas Co.','2023-03-05',55.50,'Gas'),(12,1,'Internet Co.','2023-03-10',40.75,'Internet'),(13,2,'Electricity Co.','2023-03-15',60.00,'Electricity'),(14,2,'Phone Co.','2023-03-20',30.25,'Phone'),(15,2,'Cable Co.','2023-03-25',75.50,'Cable TV'),(16,3,'Trash Co.','2023-04-01',20.30,'Trash'),(17,3,'Electricity Co.','2023-04-05',65.75,'Electricity'),(18,4,'Water Co.','2023-04-10',35.90,'Water'),(19,4,'Cable Co.','2023-04-15',70.25,'Cable TV'),(20,4,'Trash Co.','2023-04-20',15.40,'Trash'),(21,5,'Gas Co.','2023-04-25',50.60,'Gas'),(22,5,'Internet Co.','2023-04-30',35.25,'Internet'),(23,6,'Phone Co.','2023-05-05',25.50,'Phone'),(24,6,'Trash Co.','2023-05-10',18.75,'Trash'),(25,7,'Electricity Co.','2023-05-15',65.40,'Electricity'),(26,7,'Sewer Co.','2023-05-20',30.25,'Sewer'),(27,8,'Water Co.','2023-05-25',45.90,'Water'),(28,8,'Internet Co.','2023-05-30',40.50,'Internet'),(29,8,'Sewer Co.','2023-06-01',35.75,'Sewer'),(30,9,'Phone Co.','2023-06-05',28.20,'Phone'),(31,9,'Cable Co.','2023-06-10',85.75,'Cable TV'),(32,10,'Trash Co.','2023-06-15',20.50,'Trash'),(33,10,'Electricity Co.','2023-06-20',60.75,'Electricity'),(34,10,'Water Co.','2023-06-25',40.90,'Water');
/*!40000 ALTER TABLE `utility_bills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12  9:37:21
