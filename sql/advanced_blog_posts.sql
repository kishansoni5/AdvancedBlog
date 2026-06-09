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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `featured_image_url` varchar(255) DEFAULT NULL,
  `status` enum('DRAFT','PUBLISHED') DEFAULT 'PUBLISHED',
  `views` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,5,3,'Mastering the Java Collections Framework','<p>Understanding HashMap, ArrayList, and ConcurrentHashMap is essential for any serious backend developer.</p>','java_banner.png','PUBLISHED',450,'2026-04-22 18:46:31','2026-04-22 18:46:31'),(2,8,3,'Oracle SQL: The Power of Triggers and PL/SQL','<p>Sometimes app-level validation isn’t enough. Here is how I use PL/SQL functions to maintain database integrity.</p>','sql_code.png','PUBLISHED',320,'2026-04-22 18:46:31','2026-04-22 18:46:31'),(3,1,4,'The Perfect Setup: 90 GSM Paper & Rollerball Pens','<p>If you take a lot of academic notes, you know the struggle. Switching to 90 GSM paper and a good rollerball pen completely changed my study sessions.</p>','stationery.png','PUBLISHED',150,'2026-04-22 18:46:31','2026-04-22 18:46:31'),(4,15,1,'Securing Your Digital Life','<p>After dealing with a hacked Instagram and Facebook account, here is my definitive guide on setting up proper 2FA and recovering your data.</p>','security.png','PUBLISHED',890,'2026-04-22 18:46:31','2026-04-22 18:46:31'),(5,10,3,'Campus Placements: A 6-Month Preparation Timeline','<p>Preparing for placement season requires strategy. Here is how I am structuring my DSA and core CS subjects over the next six months.</p>','placements.png','PUBLISHED',600,'2026-04-22 18:46:31','2026-04-22 18:46:31'),(6,14,1,'Frontend Frameworks in 2026','<p>React vs Vue vs Svelte. Which one should you pick for your next dashboard project?</p>','frontend.png','PUBLISHED',275,'2026-04-22 18:46:31','2026-04-22 18:46:31'),(7,6,2,'A Minimalist Grooming Routine for Busy Devs','<p>Between coding and studying, self-care often takes a back seat. I have found that sticking to a simple, high-quality routine—like using a good damage-defense hair product just twice a week—saves time and keeps you looking sharp for interviews.</p>','grooming.png','PUBLISHED',112,'2026-04-22 18:47:39','2026-04-22 18:47:39'),(8,9,3,'Mastering Multithreading in Java','<p>Concurrency can be a nightmare to debug. Let us break down thread life cycles, the synchronization keyword, and how to avoid deadlocks when building heavy backend systems.</p>','java_threads.png','PUBLISHED',534,'2026-04-22 18:47:39','2026-04-22 18:47:39'),(9,13,4,'World-Building: When Fake Myths Feel Real','<p>Great storytelling often blends real history with fantasy. Exploring lore where historical figures (like Richard the Lionheart) are reimagined in complex, interwoven fictional wars is a masterclass in creative writing.</p>','lore_writing.png','PUBLISHED',245,'2026-04-22 18:47:39','2026-04-22 18:47:39'),(10,12,3,'Python and OS: Prepping for Internal Exams','<p>A quick revision guide for your mid-terms. We will cover Python decorators, generators, and core Operating System concepts like CPU scheduling and paging.</p>','exam_prep.png','PUBLISHED',410,'2026-04-22 18:47:39','2026-04-22 18:47:39'),(11,3,2,'Clearer English Pronunciation for Tech Interviews','<p>You can write the best code, but you also need to explain it clearly. Here are my daily practice tips for improving grammar, reducing filler words, and speaking with confidence during technical rounds.</p>','communication.png','PUBLISHED',380,'2026-04-22 18:47:39','2026-04-22 18:47:39'),(12,11,3,'Advanced SQL: Window Functions vs PL/SQL','<p>When should you use a window function instead of writing a complex PL/SQL block? Let us look at performance benchmarks and readability across different use cases.</p>','advanced_sql.png','PUBLISHED',295,'2026-04-22 18:47:39','2026-04-22 18:47:39');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
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
