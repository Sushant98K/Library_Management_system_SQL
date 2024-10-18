CREATE DATABASE IF NOT EXISTS `lib_mngmt_system`
/*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */
/*!80016 DEFAULT ENCRYPTION='N' */
;
USE `lib_mngmt_system`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lib_mngmt_system
-- ------------------------------------------------------
-- Server version	8.0.39
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `author`
--
DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 76 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `author`
--
LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */
;
INSERT INTO `author`
VALUES (1, 'PK', 'Nag'),
(2, 'JP', 'Holman'),
(3, 'APJ', 'Kalam'),
(4, 'E', 'Sreedharan'),
(5, 'RL', 'Norton'),
(6, 'Amrita', 'Pritam'),
(7, 'Mahadevi', 'Verma'),
(8, 'Sudha', 'Murthy'),
(9, 'Ruskin', 'Bond'),
(10, 'Robert', 'Frost'),
(11, 'Rabindranath', 'Tagore'),
(12, 'Jack', 'Canfield'),
(13, 'Dale', 'Carnegie'),
(14, 'Swami', 'Vivekanand'),
(15, 'Munshi', 'Premchand'),
(16, 'Stephen', 'Covey'),
(17, 'F', 'Beer'),
(18, 'R', 'Johnston'),
(19, 'Amish', 'Tripathi'),
(20, 'Stephen', 'Timoshenko'),
(21, 'Anton', 'Chekhov'),
(22, 'Leo', 'Tolstoy'),
(23, 'Mahatma', 'Gandhi'),
(24, 'JL', 'Nehru'),
(25, 'Nelson', 'Mandela'),
(26, 'PK', 'Nag'),
(27, 'JP', 'Holman'),
(28, 'APJ', 'Kalam'),
(29, 'E', 'Sreedharan'),
(30, 'RL', 'Norton'),
(31, 'Amrita', 'Pritam'),
(32, 'Mahadevi', 'Verma'),
(33, 'Sudha', 'Murthy'),
(34, 'Ruskin', 'Bond'),
(35, 'Robert', 'Frost'),
(36, 'Rabindranath', 'Tagore'),
(37, 'Jack', 'Canfield'),
(38, 'Dale', 'Carnegie'),
(39, 'Swami', 'Vivekanand'),
(40, 'Munshi', 'Premchand'),
(41, 'Stephen', 'Covey'),
(42, 'F', 'Beer'),
(43, 'R', 'Johnston'),
(44, 'Amish', 'Tripathi'),
(45, 'Stephen', 'Timoshenko'),
(46, 'Anton', 'Chekhov'),
(47, 'Leo', 'Tolstoy'),
(48, 'Mahatma', 'Gandhi'),
(49, 'JL', 'Nehru'),
(50, 'Nelson', 'Mandela'),
(51, 'PK', 'Nag'),
(52, 'JP', 'Holman'),
(53, 'APJ', 'Kalam'),
(54, 'E', 'Sreedharan'),
(55, 'RL', 'Norton'),
(56, 'Amrita', 'Pritam'),
(57, 'Mahadevi', 'Verma'),
(58, 'Sudha', 'Murthy'),
(59, 'Ruskin', 'Bond'),
(60, 'Robert', 'Frost'),
(61, 'Rabindranath', 'Tagore'),
(62, 'Jack', 'Canfield'),
(63, 'Dale', 'Carnegie'),
(64, 'Swami', 'Vivekanand'),
(65, 'Munshi', 'Premchand'),
(66, 'Stephen', 'Covey'),
(67, 'F', 'Beer'),
(68, 'R', 'Johnston'),
(69, 'Amish', 'Tripathi'),
(70, 'Stephen', 'Timoshenko'),
(71, 'Anton', 'Chekhov'),
(72, 'Leo', 'Tolstoy'),
(73, 'Mahatma', 'Gandhi'),
(74, 'JL', 'Nehru'),
(75, 'Nelson', 'Mandela');
/*!40000 ALTER TABLE `author` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `book`
--
DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `isbn_code` varchar(15) DEFAULT NULL,
  `book_title` varchar(50) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `publisher_id` int DEFAULT NULL,
  `publication_year` year DEFAULT NULL,
  `book_edition` int DEFAULT NULL,
  `copies_total` int DEFAULT NULL,
  `copies_available` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `fk_category_id` (`category_id`),
  KEY `fk_publisher_id` (`publisher_id`),
  KEY `fk_location_id` (`location_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `fk_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 103 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `book`
--
LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */
;
INSERT INTO `book`
VALUES (
    1,
    '9876543210001',
    'Thermodynamics',
    1,
    7,
    2016,
    3,
    15,
    10,
    1
  ),
(
    2,
    '9876543210002',
    'Heat & Mass Transfer',
    1,
    7,
    2014,
    2,
    5,
    2,
    2
  ),
