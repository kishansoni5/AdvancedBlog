CREATE DATABASE  IF NOT EXISTS `advanced_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `advanced_blog`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: advanced_blog
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('USER','ADMIN') DEFAULT 'USER',
  `bio` text,
  `profile_image_url` varchar(255) DEFAULT 'default_avatar.png',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'maulik','kananimaulik78@gmail.com','$2a$10$Ik1yEMcZGRFso./s1i23qOtAM5gCYRccVwEVf7MorrhYhwmXVohH2','ADMIN',NULL,'default_avatar.png','2026-04-22 18:29:48'),(2,'kishan','kishan78@gmail.com','$2a$10$ZlR52udUrWlRuubSJNkAKOZCXFWRvxx2Qcf9/Q.VxJTOYuI1jH7uy','USER',NULL,'default_avatar.png','2026-04-22 18:30:31'),(3,'harry','harry78@gmail.com','$2a$10$TG0Zyr1Y4ZXwWa74F.2hXuW1sAS5UgTrkOBtjLAw34EboWKQ3jKie','USER',NULL,'default_avatar.png','2026-04-22 18:31:13'),(4,'tech_guru','techguru01@gmail.com','$2a$10$327OTqs.Alm9ksSlVKtHzOxgWXZddg.bjHlaUDAFw72WY0fMnTMN2','USER',NULL,'default_avatar.png','2026-04-22 18:32:31'),(5,'code_masterm','codemaster99@gmail.com','$2a$10$hGbRmuxtZA.aLjFR0cR8me.WKPn7NlC5I3AWj2pv9RP4tXkMSrmF2','USER',NULL,'default_avatar.png','2026-04-22 18:33:00'),(6,'daily_writer','dailywriter@outlook.com','$2a$10$Vh3gr3O9sbblmzKdvzML9OLEsUrl7rxNaozgHvhiYT79EzSKVXlL.','USER',NULL,'default_avatar.png','2026-04-22 18:34:12'),(7,'life_hacker','lifehacker23@yahoo.com','$2a$10$o5f7jtnmDy0Q5nq.vfd79ORolpROWu/7BMz/qZUXfDzY.hzM.9R8m','USER',NULL,'default_avatar.png','2026-04-22 18:34:39'),(8,'dev_john','devjohn@gmail.com','$2a$10$654M0JRuV/zqGwYqM5C6x.WJuoJI0dXcewLAqm.cOxpwytAFZmcU6','USER',NULL,'default_avatar.png','2026-04-22 18:35:05'),(9,'jane_codes','janecodes@protonmail.com','$2a$10$Fl.KzEan0HRy0Fu17/vtbuGYjRV6VBMTObS19Rpu/wkzEs2M7uJa.','USER',NULL,'default_avatar.png','2026-04-22 18:35:35'),(10,'alex_bloggs','alex.bloggs@gmail.com','$2a$10$9Ffj/pKpbroS.4x2LaDWR.W/MgY9ggPJRCbjpct4igxu4CCZz5GbG','USER',NULL,'default_avatar.png','2026-04-22 18:36:02'),(11,'the_real_dev','realdev@icloud.com','$2a$10$wyOd320GWW4lmzcrc9om4.OZpiLWpV168f1M1uLYNGXeQMM6UlmT2','USER',NULL,'default_avatar.png','2026-04-22 18:36:27'),(12,'quick_thoughts','quickthoughts@mail.com','$2a$10$raeO9rBIrfQDPVUZ8K1A9etxrNwI2t.R6xYAqoo3q1pmWOltoJ9wW','USER',NULL,'default_avatar.png','2026-04-22 18:37:10'),(13,'midnight_writer','midnightwriter@gmail.com','$2a$10$XGYQdcEiv2iEEEYT9FtIX..bXn.E/Q786gRD2xx2X6k9/aJ6QRXly','USER',NULL,'default_avatar.png','2026-04-22 18:37:37'),(14,'frontend_king','frontendking@gmail.com','$2a$10$UvwP9Xr/zWYJlqX86N24..BqpW7TyrcyZux27YNdss1lDJkwsAII2','USER',NULL,'default_avatar.png','2026-04-22 18:38:32'),(15,'backend_ninja','backendninja@yahoo.com','$2a$10$Qq7ML68/js1LsnI91YyFFOPl7fRl4buSwsn3u/LKUDtjn34sx6D6q','USER',NULL,'default_avatar.png','2026-04-22 18:39:02');
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

-- Dump completed on 2026-04-23  8:57:27
