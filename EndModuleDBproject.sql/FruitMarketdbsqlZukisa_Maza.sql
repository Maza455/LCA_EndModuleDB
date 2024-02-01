-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: FruitMarketdbsql
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `newproducts`
--

DROP TABLE IF EXISTS `newproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newproducts` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(30) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Weight` varchar(10) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `SupplierID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newproducts`
--

LOCK TABLES `newproducts` WRITE;
/*!40000 ALTER TABLE `newproducts` DISABLE KEYS */;
INSERT INTO `newproducts` VALUES (4002,'Simonzola Blue Cheese',27.65,'270 g',4,'SUPP0004'),(3001,'Raw Almonds',99.00,'1 kg',6,'SUPP0003'),(2001,'Tenderstem Broccoli',35.90,'400 g',8,'SUPP0002'),(3002,'Macaroon Butter',32.95,'410 g',9,'SUPP0003'),(1002,'Pink Lady Apples',18.95,'1,5 kg',15,'SUPP0001'),(3003,'Organic Coconut Oil',89.95,'500 ml',15,'SUPP0003'),(2002,'Portabellini Mushrooms',18.99,'250 g',16,'SUPP0002'),(1004,'Cavendish Bananas',12.65,'900 g',18,'SUPP0001'),(4001,'Ayrshire Milk',33.95,'3 l',23,'SUPP0004'),(1003,'Red Anjou Pears',22.99,'1 kg',24,'SUPP0001'),(1001,'Lady Finger Bananas',17.95,'750 g',45,'SUPP0001');
/*!40000 ALTER TABLE `newproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(30) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Weight` varchar(10) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `SupplierID` varchar(10) DEFAULT NULL,
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1001,'Lady Finger Bananas',17.95,'750 g',45,'SUPP0001'),(1002,'Pink Lady Apples',18.95,'1,5 kg',15,'SUPP0001'),(1003,'Red Anjou Pears',22.99,'1 kg',24,'SUPP0001'),(1004,'Cavendish Banana',15.95,'1Kg',18,'SUPP0001'),(2001,'Tenderstem Broccoli',35.90,'400 g',8,'SUPP0002'),(2002,'Portabellini Mushrooms',18.99,'250 g',16,'SUPP0002'),(3001,'Raw Almonds',99.00,'1 kg',6,'SUPP0003'),(3002,'Macaroon Butter',32.95,'410 g',9,'SUPP0003'),(3003,'Organic Coconut Oil',89.95,'500 ml',15,'SUPP0003'),(4001,'Ayrshire Milk',33.95,'3 l',23,'SUPP0004'),(4002,'Simonzola Blue Cheese',27.65,'270 g',4,'SUPP0004');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_zukisa`
--

DROP TABLE IF EXISTS `products_zukisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_zukisa` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(30) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Weight` varchar(10) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `SupplierID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `products_zukisa_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers_zukisa` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_zukisa`
--

LOCK TABLES `products_zukisa` WRITE;
/*!40000 ALTER TABLE `products_zukisa` DISABLE KEYS */;
INSERT INTO `products_zukisa` VALUES (1001,'Lady Finger Bananas',17.95,'750 g',45,'SUPP0001'),(1002,'Pink Lady Apples',18.95,'1,5 kg',15,'SUPP0001'),(1003,'Red Anjou Pears',22.99,'1 kg',24,'SUPP0001'),(1004,'Cavendish Bananas',12.65,'900 g',18,'SUPP0001'),(2001,'Tenderstem Broccoli',35.90,'400 g',8,'SUPP0002'),(2002,'Portabellini Mushrooms',18.99,'250 g',16,'SUPP0002'),(3001,'Raw Almonds',99.00,'1 kg',6,'SUPP0003'),(3002,'Macaroon Butter',32.95,'410 g',9,'SUPP0003'),(3003,'Organic Coconut Oil',89.95,'500 ml',15,'SUPP0003'),(4001,'Ayrshire Milk',33.95,'3 l',23,'SUPP0004'),(4002,'Simonzola Blue Cheese',27.65,'270 g',4,'SUPP0004');
/*!40000 ALTER TABLE `products_zukisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `q114`
--