(
    3,
    '9876543210003',
    'Wings of Fire',
    11,
    7,
    1999,
    1,
    10,
    5,
    18
  ),
(
    4,
    '9876543210004',
    'Kinematics of Machines',
    1,
    7,
    2012,
    3,
    5,
    5,
    3
  ),
(
    5,
    '9876543210005',
    'Khaton ka Safarnama',
    8,
    8,
    1985,
    1,
    3,
    3,
    24
  ),
(6, '9876543210006', 'Black Rose', 8, 7, 1970, 1, 1, 1, 24),
(
    7,
    '9876543210007',
    'Kagaz Te Kanvas',
    8,
    8,
    1980,
    1,
    5,
    3,
    25
  ),
(8, '9876543210008', 'Gillu', 4, 8, 1960, 1, 2, 2, 26),
(
    9,
    '9876543210009',
    'How I taught my grandmother to read',
    4,
    7,
    1990,
    1,
    5,
    5,
    26
  ),
(
    10,
    '9876543210010',
    'Three Thousand Stitches',
    4,
    7,
    2010,
    1,
    5,
    5,
    27
  ),
(
    11,
    '9876543210011',
    'Wise and Otherwise',
    4,
    7,
    2012,
    1,
    5,
    5,
    26
  ),
(
    12,
    '9876543210012',
    'The Room on the Roof',
    4,
    7,
    1970,
    1,
    5,
    5,
    27
  ),
(
    13,
    '9876543210013',
    'Happy Birthday, World',
    11,
    7,
    2000,
    1,
    1,
    1,
    27
  ),
(
    14,
    '9876543210014',
    'The Road Not Taken',
    12,
    7,
    1920,
    1,
    1,
    1,
    24
  ),
(
    15,
    '9876543210015',
    'Geetanjali',
    12,
    7,
    1920,
    3,
    1,
    1,
    25
  ),
(
    16,
    '9876543210016',
    'The 25 Success Principles',
    3,
    7,
    1980,
    6,
    10,
    5,
    18
  ),
(
    17,
    '9976543210002',
    'How to stop worrying and start living',
    3,
    7,
    2005,
    10,
    10,
    2,
    19
  ),
(
    18,
    '9976543210003',
    'Karma Yoga',
    11,
    7,
    1980,
    5,
    2,
    2,
    11
  ),
(19, '9976543210004', 'Godan', 10, 8, 2012, 10, 2, 2, 24),
(
    20,
    '9976543210005',
    'Premashram',
    10,
    8,
    2010,
    10,
    2,
    2,
    24
  ),
(
    21,
    '9976543210006',
    'The Seven Habits of Highly Effective People',
    3,
    7,
    2000,
    15,
    10,
    2,
    20
  ),
(22, '9876543210007', 'Mechanics', 1, 8, 2000, 3, 3, 3, 3),
(
    23,
    '9876543210008',
    'The Immortals of Meluha',
    15,
    8,
    2012,
    1,
    3,
    3,
    27
  ),
(
    24,
    '9876543210009',
    'Strengh of Materials',
    1,
    8,
    2000,
    6,
    2,
    2,
    2
  ),
(
    25,
    '9876543210010',
    'The Seagull',
    13,
    8,
    1960,
    1,
    1,
    1,
    27
  ),
(
    26,
    '9876543210011',
    'War and Peace',
    13,
    8,
    1970,
    21,
    1,
    1,
    26
  ),
(27, '9876543210012', 'Harijan', 11, 1, 1932, 1, 1, 1, 29),
(
    28,
    '9876543210013',
    'The Story of my experiments with Truth',
    11,
    8,
    1925,
    1,
    1,
    1,
    26
  ),
(
    29,
    '9876543210014',
    'The Discovery of India',
    5,
    8,
    1945,
    1,
    3,
    3,
    24
  ),
(
    30,
    '9876543210015',
    'Long walk to freedom',
    5,
    8,
    1999,
    1,
    2,
    2,
    25
  ),
(
    31,
    '9876543210016',
    'Beyond Religion',
    2,
    8,
    2010,
    1,
    2,
    2,
    15
  ),
(32, '9876543210017', 'Ikigai', 2, 8, 2010, 1, 2, 0, 15),
(33, '9976443210004', 'Gaban', 10, 8, 2012, 10, 2, 0, 24),
(34, '9976549210004', 'Idgah', 10, 8, 2012, 10, 2, 0, 24),
(
    35,
    '9876543210001',
    'Thermodynamics',
    1,
    7,
    2016,
    3,
    15,
    10,
    1
  ),
(
    36,
    '9876543210002',
    'Heat & Mass Transfer',
    1,
    7,
    2014,
    2,
    5,
    2,
    2
  ),
(
    37,
    '9876543210003',
    'Wings of Fire',
    11,
    7,
    1999,
    1,
    10,
    5,
    18
  ),
