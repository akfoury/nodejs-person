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
INSERT INTO `t_person` VALUES (1,'Mace','Thake','mthake0@jiathis.com',0),(2,'Selle','Dufty','sdufty1@senate.gov',1),(3,'Quinn','Gabbot','qgabbot2@cmu.edu',1),(4,'Cristie','Epinay','cepinay3@discovery.com',1),(5,'Glen','Schoroder','gschoroder4@japanpost.jp',1),(6,'Hannis','Skyram','hskyram5@bluehost.com',0),(7,'Hillery','Renackowna','hrenackowna6@nih.gov',1),(8,'Helen-elizabeth','O Mullen','homullen7@ustream.tv',0),(9,'Orel','Carek','ocarek8@nationalgeographic.com',1),(10,'Coleen','Frudd','cfrudd9@va.gov',0),(11,'Arielle','Leynham','aleynhama@studiopress.com',1),(12,'Xylina','Priscott','xpriscottb@digg.com',1),(13,'Lonny','Alexandrescu','lalexandrescuc@trellian.com',1),(14,'Silvio','Marsie','smarsied@freewebs.com',1),(15,'Marj','Barthropp','mbarthroppe@webs.com',1),(16,'Glen','Lafford','glaffordf@godaddy.com',1),(17,'Mal','Franies','mfraniesg@so-net.ne.jp',0),(18,'Earlie','Mouland','emoulandh@cdc.gov',0),(19,'Stephanus','Bramont','sbramonti@xinhuanet.com',1),(20,'Bernie','Derricoat','bderricoatj@indiegogo.com',0),(21,'Lucretia','Bernardes','lbernardesk@pen.io',1),(22,'Fritz','MacPike','fmacpikel@typepad.com',0),(23,'Angie','Hambright','ahambrightm@people.com.cn',1),(24,'Adela','Midden','amiddenn@plala.or.jp',0),(25,'Frank','Tarplee','ftarpleeo@nifty.com',0),(26,'Mahmoud','Windrus','mwindrusp@sogou.com',0),(27,'Rafael','Paulich','rpaulichq@mozilla.org',0),(28,'Gran','Woliter','gwoliterr@ifeng.com',0),(29,'Vincenty','Jurewicz','vjurewiczs@lycos.com',0),(30,'Ferrel','Tankus','ftankust@tiny.cc',1),(31,'Chelsae','Plessing','cplessingu@businesswire.com',1),(32,'Sandye','Dowding','sdowdingv@cloudflare.com',0),(33,'Coreen','Van der Linde','cvanderlindew@apple.com',0),(34,'Dottie','Mattsson','dmattssonx@wunderground.com',1),(35,'Kassia','Muldowney','kmuldowneyy@wikispaces.com',1),(36,'Karoly','Righy','krighyz@howstuffworks.com',1),(37,'Emilia','Bartleet','ebartleet10@hao123.com',1),(38,'My','Karpeev','mkarpeev11@unblog.fr',0),(39,'Eadith','Gaitung','egaitung12@ask.com',0),(40,'Heida','O\'Fearguise','hofearguise13@icq.com',0),(41,'Konstantin','Wharmby','kwharmby14@craigslist.org',0),(42,'Elsinore','Shrimpling','eshrimpling15@psu.edu',0),(43,'Arthur','Perschke','aperschke16@instagram.com',1),(44,'Sammie','Pipes','spipes17@imgur.com',0),(45,'Nita','Woodfield','nwoodfield18@shareasale.com',0),(46,'Ezra','Borel','eborel19@patch.com',1),(47,'Udell','Bagenal','ubagenal1a@privacy.gov.au',1),(48,'Verna','Waggett','vwaggett1b@free.fr',1),(49,'Tessa','Gaul','tgaul1c@friendfeed.com',1),(50,'Carey','Lashbrook','clashbrook1d@infoseek.co.jp',0),(51,'Gerladina','Daouse','gdaouse1e@senate.gov',0),(52,'Thekla','Cockman','tcockman1f@list-manage.com',0),(53,'Clair','Catenot','ccatenot1g@spiegel.de',0),(54,'Emlen','Mayhou','emayhou1h@cbc.ca',0),(55,'Peta','Edy','pedy1i@google.es',1),(56,'Raimondo','Cranefield','rcranefield1j@zimbio.com',0),(57,'Wade','Causnett','wcausnett1k@ed.gov',1),(58,'Fulton','Doornbos','fdoornbos1l@oracle.com',0),(59,'Jeth','Dimock','jdimock1m@ehow.com',1),(60,'Dominique','Learman','dlearman1n@scribd.com',1),(61,'Leo','Corrigan','lcorrigan1o@nyu.edu',1),(62,'Kaine','Brando','kbrando1p@odnoklassniki.ru',1),(63,'Winonah','Pogson','wpogson1q@prlog.org',0),(64,'Sylvan','Elwood','selwood1r@privacy.gov.au',0),(65,'Conny','Filon','cfilon1s@state.tx.us',1),(66,'Merrilee','Glyssanne','mglyssanne1t@ehow.com',0),(67,'Neal','McQuirter','nmcquirter1u@cmu.edu',1),(68,'Sydelle','Paunton','spaunton1v@springer.com',0),(69,'Germayne','Vell','gvell1w@1und1.de',1),(70,'Ole','Bridger','obridger1x@walmart.com',1),(71,'Issi','Rawlin','irawlin1y@cisco.com',1),(72,'Sayre','Komorowski','skomorowski1z@unicef.org',1),(73,'Jonathan','Warsap','jwarsap20@imdb.com',0),(74,'Estella','Aslott','easlott21@eventbrite.com',0),(75,'Stefano','Yon','syon22@usda.gov',0),(76,'Angelina','Nornasell','anornasell23@nba.com',0),(77,'Chaim','Ohanessian','cohanessian24@123-reg.co.uk',1),(78,'Wernher','Marrian','wmarrian25@e-recht24.de',1),(79,'Paddy','Syres','psyres26@uol.com.br',0),(80,'Julio','Cashford','jcashford27@blogtalkradio.com',0),(81,'Patric','Pollok','ppollok28@webeden.co.uk',1),(82,'Alexio','Akeherst','aakeherst29@bravesites.com',1),(83,'Lavina','Fellenor','lfellenor2a@cmu.edu',0),(84,'Marcus','Oldershaw','moldershaw2b@google.ca',0),(85,'Danyette','Kuhlmey','dkuhlmey2c@tripod.com',0),(86,'Susanna','Gilson','sgilson2d@psu.edu',1),(87,'Patsy','Fulton','pfulton2e@github.com',1),(88,'Lise','Normavill','lnormavill2f@seesaa.net',0),(89,'Sherill','Whitehorn','swhitehorn2g@msu.edu',1),(90,'Eddi','Leavry','eleavry2h@admin.ch',0),(91,'Jillian','Safe','jsafe2i@google.com',0),(92,'Gracia','O\' Culligan','goculligan2j@wikipedia.org',1),(93,'Vita','Sandy','vsandy2k@elegantthemes.com',0),(94,'Sibeal','Crumb','scrumb2l@disqus.com',0),(95,'Armando','Philpotts','aphilpotts2m@clickbank.net',1),(96,'Omero','Paulon','opaulon2n@ucla.edu',1),(97,'Mikol','Brunke','mbrunke2o@studiopress.com',0),(98,'Damita','McGriele','dmcgriele2p@cpanel.net',0),(99,'Rodina','Perring','rperring2q@europa.eu',1),(100,'Robbie','Giacobillo','rgiacobillo2r@cornell.edu',1);
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

-- Dump completed on 2021-09-25 12:15:53
