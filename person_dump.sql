-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: person
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `t_person`
--

DROP TABLE IF EXISTS `t_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person`
--

LOCK TABLES `t_person` WRITE;
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` (`id`, `firstname`, `lastname`, `address`, `isActive`) VALUES (1,'Jesse','Shackleton','26 Dakota Junction',1),(2,'Mar','Aggott','36 Old Gate Place',1),(3,'Tricia','Wolstenholme','897 Johnson Court',0),(4,'Natassia','Wandrich','7 Vernon Hill',0),(5,'Georgie','Kubica','0 Fairfield Point',0),(6,'Shellie','Hierro','8 Green Ridge Way',0),(7,'Trey','Lapwood','96941 Center Junction',0),(8,'Godart','Hellard','31 Fulton Crossing',0),(9,'Florie','Demaine','15 Bellgrove Parkway',0),(10,'Mickie','Quartly','990 David Park',0),(11,'Brok','Welling','0 Fieldstone Park',0),(12,'Melony','Outhwaite','31 Melrose Road',0),(13,'Gertrud','Mattheus','060 Oneill Hill',0),(14,'Bank','Nears','963 Schurz Court',0),(15,'Fredrick','Janko','04389 Cherokee Circle',0),(16,'Nikolos','Stribbling','2003 Esker Crossing',0),(17,'Selia','Andersson','4 International Court',1),(18,'Cody','Van Der Walt','7463 Golden Leaf Avenue',1),(19,'Glenine','Ortell','13466 Blackbird Lane',0),(20,'Ephraim','Barritt','68 Gale Center',0),(21,'Oran','McGonigal','7 Dwight Parkway',0),(22,'Sherlocke','Sharpus','0135 Bunker Hill Crossing',1),(23,'Ibrahim','MacDwyer','1925 Novick Alley',0),(24,'Ruthy','Breacher','09 Vernon Point',1),(25,'Mason','Coatman','74725 7th Circle',0),(26,'Beilul','Mackie','6 Havey Trail',1),(27,'Nat','McLenahan','9 Loomis Court',1),(28,'Davis','Van Der Weedenburg','63 Anderson Center',0),(29,'Joey','Rambaut','56593 Carberry Hill',1),(30,'Dore','Frampton','80 Mallard Center',0),(31,'Hew','Knappitt','59 Oxford Terrace',1),(32,'Harley','Krahl','14059 Old Shore Parkway',0),(33,'Eyde','Cullon','65 Beilfuss Court',0),(34,'Shelagh','Domenicone','926 La Follette Hill',0),(35,'Giraldo','Bedminster','49 Springview Plaza',0),(36,'Gun','Eyrl','13 Summer Ridge Park',1),(37,'Kaila','Fibbit','8573 Lien Park',1),(38,'Cosetta','Dilland','9771 Glacier Hill Avenue',0),(39,'Kandace','Crosthwaite','43 Morning Crossing',0),(40,'Shandie','Toothill','045 Karstens Plaza',0),(41,'Allis','Lait','0 Pearson Court',1),(42,'Rusty','Eglese','34029 Bashford Circle',1),(43,'Doralynn','Mattiacci','7 Clyde Gallagher Alley',1),(44,'Yovonnda','Spieght','213 Melody Crossing',0),(45,'Wainwright','Ruselin','95704 Graedel Alley',1),(46,'Karyl','Schechter','20169 Manufacturers Center',0),(47,'Freeman','Kumaar','28909 Melody Terrace',1),(48,'Tuesday','Antic','022 La Follette Court',1),(49,'Odille','Ciciura','36649 Browning Junction',1),(50,'Amandi','McGillecole','7135 Straubel Trail',0),(51,'Consalve','Vasilevich','05616 Welch Place',0),(52,'Roley','O\'Daly','59026 Oneill Center',1),(53,'Ximenes','Castelin','91 Daystar Center',0),(54,'Marcellus','Prium','03125 Morning Way',0),(55,'Jay','Poker','917 Cherokee Alley',0),(56,'Griffith','De Angelo','41038 Meadow Ridge Hill',0),(57,'Culley','Gorthy','018 Dixon Drive',0),(58,'Rufus','Barenskie','97 Summer Ridge Lane',0),(59,'Blythe','Ruppertz','6065 Oak Valley Circle',0),(60,'Catina','Fosse','158 Jenifer Trail',1),(61,'Lotty','Smallthwaite','6610 Tomscot Lane',0),(62,'Clemens','Troppmann','80 Thierer Junction',1),(63,'Donella','Kettlestringe','149 Old Gate Trail',0),(64,'Raddy','McCarney','31476 Manufacturers Parkway',1),(65,'Cobb','Yeskov','1 Maple Wood Trail',1),(66,'Jordan','Bendson','3 Bayside Center',0),(67,'Kathrine','Espy','4274 Kedzie Pass',0),(68,'Ora','Keble','7700 Crowley Court',1),(69,'Madelyn','Blackler','2851 Del Sol Place',1),(70,'Umberto','Scardefield','92 Hazelcrest Pass',1),(71,'Dave','Crumly','5533 Columbus Drive',0),(72,'Art','Joskowitz','93613 Mayfield Terrace',1),(73,'Saraann','Brixham','5950 Harbort Crossing',1),(74,'Barbara','Chaldecott','7448 Lien Trail',1),(75,'Alastair','Ben','0 Karstens Avenue',1),(76,'Nichole','Coulton','595 Amoth Circle',0),(77,'Juliann','Bulward','83 Ridgeway Plaza',1),(78,'Worth','Gatus','9 Donald Lane',1),(79,'Laurent','Dennidge','04 Bluestem Lane',0),(80,'Gisella','Taplow','02 Oakridge Circle',1),(81,'Sasha','Ribey','358 Kedzie Court',1),(82,'Hedda','Tanswell','5 Wayridge Plaza',1),(83,'Frazer','Larenson','80262 Forest Run Park',1),(84,'Alf','Gregolin','83119 Stephen Trail',1),(85,'Massimiliano','Lamartine','66 South Parkway',0),(86,'Fionnula','Housbey','50 Mcguire Hill',1),(87,'Aldis','Brolan','4697 Bowman Street',1),(88,'Patience','Crissil','569 Golf Way',1),(89,'Mariette','Fadden','1 Prairie Rose Junction',0),(90,'Fenelia','Hook','8501 Kings Park',0),(91,'Gleda','Mc Elory','456 Killdeer Place',1),(92,'Finlay','Anstis','292 Express Street',0),(93,'Jandy','Legon','2023 7th Circle',0),(94,'Bonnee','Matevosian','32268 Eastlawn Drive',1),(95,'Muriel','Esler','2741 American Crossing',1),(96,'Gary','Carnihan','91584 Talisman Trail',1),(97,'Kassi','Beamond','71 Nova Avenue',0),(98,'Abran','Gauden','73 Fair Oaks Junction',1),(99,'Lela','Dackombe','68 Graedel Avenue',0),(100,'Jarrid','Arnopp','1 Lotheville Park',1);
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-24 18:05:33
