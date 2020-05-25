-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: yearbook
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `name` text,
  `utype` text,
  `year` text,
  `department` text,
  `proof` text,
  `event` text,
  `authority` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES ('sai','student','2004','cse','https://www.google.com','AI league','FB','Won the competition'),('mani','student','2019','eece','https://google.com','CCNA','Intel','Did an Internship'),('mani','student','2018','eece','https://www.google.com','HDLcontest','Qualcomm','Won the competition'),('tarun','student','2014','cse','https://www.google.com','CodeBugs','FB','Won the competition'),('tarun','student','2016','eece','https://www.google.com','Innovatrix','Intel','Designed a high end processor'),('sai','student','2014','cse','https://www.google.com','CodeForum','Google','I was selected for the final international round'),('uday','student','2012','cse','https://www.google.com','GSoC 2k12','Google Ind','Selected and successfully completed my internship at my dream company,Google'),('somit','student','2019','cse','http://www.google.com','GSoC','Google','Successfully completed my intern.'),('sai','student','2019','cse','https://www.google.com','MLeague','Govt. of India','cleared the tests and availed a scholarship of Rs.20000/- per month'),('sai','student','2019','cse','https://www.google.com','Debug','Dell','Won the competition'),('kalam','teacher','2010','cse','https://www.google.com','ML conference','IMLC','Published a paper on new ML algorithms'),('prasad','teacher','2009','cse','https://www.google.com','International HCI Conference','Google India','Published a research paper and it got accepted'),('raman','teacher','2010','ee','https://ieeexplore.ieee.org','IEEE conference','IEEE','Published a paper about effective machines'),('krishna','teacher','2020','eece','https://www.facebook.com','AI Summit 2k20','FB','Our paper got accepted');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicants` (
  `name` text,
  `utype` text,
  `awardname` text,
  `expertallot` text,
  `status` text,
  `score` text,
  `comments` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES ('sai','student','President Award','sekhar','nominate','90','Impressive','I deserve this award,because I like learning new things'),('mani','student','Best Student of the Year','sekhar','nominate','80','Good ','I can do this'),('mani','student','Institute Gold Medal','sekhar','nil','-1','nil','My CGPA is 9.92.I totally deserve this award'),('tarun','student','Institute Gold Medal','sekhar','nominate','90','Great','I am the top  scorer'),('sai','student','Institute Gold Medal','expert12','nominate','88','Good','I am a ten pointer in all my courses through out my studies'),('uday','student','Institute Gold Medal','expert12','nominate','92','keep it up','I am a ten pointer in my UG'),('somit','student','Institute Gold Medal','expert12','nil','-1','nil','My CG is 9.96 by the end of my UG'),('raman','teacher','Einstein Award','arjun','nominate','95','Deserve this award','The Research Scholars operating under me have contributed a lot to research community'),('kalam','teacher','Einstein Award','tagore','nominate','80','Please provide reliable proof citing ur achievements','I myself have contributed a lot to research community'),('prasad','teacher','Einstein Award','tagore','nominate','85','Provide reliable proofs citing your achievements','My main emphasis was to guide research scholars than teaching'),('kalam','teacher','Best Teacher of the Year 2k20','arjun','nominate','90','Hero','I have always been a student-friendly teacher.\r\n'),('krishna','teacher','Best Teacher of the Year 2k20','tagore','nominate','80','Extrordinary!','I am student friendly'),('raman','teacher','Best Teacher of the Year 2k20','tagore','nil','-1','nil','I always strive for the betterment of my students'),('sai','student','Best sports person','not alloted','nil','-1','nil','I am best');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `award` text,
  `description` text,
  `deadline` text,
  `expertnum` text,
  `eligible` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES ('Best Student of the Year','For an allrounder students','2020-05-14','1','student'),('President Award','for best students in academics','2020-05-15','1','student'),('Institute Gold Medal','For Top Scorers','2020-05-16','2','student'),('Einstein Award','For teachers who have emphasized a lot on research','2020-05-23','2','teacher'),('Best Teacher of the Year 2k20','For student-friendly teachers','2020-05-25','2','teacher'),('Best Coder','For best coders ','2020-05-27','1','student'),('Best sports person','For best sports person','2020-05-27','-1','student');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` text,
  `password` text,
  `utype` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('sai','sai123456','student'),('adminlog','adminhero','admin'),('mani','mani123456','student'),('tarun','tarun1234','student'),('uday','uday123456','student'),('sekhar','sekhar1234','expert'),('kalam','kalam1234','teacher'),('expert12','expert1234','expert'),('arjun','arjun1234','expert'),('krishna','krishna123456','teacher'),('somit','somit123456','student'),('tagore','tagore@1234','expert'),('raman','raman1234','teacher'),('prasad','prasad1234','teacher');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panel`
--

DROP TABLE IF EXISTS `panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panel` (
  `award` text,
  `utype` text,
  `expert` text,
  `stats` text,
  `expertnum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panel`
--

LOCK TABLES `panel` WRITE;
/*!40000 ALTER TABLE `panel` DISABLE KEYS */;
INSERT INTO `panel` VALUES ('Best Student of the Year','student','sekhar','finalise','1'),('President Award','student','sekhar','finalise','1'),('Institute Gold Medal','student','sekhar','finalise','2'),('Institute Gold Medal','student','expert12','finalise','2'),('Einstein Award','teacher','arjun','finalise','2'),('Einstein Award','teacher','tagore','finalise','2'),('Best Teacher of the Year 2k20','teacher','arjun','finalise','2'),('Best Teacher of the Year 2k20','teacher','tagore','finalise','2'),('Best Coder','student','expert12','nil','1');
/*!40000 ALTER TABLE `panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg` (
  `password` text,
  `utype` text,
  `id` text,
  `email` text,
  `designation` text,
  `phone` text,
  `username` text,
  `dept` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg`
--

LOCK TABLES `reg` WRITE;
/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
INSERT INTO `reg` VALUES ('sai123456','student','1234abc','sai@gmail.com','PhD Scholar','98989897998','sai','cse'),('mani123456','student','abc1234456','mani1234@gmail.com','MS student','98977789989','mani','cse'),('tarun1234','student','UPUES1234','tarun@yahoo.com','MS student','79787879898','tarun','cse'),('uday123456','student','OR4567','uday@gmail.com','Post Doc','87867677878','uday','cse'),('sekhar1234','expert','SW1234','sekhar@gmail.com','Embedded Engineer','+12898989090','sekhar','nil'),('kalam1234','teacher','nil','kalam@gmail.com','Professor ','9786577878','kalam','cse'),('expert1234','expert','nil','expert12@gmail.com','CEO,Megatrons','9899798989','expert12','nil'),('arjun1234','expert','nil','arjun@yahoo.com','IAS,south Delhi','98997899089','arjun','nil'),('krishna123456','teacher','CS345','krishna@gmail.com','Professor,Dept of CSE','897878998778','krishna','cse'),('somit123456','student','19CS12344','somit@gmail.com','UG 1st Year','87979899898','somit','cse'),('raman1234','teacher','CS248','raman123@gmail.com','Professor','87879768887','raman','cse'),('prasad1234','teacher','EE1234','prasad@yahoo.com','Professor','9898787876','prasad','cse');
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-26  0:17:11