(
    38,
    '9876543210004',
    'Kinematics of Machines',
    1,
    7,
    2012,
    3,
    5,
    5,
    3
  ),
(
    39,
    '9876543210005',
    'Khaton ka Safarnama',
    8,
    8,
    1985,
    1,
    3,
    3,
    24
  ),
(
    40,
    '9876543210006',
    'Black Rose',
    8,
    7,
    1970,
    1,
    1,
    1,
    24
  ),
(
    41,
    '9876543210007',
    'Kagaz Te Kanvas',
    8,
    8,
    1980,
    1,
    5,
    3,
    25
  ),
(42, '9876543210008', 'Gillu', 4, 8, 1960, 1, 2, 2, 26),
(
    43,
    '9876543210009',
    'How I taught my grandmother to read',
    4,
    7,
    1990,
    1,
    5,
    5,
    26
  ),
(
    44,
    '9876543210010',
    'Three Thousand Stitches',
    4,
    7,
    2010,
    1,
    5,
    5,
    27
  ),
(
    45,
    '9876543210011',
    'Wise and Otherwise',
    4,
    7,
    2012,
    1,
    5,
    5,
    26
  ),
(
    46,
    '9876543210012',
    'The Room on the Roof',
    4,
    7,
    1970,
    1,
    5,
    5,
    27
  ),
(
    47,
    '9876543210013',
    'Happy Birthday, World',
    11,
    7,
    2000,
    1,
    1,
    1,
    27
  ),
(
    48,
    '9876543210014',
    'The Road Not Taken',
    12,
    7,
    1920,
    1,
    1,
    1,
    24
  ),
(
    49,
    '9876543210015',
    'Geetanjali',
    12,
    7,
    1920,
    3,
    1,
    1,
    25
  ),
(
    50,
    '9876543210016',
    'The 25 Success Principles',
    3,
    7,
    1980,
    6,
    10,
    5,
    18
  ),
(
    51,
    '9976543210002',
    'How to stop worrying and start living',
    3,
    7,
    2005,
    10,
    10,
    2,
    19
  ),
(
    52,
    '9976543210003',
    'Karma Yoga',
    11,
    7,
    1980,
    5,
    2,
    2,
    11
  ),
(53, '9976543210004', 'Godan', 10, 8, 2012, 10, 2, 2, 24),
(
    54,
    '9976543210005',
    'Premashram',
    10,
    8,
    2010,
    10,
    2,
    2,
    24
  ),
(
    55,
    '9976543210006',
    'The Seven Habits of Highly Effective People',
    3,
    7,
    2000,
    15,
    10,
    2,
    20
  ),
(56, '9876543210007', 'Mechanics', 1, 8, 2000, 3, 3, 3, 3),
(
    57,
    '9876543210008',
    'The Immortals of Meluha',
    15,
    8,
    2012,
    1,
    3,
    3,
    27
  ),
(
    58,
    '9876543210009',
    'Strengh of Materials',
    1,
    8,
    2000,
    6,
    2,
    2,
    2
  ),
(
    59,
    '9876543210010',
    'The Seagull',
    13,
    8,
    1960,
    1,
    1,
    1,
    27
  ),
(
    60,
    '9876543210011',
    'War and Peace',
    13,
    8,
    1970,
    21,
    1,
    1,
    26
  ),
(61, '9876543210012', 'Harijan', 11, 1, 1932, 1, 1, 1, 29),
(
    62,
    '9876543210013',
    'The Story of my experiments with Truth',
    11,
    8,
    1925,
    1,
    1,
    1,
    26
  ),
(
    63,
    '9876543210014',
    'The Discovery of India',
    5,
    8,
    1945,
    1,
    3,
    3,
    24
  ),
(
    64,
    '9876543210015',
    'Long walk to freedom',
    5,
    8,
    1999,
    1,
    2,
    2,
    25
  ),
(
    65,
    '9876543210016',
    'Beyond Religion',
    2,
    8,
    2010,
    1,
    2,
    2,
    15
  ),
(66, '9876543210017', 'Ikigai', 2, 8, 2010, 1, 2, 0, 15),
(67, '9976443210004', 'Gaban', 10, 8, 2012, 10, 2, 0, 24),
(68, '9976549210004', 'Idgah', 10, 8, 2012, 10, 2, 0, 24),
(
    69,
    '9876543210001',
    'Thermodynamics',
    1,
    7,
    2016,
    3,
    15,
    10,
    1
  ),
(
    70,
    '9876543210002',
    'Heat & Mass Transfer',
    1,
    7,
    2014,
    2,
    5,
    2,
    2
  ),
(
    71,
    '9876543210003',
    'Wings of Fire',
    11,
    7,
    1999,
    1,
    10,
    5,
    18
  ),
(
    72,
    '9876543210004',
    'Kinematics of Machines',
    1,
    7,
    2012,
    3,
    5,
    5,
    3
  ),
