-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: matryxforsnipetechstandalone
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tbl_user_mvit`
--

DROP TABLE IF EXISTS `tbl_user_mvit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_mvit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_mvit`
--

LOCK TABLES `tbl_user_mvit` WRITE;
/*!40000 ALTER TABLE `tbl_user_mvit` DISABLE KEYS */;
INSERT INTO `tbl_user_mvit` VALUES (1,'MT','MT','MT','MT:W1'),(2,'MT23','MT23','MT23','MT23:W1'),(3,'CAR1','CAR1','CAR1','CAR1:W1'),(4,'CAR2','CAR2','CAR2','CAR2:W1');
/*!40000 ALTER TABLE `tbl_user_mvit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_mvisr` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `upload_inspection_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_owner` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `upload_owner_add` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `upload_inspector_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `upload_plate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_mvfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_chassis` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_engine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_make` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_first_reg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `upload_gross_wt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_net_wt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_stage` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_purpose` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_domination` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_classification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_inspecttype` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_vehicletype` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_yearmodel` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_drivemethod` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_lamp` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_handbrake` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `noise_engine_dba` varchar(45) COLLATE utf8mb4_general_ci DEFAULT '0',
  `noise_exhaust_dba` varchar(45) COLLATE utf8mb4_general_ci DEFAULT '0',
  `noise_horn_dba` varchar(45) COLLATE utf8mb4_general_ci DEFAULT '0',
  `speedometer` varchar(45) COLLATE utf8mb4_general_ci DEFAULT '0',
  `emissions_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emissions_hc` int DEFAULT '0',
  `emissions_co2` varchar(45) COLLATE utf8mb4_general_ci DEFAULT '0',
  `emissions_opacity` varchar(45) COLLATE utf8mb4_general_ci DEFAULT '0',
  `lights_hight_left_vertical` int DEFAULT '0',
  `lights_hight_left_horizontal` int DEFAULT '0',
  `lights_hight_left_intensity` int DEFAULT '0',
  `lights_low_left_vertical` int DEFAULT '0',
  `lights_low_left_horizontal` int DEFAULT '0',
  `lights_low_left_intensity` int DEFAULT '0',
  `slideslip_axel` int DEFAULT '0',
  `suspension_front_left_weight` int DEFAULT '0',
  `suspension_front_left_efficiency` int DEFAULT '0',
  `suspension_front_right_weight` int DEFAULT '0',
  `suspension_front_right_efficiency` int DEFAULT '0',
  `suspension_left_efficiency_difference` int DEFAULT '0',
  `suspension_rear_left_weight` int DEFAULT '0',
  `suspension_rear_left_efficiency` int DEFAULT '0',
  `suspension_rear_right_weight` int DEFAULT '0',
  `suspension_rear_right_efficiency` int DEFAULT '0',
  `suspension_rear_left_efficiency_difference` int DEFAULT '0',
  `brakes1_weight_left` int DEFAULT '0',
  `brakes1_weight_right` int DEFAULT '0',
  `brakes1_weight_total` int DEFAULT '0',
  `brakes1_force_left` int DEFAULT '0',
  `brakes1_force_right` int DEFAULT '0',
  `brakes1_force_difference` int DEFAULT '0',
  `brakes1_efficiency` int DEFAULT '0',
  `brakes2_weight_left` int DEFAULT '0',
  `brakes2_weight_right` int DEFAULT '0',
  `brakes2_weight_total` int DEFAULT '0',
  `brakes2_force_left` int DEFAULT '0',
  `brakes2_force_right` int DEFAULT '0',
  `brakes2_force_difference` int DEFAULT '0',
  `brakes2_efficiency` int DEFAULT '0',
  `brakes3_weight_left` int DEFAULT '0',
  `brakes3_weight_right` int DEFAULT '0',
  `brakes3_weight_total` int DEFAULT '0',
  `brakes3_force_left` int DEFAULT '0',
  `brakes3_force_right` int DEFAULT '0',
  `brakes3_force_difference` int DEFAULT '0',
  `brakes3_efficiency` int DEFAULT '0',
  `test_limits_light_intensity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_brake_service_eff` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_brake_parking_eff` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_service_diff` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_sideslip_deviation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_suspension_diviation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_speed_deviation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_sound_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_emission_hc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_emission_co` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_limits_opacity_k` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_axisnumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `upload_odmeter` int DEFAULT '0',
  `visual_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `visual_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `registerdate` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `odmeter` int DEFAULT '0',
  `IsVisualTest` int DEFAULT '0',
  `IsTested` int DEFAULT '0',
  `IsUploaded` int DEFAULT '0',
  `IsExtracted` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_mvisr_UNIQUE` (`upload_mvisr`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (1,'JJ202406200001',NULL,'RICH RAYMOND','MORONG RIZAL',NULL,'NAO8106','130100001133092','MR053REH1J6607268','1ZRY478110','TOYOTA','COROLLA ALTIS 1','ATTITUDE BLACK','2018-05-09','1650','1598','CAR2:W1',NULL,'Passenger Car','PRIVATE','RENEWAL','C01:CARS/SEDAN','2018','FRONT DRIVE','TWO LAMP SYSTEM','FRONT HAND BRAKE','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'10000','50','20','30','7','21','20','99','100','0.25','0','2-2',1234,NULL,NULL,'2024-06-20 10:07:38',0,0,0,0,0),(2,'JJ202406200002',NULL,'MICO REI GEREMILLO ZAPANTA','49 AQUARUIS ST. MONPERT TAYTAY RIZAL','','600NEV','130300000584575','PA0SG4910H0014003','G3J1E-0096261','YAMAHA','MIO AEROX BG21','BLACK','2018-01-16','270','155','MT:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2017','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',0,'Clutch System','0','2024-06-20 10:35:29',0,1,2,0,1),(3,'JJ202406200003',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LAGUNDI MORONG RIZAL','VALERIE JOY T. LACBAYO','040103','040100001161977','BC175J-BB7909','BC175AEBG4750','KAWASAKI','BC175J','BLUE','2020-03-02','289','177','MT23:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M03:MOTORCYCLE WITH SIDECAR','2020','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','2-2',25317,'','','2024-06-20 11:02:41',0,1,1,0,0),(4,'JJ202406200004',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LGUNDI MORONG RIZAL','VALERIE JOY T. LACBAYO','040103','040100001161977','BC175J-BB7909','BC175AEBG4750','KAWASAKI','BC175J','BLUE','2020-03-02','289','177','MT23:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M03:MOTORCYCLE WITH SIDECAR','2020','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','2-2',25317,'','','2024-06-20 11:14:27',0,1,1,0,0),(5,'JJ202406200005',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LAGUNDI MORONG RIZAL','VALERIE JOY T. LACBAYO','040103','040100001161977','BC175J-BB7909','BC175AEBG4750','KAWASAKI','BC175J','BLUE','2020-03-02','289','177','MT23:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M03:MOTORCYCLE WITH SIDECAR','2020','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','80.9','0','19.37','GASOLINE',44,'0','0',12,-73,200,-73,12,200,0,104,0,0,0,0,0,0,0,0,0,104,0,0,1038,0,100,99,0,0,0,1148,0,100,45,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',25317,'','','2024-06-20 11:23:22',0,1,3,0,1),(6,'JJ202406200006',NULL,'GAUDENCIO ALEJANDRO TIBURCIO','046 BOMBONGSN MORONG RIZAL','JERICK DJ. MILLARE','725OJF','04782300006488','PA0SG7820P0019429','G3P4E0140892','YAMAHA','MC WITH OUT SIDECAR','MATTE DARK GRAY BALCK','06-14-2023','124','1','MT:W1',NULL,'','PRIVATE','RENEWAL','M01:MOPED 50CC','2023','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','104.3','0','16.58','GASOLINE',304,'.61','0',-37,-8,15400,0,0,0,0,82,0,0,0,0,0,0,0,0,0,82,0,0,958,0,100,99,0,0,0,792,0,100,50,0,0,0,0,0,0,0,'10000','50','20','30','7','21','20','99','100','0.25','0','0',6459,'','','2024-06-20 11:31:49',0,1,3,0,1),(7,'JJ202406200007',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LAGUNDI MORONG RIZAL','VALERIE JOY T. LACBAYO','040103','040100001161977','BC175J-BB7909','BC175AEBG4750','KAWASAKI','BC175J','BLUE','2020-03-02','289','177','MT23:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M03:MOTORCYCLE WITH SIDECAR','2020','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','82.7','0','20.34','GASOLINE',224,'.34','0',12,-55,4500,-55,12,4500,0,106,0,0,0,0,0,0,0,0,0,106,0,0,1360,0,100,99,0,0,0,1298,0,100,52,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',25317,'','','2024-06-20 12:33:46',0,1,3,0,1),(8,'JJ202406200008',NULL,'MICO REI GEREMILLO ZAPANTA','48 AQUARIUD ST. MONPERT HILLS, SAN ISIDRO, TAYTAY RIZAL','RYAN CHARLES P. HILARIO','600NEV','130300000584575','PA0SG4910H0014003','G3J1E-0096261','YAMAHA','MIO AEROX BG21','BLACK','2018-01-16','270','155','MT:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2017','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','90.6','0','16.58','GASOLINE',239,'.59','0',-29,-10,13900,0,0,0,0,82,0,0,0,0,0,0,0,0,0,82,0,0,770,0,100,96,0,0,0,808,0,100,66,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',0,'Clutch System','0','2024-06-20 12:33:46',0,1,3,0,1),(9,'JJ202406200009',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LAGUNDI, MORONG IZAL','JERICK DJ. MILLARE','NGG7056','130100001478174','PA1B18F31K4109475','1NRX538720','TOYOTA','VIOS 1.3 XLE M/','BLACK','2020-01-28','1550','1329','CAR2:W1',NULL,'Passenger Car','PRIVATE','RENEWAL','C01:CARS/SEDAN','2020','FRONT DRIVE','TWO LAMP SYSTEM','FRONT HAND BRAKE','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'10000','50','20','30','7','21','20','99','100','0.25','0','2-2',16174,'EWD','-1','2024-06-20 12:48:56',0,1,1,0,0),(10,'JJ202406200010',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LAGUNDI MORONG RIZAL','JERICK DJ. MILLARE','AAC6512','044800000310651','MHFZR69G303119227','2KDU670190','TOYOTA','FORTUNER 4X2 2.','SILVER METALLIC','2015-03-10','2385','2494','CAR1:W1',NULL,'SUV','PRIVATE','RENEWAL','S01:SUV','2015','REAR DRIVE','TWO LAMP SYSTEM','FRONT HAND BRAKE','0','86.7','0','33.88','DIESEL OIL',0,'0','0.41',-4,-23,55800,-23,-1,51500,-10,557,68,490,80,15,432,54,432,63,14,557,68,1114,6300,5480,13,99,432,54,864,2945,3415,14,75,0,0,0,3076,3292,0,75,'10000','50','20','30','7','21','20','99','0','0','2','0',122829,'','','2024-06-20 12:48:56',0,1,3,0,1),(11,'JJ202406200011',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LAGUNDI MORONG RIZAL','RODRIGO B. BLANCO JR.','NGG7056','130100001478174','PA1B18F31K4109475','1NRX538720','TOYOTA','VIOS 1.3 XLE M/','BLACK','2020-01-28','1550','1329','CAR2:W1',NULL,'Passenger Car','PRIVATE','RENEWAL','C01:CARS/SEDAN','2020','FRONT DRIVE','TWO LAMP SYSTEM','FRONT HAND BRAKE','0','76.9','0','11.85','GASOLINE',4,'0','0',15,-11,52200,-5,24,47400,2,352,64,336,72,11,245,59,226,42,29,352,64,704,3114,2700,13,86,245,59,490,1672,1671,0,72,0,0,0,1644,1632,0,71,'10000','50','20','30','7','21','20','99','100','0.25','0','0',0,'','','2024-06-20 01:14:15',0,1,3,0,1),(12,'JJ202406200012',NULL,'RICHARD TANAWAN BUENAVENTURA','0589 RAYMUNDO ST. LAGUNDI MORONG RIZAL','RODRIGO B. BLANCO JR.','NGG7056','130100001478174','PA1B18F31K4109475','1NRX538720','TOYOTA','VIOS 1.3 XLE M/','BLACK','2020-01-28','1550','1329','CAR2:W1',NULL,'Passenger Car','PRIVATE','RENEWAL','C01:CARS/SEDAN','2020','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','FRONT HAND BRAKE','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'10000','50','20','30','7','21','20','99','100','0.25','0','2-2',16174,NULL,NULL,'2024-06-20 02:26:53',0,0,1,0,0),(13,'JJ202406260001',NULL,'TesM','Mromng','ROY S. FRANCISCO JR.','130108','130100001536516','PA0SE9810L0499969','E3R2E-2695488','YAMAHA','MIO I125 BB37','YELLOW WHITE','2020-08-06','92','125','MT:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2020','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',0,'','','2024-06-26 11:08:51',0,1,3,0,1),(14,'JJ202406260002',NULL,'Pantropiko','Isla','JERVEE M. TIBURCIO','130108','130100001536516','PA0SE9810L0499969','E3R2E-2695488','YAMAHA','MIO I125 BB37','YELLOW WHITE','2020-08-06','92','125','MT:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2020','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','96.4','0','16.43','GASOLINE',184,'.22','0',0,0,0,0,0,0,0,40,0,0,0,0,62,0,0,0,0,40,0,40,326,0,100,83,62,0,62,790,0,100,99,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',10651,'','','2024-06-26 11:08:51',0,1,3,0,1),(15,'JJ202406260003',NULL,'HATDOG','GEGEGE','JERICK DJ. MILLARE','NGG7056','130100001478174','PA1B18F31K4109475','1NRX538720','TOYOTA','VIOS 1.3 XLE M/','BLACK','2020-01-28','1550','1329','CAR2:W1',NULL,'Passenger Car','PRIVATE','RENEWAL','C01:CARS/SEDAN','2020','FRONT DRIVE','TWO LAMP SYSTEM','REAR HAND BRAKE','0','86','0','15.14','GASOLINE',10,'.08','0',20,-8,38300,-7,28,38300,-3,348,64,337,67,4,243,61,224,48,21,348,64,696,2827,2601,8,81,243,61,486,1728,1622,6,73,0,0,0,1708,1331,0,66,'10000','50','20','30','7','21','20','99','100','0.25','0','0',33,'','','2024-06-26 11:08:51',0,1,3,0,1),(16,'JJ202406260004',NULL,'POP','LOL','JERICK DJ. MILLARE','NA43086','130400000311862','PA040C000D0158581','40C-116849','YAMAHA','MIO SPORTY 40C5','VIOLET','2013-11-07','95','115','MT:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2013','REAR DRIVE','MOTORCYCLE LAMP SYSTEM','REAR AND FRONT HAND BRAKE','0','98.8','0','17.65','GASOLINE',99,'.25','0',0,0,0,0,0,0,0,40,0,0,0,0,58,0,0,0,0,40,0,40,539,0,100,99,58,0,58,826,0,100,99,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','4500','3.5','0','0',12543358,'','','2024-06-26 11:08:51',0,1,3,0,1),(17,'JJ202406260005',NULL,'AYAAAAAA','TRIPLE H','JERVEE M. TIBURCIO','NGG7056','130100001478174','PA1B18F31K4109475','1NRX538720','TOYOTA','VIOS 1.3 XLE M/','BLACK','2020-01-28','1550','1329','CAR2:W1',NULL,'Passenger Car','PRIVATE','RENEWAL','C01:CARS/SEDAN','2020','FRONT DRIVE','TWO LAMP SYSTEM','REAR HAND BRAKE','0','79','0','16.97','GASOLINE',6,'.02','0',1,-10,44800,-6,10,35200,3,351,64,335,73,12,244,59,225,45,24,351,335,686,2578,2219,14,71,244,225,469,1717,1554,9,71,0,0,0,1783,1453,0,70,'10000','50','20','30','7','21','20','99','100','0.25','0','0',626655,'Radiator,Engine Bracket\\/Mounting','-1,-1','2024-06-26 11:08:51',0,1,3,0,1),(18,'JJ202406260006',NULL,'BOB','PANTS','VALERIE JOY T. LACBAYO','6537SN','130400000297537','PA040C000C0133637','40C-091818','YAMAHA','MIO SPORTY 40C5','BLACK','2012-12-27','95','115','MT23:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2012','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','REAR AND FRONT HAND BRAKE','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','4500','3.5','0','0',957486,'','','2024-06-26 11:08:51',0,1,3,0,1),(19,'JJ202406260007',NULL,'MAN','GIRL','NARCISO NICOLANCE H. YAMAT IV','600NEV','130300000584575','PA0SG4910H0014003','G3J1E-0096261','YAMAHA','MIO AEROX BG21','BLACK','2018-01-16','270','155','MT:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2017','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','REAR AND FRONT HAND BRAKE','0','95.5','0','17.19','GASOLINE',526,'2.44','0',-14,-23,6500,0,0,0,0,54,0,0,0,0,78,0,0,0,0,54,0,54,710,0,100,99,78,0,78,936,0,100,99,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',23215469,'','','2024-06-26 11:08:51',0,1,3,0,1),(20,'JJ202406260008',NULL,'NOEL CABANGON','PARA SAYO','JERVEE M. TIBURCIO','600NEV','130300000584575','PA0SG4910H0014003','G3J1E-0096261','YAMAHA','MIO AEROX BG21','BLACK','2018-01-16','270','155','MT:W1',NULL,'Motorcycle / Moped / Tricycle','PRIVATE','RENEWAL','M02:MOTORCYCLE ABOVE 50CC','2017','FRONT DRIVE','MOTORCYCLE LAMP SYSTEM','','0','93.5','0','17.01','GASOLINE',399,'.84','0',8,-23,7800,0,0,0,0,54,0,0,0,0,78,0,0,0,0,54,0,54,758,0,100,99,78,0,78,962,0,100,99,0,0,0,0,0,0,0,'2000','50','20','30','7','21','20','99','1000','2.5','0','0',32518,'','','2024-06-26 11:08:51',0,1,3,0,1),(21,'JJ202406260009',NULL,'PADILLA, ARNOLD D.','MAKISIG ST., BRGY. BANGCAL, MORONG, RIZAL','ROY S. FRANCISCO JR.','NGG7056','130100001478174','PA1B18F31K4109475','1NRX538720','TOYOTA','VIOS 1.3 XLE M/','BLACK','2020-01-28','1550','1329','CAR2:W1',NULL,'Passenger Car','PRIVATE','RENEWAL','C01:CARS/SEDAN','2020','FRONT DRIVE','TWO LAMP SYSTEM','REAR HAND BRAKE','0','0','0','0','GASOLINE',0,'0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'10000','50','20','30','7','21','20','99','100','0.25','0','2-2',16188,'','','2024-06-26 11:08:51',0,1,1,0,0),(22,'JJ202406260010',NULL,'THEO R. PADILLA','MAKISIG ST., BRGY. BUNGCAL, MORON, RIZAL','JULIUS D. TRINIDAD','AAC6512','044800000310651','MHFZR69G303119227','2KDU670190','TOYOTA','FORTUNER 4X2 2.','SILVER METALLIC','2015-03-10','2385','2494','CAR1:W1',NULL,'SUV','PRIVATE','RENEWAL','S01:SUV','2015','REAR DRIVE','TWO LAMP SYSTEM','REAR HAND BRAKE','0','123.2','0','19.62','DIESEL OIL',0,'0','0.30',-5,-23,53800,-24,-2,50500,-5,576,68,486,79,14,445,58,430,71,18,576,486,1062,5765,4868,16,99,445,430,875,3775,3319,12,83,0,0,0,1525,3102,0,54,'10000','50','20','30','7','21','20','99','0','0','2','0',122159,'Handle Bars','0','2024-06-26 11:08:51',0,1,3,0,1),(23,'JJ202406260011',NULL,'CRISANTO S. ARISTOBAL JR.','#212 MATIBAY ST., BRGY BAGO, TERESA, RIZAL ','ROY S. FRANCISCO JR.','DAL5241','040100000917815','MRHDG1820KP000291','L15Z16621657','HONDA','BR-V','MODERN STEEL METALLIC','2019-04-15','1790','1500','CAR2:W1',NULL,'SUV','PRIVATE','RENEWAL','C01:CARS/SEDAN','2019','FRONT DRIVE','TWO LAMP SYSTEM','REAR HAND BRAKE','0','95.9','0','17.26','GASOLINE',10,'.45','0',5,11,88800,12,-1,75600,3,388,80,379,83,4,232,56,192,56,0,388,379,767,2521,2967,15,73,232,192,424,1536,1428,7,71,0,0,0,1578,1428,0,72,'10000','50','20','30','7','21','20','99','100','0.25','0','0',45268,'Handle Bars,Top Lights (Taxi)','0,0','2024-06-26 11:08:51',0,1,3,0,1);
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visualconfig`
--

DROP TABLE IF EXISTS `visualconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visualconfig` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visual_name` varchar(100) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `dat_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visualconfig`
--

LOCK TABLES `visualconfig` WRITE;
/*!40000 ALTER TABLE `visualconfig` DISABLE KEYS */;
INSERT INTO `visualconfig` VALUES (3,'Body Appearance','A',NULL,'2024-05-31 15:37:44'),(4,'Chassis','A',NULL,'2024-05-31 15:37:44'),(5,'Engine','A',NULL,'2024-05-31 15:37:44'),(6,'Handle Bars','A',NULL,'2024-05-31 15:37:44'),(7,'Wiper/Washer','A',NULL,'2024-05-31 15:37:44'),(8,'Windshield/Window Glass','A',NULL,'2024-05-31 15:37:44'),(9,'Headlights','A',NULL,'2024-05-31 15:37:44'),(10,'Signal Light (Front)','A',NULL,'2024-05-31 15:37:44'),(11,'Signal Light (Rear)','A',NULL,'2024-05-31 15:37:44'),(12,'Park Light (Front)','A',NULL,'2024-05-31 15:37:44'),(13,'Park Light (Rear)','A',NULL,'2024-05-31 15:37:44'),(14,'Brake Lights','A',NULL,'2024-05-31 15:37:44'),(15,'Back-up Lights','A',NULL,'2024-05-31 15:37:44'),(16,'Clearance Lights','A',NULL,'2024-05-31 15:37:44'),(17,'Number Plate/Lights','A',NULL,'2024-05-31 15:37:44'),(18,'Hazard Lights','A',NULL,'2024-05-31 15:37:44'),(19,'Reflectors','A',NULL,'2024-05-31 15:37:44'),(20,'Interior Lights','A',NULL,'2024-05-31 15:37:44'),(21,'Top Lights (Taxi)','A',NULL,'2024-05-31 15:37:44'),(22,'Seat Belts','A',NULL,'2024-05-31 15:37:44'),(23,'Horn','A',NULL,'2024-05-31 15:37:44'),(24,'Door/Hinges','A',NULL,'2024-05-31 15:37:44'),(25,'Floor Boards','A',NULL,'2024-05-31 15:37:44'),(26,'Side Mirror/Rear View','A',NULL,'2024-05-31 15:37:44'),(27,'Clutch System','A',NULL,'2024-05-31 15:37:44'),(28,'Brake System','A',NULL,'2024-05-31 15:37:44'),(29,'Driver\'s/Passenger\'s Seats','A',NULL,'2024-05-31 15:37:44'),(30,'Steering','A',NULL,'2024-05-31 15:37:44'),(31,'Wheels Bolts/Nuts','A',NULL,'2024-05-31 15:37:44'),(32,'Fuel Tank/Cap','A',NULL,'2024-05-31 15:37:44'),(33,'Panel Gauges','A',NULL,'2024-05-31 15:37:44'),(34,'EWD','A',NULL,'2024-05-31 15:37:44'),(35,'Color','A',NULL,'2024-05-31 15:37:44'),(36,'Diesel Fuel System Seal','A',NULL,'2024-05-31 15:37:44'),(37,'Speed Limiter','A',NULL,'2024-05-31 15:37:44'),(38,'Radiator','U',NULL,'2024-05-31 15:41:09'),(39,'Engine Bracket/Mounting','U',NULL,'2024-05-31 15:41:09'),(40,'Engine Oil Leakage','U',NULL,'2024-05-31 15:41:09'),(41,'Transmission Oil Leakage','U',NULL,'2024-05-31 15:41:09'),(42,'Steering Ball Joints','U',NULL,'2024-05-31 15:41:09'),(43,'Steering Leakages/Gear Box Mounting','U',NULL,'2024-05-31 15:41:09'),(44,'Steering Idler/Sector Shaft','U',NULL,'2024-05-31 15:41:09'),(45,'Front Shackle Eyes/Pins/Bushes','U',NULL,'2024-05-31 15:41:09'),(46,'Stabilizers/Bushes','U',NULL,'2024-05-31 15:41:10'),(47,'King Pins and Bearings','U',NULL,'2024-05-31 15:41:10'),(48,'Front Suspension Joints/Bushes','U',NULL,'2024-05-31 15:41:10'),(49,'Rear Suspension Joints/Bushes','U',NULL,'2024-05-31 15:41:10'),(50,'Rear Linkages','U',NULL,'2024-05-31 15:41:10'),(51,'Brake Hoses/Pipes/Cylinder','U',NULL,'2024-05-31 15:41:10'),(52,'Fuel Hoses/Pipes','U',NULL,'2024-05-31 15:41:10'),(53,'Spring U Bolts/Nuts','U',NULL,'2024-05-31 15:41:10'),(54,'Spring Clips','U',NULL,'2024-05-31 15:41:10'),(55,'Shock Absorbers','U',NULL,'2024-05-31 15:41:10'),(56,'Rear Shackle Eyes/Pins/Bushes','U',NULL,'2024-05-31 15:41:10'),(57,'Drive Shaft/Bolts/Nuts','U',NULL,'2024-05-31 15:41:10'),(58,'Differential Oil Leakages','U',NULL,'2024-05-31 15:41:10'),(59,'Propeller Shaft Coupling','U',NULL,'2024-05-31 15:41:10'),(60,'Exhaust Pipes and Silencer','U',NULL,'2024-05-31 15:41:10'),(61,'Chassis Frame','U',NULL,'2024-05-31 15:41:10'),(62,'Chassis Cross Member','U',NULL,'2024-05-31 15:41:10'),(63,'Body Floor Board','U',NULL,'2024-05-31 15:41:10'),(64,'Power Steering','U',NULL,'2024-05-31 15:41:10'),(65,'Parking Brake Wire','U',NULL,'2024-05-31 15:41:10'),(66,'Others','U',NULL,'2024-05-31 15:41:10'),(68,'Handle Bars','M',NULL,'2024-05-31 16:36:41'),(69,'Spring','M',NULL,'2024-05-31 16:36:41'),(70,'Lighting System and Reflectors','M',NULL,'2024-05-31 16:36:41'),(71,'Side Mirror','M',NULL,'2024-05-31 16:36:41'),(72,'Brake System','M',NULL,'2024-05-31 16:36:41'),(73,'Clutch System','M',NULL,'2024-05-31 16:36:41'),(74,'Tires Wheels Bolts Nuts','M',NULL,'2024-05-31 16:36:41'),(75,'Number Plate','M',NULL,'2024-05-31 16:36:41'),(76,'Shock Absorbers','M',NULL,'2024-05-31 16:36:41'),(77,'Frame','M',NULL,'2024-05-31 16:36:41'),(78,'Horn','M',NULL,'2024-05-31 16:36:41'),(79,'Headstem Bearings','M',NULL,'2024-05-31 16:36:41'),(80,'Back-up Lights','M',NULL,'2024-05-31 16:36:41'),(81,'Fuel Tank Cap','M',NULL,'2024-05-31 16:36:41'),(82,'Color','M',NULL,'2024-05-31 16:36:41'),(83,'Tires/Wheels','A',NULL,'2024-06-03 13:04:27'),(84,'MAC','U',NULL,'2024-06-03 13:10:38');
/*!40000 ALTER TABLE `visualconfig` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27  1:36:28
