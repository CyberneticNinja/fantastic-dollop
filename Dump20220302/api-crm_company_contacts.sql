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
-- Table structure for table `company_contacts`
--

DROP TABLE IF EXISTS `company_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_contacts_company_id_foreign` (`company_id`),
  KEY `company_contacts_contact_id_foreign` (`contact_id`),
  CONSTRAINT `company_contacts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `company_contacts_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_contacts`
--

LOCK TABLES `company_contacts` WRITE;
/*!40000 ALTER TABLE `company_contacts` DISABLE KEYS */;
INSERT INTO `company_contacts` VALUES (20,'05791416-055f-334f-8543-d0bc5abbde2e','013762f7-9348-3f96-9cee-5145430d34f0'),(21,'05791416-055f-334f-8543-d0bc5abbde2e','02913c7b-1f47-3056-af59-f94be95af4ab'),(22,'17da6605-539e-3521-92e5-f50aee6bb53b','09b615f9-9542-3c3c-9265-bea6cb03219c'),(23,'17da6605-539e-3521-92e5-f50aee6bb53b','0f199db3-0e79-3081-8c5c-34b1e682775a'),(24,'2b93199d-ffdd-3ee9-8755-d974a26aacb9','1754c89d-a4ec-349c-87a7-02dc7011df0e'),(25,'2b93199d-ffdd-3ee9-8755-d974a26aacb9','187acf21-6595-3d88-99b8-0bd143413aa5'),(26,'443d8dda-112d-3be9-83ef-74a89fd3d6d2','1c73c4ae-9c5e-310e-a201-6a417c10da87'),(27,'443d8dda-112d-3be9-83ef-74a89fd3d6d2','2387d0ce-4750-3b28-85d6-ce7075f35fe9'),(28,'466b82e9-4c02-3ab3-b113-e186eb0523c1','2f185b6c-db75-3406-9848-274f7fb975d2'),(29,'466b82e9-4c02-3ab3-b113-e186eb0523c1','313deadd-1807-3a23-b965-3b65a4e932f3'),(30,'46f86659-bf12-3e34-9232-940e78ec3c85','323df2b3-3b90-3f20-9ff5-773b6f00f800'),(31,'46f86659-bf12-3e34-9232-940e78ec3c85','32dbacce-cdc5-37fd-b0c7-9b0bcf78d688'),(32,'56a54db2-28e9-3c46-8a29-008921f06199','39b6ea7d-c236-3542-bf32-d9cc15081131'),(33,'56a54db2-28e9-3c46-8a29-008921f06199','3cee5003-2e99-36ee-ae19-b9a2e1f778c1'),(34,'5a2355b7-515a-39e2-9e2b-b757eeac7ca0','3ef004a4-d544-3d0a-82cf-4f25d22863d2'),(35,'5a2355b7-515a-39e2-9e2b-b757eeac7ca0','46af80e0-1be4-320f-858c-e934851097cc'),(36,'5aefabb8-b0f4-3d4b-9795-e04be9665bbc','47e83128-d433-32b6-b7b3-7eba942f933a'),(37,'5aefabb8-b0f4-3d4b-9795-e04be9665bbc','48975c0e-2672-3d94-a0e9-18aa382e0eb6'),(38,'5d8b7d47-e554-3051-8b66-24855360ac13','4a565174-05ff-3a90-b986-47d24dc5c882'),(39,'5d8b7d47-e554-3051-8b66-24855360ac13','4d823812-d626-33be-85f2-48e0f0d9081b'),(40,'666cb7a7-33b9-3535-b5a0-da91724d3bfd','51f57100-d36e-3b72-abf6-dfca4b2fe94f'),(41,'666cb7a7-33b9-3535-b5a0-da91724d3bfd','527a3827-d851-3df7-81e4-dc5b5db136e6'),(42,'705042b0-92b3-3935-b0cd-fe0a07461845','55d37f5d-05a4-305b-9d73-0e4ee050f542'),(43,'705042b0-92b3-3935-b0cd-fe0a07461845','582053d9-7e2a-3fc4-951e-c532baea6740'),(44,'72e5dd30-ad05-3e85-a28b-5f6e8d815311','5a788bdf-5266-3f54-b0d3-1a9bfda8e644'),(45,'72e5dd30-ad05-3e85-a28b-5f6e8d815311','5edfb324-dbc3-39b9-9f5c-c0d3baa22e9d'),(46,'73723e9d-579a-37eb-b656-a8a2594c08a3','61140656-dde8-3bc5-a23a-4ebff6ce92a8'),(47,'73723e9d-579a-37eb-b656-a8a2594c08a3','78e41b84-48ae-36f3-8684-b26220bdf04c'),(48,'744f5dd9-3269-30a9-8738-9231333cb882','8cfd331a-34cc-3fa4-9315-6b30141a12bb'),(49,'744f5dd9-3269-30a9-8738-9231333cb882','99cf2b5d-e888-355c-86f8-19ba802a391e'),(50,'7832c7aa-db80-3b77-8092-4534e9b85b13','9e1939e9-7136-3b68-b22f-68460f4b0be8'),(51,'7832c7aa-db80-3b77-8092-4534e9b85b13','9f63881c-2fe0-36a2-a2e4-2466ab66ed37'),(52,'881a087a-2a29-3e1d-8190-d119fbc7a35c','a29d3af6-bced-35c6-b9c7-76c9c77673cc'),(53,'881a087a-2a29-3e1d-8190-d119fbc7a35c','bc4620b6-ac7f-30da-9fe6-c1cf6eef3f6a'),(54,'8a78fb7d-070b-3e6b-b833-e9186055e887','bca8be4b-55bf-31ea-a6c1-7a9a964464a0'),(55,'8a78fb7d-070b-3e6b-b833-e9186055e887','c3670e3a-0124-3113-b022-01173e1b239e'),(56,'9e84b01c-51a3-36cf-95b9-da941064af8f','c95df9b2-3d87-3b4e-b67f-b92b22f05af9'),(57,'9e84b01c-51a3-36cf-95b9-da941064af8f','cb5b6135-64d3-36c8-a3a0-252d7e9ed699'),(58,'b8232b17-bbb4-34c1-be15-032ad3456149','d1437919-6ce6-3345-a822-a635da6e9a8d'),(59,'b8232b17-bbb4-34c1-be15-032ad3456149','d41d5296-0371-3dae-b887-179b9bb1390a'),(60,'baea7eeb-50d0-35dd-8a17-7d933fbf681a','d5961b46-ad40-3d85-8bfc-eb6bb0cc1d7b'),(61,'baea7eeb-50d0-35dd-8a17-7d933fbf681a','dadbc9ad-9d8f-3ab6-8be5-982e140b91ac'),(62,'cf3dea39-10a3-3d64-a4eb-65ea6f785ad0','e7b57f92-cf47-3a93-ba8a-cc2838c79364'),(63,'cf3dea39-10a3-3d64-a4eb-65ea6f785ad0','e890d104-ff1f-3ddc-a0e2-fb423424f592'),(64,'db8fc632-06fe-3504-9572-3c518e13bc7d','eaf7fdff-8fbe-3012-8847-1e53190a9c7e'),(65,'db8fc632-06fe-3504-9572-3c518e13bc7d','eb412d3c-5d7b-3a54-99f7-ac34a1e2adbc'),(66,'dc076b2b-bf4d-30f9-bea9-876a898b0bb8','ec80ccb2-564e-336e-a152-9a4bcf83d170'),(67,'dc076b2b-bf4d-30f9-bea9-876a898b0bb8','f070726e-808b-3c62-ab8d-52bb5b3c69b5'),(68,'e3580c68-8a84-3ba4-bc63-20132e68fd2b','f74e3aa4-87b0-3f2d-8755-55a96384a364'),(69,'e3580c68-8a84-3ba4-bc63-20132e68fd2b','fd9c0bb0-4e6a-361b-972e-aefc74b4cba2');
/*!40000 ALTER TABLE `company_contacts` ENABLE KEYS */;
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