(
    73,
    '9876543210005',
    'Khaton ka Safarnama',
    8,
    8,
    1985,
    1,
    3,
    3,
    24
  ),
(
    74,
    '9876543210006',
    'Black Rose',
    8,
    7,
    1970,
    1,
    1,
    1,
    24
  ),
(
    75,
    '9876543210007',
    'Kagaz Te Kanvas',
    8,
    8,
    1980,
    1,
    5,
    3,
    25
  ),
(76, '9876543210008', 'Gillu', 4, 8, 1960, 1, 2, 2, 26),
(
    77,
    '9876543210009',
    'How I taught my grandmother to read',
    4,
    7,
    1990,
    1,
    5,
    5,
    26
  ),
(
    78,
    '9876543210010',
    'Three Thousand Stitches',
    4,
    7,
    2010,
    1,
    5,
    5,
    27
  ),
(
    79,
    '9876543210011',
    'Wise and Otherwise',
    4,
    7,
    2012,
    1,
    5,
    5,
    26
  ),
(
    80,
    '9876543210012',
    'The Room on the Roof',
    4,
    7,
    1970,
    1,
    5,
    5,
    27
  ),
(
    81,
    '9876543210013',
    'Happy Birthday, World',
    11,
    7,
    2000,
    1,
    1,
    1,
    27
  ),
(
    82,
    '9876543210014',
    'The Road Not Taken',
    12,
    7,
    1920,
    1,
    1,
    1,
    24
  ),
(
    83,
    '9876543210015',
    'Geetanjali',
    12,
    7,
    1920,
    3,
    1,
    1,
    25
  ),
(
    84,
    '9876543210016',
    'The 25 Success Principles',
    3,
    7,
    1980,
    6,
    10,
    5,
    18
  ),
(
    85,
    '9976543210002',
    'How to stop worrying and start living',
    3,
    7,
    2005,
    10,
    10,
    2,
    19
  ),
(
    86,
    '9976543210003',
    'Karma Yoga',
    11,
    7,
    1980,
    5,
    2,
    2,
    11
  ),
(87, '9976543210004', 'Godan', 10, 8, 2012, 10, 2, 2, 24),
(
    88,
    '9976543210005',
    'Premashram',
    10,
    8,
    2010,
    10,
    2,
    2,
    24
  ),
(
    89,
    '9976543210006',
    'The Seven Habits of Highly Effective People',
    3,
    7,
    2000,
    15,
    10,
    2,
    20
  ),
(90, '9876543210007', 'Mechanics', 1, 8, 2000, 3, 3, 3, 3),
(
    91,
    '9876543210008',
    'The Immortals of Meluha',
    15,
    8,
    2012,
    1,
    3,
    3,
    27
  ),
(
    92,
    '9876543210009',
    'Strengh of Materials',
    1,
    8,
    2000,
    6,
    2,
    2,
    2
  ),
(
    93,
    '9876543210010',
    'The Seagull',
    13,
    8,
    1960,
    1,
    1,
    1,
    27
  ),
(
    94,
    '9876543210011',
    'War and Peace',
    13,
    8,
    1970,
    21,
    1,
    1,
    26
  ),
(95, '9876543210012', 'Harijan', 11, 1, 1932, 1, 1, 1, 29),
(
    96,
    '9876543210013',
    'The Story of my experiments with Truth',
    11,
    8,
    1925,
    1,
    1,
    1,
    26
  ),
(
    97,
    '9876543210014',
    'The Discovery of India',
    5,
    8,
    1945,
    1,
    3,
    3,
    24
  ),
(
    98,
    '9876543210015',
    'Long walk to freedom',
    5,
    8,
    1999,
    1,
    2,
    2,
    25
  ),
(
    99,
    '9876543210016',
    'Beyond Religion',
    2,
    8,
    2010,
    1,
    2,
    2,
    15
  ),
