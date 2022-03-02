-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: api-crm
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES ('05791416-055f-334f-8543-d0bc5abbde2e','Kutch, Cormier and Ortiz','michael51@carter.org','+1.458.941.8086','56129 Juliana Court','East Branson','Montana',52182,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('17da6605-539e-3521-92e5-f50aee6bb53b','Kemmer and Sons','osinski.kris@schamberger.com','303.271.9367','750 Lisa Avenue Suite 518','South Lucienne','Rhode Island',15575,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('2b93199d-ffdd-3ee9-8755-d974a26aacb9','Fay-Brakus','ike67@champlin.info','1-781-336-8147','2954 Clemens Crossing Apt. 667','Schowalterland','New Hampshire',70535,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('443d8dda-112d-3be9-83ef-74a89fd3d6d2','Koelpin, Kuphal and Ernser','marcella.auer@parker.org','458.776.4530','4522 Erwin Locks Apt. 617','Marvinview','Texas',65652,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('466b82e9-4c02-3ab3-b113-e186eb0523c1','Spencer Inc','aimee.lemke@oberbrunner.biz','+1.769.250.3064','7948 Osinski Burg Suite 321','Janeborough','South Dakota',36870,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('46f86659-bf12-3e34-9232-940e78ec3c85','Thiel, Grady and Bergstrom','peggie77@von.com','+16609545791','910 Hand Coves Apt. 541','Kavonland','New York',42890,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('56a54db2-28e9-3c46-8a29-008921f06199','Murray-Balistreri','rlang@gibson.com','808.524.4953','7782 Mina Drive Apt. 748','Hickleside','Montana',11852,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('5a2355b7-515a-39e2-9e2b-b757eeac7ca0','Reichert-Tremblay','maia62@weissnat.com','+1 (912) 888-2414','5404 Cordie Drive Suite 500','Ferrybury','Maine',25488,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('5aefabb8-b0f4-3d4b-9795-e04be9665bbc','Block and Sons','pwiza@denesik.com','443.572.8912','88124 Hintz Lake Suite 149','Feilbury','Maine',92305,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('5d8b7d47-e554-3051-8b66-24855360ac13','O\'Keefe, Johnson and Block','muller.jerrold@dicki.com','820-421-2684','3092 Elvera Parkways Suite 067','Welchfort','Montana',11033,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('666cb7a7-33b9-3535-b5a0-da91724d3bfd','Waters LLC','ijerde@wisoky.com','(508) 980-4598','51551 Annette Trail','Mantehaven','Mississippi',52150,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('705042b0-92b3-3935-b0cd-fe0a07461845','Botsford-Lemke','isac.mayert@ledner.com','+1 (541) 767-0246','54076 Vandervort Lock','Reymouth','Maryland',96545,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('72e5dd30-ad05-3e85-a28b-5f6e8d815311','Auer, Rutherford and Quitzon','iupton@feest.com','1-920-457-5926','977 Christiansen Forges Apt. 005','Lake Jeremy','Indiana',77528,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('73723e9d-579a-37eb-b656-a8a2594c08a3','Wuckert PLC','fisher.leslie@fahey.info','+1-313-532-0331','9853 Adams Lodge','Athenamouth','Nevada',81205,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('744f5dd9-3269-30a9-8738-9231333cb882','Hayes-Nolan','estell.blanda@marquardt.com','+1-708-561-7675','54267 Lebsack Lake Apt. 463','Lindgrenport','Wyoming',74041,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('7832c7aa-db80-3b77-8092-4534e9b85b13','Cassin, Block and Krajcik','joey35@ward.com','1-260-494-0981','358 Schultz Road Suite 255','Spinkaport','Pennsylvania',48319,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('881a087a-2a29-3e1d-8190-d119fbc7a35c','Wiza, Schmidt and Waelchi','kailee18@parker.com','+1-717-984-6778','9361 Darian Islands','Port Salma','Maine',18812,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('8a78fb7d-070b-3e6b-b833-e9186055e887','Daniel Ltd','annabell59@effertz.info','207-938-7923','613 Clyde Mount','Lake Aylinview','Montana',80338,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('9e84b01c-51a3-36cf-95b9-da941064af8f','Spencer-Torp','emerald70@morar.com','918.809.8159','561 Sierra Parks','Schuppetown','North Dakota',93729,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('b8232b17-bbb4-34c1-be15-032ad3456149','Zemlak and Sons','daugherty.frankie@bogisich.com','845.344.8586','84274 Arnoldo Stravenue','Emmettmouth','Oklahoma',53220,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('baea7eeb-50d0-35dd-8a17-7d933fbf681a','Ziemann, Reinger and Rempel','kuhn.missouri@aufderhar.com','(949) 341-0025','1599 Kuhlman Passage','East Granville','Pennsylvania',33471,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('cf3dea39-10a3-3d64-a4eb-65ea6f785ad0','Ledner, Luettgen and Jerde','erosenbaum@gleichner.net','352.470.9127','4158 Kariane Extensions','North Citlalli','Wisconsin',90719,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('db8fc632-06fe-3504-9572-3c518e13bc7d','Hagenes, Pacocha and Tillman','agustin.gaylord@fadel.com','+1 (667) 738-7604','8383 Frederik Inlet Apt. 348','Lake Turnertown','Montana',23317,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('dc076b2b-bf4d-30f9-bea9-876a898b0bb8','Wisoky-Wyman','petra57@williamson.com','+1.831.895.8423','58239 Tiara Port','Lesliemouth','Oklahoma',14241,'2022-03-01 23:11:16','2022-03-01 23:11:16'),('e3580c68-8a84-3ba4-bc63-20132e68fd2b','Wuckert-Huel','dhartmann@reilly.info','828-762-8774','97762 Afton Mall','Grantchester','Tennessee',52411,'2022-03-01 23:11:16','2022-03-01 23:11:16');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-02 12:11:24