DROP TABLE IF EXISTS `q114`;
/*!50001 DROP VIEW IF EXISTS `q114`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q114` AS SELECT 
 1 AS `SupplierID`,
 1 AS `Companyname`,
 1 AS `ContactPerson`,
 1 AS `ContactNo`,
 1 AS `ProductCategory`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_16`
--

DROP TABLE IF EXISTS `q1_16`;
/*!50001 DROP VIEW IF EXISTS `q1_16`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_16` AS SELECT 
 1 AS `CompanyName`,
 1 AS `ContactNo`,
 1 AS `ProductName`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_17`
--

DROP TABLE IF EXISTS `q1_17`;
/*!50001 DROP VIEW IF EXISTS `q1_17`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_17` AS SELECT 
 1 AS `Total_Unit_Price`,
 1 AS `Average_Price`,
 1 AS `Number_Of_Products`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_18`
--

DROP TABLE IF EXISTS `q1_18`;
/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_18` AS SELECT 
 1 AS `NumSuppliers`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_19`
--

DROP TABLE IF EXISTS `q1_19`;
/*!50001 DROP VIEW IF EXISTS `q1_19`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_19` AS SELECT 
 1 AS `NumberOfProducts`,
 1 AS `SupplierID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q1_20`
--

DROP TABLE IF EXISTS `q1_20`;
/*!50001 DROP VIEW IF EXISTS `q1_20`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q1_20` AS SELECT 
 1 AS `NumberOfProducts`,
 1 AS `SupplierID`,
 1 AS `TotalValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `q9`
--

DROP TABLE IF EXISTS `q9`;
/*!50001 DROP VIEW IF EXISTS `q9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `q9` AS SELECT 
 1 AS `ProductID`,
 1 AS `ProductName`,
 1 AS `Price`,
 1 AS `Weight`,
 1 AS `Stock`,
 1 AS `TotalPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` varchar(10) NOT NULL,
  `Companyname` varchar(30) NOT NULL,
  `ContactPerson` varchar(30) NOT NULL,
  `ContactNo` varchar(13) NOT NULL,
  `ProductCategory` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('SUPP0001','Fruit City','Themba','0115062089','Fruit'),('SUPP0002','Vegan Veggie Xpress','Chinyere','0137228936','Vegetables'),('SUPP0003','The Nut House','Sam','0216965133','Nuts'),('SUPP0004','The Lazy Cow','Angelo','0216964157','Dairy'),('SUPP006','Fruit&Veg','Abdu','0216965111','Nuts');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers_zukisa`
--

DROP TABLE IF EXISTS `suppliers_zukisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers_zukisa` (
  `SupplierID` varchar(10) NOT NULL,
  `Companyname` varchar(30) NOT NULL,
  `ContactPerson` varchar(30) NOT NULL,
  `ContactNo` varchar(13) NOT NULL,
  `ProductCategory` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers_zukisa`
--

LOCK TABLES `suppliers_zukisa` WRITE;
/*!40000 ALTER TABLE `suppliers_zukisa` DISABLE KEYS */;
INSERT INTO `suppliers_zukisa` VALUES ('SUPP0001','Fruit City','Themba','0115062089','Fruit'),('SUPP0002','Vegan Veggie Xpress','Chinyere','0137228936','Vegetables'),('SUPP0003','The Nut House','Sam','0216965133','Nuts'),('SUPP0004','The Lazy Cow','Angelo','0216964157','Dairy');
/*!40000 ALTER TABLE `suppliers_zukisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `q114`
--

/*!50001 DROP VIEW IF EXISTS `q114`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q114` AS select `suppliers`.`SupplierID` AS `SupplierID`,`suppliers`.`Companyname` AS `Companyname`,`suppliers`.`ContactPerson` AS `ContactPerson`,`suppliers`.`ContactNo` AS `ContactNo`,`suppliers`.`ProductCategory` AS `ProductCategory` from `suppliers` where ((`suppliers`.`SupplierID` = 'SUPP006') or (`suppliers`.`SupplierID` = 'root')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_16`
--

/*!50001 DROP VIEW IF EXISTS `q1_16`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_16` AS select `s`.`Companyname` AS `CompanyName`,`s`.`ContactNo` AS `ContactNo`,`p`.`ProductName` AS `ProductName`,`p`.`Price` AS `Price` from (`suppliers` `s` join `products` `p` on((`s`.`SupplierID` = `p`.`SupplierID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_17`
--

/*!50001 DROP VIEW IF EXISTS `q1_17`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_17` AS select sum(`products`.`Price`) AS `Total_Unit_Price`,avg(`products`.`Price`) AS `Average_Price`,count(0) AS `Number_Of_Products` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_18`
--

/*!50001 DROP VIEW IF EXISTS `q1_18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_18` AS select count(distinct `products`.`SupplierID`) AS `NumSuppliers` from `products` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_19`
--

/*!50001 DROP VIEW IF EXISTS `q1_19`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_19` AS select count(`products`.`ProductID`) AS `NumberOfProducts`,`products`.`SupplierID` AS `SupplierID` from `products` group by `products`.`SupplierID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q1_20`
--

/*!50001 DROP VIEW IF EXISTS `q1_20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q1_20` AS select count(`p`.`ProductID`) AS `NumberOfProducts`,`p`.`SupplierID` AS `SupplierID`,sum((`p`.`Price` * `p`.`Stock`)) AS `TotalValue` from `products` `p` group by `p`.`SupplierID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `q9`
--

/*!50001 DROP VIEW IF EXISTS `q9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `q9` AS select `products`.`ProductID` AS `ProductID`,`products`.`ProductName` AS `ProductName`,`products`.`Price` AS `Price`,`products`.`Weight` AS `Weight`,`products`.`Stock` AS `Stock`,((`products`.`Price` * `products`.`Stock`) * 1.15) AS `TotalPrice` from `products` where (`products`.`Stock` < 20) order by `products`.`Price` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-30 14:47:35