(100, '9876543210017', 'Ikigai', 2, 8, 2010, 1, 2, 0, 15),
(101, '9976443210004', 'Gaban', 10, 8, 2012, 10, 2, 0, 24),
(102, '9976549210004', 'Idgah', 10, 8, 2012, 10, 2, 0, 24);
/*!40000 ALTER TABLE `book` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `book_author`
--
DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `book_author` (
  `book_id` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  KEY `fk_book_id` (`book_id`),
  KEY `fk_author_id` (`author_id`),
  CONSTRAINT `fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`),
  CONSTRAINT `fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `book_author`
--
LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */
;
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `book_issue`
--
DROP TABLE IF EXISTS `book_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `book_issue` (
  `issue_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_status` varchar(20) DEFAULT NULL,
  `issued_by_id` int DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `fk_issue_book_id` (`book_id`),
  KEY `fk_issue_member_id` (`member_id`),
  KEY `fk_issue_issued_by_id` (`issued_by_id`),
  CONSTRAINT `fk_issue_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `fk_issue_issued_by_id` FOREIGN KEY (`issued_by_id`) REFERENCES `library_staff` (`issue_by_id`),
  CONSTRAINT `fk_issue_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 43 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `book_issue`
--
LOCK TABLES `book_issue` WRITE;
/*!40000 ALTER TABLE `book_issue` DISABLE KEYS */
;
INSERT INTO `book_issue`
VALUES (6, 7, 1, '2022-11-02', '2022-11-18', 'overdue', 1),
(7, 8, 1, '2022-11-01', '2022-11-15', 'underdue', 1),
(8, 1, 2, '2022-11-10', '2022-11-25', 'underdue', 1),
(9, 10, 2, '2022-11-12', '2022-11-27', 'underdue', 2),
(10, 18, 2, '2022-11-12', '2022-11-27', 'underdue', 2),
(11, 2, 4, '2022-10-10', '2022-10-25', 'overrdue', 1),
(12, 15, 5, '2022-10-10', '2022-10-25', 'overdue', 2);
/*!40000 ALTER TABLE `book_issue` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `book_request`
--
DROP TABLE IF EXISTS `book_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `book_request` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `available_status_id` int DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `fk_request_book_id` (`book_id`),
  KEY `fk_request_member_id` (`member_id`),
  KEY `fk_request_available_status_id` (`available_status_id`),
  CONSTRAINT `fk_request_available_status_id` FOREIGN KEY (`available_status_id`) REFERENCES `book_request_status` (`available_status_id`),
  CONSTRAINT `fk_request_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `fk_request_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `book_request`
