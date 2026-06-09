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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_comment_id` int DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `parent_comment_id` (`parent_comment_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,15,NULL,'Great breakdown! The explanation of HashMap collisions was exactly what I needed for my interview prep.','2026-04-22 18:46:31'),(2,1,2,NULL,'Could you cover multi-threading with collections in the next post?','2026-04-22 18:46:31'),(3,2,1,NULL,'Triggers have saved my life on so many database assignments.','2026-04-22 18:46:31'),(4,2,11,NULL,'Do you prefer Oracle syntax over PostgreSQL for these kinds of PL/SQL functions?','2026-04-22 18:46:31'),(5,3,7,NULL,'I totally agree! Once you use 90 GSM paper, you can never go back to the cheap stuff.','2026-04-22 18:46:31'),(6,4,3,NULL,'This is a lifesaver. Account center glitches are the worst when you are trying to recover a profile.','2026-04-22 18:46:31'),(7,5,4,NULL,'Very solid timeline. Consistency is definitely the hardest part of the 6-month grind.','2026-04-22 18:46:31'),(8,6,9,NULL,'Still sticking with vanilla JS for small projects, but this is a great comparison!','2026-04-22 18:46:31'),(9,7,2,NULL,'Totally agree. Having a set schedule for things like hair and skincare means I do not even have to think about it.','2026-04-22 18:47:39'),(10,7,10,NULL,'Drop the product recommendations!','2026-04-22 18:47:39'),(11,8,1,NULL,'Multithreading has been the hardest part of my Java syllabus. The diagrams in this post really helped.','2026-04-22 18:47:39'),(12,8,5,NULL,'Great explanation of deadlocks. It happens more often than people admit in production.','2026-04-22 18:47:39'),(13,8,15,NULL,'Would love to see how this ties into the newer virtual threads in recent Java releases.','2026-04-22 18:47:39'),(14,9,1,NULL,'The way different factions and heroic spirits are balanced in those types of stories is incredible.','2026-04-22 18:47:39'),(15,10,1,NULL,'Just in time for my exams. The OS paging explanation was perfect.','2026-04-22 18:47:39'),(16,10,8,NULL,'Python generators are so underutilized. Glad you highlighted them.','2026-04-22 18:47:39'),(17,11,1,NULL,'This is exactly what I needed. Fluency is my biggest hurdle right now.','2026-04-22 18:47:39'),(18,11,14,NULL,'Recording yourself speaking is the best advice here. It is awkward but it works.','2026-04-22 18:47:39'),(19,12,5,NULL,'I usually default to PL/SQL out of habit, but those window function benchmarks are eye-opening.','2026-04-22 18:47:39');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
