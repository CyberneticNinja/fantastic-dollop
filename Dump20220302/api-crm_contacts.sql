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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('013762f7-9348-3f96-9cee-5145430d34f0','Maxine','Ferry','MaxineFerry@company.com','1-973-393-6987','2022-03-01 23:11:25','2022-03-01 23:11:25'),('02913c7b-1f47-3056-af59-f94be95af4ab','Carson','Blanda','CarsonBlanda@company.com','(769) 217-2243','2022-03-01 23:11:22','2022-03-01 23:11:22'),('09b615f9-9542-3c3c-9265-bea6cb03219c','Alexandre','Renner','AlexandreRenner@company.com','+1 (682) 580-5031','2022-03-01 23:11:25','2022-03-01 23:11:25'),('0f199db3-0e79-3081-8c5c-34b1e682775a','Chanel','Harvey','ChanelHarvey@company.com','1-737-446-2591','2022-03-01 23:11:25','2022-03-01 23:11:25'),('1754c89d-a4ec-349c-87a7-02dc7011df0e','Mustafa','Huel','MustafaHuel@company.com','1-985-332-6531','2022-03-01 23:11:25','2022-03-01 23:11:25'),('187acf21-6595-3d88-99b8-0bd143413aa5','Marianna','Deckow','MariannaDeckow@company.com','+1.908.586.6976','2022-03-01 23:11:22','2022-03-01 23:11:22'),('1c73c4ae-9c5e-310e-a201-6a417c10da87','Ellsworth','Cummings','EllsworthCummings@company.com','(785) 406-0402','2022-03-01 23:11:25','2022-03-01 23:11:25'),('2387d0ce-4750-3b28-85d6-ce7075f35fe9','Nyah','Kshlerin','NyahKshlerin@company.com','+1 (952) 383-8641','2022-03-01 23:11:22','2022-03-01 23:11:22'),('2f185b6c-db75-3406-9848-274f7fb975d2','Caterina','Rippin','CaterinaRippin@company.com','+1 (586) 665-5363','2022-03-01 23:11:25','2022-03-01 23:11:25'),('313deadd-1807-3a23-b965-3b65a4e932f3','Joelle','Borer','JoelleBorer@company.com','+1 (385) 707-5826','2022-03-01 23:11:25','2022-03-01 23:11:25'),('323df2b3-3b90-3f20-9ff5-773b6f00f800','Kailee','Hermann','KaileeHermann@company.com','+1-769-868-1605','2022-03-01 23:11:25','2022-03-01 23:11:25'),('32dbacce-cdc5-37fd-b0c7-9b0bcf78d688','Norene','Ritchie','NoreneRitchie@company.com','231-600-8621','2022-03-01 23:11:22','2022-03-01 23:11:22'),('39b6ea7d-c236-3542-bf32-d9cc15081131','Weston','Anderson','WestonAnderson@company.com','719.808.7802','2022-03-01 23:11:25','2022-03-01 23:11:25'),('3cee5003-2e99-36ee-ae19-b9a2e1f778c1','Wiley','Wilderman','WileyWilderman@company.com','+13167348849','2022-03-01 23:11:22','2022-03-01 23:11:22'),('3ef004a4-d544-3d0a-82cf-4f25d22863d2','Vinnie','Gutmann','VinnieGutmann@company.com','319.681.4044','2022-03-01 23:11:22','2022-03-01 23:11:22'),('46af80e0-1be4-320f-858c-e934851097cc','Ezekiel','Bode','EzekielBode@company.com','863-745-5184','2022-03-01 23:11:22','2022-03-01 23:11:22'),('47e83128-d433-32b6-b7b3-7eba942f933a','Sim','Bogisich','SimBogisich@company.com','+1-848-441-9721','2022-03-01 23:11:22','2022-03-01 23:11:22'),('48975c0e-2672-3d94-a0e9-18aa382e0eb6','Madie','Kshlerin','MadieKshlerin@company.com','1-513-774-6131','2022-03-01 23:11:25','2022-03-01 23:11:25'),('4a565174-05ff-3a90-b986-47d24dc5c882','Abdiel','Stanton','AbdielStanton@company.com','1-970-787-0576','2022-03-01 23:11:22','2022-03-01 23:11:22'),('4d823812-d626-33be-85f2-48e0f0d9081b','Jaylin','Lehner','JaylinLehner@company.com','+1.201.354.1608','2022-03-01 23:11:22','2022-03-01 23:11:22'),('51f57100-d36e-3b72-abf6-dfca4b2fe94f','Arne','Goyette','ArneGoyette@company.com','+1.503.283.0171','2022-03-01 23:11:22','2022-03-01 23:11:22'),('527a3827-d851-3df7-81e4-dc5b5db136e6','Emmalee','Gislason','EmmaleeGislason@company.com','+1-774-889-8575','2022-03-01 23:11:22','2022-03-01 23:11:22'),('55d37f5d-05a4-305b-9d73-0e4ee050f542','Syble','Price','SyblePrice@company.com','+1.425.638.4568','2022-03-01 23:11:22','2022-03-01 23:11:22'),('582053d9-7e2a-3fc4-951e-c532baea6740','Jasen','Lind','JasenLind@company.com','(425) 881-5733','2022-03-01 23:11:22','2022-03-01 23:11:22'),('5a788bdf-5266-3f54-b0d3-1a9bfda8e644','Derrick','Emmerich','DerrickEmmerich@company.com','657-552-9633','2022-03-01 23:11:22','2022-03-01 23:11:22'),('5edfb324-dbc3-39b9-9f5c-c0d3baa22e9d','Yazmin','Emmerich','YazminEmmerich@company.com','(831) 454-0432','2022-03-01 23:11:22','2022-03-01 23:11:22'),('61140656-dde8-3bc5-a23a-4ebff6ce92a8','Clemmie','Senger','ClemmieSenger@company.com','1-954-957-3993','2022-03-01 23:11:22','2022-03-01 23:11:22'),('78e41b84-48ae-36f3-8684-b26220bdf04c','Jevon','Rath','JevonRath@company.com','+1 (435) 551-2068','2022-03-01 23:11:25','2022-03-01 23:11:25'),('8cfd331a-34cc-3fa4-9315-6b30141a12bb','Lucienne','Grady','LucienneGrady@company.com','1-248-720-3363','2022-03-01 23:11:22','2022-03-01 23:11:22'),('99cf2b5d-e888-355c-86f8-19ba802a391e','Karianne','Corwin','KarianneCorwin@company.com','1-620-572-6487','2022-03-01 23:11:22','2022-03-01 23:11:22'),('9e1939e9-7136-3b68-b22f-68460f4b0be8','Vickie','Ledner','VickieLedner@company.com','1-727-768-0906','2022-03-01 23:11:25','2022-03-01 23:11:25'),('9f63881c-2fe0-36a2-a2e4-2466ab66ed37','Neva','Kassulke','NevaKassulke@company.com','+1-989-337-6925','2022-03-01 23:11:22','2022-03-01 23:11:22'),('a29d3af6-bced-35c6-b9c7-76c9c77673cc','Talia','Mosciski','TaliaMosciski@company.com','+1.934.952.3643','2022-03-01 23:11:25','2022-03-01 23:11:25'),('bc4620b6-ac7f-30da-9fe6-c1cf6eef3f6a','Misty','Ryan','MistyRyan@company.com','559-755-6488','2022-03-01 23:11:22','2022-03-01 23:11:22'),('bca8be4b-55bf-31ea-a6c1-7a9a964464a0','Madelyn','Murphy','MadelynMurphy@company.com','248-839-6485','2022-03-01 23:11:25','2022-03-01 23:11:25'),('c3670e3a-0124-3113-b022-01173e1b239e','Stewart','Feeney','StewartFeeney@company.com','657.746.1539','2022-03-01 23:11:25','2022-03-01 23:11:25'),('c95df9b2-3d87-3b4e-b67f-b92b22f05af9','Emmie','Cremin','EmmieCremin@company.com','726-457-8280','2022-03-01 23:11:22','2022-03-01 23:11:22'),('cb5b6135-64d3-36c8-a3a0-252d7e9ed699','Lafayette','Marquardt','LafayetteMarquardt@company.com','906.916.9007','2022-03-01 23:11:25','2022-03-01 23:11:25'),('d1437919-6ce6-3345-a822-a635da6e9a8d','Annetta','Brakus','AnnettaBrakus@company.com','+1-763-344-4445','2022-03-01 23:11:25','2022-03-01 23:11:25'),('d41d5296-0371-3dae-b887-179b9bb1390a','Lori','VonRueden','LoriVonRueden@company.com','(713) 354-0583','2022-03-01 23:11:22','2022-03-01 23:11:22'),('d5961b46-ad40-3d85-8bfc-eb6bb0cc1d7b','Cordelia','Marks','CordeliaMarks@company.com','+1-503-334-7492','2022-03-01 23:11:25','2022-03-01 23:11:25'),('dadbc9ad-9d8f-3ab6-8be5-982e140b91ac','Dominic','Kutch','DominicKutch@company.com','940.637.4786','2022-03-01 23:11:25','2022-03-01 23:11:25'),('e7b57f92-cf47-3a93-ba8a-cc2838c79364','Chyna','Herzog','ChynaHerzog@company.com','(828) 923-0448','2022-03-01 23:11:25','2022-03-01 23:11:25'),('e890d104-ff1f-3ddc-a0e2-fb423424f592','Kallie','Von','KallieVon@company.com','+12233382839','2022-03-01 23:11:25','2022-03-01 23:11:25'),('eaf7fdff-8fbe-3012-8847-1e53190a9c7e','Sallie','Simonis','SallieSimonis@company.com','1-626-635-8332','2022-03-01 23:11:25','2022-03-01 23:11:25'),('eb412d3c-5d7b-3a54-99f7-ac34a1e2adbc','Junius','Ferry','JuniusFerry@company.com','(580) 915-8252','2022-03-01 23:11:22','2022-03-01 23:11:22'),('ec80ccb2-564e-336e-a152-9a4bcf83d170','Stanley','Crist','StanleyCrist@company.com','813-673-9901','2022-03-01 23:11:25','2022-03-01 23:11:25'),('f070726e-808b-3c62-ab8d-52bb5b3c69b5','Emmet','Hegmann','EmmetHegmann@company.com','1-980-402-4384','2022-03-01 23:11:25','2022-03-01 23:11:25'),('f74e3aa4-87b0-3f2d-8755-55a96384a364','Devante','Miller','DevanteMiller@company.com','(845) 365-4112','2022-03-01 23:11:25','2022-03-01 23:11:25'),('fd9c0bb0-4e6a-361b-972e-aefc74b4cba2','Betty','Robel','BettyRobel@company.com','+15638888497','2022-03-01 23:11:22','2022-03-01 23:11:22');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
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