--
LOCK TABLES `book_request` WRITE;
/*!40000 ALTER TABLE `book_request` DISABLE KEYS */
;
INSERT INTO `book_request`
VALUES (1, 33, 1, '2022-11-15', 3),
(2, 34, 1, '2022-11-15', 4),
(3, 33, 2, '2022-11-15', 4),
(4, 32, 4, '2022-11-15', 5),
(5, 25, 5, '2022-11-15', 6);
/*!40000 ALTER TABLE `book_request` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `book_request_status`
--
DROP TABLE IF EXISTS `book_request_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `book_request_status` (
  `available_status_id` int NOT NULL AUTO_INCREMENT,
  `available_status` varchar(10) DEFAULT NULL,
  `nearest_available_date` date DEFAULT NULL,
  PRIMARY KEY (`available_status_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `book_request_status`
--
LOCK TABLES `book_request_status` WRITE;
/*!40000 ALTER TABLE `book_request_status` DISABLE KEYS */
;
INSERT INTO `book_request_status`
VALUES (1, 'not_avail', '2022-11-22'),
(2, 'not_avail', '2022-11-30'),
(3, 'not_avail', '2022-11-25'),
(4, 'available', '2022-11-16'),
(5, 'not_avail', '2022-11-22'),
(6, 'not_avail', '2022-11-30'),
(7, 'not_avail', '2022-11-25'),
(8, 'available', '2022-11-16');
/*!40000 ALTER TABLE `book_request_status` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `category`
--
DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 46 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `category`
--
LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */
;
INSERT INTO `category`
VALUES (1, 'Engineering&Technology'),
(2, 'Spritualism'),
(3, 'Self_Development'),
(4, 'Literature'),
(5, 'History'),
(6, 'Crime'),
(7, 'Comedy'),
(8, 'Romantic'),
(9, 'Folk_Tales'),
(10, 'Fiction'),
(11, 'Non_Fiction'),
(12, 'Poetry'),
(13, 'Drama'),
(14, 'Adventure'),
(15, 'Mythology'),
(16, 'Engineering&Technology'),
(17, 'Spritualism'),
(18, 'Self_Development'),
(19, 'Literature'),
(20, 'History'),
(21, 'Crime'),
(22, 'Comedy'),
(23, 'Romantic'),
(24, 'Folk_Tales'),
(25, 'Fiction'),
(26, 'Non_Fiction'),
(27, 'Poetry'),
(28, 'Drama'),
(29, 'Adventure'),
(30, 'Mythology'),
(31, 'Engineering&Technology'),
(32, 'Spritualism'),
(33, 'Self_Development'),
(34, 'Literature'),
(35, 'History'),
(36, 'Crime'),
(37, 'Comedy'),
(38, 'Romantic'),
(39, 'Folk_Tales'),
(40, 'Fiction'),
(41, 'Non_Fiction'),
(42, 'Poetry'),
(43, 'Drama'),
(44, 'Adventure'),
(45, 'Mythology');
/*!40000 ALTER TABLE `category` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `fine_due`
--
DROP TABLE IF EXISTS `fine_due`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `fine_due` (
  `fine_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `issue_id` int DEFAULT NULL,
  `fine_date` date DEFAULT NULL,
  `fine_total` int DEFAULT NULL,
  PRIMARY KEY (`fine_id`),
  KEY `fk_member_id` (`member_id`),
  KEY `fk_issue_id` (`issue_id`),
  CONSTRAINT `fk_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `book_issue` (`issue_id`),
  CONSTRAINT `fk_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 16 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `fine_due`
--
LOCK TABLES `fine_due` WRITE;
/*!40000 ALTER TABLE `fine_due` DISABLE KEYS */
;
INSERT INTO `fine_due`
VALUES (13, 5, 12, '2022-11-20', 25),
(14, 4, 11, '2022-11-20', 25),
(15, 1, 6, '2022-11-20', 150);
/*!40000 ALTER TABLE `fine_due` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `fine_payment`
--
DROP TABLE IF EXISTS `fine_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `fine_payment` (
  `fine_payment_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_amount` int DEFAULT NULL,
  PRIMARY KEY (`fine_payment_id`),
  KEY `fk_payment_member_id` (`member_id`),
  CONSTRAINT `fk_payment_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `fine_payment`
--
LOCK TABLES `fine_payment` WRITE;
/*!40000 ALTER TABLE `fine_payment` DISABLE KEYS */
;
INSERT INTO `fine_payment`
VALUES (1, 5, '2022-11-20', 25),
(2, 4, '2022-11-20', 25),
(3, 1, '2022-11-20', 150);
/*!40000 ALTER TABLE `fine_payment` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `library_staff`
--
DROP TABLE IF EXISTS `library_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `library_staff` (
  `issue_by_id` int NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_designation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`issue_by_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `library_staff`
--
LOCK TABLES `library_staff` WRITE;
/*!40000 ALTER TABLE `library_staff` DISABLE KEYS */
;
INSERT INTO `library_staff`
VALUES (1, 'X Patel', 'Librarian'),
(2, 'Y Arora', 'Librarian'),
(3, 'R Tiwari', 'Head Librarian');
/*!40000 ALTER TABLE `library_staff` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `location`
--
DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `shelf_no` varchar(10) DEFAULT NULL,
  `shelf_name` varchar(50) DEFAULT NULL,
  `floor_no` int DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 91 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `location`
--
LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */
;
INSERT INTO `location`
VALUES (1, '10001', 'Engineering_Mechanical', 1),
(2, '10001', 'Engineering_Mechanical', 2),
(3, '10001', 'Engineering_Mechanical', 3),
(4, '10002', 'Engineering_Electrical', 1),
(5, '10002', 'Engineering_Electrical', 2),
(6, '10002', 'Engineering_Electrical', 3),
(7, '10003', 'Engineering_Computers', 1),
(8, '10003', 'Engineering_Computers', 2),
(9, '10003', 'Engineering_Computers', 3),
(10, '20001', 'Philosophy', 1),
(11, '20001', 'Philosophy', 2),
(12, '20001', 'Philosophy', 3),
(13, '20001', 'Philosophy', 4),
(14, '20002', 'Spritualism', 1),
(15, '20002', 'Spritualism', 2),
(16, '20002', 'Spritualism', 3),
(17, '20002', 'Spritualism', 4),
(18, '30001', 'Self_Development', 1),
(19, '30001', 'Self_Development', 2),
(20, '30001', 'Self_Development', 3),
(21, '30002', 'Competitions', 1),
(22, '30002', 'Competitions', 2),
(23, '30002', 'Competitions', 3),
(24, '30003', 'Literature', 1),
(25, '30003', 'Literature', 2),
(26, '30003', 'Literature', 3),
(27, '30003', 'Literature', 4),
(28, '40001', 'Journals', 1),
(29, '40001', 'Journals', 2),
(30, '40001', 'Journals', 3),
(31, '10001', 'Engineering_Mechanical', 1),
(32, '10001', 'Engineering_Mechanical', 2),
(33, '10001', 'Engineering_Mechanical', 3),
(34, '10002', 'Engineering_Electrical', 1),
(35, '10002', 'Engineering_Electrical', 2),
(36, '10002', 'Engineering_Electrical', 3),
(37, '10003', 'Engineering_Computers', 1),
(38, '10003', 'Engineering_Computers', 2),
(39, '10003', 'Engineering_Computers', 3),
(40, '20001', 'Philosophy', 1),
(41, '20001', 'Philosophy', 2),
(42, '20001', 'Philosophy', 3),
(43, '20001', 'Philosophy', 4),
(44, '20002', 'Spritualism', 1),
(45, '20002', 'Spritualism', 2),
(46, '20002', 'Spritualism', 3),
(47, '20002', 'Spritualism', 4),
(48, '30001', 'Self_Development', 1),
(49, '30001', 'Self_Development', 2),
(50, '30001', 'Self_Development', 3),
(51, '30002', 'Competitions', 1),
(52, '30002', 'Competitions', 2),
(53, '30002', 'Competitions', 3),
(54, '30003', 'Literature', 1),
(55, '30003', 'Literature', 2),
(56, '30003', 'Literature', 3),
(57, '30003', 'Literature', 4),
(58, '40001', 'Journals', 1),
(59, '40001', 'Journals', 2),
(60, '40001', 'Journals', 3),
(61, '10001', 'Engineering_Mechanical', 1),
(62, '10001', 'Engineering_Mechanical', 2),
(63, '10001', 'Engineering_Mechanical', 3),
(64, '10002', 'Engineering_Electrical', 1),
(65, '10002', 'Engineering_Electrical', 2),
(66, '10002', 'Engineering_Electrical', 3),
(67, '10003', 'Engineering_Computers', 1),
(68, '10003', 'Engineering_Computers', 2),
(69, '10003', 'Engineering_Computers', 3),
(70, '20001', 'Philosophy', 1),
(71, '20001', 'Philosophy', 2),
(72, '20001', 'Philosophy', 3),
(73, '20001', 'Philosophy', 4),
(74, '20002', 'Spritualism', 1),
(75, '20002', 'Spritualism', 2),
(76, '20002', 'Spritualism', 3),
(77, '20002', 'Spritualism', 4),
(78, '30001', 'Self_Development', 1),
(79, '30001', 'Self_Development', 2),
(80, '30001', 'Self_Development', 3),
(81, '30002', 'Competitions', 1),
(82, '30002', 'Competitions', 2),
(83, '30002', 'Competitions', 3),
(84, '30003', 'Literature', 1),
(85, '30003', 'Literature', 2),
(86, '30003', 'Literature', 3),
(87, '30003', 'Literature', 4),
(88, '40001', 'Journals', 1),
(89, '40001', 'Journals', 2),
(90, '40001', 'Journals', 3);
/*!40000 ALTER TABLE `location` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `member_status`
--
DROP TABLE IF EXISTS `member_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `member_status` (
  `active_status_id` int NOT NULL AUTO_INCREMENT,
  `account_type` varchar(20) DEFAULT NULL,
  `account_status` varchar(10) DEFAULT NULL,
  `membership_start_date` year DEFAULT NULL,
  `membership_end_date` year DEFAULT NULL,
  PRIMARY KEY (`active_status_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 34 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `member_status`
--
LOCK TABLES `member_status` WRITE;
/*!40000 ALTER TABLE `member_status` DISABLE KEYS */
;
INSERT INTO `member_status`
VALUES (1, 'student', 'active', 2018, 2020),
(2, 'student', 'active', 2019, 2021),
(3, 'student', 'inactive', 2016, 2017),
(4, 'student', 'inactive', 2015, 2016),
(5, 'professional', 'active', 2020, 2022),
(6, 'professional', 'active', 2018, 2022),
(7, 'professional', 'inactive', 2015, 2018),
(8, 'professional', 'inactive', 2016, 2016),
(9, 'staff', 'active', 2020, 2022),
(10, 'staff', 'active', 2020, 2022),
(11, 'staff', 'inactive', 2015, 2016),
(12, 'student', 'active', 2018, 2020),
(13, 'student', 'active', 2019, 2021),
(14, 'student', 'inactive', 2016, 2017),
(15, 'student', 'inactive', 2015, 2016),
(16, 'professional', 'active', 2020, 2022),
(17, 'professional', 'active', 2018, 2022),
(18, 'professional', 'inactive', 2015, 2018),
(19, 'professional', 'inactive', 2016, 2016),
(20, 'staff', 'active', 2020, 2022),
(21, 'staff', 'active', 2020, 2022),
(22, 'staff', 'inactive', 2015, 2016),
(23, 'student', 'active', 2018, 2020),
(24, 'student', 'active', 2019, 2021),
(25, 'student', 'inactive', 2016, 2017),
(26, 'student', 'inactive', 2015, 2016),
(27, 'professional', 'active', 2020, 2022),
(28, 'professional', 'active', 2018, 2022),
(29, 'professional', 'inactive', 2015, 2018),
(30, 'professional', 'inactive', 2016, 2016),
(31, 'staff', 'active', 2020, 2022),
(32, 'staff', 'active', 2020, 2022),
(33, 'staff', 'inactive', 2015, 2016);
/*!40000 ALTER TABLE `member_status` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `members`
--
DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `active_status_id` int DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `fk_active_status_id` (`active_status_id`),
  CONSTRAINT `fk_active_status_id` FOREIGN KEY (`active_status_id`) REFERENCES `member_status` (`active_status_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 41 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `members`
--
LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */
;
INSERT INTO `members`
VALUES (
    1,
    'A',
    'Kumar',
    'Delhi',
    '9999999999',
    'a@xyz.com',
    '1996-05-08',
    1
  ),
