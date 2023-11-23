-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: parrot_garage
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `advert`
--

DROP TABLE IF EXISTS `advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advert` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `ct_ok` tinyint(1) NOT NULL,
  `km` int NOT NULL,
  `manual_gear` tinyint(1) NOT NULL,
  `doors_5` tinyint(1) NOT NULL,
  `fiscal_power` int NOT NULL,
  `co2_emission` int NOT NULL,
  `user_id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_54F1F40BA76ED395` (`user_id`),
  CONSTRAINT `FK_54F1F40BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advert`
--

LOCK TABLES `advert` WRITE;
/*!40000 ALTER TABLE `advert` DISABLE KEYS */;
INSERT INTO `advert` VALUES (1,'OPEL ASTRA 2019 ESSENCE 125CH',15000,'2023-11-15 17:30:15',1,27500,1,1,5,102,1,'astra-655528632484c665627717.jpg',34471,'2023-11-15 20:21:55'),(2,'ALFA ROMEO GIULIA 2020 ESSENCE 150CH',17990,'2023-11-15 20:20:09',1,49800,1,1,9,107,1,'alfa-giulia-655527fa15955154111126.jpg',35812,'2023-11-15 20:20:10'),(3,'SEAT IBIZA IV 1.4 TDI 80 CH DIESEL',6490,'2023-11-17 00:00:00',1,82454,1,0,4,150,1,'ibiza-655747e0ba75c601258807.webp',47177,'2023-11-17 11:00:48'),(4,'OPEL CORSA 1.3 CDCI 2012 95CH DIESEL',4790,'2023-11-17 00:00:00',1,149874,1,0,4,168,1,'corsa-6557485ebaa24682878435.webp',38213,'2023-11-17 11:02:54'),(5,'RENAULT CAPTUR 1.3 2019 TCE 140 CH ESSENCE',27900,'2023-11-17 00:00:00',1,10,0,1,5,107,1,'captur-655748853624d856279430.webp',28841,'2023-11-17 11:03:33'),(6,'FORD FOCUS ST LINE 1.0 2018 ECOBOOST 125 CH ESSENCE',20990,'2023-11-17 00:00:00',1,72635,1,1,5,117,1,'focus-655748adb35eb937267106.webp',267809,'2023-11-17 11:04:13'),(7,'VOLKSWAGEN POLO VI 2018 R-LINE 1.0 TSI 110 CH ESSENCE',23990,'2023-11-17 00:00:00',1,22146,0,1,6,134,1,'polo-2-655748df4dd95710362901.webp',89695,'2023-11-17 11:05:03'),(8,'OPEL GRANDLAND X 1.2 131 CH 2020 INNOVATION BUSINESS ESSENCE',21950,'2023-11-17 00:00:00',1,23001,1,1,7,117,1,'grandland-655749247a5ae735307353.webp',33877,'2023-11-17 11:06:12'),(9,'BMW SERIE 3 F80 M3 phase 2 2020 3.0 431 CH',59990,'2023-11-17 00:00:00',1,44500,0,1,32,194,1,'bmw-m3-655749536b9e3114401245.webp',23247,'2023-11-17 11:06:59'),(10,'NISSAN QASHQAI 1.6 DCI 2020 130 CH DIESEL',17900,'2023-11-17 00:00:00',1,38944,0,1,7,87,1,'nissan-qashqai-6557497185a12338216530.webp',80280,'2023-11-17 11:07:29'),(11,'AUDI A3 S-LINE SPORTBACK 2020 2.0 150 CH DIESEL',39990,'2023-11-17 00:00:00',1,9915,0,1,8,127,1,'audi-a3-655749be620e4504751835.webp',56405,'2023-11-17 11:08:46'),(12,'CITROEN C4 AIRCROSS 2021 1.6 HDI 114 CH DIESEL',14990,'2023-11-17 00:00:00',1,53650,1,1,6,119,1,'c4-655749d7e5b77797285125.webp',36135,'2023-11-17 11:09:11'),(13,'NISSAN JUKE PHASE 2 1.6 DIG-T 2021 218 CH ESSENCE',14990,'2023-11-17 00:00:00',1,82758,1,1,13,168,1,'juke-655749ef7ed98541202098.webp',46303,'2023-11-17 11:09:35'),(14,'MINI COOPER III 1.5 2018 116 CH ESSENCE',12900,'2023-11-17 00:00:00',1,127549,1,1,5,95,1,'mini-cooper-65574a0cef3f6192315424.webp',38582,'2023-11-17 11:10:04'),(15,'PEUGEOT 3008 II 1.2 PURETECH 2022 130 ESSENCE',16490,'2023-11-17 00:00:00',1,21550,1,1,7,105,1,'peugeot3008-65574f8cf3636320626948.jpg',33848,'2023-11-17 11:33:33'),(16,'DS4 PHASE 2 1.6 2017 BLUEHDI 120 CH DIESEL',12990,'2023-11-17 00:00:00',1,145024,0,1,6,105,1,'ds4-65574a60f3a98644634750.webp',38629,'2023-11-17 11:11:29'),(17,'FIAT 500 ABARTH II 1.4 2020 179 CH ESSENCE',24990,'2023-11-17 00:00:00',1,54251,0,0,8,151,1,'fiat500-65574a7687bb3706527716.webp',37328,'2023-11-17 11:11:50'),(18,'PORSCHE CAYENNE III 3.0 V6 2019 340 CH ESSENCE',58490,'2023-11-17 00:00:00',1,98745,1,1,23,205,1,'cayenne-65574a8c0d366379526717.webp',38405,'2023-11-17 11:12:12'),(19,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(20,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(21,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(22,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(23,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(24,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(25,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(26,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(27,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(28,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(29,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(30,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(31,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(32,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(33,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(34,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(35,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(36,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(37,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(38,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(39,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(40,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(41,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL),(42,'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE',7890,'2023-11-14 00:00:00',0,75423,1,1,7,150,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_online` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526CA76ED395` (`user_id`),
  CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'<div>Garage au top!</div>',5,'Michel B.',1,1),(2,'<div>J\'ai trouv├® le garage vieillo personnel horrible</div>',2,'Laura G.',1,1),(4,'<div>qsdsvbdf</div>',1,'qcsn',0,1),(5,'<div>ZERO ma voiture est ├á la casse ├á cause de vous</div>',1,'Holligan',1,1),(6,'<div>Tr├¿s bon garage, accueil sympathique et chaleureux. Je recommande vivement !</div>',5,'Peace & Love',1,1),(8,'<div>Satisfaite du service de pr├¬t de v├®hicule propos├®, qui m\'a permis de regagner mon domicile apr├¿s mon accident sur la route pour le travail. Personnel sympathique et comp├®tent.</div>',4,'Fran├ºoise K',1,1),(9,'<div>mouais bof</div>',3,'mickey',1,1),(10,'<div>Garage bien bien</div>',3,'Happyman',1,1),(11,'<div>tip top</div>',5,'Bob',1,1),(12,'Trop content',4,'Big bisous',0,NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_reading` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C62E638A76ED395` (`user_id`),
  CONSTRAINT `FK_4C62E638A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (5,'test1','test2','test3@test.com','test4','test5',1,1),(7,'Machine','Micheline','micheline.machine@test.com','demande de rdv','test',0,NULL),(8,'Bidule','Alain','alain.bidule@test.com','perso','Ma femme quitte le travail ├á quelle heure?',0,NULL),(18,'Machin','Alain','alain.machin@test.com','dde de rdv','Bonjour,\r\nEst-il possible d\'avoir un rdv pour acheter une voiture.\r\nMerci',0,NULL),(19,'test','test','alain.bidule@test.com','FORD FOCUS ST LINE 1.0 2018 ECOBOOST 125 CH ESSENCE','erezte',0,NULL),(20,'Gio','Laura','laura.gioielli@hotmail.fr','demande de rendez-vous','Bonjour, je souhaiterais un rendez-vous pour effectuer la r├®vision de mon v├®hicule.',0,NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20231123083731','2023-11-23 08:37:55',122);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2F84F8E9A76ED395` (`user_id`),
  CONSTRAINT `FK_2F84F8E9A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (2,'Courroie de distribution',1),(3,'Courroie d\'alternateur',1),(4,'Embrayage',1),(5,'Vanne EGR',1),(6,'R├®g├®n├®ration du FAP',1),(7,'Remplacement des pneumatiques',1),(8,'Contr├┤le et r├®glage g├®om├®trie',1),(9,'Vidange',1);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E19D9AD2A76ED395` (`user_id`),
  CONSTRAINT `FK_E19D9AD2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (2,'Remplacement de l\'huile moteur',1),(3,'Remplacement des filtres',1),(4,'Contr├┤le de la batterie',1),(5,'Inspections g├®n├®rales (pneus, pot d\'├®chappement, carrosserie...)',1),(6,'Inspection technique freins, moteur, ch├óssis',1),(7,'Inspection technique ├®clairage et ├®lectronique',1),(8,'Remplacement du liquide de freins',1),(9,'V├®hicule de courtoisie en cas de panne',1);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day_week` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6B1F670A76ED395` (`user_id`),
  CONSTRAINT `FK_6B1F670A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES (8,'Lundi','08:45-12:45 // 14:00-18:00',1),(9,'Mardi','08:45-12:45 // 14:00-18:00',1),(10,'Mercredi','08:45-12:45 // 14:00-18:00',1),(11,'Jeudi','08:45-12:45 // 14:00-18:00',1),(12,'Vendredi','08:45-12:45 // 14:00-18:00',1),(13,'Samedi','09:00-18:00 NON STOP',1),(14,'Dimanche','Ferm├®',1);
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `workplace_id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  KEY `IDX_8D93D649AC25FB46` (`workplace_id`),
  CONSTRAINT `FK_8D93D649AC25FB46` FOREIGN KEY (`workplace_id`) REFERENCES `workplace` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'vparrot@parrot.fr','[\"ROLE_ADMIN\"]','$2y$13$hlg3lvqrXSoNmdGpSqZ.luuyNVSzemspNOAKOVoUXyiNUYhJAkXs.','Vincent','PARROT'),(3,3,'jtruc@parrot.fr','[]','$2y$13$IyfIYTG5x2khKHT0QSGKR.Z6wiIm5ha7/aZ1j9N3e.bZuyna7L/RS','Jos├®','TRUC'),(4,4,'fbidule@parrot.fr','[]','$2y$13$W.GETiVlta2cy/qcQgF9QuMlRYOy86wCiq5halpPMmfFq/uB44i/S','Fanny','BIDULE'),(5,5,'dtaule@parrot.fr','[]','$2y$13$T3w9wkxe6Ly9ZhvrS45xn.wk/Medo9i4qWU28N97CCuYW2ZiWJTM6','Denis','TAULE'),(6,6,'lpiston@parrot.fr','[]','$2y$13$uIdWh17syxKuHl9vsF67TOPbwOUccucQFjDfXSHeFf3tZeRCq8pF2','Luc','PISTON');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workplace`
--

DROP TABLE IF EXISTS `workplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workplace` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workplace`
--

LOCK TABLES `workplace` WRITE;
/*!40000 ALTER TABLE `workplace` DISABLE KEYS */;
INSERT INTO `workplace` VALUES (1,'G├®rant'),(3,'Vendeur exp├®riment├®'),(4,'Secr├®taire'),(5,'Carrossier'),(6,'M├®canicien');
/*!40000 ALTER TABLE `workplace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 11:22:49