(
    2,
    'B',
    'Kumar',
    'Delhi',
    '9999999999',
    'b@xyz.com',
    '1990-03-10',
    5
  ),
(
    3,
    'C',
    'Kumar',
    'Noida',
    '9999999999',
    'c@xyz.com',
    '2000-03-03',
    3
  ),
(
    4,
    'A',
    'Singh',
    'Noida',
    '9999999999',
    'as@xyz.com',
    '2002-06-08',
    2
  ),
(
    5,
    'B',
    'Singh',
    'Noida',
    '9999999999',
    'bs@xyz.com',
    '1985-03-16',
    4
  ),
(
    6,
    'B',
    'Singh',
    'Noida',
    '9999999999',
    'bs@xyz.com',
    '1985-12-11',
    6
  ),
(
    7,
    'C',
    'Singh',
    'Delhi',
    '9999999999',
    'cs@xyz.com',
    '1990-11-25',
    7
  ),
(
    8,
    'X',
    'Patel',
    'Delhi',
    '9999999999',
    'x@xyz.com',
    '1990-09-30',
    9
  ),
(
    9,
    'Y',
    'Arora',
    'Delhi',
    '9999999999',
    'y@xyz.com',
    '1985-02-02',
    10
  ),
(
    10,
    'Z',
    'Khanna',
    'Delhi',
    '9999999999',
    'z@xyz.com',
    '1970-03-29',
    11
  ),
(
    11,
    'A',
    'Kumar',
    'Delhi',
    '9999999999',
    'a@xyz.com',
    '1996-05-08',
    1
  ),
(
    12,
    'B',
    'Kumar',
    'Delhi',
    '9999999999',
    'b@xyz.com',
    '1990-03-10',
    5
  ),
(
    13,
    'C',
    'Kumar',
    'Noida',
    '9999999999',
    'c@xyz.com',
    '2000-03-03',
    3
  ),
(
    14,
    'A',
    'Singh',
    'Noida',
    '9999999999',
    'as@xyz.com',
    '2002-06-08',
    2
  ),
(
    15,
    'B',
    'Singh',
    'Noida',
    '9999999999',
    'bs@xyz.com',
    '1985-03-16',
    4
  ),
(
    16,
    'B',
    'Singh',
    'Noida',
    '9999999999',
    'bs@xyz.com',
    '1985-12-11',
    6
  ),
(
    17,
    'C',
    'Singh',
    'Delhi',
    '9999999999',
    'cs@xyz.com',
    '1990-11-25',
    7
  ),
(
    18,
    'X',
    'Patel',
    'Delhi',
    '9999999999',
    'x@xyz.com',
    '1990-09-30',
    9
  ),
(
    19,
    'Y',
    'Arora',
    'Delhi',
    '9999999999',
    'y@xyz.com',
    '1985-02-02',
    10
  ),
(
    20,
    'Z',
    'Khanna',
    'Delhi',
    '9999999999',
    'z@xyz.com',
    '1970-03-29',
    11
  );
/*!40000 ALTER TABLE `members` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `publisher`
--
DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `publisher` (
  `publisher_id` int NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(50) DEFAULT NULL,
  `publication_language` varchar(15) DEFAULT NULL,
  `publication_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 31 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `publisher`
--
LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */
;
INSERT INTO `publisher`
VALUES (1, 'ABC', 'English', 'Journals'),
(2, 'ABC', 'Hindi', 'Journals'),
(3, 'CBS', 'English', 'Handbooks'),
(4, 'CBS', 'Hindi', 'Handbooks'),
(5, 'XYZ', 'English', 'Research_Reports'),
(6, 'XYZ', 'Hindi', 'Research_Reports'),
(7, 'XYZ', 'English', 'Books'),
(8, 'XYZ', 'Hindi', 'Books'),
(9, 'ZAB', 'English', 'Magzines'),
(10, 'ZAB', 'Hindi', 'Magzines'),
(11, 'ABC', 'English', 'Journals'),
(12, 'ABC', 'Hindi', 'Journals'),
(13, 'CBS', 'English', 'Handbooks'),
(14, 'CBS', 'Hindi', 'Handbooks'),
(15, 'XYZ', 'English', 'Research_Reports'),
(16, 'XYZ', 'Hindi', 'Research_Reports'),
(17, 'XYZ', 'English', 'Books'),
(18, 'XYZ', 'Hindi', 'Books'),
(19, 'ZAB', 'English', 'Magzines'),
(20, 'ZAB', 'Hindi', 'Magzines'),
(21, 'ABC', 'English', 'Journals'),
(22, 'ABC', 'Hindi', 'Journals'),
(23, 'CBS', 'English', 'Handbooks'),
(24, 'CBS', 'Hindi', 'Handbooks'),
(25, 'XYZ', 'English', 'Research_Reports'),
(26, 'XYZ', 'Hindi', 'Research_Reports'),
(27, 'XYZ', 'English', 'Books'),
(28, 'XYZ', 'Hindi', 'Books'),
(29, 'ZAB', 'English', 'Magzines'),
(30, 'ZAB', 'Hindi', 'Magzines');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2024-10-19  0:53:26